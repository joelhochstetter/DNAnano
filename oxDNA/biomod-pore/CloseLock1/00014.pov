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
	<24.245132, 34.220181, 34.938728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247150, 34.589931, 35.091309>,  <24.248362, 34.811783, 35.182858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.247150, 34.589931, 35.091309>,  <24.245132, 34.220181, 34.938728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.247150, 34.589931, 35.091309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819078, 0.215008, -0.531867,
		-0.573660, 0.315118, -0.756052,
		0.005044, 0.924377, 0.381448,
		24.248663, 34.867245, 35.205742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.446188, 34.748032, 34.504143>,  <24.245132, 34.220181, 34.938728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.446188, 34.748032, 34.504143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544193, 34.930424, 34.846382>,  <24.602997, 35.039860, 35.051727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.544193, 34.930424, 34.846382>,  <24.446188, 34.748032, 34.504143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.544193, 34.930424, 34.846382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892530, 0.238561, -0.382727,
		-0.378628, 0.857422, -0.348523,
		0.245015, 0.455978, 0.855600,
		24.617697, 35.067219, 35.103062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804819, 35.435318, 34.381927>,  <24.446188, 34.748032, 34.504143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804819, 35.435318, 34.381927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897909, 35.335014, 34.757790>,  <24.953764, 35.274834, 34.983307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.897909, 35.335014, 34.757790>,  <24.804819, 35.435318, 34.381927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.897909, 35.335014, 34.757790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970680, 0.000130, -0.240373,
		0.060153, 0.968050, 0.243433,
		0.232725, -0.250755, 0.939660,
		24.967726, 35.259789, 35.039688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.259842, 35.977299, 34.749920>,  <24.804819, 35.435318, 34.381927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.259842, 35.977299, 34.749920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291138, 35.589134, 34.841290>,  <25.309916, 35.356236, 34.896111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.291138, 35.589134, 34.841290>,  <25.259842, 35.977299, 34.749920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.291138, 35.589134, 34.841290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932107, -0.010068, -0.362043,
		0.353631, 0.241243, 0.903741,
		0.078241, -0.970413, 0.228424,
		25.314610, 35.298012, 34.909817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818470, 35.799194, 35.294094>,  <25.259842, 35.977299, 34.749920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818470, 35.799194, 35.294094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759329, 35.473167, 35.070019>,  <25.723845, 35.277550, 34.935574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.759329, 35.473167, 35.070019>,  <25.818470, 35.799194, 35.294094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.759329, 35.473167, 35.070019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972333, -0.016217, -0.233037,
		0.180856, -0.579141, 0.794913,
		-0.147852, -0.815066, -0.560185,
		25.714973, 35.228649, 34.901962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426958, 35.307755, 35.403217>,  <25.818470, 35.799194, 35.294094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426958, 35.307755, 35.403217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289280, 35.195843, 35.044720>,  <26.206673, 35.128696, 34.829620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.289280, 35.195843, 35.044720>,  <26.426958, 35.307755, 35.403217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.289280, 35.195843, 35.044720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936569, -0.035099, -0.348722,
		0.066107, -0.959424, 0.274110,
		-0.344193, -0.279776, -0.896246,
		26.186022, 35.111912, 34.775845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883923, 34.740021, 35.130642>,  <26.426958, 35.307755, 35.403217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883923, 34.740021, 35.130642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686804, 34.851261, 34.800838>,  <26.568533, 34.918003, 34.602955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686804, 34.851261, 34.800838>,  <26.883923, 34.740021, 35.130642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686804, 34.851261, 34.800838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855046, -0.020988, -0.518127,
		-0.161395, -0.960324, -0.227443,
		-0.492796, 0.278097, -0.824509,
		26.538965, 34.934689, 34.553486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.328121, 34.528111, 34.523384>,  <26.883923, 34.740021, 35.130642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.328121, 34.528111, 34.523384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070469, 34.764381, 34.328987>,  <26.915876, 34.906143, 34.212349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.070469, 34.764381, 34.328987>,  <27.328121, 34.528111, 34.523384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070469, 34.764381, 34.328987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678309, 0.147431, -0.719834,
		-0.353539, -0.793324, -0.495628,
		-0.644132, 0.590679, -0.485996,
		26.877230, 34.941586, 34.183189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.251160, 34.441261, 33.862026>,  <27.328121, 34.528111, 34.523384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.251160, 34.441261, 33.862026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135731, 34.824203, 33.856411>,  <27.066473, 35.053970, 33.853043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.135731, 34.824203, 33.856411>,  <27.251160, 34.441261, 33.862026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.135731, 34.824203, 33.856411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677410, 0.193785, -0.709622,
		-0.676640, -0.214285, -0.704443,
		-0.288572, 0.957355, -0.014036,
		27.049160, 35.111408, 33.852200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.077751, 34.570969, 33.182705>,  <27.251160, 34.441261, 33.862026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.077751, 34.570969, 33.182705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162197, 34.924660, 33.349354>,  <27.212864, 35.136875, 33.449345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162197, 34.924660, 33.349354>,  <27.077751, 34.570969, 33.182705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162197, 34.924660, 33.349354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479874, 0.277574, -0.832270,
		-0.851559, 0.375631, -0.365718,
		0.211113, 0.884225, 0.416626,
		27.225531, 35.189926, 33.474342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.128033, 34.980877, 32.607273>,  <27.077751, 34.570969, 33.182705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.128033, 34.980877, 32.607273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270445, 35.187534, 32.918739>,  <27.355892, 35.311531, 33.105618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.270445, 35.187534, 32.918739>,  <27.128033, 34.980877, 32.607273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.270445, 35.187534, 32.918739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716060, 0.384556, -0.582559,
		-0.600417, 0.764979, -0.233036,
		0.356030, 0.516647, 0.778665,
		27.377254, 35.342529, 33.152340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205042, 35.703506, 32.375736>,  <27.128033, 34.980877, 32.607273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205042, 35.703506, 32.375736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458679, 35.667374, 32.682922>,  <27.610863, 35.645695, 32.867233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458679, 35.667374, 32.682922>,  <27.205042, 35.703506, 32.375736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458679, 35.667374, 32.682922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707236, 0.469296, -0.528752,
		-0.312637, 0.878409, 0.361464,
		0.634094, -0.090333, 0.767961,
		27.648907, 35.640274, 32.913311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.610052, 36.240887, 32.311123>,  <27.205042, 35.703506, 32.375736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.610052, 36.240887, 32.311123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829475, 36.026684, 32.567970>,  <27.961128, 35.898163, 32.722080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.829475, 36.026684, 32.567970>,  <27.610052, 36.240887, 32.311123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.829475, 36.026684, 32.567970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836067, 0.343195, -0.428030,
		0.008839, 0.771656, 0.635979,
		0.548557, -0.535504, 0.642122,
		27.994043, 35.866032, 32.760609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.109898, 36.728611, 32.650131>,  <27.610052, 36.240887, 32.311123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.109898, 36.728611, 32.650131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251829, 36.354702, 32.656998>,  <28.336988, 36.130356, 32.661118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.251829, 36.354702, 32.656998>,  <28.109898, 36.728611, 32.650131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251829, 36.354702, 32.656998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751391, 0.274196, -0.600190,
		0.556335, 0.225863, 0.799673,
		0.354828, -0.934774, 0.017167,
		28.358278, 36.074268, 32.662148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.916897, 36.774181, 32.633335>,  <28.109898, 36.728611, 32.650131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.916897, 36.774181, 32.633335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828011, 36.402718, 32.514538>,  <28.774679, 36.179840, 32.443260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.828011, 36.402718, 32.514538>,  <28.916897, 36.774181, 32.633335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.828011, 36.402718, 32.514538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862946, -0.045552, -0.503239,
		0.453811, -0.368114, 0.811509,
		-0.222215, -0.928664, -0.296991,
		28.761347, 36.124119, 32.425442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583139, 36.387772, 32.746037>,  <28.916897, 36.774181, 32.633335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583139, 36.387772, 32.746037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357986, 36.171444, 32.496021>,  <29.222895, 36.041645, 32.346012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.357986, 36.171444, 32.496021>,  <29.583139, 36.387772, 32.746037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.357986, 36.171444, 32.496021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794523, -0.145622, -0.589514,
		0.227804, -0.828435, 0.511665,
		-0.562883, -0.540823, -0.625038,
		29.189121, 36.009197, 32.308510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045269, 35.976879, 32.477951>,  <29.583139, 36.387772, 32.746037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045269, 35.976879, 32.477951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755028, 35.900108, 32.213627>,  <29.580883, 35.854046, 32.055035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.755028, 35.900108, 32.213627>,  <30.045269, 35.976879, 32.477951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.755028, 35.900108, 32.213627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687323, -0.156134, -0.709372,
		0.032972, -0.968910, 0.245206,
		-0.725603, -0.191925, -0.660806,
		29.537348, 35.842529, 32.015385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.180500, 35.323456, 32.137012>,  <30.045269, 35.976879, 32.477951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.180500, 35.323456, 32.137012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954533, 35.547138, 31.894310>,  <29.818953, 35.681347, 31.748688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.954533, 35.547138, 31.894310>,  <30.180500, 35.323456, 32.137012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954533, 35.547138, 31.894310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605368, -0.218801, -0.765282,
		-0.560709, -0.799635, -0.214920,
		-0.564921, 0.559206, -0.606757,
		29.785057, 35.714901, 31.712282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128466, 34.930809, 31.592764>,  <30.180500, 35.323456, 32.137012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128466, 34.930809, 31.592764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015692, 35.291973, 31.462982>,  <29.948027, 35.508671, 31.385113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.015692, 35.291973, 31.462982>,  <30.128466, 34.930809, 31.592764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.015692, 35.291973, 31.462982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322779, -0.229196, -0.918304,
		-0.903508, -0.363628, -0.226821,
		-0.281935, 0.902908, -0.324452,
		29.931110, 35.562847, 31.365646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682920, 34.861774, 31.051954>,  <30.128466, 34.930809, 31.592764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682920, 34.861774, 31.051954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825417, 35.232861, 31.007359>,  <29.910913, 35.455513, 30.980602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.825417, 35.232861, 31.007359>,  <29.682920, 34.861774, 31.051954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.825417, 35.232861, 31.007359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415283, -0.264080, -0.870518,
		-0.837038, 0.263814, -0.479342,
		0.356240, 0.927720, -0.111488,
		29.932289, 35.511177, 30.973911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.516890, 35.112968, 30.358801>,  <29.682920, 34.861774, 31.051954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.516890, 35.112968, 30.358801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830809, 35.340977, 30.456099>,  <30.019159, 35.477783, 30.514477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.830809, 35.340977, 30.456099>,  <29.516890, 35.112968, 30.358801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.830809, 35.340977, 30.456099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289833, 0.009351, -0.957031,
		-0.547807, 0.821574, -0.157874,
		0.784796, 0.570025, 0.243242,
		30.066248, 35.511986, 30.529072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.612261, 35.559795, 29.819515>,  <29.516890, 35.112968, 30.358801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.612261, 35.559795, 29.819515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966688, 35.518238, 30.000219>,  <30.179344, 35.493301, 30.108643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966688, 35.518238, 30.000219>,  <29.612261, 35.559795, 29.819515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966688, 35.518238, 30.000219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431875, -0.169069, -0.885946,
		0.168424, 0.980113, -0.104937,
		0.886068, -0.103895, 0.451762,
		30.232510, 35.487068, 30.135748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113188, 36.016792, 29.450909>,  <29.612261, 35.559795, 29.819515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113188, 36.016792, 29.450909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326712, 35.732594, 29.634317>,  <30.454826, 35.562073, 29.744364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.326712, 35.732594, 29.634317>,  <30.113188, 36.016792, 29.450909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.326712, 35.732594, 29.634317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389772, -0.274464, -0.879061,
		0.750417, 0.647970, 0.130420,
		0.533810, -0.710496, 0.458523,
		30.486855, 35.519444, 29.771873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673351, 36.094467, 29.125553>,  <30.113188, 36.016792, 29.450909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673351, 36.094467, 29.125553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742325, 35.749557, 29.316027>,  <30.783709, 35.542614, 29.430311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.742325, 35.749557, 29.316027>,  <30.673351, 36.094467, 29.125553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.742325, 35.749557, 29.316027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536925, -0.323015, -0.779341,
		0.825820, 0.390061, 0.407277,
		0.172434, -0.862272, 0.476186,
		30.794054, 35.490875, 29.458883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204069, 35.952656, 28.841192>,  <30.673351, 36.094467, 29.125553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204069, 35.952656, 28.841192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115261, 35.593353, 28.992897>,  <31.061975, 35.377769, 29.083920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115261, 35.593353, 28.992897>,  <31.204069, 35.952656, 28.841192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115261, 35.593353, 28.992897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377640, -0.437828, -0.815901,
		0.898941, -0.037924, 0.436425,
		-0.222021, -0.898258, 0.379260,
		31.048655, 35.323875, 29.106674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827133, 35.397655, 28.775867>,  <31.204069, 35.952656, 28.841192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827133, 35.397655, 28.775867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512482, 35.158337, 28.836859>,  <31.323690, 35.014744, 28.873453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512482, 35.158337, 28.836859>,  <31.827133, 35.397655, 28.775867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512482, 35.158337, 28.836859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412357, -0.692898, -0.591484,
		0.459536, -0.402404, 0.791768,
		-0.786631, -0.598300, 0.152478,
		31.276493, 34.978848, 28.882603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092690, 34.829670, 29.079206>,  <31.827133, 35.397655, 28.775867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092690, 34.829670, 29.079206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775620, 34.845081, 28.835838>,  <31.585377, 34.854328, 28.689817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775620, 34.845081, 28.835838>,  <32.092690, 34.829670, 29.079206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775620, 34.845081, 28.835838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450145, -0.636048, -0.626748,
		-0.411132, -0.770687, 0.486839,
		-0.792679, 0.038529, -0.608421,
		31.537815, 34.856640, 28.653313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778635, 34.206978, 28.750673>,  <32.092690, 34.829670, 29.079206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778635, 34.206978, 28.750673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763023, 34.501778, 28.480766>,  <31.753656, 34.678658, 28.318821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.763023, 34.501778, 28.480766>,  <31.778635, 34.206978, 28.750673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.763023, 34.501778, 28.480766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539540, -0.552839, -0.635031,
		-0.841055, -0.388850, -0.376062,
		-0.039030, 0.736997, -0.674768,
		31.751314, 34.722878, 28.278336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682520, 33.789764, 28.222193>,  <31.778635, 34.206978, 28.750673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682520, 33.789764, 28.222193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814318, 34.132618, 28.063826>,  <31.893396, 34.338329, 27.968805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814318, 34.132618, 28.063826>,  <31.682520, 33.789764, 28.222193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814318, 34.132618, 28.063826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524745, -0.514853, -0.677915,
		-0.784905, 0.015613, -0.619420,
		0.329495, 0.857136, -0.395918,
		31.913166, 34.389759, 27.945051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.590588, 33.831154, 27.479189>,  <31.682520, 33.789764, 28.222193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.590588, 33.831154, 27.479189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907850, 34.040771, 27.603308>,  <32.098209, 34.166542, 27.677778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.907850, 34.040771, 27.603308>,  <31.590588, 33.831154, 27.479189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.907850, 34.040771, 27.603308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557207, -0.418777, -0.717040,
		-0.245813, 0.741624, -0.624155,
		0.793156, 0.524041, 0.310297,
		32.145798, 34.197983, 27.696398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831299, 33.609055, 27.402205>,  <31.590588, 33.831154, 27.479189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831299, 33.609055, 27.402205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573030, 33.610813, 27.096764>,  <30.418070, 33.611870, 26.913500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.573030, 33.610813, 27.096764>,  <30.831299, 33.609055, 27.402205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573030, 33.610813, 27.096764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.698694, 0.400085, 0.593093,
		0.308114, 0.916467, -0.255251,
		-0.645672, 0.004398, -0.763602,
		30.379330, 33.612133, 26.867683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584898, 34.269661, 27.115658>,  <30.831299, 33.609055, 27.402205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584898, 34.269661, 27.115658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318514, 33.972511, 27.088421>,  <30.158684, 33.794224, 27.072079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.318514, 33.972511, 27.088421>,  <30.584898, 34.269661, 27.115658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.318514, 33.972511, 27.088421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556269, 0.433706, 0.708847,
		-0.497050, 0.509943, -0.702068,
		-0.665963, -0.742871, -0.068092,
		30.118725, 33.749649, 27.067993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.795935, 34.447773, 27.049459>,  <30.584898, 34.269661, 27.115658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.795935, 34.447773, 27.049459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862083, 34.104992, 27.244719>,  <29.901772, 33.899323, 27.361874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862083, 34.104992, 27.244719>,  <29.795935, 34.447773, 27.049459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862083, 34.104992, 27.244719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414384, 0.388777, 0.822885,
		-0.894952, -0.338361, -0.290814,
		0.165370, -0.856951, 0.488148,
		29.911694, 33.847908, 27.391163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.138988, 34.198536, 27.164070>,  <29.795935, 34.447773, 27.049459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.138988, 34.198536, 27.164070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393568, 34.055176, 27.437269>,  <29.546316, 33.969162, 27.601189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.393568, 34.055176, 27.437269>,  <29.138988, 34.198536, 27.164070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393568, 34.055176, 27.437269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622870, 0.283466, 0.729164,
		-0.454936, -0.889494, -0.042823,
		0.636448, -0.358396, 0.682998,
		29.584503, 33.947659, 27.642168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942713, 33.465302, 27.653214>,  <29.138988, 34.198536, 27.164070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942713, 33.465302, 27.653214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154545, 33.773178, 27.795830>,  <29.281645, 33.957905, 27.881399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.154545, 33.773178, 27.795830>,  <28.942713, 33.465302, 27.653214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154545, 33.773178, 27.795830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744962, 0.220992, 0.629439,
		0.405681, -0.598948, 0.690423,
		0.529579, 0.769691, 0.356542,
		29.313419, 34.004086, 27.902792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.198782, 33.459629, 28.387602>,  <28.942713, 33.465302, 27.653214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.198782, 33.459629, 28.387602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162136, 33.849663, 28.306789>,  <29.140148, 34.083683, 28.258301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162136, 33.849663, 28.306789>,  <29.198782, 33.459629, 28.387602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162136, 33.849663, 28.306789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700744, 0.081019, 0.708798,
		0.707506, 0.206511, 0.675862,
		-0.091617, 0.975084, -0.202032,
		29.134651, 34.142189, 28.246180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230949, 33.798157, 29.030024>,  <29.198782, 33.459629, 28.387602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230949, 33.798157, 29.030024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044104, 34.052563, 28.784328>,  <28.931995, 34.205208, 28.636911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.044104, 34.052563, 28.784328>,  <29.230949, 33.798157, 29.030024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.044104, 34.052563, 28.784328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797376, -0.002815, 0.603476,
		0.382090, 0.771673, 0.508457,
		-0.467117, 0.636014, -0.614238,
		28.903969, 34.243366, 28.600058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910379, 34.276821, 29.495615>,  <29.230949, 33.798157, 29.030024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910379, 34.276821, 29.495615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717609, 34.380791, 29.160906>,  <28.601948, 34.443172, 28.960081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.717609, 34.380791, 29.160906>,  <28.910379, 34.276821, 29.495615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.717609, 34.380791, 29.160906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859576, 0.044967, 0.509026,
		0.169934, 0.964582, 0.201753,
		-0.481925, 0.259923, -0.836773,
		28.573032, 34.458767, 28.909874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.579044, 34.870403, 29.690248>,  <28.910379, 34.276821, 29.495615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.579044, 34.870403, 29.690248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405043, 34.690075, 29.378471>,  <28.300642, 34.581879, 29.191406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.405043, 34.690075, 29.378471>,  <28.579044, 34.870403, 29.690248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.405043, 34.690075, 29.378471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846479, -0.090382, 0.524695,
		-0.306993, 0.888025, -0.342296,
		-0.435005, -0.450824, -0.779441,
		28.274542, 34.554829, 29.144638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945644, 35.114090, 29.616590>,  <28.579044, 34.870403, 29.690248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945644, 35.114090, 29.616590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944349, 34.755405, 29.439550>,  <27.943571, 34.540195, 29.333326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944349, 34.755405, 29.439550>,  <27.945644, 35.114090, 29.616590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944349, 34.755405, 29.439550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763146, -0.283801, 0.580573,
		-0.646218, 0.339649, -0.683404,
		-0.003240, -0.896714, -0.442599,
		27.943377, 34.486393, 29.306770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239225, 34.930023, 29.700377>,  <27.945644, 35.114090, 29.616590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239225, 34.930023, 29.700377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393160, 34.573433, 29.604729>,  <27.485519, 34.359478, 29.547340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393160, 34.573433, 29.604729>,  <27.239225, 34.930023, 29.700377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393160, 34.573433, 29.604729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625550, -0.442409, 0.642621,
		-0.678667, -0.097723, -0.727915,
		0.384835, -0.891473, -0.239118,
		27.508610, 34.305992, 29.532993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.642975, 34.456894, 29.608164>,  <27.239225, 34.930023, 29.700377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.642975, 34.456894, 29.608164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975433, 34.256207, 29.704058>,  <27.174908, 34.135792, 29.761595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.975433, 34.256207, 29.704058>,  <26.642975, 34.456894, 29.608164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.975433, 34.256207, 29.704058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481486, -0.433701, 0.761627,
		-0.278149, -0.748453, -0.602039,
		0.831147, -0.501719, 0.239736,
		27.224777, 34.105690, 29.775978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.481125, 33.763313, 29.657490>,  <26.642975, 34.456894, 29.608164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.481125, 33.763313, 29.657490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803797, 33.804871, 29.890203>,  <26.997400, 33.829807, 30.029833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.803797, 33.804871, 29.890203>,  <26.481125, 33.763313, 29.657490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.803797, 33.804871, 29.890203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491361, -0.429081, 0.757927,
		0.328381, -0.897271, -0.295079,
		0.806679, 0.103898, 0.581787,
		27.045801, 33.836040, 30.064739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580797, 33.073849, 29.870111>,  <26.481125, 33.763313, 29.657490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580797, 33.073849, 29.870111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782318, 33.300694, 30.130749>,  <26.903231, 33.436798, 30.287130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.782318, 33.300694, 30.130749>,  <26.580797, 33.073849, 29.870111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782318, 33.300694, 30.130749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364789, -0.544078, 0.755584,
		0.783015, -0.618358, -0.067232,
		0.503801, 0.567108, 0.651592,
		26.933458, 33.470825, 30.326227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727242, 32.638973, 30.330692>,  <26.580797, 33.073849, 29.870111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727242, 32.638973, 30.330692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816935, 32.978848, 30.521585>,  <26.870750, 33.182774, 30.636122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.816935, 32.978848, 30.521585>,  <26.727242, 32.638973, 30.330692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.816935, 32.978848, 30.521585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363488, -0.381445, 0.849927,
		0.904211, -0.364048, 0.223319,
		0.224231, 0.849687, 0.477234,
		26.884203, 33.233753, 30.664755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.060925, 32.427235, 30.971926>,  <26.727242, 32.638973, 30.330692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.060925, 32.427235, 30.971926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938114, 32.799187, 31.052979>,  <26.864428, 33.022358, 31.101610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938114, 32.799187, 31.052979>,  <27.060925, 32.427235, 30.971926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938114, 32.799187, 31.052979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367716, -0.312288, 0.875935,
		0.877792, 0.194426, 0.437812,
		-0.307028, 0.929879, 0.202630,
		26.846006, 33.078152, 31.113768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201761, 32.507797, 31.630768>,  <27.060925, 32.427235, 30.971926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201761, 32.507797, 31.630768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947128, 32.812347, 31.581654>,  <26.794348, 32.995075, 31.552185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.947128, 32.812347, 31.581654>,  <27.201761, 32.507797, 31.630768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.947128, 32.812347, 31.581654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284625, -0.083970, 0.954954,
		0.716764, 0.642856, 0.270159,
		-0.636583, 0.761371, -0.122787,
		26.756153, 33.040760, 31.544817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.391129, 32.920338, 32.168243>,  <27.201761, 32.507797, 31.630768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.391129, 32.920338, 32.168243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017731, 33.011871, 32.057812>,  <26.793692, 33.066792, 31.991552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.017731, 33.011871, 32.057812>,  <27.391129, 32.920338, 32.168243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.017731, 33.011871, 32.057812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297416, -0.063976, 0.952602,
		0.200323, 0.971361, 0.127780,
		-0.933496, 0.228832, -0.276083,
		26.737682, 33.080521, 31.974987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.255798, 33.554726, 32.457863>,  <27.391129, 32.920338, 32.168243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.255798, 33.554726, 32.457863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919380, 33.351261, 32.384209>,  <26.717529, 33.229183, 32.340015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.919380, 33.351261, 32.384209>,  <27.255798, 33.554726, 32.457863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.919380, 33.351261, 32.384209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193664, -0.034716, 0.980453,
		-0.505112, 0.860266, -0.069311,
		-0.841045, -0.508661, -0.184138,
		26.667067, 33.198662, 32.328968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.628258, 33.790924, 32.727283>,  <27.255798, 33.554726, 32.457863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.628258, 33.790924, 32.727283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478073, 33.426563, 32.658825>,  <26.387962, 33.207947, 32.617748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.478073, 33.426563, 32.658825>,  <26.628258, 33.790924, 32.727283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.478073, 33.426563, 32.658825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508230, 0.047921, 0.859887,
		-0.775069, 0.409837, -0.480939,
		-0.375460, -0.910899, -0.171150,
		26.365435, 33.153294, 32.607479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.928694, 33.826847, 32.980228>,  <26.628258, 33.790924, 32.727283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.928694, 33.826847, 32.980228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984661, 33.431839, 32.951302>,  <26.018242, 33.194836, 32.933945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.984661, 33.431839, 32.951302>,  <25.928694, 33.826847, 32.980228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.984661, 33.431839, 32.951302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392634, -0.122386, 0.911516,
		-0.908989, -0.099143, -0.404857,
		0.139920, -0.987518, -0.072320,
		26.026636, 33.135582, 32.929604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.252180, 33.442490, 33.209534>,  <25.928694, 33.826847, 32.980228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.252180, 33.442490, 33.209534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565470, 33.197418, 33.251842>,  <25.753443, 33.050377, 33.277229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.565470, 33.197418, 33.251842>,  <25.252180, 33.442490, 33.209534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.565470, 33.197418, 33.251842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111759, 0.028617, 0.993323,
		-0.611615, -0.789813, -0.046059,
		0.783222, -0.612679, 0.105771,
		25.800436, 33.013615, 33.283573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.022102, 33.018723, 33.691330>,  <25.252180, 33.442490, 33.209534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.022102, 33.018723, 33.691330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420561, 32.983658, 33.692265>,  <25.659636, 32.962620, 33.692825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.420561, 32.983658, 33.692265>,  <25.022102, 33.018723, 33.691330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.420561, 32.983658, 33.692265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021665, -0.220234, 0.975206,
		-0.084967, -0.971501, -0.221285,
		0.996148, -0.087655, 0.002335,
		25.719406, 32.957359, 33.692966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.255175, 32.431583, 34.158035>,  <25.022102, 33.018723, 33.691330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.255175, 32.431583, 34.158035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608002, 32.614479, 34.112625>,  <25.819698, 32.724216, 34.085381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608002, 32.614479, 34.112625>,  <25.255175, 32.431583, 34.158035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608002, 32.614479, 34.112625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235491, -0.219206, 0.946833,
		0.408046, -0.861904, -0.301031,
		0.882067, 0.457242, -0.113525,
		25.872622, 32.751652, 34.078568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753820, 31.969095, 34.421780>,  <25.255175, 32.431583, 34.158035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753820, 31.969095, 34.421780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907700, 32.337811, 34.441002>,  <26.000027, 32.559040, 34.452534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.907700, 32.337811, 34.441002>,  <25.753820, 31.969095, 34.421780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.907700, 32.337811, 34.441002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228972, -0.145736, 0.962462,
		0.894191, -0.359256, -0.267129,
		0.384700, 0.921790, 0.048056,
		26.023109, 32.614349, 34.455418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434378, 31.877071, 34.733902>,  <25.753820, 31.969095, 34.421780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434378, 31.877071, 34.733902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300611, 32.248585, 34.797810>,  <26.220352, 32.471493, 34.836155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300611, 32.248585, 34.797810>,  <26.434378, 31.877071, 34.733902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300611, 32.248585, 34.797810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243105, -0.078778, 0.966796,
		0.910531, 0.362151, -0.199448,
		-0.334414, 0.928785, 0.159771,
		26.200287, 32.527222, 34.845741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994110, 32.226299, 35.084827>,  <26.434378, 31.877071, 34.733902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994110, 32.226299, 35.084827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632839, 32.376633, 35.167793>,  <26.416077, 32.466831, 35.217571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.632839, 32.376633, 35.167793>,  <26.994110, 32.226299, 35.084827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.632839, 32.376633, 35.167793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322119, 0.274005, 0.906179,
		0.283737, 0.885253, -0.368537,
		-0.903179, 0.375830, 0.207412,
		26.361885, 32.489380, 35.230019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108448, 32.903057, 35.227867>,  <26.994110, 32.226299, 35.084827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108448, 32.903057, 35.227867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788488, 32.768169, 35.426437>,  <26.596512, 32.687237, 35.545582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.788488, 32.768169, 35.426437>,  <27.108448, 32.903057, 35.227867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.788488, 32.768169, 35.426437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352711, 0.405093, 0.843501,
		-0.485547, 0.849813, -0.205093,
		-0.799900, -0.337221, 0.496430,
		26.548519, 32.667004, 35.575367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.754135, 32.773296, 35.040478>,  <27.108448, 32.903057, 35.227867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.754135, 32.773296, 35.040478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939289, 32.594543, 34.734264>,  <28.050381, 32.487293, 34.550537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.939289, 32.594543, 34.734264>,  <27.754135, 32.773296, 35.040478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.939289, 32.594543, 34.734264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853026, 0.459376, 0.247628,
		0.241008, -0.767642, 0.593836,
		0.462883, -0.446878, -0.765532,
		28.078154, 32.460480, 34.504604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.392803, 32.610821, 35.252014>,  <27.754135, 32.773296, 35.040478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.392803, 32.610821, 35.252014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444887, 32.631405, 34.855953>,  <28.476137, 32.643753, 34.618317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.444887, 32.631405, 34.855953>,  <28.392803, 32.610821, 35.252014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.444887, 32.631405, 34.855953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927684, 0.346131, 0.139985,
		0.349925, -0.936774, -0.002667,
		0.130211, 0.051458, -0.990150,
		28.483952, 32.646843, 34.558907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010012, 32.268391, 35.072960>,  <28.392803, 32.610821, 35.252014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010012, 32.268391, 35.072960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924538, 32.533455, 34.785847>,  <28.873253, 32.692493, 34.613579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.924538, 32.533455, 34.785847>,  <29.010012, 32.268391, 35.072960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.924538, 32.533455, 34.785847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934345, 0.353140, 0.047863,
		0.285196, -0.660432, -0.694617,
		-0.213687, 0.662663, -0.717786,
		28.860432, 32.732254, 34.570511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.803362, 32.124271, 34.882427>,  <29.010012, 32.268391, 35.072960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.803362, 32.124271, 34.882427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079252, 31.841486, 34.945023>,  <30.244785, 31.671816, 34.982582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.079252, 31.841486, 34.945023>,  <29.803362, 32.124271, 34.882427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079252, 31.841486, 34.945023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428337, 0.224122, -0.875384,
		0.583788, 0.670804, 0.457399,
		0.689724, -0.706959, 0.156491,
		30.286169, 31.629398, 34.991970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.521200, 32.363762, 34.876785>,  <29.803362, 32.124271, 34.882427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.521200, 32.363762, 34.876785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555733, 31.975504, 34.786991>,  <30.576452, 31.742548, 34.733116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555733, 31.975504, 34.786991>,  <30.521200, 32.363762, 34.876785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555733, 31.975504, 34.786991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653027, 0.225300, -0.723046,
		0.752398, -0.084171, 0.653309,
		0.086332, -0.970647, -0.224481,
		30.581633, 31.684309, 34.719646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845816, 32.357323, 34.337326>,  <30.521200, 32.363762, 34.876785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845816, 32.357323, 34.337326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851665, 31.964794, 34.414055>,  <30.855175, 31.729277, 34.460094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.851665, 31.964794, 34.414055>,  <30.845816, 32.357323, 34.337326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851665, 31.964794, 34.414055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430723, -0.166952, -0.886907,
		0.902366, 0.095594, 0.420236,
		0.014624, -0.981320, 0.191826,
		30.856052, 31.670399, 34.471603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.547501, 32.110634, 34.462578>,  <30.845816, 32.357323, 34.337326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.547501, 32.110634, 34.462578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303314, 31.831408, 34.312889>,  <31.156803, 31.663872, 34.223076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303314, 31.831408, 34.312889>,  <31.547501, 32.110634, 34.462578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303314, 31.831408, 34.312889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557203, -0.042721, -0.829277,
		0.562900, -0.714762, 0.415042,
		-0.610466, -0.698062, -0.374220,
		31.120174, 31.621988, 34.200623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186829, 32.358242, 34.196014>,  <31.547501, 32.110634, 34.462578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186829, 32.358242, 34.196014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584705, 32.327404, 34.168739>,  <32.823429, 32.308899, 34.152374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.584705, 32.327404, 34.168739>,  <32.186829, 32.358242, 34.196014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.584705, 32.327404, 34.168739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102792, 0.709889, 0.696772,
		-0.005311, -0.700081, 0.714044,
		0.994689, -0.077098, -0.068192,
		32.883114, 32.304276, 34.148281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305222, 32.656822, 34.832436>,  <32.186829, 32.358242, 34.196014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305222, 32.656822, 34.832436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632187, 32.658295, 34.602016>,  <32.828365, 32.659176, 34.463764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.632187, 32.658295, 34.602016>,  <32.305222, 32.656822, 34.832436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.632187, 32.658295, 34.602016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262570, 0.887683, 0.378254,
		0.512736, -0.460441, 0.724635,
		0.817410, 0.003677, -0.576045,
		32.877411, 32.659397, 34.429203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829163, 32.757130, 35.190693>,  <32.305222, 32.656822, 34.832436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829163, 32.757130, 35.190693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028057, 32.859596, 34.859119>,  <33.147396, 32.921078, 34.660175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028057, 32.859596, 34.859119>,  <32.829163, 32.757130, 35.190693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028057, 32.859596, 34.859119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267821, 0.863441, 0.427484,
		0.825242, -0.434568, 0.360730,
		0.497239, 0.256167, -0.828934,
		33.177231, 32.936447, 34.610439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368267, 33.038223, 35.426067>,  <32.829163, 32.757130, 35.190693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368267, 33.038223, 35.426067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347466, 33.173077, 35.050060>,  <33.334984, 33.253986, 34.824455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.347466, 33.173077, 35.050060>,  <33.368267, 33.038223, 35.426067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347466, 33.173077, 35.050060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284575, 0.907269, 0.309643,
		0.957242, -0.251405, -0.143118,
		-0.052000, 0.337132, -0.940020,
		33.331867, 33.274216, 34.768055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962887, 33.526691, 35.289680>,  <33.368267, 33.038223, 35.426067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962887, 33.526691, 35.289680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679363, 33.614449, 35.021515>,  <33.509247, 33.667103, 34.860615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.679363, 33.614449, 35.021515>,  <33.962887, 33.526691, 35.289680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679363, 33.614449, 35.021515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222912, 0.971366, 0.082205,
		0.669251, -0.091175, -0.737422,
		-0.708811, 0.219396, -0.670412,
		33.466721, 33.680267, 34.820393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226486, 34.000210, 34.868889>,  <33.962887, 33.526691, 35.289680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226486, 34.000210, 34.868889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832161, 34.019257, 34.804520>,  <33.595566, 34.030685, 34.765896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832161, 34.019257, 34.804520>,  <34.226486, 34.000210, 34.868889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832161, 34.019257, 34.804520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027665, 0.991896, 0.124004,
		0.165527, 0.117793, -0.979145,
		-0.985817, 0.047614, -0.160926,
		33.536415, 34.033543, 34.756241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.190948, 34.587059, 34.464188>,  <34.226486, 34.000210, 34.868889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.190948, 34.587059, 34.464188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831741, 34.509327, 34.622070>,  <33.616215, 34.462688, 34.716801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831741, 34.509327, 34.622070>,  <34.190948, 34.587059, 34.464188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831741, 34.509327, 34.622070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151351, 0.978857, 0.137593,
		-0.413102, 0.063822, -0.908446,
		-0.898020, -0.194334, 0.394708,
		33.562336, 34.451027, 34.740482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763905, 35.173759, 34.303772>,  <34.190948, 34.587059, 34.464188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763905, 35.173759, 34.303772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574516, 35.004192, 34.612606>,  <33.460884, 34.902451, 34.797909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574516, 35.004192, 34.612606>,  <33.763905, 35.173759, 34.303772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574516, 35.004192, 34.612606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269903, 0.904224, 0.330955,
		-0.838438, -0.051691, -0.542540,
		-0.473470, -0.423918, 0.772088,
		33.432476, 34.877018, 34.844231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088818, 35.507874, 34.349758>,  <33.763905, 35.173759, 34.303772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088818, 35.507874, 34.349758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188145, 35.348526, 34.702946>,  <33.247742, 35.252918, 34.914860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188145, 35.348526, 34.702946>,  <33.088818, 35.507874, 34.349758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188145, 35.348526, 34.702946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066689, 0.902330, 0.425857,
		-0.966381, -0.164630, 0.197494,
		0.248313, -0.398369, 0.882974,
		33.262638, 35.229015, 34.967838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799480, 35.901249, 34.831921>,  <33.088818, 35.507874, 34.349758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799480, 35.901249, 34.831921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033386, 35.701710, 35.087795>,  <33.173729, 35.581985, 35.241322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033386, 35.701710, 35.087795>,  <32.799480, 35.901249, 34.831921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033386, 35.701710, 35.087795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014993, 0.781789, 0.623362,
		-0.811062, -0.374113, 0.449687,
		0.584768, -0.498843, 0.639689,
		33.208817, 35.552055, 35.279701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501495, 35.840221, 35.461582>,  <32.799480, 35.901249, 34.831921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501495, 35.840221, 35.461582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893829, 35.805183, 35.531189>,  <33.129230, 35.784161, 35.572952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893829, 35.805183, 35.531189>,  <32.501495, 35.840221, 35.461582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893829, 35.805183, 35.531189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043934, 0.770751, 0.635620,
		-0.189802, -0.631087, 0.752134,
		0.980839, -0.087598, 0.174016,
		33.188080, 35.778904, 35.583393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499889, 35.954617, 36.211220>,  <32.501495, 35.840221, 35.461582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499889, 35.954617, 36.211220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872360, 35.994446, 36.070938>,  <33.095844, 36.018345, 35.986767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872360, 35.994446, 36.070938>,  <32.499889, 35.954617, 36.211220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872360, 35.994446, 36.070938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070938, 0.894102, 0.442209,
		0.357600, -0.436653, 0.825504,
		0.931177, 0.099575, -0.350706,
		33.151714, 36.024319, 35.965725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013832, 35.856560, 36.757309>,  <32.499889, 35.954617, 36.211220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013832, 35.856560, 36.757309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205723, 36.070168, 36.478832>,  <33.320858, 36.198330, 36.311745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.205723, 36.070168, 36.478832>,  <33.013832, 35.856560, 36.757309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.205723, 36.070168, 36.478832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062501, 0.770646, 0.634191,
		0.875188, -0.347753, 0.336325,
		0.479730, 0.534016, -0.696194,
		33.349640, 36.230373, 36.269974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536476, 36.197765, 37.112762>,  <33.013832, 35.856560, 36.757309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536476, 36.197765, 37.112762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541138, 36.409985, 36.773731>,  <33.543934, 36.537315, 36.570312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541138, 36.409985, 36.773731>,  <33.536476, 36.197765, 37.112762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541138, 36.409985, 36.773731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258045, 0.817326, 0.515161,
		0.966063, -0.224715, -0.127381,
		0.011652, 0.530548, -0.847575,
		33.544632, 36.569149, 36.519459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105095, 36.651405, 37.175083>,  <33.536476, 36.197765, 37.112762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105095, 36.651405, 37.175083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824764, 36.782883, 36.921844>,  <33.656567, 36.861771, 36.769901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.824764, 36.782883, 36.921844>,  <34.105095, 36.651405, 37.175083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824764, 36.782883, 36.921844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090690, 0.921366, 0.377969,
		0.707545, 0.207475, -0.675525,
		-0.700825, 0.328694, -0.633092,
		33.614517, 36.881493, 36.731918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339397, 37.324440, 37.047932>,  <34.105095, 36.651405, 37.175083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339397, 37.324440, 37.047932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952328, 37.293438, 36.951935>,  <33.720085, 37.274837, 36.894337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.952328, 37.293438, 36.951935>,  <34.339397, 37.324440, 37.047932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952328, 37.293438, 36.951935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206763, 0.788667, 0.579011,
		0.144398, 0.609916, -0.779199,
		-0.967677, -0.077501, -0.239990,
		33.662025, 37.270187, 36.879936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064671, 38.051384, 36.759773>,  <34.339397, 37.324440, 37.047932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064671, 38.051384, 36.759773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762424, 37.830296, 36.900368>,  <33.581078, 37.697643, 36.984726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762424, 37.830296, 36.900368>,  <34.064671, 38.051384, 36.759773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762424, 37.830296, 36.900368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301229, 0.769723, 0.562838,
		-0.581643, 0.319410, -0.748110,
		-0.755614, -0.552723, 0.351489,
		33.535740, 37.664478, 37.005814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496990, 38.450871, 36.688999>,  <34.064671, 38.051384, 36.759773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496990, 38.450871, 36.688999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372795, 38.182285, 36.958141>,  <33.298279, 38.021133, 37.119625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.372795, 38.182285, 36.958141>,  <33.496990, 38.450871, 36.688999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372795, 38.182285, 36.958141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388557, 0.735650, 0.554836,
		-0.867538, -0.089172, -0.489313,
		-0.310487, -0.671467, 0.672852,
		33.279648, 37.980846, 37.159996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.783718, 38.643963, 36.865543>,  <33.496990, 38.450871, 36.688999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.783718, 38.643963, 36.865543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906853, 38.388813, 37.147919>,  <32.980736, 38.235725, 37.317345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906853, 38.388813, 37.147919>,  <32.783718, 38.643963, 36.865543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906853, 38.388813, 37.147919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201400, 0.681473, 0.703586,
		-0.929878, -0.358768, 0.081316,
		0.307839, -0.637872, 0.705943,
		32.999203, 38.197453, 37.359703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.176086, 38.433739, 37.266373>,  <32.783718, 38.643963, 36.865543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.176086, 38.433739, 37.266373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526577, 38.414040, 37.458122>,  <32.736870, 38.402218, 37.573174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526577, 38.414040, 37.458122>,  <32.176086, 38.433739, 37.266373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526577, 38.414040, 37.458122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354159, 0.608787, 0.709894,
		-0.326800, -0.791804, 0.515993,
		0.876227, -0.049250, 0.479376,
		32.789444, 38.399265, 37.601936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.011906, 38.527988, 37.967411>,  <32.176086, 38.433739, 37.266373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.011906, 38.527988, 37.967411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407677, 38.585804, 37.962635>,  <32.645138, 38.620491, 37.959770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407677, 38.585804, 37.962635>,  <32.011906, 38.527988, 37.967411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407677, 38.585804, 37.962635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101552, 0.749262, 0.654442,
		0.103538, -0.646310, 0.756018,
		0.989428, 0.144535, -0.011943,
		32.704506, 38.629166, 37.959053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167942, 38.916481, 38.617306>,  <32.011906, 38.527988, 37.967411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167942, 38.916481, 38.617306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533512, 38.937046, 38.456264>,  <32.752853, 38.949387, 38.359638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.533512, 38.937046, 38.456264>,  <32.167942, 38.916481, 38.617306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533512, 38.937046, 38.456264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224863, 0.761656, 0.607714,
		0.337890, -0.645939, 0.684539,
		0.913929, 0.051413, -0.402604,
		32.807690, 38.952469, 38.335484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659023, 39.037209, 39.186573>,  <32.167942, 38.916481, 38.617306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659023, 39.037209, 39.186573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806953, 39.160835, 38.836098>,  <32.895714, 39.235012, 38.625813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806953, 39.160835, 38.836098>,  <32.659023, 39.037209, 39.186573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806953, 39.160835, 38.836098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333232, 0.836180, 0.435614,
		0.867284, -0.453077, 0.206253,
		0.369831, 0.309071, -0.876185,
		32.917904, 39.253555, 38.573242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324657, 39.378494, 39.250889>,  <32.659023, 39.037209, 39.186573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324657, 39.378494, 39.250889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189388, 39.515934, 38.900444>,  <33.108227, 39.598400, 38.690178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.189388, 39.515934, 38.900444>,  <33.324657, 39.378494, 39.250889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189388, 39.515934, 38.900444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262139, 0.928510, 0.262968,
		0.903837, -0.140735, -0.404070,
		-0.338174, 0.343603, -0.876114,
		33.087936, 39.619015, 38.637611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781521, 39.811241, 39.093380>,  <33.324657, 39.378494, 39.250889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781521, 39.811241, 39.093380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487587, 39.944550, 38.857094>,  <33.311226, 40.024532, 38.715321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.487587, 39.944550, 38.857094>,  <33.781521, 39.811241, 39.093380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.487587, 39.944550, 38.857094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240875, 0.942409, 0.232042,
		0.634027, 0.028225, -0.772795,
		-0.734839, 0.333268, -0.590715,
		33.267136, 40.044529, 38.679878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.156433, 40.332581, 38.643772>,  <33.781521, 39.811241, 39.093380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.156433, 40.332581, 38.643772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760582, 40.389328, 38.652847>,  <33.523071, 40.423374, 38.658295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760582, 40.389328, 38.652847>,  <34.156433, 40.332581, 38.643772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760582, 40.389328, 38.652847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140707, 0.925137, 0.352595,
		0.029030, 0.352129, -0.935501,
		-0.989626, 0.141867, 0.022691,
		33.463696, 40.431889, 38.659653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968819, 41.064430, 38.500755>,  <34.156433, 40.332581, 38.643772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968819, 41.064430, 38.500755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682034, 40.924965, 38.742218>,  <33.509960, 40.841286, 38.887096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.682034, 40.924965, 38.742218>,  <33.968819, 41.064430, 38.500755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.682034, 40.924965, 38.742218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036582, 0.883561, 0.466886,
		-0.696149, 0.312658, -0.646236,
		-0.716965, -0.348663, 0.603652,
		33.466946, 40.820366, 38.923313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467213, 41.614029, 38.495319>,  <33.968819, 41.064430, 38.500755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467213, 41.614029, 38.495319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442780, 41.389866, 38.825703>,  <33.428120, 41.255367, 39.023933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442780, 41.389866, 38.825703>,  <33.467213, 41.614029, 38.495319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442780, 41.389866, 38.825703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134782, 0.824558, 0.549489,
		-0.988991, -0.077758, -0.125903,
		-0.061087, -0.560409, 0.825960,
		33.424454, 41.221745, 39.073490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926460, 41.910454, 38.817398>,  <33.467213, 41.614029, 38.495319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926460, 41.910454, 38.817398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159042, 41.719498, 39.080917>,  <33.298592, 41.604923, 39.239029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159042, 41.719498, 39.080917>,  <32.926460, 41.910454, 38.817398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159042, 41.719498, 39.080917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017526, 0.802213, 0.596781,
		-0.813390, -0.358547, 0.458084,
		0.581455, -0.477387, 0.658795,
		33.333481, 41.576283, 39.278557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785458, 42.255169, 39.313812>,  <32.926460, 41.910454, 38.817398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785458, 42.255169, 39.313812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109764, 42.081013, 39.470318>,  <33.304348, 41.976521, 39.564220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109764, 42.081013, 39.470318>,  <32.785458, 42.255169, 39.313812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109764, 42.081013, 39.470318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080437, 0.744934, 0.662272,
		-0.579811, -0.505479, 0.638992,
		0.810771, -0.435391, 0.391261,
		33.352997, 41.950394, 39.587696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.745743, 42.445560, 39.982059>,  <32.785458, 42.255169, 39.313812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.745743, 42.445560, 39.982059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131207, 42.351181, 39.931942>,  <33.362484, 42.294556, 39.901871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131207, 42.351181, 39.931942>,  <32.745743, 42.445560, 39.982059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131207, 42.351181, 39.931942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260735, 0.728532, 0.633450,
		-0.058180, -0.643095, 0.763573,
		0.963656, -0.235945, -0.125291,
		33.420303, 42.280399, 39.894356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979156, 42.465332, 40.659763>,  <32.745743, 42.445560, 39.982059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979156, 42.465332, 40.659763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279060, 42.498932, 40.397221>,  <33.459003, 42.519093, 40.239697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.279060, 42.498932, 40.397221>,  <32.979156, 42.465332, 40.659763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.279060, 42.498932, 40.397221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362576, 0.777599, 0.513692,
		0.553529, -0.623125, 0.552559,
		0.749763, 0.083999, -0.656353,
		33.503990, 42.524132, 40.200314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616379, 42.491741, 41.103031>,  <32.979156, 42.465332, 40.659763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616379, 42.491741, 41.103031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778736, 42.638298, 40.768124>,  <33.876148, 42.726231, 40.567181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.778736, 42.638298, 40.768124>,  <33.616379, 42.491741, 41.103031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778736, 42.638298, 40.768124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361956, 0.776767, 0.515385,
		0.839190, -0.512243, 0.182666,
		0.405891, 0.366389, -0.837264,
		33.900505, 42.748215, 40.516945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.391792, 42.629608, 41.228699>,  <33.616379, 42.491741, 41.103031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.391792, 42.629608, 41.228699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242508, 42.856609, 40.935127>,  <34.152939, 42.992809, 40.758984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242508, 42.856609, 40.935127>,  <34.391792, 42.629608, 41.228699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242508, 42.856609, 40.935127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257675, 0.823369, 0.505635,
		0.891245, -0.000407, -0.453521,
		-0.373210, 0.567506, -0.733929,
		34.130547, 43.026863, 40.714951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.956726, 43.128952, 41.139751>,  <34.391792, 42.629608, 41.228699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.956726, 43.128952, 41.139751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628761, 43.306530, 40.995167>,  <34.431984, 43.413078, 40.908417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628761, 43.306530, 40.995167>,  <34.956726, 43.128952, 41.139751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628761, 43.306530, 40.995167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107410, 0.739465, 0.664571,
		0.562324, 0.506065, -0.653980,
		-0.819912, 0.443948, -0.361462,
		34.382790, 43.439713, 40.886726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145557, 43.903324, 41.026161>,  <34.956726, 43.128952, 41.139751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145557, 43.903324, 41.026161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747368, 43.891521, 41.062305>,  <34.508453, 43.884441, 41.083992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747368, 43.891521, 41.062305>,  <35.145557, 43.903324, 41.026161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747368, 43.891521, 41.062305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026091, 0.829285, 0.558216,
		-0.091401, 0.558046, -0.824761,
		-0.995472, -0.029503, 0.090357,
		34.448727, 43.882671, 41.089413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889519, 44.562832, 40.878540>,  <35.145557, 43.903324, 41.026161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889519, 44.562832, 40.878540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585732, 44.398823, 41.080566>,  <34.403461, 44.300415, 41.201782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585732, 44.398823, 41.080566>,  <34.889519, 44.562832, 40.878540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585732, 44.398823, 41.080566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295955, 0.909141, 0.293041,
		-0.579329, 0.073079, -0.811812,
		-0.759466, -0.410027, 0.505064,
		34.357891, 44.275814, 41.232086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265594, 45.055901, 40.803989>,  <34.889519, 44.562832, 40.878540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265594, 45.055901, 40.803989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141331, 44.827065, 41.107620>,  <34.066772, 44.689762, 41.289799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.141331, 44.827065, 41.107620>,  <34.265594, 45.055901, 40.803989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.141331, 44.827065, 41.107620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442322, 0.793867, 0.417285,
		-0.841332, -0.206122, -0.499673,
		-0.310663, -0.572092, 0.759078,
		34.048130, 44.655437, 41.335342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693672, 45.483395, 41.118649>,  <34.265594, 45.055901, 40.803989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693672, 45.483395, 41.118649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783474, 45.231602, 41.416199>,  <33.837353, 45.080524, 41.594727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.783474, 45.231602, 41.416199>,  <33.693672, 45.483395, 41.118649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.783474, 45.231602, 41.416199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271865, 0.692590, 0.668138,
		-0.935782, -0.352231, -0.015648,
		0.224502, -0.629486, 0.743873,
		33.850826, 45.042755, 41.639362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150436, 45.609165, 41.546829>,  <33.693672, 45.483395, 41.118649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150436, 45.609165, 41.546829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454914, 45.458088, 41.757706>,  <33.637600, 45.367443, 41.884232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.454914, 45.458088, 41.757706>,  <33.150436, 45.609165, 41.546829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.454914, 45.458088, 41.757706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131860, 0.705795, 0.696036,
		-0.634973, -0.599336, 0.487448,
		0.761198, -0.377690, 0.527189,
		33.683273, 45.344780, 41.915863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.866703, 45.475143, 42.153713>,  <33.150436, 45.609165, 41.546829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.866703, 45.475143, 42.153713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257565, 45.560143, 42.151924>,  <33.492081, 45.611141, 42.150852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257565, 45.560143, 42.151924>,  <32.866703, 45.475143, 42.153713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257565, 45.560143, 42.151924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176615, 0.823471, 0.539168,
		0.118253, -0.526060, 0.842186,
		0.977150, 0.212501, -0.004468,
		33.550709, 45.623894, 42.150585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120388, 45.581097, 42.899258>,  <32.866703, 45.475143, 42.153713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120388, 45.581097, 42.899258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344917, 45.781502, 42.635773>,  <33.479633, 45.901745, 42.477680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.344917, 45.781502, 42.635773>,  <33.120388, 45.581097, 42.899258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344917, 45.781502, 42.635773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122735, 0.837531, 0.532427,
		0.818448, -0.218014, 0.531613,
		0.561319, 0.501012, -0.658717,
		33.513313, 45.931805, 42.438156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792263, 46.284252, 42.586006>,  <33.120388, 45.581097, 42.899258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792263, 46.284252, 42.586006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747459, 46.289402, 42.188557>,  <32.720577, 46.292492, 41.950089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.747459, 46.289402, 42.188557>,  <32.792263, 46.284252, 42.586006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.747459, 46.289402, 42.188557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783194, -0.616571, 0.080298,
		-0.611606, 0.787194, 0.079140,
		-0.112006, 0.012871, -0.993624,
		32.713860, 46.293262, 41.890469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976601, 46.439713, 43.322052>,  <32.792263, 46.284252, 42.586006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976601, 46.439713, 43.322052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745895, 46.678318, 43.545307>,  <32.607471, 46.821480, 43.679260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.745895, 46.678318, 43.545307>,  <32.976601, 46.439713, 43.322052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745895, 46.678318, 43.545307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482866, -0.302162, 0.821912,
		0.658928, 0.743554, -0.113759,
		-0.576762, 0.596511, 0.558140,
		32.572868, 46.857273, 43.712749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439426, 46.687698, 43.828888>,  <32.976601, 46.439713, 43.322052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439426, 46.687698, 43.828888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067753, 46.728680, 43.970936>,  <32.844749, 46.753269, 44.056164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067753, 46.728680, 43.970936>,  <33.439426, 46.687698, 43.828888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067753, 46.728680, 43.970936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322027, -0.247160, 0.913898,
		0.181403, 0.963543, 0.196666,
		-0.929188, 0.102452, 0.355123,
		32.788998, 46.759415, 44.077473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920654, 46.257168, 44.258442>,  <33.439426, 46.687698, 43.828888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920654, 46.257168, 44.258442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186932, 46.274555, 44.556423>,  <34.346699, 46.284988, 44.735210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186932, 46.274555, 44.556423>,  <33.920654, 46.257168, 44.258442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186932, 46.274555, 44.556423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135102, -0.988825, -0.063024,
		0.733890, 0.142600, -0.664132,
		0.665698, 0.043472, 0.744954,
		34.386642, 46.287598, 44.779911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526947, 46.004028, 43.925266>,  <33.920654, 46.257168, 44.258442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526947, 46.004028, 43.925266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517067, 45.962437, 44.322975>,  <34.511139, 45.937481, 44.561600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517067, 45.962437, 44.322975>,  <34.526947, 46.004028, 43.925266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517067, 45.962437, 44.322975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058624, -0.992714, -0.105269,
		0.997975, -0.060889, 0.018426,
		-0.024701, -0.103976, 0.994273,
		34.509655, 45.931244, 44.621258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148163, 45.629002, 44.113636>,  <34.526947, 46.004028, 43.925266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148163, 45.629002, 44.113636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849270, 45.580685, 44.375034>,  <34.669933, 45.551693, 44.531872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849270, 45.580685, 44.375034>,  <35.148163, 45.629002, 44.113636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849270, 45.580685, 44.375034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103431, -0.992498, -0.065187,
		0.656466, 0.018882, 0.754119,
		-0.747231, -0.120792, 0.653495,
		34.625099, 45.544449, 44.571083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338974, 45.101830, 44.692623>,  <35.148163, 45.629002, 44.113636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338974, 45.101830, 44.692623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947437, 45.135757, 44.618145>,  <34.712513, 45.156116, 44.573460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947437, 45.135757, 44.618145>,  <35.338974, 45.101830, 44.692623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947437, 45.135757, 44.618145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041346, -0.973246, -0.226013,
		-0.200382, -0.213534, 0.956165,
		-0.978845, 0.084823, -0.186193,
		34.653786, 45.161205, 44.562286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991871, 44.720913, 45.148048>,  <35.338974, 45.101830, 44.692623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991871, 44.720913, 45.148048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751534, 44.744137, 44.829147>,  <34.607330, 44.758072, 44.637806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751534, 44.744137, 44.829147>,  <34.991871, 44.720913, 45.148048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751534, 44.744137, 44.829147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085162, -0.987033, -0.136065,
		-0.794816, -0.149650, 0.588109,
		-0.600845, 0.058062, -0.797254,
		34.571281, 44.761555, 44.589970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.426636, 44.194172, 45.136463>,  <34.991871, 44.720913, 45.148048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.426636, 44.194172, 45.136463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470158, 44.319191, 44.759003>,  <34.496269, 44.394203, 44.532528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470158, 44.319191, 44.759003>,  <34.426636, 44.194172, 45.136463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470158, 44.319191, 44.759003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178531, -0.939996, -0.290748,
		-0.977900, -0.136837, -0.158073,
		0.108803, 0.312544, -0.943652,
		34.502800, 44.412952, 44.475906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357056, 43.623680, 44.733124>,  <34.426636, 44.194172, 45.136463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357056, 43.623680, 44.733124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468254, 43.851131, 44.423447>,  <34.534973, 43.987602, 44.237640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468254, 43.851131, 44.423447>,  <34.357056, 43.623680, 44.733124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468254, 43.851131, 44.423447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265029, -0.820086, -0.507168,
		-0.923296, -0.064192, -0.378686,
		0.277999, 0.568629, -0.774195,
		34.551655, 44.021721, 44.191189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130581, 43.272522, 44.145863>,  <34.357056, 43.623680, 44.733124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130581, 43.272522, 44.145863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428093, 43.515865, 44.035091>,  <34.606602, 43.661873, 43.968628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428093, 43.515865, 44.035091>,  <34.130581, 43.272522, 44.145863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428093, 43.515865, 44.035091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485467, -0.776441, -0.401822,
		-0.459469, 0.164429, -0.872841,
		0.743781, 0.608361, -0.276925,
		34.651226, 43.698372, 43.952015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370060, 42.947136, 43.545490>,  <34.130581, 43.272522, 44.145863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370060, 42.947136, 43.545490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655792, 43.220009, 43.607925>,  <34.827232, 43.383732, 43.645386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655792, 43.220009, 43.607925>,  <34.370060, 42.947136, 43.545490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655792, 43.220009, 43.607925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671661, -0.605706, -0.426606,
		-0.196475, 0.409578, -0.890866,
		0.714331, 0.682178, 0.156092,
		34.870090, 43.424664, 43.654755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678604, 43.120136, 42.851254>,  <34.370060, 42.947136, 43.545490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678604, 43.120136, 42.851254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950680, 43.195400, 43.134644>,  <35.113926, 43.240559, 43.304676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950680, 43.195400, 43.134644>,  <34.678604, 43.120136, 42.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950680, 43.195400, 43.134644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682670, -0.514673, -0.518722,
		0.267029, 0.836484, -0.478529,
		0.680189, 0.188163, 0.708475,
		35.154736, 43.251850, 43.347187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352722, 43.309731, 42.498924>,  <34.678604, 43.120136, 42.851254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352722, 43.309731, 42.498924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395573, 43.163395, 42.868721>,  <35.421284, 43.075596, 43.090599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.395573, 43.163395, 42.868721>,  <35.352722, 43.309731, 42.498924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395573, 43.163395, 42.868721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531847, -0.764538, -0.364171,
		0.840037, 0.530702, 0.112663,
		0.107131, -0.365836, 0.924493,
		35.427711, 43.053642, 43.146069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948433, 43.034096, 42.423729>,  <35.352722, 43.309731, 42.498924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948433, 43.034096, 42.423729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851055, 42.884739, 42.781792>,  <35.792629, 42.795124, 42.996632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851055, 42.884739, 42.781792>,  <35.948433, 43.034096, 42.423729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851055, 42.884739, 42.781792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547252, -0.814865, -0.191077,
		0.800783, 0.443363, 0.402712,
		-0.243440, -0.373396, 0.895161,
		35.778023, 42.772720, 43.050339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514919, 42.745483, 42.715607>,  <35.948433, 43.034096, 42.423729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514919, 42.745483, 42.715607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219212, 42.540012, 42.889786>,  <36.041786, 42.416729, 42.994293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219212, 42.540012, 42.889786>,  <36.514919, 42.745483, 42.715607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219212, 42.540012, 42.889786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449866, -0.857892, -0.248277,
		0.501100, 0.012349, 0.865301,
		-0.739269, -0.513681, 0.435445,
		35.997429, 42.385906, 43.020420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885155, 42.116871, 42.969452>,  <36.514919, 42.745483, 42.715607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885155, 42.116871, 42.969452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492386, 42.053997, 42.927273>,  <36.256725, 42.016273, 42.901966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.492386, 42.053997, 42.927273>,  <36.885155, 42.116871, 42.969452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492386, 42.053997, 42.927273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186696, -0.896039, -0.402814,
		-0.031171, -0.415220, 0.909187,
		-0.981923, -0.157185, -0.105450,
		36.197807, 42.006840, 42.895638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.956570, 41.441917, 42.964855>,  <36.885155, 42.116871, 42.969452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.956570, 41.441917, 42.964855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567886, 41.498192, 42.888973>,  <36.334675, 41.531956, 42.843445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567886, 41.498192, 42.888973>,  <36.956570, 41.441917, 42.964855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567886, 41.498192, 42.888973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071378, -0.940594, -0.331946,
		-0.225132, -0.309015, 0.924027,
		-0.971710, 0.140687, -0.189702,
		36.276375, 41.540398, 42.832062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644871, 40.876358, 43.181656>,  <36.956570, 41.441917, 42.964855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644871, 40.876358, 43.181656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422478, 41.031643, 42.887669>,  <36.289043, 41.124813, 42.711277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422478, 41.031643, 42.887669>,  <36.644871, 40.876358, 43.181656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422478, 41.031643, 42.887669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022799, -0.876775, -0.480359,
		-0.830879, -0.283829, 0.478623,
		-0.555985, 0.388209, -0.734966,
		36.255684, 41.148106, 42.667179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.208340, 40.381088, 43.061760>,  <36.644871, 40.876358, 43.181656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.208340, 40.381088, 43.061760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179974, 40.615681, 42.739017>,  <36.162956, 40.756435, 42.545372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.179974, 40.615681, 42.739017>,  <36.208340, 40.381088, 43.061760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179974, 40.615681, 42.739017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075795, -0.809721, -0.581900,
		-0.994599, 0.019892, 0.101870,
		-0.070911, 0.586478, -0.806855,
		36.158699, 40.791626, 42.496960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634903, 40.110023, 42.666008>,  <36.208340, 40.381088, 43.061760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634903, 40.110023, 42.666008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845963, 40.327885, 42.405258>,  <35.972599, 40.458603, 42.248810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.845963, 40.327885, 42.405258>,  <35.634903, 40.110023, 42.666008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845963, 40.327885, 42.405258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075333, -0.794376, -0.602737,
		-0.846117, 0.268925, -0.460181,
		0.527647, 0.544653, -0.651876,
		36.004257, 40.491280, 42.209694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369911, 39.935497, 41.947857>,  <35.634903, 40.110023, 42.666008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369911, 39.935497, 41.947857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743019, 40.070930, 41.898369>,  <35.966885, 40.152191, 41.868675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.743019, 40.070930, 41.898369>,  <35.369911, 39.935497, 41.947857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743019, 40.070930, 41.898369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098772, -0.570132, -0.815594,
		-0.346680, 0.748540, -0.565243,
		0.932769, 0.338580, -0.123718,
		36.022850, 40.172504, 41.861252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608322, 40.277637, 41.305618>,  <35.369911, 39.935497, 41.947857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608322, 40.277637, 41.305618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935032, 40.094917, 41.446598>,  <36.131058, 39.985287, 41.531185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935032, 40.094917, 41.446598>,  <35.608322, 40.277637, 41.305618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935032, 40.094917, 41.446598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021926, -0.635006, -0.772196,
		0.576546, 0.622979, -0.528670,
		0.816771, -0.456798, 0.352450,
		36.180061, 39.957878, 41.552334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183895, 40.241367, 40.768791>,  <35.608322, 40.277637, 41.305618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183895, 40.241367, 40.768791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243229, 39.935627, 41.019794>,  <36.278831, 39.752182, 41.170395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243229, 39.935627, 41.019794>,  <36.183895, 40.241367, 40.768791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243229, 39.935627, 41.019794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100139, -0.642875, -0.759397,
		0.983854, 0.049810, -0.171904,
		0.148338, -0.764349, 0.627507,
		36.287731, 39.706322, 41.208046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.581741, 39.763428, 40.372669>,  <36.183895, 40.241367, 40.768791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.581741, 39.763428, 40.372669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444576, 39.530117, 40.667206>,  <36.362278, 39.390133, 40.843929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.444576, 39.530117, 40.667206>,  <36.581741, 39.763428, 40.372669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.444576, 39.530117, 40.667206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106989, -0.754521, -0.647496,
		0.933255, -0.300815, 0.196330,
		-0.342912, -0.583274, 0.736344,
		36.341702, 39.355133, 40.888107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883083, 39.138481, 40.293812>,  <36.581741, 39.763428, 40.372669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883083, 39.138481, 40.293812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560490, 39.035046, 40.506493>,  <36.366932, 38.972984, 40.634102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560490, 39.035046, 40.506493>,  <36.883083, 39.138481, 40.293812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560490, 39.035046, 40.506493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212489, -0.712439, -0.668790,
		0.551748, -0.652352, 0.519626,
		-0.806488, -0.258589, 0.531704,
		36.318542, 38.957470, 40.666004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885395, 38.427120, 40.206432>,  <36.883083, 39.138481, 40.293812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885395, 38.427120, 40.206432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514145, 38.524593, 40.319008>,  <36.291397, 38.583076, 40.386555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514145, 38.524593, 40.319008>,  <36.885395, 38.427120, 40.206432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514145, 38.524593, 40.319008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369255, -0.698675, -0.612784,
		0.047311, -0.672661, 0.738437,
		-0.928123, 0.243680, 0.281438,
		36.235706, 38.597698, 40.403439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504768, 37.807625, 40.416019>,  <36.885395, 38.427120, 40.206432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504768, 37.807625, 40.416019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220562, 38.078098, 40.338108>,  <36.050037, 38.240383, 40.291363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220562, 38.078098, 40.338108>,  <36.504768, 37.807625, 40.416019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220562, 38.078098, 40.338108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531602, -0.697150, -0.481021,
		-0.461047, -0.238232, 0.854799,
		-0.710518, 0.676186, -0.194774,
		36.007408, 38.280952, 40.279675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.957367, 37.367714, 40.610558>,  <36.504768, 37.807625, 40.416019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.957367, 37.367714, 40.610558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816097, 37.664948, 40.383190>,  <35.731335, 37.843288, 40.246769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816097, 37.664948, 40.383190>,  <35.957367, 37.367714, 40.610558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816097, 37.664948, 40.383190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631984, -0.637481, -0.440696,
		-0.689829, 0.203588, 0.694758,
		-0.353175, 0.743081, -0.568417,
		35.710144, 37.887871, 40.212666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268562, 37.357922, 40.745327>,  <35.957367, 37.367714, 40.610558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268562, 37.357922, 40.745327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327957, 37.510925, 40.380550>,  <35.363594, 37.602726, 40.161682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327957, 37.510925, 40.380550>,  <35.268562, 37.357922, 40.745327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327957, 37.510925, 40.380550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756405, -0.550099, -0.353896,
		-0.637026, 0.742348, 0.207646,
		0.148488, 0.382506, -0.911943,
		35.372505, 37.625675, 40.106968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.665466, 37.244209, 40.444206>,  <35.268562, 37.357922, 40.745327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.665466, 37.244209, 40.444206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903999, 37.293510, 40.126919>,  <35.047119, 37.323090, 39.936546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903999, 37.293510, 40.126919>,  <34.665466, 37.244209, 40.444206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903999, 37.293510, 40.126919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528989, -0.682908, -0.503793,
		-0.603789, 0.720032, -0.342042,
		0.596331, 0.123248, -0.793221,
		35.082897, 37.330486, 39.888954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.121380, 37.238503, 39.970444>,  <34.665466, 37.244209, 40.444206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.121380, 37.238503, 39.970444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454090, 37.196201, 39.752464>,  <34.653717, 37.170818, 39.621677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454090, 37.196201, 39.752464>,  <34.121380, 37.238503, 39.970444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454090, 37.196201, 39.752464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421254, -0.759574, -0.495573,
		-0.361516, 0.641765, -0.676346,
		0.831776, -0.105756, -0.544944,
		34.703625, 37.164474, 39.588982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886780, 37.088810, 39.294464>,  <34.121380, 37.238503, 39.970444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886780, 37.088810, 39.294464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261375, 36.951870, 39.324890>,  <34.486134, 36.869705, 39.343147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261375, 36.951870, 39.324890>,  <33.886780, 37.088810, 39.294464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261375, 36.951870, 39.324890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262613, -0.828320, -0.494895,
		0.232438, 0.443486, -0.865617,
		0.936487, -0.342355, 0.076068,
		34.542320, 36.849163, 39.347710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062984, 36.802040, 38.623478>,  <33.886780, 37.088810, 39.294464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062984, 36.802040, 38.623478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322929, 36.625370, 38.870899>,  <34.478897, 36.519367, 39.019352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.322929, 36.625370, 38.870899>,  <34.062984, 36.802040, 38.623478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322929, 36.625370, 38.870899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292551, -0.896483, -0.332765,
		0.701494, 0.035294, -0.711801,
		0.649862, -0.441671, 0.618552,
		34.517887, 36.492870, 39.056465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460808, 36.428631, 38.197613>,  <34.062984, 36.802040, 38.623478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460808, 36.428631, 38.197613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567932, 36.250458, 38.539341>,  <34.632206, 36.143555, 38.744377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567932, 36.250458, 38.539341>,  <34.460808, 36.428631, 38.197613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567932, 36.250458, 38.539341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062793, -0.876757, -0.476816,
		0.961422, 0.181344, -0.206838,
		0.267814, -0.445434, 0.854321,
		34.648277, 36.116829, 38.795639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642666, 35.823944, 37.945030>,  <34.460808, 36.428631, 38.197613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642666, 35.823944, 37.945030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617188, 35.757828, 38.338703>,  <34.601902, 35.718159, 38.574909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617188, 35.757828, 38.338703>,  <34.642666, 35.823944, 37.945030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617188, 35.757828, 38.338703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082411, -0.983691, -0.159875,
		0.994561, 0.070925, 0.076275,
		-0.063692, -0.165291, 0.984186,
		34.598080, 35.708241, 38.633961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.243408, 35.517036, 37.988586>,  <34.642666, 35.823944, 37.945030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.243408, 35.517036, 37.988586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004993, 35.415207, 38.293201>,  <34.861946, 35.354107, 38.475971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004993, 35.415207, 38.293201>,  <35.243408, 35.517036, 37.988586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004993, 35.415207, 38.293201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283253, -0.954101, -0.097257,
		0.751341, 0.157739, 0.640785,
		-0.596033, -0.254578, 0.761535,
		34.826183, 35.338833, 38.521664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.711777, 35.081718, 38.479706>,  <35.243408, 35.517036, 37.988586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.711777, 35.081718, 38.479706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327568, 34.988480, 38.540451>,  <35.097042, 34.932537, 38.576897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327568, 34.988480, 38.540451>,  <35.711777, 35.081718, 38.479706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327568, 34.988480, 38.540451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186016, -0.944020, -0.272440,
		0.206865, -0.233436, 0.950113,
		-0.960523, -0.233095, 0.151861,
		35.039410, 34.918552, 38.586010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734306, 34.513275, 38.686165>,  <35.711777, 35.081718, 38.479706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734306, 34.513275, 38.686165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350113, 34.515724, 38.574860>,  <35.119595, 34.517193, 38.508076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350113, 34.515724, 38.574860>,  <35.734306, 34.513275, 38.686165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350113, 34.515724, 38.574860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148054, -0.835331, -0.529435,
		-0.235681, -0.549713, 0.801418,
		-0.960487, 0.006124, -0.278259,
		35.061966, 34.517563, 38.491383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476315, 33.841370, 38.787201>,  <35.734306, 34.513275, 38.686165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476315, 33.841370, 38.787201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240372, 34.004349, 38.508331>,  <35.098804, 34.102135, 38.341007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.240372, 34.004349, 38.508331>,  <35.476315, 33.841370, 38.787201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240372, 34.004349, 38.508331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024970, -0.872160, -0.488583,
		-0.807120, -0.270786, 0.524625,
		-0.589859, 0.407445, -0.697177,
		35.063416, 34.126583, 38.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900478, 33.374893, 38.654697>,  <35.476315, 33.841370, 38.787201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900478, 33.374893, 38.654697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931000, 33.619656, 38.339802>,  <34.949310, 33.766514, 38.150864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931000, 33.619656, 38.339802>,  <34.900478, 33.374893, 38.654697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931000, 33.619656, 38.339802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140878, -0.775008, -0.616048,
		-0.987083, 0.157909, 0.027071,
		0.076299, 0.611904, -0.787243,
		34.953888, 33.803226, 38.103630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.339691, 33.053444, 38.202518>,  <34.900478, 33.374893, 38.654697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.339691, 33.053444, 38.202518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602642, 33.265892, 37.988689>,  <34.760414, 33.393360, 37.860394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602642, 33.265892, 37.988689>,  <34.339691, 33.053444, 38.202518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602642, 33.265892, 37.988689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061983, -0.745100, -0.664066,
		-0.751009, 0.403407, -0.522732,
		0.657377, 0.531120, -0.534572,
		34.799854, 33.425228, 37.828320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148605, 32.980377, 37.531918>,  <34.339691, 33.053444, 38.202518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148605, 32.980377, 37.531918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526539, 33.098667, 37.475590>,  <34.753300, 33.169640, 37.441795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.526539, 33.098667, 37.475590>,  <34.148605, 32.980377, 37.531918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526539, 33.098667, 37.475590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084865, -0.636268, -0.766786,
		-0.316353, 0.712538, -0.626267,
		0.944838, 0.295723, -0.140816,
		34.809990, 33.187386, 37.433346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209408, 33.114742, 36.816650>,  <34.148605, 32.980377, 37.531918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209408, 33.114742, 36.816650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588505, 33.090389, 36.941921>,  <34.815964, 33.075779, 37.017086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588505, 33.090389, 36.941921>,  <34.209408, 33.114742, 36.816650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588505, 33.090389, 36.941921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220901, -0.583052, -0.781826,
		0.230200, 0.810150, -0.539133,
		0.947740, -0.060881, 0.313182,
		34.872826, 33.072124, 37.035877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652031, 33.371059, 36.253330>,  <34.209408, 33.114742, 36.816650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652031, 33.371059, 36.253330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850903, 33.112347, 36.484673>,  <34.970226, 32.957119, 36.623478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.850903, 33.112347, 36.484673>,  <34.652031, 33.371059, 36.253330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.850903, 33.112347, 36.484673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285835, -0.507272, -0.813003,
		0.819216, 0.569519, -0.067332,
		0.497176, -0.646779, 0.578354,
		35.000057, 32.918312, 36.658180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270721, 33.183956, 35.932335>,  <34.652031, 33.371059, 36.253330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270721, 33.183956, 35.932335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258530, 32.866585, 36.175495>,  <35.251213, 32.676163, 36.321392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258530, 32.866585, 36.175495>,  <35.270721, 33.183956, 35.932335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258530, 32.866585, 36.175495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362239, -0.575609, -0.733115,
		0.931587, 0.197862, 0.304953,
		-0.030478, -0.793426, 0.607903,
		35.249386, 32.628555, 36.357864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952839, 32.788929, 35.840118>,  <35.270721, 33.183956, 35.932335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952839, 32.788929, 35.840118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665802, 32.551090, 35.985184>,  <35.493580, 32.408386, 36.072224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.665802, 32.551090, 35.985184>,  <35.952839, 32.788929, 35.840118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665802, 32.551090, 35.985184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278118, -0.722034, -0.633496,
		0.638528, -0.353726, 0.683491,
		-0.717588, -0.594596, 0.362661,
		35.450527, 32.372711, 36.093983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364567, 32.309971, 36.052681>,  <35.952839, 32.788929, 35.840118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364567, 32.309971, 36.052681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985035, 32.207775, 35.978443>,  <35.757317, 32.146458, 35.933899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985035, 32.207775, 35.978443>,  <36.364567, 32.309971, 36.052681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985035, 32.207775, 35.978443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290034, -0.472561, -0.832206,
		0.124916, -0.843451, 0.522482,
		-0.948829, -0.255494, -0.185599,
		35.700386, 32.131126, 35.922764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.585819, 32.094349, 36.755440>,  <36.364567, 32.309971, 36.052681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.585819, 32.094349, 36.755440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932850, 31.916706, 36.665932>,  <37.141068, 31.810120, 36.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.932850, 31.916706, 36.665932>,  <36.585819, 32.094349, 36.755440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.932850, 31.916706, 36.665932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473623, 0.600710, 0.644073,
		-0.151621, -0.664765, 0.731504,
		0.867579, -0.444112, -0.223768,
		37.193123, 31.783472, 36.598801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835876, 31.817366, 37.395538>,  <36.585819, 32.094349, 36.755440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835876, 31.817366, 37.395538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128300, 31.921190, 37.143131>,  <37.303753, 31.983484, 36.991688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128300, 31.921190, 37.143131>,  <36.835876, 31.817366, 37.395538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128300, 31.921190, 37.143131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391345, 0.598068, 0.699402,
		0.558926, -0.758249, 0.335647,
		0.731061, 0.259560, -0.631013,
		37.347618, 31.999058, 36.953827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480515, 31.687876, 37.727165>,  <36.835876, 31.817366, 37.395538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480515, 31.687876, 37.727165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563244, 31.946245, 37.433224>,  <37.612881, 32.101265, 37.256859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.563244, 31.946245, 37.433224>,  <37.480515, 31.687876, 37.727165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563244, 31.946245, 37.433224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401959, 0.628679, 0.665727,
		0.891994, -0.433068, -0.129609,
		0.206822, 0.645922, -0.734854,
		37.625290, 32.140022, 37.212769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000885, 32.101677, 38.003113>,  <37.480515, 31.687876, 37.727165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000885, 32.101677, 38.003113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916382, 32.304981, 37.669159>,  <37.865681, 32.426964, 37.468788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916382, 32.304981, 37.669159>,  <38.000885, 32.101677, 38.003113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916382, 32.304981, 37.669159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457975, 0.806074, 0.374838,
		0.863497, -0.303168, -0.403066,
		-0.211262, 0.508265, -0.834886,
		37.853004, 32.457462, 37.418694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414627, 32.543427, 38.033474>,  <38.000885, 32.101677, 38.003113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.414627, 32.543427, 38.033474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168716, 32.715668, 37.769165>,  <38.021168, 32.819012, 37.610580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168716, 32.715668, 37.769165>,  <38.414627, 32.543427, 38.033474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168716, 32.715668, 37.769165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177943, 0.891931, 0.415686,
		0.768364, 0.137975, -0.624964,
		-0.614779, 0.430606, -0.660776,
		37.984283, 32.844849, 37.570930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719254, 33.167313, 37.705795>,  <38.414627, 32.543427, 38.033474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719254, 33.167313, 37.705795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322514, 33.214066, 37.685490>,  <38.084469, 33.242115, 37.673306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.322514, 33.214066, 37.685490>,  <38.719254, 33.167313, 37.705795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322514, 33.214066, 37.685490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097972, 0.954192, 0.282701,
		0.081480, 0.275423, -0.957864,
		-0.991848, 0.116878, -0.050764,
		38.024960, 33.249130, 37.670261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560974, 33.782570, 37.274796>,  <38.719254, 33.167313, 37.705795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560974, 33.782570, 37.274796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274914, 33.713608, 37.545742>,  <38.103275, 33.672230, 37.708309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.274914, 33.713608, 37.545742>,  <38.560974, 33.782570, 37.274796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274914, 33.713608, 37.545742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028056, 0.961241, 0.274279,
		-0.698404, 0.215156, -0.682598,
		-0.715154, -0.172406, 0.677371,
		38.060368, 33.661884, 37.748955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.275120, 34.409317, 37.354206>,  <38.560974, 33.782570, 37.274796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.275120, 34.409317, 37.354206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101349, 34.210468, 37.654644>,  <37.997086, 34.091160, 37.834908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101349, 34.210468, 37.654644>,  <38.275120, 34.409317, 37.354206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101349, 34.210468, 37.654644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138139, 0.860801, 0.489835,
		-0.890050, 0.109044, -0.442630,
		-0.434430, -0.497122, 0.751093,
		37.971020, 34.061333, 37.879971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784985, 34.876125, 37.468983>,  <38.275120, 34.409317, 37.354206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784985, 34.876125, 37.468983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810833, 34.629784, 37.783066>,  <37.826340, 34.481979, 37.971516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810833, 34.629784, 37.783066>,  <37.784985, 34.876125, 37.468983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810833, 34.629784, 37.783066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042105, 0.787829, 0.614453,
		-0.997022, -0.006643, 0.076838,
		0.064617, -0.615858, 0.785203,
		37.830219, 34.445026, 38.018627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272907, 35.000893, 37.979729>,  <37.784985, 34.876125, 37.468983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272907, 35.000893, 37.979729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558193, 34.822578, 38.196098>,  <37.729362, 34.715588, 38.325920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.558193, 34.822578, 38.196098>,  <37.272907, 35.000893, 37.979729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.558193, 34.822578, 38.196098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014471, 0.762178, 0.647206,
		-0.700799, -0.469423, 0.537144,
		0.713212, -0.445788, 0.540926,
		37.772156, 34.688843, 38.358376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091408, 35.302158, 38.613377>,  <37.272907, 35.000893, 37.979729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091408, 35.302158, 38.613377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446587, 35.123142, 38.655815>,  <37.659695, 35.015732, 38.681278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.446587, 35.123142, 38.655815>,  <37.091408, 35.302158, 38.613377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446587, 35.123142, 38.655815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254759, 0.670623, 0.696680,
		-0.382946, -0.591585, 0.709493,
		0.887947, -0.447540, 0.106101,
		37.712971, 34.988880, 38.687645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225967, 35.260456, 39.318970>,  <37.091408, 35.302158, 38.613377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225967, 35.260456, 39.318970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600552, 35.207432, 39.189068>,  <37.825302, 35.175617, 39.111126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600552, 35.207432, 39.189068>,  <37.225967, 35.260456, 39.318970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600552, 35.207432, 39.189068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334453, 0.616523, 0.712769,
		0.105736, -0.776097, 0.621685,
		0.936462, -0.132559, -0.324757,
		37.881489, 35.167664, 39.091640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590134, 34.963718, 39.889755>,  <37.225967, 35.260456, 39.318970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590134, 34.963718, 39.889755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849552, 35.139538, 39.641182>,  <38.005203, 35.245029, 39.492039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849552, 35.139538, 39.641182>,  <37.590134, 34.963718, 39.889755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849552, 35.139538, 39.641182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264010, 0.635841, 0.725262,
		0.713922, -0.634433, 0.296328,
		0.648547, 0.439547, -0.621437,
		38.044117, 35.271400, 39.454750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269676, 35.102798, 40.307030>,  <37.590134, 34.963718, 39.889755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269676, 35.102798, 40.307030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258614, 35.363941, 40.004238>,  <38.251976, 35.520626, 39.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.258614, 35.363941, 40.004238>,  <38.269676, 35.102798, 40.307030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258614, 35.363941, 40.004238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227539, 0.741502, 0.631190,
		0.973376, -0.154786, -0.169057,
		-0.027656, 0.652853, -0.756980,
		38.250317, 35.559795, 39.777145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801826, 35.506355, 40.431904>,  <38.269676, 35.102798, 40.307030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801826, 35.506355, 40.431904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578560, 35.735954, 40.192245>,  <38.444599, 35.873714, 40.048450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.578560, 35.735954, 40.192245>,  <38.801826, 35.506355, 40.431904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578560, 35.735954, 40.192245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199170, 0.793673, 0.574817,
		0.805470, 0.201512, -0.557324,
		-0.558166, 0.574001, -0.599145,
		38.411110, 35.908154, 40.012501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228687, 36.162868, 40.302635>,  <38.801826, 35.506355, 40.431904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228687, 36.162868, 40.302635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849476, 36.254322, 40.214123>,  <38.621948, 36.309193, 40.161015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849476, 36.254322, 40.214123>,  <39.228687, 36.162868, 40.302635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849476, 36.254322, 40.214123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115478, 0.895281, 0.430276,
		0.296484, 0.382361, -0.875155,
		-0.948031, 0.228631, -0.221282,
		38.565067, 36.322910, 40.147739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238724, 36.791061, 39.887341>,  <39.228687, 36.162868, 40.302635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238724, 36.791061, 39.887341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863140, 36.762085, 40.021866>,  <38.637791, 36.744698, 40.102581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.863140, 36.762085, 40.021866>,  <39.238724, 36.791061, 39.887341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863140, 36.762085, 40.021866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016786, 0.986061, 0.165534,
		-0.343616, 0.149785, -0.927088,
		-0.938960, -0.072442, 0.336312,
		38.581451, 36.740353, 40.122761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.045986, 37.443104, 39.639687>,  <39.238724, 36.791061, 39.887341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.045986, 37.443104, 39.639687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792900, 37.294212, 39.911308>,  <38.641048, 37.204876, 40.074280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792900, 37.294212, 39.911308>,  <39.045986, 37.443104, 39.639687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792900, 37.294212, 39.911308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075703, 0.902427, 0.424140,
		-0.770674, 0.216954, -0.599160,
		-0.632717, -0.372231, 0.679053,
		38.603085, 37.182545, 40.115025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487473, 37.914795, 39.690655>,  <39.045986, 37.443104, 39.639687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487473, 37.914795, 39.690655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523540, 37.710018, 40.032364>,  <38.545181, 37.587151, 40.237389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523540, 37.710018, 40.032364>,  <38.487473, 37.914795, 39.690655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523540, 37.710018, 40.032364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272934, 0.812226, 0.515554,
		-0.957798, -0.279647, -0.066489,
		0.090169, -0.511943, 0.854274,
		38.550591, 37.556435, 40.288647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913872, 38.246033, 40.096806>,  <38.487473, 37.914795, 39.690655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913872, 38.246033, 40.096806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119972, 38.033489, 40.365780>,  <38.243633, 37.905964, 40.527164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.119972, 38.033489, 40.365780>,  <37.913872, 38.246033, 40.096806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119972, 38.033489, 40.365780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108249, 0.737974, 0.666090,
		-0.850175, -0.415995, 0.322724,
		0.515252, -0.531359, 0.672438,
		38.274548, 37.874081, 40.567513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530399, 38.212479, 40.686298>,  <37.913872, 38.246033, 40.096806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530399, 38.212479, 40.686298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918571, 38.164616, 40.770149>,  <38.151474, 38.135899, 40.820461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.918571, 38.164616, 40.770149>,  <37.530399, 38.212479, 40.686298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.918571, 38.164616, 40.770149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001748, 0.864967, 0.501827,
		-0.241370, -0.487355, 0.839181,
		0.970431, -0.119659, 0.209629,
		38.209702, 38.128719, 40.833038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622280, 38.349232, 41.439156>,  <37.530399, 38.212479, 40.686298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622280, 38.349232, 41.439156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979599, 38.396954, 41.265820>,  <38.193993, 38.425587, 41.161819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979599, 38.396954, 41.265820>,  <37.622280, 38.349232, 41.439156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979599, 38.396954, 41.265820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185900, 0.779730, 0.597882,
		0.409216, -0.614646, 0.674354,
		0.893299, 0.119301, -0.433341,
		38.247589, 38.432743, 41.135818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111416, 38.448208, 41.987434>,  <37.622280, 38.349232, 41.439156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111416, 38.448208, 41.987434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310871, 38.598656, 41.675053>,  <38.430546, 38.688923, 41.487621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.310871, 38.598656, 41.675053>,  <38.111416, 38.448208, 41.987434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.310871, 38.598656, 41.675053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313994, 0.761392, 0.567177,
		0.807939, -0.528034, 0.261562,
		0.498640, 0.376116, -0.780958,
		38.460464, 38.711491, 41.440765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.703899, 38.735039, 42.292488>,  <38.111416, 38.448208, 41.987434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.703899, 38.735039, 42.292488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660648, 38.934826, 41.948662>,  <38.634697, 39.054699, 41.742367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660648, 38.934826, 41.948662>,  <38.703899, 38.735039, 42.292488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660648, 38.934826, 41.948662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116614, 0.865033, 0.487974,
		0.987274, -0.047476, -0.151775,
		-0.108123, 0.499463, -0.859561,
		38.628212, 39.084663, 41.690792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155766, 39.345448, 42.397984>,  <38.703899, 38.735039, 42.292488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155766, 39.345448, 42.397984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903416, 39.416698, 42.095917>,  <38.752007, 39.459450, 41.914677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903416, 39.416698, 42.095917>,  <39.155766, 39.345448, 42.397984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903416, 39.416698, 42.095917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042053, 0.979709, 0.195966,
		0.774748, 0.091872, -0.625561,
		-0.630871, 0.178131, -0.755163,
		38.714153, 39.470139, 41.869370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467815, 39.787342, 41.832561>,  <39.155766, 39.345448, 42.397984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467815, 39.787342, 41.832561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071091, 39.809978, 41.786766>,  <38.833057, 39.823559, 41.759289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.071091, 39.809978, 41.786766>,  <39.467815, 39.787342, 41.832561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.071091, 39.809978, 41.786766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040042, 0.989055, 0.142008,
		0.121268, 0.136261, -0.983223,
		-0.991812, 0.056592, -0.114484,
		38.773548, 39.826958, 41.752422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320503, 40.459129, 41.410480>,  <39.467815, 39.787342, 41.832561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320503, 40.459129, 41.410480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981853, 40.358009, 41.597805>,  <38.778664, 40.297337, 41.710201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.981853, 40.358009, 41.597805>,  <39.320503, 40.459129, 41.410480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.981853, 40.358009, 41.597805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168515, 0.962037, 0.214681,
		-0.504804, 0.102837, -0.857086,
		-0.846626, -0.252804, 0.468311,
		38.727867, 40.282169, 41.738297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843697, 40.836529, 41.117962>,  <39.320503, 40.459129, 41.410480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843697, 40.836529, 41.117962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652298, 40.757992, 41.460304>,  <38.537460, 40.710869, 41.665710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652298, 40.757992, 41.460304>,  <38.843697, 40.836529, 41.117962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652298, 40.757992, 41.460304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138506, 0.979355, 0.147243,
		-0.867099, -0.048087, -0.495810,
		-0.478493, -0.196347, 0.855857,
		38.508751, 40.699089, 41.717060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258495, 41.199787, 41.102787>,  <38.843697, 40.836529, 41.117962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258495, 41.199787, 41.102787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262634, 41.135036, 41.497490>,  <38.265118, 41.096188, 41.734310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.262634, 41.135036, 41.497490>,  <38.258495, 41.199787, 41.102787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.262634, 41.135036, 41.497490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140818, 0.976740, 0.161707,
		-0.989981, -0.140627, -0.012689,
		0.010347, -0.161873, 0.986757,
		38.265739, 41.086475, 41.793518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800037, 41.604179, 41.259003>,  <38.258495, 41.199787, 41.102787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800037, 41.604179, 41.259003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042465, 41.540676, 41.570766>,  <38.187920, 41.502575, 41.757824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042465, 41.540676, 41.570766>,  <37.800037, 41.604179, 41.259003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042465, 41.540676, 41.570766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033086, 0.974000, 0.224118,
		-0.794725, -0.161618, 0.585058,
		0.606068, -0.158755, 0.779409,
		38.224285, 41.493050, 41.804588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585861, 41.981445, 41.868431>,  <37.800037, 41.604179, 41.259003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585861, 41.981445, 41.868431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971680, 41.912460, 41.948338>,  <38.203171, 41.871071, 41.996281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.971680, 41.912460, 41.948338>,  <37.585861, 41.981445, 41.868431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.971680, 41.912460, 41.948338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078505, 0.910181, 0.406704,
		-0.251964, -0.376602, 0.891451,
		0.964547, -0.172459, 0.199768,
		38.261044, 41.860722, 42.008266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680378, 42.186333, 42.557606>,  <37.585861, 41.981445, 41.868431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680378, 42.186333, 42.557606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047142, 42.207745, 42.399414>,  <38.267200, 42.220592, 42.304501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047142, 42.207745, 42.399414>,  <37.680378, 42.186333, 42.557606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047142, 42.207745, 42.399414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142953, 0.881157, 0.450697,
		0.372603, -0.469785, 0.800293,
		0.916914, 0.053527, -0.395479,
		38.322216, 42.223804, 42.280769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074436, 42.613503, 43.136581>,  <37.680378, 42.186333, 42.557606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074436, 42.613503, 43.136581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290203, 42.630440, 42.800190>,  <38.419662, 42.640602, 42.598354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.290203, 42.630440, 42.800190>,  <38.074436, 42.613503, 43.136581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.290203, 42.630440, 42.800190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213127, 0.959349, 0.185003,
		0.814620, -0.279028, 0.508465,
		0.539417, 0.042340, -0.840973,
		38.452026, 42.643143, 42.547897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678059, 42.861557, 43.316700>,  <38.074436, 42.613503, 43.136581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678059, 42.861557, 43.316700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691196, 42.918095, 42.920933>,  <38.699078, 42.952015, 42.683472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.691196, 42.918095, 42.920933>,  <38.678059, 42.861557, 43.316700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.691196, 42.918095, 42.920933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336376, 0.930636, 0.144111,
		0.941155, -0.337549, -0.016979,
		0.032843, 0.141342, -0.989416,
		38.701050, 42.960499, 42.624107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242382, 43.276947, 43.174797>,  <38.678059, 42.861557, 43.316700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242382, 43.276947, 43.174797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027527, 43.341969, 42.843723>,  <38.898613, 43.380981, 42.645081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027527, 43.341969, 42.843723>,  <39.242382, 43.276947, 43.174797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027527, 43.341969, 42.843723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105702, 0.986491, 0.125150,
		0.836846, -0.020265, -0.547063,
		-0.537136, 0.162557, -0.827683,
		38.866386, 43.390736, 42.595417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571514, 43.790447, 42.860096>,  <39.242382, 43.276947, 43.174797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571514, 43.790447, 42.860096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197277, 43.822468, 42.722546>,  <38.972733, 43.841682, 42.640015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.197277, 43.822468, 42.722546>,  <39.571514, 43.790447, 42.860096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197277, 43.822468, 42.722546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038561, 0.991298, 0.125861,
		0.350962, 0.104495, -0.930541,
		-0.935595, 0.080056, -0.343879,
		38.916599, 43.846485, 42.619381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546581, 44.293797, 42.347404>,  <39.571514, 43.790447, 42.860096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546581, 44.293797, 42.347404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169102, 44.270966, 42.477749>,  <38.942616, 44.257267, 42.555954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169102, 44.270966, 42.477749>,  <39.546581, 44.293797, 42.347404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169102, 44.270966, 42.477749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020216, 0.973214, 0.229011,
		-0.330200, 0.222704, -0.917262,
		-0.943694, -0.057076, 0.325858,
		38.885994, 44.253841, 42.575508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167416, 44.924683, 42.136703>,  <39.546581, 44.293797, 42.347404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167416, 44.924683, 42.136703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037502, 44.772724, 42.483158>,  <38.959553, 44.681549, 42.691032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037502, 44.772724, 42.483158>,  <39.167416, 44.924683, 42.136703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037502, 44.772724, 42.483158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164261, 0.879208, 0.447226,
		-0.931414, 0.287526, -0.223154,
		-0.324787, -0.379897, 0.866136,
		38.940067, 44.658756, 42.743000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543236, 45.236511, 41.534561>,  <39.167416, 44.924683, 42.136703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543236, 45.236511, 41.534561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636921, 45.446720, 41.207397>,  <39.693130, 45.572845, 41.011101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636921, 45.446720, 41.207397>,  <39.543236, 45.236511, 41.534561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636921, 45.446720, 41.207397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241252, -0.783576, -0.572544,
		-0.941776, 0.331419, -0.056740,
		0.234212, 0.525519, -0.817909,
		39.707184, 45.604374, 40.962025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109741, 45.104965, 41.083038>,  <39.543236, 45.236511, 41.534561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109741, 45.104965, 41.083038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434021, 45.205051, 40.871319>,  <39.628590, 45.265102, 40.744286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.434021, 45.205051, 40.871319>,  <39.109741, 45.104965, 41.083038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.434021, 45.205051, 40.871319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216741, -0.711572, -0.668348,
		-0.543865, 0.656551, -0.522640,
		0.810700, 0.250213, -0.529301,
		39.677231, 45.280117, 40.712528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861237, 45.270599, 40.333134>,  <39.109741, 45.104965, 41.083038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861237, 45.270599, 40.333134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245941, 45.166050, 40.365849>,  <39.476765, 45.103321, 40.385475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.245941, 45.166050, 40.365849>,  <38.861237, 45.270599, 40.333134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.245941, 45.166050, 40.365849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121858, -0.675839, -0.726906,
		0.245270, 0.689147, -0.681850,
		0.961766, -0.261377, 0.081785,
		39.534470, 45.087639, 40.390385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.038513, 45.024628, 39.601727>,  <38.861237, 45.270599, 40.333134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.038513, 45.024628, 39.601727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337978, 44.879093, 39.823402>,  <39.517658, 44.791775, 39.956409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337978, 44.879093, 39.823402>,  <39.038513, 45.024628, 39.601727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337978, 44.879093, 39.823402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042853, -0.860759, -0.507206,
		0.661565, 0.355977, -0.660009,
		0.748662, -0.363833, 0.554193,
		39.562576, 44.769943, 39.989662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424339, 44.801758, 39.070583>,  <39.038513, 45.024628, 39.601727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424339, 44.801758, 39.070583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547016, 44.614090, 39.401840>,  <39.620625, 44.501488, 39.600594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.547016, 44.614090, 39.401840>,  <39.424339, 44.801758, 39.070583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.547016, 44.614090, 39.401840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018330, -0.866998, -0.497974,
		0.951631, 0.167906, -0.257304,
		0.306695, -0.469171, 0.828140,
		39.639027, 44.473339, 39.650284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988846, 44.387524, 38.843128>,  <39.424339, 44.801758, 39.070583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988846, 44.387524, 38.843128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886318, 44.220951, 39.192043>,  <39.824802, 44.121006, 39.401390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.886318, 44.220951, 39.192043>,  <39.988846, 44.387524, 38.843128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.886318, 44.220951, 39.192043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067995, -0.907967, -0.413489,
		0.964197, -0.046676, 0.261047,
		-0.256322, -0.416435, 0.872285,
		39.809422, 44.096020, 39.453728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443260, 43.902397, 38.999374>,  <39.988846, 44.387524, 38.843128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443260, 43.902397, 38.999374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135906, 43.763210, 39.214222>,  <39.951492, 43.679699, 39.343132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135906, 43.763210, 39.214222>,  <40.443260, 43.902397, 38.999374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135906, 43.763210, 39.214222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104638, -0.896289, -0.430949,
		0.631372, -0.274932, 0.725108,
		-0.768388, -0.347963, 0.537123,
		39.905392, 43.658821, 39.375359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.575836, 43.151196, 39.095100>,  <40.443260, 43.902397, 38.999374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.575836, 43.151196, 39.095100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192780, 43.200447, 39.199226>,  <39.962944, 43.230000, 39.261703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192780, 43.200447, 39.199226>,  <40.575836, 43.151196, 39.095100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192780, 43.200447, 39.199226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203899, -0.928273, -0.311022,
		0.203347, -0.350925, 0.914058,
		-0.957640, 0.123130, 0.260315,
		39.905487, 43.237385, 39.277321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415718, 42.688171, 39.590656>,  <40.575836, 43.151196, 39.095100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415718, 42.688171, 39.590656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063374, 42.758236, 39.414745>,  <39.851967, 42.800274, 39.309196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.063374, 42.758236, 39.414745>,  <40.415718, 42.688171, 39.590656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.063374, 42.758236, 39.414745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024159, -0.911177, -0.411307,
		-0.472762, -0.372928, 0.798386,
		-0.880859, 0.175162, -0.439779,
		39.799114, 42.810783, 39.282810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.973663, 42.097321, 39.812180>,  <40.415718, 42.688171, 39.590656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.973663, 42.097321, 39.812180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806496, 42.252247, 39.483467>,  <39.706196, 42.345203, 39.286240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.806496, 42.252247, 39.483467>,  <39.973663, 42.097321, 39.812180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.806496, 42.252247, 39.483467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162687, -0.921852, -0.351741,
		-0.893799, -0.013305, 0.448271,
		-0.417919, 0.387313, -0.821786,
		39.681118, 42.368443, 39.236931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.368320, 41.661747, 39.675278>,  <39.973663, 42.097321, 39.812180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.368320, 41.661747, 39.675278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455322, 41.842518, 39.329224>,  <39.507523, 41.950981, 39.121593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455322, 41.842518, 39.329224>,  <39.368320, 41.661747, 39.675278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455322, 41.842518, 39.329224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137257, -0.863382, -0.485522,
		-0.966361, 0.224347, -0.125756,
		0.217501, 0.451929, -0.865132,
		39.520573, 41.978096, 39.069683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947693, 41.334515, 39.303864>,  <39.368320, 41.661747, 39.675278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947693, 41.334515, 39.303864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183758, 41.511826, 39.033985>,  <39.325397, 41.618214, 38.872059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.183758, 41.511826, 39.033985>,  <38.947693, 41.334515, 39.303864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.183758, 41.511826, 39.033985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186072, -0.738561, -0.648000,
		-0.785550, 0.507965, -0.353386,
		0.590159, 0.443281, -0.674695,
		39.360806, 41.644810, 38.831577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496113, 41.430050, 38.740616>,  <38.947693, 41.334515, 39.303864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496113, 41.430050, 38.740616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887478, 41.405334, 38.661728>,  <39.122295, 41.390503, 38.614395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.887478, 41.405334, 38.661728>,  <38.496113, 41.430050, 38.740616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.887478, 41.405334, 38.661728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158961, -0.834839, -0.527044,
		-0.132078, 0.547015, -0.826638,
		0.978410, -0.061792, -0.197218,
		39.181000, 41.386795, 38.602562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580601, 41.289253, 38.018635>,  <38.496113, 41.430050, 38.740616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580601, 41.289253, 38.018635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904182, 41.176872, 38.225193>,  <39.098331, 41.109444, 38.349129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904182, 41.176872, 38.225193>,  <38.580601, 41.289253, 38.018635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904182, 41.176872, 38.225193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153527, -0.948890, -0.275748,
		0.567472, 0.143787, -0.810741,
		0.808953, -0.280950, 0.516393,
		39.146870, 41.092587, 38.380112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727985, 40.754799, 37.628883>,  <38.580601, 41.289253, 38.018635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727985, 40.754799, 37.628883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944782, 40.704071, 37.961185>,  <39.074860, 40.673634, 38.160568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.944782, 40.704071, 37.961185>,  <38.727985, 40.754799, 37.628883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944782, 40.704071, 37.961185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105603, -0.990990, -0.082385,
		0.833721, -0.043078, -0.550503,
		0.541994, -0.126821, 0.830758,
		39.107380, 40.666023, 38.210411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209789, 40.234905, 37.427540>,  <38.727985, 40.754799, 37.628883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209789, 40.234905, 37.427540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194305, 40.247589, 37.827038>,  <39.185017, 40.255199, 38.066738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.194305, 40.247589, 37.827038>,  <39.209789, 40.234905, 37.427540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194305, 40.247589, 37.827038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153476, -0.987826, 0.025410,
		0.987394, -0.152300, 0.043101,
		-0.038707, 0.031705, 0.998747,
		39.182693, 40.257099, 38.126663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683308, 39.805447, 37.639133>,  <39.209789, 40.234905, 37.427540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683308, 39.805447, 37.639133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430637, 39.806026, 37.949226>,  <39.279034, 39.806374, 38.135281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.430637, 39.806026, 37.949226>,  <39.683308, 39.805447, 37.639133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430637, 39.806026, 37.949226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029211, -0.999243, 0.025674,
		0.774682, 0.038863, 0.631155,
		-0.631675, 0.001452, 0.775232,
		39.241135, 39.806461, 38.181797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.106373, 39.524509, 38.106682>,  <39.683308, 39.805447, 37.639133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.106373, 39.524509, 38.106682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720028, 39.483978, 38.202045>,  <39.488220, 39.459660, 38.259266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720028, 39.483978, 38.202045>,  <40.106373, 39.524509, 38.106682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720028, 39.483978, 38.202045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117359, -0.991621, 0.053994,
		0.230942, 0.080130, 0.969662,
		-0.965864, -0.101329, 0.238411,
		39.430267, 39.453579, 38.273567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082916, 39.052361, 38.598736>,  <40.106373, 39.524509, 38.106682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082916, 39.052361, 38.598736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702118, 39.049095, 38.476330>,  <39.473640, 39.047134, 38.402885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702118, 39.049095, 38.476330>,  <40.082916, 39.052361, 38.598736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702118, 39.049095, 38.476330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014517, -0.999724, -0.018491,
		-0.305779, -0.022046, 0.951847,
		-0.951992, -0.008164, -0.306014,
		39.416519, 39.046646, 38.384525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648869, 38.562241, 39.051746>,  <40.082916, 39.052361, 38.598736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648869, 38.562241, 39.051746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473377, 38.592175, 38.693546>,  <39.368080, 38.610134, 38.478626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.473377, 38.592175, 38.693546>,  <39.648869, 38.562241, 39.051746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.473377, 38.592175, 38.693546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021728, -0.995352, -0.093823,
		-0.898356, -0.060621, 0.435066,
		-0.438731, 0.074834, -0.895497,
		39.341759, 38.614624, 38.424896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.053707, 37.961617, 39.056988>,  <39.648869, 38.562241, 39.051746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.053707, 37.961617, 39.056988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118923, 38.086815, 38.682724>,  <39.158054, 38.161934, 38.458168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118923, 38.086815, 38.682724>,  <39.053707, 37.961617, 39.056988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118923, 38.086815, 38.682724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064789, -0.949695, -0.306401,
		-0.984490, -0.010664, -0.175119,
		0.163042, 0.312995, -0.935656,
		39.167835, 38.180714, 38.402027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583317, 37.593018, 38.694748>,  <39.053707, 37.961617, 39.056988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583317, 37.593018, 38.694748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810337, 37.727032, 38.393913>,  <38.946548, 37.807438, 38.213413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.810337, 37.727032, 38.393913>,  <38.583317, 37.593018, 38.694748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810337, 37.727032, 38.393913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048442, -0.898293, -0.436718,
		-0.821911, 0.284293, -0.493599,
		0.567552, 0.335032, -0.752089,
		38.980602, 37.827541, 38.168285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240181, 37.430145, 38.133583>,  <38.583317, 37.593018, 38.694748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240181, 37.430145, 38.133583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609638, 37.482624, 37.989548>,  <38.831314, 37.514111, 37.903126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.609638, 37.482624, 37.989548>,  <38.240181, 37.430145, 38.133583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.609638, 37.482624, 37.989548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042402, -0.898827, -0.436247,
		-0.380893, 0.418207, -0.824636,
		0.923646, 0.131198, -0.360090,
		38.886734, 37.521984, 37.881519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253551, 37.187222, 37.470840>,  <38.240181, 37.430145, 38.133583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253551, 37.187222, 37.470840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646976, 37.195087, 37.542648>,  <38.883030, 37.199806, 37.585732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646976, 37.195087, 37.542648>,  <38.253551, 37.187222, 37.470840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646976, 37.195087, 37.542648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090949, -0.912721, -0.398332,
		0.156015, 0.408110, -0.899503,
		0.983559, 0.019663, 0.179515,
		38.942043, 37.200985, 37.596504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610794, 36.994251, 36.825966>,  <38.253551, 37.187222, 37.470840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610794, 36.994251, 36.825966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884926, 36.920303, 37.107716>,  <39.049404, 36.875935, 37.276764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.884926, 36.920303, 37.107716>,  <38.610794, 36.994251, 36.825966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884926, 36.920303, 37.107716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265940, -0.836899, -0.478409,
		0.677933, 0.515191, -0.524390,
		0.685334, -0.184873, 0.704372,
		39.090527, 36.864841, 37.319027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139168, 36.731434, 36.413162>,  <38.610794, 36.994251, 36.825966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139168, 36.731434, 36.413162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202179, 36.589863, 36.781929>,  <39.239986, 36.504921, 37.003189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202179, 36.589863, 36.781929>,  <39.139168, 36.731434, 36.413162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202179, 36.589863, 36.781929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044982, -0.930028, -0.364726,
		0.986490, 0.098924, -0.130583,
		0.157526, -0.353924, 0.921913,
		39.249435, 36.483685, 37.058502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807384, 36.546158, 36.381329>,  <39.139168, 36.731434, 36.413162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807384, 36.546158, 36.381329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587906, 36.351814, 36.653469>,  <39.456219, 36.235210, 36.816753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587906, 36.351814, 36.653469>,  <39.807384, 36.546158, 36.381329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587906, 36.351814, 36.653469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168752, -0.861410, -0.479057,
		0.818810, -0.148049, 0.554645,
		-0.548701, -0.485855, 0.680347,
		39.423294, 36.206059, 36.857574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256706, 36.072029, 36.640038>,  <39.807384, 36.546158, 36.381329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256706, 36.072029, 36.640038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896355, 35.915737, 36.715660>,  <39.680141, 35.821960, 36.761032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.896355, 35.915737, 36.715660>,  <40.256706, 36.072029, 36.640038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896355, 35.915737, 36.715660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257145, -0.831304, -0.492757,
		0.349695, -0.395303, 0.849382,
		-0.900883, -0.390729, 0.189053,
		39.626091, 35.798519, 36.772377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475830, 35.320522, 36.700623>,  <40.256706, 36.072029, 36.640038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475830, 35.320522, 36.700623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081089, 35.359692, 36.649193>,  <39.844246, 35.383194, 36.618336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.081089, 35.359692, 36.649193>,  <40.475830, 35.320522, 36.700623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081089, 35.359692, 36.649193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011822, -0.749665, -0.661712,
		-0.161182, -0.654533, 0.738652,
		-0.986854, 0.097924, -0.128570,
		39.785034, 35.389069, 36.610622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156399, 34.647202, 36.825691>,  <40.475830, 35.320522, 36.700623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156399, 34.647202, 36.825691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865601, 34.854202, 36.645168>,  <39.691124, 34.978401, 36.536854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865601, 34.854202, 36.645168>,  <40.156399, 34.647202, 36.825691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865601, 34.854202, 36.645168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101845, -0.731261, -0.674451,
		-0.679050, -0.444358, 0.584326,
		-0.726993, 0.517497, -0.451307,
		39.647503, 35.009453, 36.509777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608856, 34.158112, 36.713360>,  <40.156399, 34.647202, 36.825691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608856, 34.158112, 36.713360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558670, 34.455215, 36.450283>,  <39.528557, 34.633480, 36.292439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558670, 34.455215, 36.450283>,  <39.608856, 34.158112, 36.713360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558670, 34.455215, 36.450283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234854, -0.666326, -0.707710,
		-0.963899, 0.065666, 0.258044,
		-0.125468, 0.742764, -0.657693,
		39.521030, 34.678043, 36.252975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042076, 34.017780, 36.357964>,  <39.608856, 34.158112, 36.713360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042076, 34.017780, 36.357964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248116, 34.269650, 36.125347>,  <39.371738, 34.420773, 35.985779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248116, 34.269650, 36.125347>,  <39.042076, 34.017780, 36.357964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248116, 34.269650, 36.125347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198423, -0.572441, -0.795575,
		-0.833849, 0.525189, -0.169921,
		0.515097, 0.629673, -0.581539,
		39.402645, 34.458549, 35.950886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641529, 34.020382, 35.779980>,  <39.042076, 34.017780, 36.357964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641529, 34.020382, 35.779980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002106, 34.152691, 35.668270>,  <39.218452, 34.232079, 35.601246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.002106, 34.152691, 35.668270>,  <38.641529, 34.020382, 35.779980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.002106, 34.152691, 35.668270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087635, -0.492328, -0.865987,
		-0.423943, 0.805109, -0.414816,
		0.901439, 0.330776, -0.279275,
		39.272537, 34.251923, 35.584488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599434, 34.306911, 35.152622>,  <38.641529, 34.020382, 35.779980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599434, 34.306911, 35.152622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979595, 34.186497, 35.183895>,  <39.207691, 34.114246, 35.202660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979595, 34.186497, 35.183895>,  <38.599434, 34.306911, 35.152622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979595, 34.186497, 35.183895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124709, -0.599118, -0.790889,
		0.284926, 0.741913, -0.606946,
		0.950403, -0.301036, 0.078181,
		39.264717, 34.096188, 35.207348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840103, 34.191589, 34.443905>,  <38.599434, 34.306911, 35.152622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840103, 34.191589, 34.443905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122997, 34.008858, 34.659729>,  <39.292732, 33.899220, 34.789223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.122997, 34.008858, 34.659729>,  <38.840103, 34.191589, 34.443905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.122997, 34.008858, 34.659729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035733, -0.739120, -0.672625,
		0.706078, 0.494982, -0.506405,
		0.707232, -0.456831, 0.539564,
		39.335167, 33.871807, 34.821598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233128, 33.985123, 33.952560>,  <38.840103, 34.191589, 34.443905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233128, 33.985123, 33.952560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368317, 33.762592, 34.256210>,  <39.449432, 33.629074, 34.438400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368317, 33.762592, 34.256210>,  <39.233128, 33.985123, 33.952560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368317, 33.762592, 34.256210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322830, -0.689129, -0.648754,
		0.884055, 0.464332, -0.053310,
		0.337975, -0.556324, 0.759129,
		39.469707, 33.595695, 34.483948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.802177, 33.765373, 33.772030>,  <39.233128, 33.985123, 33.952560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.802177, 33.765373, 33.772030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729618, 33.497135, 34.059750>,  <39.686081, 33.336193, 34.232384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.729618, 33.497135, 34.059750>,  <39.802177, 33.765373, 33.772030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.729618, 33.497135, 34.059750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391311, -0.720261, -0.572800,
		0.902202, 0.177564, 0.393068,
		-0.181403, -0.670593, 0.719304,
		39.675198, 33.295956, 34.275539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412022, 33.379124, 33.845325>,  <39.802177, 33.765373, 33.772030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412022, 33.379124, 33.845325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129772, 33.156963, 34.021336>,  <39.960423, 33.023666, 34.126942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.129772, 33.156963, 34.021336>,  <40.412022, 33.379124, 33.845325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.129772, 33.156963, 34.021336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392503, -0.823383, -0.409855,
		0.589944, -0.116493, 0.798997,
		-0.705626, -0.555400, 0.440026,
		39.918083, 32.990345, 34.153343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751019, 32.782429, 34.139633>,  <40.412022, 33.379124, 33.845325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751019, 32.782429, 34.139633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369820, 32.673668, 34.086163>,  <40.141102, 32.608410, 34.054081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369820, 32.673668, 34.086163>,  <40.751019, 32.782429, 34.139633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369820, 32.673668, 34.086163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302642, -0.875374, -0.377000,
		-0.014513, -0.399736, 0.916515,
		-0.952994, -0.271904, -0.133681,
		40.083923, 32.592098, 34.046059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.696999, 32.206360, 34.443886>,  <40.751019, 32.782429, 34.139633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.696999, 32.206360, 34.443886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410954, 32.224216, 34.164852>,  <40.239326, 32.234932, 33.997433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.410954, 32.224216, 34.164852>,  <40.696999, 32.206360, 34.443886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.410954, 32.224216, 34.164852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442930, -0.743102, -0.501610,
		-0.540771, -0.667688, 0.511625,
		-0.715109, 0.044642, -0.697587,
		40.196423, 32.237610, 33.955578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.609673, 31.510372, 34.198730>,  <40.696999, 32.206360, 34.443886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.609673, 31.510372, 34.198730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546978, 31.797770, 33.927673>,  <40.509361, 31.970207, 33.765038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.546978, 31.797770, 33.927673>,  <40.609673, 31.510372, 34.198730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546978, 31.797770, 33.927673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677127, -0.421307, -0.603324,
		-0.718979, -0.553416, -0.420476,
		-0.156740, 0.718493, -0.677644,
		40.499954, 32.013317, 33.724380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630131, 31.237873, 33.502556>,  <40.609673, 31.510372, 34.198730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630131, 31.237873, 33.502556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706978, 31.630157, 33.488136>,  <40.753086, 31.865528, 33.479485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.706978, 31.630157, 33.488136>,  <40.630131, 31.237873, 33.502556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706978, 31.630157, 33.488136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810961, -0.179341, -0.556937,
		-0.552658, 0.077765, -0.829772,
		0.192122, 0.980709, -0.036050,
		40.764614, 31.924370, 33.477322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.809875, 31.393454, 32.848282>,  <40.630131, 31.237873, 33.502556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.809875, 31.393454, 32.848282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941376, 31.713177, 33.049492>,  <41.020275, 31.905010, 33.170216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.941376, 31.713177, 33.049492>,  <40.809875, 31.393454, 32.848282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941376, 31.713177, 33.049492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758975, 0.093370, -0.644390,
		-0.562034, 0.593622, -0.575961,
		0.328746, 0.799309, 0.503021,
		41.040001, 31.952969, 33.200397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749001, 32.115665, 32.567410>,  <40.809875, 31.393454, 32.848282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749001, 32.115665, 32.567410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086548, 32.057400, 32.773968>,  <41.289078, 32.022442, 32.897903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.086548, 32.057400, 32.773968>,  <40.749001, 32.115665, 32.567410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.086548, 32.057400, 32.773968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532000, 0.102147, -0.840560,
		0.069688, 0.984047, 0.163690,
		0.843872, -0.145661, 0.516395,
		41.339710, 32.013702, 32.928886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.227066, 32.674564, 32.472008>,  <40.749001, 32.115665, 32.567410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.227066, 32.674564, 32.472008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374195, 32.304832, 32.512627>,  <41.462475, 32.082993, 32.536999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374195, 32.304832, 32.512627>,  <41.227066, 32.674564, 32.472008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374195, 32.304832, 32.512627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448484, 0.080679, -0.890142,
		0.814595, 0.372960, 0.444225,
		0.367827, -0.924333, 0.101546,
		41.484543, 32.027531, 32.543091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875599, 32.523281, 32.131573>,  <41.227066, 32.674564, 32.472008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875599, 32.523281, 32.131573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738850, 32.149475, 32.171181>,  <41.656799, 31.925192, 32.194946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.738850, 32.149475, 32.171181>,  <41.875599, 32.523281, 32.131573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.738850, 32.149475, 32.171181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256695, -0.194230, -0.946775,
		0.904007, -0.298260, 0.306288,
		-0.341875, -0.934514, 0.099023,
		41.636288, 31.869122, 32.200890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.215656, 31.881237, 32.188705>,  <41.875599, 32.523281, 32.131573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.215656, 31.881237, 32.188705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610325, 31.922518, 32.239021>,  <42.847126, 31.947287, 32.269211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.610325, 31.922518, 32.239021>,  <42.215656, 31.881237, 32.188705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610325, 31.922518, 32.239021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070237, -0.427192, 0.901429,
		0.146763, -0.898252, -0.414251,
		0.986675, 0.103201, 0.125786,
		42.906326, 31.953478, 32.276756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.482639, 31.200790, 32.448513>,  <42.215656, 31.881237, 32.188705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.482639, 31.200790, 32.448513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746178, 31.472364, 32.578106>,  <42.904301, 31.635309, 32.655861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.746178, 31.472364, 32.578106>,  <42.482639, 31.200790, 32.448513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.746178, 31.472364, 32.578106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101946, -0.346114, 0.932637,
		0.745337, -0.647494, -0.158822,
		0.658848, 0.678938, 0.323981,
		42.943832, 31.676046, 32.675301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.972507, 30.857960, 32.859081>,  <42.482639, 31.200790, 32.448513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.972507, 30.857960, 32.859081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977707, 31.231283, 33.002617>,  <42.980827, 31.455276, 33.088737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.977707, 31.231283, 33.002617>,  <42.972507, 30.857960, 32.859081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977707, 31.231283, 33.002617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189870, -0.350035, 0.917292,
		0.981723, -0.080058, 0.172657,
		0.013001, 0.933309, 0.358838,
		42.981606, 31.511276, 33.110268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452427, 30.862551, 33.467838>,  <42.972507, 30.857960, 32.859081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452427, 30.862551, 33.467838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228817, 31.193716, 33.485928>,  <43.094650, 31.392416, 33.496780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.228817, 31.193716, 33.485928>,  <43.452427, 30.862551, 33.467838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.228817, 31.193716, 33.485928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093823, -0.117360, 0.988647,
		0.823822, 0.548440, 0.143285,
		-0.559029, 0.827913, 0.045228,
		43.061108, 31.442091, 33.499496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704914, 31.269001, 33.985424>,  <43.452427, 30.862551, 33.467838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704914, 31.269001, 33.985424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335346, 31.418720, 33.953732>,  <43.113605, 31.508551, 33.934715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.335346, 31.418720, 33.953732>,  <43.704914, 31.269001, 33.985424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.335346, 31.418720, 33.953732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096543, -0.027695, 0.994943,
		0.370209, 0.926896, 0.061723,
		-0.923918, 0.374296, -0.079233,
		43.058170, 31.531010, 33.929962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573002, 31.541801, 34.610981>,  <43.704914, 31.269001, 33.985424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573002, 31.541801, 34.610981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201290, 31.514046, 34.465862>,  <42.978264, 31.497393, 34.378792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.201290, 31.514046, 34.465862>,  <43.573002, 31.541801, 34.610981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201290, 31.514046, 34.465862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348149, -0.163580, 0.923057,
		-0.123398, 0.984087, 0.127853,
		-0.929282, -0.069391, -0.362795,
		42.922504, 31.493229, 34.357025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.192783, 31.760700, 35.193718>,  <43.573002, 31.541801, 34.610981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.192783, 31.760700, 35.193718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930038, 31.572189, 34.958282>,  <42.772392, 31.459084, 34.817020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930038, 31.572189, 34.958282>,  <43.192783, 31.760700, 35.193718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930038, 31.572189, 34.958282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422672, -0.416286, 0.805018,
		-0.624407, 0.777563, 0.074246,
		-0.656860, -0.471277, -0.588586,
		42.732979, 31.430807, 34.781708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485004, 31.902952, 35.436001>,  <43.192783, 31.760700, 35.193718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485004, 31.902952, 35.436001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483047, 31.555574, 35.237698>,  <42.481873, 31.347147, 35.118717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.483047, 31.555574, 35.237698>,  <42.485004, 31.902952, 35.436001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483047, 31.555574, 35.237698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290345, -0.473173, 0.831750,
		-0.956910, 0.148014, -0.249831,
		-0.004897, -0.868447, -0.495759,
		42.481579, 31.295040, 35.088970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944912, 31.484779, 35.777588>,  <42.485004, 31.902952, 35.436001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944912, 31.484779, 35.777588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113876, 31.199785, 35.553471>,  <42.215256, 31.028788, 35.418999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.113876, 31.199785, 35.553471>,  <41.944912, 31.484779, 35.777588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.113876, 31.199785, 35.553471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241264, -0.684233, 0.688198,
		-0.873706, -0.155522, -0.460924,
		0.422409, -0.712487, -0.560296,
		42.240601, 30.986038, 35.385384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465897, 30.895300, 35.959236>,  <41.944912, 31.484779, 35.777588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465897, 30.895300, 35.959236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816525, 30.772732, 35.810783>,  <42.026901, 30.699190, 35.721714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816525, 30.772732, 35.810783>,  <41.465897, 30.895300, 35.959236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816525, 30.772732, 35.810783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022422, -0.744290, 0.667480,
		-0.480757, -0.593412, -0.645550,
		0.876567, -0.306421, -0.371128,
		42.079494, 30.680805, 35.699444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312740, 30.255127, 35.715954>,  <41.465897, 30.895300, 35.959236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312740, 30.255127, 35.715954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705891, 30.276295, 35.786560>,  <41.941780, 30.288996, 35.828922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705891, 30.276295, 35.786560>,  <41.312740, 30.255127, 35.715954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705891, 30.276295, 35.786560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037365, -0.880740, 0.472124,
		0.180446, -0.470634, -0.863680,
		0.982875, 0.052922, 0.176511,
		42.000751, 30.292171, 35.839512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416370, 29.606913, 35.707378>,  <41.312740, 30.255127, 35.715954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416370, 29.606913, 35.707378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748947, 29.746086, 35.880650>,  <41.948494, 29.829590, 35.984612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748947, 29.746086, 35.880650>,  <41.416370, 29.606913, 35.707378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748947, 29.746086, 35.880650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131810, -0.880909, 0.454560,
		0.539744, -0.320846, -0.778290,
		0.831446, 0.347932, 0.433174,
		41.998383, 29.850466, 36.010601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017929, 28.989342, 35.589363>,  <41.416370, 29.606913, 35.707378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017929, 28.989342, 35.589363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116844, 29.233814, 35.890110>,  <42.176193, 29.380497, 36.070557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.116844, 29.233814, 35.890110>,  <42.017929, 28.989342, 35.589363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.116844, 29.233814, 35.890110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119987, -0.789312, 0.602154,
		0.961484, -0.058692, -0.268522,
		0.247290, 0.611180, 0.751869,
		42.191032, 29.417168, 36.115669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630688, 28.683554, 35.831970>,  <42.017929, 28.989342, 35.589363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630688, 28.683554, 35.831970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495522, 28.919209, 36.125565>,  <42.414421, 29.060600, 36.301720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.495522, 28.919209, 36.125565>,  <42.630688, 28.683554, 35.831970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.495522, 28.919209, 36.125565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161131, -0.732132, 0.661831,
		0.927282, 0.341909, 0.152469,
		-0.337913, 0.589136, 0.733985,
		42.394146, 29.095949, 36.345760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137394, 28.838593, 36.321575>,  <42.630688, 28.683554, 35.831970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137394, 28.838593, 36.321575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794483, 28.895308, 36.519558>,  <42.588737, 28.929337, 36.638348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794483, 28.895308, 36.519558>,  <43.137394, 28.838593, 36.321575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794483, 28.895308, 36.519558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389452, -0.450218, 0.803511,
		0.336764, 0.881589, 0.330741,
		-0.857273, 0.141786, 0.494954,
		42.537300, 28.937843, 36.668045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.326565, 28.987009, 37.076569>,  <43.137394, 28.838593, 36.321575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.326565, 28.987009, 37.076569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943268, 28.872662, 37.073883>,  <42.713287, 28.804054, 37.072273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943268, 28.872662, 37.073883>,  <43.326565, 28.987009, 37.076569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943268, 28.872662, 37.073883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191665, -0.659537, 0.726826,
		-0.212201, 0.695192, 0.686789,
		-0.958246, -0.285866, -0.006711,
		42.655792, 28.786901, 37.071869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063469, 29.029850, 37.796665>,  <43.326565, 28.987009, 37.076569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063469, 29.029850, 37.796665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812790, 28.789066, 37.598717>,  <42.662380, 28.644596, 37.479950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.812790, 28.789066, 37.598717>,  <43.063469, 29.029850, 37.796665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.812790, 28.789066, 37.598717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039049, -0.609992, 0.791444,
		-0.778282, 0.515322, 0.358776,
		-0.626700, -0.601957, -0.494869,
		42.624779, 28.608479, 37.450256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498917, 28.951391, 38.239880>,  <43.063469, 29.029850, 37.796665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498917, 28.951391, 38.239880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488289, 28.622267, 38.012802>,  <42.481911, 28.424793, 37.876556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488289, 28.622267, 38.012802>,  <42.498917, 28.951391, 38.239880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488289, 28.622267, 38.012802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110836, -0.561970, 0.819698,
		-0.993483, 0.084703, -0.076263,
		-0.026573, -0.822809, -0.567696,
		42.480316, 28.375423, 37.842495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110832, 28.441170, 38.625229>,  <42.498917, 28.951391, 38.239880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110832, 28.441170, 38.625229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253883, 28.210272, 38.331593>,  <42.339714, 28.071733, 38.155411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.253883, 28.210272, 38.331593>,  <42.110832, 28.441170, 38.625229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.253883, 28.210272, 38.331593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072297, -0.766606, 0.638034,
		-0.931061, -0.281253, -0.232428,
		0.357630, -0.577245, -0.734091,
		42.361172, 28.037098, 38.111366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667336, 27.791317, 38.592102>,  <42.110832, 28.441170, 38.625229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667336, 27.791317, 38.592102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025146, 27.715633, 38.430103>,  <42.239834, 27.670223, 38.332905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.025146, 27.715633, 38.430103>,  <41.667336, 27.791317, 38.592102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.025146, 27.715633, 38.430103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084028, -0.818680, 0.568069,
		-0.439048, -0.542183, -0.716431,
		0.894525, -0.189209, -0.404999,
		42.293503, 27.658871, 38.308605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.668240, 27.082342, 38.448822>,  <41.667336, 27.791317, 38.592102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.668240, 27.082342, 38.448822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057331, 27.175097, 38.447102>,  <42.290787, 27.230749, 38.446068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.057331, 27.175097, 38.447102>,  <41.668240, 27.082342, 38.448822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057331, 27.175097, 38.447102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175595, -0.724219, 0.666838,
		0.151515, -0.649411, -0.745190,
		0.972733, 0.231888, -0.004303,
		42.349152, 27.244663, 38.445812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050129, 26.510860, 38.382465>,  <41.668240, 27.082342, 38.448822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050129, 26.510860, 38.382465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296844, 26.750431, 38.586761>,  <42.444874, 26.894173, 38.709339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.296844, 26.750431, 38.586761>,  <42.050129, 26.510860, 38.382465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.296844, 26.750431, 38.586761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251634, -0.764854, 0.593025,
		0.745822, -0.237251, -0.622464,
		0.616790, 0.598925, 0.510744,
		42.481880, 26.930109, 38.739986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709805, 26.249395, 38.625839>,  <42.050129, 26.510860, 38.382465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709805, 26.249395, 38.625839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620644, 26.543966, 38.881336>,  <42.567146, 26.720709, 39.034634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620644, 26.543966, 38.881336>,  <42.709805, 26.249395, 38.625839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620644, 26.543966, 38.881336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133714, -0.625936, 0.768326,
		0.965626, 0.256672, 0.041054,
		-0.222905, 0.736426, 0.638741,
		42.553772, 26.764894, 39.072960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.311787, 26.541388, 39.130737>,  <42.709805, 26.249395, 38.625839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.311787, 26.541388, 39.130737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930897, 26.485832, 39.239532>,  <42.702362, 26.452499, 39.304810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930897, 26.485832, 39.239532>,  <43.311787, 26.541388, 39.130737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930897, 26.485832, 39.239532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300283, -0.588107, 0.750973,
		0.055655, 0.796769, 0.601716,
		-0.952225, -0.138890, 0.271987,
		42.645229, 26.444166, 39.321129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.222466, 26.768284, 39.810013>,  <43.311787, 26.541388, 39.130737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.222466, 26.768284, 39.810013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999176, 26.464806, 39.675690>,  <42.865200, 26.282719, 39.595097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.999176, 26.464806, 39.675690>,  <43.222466, 26.768284, 39.810013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.999176, 26.464806, 39.675690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294785, -0.559694, 0.774496,
		-0.775554, 0.333354, 0.536088,
		-0.558227, -0.758695, -0.335806,
		42.831707, 26.237198, 39.574947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.745686, 26.601831, 40.387379>,  <43.222466, 26.768284, 39.810013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.745686, 26.601831, 40.387379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859623, 26.301233, 40.149349>,  <42.927986, 26.120874, 40.006531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.859623, 26.301233, 40.149349>,  <42.745686, 26.601831, 40.387379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.859623, 26.301233, 40.149349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319844, -0.510706, 0.798047,
		-0.903640, -0.417649, 0.094892,
		0.284841, -0.751498, -0.595077,
		42.945076, 26.075785, 39.970825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217575, 27.119833, 40.610538>,  <42.745686, 26.601831, 40.387379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.217575, 27.119833, 40.610538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525986, 27.363724, 40.537048>,  <42.711033, 27.510057, 40.492954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.525986, 27.363724, 40.537048>,  <42.217575, 27.119833, 40.610538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.525986, 27.363724, 40.537048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443034, 0.720846, 0.533013,
		0.457429, -0.329570, 0.825919,
		0.771025, 0.609726, -0.183725,
		42.757294, 27.546642, 40.481930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.190742, 27.752636, 41.194530>,  <42.217575, 27.119833, 40.610538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.190742, 27.752636, 41.194530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442230, 27.855085, 40.900833>,  <42.593124, 27.916555, 40.724613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.442230, 27.855085, 40.900833>,  <42.190742, 27.752636, 41.194530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442230, 27.855085, 40.900833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177488, 0.966545, 0.185174,
		0.757107, 0.013897, 0.653143,
		0.628718, 0.256122, -0.734244,
		42.630844, 27.931921, 40.680561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.883160, 27.953465, 41.441936>,  <42.190742, 27.752636, 41.194530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.883160, 27.953465, 41.441936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644093, 28.089077, 41.151325>,  <42.500652, 28.170444, 40.976959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.644093, 28.089077, 41.151325>,  <42.883160, 27.953465, 41.441936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.644093, 28.089077, 41.151325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069244, 0.880977, 0.468066,
		0.798745, 0.330058, -0.503059,
		-0.597672, 0.339031, -0.726530,
		42.464790, 28.190786, 40.933365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.143021, 28.666016, 41.243721>,  <42.883160, 27.953465, 41.441936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.143021, 28.666016, 41.243721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792454, 28.666439, 41.051098>,  <42.582115, 28.666693, 40.935524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.792454, 28.666439, 41.051098>,  <43.143021, 28.666016, 41.243721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792454, 28.666439, 41.051098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010648, 0.999796, -0.017184,
		0.481442, -0.020187, -0.876245,
		-0.876413, 0.001057, -0.481559,
		42.529530, 28.666756, 40.906631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923607, 29.000404, 41.342892>,  <43.143021, 28.666016, 41.243721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923607, 29.000404, 41.342892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027290, 28.644789, 41.191940>,  <44.089500, 28.431419, 41.101368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.027290, 28.644789, 41.191940>,  <43.923607, 29.000404, 41.342892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.027290, 28.644789, 41.191940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196556, 0.431118, -0.880626,
		0.945609, 0.154091, 0.286497,
		0.259211, -0.889040, -0.377382,
		44.105053, 28.378077, 41.078724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.701546, 28.949451, 41.076797>,  <43.923607, 29.000404, 41.342892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.701546, 28.949451, 41.076797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428692, 28.718391, 40.897461>,  <44.264980, 28.579756, 40.789860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.428692, 28.718391, 40.897461>,  <44.701546, 28.949451, 41.076797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.428692, 28.718391, 40.897461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233208, 0.409261, -0.882111,
		0.693041, -0.706276, -0.144458,
		-0.682135, -0.577650, -0.448344,
		44.224052, 28.545097, 40.762959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055984, 28.764103, 40.487598>,  <44.701546, 28.949451, 41.076797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055984, 28.764103, 40.487598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661808, 28.760473, 40.419689>,  <44.425301, 28.758295, 40.378944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.661808, 28.760473, 40.419689>,  <45.055984, 28.764103, 40.487598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661808, 28.760473, 40.419689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152630, 0.392625, -0.906945,
		0.074887, -0.919654, -0.385524,
		-0.985442, -0.009076, -0.169769,
		44.366177, 28.757750, 40.368759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005150, 28.634256, 39.749844>,  <45.055984, 28.764103, 40.487598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005150, 28.634256, 39.749844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631027, 28.739733, 39.844223>,  <44.406555, 28.803019, 39.900852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.631027, 28.739733, 39.844223>,  <45.005150, 28.634256, 39.749844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.631027, 28.739733, 39.844223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065622, 0.525994, -0.847953,
		-0.347704, -0.808578, -0.474661,
		-0.935305, 0.263689, 0.235951,
		44.350437, 28.818840, 39.915009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.703892, 28.554321, 39.106785>,  <45.005150, 28.634256, 39.749844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.703892, 28.554321, 39.106785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458138, 28.791590, 39.314888>,  <44.310684, 28.933950, 39.439751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.458138, 28.791590, 39.314888>,  <44.703892, 28.554321, 39.106785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.458138, 28.791590, 39.314888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172527, 0.542434, -0.822192,
		-0.769909, -0.594906, -0.230928,
		-0.614390, 0.593171, 0.520262,
		44.273819, 28.969542, 39.470966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.120956, 28.639761, 38.635204>,  <44.703892, 28.554321, 39.106785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.120956, 28.639761, 38.635204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121319, 28.945993, 38.892540>,  <44.121536, 29.129732, 39.046940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.121319, 28.945993, 38.892540>,  <44.120956, 28.639761, 38.635204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.121319, 28.945993, 38.892540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028635, 0.643057, -0.765283,
		-0.999589, 0.019113, -0.021341,
		0.000903, 0.765580, 0.643340,
		44.121590, 29.175667, 39.085541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581562, 29.115461, 38.401035>,  <44.120956, 28.639761, 38.635204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581562, 29.115461, 38.401035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838596, 29.325262, 38.624454>,  <43.992817, 29.451141, 38.758507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.838596, 29.325262, 38.624454>,  <43.581562, 29.115461, 38.401035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.838596, 29.325262, 38.624454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051943, 0.697481, -0.714718,
		-0.764450, 0.488282, 0.420948,
		0.642587, 0.524501, 0.558552,
		44.031372, 29.482613, 38.792019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.331009, 29.710764, 38.265717>,  <43.581562, 29.115461, 38.401035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.331009, 29.710764, 38.265717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693512, 29.803778, 38.406929>,  <43.911015, 29.859587, 38.491657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.693512, 29.803778, 38.406929>,  <43.331009, 29.710764, 38.265717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693512, 29.803778, 38.406929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103481, 0.687674, -0.718607,
		-0.409869, 0.687774, 0.599145,
		0.906256, 0.232535, 0.353027,
		43.965389, 29.873539, 38.512836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.363224, 30.440388, 38.185608>,  <43.331009, 29.710764, 38.265717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.363224, 30.440388, 38.185608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741032, 30.323746, 38.246075>,  <43.967716, 30.253761, 38.282356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.741032, 30.323746, 38.246075>,  <43.363224, 30.440388, 38.185608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.741032, 30.323746, 38.246075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303105, 0.596501, -0.743178,
		0.126540, 0.747766, 0.651792,
		0.944518, -0.291603, 0.151171,
		44.024387, 30.236265, 38.291428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759289, 31.079323, 38.302090>,  <43.363224, 30.440388, 38.185608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759289, 31.079323, 38.302090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037712, 30.811876, 38.197433>,  <44.204765, 30.651407, 38.134640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.037712, 30.811876, 38.197433>,  <43.759289, 31.079323, 38.302090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.037712, 30.811876, 38.197433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370182, 0.646435, -0.667149,
		0.615199, 0.367521, 0.697466,
		0.696057, -0.668619, -0.261637,
		44.246529, 30.611290, 38.118942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358318, 31.422289, 38.230183>,  <43.759289, 31.079323, 38.302090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358318, 31.422289, 38.230183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392036, 31.097429, 37.999252>,  <44.412270, 30.902514, 37.860695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.392036, 31.097429, 37.999252>,  <44.358318, 31.422289, 38.230183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.392036, 31.097429, 37.999252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387206, 0.560557, -0.732016,
		0.918132, -0.161837, 0.361722,
		0.084299, -0.812148, -0.577330,
		44.417324, 30.853785, 37.826054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.970364, 31.391954, 38.070660>,  <44.358318, 31.422289, 38.230183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.970364, 31.391954, 38.070660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793346, 31.166430, 37.791725>,  <44.687138, 31.031115, 37.624367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.793346, 31.166430, 37.791725>,  <44.970364, 31.391954, 38.070660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.793346, 31.166430, 37.791725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459978, 0.524813, -0.716234,
		0.769791, -0.637721, 0.027091,
		-0.442540, -0.563812, -0.697334,
		44.660583, 30.997286, 37.582523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452385, 31.184023, 37.554485>,  <44.970364, 31.391954, 38.070660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452385, 31.184023, 37.554485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088646, 31.157940, 37.390125>,  <44.870403, 31.142290, 37.291512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.088646, 31.157940, 37.390125>,  <45.452385, 31.184023, 37.554485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.088646, 31.157940, 37.390125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325680, 0.502995, -0.800580,
		0.258884, -0.861826, -0.436160,
		-0.909347, -0.065209, -0.410897,
		44.815842, 31.138376, 37.266857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507851, 31.443909, 36.921417>,  <45.452385, 31.184023, 37.554485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507851, 31.443909, 36.921417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110535, 31.408531, 36.891628>,  <44.872143, 31.387304, 36.873756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110535, 31.408531, 36.891628>,  <45.507851, 31.443909, 36.921417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110535, 31.408531, 36.891628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007638, 0.592479, -0.805550,
		0.115368, -0.800716, -0.587830,
		-0.993293, -0.088444, -0.074469,
		44.812546, 31.381998, 36.869289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471760, 31.220411, 36.276409>,  <45.507851, 31.443909, 36.921417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471760, 31.220411, 36.276409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110443, 31.355677, 36.382015>,  <44.893654, 31.436836, 36.445381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110443, 31.355677, 36.382015>,  <45.471760, 31.220411, 36.276409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110443, 31.355677, 36.382015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021212, 0.579437, -0.814741,
		-0.428499, -0.741551, -0.516228,
		-0.903293, 0.338166, 0.264017,
		44.839455, 31.457127, 36.461220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.993923, 31.198465, 35.653240>,  <45.471760, 31.220411, 36.276409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.993923, 31.198465, 35.653240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848438, 31.467787, 35.910728>,  <44.761147, 31.629379, 36.065220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.848438, 31.467787, 35.910728>,  <44.993923, 31.198465, 35.653240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848438, 31.467787, 35.910728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156888, 0.725454, -0.670151,
		-0.918205, -0.142749, -0.369490,
		-0.363711, 0.673304, 0.643720,
		44.739326, 31.669779, 36.103844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344364, 31.400759, 35.363491>,  <44.993923, 31.198465, 35.653240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344364, 31.400759, 35.363491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501240, 31.681610, 35.601215>,  <44.595367, 31.850121, 35.743851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.501240, 31.681610, 35.601215>,  <44.344364, 31.400759, 35.363491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.501240, 31.681610, 35.601215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084344, 0.670793, -0.736832,
		-0.916009, 0.238853, 0.322300,
		0.392191, 0.702129, 0.594307,
		44.618896, 31.892248, 35.779507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983910, 31.961506, 35.243172>,  <44.344364, 31.400759, 35.363491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983910, 31.961506, 35.243172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274315, 32.146339, 35.446892>,  <44.448559, 32.257240, 35.569122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.274315, 32.146339, 35.446892>,  <43.983910, 31.961506, 35.243172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.274315, 32.146339, 35.446892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054525, 0.699589, -0.712463,
		-0.685515, 0.545027, 0.482716,
		0.726014, 0.462084, 0.509296,
		44.492119, 32.284966, 35.599682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854393, 32.618664, 35.039642>,  <43.983910, 31.961506, 35.243172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854393, 32.618664, 35.039642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236179, 32.584812, 35.154068>,  <44.465252, 32.564503, 35.222721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.236179, 32.584812, 35.154068>,  <43.854393, 32.618664, 35.039642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.236179, 32.584812, 35.154068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280447, 0.581451, -0.763717,
		-0.101700, 0.809168, 0.578709,
		0.954467, -0.084628, 0.286062,
		44.522518, 32.559425, 35.239887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144600, 33.303532, 35.008640>,  <43.854393, 32.618664, 35.039642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144600, 33.303532, 35.008640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453735, 33.050671, 34.986313>,  <44.639217, 32.898956, 34.972916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.453735, 33.050671, 34.986313>,  <44.144600, 33.303532, 35.008640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.453735, 33.050671, 34.986313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417079, 0.572251, -0.706098,
		0.478302, 0.522415, 0.705911,
		0.772834, -0.632149, -0.055821,
		44.685585, 32.861027, 34.969566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.754635, 33.694355, 34.960228>,  <44.144600, 33.303532, 35.008640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.754635, 33.694355, 34.960228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840904, 33.333393, 34.811020>,  <44.892666, 33.116814, 34.721497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.840904, 33.333393, 34.811020>,  <44.754635, 33.694355, 34.960228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840904, 33.333393, 34.811020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387485, 0.429740, -0.815585,
		0.896293, 0.031360, 0.442353,
		0.215674, -0.902408, -0.373021,
		44.905605, 33.062672, 34.699112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442600, 33.743275, 34.607529>,  <44.754635, 33.694355, 34.960228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442600, 33.743275, 34.607529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219105, 33.456142, 34.441380>,  <45.085007, 33.283863, 34.341690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219105, 33.456142, 34.441380>,  <45.442600, 33.743275, 34.607529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219105, 33.456142, 34.441380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163204, 0.395883, -0.903682,
		0.813126, -0.572714, -0.104043,
		-0.558740, -0.717827, -0.415372,
		45.051483, 33.240795, 34.316769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.853397, 33.159676, 34.362610>,  <45.442600, 33.743275, 34.607529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.853397, 33.159676, 34.362610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555660, 33.391098, 34.229206>,  <45.377018, 33.529953, 34.149166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.555660, 33.391098, 34.229206>,  <45.853397, 33.159676, 34.362610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555660, 33.391098, 34.229206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043596, -0.456247, -0.888785,
		-0.666376, -0.676098, 0.314380,
		-0.744341, 0.578559, -0.333507,
		45.332359, 33.564667, 34.129154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301121, 33.637329, 34.811363>,  <45.853397, 33.159676, 34.362610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301121, 33.637329, 34.811363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478867, 33.925648, 34.598576>,  <46.585514, 34.098640, 34.470905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.478867, 33.925648, 34.598576>,  <46.301121, 33.637329, 34.811363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.478867, 33.925648, 34.598576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852686, 0.522406, -0.004422,
		0.274715, 0.455564, 0.846755,
		0.444364, 0.720801, -0.531966,
		46.612175, 34.141888, 34.438988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.285831, 34.457935, 35.094921>,  <46.301121, 33.637329, 34.811363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.285831, 34.457935, 35.094921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349255, 34.484783, 34.700893>,  <46.387310, 34.500893, 34.464478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.349255, 34.484783, 34.700893>,  <46.285831, 34.457935, 35.094921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.349255, 34.484783, 34.700893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793458, 0.602423, -0.086670,
		0.587608, 0.795350, 0.148780,
		0.158561, 0.067122, -0.985065,
		46.396824, 34.504921, 34.405373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535645, 35.210793, 34.813522>,  <46.285831, 34.457935, 35.094921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535645, 35.210793, 34.813522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299694, 34.987755, 34.579895>,  <46.158123, 34.853931, 34.439720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.299694, 34.987755, 34.579895>,  <46.535645, 35.210793, 34.813522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299694, 34.987755, 34.579895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749592, 0.647075, 0.139305,
		0.300260, 0.519986, -0.799661,
		-0.589878, -0.557592, -0.584068,
		46.122730, 34.820477, 34.404675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.333702, 35.092445, 34.866093>,  <46.535645, 35.210793, 34.813522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.333702, 35.092445, 34.866093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.713474, 35.004284, 34.776642>,  <47.941338, 34.951385, 34.722973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.713474, 35.004284, 34.776642>,  <47.333702, 35.092445, 34.866093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.713474, 35.004284, 34.776642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311266, 0.567224, 0.762476,
		-0.041208, -0.793523, 0.607143,
		0.949429, -0.220404, -0.223623,
		47.998302, 34.938164, 34.709557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.413254, 40.484222, 36.317345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023678, 40.439342, 36.396191>,  <35.789932, 40.412415, 36.443497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.023678, 40.439342, 36.396191>,  <36.413254, 40.484222, 36.317345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023678, 40.439342, 36.396191> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011627, -0.892622, -0.450655,
		0.226514, -0.436619, 0.870664,
		-0.973939, -0.112202, 0.197115,
		35.731495, 40.405682, 36.455326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315060, 39.845287, 36.542973>,  <36.413254, 40.484222, 36.317345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315060, 39.845287, 36.542973> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968105, 39.950207, 36.373814>,  <35.759933, 40.013157, 36.272320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.968105, 39.950207, 36.373814>,  <36.315060, 39.845287, 36.542973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968105, 39.950207, 36.373814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152407, -0.948995, -0.276010,
		-0.473720, -0.174956, 0.863122,
		-0.867388, 0.262297, -0.422893,
		35.707890, 40.028896, 36.246944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189987, 39.245235, 36.311436>,  <36.315060, 39.845287, 36.542973>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189987, 39.245235, 36.311436> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843498, 39.413254, 36.203194>,  <35.635605, 39.514065, 36.138248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.843498, 39.413254, 36.203194>,  <36.189987, 39.245235, 36.311436>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843498, 39.413254, 36.203194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354529, -0.898308, -0.259522,
		-0.352096, -0.128867, 0.927050,
		-0.866220, 0.420043, -0.270604,
		35.583633, 39.539268, 36.122013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589550, 38.743721, 36.599548>,  <36.189987, 39.245235, 36.311436>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589550, 38.743721, 36.599548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.480816, 38.953167, 36.276577>,  <35.415573, 39.078835, 36.082794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.480816, 38.953167, 36.276577>,  <35.589550, 38.743721, 36.599548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480816, 38.953167, 36.276577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361317, -0.833170, -0.418662,
		-0.891939, 0.177928, 0.415677,
		-0.271838, 0.523612, -0.807424,
		35.399265, 39.110252, 36.034351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910786, 38.605118, 36.379272>,  <35.589550, 38.743721, 36.599548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910786, 38.605118, 36.379272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066719, 38.739357, 36.036251>,  <35.160278, 38.819901, 35.830437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.066719, 38.739357, 36.036251>,  <34.910786, 38.605118, 36.379272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066719, 38.739357, 36.036251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182669, -0.884545, -0.429200,
		-0.902587, 0.323964, -0.283520,
		0.389831, 0.335600, -0.857557,
		35.183670, 38.840038, 35.778984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445507, 38.403805, 35.769142>,  <34.910786, 38.605118, 36.379272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445507, 38.403805, 35.769142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797386, 38.481350, 35.595451>,  <35.008514, 38.527878, 35.491238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.797386, 38.481350, 35.595451>,  <34.445507, 38.403805, 35.769142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797386, 38.481350, 35.595451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126204, -0.785212, -0.606230,
		-0.458487, 0.588099, -0.666280,
		0.879694, 0.193861, -0.434230,
		35.061295, 38.539509, 35.465183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.374638, 38.492065, 34.993507>,  <34.445507, 38.403805, 35.769142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.374638, 38.492065, 34.993507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753780, 38.379772, 35.053844>,  <34.981266, 38.312397, 35.090046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.753780, 38.379772, 35.053844>,  <34.374638, 38.492065, 34.993507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753780, 38.379772, 35.053844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110016, -0.732460, -0.671862,
		0.299098, 0.620235, -0.725154,
		0.947859, -0.280731, 0.150842,
		35.038139, 38.295551, 35.099098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.642014, 38.383110, 34.334896>,  <34.374638, 38.492065, 34.993507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.642014, 38.383110, 34.334896> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.913261, 38.196804, 34.562302>,  <35.076012, 38.085018, 34.698746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.913261, 38.196804, 34.562302>,  <34.642014, 38.383110, 34.334896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913261, 38.196804, 34.562302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005066, -0.770564, -0.637343,
		0.734932, 0.435076, -0.520177,
		0.678122, -0.465769, 0.568516,
		35.116699, 38.057072, 34.732857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016773, 37.969971, 33.870880>,  <34.642014, 38.383110, 34.334896>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016773, 37.969971, 33.870880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119442, 37.804058, 34.220066>,  <35.181046, 37.704510, 34.429577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.119442, 37.804058, 34.220066>,  <35.016773, 37.969971, 33.870880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119442, 37.804058, 34.220066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018595, -0.900942, -0.433542,
		0.966318, 0.127513, -0.223538,
		0.256677, -0.414782, 0.872968,
		35.196445, 37.679623, 34.481956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611748, 37.635952, 33.717541>,  <35.016773, 37.969971, 33.870880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611748, 37.635952, 33.717541> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459106, 37.459599, 34.042503>,  <35.367519, 37.353786, 34.237480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.459106, 37.459599, 34.042503>,  <35.611748, 37.635952, 33.717541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459106, 37.459599, 34.042503> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032846, -0.884828, -0.464758,
		0.923741, -0.150671, 0.352138,
		-0.381607, -0.440883, 0.812403,
		35.344624, 37.327335, 34.286224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.058910, 37.126423, 33.830296>,  <35.611748, 37.635952, 33.717541>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.058910, 37.126423, 33.830296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716892, 37.017620, 34.006889>,  <35.511681, 36.952339, 34.112846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.716892, 37.017620, 34.006889>,  <36.058910, 37.126423, 33.830296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716892, 37.017620, 34.006889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115206, -0.929751, -0.349702,
		0.505595, -0.248149, 0.826315,
		-0.855045, -0.272004, 0.441489,
		35.460381, 36.936020, 34.139336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224106, 36.477406, 34.046944>,  <36.058910, 37.126423, 33.830296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224106, 36.477406, 34.046944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829197, 36.476997, 34.110546>,  <35.592251, 36.476753, 34.148708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.829197, 36.476997, 34.110546>,  <36.224106, 36.477406, 34.046944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829197, 36.476997, 34.110546> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024364, -0.987201, -0.157607,
		0.157133, -0.159476, 0.974616,
		-0.987277, -0.001020, 0.159007,
		35.533012, 36.476692, 34.158249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088585, 36.105488, 34.658390>,  <36.224106, 36.477406, 34.046944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088585, 36.105488, 34.658390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772945, 36.094604, 34.412926>,  <35.583561, 36.088074, 34.265648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.772945, 36.094604, 34.412926>,  <36.088585, 36.105488, 34.658390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772945, 36.094604, 34.412926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012873, -0.999532, 0.027766,
		-0.614132, 0.014011, 0.789079,
		-0.789099, -0.027210, -0.613664,
		35.536217, 36.086441, 34.228828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812206, 35.468655, 34.818233>,  <36.088585, 36.105488, 34.658390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812206, 35.468655, 34.818233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633968, 35.596291, 34.483658>,  <35.527027, 35.672871, 34.282913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.633968, 35.596291, 34.483658>,  <35.812206, 35.468655, 34.818233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633968, 35.596291, 34.483658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023728, -0.929784, -0.367340,
		-0.894920, -0.183532, 0.406736,
		-0.445596, 0.319089, -0.836437,
		35.500290, 35.692017, 34.232727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057568, 35.161270, 34.811836>,  <35.812206, 35.468655, 34.818233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057568, 35.161270, 34.811836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.276218, 35.223068, 34.482635>,  <35.407410, 35.260147, 34.285114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.276218, 35.223068, 34.482635>,  <35.057568, 35.161270, 34.811836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276218, 35.223068, 34.482635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077316, -0.987946, -0.134108,
		-0.833797, 0.009677, -0.551986,
		0.546630, 0.154496, -0.822998,
		35.440208, 35.269417, 34.235737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.980560, 34.592712, 34.356216>,  <35.057568, 35.161270, 34.811836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.980560, 34.592712, 34.356216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291607, 34.744606, 34.155773>,  <35.478233, 34.835743, 34.035507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.291607, 34.744606, 34.155773>,  <34.980560, 34.592712, 34.356216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291607, 34.744606, 34.155773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153826, -0.887693, -0.433979,
		-0.609632, 0.260384, -0.748698,
		0.777615, 0.379737, -0.501113,
		35.524891, 34.858528, 34.005440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858528, 34.236214, 33.720860>,  <34.980560, 34.592712, 34.356216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858528, 34.236214, 33.720860> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229141, 34.386299, 33.731842>,  <35.451508, 34.476349, 33.738434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.229141, 34.386299, 33.731842>,  <34.858528, 34.236214, 33.720860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229141, 34.386299, 33.731842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361391, -0.867363, -0.342168,
		-0.104567, 0.326953, -0.939238,
		0.926532, 0.375212, 0.027461,
		35.507099, 34.498863, 33.740082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126354, 33.937027, 33.156456>,  <34.858528, 34.236214, 33.720860>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126354, 33.937027, 33.156456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421894, 34.075893, 33.387478>,  <35.599220, 34.159214, 33.526093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.421894, 34.075893, 33.387478>,  <35.126354, 33.937027, 33.156456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.421894, 34.075893, 33.387478> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587061, -0.752403, -0.298747,
		0.330839, 0.559790, -0.759724,
		0.738854, 0.347167, 0.577555,
		35.643551, 34.180042, 33.560745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700268, 33.795795, 32.766445>,  <35.126354, 33.937027, 33.156456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700268, 33.795795, 32.766445> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834721, 33.845772, 33.139843>,  <35.915394, 33.875755, 33.363880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834721, 33.845772, 33.139843>,  <35.700268, 33.795795, 32.766445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834721, 33.845772, 33.139843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581343, -0.807331, -0.101278,
		0.740982, 0.576721, -0.344003,
		0.336134, 0.124938, 0.933491,
		35.935562, 33.883255, 33.419891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450344, 33.910294, 32.738617>,  <35.700268, 33.795795, 32.766445>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450344, 33.910294, 32.738617> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402561, 33.812057, 33.123409>,  <36.373890, 33.753117, 33.354286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.402561, 33.812057, 33.123409>,  <36.450344, 33.910294, 32.738617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402561, 33.812057, 33.123409> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612871, -0.780525, -0.123162,
		0.781101, 0.574860, 0.243758,
		-0.119458, -0.245594, 0.961984,
		36.366722, 33.738380, 33.412003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154259, 33.934185, 33.093803>,  <36.450344, 33.910294, 32.738617>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154259, 33.934185, 33.093803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906006, 33.693974, 33.295471>,  <36.757053, 33.549847, 33.416473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906006, 33.693974, 33.295471>,  <37.154259, 33.934185, 33.093803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906006, 33.693974, 33.295471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659538, -0.747556, -0.078545,
		0.424065, 0.283774, 0.860024,
		-0.620627, -0.600526, 0.504172,
		36.719818, 33.513817, 33.446724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591316, 33.596024, 33.613464>,  <37.154259, 33.934185, 33.093803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591316, 33.596024, 33.613464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257225, 33.399590, 33.514481>,  <37.056770, 33.281731, 33.455090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.257225, 33.399590, 33.514481>,  <37.591316, 33.596024, 33.613464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257225, 33.399590, 33.514481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537916, -0.823074, -0.182196,
		-0.114205, -0.285288, 0.951613,
		-0.835226, -0.491080, -0.247460,
		37.006657, 33.252266, 33.440243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576897, 33.312134, 32.896999>,  <37.591316, 33.596024, 33.613464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576897, 33.312134, 32.896999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848732, 33.265480, 32.607296>,  <38.011833, 33.237488, 32.433475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848732, 33.265480, 32.607296>,  <37.576897, 33.312134, 32.896999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848732, 33.265480, 32.607296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193449, 0.980827, 0.023562,
		0.707625, -0.156120, 0.689125,
		0.679592, -0.116637, -0.724259,
		38.052608, 33.230488, 32.390018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.268475, 33.350204, 33.191147>,  <37.576897, 33.312134, 32.896999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.268475, 33.350204, 33.191147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288975, 33.445549, 32.803219>,  <38.301273, 33.502758, 32.570461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.288975, 33.445549, 32.803219>,  <38.268475, 33.350204, 33.191147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288975, 33.445549, 32.803219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198001, 0.949396, 0.243807,
		0.978861, -0.204521, 0.001460,
		0.051250, 0.238364, -0.969823,
		38.304348, 33.517059, 32.512272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823883, 33.740021, 33.126442>,  <38.268475, 33.350204, 33.191147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823883, 33.740021, 33.126442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598160, 33.845146, 32.813396>,  <38.462727, 33.908222, 32.625568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598160, 33.845146, 32.813396>,  <38.823883, 33.740021, 33.126442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598160, 33.845146, 32.813396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104415, 0.963082, 0.248132,
		0.818933, 0.058307, -0.570920,
		-0.564311, 0.262817, -0.782612,
		38.428867, 33.923992, 32.578613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266090, 34.272194, 32.753666>,  <38.823883, 33.740021, 33.126442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266090, 34.272194, 32.753666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884636, 34.322395, 32.644249>,  <38.655762, 34.352516, 32.578598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.884636, 34.322395, 32.644249>,  <39.266090, 34.272194, 32.753666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884636, 34.322395, 32.644249> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046945, 0.959802, 0.276724,
		0.297274, 0.251053, -0.921195,
		-0.953638, 0.125508, -0.273538,
		38.598545, 34.360046, 32.562187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270794, 34.911121, 32.457024>,  <39.266090, 34.272194, 32.753666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270794, 34.911121, 32.457024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878056, 34.884991, 32.528255>,  <38.642414, 34.869312, 32.570995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.878056, 34.884991, 32.528255>,  <39.270794, 34.911121, 32.457024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.878056, 34.884991, 32.528255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050582, 0.995001, 0.086111,
		-0.182810, 0.075540, -0.980242,
		-0.981846, -0.065325, 0.178075,
		38.583500, 34.865395, 32.581676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938301, 35.444294, 31.925335>,  <39.270794, 34.911121, 32.457024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938301, 35.444294, 31.925335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729027, 35.353973, 32.254040>,  <38.603462, 35.299782, 32.451263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.729027, 35.353973, 32.254040>,  <38.938301, 35.444294, 31.925335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729027, 35.353973, 32.254040> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006273, 0.963213, 0.268665,
		-0.852198, 0.145716, -0.502519,
		-0.523181, -0.225804, 0.821763,
		38.572071, 35.286232, 32.500568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564194, 36.072956, 32.000320>,  <38.938301, 35.444294, 31.925335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564194, 36.072956, 32.000320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485245, 35.879730, 32.341541>,  <38.437874, 35.763794, 32.546272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.485245, 35.879730, 32.341541>,  <38.564194, 36.072956, 32.000320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485245, 35.879730, 32.341541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338899, 0.850138, 0.403006,
		-0.919887, -0.209555, -0.331505,
		-0.197373, -0.483066, 0.853048,
		38.426033, 35.734810, 32.597454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024162, 36.398628, 32.198936>,  <38.564194, 36.072956, 32.000320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024162, 36.398628, 32.198936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156631, 36.230053, 32.536625>,  <38.236115, 36.128910, 32.739239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.156631, 36.230053, 32.536625>,  <38.024162, 36.398628, 32.198936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.156631, 36.230053, 32.536625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032655, 0.889060, 0.456625,
		-0.943004, -0.178791, 0.280674,
		0.331176, -0.421434, 0.844225,
		38.255985, 36.103622, 32.789894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559135, 36.674267, 32.772354>,  <38.024162, 36.398628, 32.198936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559135, 36.674267, 32.772354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888031, 36.517193, 32.937141>,  <38.085369, 36.422951, 33.036015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.888031, 36.517193, 32.937141>,  <37.559135, 36.674267, 32.772354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888031, 36.517193, 32.937141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017670, 0.741113, 0.671147,
		-0.568864, -0.544565, 0.616313,
		0.822241, -0.392682, 0.411970,
		38.134705, 36.399387, 33.060734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440586, 36.732479, 33.484287>,  <37.559135, 36.674267, 32.772354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440586, 36.732479, 33.484287> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828751, 36.713074, 33.389668>,  <38.061649, 36.701431, 33.332893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.828751, 36.713074, 33.389668>,  <37.440586, 36.732479, 33.484287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.828751, 36.713074, 33.389668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168870, 0.836569, 0.521186,
		0.172609, -0.545710, 0.820004,
		0.970407, -0.048513, -0.236554,
		38.119873, 36.698521, 33.318703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768421, 36.676620, 34.209820>,  <37.440586, 36.732479, 33.484287>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768421, 36.676620, 34.209820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031010, 36.801208, 33.935001>,  <38.188560, 36.875961, 33.770111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.031010, 36.801208, 33.935001>,  <37.768421, 36.676620, 34.209820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031010, 36.801208, 33.935001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313634, 0.715630, 0.624105,
		0.686061, -0.625188, 0.372102,
		0.656470, 0.311471, -0.687046,
		38.227951, 36.894650, 33.728886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206894, 37.043354, 34.662281>,  <37.768421, 36.676620, 34.209820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206894, 37.043354, 34.662281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287563, 37.170902, 34.291843>,  <38.335964, 37.247429, 34.069580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.287563, 37.170902, 34.291843>,  <38.206894, 37.043354, 34.662281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.287563, 37.170902, 34.291843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284344, 0.885741, 0.366894,
		0.937271, -0.337322, 0.087961,
		0.201673, 0.318868, -0.926095,
		38.348064, 37.266563, 34.014015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.881664, 37.380352, 34.667023>,  <38.206894, 37.043354, 34.662281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.881664, 37.380352, 34.667023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642811, 37.536766, 34.386875>,  <38.499500, 37.630615, 34.218784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.642811, 37.536766, 34.386875>,  <38.881664, 37.380352, 34.667023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642811, 37.536766, 34.386875> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222191, 0.919597, 0.323994,
		0.770754, 0.037851, -0.636007,
		-0.597134, 0.391035, -0.700374,
		38.463669, 37.654076, 34.176762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.191898, 38.033260, 34.631420>,  <38.881664, 37.380352, 34.667023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.191898, 38.033260, 34.631420> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832943, 38.056602, 34.456470>,  <38.617569, 38.070606, 34.351501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.832943, 38.056602, 34.456470>,  <39.191898, 38.033260, 34.631420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832943, 38.056602, 34.456470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014191, 0.986888, 0.160782,
		0.441017, 0.150490, -0.884792,
		-0.897386, 0.058352, -0.437370,
		38.563728, 38.074108, 34.325260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326488, 38.616211, 34.164665>,  <39.191898, 38.033260, 34.631420>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326488, 38.616211, 34.164665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930069, 38.594597, 34.213490>,  <38.692219, 38.581627, 34.242786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.930069, 38.594597, 34.213490>,  <39.326488, 38.616211, 34.164665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930069, 38.594597, 34.213490> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017452, 0.959011, 0.282830,
		-0.132344, 0.278169, -0.951371,
		-0.991050, -0.054034, 0.122064,
		38.632755, 38.578388, 34.250111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080238, 39.211617, 33.823368>,  <39.326488, 38.616211, 34.164665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080238, 39.211617, 33.823368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794521, 39.084702, 34.072887>,  <38.623093, 39.008553, 34.222599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794521, 39.084702, 34.072887>,  <39.080238, 39.211617, 33.823368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794521, 39.084702, 34.072887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094457, 0.926877, 0.363287,
		-0.693448, 0.200570, -0.692027,
		-0.714288, -0.317287, 0.623796,
		38.580235, 38.989517, 34.260025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.575962, 39.757523, 33.871155>,  <39.080238, 39.211617, 33.823368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.575962, 39.757523, 33.871155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463261, 39.526787, 34.177845>,  <38.395641, 39.388344, 34.361858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.463261, 39.526787, 34.177845>,  <38.575962, 39.757523, 33.871155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463261, 39.526787, 34.177845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237373, 0.816167, 0.526806,
		-0.929662, -0.033573, -0.366880,
		-0.281749, -0.576839, 0.766729,
		38.378735, 39.353737, 34.407864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068153, 40.161045, 34.156307>,  <38.575962, 39.757523, 33.871155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068153, 40.161045, 34.156307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203136, 39.918827, 34.444595>,  <38.284126, 39.773499, 34.617569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.203136, 39.918827, 34.444595>,  <38.068153, 40.161045, 34.156307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203136, 39.918827, 34.444595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035830, 0.773342, 0.632976,
		-0.940659, -0.187777, 0.282665,
		0.337455, -0.605542, 0.720724,
		38.304375, 39.737164, 34.660812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.198162, 39.818867, 34.868916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572643, 39.813435, 35.009396>,  <37.797333, 39.810177, 35.093685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.572643, 39.813435, 35.009396>,  <37.198162, 39.818867, 34.868916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572643, 39.813435, 35.009396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236339, 0.715278, 0.657664,
		-0.260136, -0.698709, 0.666435,
		0.936202, -0.013577, 0.351201,
		37.853504, 39.809361, 35.114758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193874, 39.958717, 35.646084>,  <37.198162, 39.818867, 34.868916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193874, 39.958717, 35.646084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571545, 40.059681, 35.561409>,  <37.798149, 40.120258, 35.510605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.571545, 40.059681, 35.561409>,  <37.193874, 39.958717, 35.646084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.571545, 40.059681, 35.561409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049024, 0.743093, 0.667390,
		0.325762, -0.619758, 0.713988,
		0.944180, 0.252413, -0.211688,
		37.854797, 40.135406, 35.497902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.462601, 40.099476, 36.273937>,  <37.193874, 39.958717, 35.646084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.462601, 40.099476, 36.273937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692657, 40.297585, 36.013500>,  <37.830692, 40.416451, 35.857239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.692657, 40.297585, 36.013500>,  <37.462601, 40.099476, 36.273937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692657, 40.297585, 36.013500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170914, 0.851087, 0.496426,
		0.800001, -0.174235, 0.574144,
		0.575141, 0.495271, -0.651091,
		37.865200, 40.446167, 35.818172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.940105, 40.346317, 36.765358>,  <37.462601, 40.099476, 36.273937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.940105, 40.346317, 36.765358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.941723, 40.574463, 36.436806>,  <37.942692, 40.711349, 36.239674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.941723, 40.574463, 36.436806>,  <37.940105, 40.346317, 36.765358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941723, 40.574463, 36.436806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064430, 0.819534, 0.569398,
		0.997914, -0.055221, -0.033438,
		0.004039, 0.570364, -0.821382,
		37.942936, 40.745571, 36.190392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326321, 40.878834, 37.054428>,  <37.940105, 40.346317, 36.765358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326321, 40.878834, 37.054428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.159405, 41.015736, 36.717686>,  <38.059254, 41.097878, 36.515640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.159405, 41.015736, 36.717686>,  <38.326321, 40.878834, 37.054428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.159405, 41.015736, 36.717686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101140, 0.903126, 0.417294,
		0.903126, 0.259280, -0.342253,
		-0.417294, 0.342253, -0.841860,
		38.034218, 41.118412, 36.465126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.464531, 41.511391, 37.090622>,  <38.326321, 40.878834, 37.054428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.464531, 41.511391, 37.090622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176533, 41.485371, 36.814251>,  <38.003735, 41.469757, 36.648430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.176533, 41.485371, 36.814251>,  <38.464531, 41.511391, 37.090622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176533, 41.485371, 36.814251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357229, 0.888302, 0.288628,
		0.594974, 0.454629, -0.662811,
		-0.719995, -0.065049, -0.690924,
		37.960533, 41.465855, 36.606976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554306, 42.055622, 36.620155>,  <38.464531, 41.511391, 37.090622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554306, 42.055622, 36.620155> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.166245, 41.958893, 36.627399>,  <37.933407, 41.900856, 36.631744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.166245, 41.958893, 36.627399>,  <38.554306, 42.055622, 36.620155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166245, 41.958893, 36.627399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234283, 0.953930, 0.187426,
		-0.062598, 0.177589, -0.982112,
		-0.970151, -0.241825, 0.018108,
		37.875198, 41.886345, 36.632832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240204, 42.605064, 36.222954>,  <38.554306, 42.055622, 36.620155>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240204, 42.605064, 36.222954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950993, 42.433025, 36.439194>,  <37.777466, 42.329803, 36.568939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.950993, 42.433025, 36.439194>,  <38.240204, 42.605064, 36.222954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.950993, 42.433025, 36.439194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314053, 0.901652, 0.297312,
		-0.615309, 0.045186, -0.786990,
		-0.723025, -0.430096, 0.540604,
		37.734085, 42.303997, 36.601376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715458, 43.088860, 36.225750>,  <38.240204, 42.605064, 36.222954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715458, 43.088860, 36.225750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601524, 42.856895, 36.531059>,  <37.533165, 42.717716, 36.714245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.601524, 42.856895, 36.531059>,  <37.715458, 43.088860, 36.225750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601524, 42.856895, 36.531059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180129, 0.814447, 0.551570,
		-0.941501, 0.019619, -0.336439,
		-0.284832, -0.579906, 0.763269,
		37.516075, 42.682922, 36.760040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041367, 43.357609, 36.398998>,  <37.715458, 43.088860, 36.225750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041367, 43.357609, 36.398998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183231, 43.156441, 36.714283>,  <37.268349, 43.035740, 36.903454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183231, 43.156441, 36.714283>,  <37.041367, 43.357609, 36.398998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183231, 43.156441, 36.714283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153948, 0.800099, 0.579777,
		-0.922233, -0.326970, 0.206342,
		0.354663, -0.502923, 0.788214,
		37.289631, 43.005566, 36.950748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646839, 43.524815, 36.872231>,  <37.041367, 43.357609, 36.398998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646839, 43.524815, 36.872231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961372, 43.411427, 37.091801>,  <37.150093, 43.343391, 37.223545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961372, 43.411427, 37.091801>,  <36.646839, 43.524815, 36.872231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961372, 43.411427, 37.091801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093303, 0.823836, 0.559096,
		-0.610715, -0.490853, 0.621362,
		0.786334, -0.283473, 0.548928,
		37.197273, 43.326385, 37.256477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.414642, 43.556091, 37.442966>,  <36.646839, 43.524815, 36.872231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.414642, 43.556091, 37.442966> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803814, 43.556522, 37.535404>,  <37.037315, 43.556782, 37.590866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.803814, 43.556522, 37.535404>,  <36.414642, 43.556091, 37.442966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803814, 43.556522, 37.535404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137785, 0.805535, 0.576306,
		-0.185535, -0.592547, 0.783878,
		0.972930, 0.001082, 0.231099,
		37.095692, 43.556847, 37.604733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504036, 43.973213, 38.071404>,  <36.414642, 43.556091, 37.442966>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504036, 43.973213, 38.071404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882191, 43.945339, 37.944042>,  <37.109085, 43.928616, 37.867626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.882191, 43.945339, 37.944042>,  <36.504036, 43.973213, 38.071404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.882191, 43.945339, 37.944042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188776, 0.913424, 0.360584,
		0.265707, -0.400999, 0.876698,
		0.945391, -0.069690, -0.318402,
		37.165810, 43.924431, 37.848522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.836533, 44.006561, 38.701267>,  <36.504036, 43.973213, 38.071404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.836533, 44.006561, 38.701267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083393, 44.120781, 38.407986>,  <37.231510, 44.189312, 38.232018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.083393, 44.120781, 38.407986>,  <36.836533, 44.006561, 38.701267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083393, 44.120781, 38.407986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237366, 0.820853, 0.519478,
		0.750190, -0.494633, 0.438810,
		0.617149, 0.285548, -0.733205,
		37.268539, 44.206444, 38.188023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393864, 44.274582, 39.022781>,  <36.836533, 44.006561, 38.701267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393864, 44.274582, 39.022781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471687, 44.423187, 38.659657>,  <37.518379, 44.512352, 38.441780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.471687, 44.423187, 38.659657>,  <37.393864, 44.274582, 39.022781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471687, 44.423187, 38.659657> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427966, 0.800613, 0.419361,
		0.882606, -0.470102, -0.003232,
		0.194555, 0.371514, -0.907814,
		37.530052, 44.534641, 38.387314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982269, 44.611526, 39.102543>,  <37.393864, 44.274582, 39.022781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982269, 44.611526, 39.102543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833374, 44.779881, 38.771656>,  <37.744038, 44.880894, 38.573124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.833374, 44.779881, 38.771656>,  <37.982269, 44.611526, 39.102543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833374, 44.779881, 38.771656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326656, 0.893655, 0.307697,
		0.868754, -0.155679, -0.470138,
		-0.372239, 0.420886, -0.827220,
		37.721703, 44.906147, 38.523491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508137, 45.049156, 38.673756>,  <37.982269, 44.611526, 39.102543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508137, 45.049156, 38.673756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173378, 45.203274, 38.518238>,  <37.972523, 45.295746, 38.424927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.173378, 45.203274, 38.518238>,  <38.508137, 45.049156, 38.673756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173378, 45.203274, 38.518238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340290, 0.922580, 0.181793,
		0.428735, 0.019840, -0.903213,
		-0.836893, 0.385295, -0.388791,
		37.922310, 45.318863, 38.401600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704506, 45.548130, 38.192909>,  <38.508137, 45.049156, 38.673756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704506, 45.548130, 38.192909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334507, 45.642338, 38.312176>,  <38.112507, 45.698864, 38.383736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.334507, 45.642338, 38.312176>,  <38.704506, 45.548130, 38.192909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.334507, 45.642338, 38.312176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286061, 0.948149, 0.138499,
		-0.250089, 0.213406, -0.944412,
		-0.925000, 0.235523, 0.298169,
		38.057007, 45.712994, 38.401627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.609974, 46.116844, 37.990135>,  <38.704506, 45.548130, 38.192909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.609974, 46.116844, 37.990135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331684, 46.098480, 38.276871>,  <38.164711, 46.087463, 38.448914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.331684, 46.098480, 38.276871>,  <38.609974, 46.116844, 37.990135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331684, 46.098480, 38.276871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208057, 0.942299, 0.262271,
		-0.687520, 0.331611, -0.646026,
		-0.695721, -0.045906, 0.716843,
		38.122967, 46.084709, 38.491924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206577, 46.666031, 37.935799>,  <38.609974, 46.116844, 37.990135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206577, 46.666031, 37.935799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100990, 46.566395, 38.308525>,  <38.037636, 46.506615, 38.532162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.100990, 46.566395, 38.308525>,  <38.206577, 46.666031, 37.935799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.100990, 46.566395, 38.308525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035442, 0.962921, 0.267446,
		-0.963879, 0.103623, -0.245356,
		-0.263972, -0.249089, 0.931812,
		38.021797, 46.491669, 38.588070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.771576, 47.287003, 38.125610>,  <38.206577, 46.666031, 37.935799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.771576, 47.287003, 38.125610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906700, 47.093662, 38.448658>,  <37.987774, 46.977657, 38.642487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.906700, 47.093662, 38.448658>,  <37.771576, 47.287003, 38.125610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906700, 47.093662, 38.448658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160416, 0.875076, 0.456627,
		-0.927443, -0.024699, 0.373148,
		0.337811, -0.483354, 0.807621,
		38.008045, 46.948654, 38.690945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332771, 47.633343, 38.680363>,  <37.771576, 47.287003, 38.125610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332771, 47.633343, 38.680363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656372, 47.451279, 38.829147>,  <37.850533, 47.342041, 38.918419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.656372, 47.451279, 38.829147>,  <37.332771, 47.633343, 38.680363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656372, 47.451279, 38.829147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176051, 0.791359, 0.585455,
		-0.560828, -0.408148, 0.720338,
		0.808998, -0.455156, 0.371961,
		37.899071, 47.314732, 38.940735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311699, 47.649448, 39.400978>,  <37.332771, 47.633343, 38.680363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311699, 47.649448, 39.400978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680786, 47.617546, 39.250130>,  <37.902241, 47.598404, 39.159618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.680786, 47.617546, 39.250130>,  <37.311699, 47.649448, 39.400978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.680786, 47.617546, 39.250130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304301, 0.751257, 0.585674,
		0.236609, -0.655174, 0.717471,
		0.922723, -0.079752, -0.377124,
		37.957603, 47.593620, 39.136993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530521, 47.519283, 39.730816>,  <37.311699, 47.649448, 39.400978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530521, 47.519283, 39.730816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762486, 47.360416, 40.015343>,  <36.901665, 47.265095, 40.186058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.762486, 47.360416, 40.015343>,  <36.530521, 47.519283, 39.730816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762486, 47.360416, 40.015343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564538, -0.825407, -0.000627,
		0.587372, -0.401200, -0.702874,
		0.579906, -0.397168, 0.711314,
		36.936459, 47.241264, 40.228737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226887, 47.007507, 39.790409>,  <36.530521, 47.519283, 39.730816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226887, 47.007507, 39.790409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510990, 46.925758, 40.059856>,  <36.681454, 46.876709, 40.221523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.510990, 46.925758, 40.059856>,  <36.226887, 47.007507, 39.790409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510990, 46.925758, 40.059856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501617, -0.818309, 0.280625,
		0.493876, -0.537215, -0.683730,
		0.710259, -0.204376, 0.673620,
		36.724068, 46.864445, 40.261944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498302, 47.157925, 39.997593>,  <36.226887, 47.007507, 39.790409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498302, 47.157925, 39.997593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160511, 47.216461, 39.791512>,  <34.957836, 47.251583, 39.667862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.160511, 47.216461, 39.791512>,  <35.498302, 47.157925, 39.997593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.160511, 47.216461, 39.791512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031495, -0.946715, -0.320530,
		-0.534661, -0.286907, 0.794873,
		-0.844480, 0.146340, -0.515207,
		34.907166, 47.260365, 39.636948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950966, 46.679569, 40.259499>,  <35.498302, 47.157925, 39.997593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950966, 46.679569, 40.259499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847248, 46.766159, 39.883007>,  <34.785015, 46.818111, 39.657112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.847248, 46.766159, 39.883007>,  <34.950966, 46.679569, 40.259499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847248, 46.766159, 39.883007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098381, -0.975408, -0.197233,
		-0.960774, 0.041456, 0.274217,
		-0.259297, 0.216474, -0.941225,
		34.769459, 46.831100, 39.600639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.530289, 46.205395, 40.143967>,  <34.950966, 46.679569, 40.259499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.530289, 46.205395, 40.143967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625542, 46.326401, 39.774799>,  <34.682693, 46.399006, 39.553299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.625542, 46.326401, 39.774799>,  <34.530289, 46.205395, 40.143967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625542, 46.326401, 39.774799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008836, -0.950888, -0.309409,
		-0.971192, 0.065526, -0.229111,
		0.238134, 0.302520, -0.922916,
		34.696983, 46.417156, 39.497925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024376, 45.953941, 39.720650>,  <34.530289, 46.205395, 40.143967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024376, 45.953941, 39.720650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.352158, 46.019478, 39.500957>,  <34.548824, 46.058800, 39.369141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.352158, 46.019478, 39.500957>,  <34.024376, 45.953941, 39.720650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352158, 46.019478, 39.500957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003458, -0.956839, -0.290597,
		-0.573138, 0.240030, -0.783517,
		0.819452, 0.163843, -0.549231,
		34.597992, 46.068630, 39.336189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757263, 45.637722, 39.178963>,  <34.024376, 45.953941, 39.720650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757263, 45.637722, 39.178963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149952, 45.667763, 39.109009>,  <34.385567, 45.685787, 39.067036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.149952, 45.667763, 39.109009>,  <33.757263, 45.637722, 39.178963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149952, 45.667763, 39.109009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002494, -0.923857, -0.382728,
		-0.190307, 0.375297, -0.907158,
		0.981721, 0.075098, -0.174880,
		34.444469, 45.690292, 39.056545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852249, 45.579693, 38.463093>,  <33.757263, 45.637722, 39.178963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852249, 45.579693, 38.463093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187054, 45.464535, 38.649227>,  <34.387936, 45.395439, 38.760906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.187054, 45.464535, 38.649227>,  <33.852249, 45.579693, 38.463093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.187054, 45.464535, 38.649227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044072, -0.883113, -0.467086,
		0.545415, 0.370445, -0.751860,
		0.837007, -0.287892, 0.465337,
		34.438156, 45.378166, 38.788830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.138405, 45.143761, 38.014935>,  <33.852249, 45.579693, 38.463093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.138405, 45.143761, 38.014935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367432, 45.075283, 38.335648>,  <34.504848, 45.034199, 38.528076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.367432, 45.075283, 38.335648>,  <34.138405, 45.143761, 38.014935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367432, 45.075283, 38.335648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296280, -0.868660, -0.397048,
		0.764449, 0.464890, -0.446648,
		0.572569, -0.171190, 0.801785,
		34.539204, 45.023926, 38.576183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853954, 44.948868, 37.772633>,  <34.138405, 45.143761, 38.014935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853954, 44.948868, 37.772633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794952, 44.799255, 38.138878>,  <34.759552, 44.709488, 38.358624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.794952, 44.799255, 38.138878>,  <34.853954, 44.948868, 37.772633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794952, 44.799255, 38.138878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291041, -0.901164, -0.321245,
		0.945272, 0.219097, 0.241781,
		-0.147501, -0.374032, 0.915611,
		34.750702, 44.687046, 38.413563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430035, 44.539970, 37.894970>,  <34.853954, 44.948868, 37.772633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430035, 44.539970, 37.894970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137665, 44.405724, 38.132664>,  <34.962242, 44.325176, 38.275280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.137665, 44.405724, 38.132664>,  <35.430035, 44.539970, 37.894970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137665, 44.405724, 38.132664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222249, -0.940315, -0.257709,
		0.645258, -0.056297, 0.761887,
		-0.730922, -0.335617, 0.594234,
		34.918388, 44.305038, 38.310932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777386, 44.122585, 38.463360>,  <35.430035, 44.539970, 37.894970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777386, 44.122585, 38.463360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396954, 44.003120, 38.431767>,  <35.168694, 43.931442, 38.412811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396954, 44.003120, 38.431767>,  <35.777386, 44.122585, 38.463360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396954, 44.003120, 38.431767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308010, -0.936480, -0.167736,
		-0.023868, -0.183858, 0.982663,
		-0.951084, -0.298666, -0.078983,
		35.111629, 43.913521, 38.408073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804497, 43.495720, 38.841698>,  <35.777386, 44.122585, 38.463360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804497, 43.495720, 38.841698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471897, 43.489368, 38.619579>,  <35.272339, 43.485558, 38.486309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.471897, 43.489368, 38.619579>,  <35.804497, 43.495720, 38.841698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471897, 43.489368, 38.619579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158349, -0.964898, -0.209519,
		-0.532479, -0.262146, 0.804826,
		-0.831500, -0.015879, -0.555299,
		35.222446, 43.484604, 38.452991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619484, 42.761471, 38.833778>,  <35.804497, 43.495720, 38.841698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619484, 42.761471, 38.833778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403854, 42.931435, 38.542889>,  <35.274475, 43.033413, 38.368355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.403854, 42.931435, 38.542889>,  <35.619484, 42.761471, 38.833778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403854, 42.931435, 38.542889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155198, -0.898746, -0.410085,
		-0.827836, -0.108203, 0.550436,
		-0.539075, 0.424910, -0.727221,
		35.242130, 43.058907, 38.324722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882214, 42.455627, 38.848221>,  <35.619484, 42.761471, 38.833778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882214, 42.455627, 38.848221> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996098, 42.570389, 38.482353>,  <35.064426, 42.639244, 38.262833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.996098, 42.570389, 38.482353>,  <34.882214, 42.455627, 38.848221>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996098, 42.570389, 38.482353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089509, -0.942038, -0.323345,
		-0.954425, 0.173932, -0.242529,
		0.284711, 0.286900, -0.914674,
		35.081512, 42.656460, 38.207951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435349, 42.119240, 38.312954>,  <34.882214, 42.455627, 38.848221>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435349, 42.119240, 38.312954> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776417, 42.205132, 38.122444>,  <34.981060, 42.256664, 38.008137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.776417, 42.205132, 38.122444>,  <34.435349, 42.119240, 38.312954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776417, 42.205132, 38.122444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039995, -0.935788, -0.350288,
		-0.520910, 0.279633, -0.806509,
		0.852674, 0.214725, -0.476277,
		35.032219, 42.269550, 37.979561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351730, 41.654064, 37.778488>,  <34.435349, 42.119240, 38.312954>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351730, 41.654064, 37.778488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725754, 41.781292, 37.715889>,  <34.950169, 41.857628, 37.678329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.725754, 41.781292, 37.715889>,  <34.351730, 41.654064, 37.778488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725754, 41.781292, 37.715889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200569, -0.838734, -0.506259,
		-0.292282, 0.441996, -0.848063,
		0.935063, 0.318066, -0.156496,
		35.006271, 41.876713, 37.668941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437229, 41.737648, 37.089729>,  <34.351730, 41.654064, 37.778488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437229, 41.737648, 37.089729> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807888, 41.692623, 37.233200>,  <35.030285, 41.665607, 37.319283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.807888, 41.692623, 37.233200>,  <34.437229, 41.737648, 37.089729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807888, 41.692623, 37.233200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172609, -0.720202, -0.671949,
		0.333959, 0.684572, -0.647945,
		0.926648, -0.112562, 0.358682,
		35.085884, 41.658855, 37.340805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768669, 41.734379, 36.521484>,  <34.437229, 41.737648, 37.089729>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768669, 41.734379, 36.521484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007710, 41.570873, 36.797394>,  <35.151134, 41.472771, 36.962940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.007710, 41.570873, 36.797394>,  <34.768669, 41.734379, 36.521484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007710, 41.570873, 36.797394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316768, -0.669938, -0.671447,
		0.736566, 0.619756, -0.270874,
		0.597602, -0.408761, 0.689772,
		35.186989, 41.448246, 37.004326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352165, 41.587322, 36.142769>,  <34.768669, 41.734379, 36.521484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352165, 41.587322, 36.142769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368347, 41.338329, 36.455406>,  <35.378056, 41.188934, 36.642986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368347, 41.338329, 36.455406>,  <35.352165, 41.587322, 36.142769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368347, 41.338329, 36.455406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292260, -0.740648, -0.604999,
		0.955483, 0.252903, 0.151963,
		0.040455, -0.622479, 0.781590,
		35.380482, 41.151585, 36.689884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903439, 41.172298, 35.970833>,  <35.352165, 41.587322, 36.142769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903439, 41.172298, 35.970833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700264, 40.965885, 36.246719>,  <35.578358, 40.842037, 36.412251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.700264, 40.965885, 36.246719>,  <35.903439, 41.172298, 35.970833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700264, 40.965885, 36.246719> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247216, -0.854341, -0.457149,
		0.825158, -0.061693, 0.561523,
		-0.507935, -0.516038, 0.689715,
		35.547882, 40.811073, 36.453632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.495224, 27.740932, 38.985058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201164, 27.477766, 38.919701>,  <43.024727, 27.319866, 38.880486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.201164, 27.477766, 38.919701>,  <43.495224, 27.740932, 38.985058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.201164, 27.477766, 38.919701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215502, 0.455330, -0.863848,
		0.642736, -0.599849, -0.476520,
		-0.735152, -0.657917, -0.163389,
		42.980618, 27.280392, 38.870686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.639393, 27.416746, 38.309265>,  <43.495224, 27.740932, 38.985058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.639393, 27.416746, 38.309265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242966, 27.386379, 38.353138>,  <43.005112, 27.368160, 38.379463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.242966, 27.386379, 38.353138>,  <43.639393, 27.416746, 38.309265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.242966, 27.386379, 38.353138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132669, 0.475523, -0.869642,
		0.013862, -0.876422, -0.481345,
		-0.991064, -0.075914, 0.109683,
		42.945648, 27.363605, 38.386044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.384892, 27.259438, 37.673965>,  <43.639393, 27.416746, 38.309265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.384892, 27.259438, 37.673965> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.054573, 27.387194, 37.859886>,  <42.856380, 27.463848, 37.971439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.054573, 27.387194, 37.859886>,  <43.384892, 27.259438, 37.673965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054573, 27.387194, 37.859886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319826, 0.413603, -0.852434,
		-0.464505, -0.852596, -0.239404,
		-0.825800, 0.319392, 0.464803,
		42.806831, 27.483011, 37.999329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.933563, 27.275278, 37.223705>,  <43.384892, 27.259438, 37.673965>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.933563, 27.275278, 37.223705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.751175, 27.509277, 37.491993>,  <42.641743, 27.649677, 37.652966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.751175, 27.509277, 37.491993>,  <42.933563, 27.275278, 37.223705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751175, 27.509277, 37.491993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323747, 0.592968, -0.737277,
		-0.829022, -0.553320, -0.080984,
		-0.455971, 0.585001, 0.670720,
		42.614384, 27.684778, 37.693211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.266808, 27.447191, 36.948486>,  <42.933563, 27.275278, 37.223705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.266808, 27.447191, 36.948486> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.344635, 27.726091, 37.224453>,  <42.391331, 27.893431, 37.390034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.344635, 27.726091, 37.224453>,  <42.266808, 27.447191, 36.948486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.344635, 27.726091, 37.224453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283704, 0.713298, -0.640872,
		-0.938965, -0.071041, 0.336596,
		0.194565, 0.697250, 0.689917,
		42.403004, 27.935266, 37.431427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730125, 27.944620, 36.824593>,  <42.266808, 27.447191, 36.948486>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730125, 27.944620, 36.824593> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012291, 28.139444, 37.030571>,  <42.181591, 28.256338, 37.154160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.012291, 28.139444, 37.030571>,  <41.730125, 27.944620, 36.824593>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012291, 28.139444, 37.030571> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343054, 0.870351, -0.353275,
		-0.620251, 0.072549, 0.781041,
		0.705409, 0.487058, 0.514948,
		42.223915, 28.285563, 37.185055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.426132, 28.437092, 37.133801>,  <41.730125, 27.944620, 36.824593>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.426132, 28.437092, 37.133801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796505, 28.587107, 37.151688>,  <42.018726, 28.677116, 37.162422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.796505, 28.587107, 37.151688>,  <41.426132, 28.437092, 37.133801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796505, 28.587107, 37.151688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320286, 0.842420, -0.433297,
		-0.200178, 0.386878, 0.900141,
		0.925930, 0.375039, 0.044722,
		42.074284, 28.699619, 37.165104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.486965, 29.147827, 37.247990>,  <41.426132, 28.437092, 37.133801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.486965, 29.147827, 37.247990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860500, 29.103010, 37.112114>,  <42.084621, 29.076120, 37.030586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.860500, 29.103010, 37.112114>,  <41.486965, 29.147827, 37.247990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.860500, 29.103010, 37.112114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103888, 0.823782, -0.557307,
		0.342274, 0.555725, 0.757640,
		0.933839, -0.112042, -0.339692,
		42.140652, 29.069397, 37.010208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891956, 29.842196, 37.253368>,  <41.486965, 29.147827, 37.247990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891956, 29.842196, 37.253368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074654, 29.612686, 36.981438>,  <42.184273, 29.474981, 36.818279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074654, 29.612686, 36.981438>,  <41.891956, 29.842196, 37.253368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074654, 29.612686, 36.981438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093882, 0.791021, -0.604542,
		0.884629, 0.212299, 0.415164,
		0.456747, -0.573772, -0.679829,
		42.211678, 29.440554, 36.777489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560219, 30.059078, 37.152393>,  <41.891956, 29.842196, 37.253368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560219, 30.059078, 37.152393> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.403538, 29.889439, 36.825783>,  <42.309528, 29.787655, 36.629818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.403538, 29.889439, 36.825783>,  <42.560219, 30.059078, 37.152393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403538, 29.889439, 36.825783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230847, 0.813754, -0.533399,
		0.890664, -0.397424, -0.220843,
		-0.391698, -0.424098, -0.816525,
		42.286030, 29.762209, 36.580826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.987701, 30.315718, 36.733158>,  <42.560219, 30.059078, 37.152393>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.987701, 30.315718, 36.733158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.688877, 30.181667, 36.503517>,  <42.509583, 30.101238, 36.365730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.688877, 30.181667, 36.503517>,  <42.987701, 30.315718, 36.733158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688877, 30.181667, 36.503517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224895, 0.685294, -0.692672,
		0.625561, -0.646579, -0.436587,
		-0.747058, -0.335122, -0.574105,
		42.464760, 30.081131, 36.331284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258011, 30.261572, 36.120098>,  <42.987701, 30.315718, 36.733158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258011, 30.261572, 36.120098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866398, 30.278595, 36.040424>,  <42.631428, 30.288809, 35.992619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.866398, 30.278595, 36.040424>,  <43.258011, 30.261572, 36.120098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866398, 30.278595, 36.040424> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161405, 0.758596, -0.631253,
		0.124238, -0.650170, -0.749562,
		-0.979037, 0.042557, -0.199187,
		42.572685, 30.291363, 35.980667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.322323, 30.360529, 35.402744>,  <43.258011, 30.261572, 36.120098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.322323, 30.360529, 35.402744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943539, 30.457628, 35.486973>,  <42.716267, 30.515888, 35.537510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.943539, 30.457628, 35.486973>,  <43.322323, 30.360529, 35.402744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943539, 30.457628, 35.486973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008620, 0.635850, -0.771764,
		-0.321239, -0.732644, -0.600032,
		-0.946959, 0.242748, 0.210575,
		42.659451, 30.530453, 35.550144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046417, 30.116936, 34.887894>,  <43.322323, 30.360529, 35.402744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046417, 30.116936, 34.887894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779148, 30.382935, 35.021355>,  <42.618786, 30.542534, 35.101429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.779148, 30.382935, 35.021355>,  <43.046417, 30.116936, 34.887894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.779148, 30.382935, 35.021355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085753, 0.514298, -0.853314,
		-0.739045, -0.541552, -0.400667,
		-0.668176, 0.664995, 0.333649,
		42.578693, 30.582434, 35.121449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535980, 30.195808, 34.399261>,  <43.046417, 30.116936, 34.887894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535980, 30.195808, 34.399261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504021, 30.530584, 34.615833>,  <42.484844, 30.731449, 34.745777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.504021, 30.530584, 34.615833>,  <42.535980, 30.195808, 34.399261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.504021, 30.530584, 34.615833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322807, 0.535625, -0.780322,
		-0.943086, 0.112429, -0.312967,
		-0.079902, 0.836938, 0.541433,
		42.480049, 30.781666, 34.778263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019413, 30.567181, 34.076336>,  <42.535980, 30.195808, 34.399261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019413, 30.567181, 34.076336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.252350, 30.824867, 34.274673>,  <42.392113, 30.979479, 34.393677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.252350, 30.824867, 34.274673>,  <42.019413, 30.567181, 34.076336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252350, 30.824867, 34.274673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043728, 0.584227, -0.810411,
		-0.811765, 0.493621, 0.312051,
		0.582345, 0.644218, 0.495840,
		42.427052, 31.018133, 34.423424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738308, 31.290045, 33.943890>,  <42.019413, 30.567181, 34.076336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738308, 31.290045, 33.943890> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119301, 31.331402, 34.058487>,  <42.347897, 31.356216, 34.127247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.119301, 31.331402, 34.058487>,  <41.738308, 31.290045, 33.943890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.119301, 31.331402, 34.058487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195440, 0.513976, -0.835244,
		-0.233609, 0.851551, 0.469348,
		0.952486, 0.103391, 0.286497,
		42.405048, 31.362419, 34.144436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823090, 31.918926, 33.835041>,  <41.738308, 31.290045, 33.943890>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823090, 31.918926, 33.835041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.194862, 31.771599, 33.844013>,  <42.417927, 31.683203, 33.849396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.194862, 31.771599, 33.844013>,  <41.823090, 31.918926, 33.835041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194862, 31.771599, 33.844013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216069, 0.493947, -0.842218,
		0.299125, 0.787628, 0.538671,
		0.929429, -0.368318, 0.022430,
		42.473690, 31.661104, 33.850742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265293, 32.429813, 33.454544>,  <41.823090, 31.918926, 33.835041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265293, 32.429813, 33.454544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.526081, 32.130692, 33.504711>,  <42.682552, 31.951220, 33.534813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.526081, 32.130692, 33.504711>,  <42.265293, 32.429813, 33.454544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526081, 32.130692, 33.504711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466945, 0.265642, -0.843443,
		0.597412, 0.608461, 0.522373,
		0.651967, -0.747803, 0.125420,
		42.721672, 31.906351, 33.542336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.966324, 32.717831, 33.466595>,  <42.265293, 32.429813, 33.454544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.966324, 32.717831, 33.466595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.968918, 32.336304, 33.346470>,  <42.970474, 32.107388, 33.274395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.968918, 32.336304, 33.346470>,  <42.966324, 32.717831, 33.466595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.968918, 32.336304, 33.346470> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536260, 0.256799, -0.804040,
		0.844028, -0.155829, 0.513161,
		0.006486, -0.953820, -0.300310,
		42.970863, 32.050159, 33.256378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591888, 32.630657, 33.174316>,  <42.966324, 32.717831, 33.466595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591888, 32.630657, 33.174316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361153, 32.343189, 33.019001>,  <43.222713, 32.170708, 32.925812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.361153, 32.343189, 33.019001>,  <43.591888, 32.630657, 33.174316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.361153, 32.343189, 33.019001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279439, 0.273057, -0.920518,
		0.767578, -0.639491, 0.043317,
		-0.576835, -0.718673, -0.388292,
		43.188103, 32.127586, 32.902515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.196075, 32.747208, 33.592243>,  <43.591888, 32.630657, 33.174316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.196075, 32.747208, 33.592243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.567497, 32.871883, 33.672867>,  <44.790352, 32.946690, 33.721241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.567497, 32.871883, 33.672867>,  <44.196075, 32.747208, 33.592243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.567497, 32.871883, 33.672867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035473, -0.466020, 0.884063,
		0.369489, -0.828054, -0.421670,
		0.928558, 0.311693, 0.201562,
		44.846066, 32.965393, 33.733334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614044, 32.136543, 33.823196>,  <44.196075, 32.747208, 33.592243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614044, 32.136543, 33.823196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769299, 32.481735, 33.952572>,  <44.862450, 32.688850, 34.030197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.769299, 32.481735, 33.952572>,  <44.614044, 32.136543, 33.823196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.769299, 32.481735, 33.952572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110157, -0.391878, 0.913399,
		0.914995, -0.318894, -0.247165,
		0.388136, 0.862982, 0.323438,
		44.885738, 32.740631, 34.049603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.233192, 31.898771, 34.239666>,  <44.614044, 32.136543, 33.823196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.233192, 31.898771, 34.239666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151882, 32.263783, 34.381634>,  <45.103096, 32.482788, 34.466816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.151882, 32.263783, 34.381634>,  <45.233192, 31.898771, 34.239666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.151882, 32.263783, 34.381634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063361, -0.373989, 0.925266,
		0.977070, 0.165592, 0.133841,
		-0.203272, 0.912530, 0.354921,
		45.090900, 32.537540, 34.488110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.667942, 31.994696, 34.941387>,  <45.233192, 31.898771, 34.239666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.667942, 31.994696, 34.941387> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361179, 32.250977, 34.956131>,  <45.177124, 32.404743, 34.964977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.361179, 32.250977, 34.956131>,  <45.667942, 31.994696, 34.941387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361179, 32.250977, 34.956131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212792, -0.308048, 0.927268,
		0.605456, 0.703283, 0.372579,
		-0.766905, 0.640702, 0.036857,
		45.131107, 32.443188, 34.967190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.726654, 32.407238, 35.489719>,  <45.667942, 31.994696, 34.941387>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.726654, 32.407238, 35.489719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.337955, 32.435772, 35.399731>,  <45.104736, 32.452892, 35.345737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.337955, 32.435772, 35.399731>,  <45.726654, 32.407238, 35.489719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337955, 32.435772, 35.399731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234549, -0.185924, 0.954159,
		0.026234, 0.979971, 0.197403,
		-0.971750, 0.071332, -0.224974,
		45.046429, 32.457172, 35.332237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.602020, 32.724789, 36.111462>,  <45.726654, 32.407238, 35.489719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.602020, 32.724789, 36.111462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.255497, 32.590397, 35.963608>,  <45.047585, 32.509762, 35.874893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.255497, 32.590397, 35.963608>,  <45.602020, 32.724789, 36.111462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.255497, 32.590397, 35.963608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200940, -0.443085, 0.873670,
		-0.457316, 0.831140, 0.316336,
		-0.866305, -0.335979, -0.369639,
		44.995605, 32.489605, 35.852715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.121277, 32.774879, 36.631908>,  <45.602020, 32.724789, 36.111462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.121277, 32.774879, 36.631908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.969162, 32.512909, 36.370697>,  <44.877895, 32.355724, 36.213970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.969162, 32.512909, 36.370697>,  <45.121277, 32.774879, 36.631908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.969162, 32.512909, 36.370697> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164665, -0.646854, 0.744625,
		-0.910093, 0.390701, 0.138145,
		-0.380285, -0.654930, -0.653031,
		44.855076, 32.316429, 36.174789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.550945, 32.493954, 37.042519>,  <45.121277, 32.774879, 36.631908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.550945, 32.493954, 37.042519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601421, 32.244942, 36.733574>,  <44.631706, 32.095535, 36.548206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.601421, 32.244942, 36.733574>,  <44.550945, 32.493954, 37.042519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.601421, 32.244942, 36.733574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291236, -0.767522, 0.571044,
		-0.948292, 0.152879, -0.278154,
		0.126189, -0.622526, -0.772359,
		44.639278, 32.058186, 36.501865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.817734, 32.179119, 36.957157>,  <44.550945, 32.493954, 37.042519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.817734, 32.179119, 36.957157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.112816, 31.951752, 36.811455>,  <44.289867, 31.815331, 36.724033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.112816, 31.951752, 36.811455>,  <43.817734, 32.179119, 36.957157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.112816, 31.951752, 36.811455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294227, -0.756303, 0.584326,
		-0.607631, -0.323889, -0.725176,
		0.737710, -0.568421, -0.364256,
		44.334129, 31.781225, 36.702179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502304, 31.403330, 36.895782>,  <43.817734, 32.179119, 36.957157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502304, 31.403330, 36.895782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901360, 31.384977, 36.875347>,  <44.140793, 31.373966, 36.863087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901360, 31.384977, 36.875347>,  <43.502304, 31.403330, 36.895782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901360, 31.384977, 36.875347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013373, -0.859587, 0.510815,
		-0.067355, -0.508926, -0.858171,
		0.997639, -0.045882, -0.051092,
		44.200653, 31.371212, 36.860020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.673386, 30.822132, 36.697029>,  <43.502304, 31.403330, 36.895782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.673386, 30.822132, 36.697029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.015896, 30.923563, 36.877022>,  <44.221401, 30.984421, 36.985020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.015896, 30.923563, 36.877022>,  <43.673386, 30.822132, 36.697029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.015896, 30.923563, 36.877022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031997, -0.843481, 0.536204,
		0.515523, -0.473538, -0.714141,
		0.856278, 0.253575, 0.449986,
		44.272778, 30.999636, 37.012016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045895, 30.088312, 36.715145>,  <43.673386, 30.822132, 36.697029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045895, 30.088312, 36.715145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219608, 30.348820, 36.964062>,  <44.323837, 30.505125, 37.113411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.219608, 30.348820, 36.964062>,  <44.045895, 30.088312, 36.715145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219608, 30.348820, 36.964062> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117683, -0.725938, 0.677617,
		0.893054, -0.221048, -0.391909,
		0.434287, 0.651269, 0.622288,
		44.349895, 30.544201, 37.150749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.610973, 29.788914, 37.070152>,  <44.045895, 30.088312, 36.715145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.610973, 29.788914, 37.070152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.530830, 30.103138, 37.304333>,  <44.482746, 30.291672, 37.444843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.530830, 30.103138, 37.304333>,  <44.610973, 29.788914, 37.070152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530830, 30.103138, 37.304333> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039551, -0.603568, 0.796330,
		0.978925, 0.136393, 0.151998,
		-0.200355, 0.785559, 0.585454,
		44.470722, 30.338806, 37.479969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.039192, 29.707949, 37.678059>,  <44.610973, 29.788914, 37.070152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.039192, 29.707949, 37.678059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798256, 29.991308, 37.825222>,  <44.653694, 30.161324, 37.913521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.798256, 29.991308, 37.825222>,  <45.039192, 29.707949, 37.678059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.798256, 29.991308, 37.825222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334565, -0.642512, 0.689380,
		0.724743, 0.292151, 0.624016,
		-0.602341, 0.708397, 0.367912,
		44.617554, 30.203827, 37.935596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.287754, 29.838896, 38.285416>,  <45.039192, 29.707949, 37.678059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.287754, 29.838896, 38.285416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.904743, 29.954000, 38.292675>,  <44.674934, 30.023064, 38.297031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.904743, 29.954000, 38.292675>,  <45.287754, 29.838896, 38.285416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904743, 29.954000, 38.292675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125513, -0.472654, 0.872264,
		0.259580, 0.832942, 0.488699,
		-0.957530, 0.287760, 0.018147,
		44.617485, 30.040329, 38.298119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160286, 29.945473, 38.991589>,  <45.287754, 29.838896, 38.285416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160286, 29.945473, 38.991589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792629, 29.912321, 38.837543>,  <44.572037, 29.892429, 38.745117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.792629, 29.912321, 38.837543>,  <45.160286, 29.945473, 38.991589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.792629, 29.912321, 38.837543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328591, -0.377903, 0.865573,
		-0.217274, 0.922128, 0.320112,
		-0.919141, -0.082881, -0.385112,
		44.516888, 29.887457, 38.722012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830315, 30.273676, 39.557907>,  <45.160286, 29.945473, 38.991589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830315, 30.273676, 39.557907> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606209, 30.045666, 39.317516>,  <44.471745, 29.908859, 39.173283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.606209, 30.045666, 39.317516>,  <44.830315, 30.273676, 39.557907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606209, 30.045666, 39.317516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410051, -0.439533, 0.799167,
		-0.719696, 0.694176, 0.012514,
		-0.560263, -0.570027, -0.600978,
		44.438129, 29.874659, 39.137222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.085392, 30.216909, 39.828423>,  <44.830315, 30.273676, 39.557907>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.085392, 30.216909, 39.828423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.102474, 29.887573, 39.602047>,  <44.112724, 29.689972, 39.466221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.102474, 29.887573, 39.602047>,  <44.085392, 30.216909, 39.828423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.102474, 29.887573, 39.602047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431393, -0.526126, 0.732865,
		-0.901153, 0.212849, -0.377649,
		0.042701, -0.823338, -0.565942,
		44.115284, 29.640572, 39.432266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.471825, 29.826128, 40.026470>,  <44.085392, 30.216909, 39.828423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.471825, 29.826128, 40.026470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.713310, 29.550083, 39.866833>,  <43.858200, 29.384457, 39.771049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.713310, 29.550083, 39.866833>,  <43.471825, 29.826128, 40.026470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.713310, 29.550083, 39.866833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234309, -0.632109, 0.738605,
		-0.761991, -0.352393, -0.543312,
		0.603712, -0.690114, -0.399093,
		43.894424, 29.343050, 39.747105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.137451, 29.166945, 40.126068>,  <43.471825, 29.826128, 40.026470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.137451, 29.166945, 40.126068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518253, 29.060593, 40.065414>,  <43.746735, 28.996780, 40.029022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.518253, 29.060593, 40.065414>,  <43.137451, 29.166945, 40.126068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518253, 29.060593, 40.065414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072405, -0.676965, 0.732445,
		-0.297392, -0.686314, -0.663725,
		0.952006, -0.265880, -0.151632,
		43.803856, 28.980829, 40.019924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.147121, 28.459791, 40.051701>,  <43.137451, 29.166945, 40.126068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.147121, 28.459791, 40.051701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510178, 28.575615, 40.173256>,  <43.728012, 28.645109, 40.246189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.510178, 28.575615, 40.173256>,  <43.147121, 28.459791, 40.051701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.510178, 28.575615, 40.173256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045768, -0.787925, 0.614068,
		0.417253, -0.543443, -0.728402,
		0.907637, 0.289559, 0.303892,
		43.782471, 28.662483, 40.264423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.550117, 37.763313, 32.817387> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463497, 37.610760, 33.176865>,  <38.411526, 37.519226, 33.392551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463497, 37.610760, 33.176865>,  <38.550117, 37.763313, 32.817387>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463497, 37.610760, 33.176865> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193973, -0.918992, -0.343260,
		0.956807, 0.099988, 0.272988,
		-0.216552, -0.381386, 0.898693,
		38.398533, 37.496346, 33.446472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106426, 37.329048, 32.895004>,  <38.550117, 37.763313, 32.817387>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106426, 37.329048, 32.895004> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811039, 37.215199, 33.139511>,  <38.633804, 37.146889, 33.286217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.811039, 37.215199, 33.139511>,  <39.106426, 37.329048, 32.895004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811039, 37.215199, 33.139511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013477, -0.912593, -0.408647,
		0.674149, -0.293537, 0.677761,
		-0.738473, -0.284624, 0.611268,
		38.589497, 37.129810, 33.322891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357609, 36.686207, 33.078896>,  <39.106426, 37.329048, 32.895004>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357609, 36.686207, 33.078896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971222, 36.671875, 33.181362>,  <38.739391, 36.663277, 33.242844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.971222, 36.671875, 33.181362>,  <39.357609, 36.686207, 33.078896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971222, 36.671875, 33.181362> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071825, -0.914263, -0.398703,
		0.248488, -0.403534, 0.880576,
		-0.965969, -0.035826, 0.256167,
		38.681431, 36.661129, 33.258213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231514, 36.068729, 33.573277>,  <39.357609, 36.686207, 33.078896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231514, 36.068729, 33.573277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896667, 36.176826, 33.383030>,  <38.695759, 36.241684, 33.268883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896667, 36.176826, 33.383030>,  <39.231514, 36.068729, 33.573277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.896667, 36.176826, 33.383030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155171, -0.951048, -0.267263,
		-0.524560, -0.149927, 0.838068,
		-0.837113, 0.270239, -0.475618,
		38.645535, 36.257896, 33.240345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859188, 35.468929, 33.737293>,  <39.231514, 36.068729, 33.573277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859188, 35.468929, 33.737293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667641, 35.671509, 33.450462>,  <38.552711, 35.793056, 33.278366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667641, 35.671509, 33.450462>,  <38.859188, 35.468929, 33.737293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667641, 35.671509, 33.450462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345968, -0.859585, -0.376059,
		-0.806841, 0.068002, 0.586842,
		-0.478868, 0.506448, -0.717074,
		38.523979, 35.823444, 33.235340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168816, 35.202599, 33.763691>,  <38.859188, 35.468929, 33.737293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168816, 35.202599, 33.763691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222649, 35.357727, 33.398949>,  <38.254948, 35.450806, 33.180103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222649, 35.357727, 33.398949>,  <38.168816, 35.202599, 33.763691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.222649, 35.357727, 33.398949> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194160, -0.892068, -0.408066,
		-0.971694, 0.231964, -0.044756,
		0.134582, 0.387825, -0.911855,
		38.263023, 35.474075, 33.125393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639576, 35.016186, 33.427052>,  <38.168816, 35.202599, 33.763691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639576, 35.016186, 33.427052> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930737, 35.086025, 33.161819>,  <38.105431, 35.127930, 33.002682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930737, 35.086025, 33.161819>,  <37.639576, 35.016186, 33.427052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930737, 35.086025, 33.161819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274186, -0.812241, -0.514866,
		-0.628478, 0.556578, -0.543357,
		0.727900, 0.174601, -0.663081,
		38.149105, 35.138405, 32.962894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358646, 34.698677, 32.754147>,  <37.639576, 35.016186, 33.427052>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358646, 34.698677, 32.754147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750618, 34.746651, 32.690449>,  <37.985802, 34.775433, 32.652229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750618, 34.746651, 32.690449>,  <37.358646, 34.698677, 32.754147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750618, 34.746651, 32.690449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012796, -0.834993, -0.550111,
		-0.198943, 0.537031, -0.819768,
		0.979928, 0.119931, -0.159244,
		38.044598, 34.782631, 32.642677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413078, 34.658257, 31.996922>,  <37.358646, 34.698677, 32.754147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413078, 34.658257, 31.996922> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749874, 34.559574, 32.188835>,  <37.951950, 34.500366, 32.303982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.749874, 34.559574, 32.188835>,  <37.413078, 34.658257, 31.996922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749874, 34.559574, 32.188835> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027076, -0.868872, -0.494296,
		0.538817, 0.429182, -0.724899,
		0.841987, -0.246707, 0.479784,
		38.002472, 34.485561, 32.332771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711021, 34.198246, 31.492105>,  <37.413078, 34.658257, 31.996922>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711021, 34.198246, 31.492105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908932, 34.122646, 31.831392>,  <38.027679, 34.077286, 32.034966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908932, 34.122646, 31.831392>,  <37.711021, 34.198246, 31.492105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.908932, 34.122646, 31.831392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245901, -0.905722, -0.345253,
		0.833503, 0.379401, -0.401655,
		0.494777, -0.189003, 0.848218,
		38.057365, 34.065945, 32.085857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448704, 33.809216, 31.296776>,  <37.711021, 34.198246, 31.492105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448704, 33.809216, 31.296776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400581, 33.700531, 31.678707>,  <38.371708, 33.635319, 31.907866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.400581, 33.700531, 31.678707>,  <38.448704, 33.809216, 31.296776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.400581, 33.700531, 31.678707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121851, -0.958584, -0.257426,
		0.985231, 0.085378, 0.148428,
		-0.120302, -0.271710, 0.954830,
		38.364491, 33.619019, 31.965157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976658, 33.221966, 31.466137>,  <38.448704, 33.809216, 31.296776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976658, 33.221966, 31.466137> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672710, 33.210541, 31.725918>,  <38.490341, 33.203686, 31.881786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672710, 33.210541, 31.725918>,  <38.976658, 33.221966, 31.466137>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672710, 33.210541, 31.725918> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030094, -0.999509, -0.008751,
		0.649384, 0.012895, 0.760351,
		-0.759865, -0.028565, 0.649453,
		38.444752, 33.201973, 31.920753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293465, 32.902878, 32.148216>,  <38.976658, 33.221966, 31.466137>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293465, 32.902878, 32.148216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900742, 32.877518, 32.076633>,  <38.665108, 32.862301, 32.033684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900742, 32.877518, 32.076633>,  <39.293465, 32.902878, 32.148216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900742, 32.877518, 32.076633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056034, -0.997373, 0.045903,
		-0.181399, 0.035040, 0.982785,
		-0.981812, -0.063396, -0.178959,
		38.606197, 32.858498, 32.022945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850918, 32.612423, 32.635418>,  <39.293465, 32.902878, 32.148216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850918, 32.612423, 32.635418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709770, 32.548550, 32.266640>,  <38.625080, 32.510227, 32.045372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709770, 32.548550, 32.266640>,  <38.850918, 32.612423, 32.635418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709770, 32.548550, 32.266640> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224066, -0.942240, 0.248956,
		-0.908448, 0.294425, 0.296707,
		-0.352868, -0.159681, -0.921947,
		38.603909, 32.500645, 31.990055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234238, 32.248356, 33.075546>,  <38.850918, 32.612423, 32.635418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234238, 32.248356, 33.075546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502403, 32.199852, 33.368351>,  <39.663303, 32.170750, 33.544033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502403, 32.199852, 33.368351>,  <39.234238, 32.248356, 33.075546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502403, 32.199852, 33.368351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420500, 0.750746, 0.509470,
		-0.611335, -0.649366, 0.452319,
		0.670410, -0.121257, 0.732016,
		39.703526, 32.163475, 33.587955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869442, 32.294334, 33.789410>,  <39.234238, 32.248356, 33.075546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869442, 32.294334, 33.789410> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249516, 32.387756, 33.871979>,  <39.477558, 32.443810, 33.921520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249516, 32.387756, 33.871979>,  <38.869442, 32.294334, 33.789410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249516, 32.387756, 33.871979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310909, 0.757400, 0.574178,
		-0.022246, -0.609752, 0.792280,
		0.950179, 0.233554, 0.206426,
		39.534569, 32.457821, 33.933907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954189, 32.203087, 34.558113>,  <38.869442, 32.294334, 33.789410>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954189, 32.203087, 34.558113> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248962, 32.452736, 34.454262>,  <39.425827, 32.602524, 34.391953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.248962, 32.452736, 34.454262>,  <38.954189, 32.203087, 34.558113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248962, 32.452736, 34.454262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217984, 0.582978, 0.782700,
		0.639856, -0.520202, 0.565663,
		0.736931, 0.624120, -0.259626,
		39.470043, 32.639973, 34.376373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.335728, 32.424068, 35.170692>,  <38.954189, 32.203087, 34.558113>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.335728, 32.424068, 35.170692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456429, 32.702358, 34.909950>,  <39.528847, 32.869331, 34.753506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456429, 32.702358, 34.909950>,  <39.335728, 32.424068, 35.170692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456429, 32.702358, 34.909950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060959, 0.696410, 0.715051,
		0.951436, -0.176030, 0.252552,
		0.301750, 0.695721, -0.651859,
		39.546955, 32.911076, 34.714394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799583, 32.842808, 35.571735>,  <39.335728, 32.424068, 35.170692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799583, 32.842808, 35.571735> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709103, 33.088890, 35.269650>,  <39.654812, 33.236542, 35.088398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709103, 33.088890, 35.269650>,  <39.799583, 32.842808, 35.571735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709103, 33.088890, 35.269650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274149, 0.784180, 0.556690,
		0.934705, -0.081115, -0.346045,
		-0.226206, 0.615209, -0.755214,
		39.641239, 33.273453, 35.043087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.237877, 33.366814, 35.633121>,  <39.799583, 32.842808, 35.571735>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.237877, 33.366814, 35.633121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943081, 33.513065, 35.405731>,  <39.766205, 33.600815, 35.269299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943081, 33.513065, 35.405731>,  <40.237877, 33.366814, 35.633121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.943081, 33.513065, 35.405731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085576, 0.884766, 0.458110,
		0.670464, 0.288975, -0.683353,
		-0.736991, 0.365625, -0.568474,
		39.721985, 33.622753, 35.235188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552254, 33.901161, 35.260830>,  <40.237877, 33.366814, 35.633121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552254, 33.901161, 35.260830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158585, 33.969131, 35.240723>,  <39.922382, 34.009914, 35.228661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158585, 33.969131, 35.240723>,  <40.552254, 33.901161, 35.260830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158585, 33.969131, 35.240723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132363, 0.893538, 0.429034,
		0.117815, 0.415591, -0.901889,
		-0.984175, 0.169923, -0.050264,
		39.863331, 34.020107, 35.225643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.486061, 34.629250, 35.194115>,  <40.552254, 33.901161, 35.260830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.486061, 34.629250, 35.194115> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113670, 34.530148, 35.301376>,  <39.890236, 34.470688, 35.365734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113670, 34.530148, 35.301376>,  <40.486061, 34.629250, 35.194115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.113670, 34.530148, 35.301376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031948, 0.786966, 0.616169,
		-0.363686, 0.565070, -0.740559,
		-0.930974, -0.247751, 0.268156,
		39.834377, 34.455822, 35.381824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004383, 35.189491, 35.109764>,  <40.486061, 34.629250, 35.194115>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004383, 35.189491, 35.109764> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828415, 34.956902, 35.383511>,  <39.722832, 34.817348, 35.547760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828415, 34.956902, 35.383511>,  <40.004383, 35.189491, 35.109764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.828415, 34.956902, 35.383511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217391, 0.808358, 0.547081,
		-0.871326, 0.091898, -0.482023,
		-0.439923, -0.581474, 0.684366,
		39.696438, 34.782459, 35.588821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.249882, 35.464233, 35.311146>,  <40.004383, 35.189491, 35.109764>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.249882, 35.464233, 35.311146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351704, 35.220554, 35.611568>,  <39.412796, 35.074348, 35.791821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351704, 35.220554, 35.611568>,  <39.249882, 35.464233, 35.311146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351704, 35.220554, 35.611568> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228045, 0.716923, 0.658799,
		-0.939786, -0.338975, 0.043573,
		0.254555, -0.609194, 0.751056,
		39.428070, 35.037796, 35.836884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761414, 35.623306, 35.764923>,  <39.249882, 35.464233, 35.311146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.761414, 35.623306, 35.764923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037758, 35.440857, 35.989304>,  <39.203564, 35.331387, 36.123932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.037758, 35.440857, 35.989304>,  <38.761414, 35.623306, 35.764923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037758, 35.440857, 35.989304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112815, 0.698358, 0.706802,
		-0.714134, -0.551583, 0.431009,
		0.690858, -0.456127, 0.560948,
		39.245014, 35.304020, 36.157589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499588, 35.416359, 36.500053>,  <38.761414, 35.623306, 35.764923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499588, 35.416359, 36.500053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897186, 35.419010, 36.543736>,  <39.135746, 35.420601, 36.569942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897186, 35.419010, 36.543736>,  <38.499588, 35.416359, 36.500053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.897186, 35.419010, 36.543736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091256, 0.600780, 0.794189,
		-0.060344, -0.799387, 0.597779,
		0.993997, 0.006626, 0.109202,
		39.195385, 35.420998, 36.576496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.562069, 35.305450, 37.206825>,  <38.499588, 35.416359, 36.500053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.562069, 35.305450, 37.206825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893543, 35.473755, 37.059181>,  <39.092426, 35.574738, 36.970592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893543, 35.473755, 37.059181>,  <38.562069, 35.305450, 37.206825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893543, 35.473755, 37.059181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078336, 0.740155, 0.667857,
		0.554212, -0.524526, 0.646314,
		0.828681, 0.420764, -0.369114,
		39.142147, 35.599983, 36.948448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918549, 35.594898, 37.891937>,  <38.562069, 35.305450, 37.206825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918549, 35.594898, 37.891937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044521, 35.777355, 37.559010>,  <39.120106, 35.886829, 37.359253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044521, 35.777355, 37.559010>,  <38.918549, 35.594898, 37.891937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044521, 35.777355, 37.559010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047386, 0.868294, 0.493782,
		0.947932, -0.194946, 0.251835,
		0.314927, 0.456139, -0.832321,
		39.139000, 35.914196, 37.309315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076973, 35.182678, 38.529697>,  <38.918549, 35.594898, 37.891937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076973, 35.182678, 38.529697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725471, 35.169876, 38.720177>,  <38.514572, 35.162193, 38.834465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.725471, 35.169876, 38.720177>,  <39.076973, 35.182678, 38.529697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725471, 35.169876, 38.720177> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179756, -0.902084, -0.392341,
		0.442132, -0.430371, 0.786956,
		-0.878753, -0.032006, 0.476202,
		38.461845, 35.160275, 38.863037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982128, 34.537155, 38.900055>,  <39.076973, 35.182678, 38.529697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982128, 34.537155, 38.900055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606750, 34.657219, 38.831673>,  <38.381523, 34.729256, 38.790642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.606750, 34.657219, 38.831673>,  <38.982128, 34.537155, 38.900055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606750, 34.657219, 38.831673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235458, -0.917967, -0.319210,
		-0.252745, -0.259309, 0.932137,
		-0.938445, 0.300158, -0.170956,
		38.325218, 34.747265, 38.780384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616890, 33.945572, 38.972759>,  <38.982128, 34.537155, 38.900055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616890, 33.945572, 38.972759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381775, 34.204540, 38.778706>,  <38.240707, 34.359921, 38.662273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381775, 34.204540, 38.778706>,  <38.616890, 33.945572, 38.972759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381775, 34.204540, 38.778706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436720, -0.758699, -0.483374,
		-0.681015, -0.072256, 0.728696,
		-0.587787, 0.647421, -0.485130,
		38.205441, 34.398766, 38.633167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977848, 33.586292, 39.026459>,  <38.616890, 33.945572, 38.972759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977848, 33.586292, 39.026459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921082, 33.845661, 38.727283>,  <37.887024, 34.001282, 38.547779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.921082, 33.845661, 38.727283>,  <37.977848, 33.586292, 39.026459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921082, 33.845661, 38.727283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583738, -0.665043, -0.465797,
		-0.799444, 0.370497, 0.472887,
		-0.141914, 0.648421, -0.747938,
		37.878506, 34.040188, 38.502903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223476, 33.592331, 38.832840>,  <37.977848, 33.586292, 39.026459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223476, 33.592331, 38.832840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449135, 33.722595, 38.529343>,  <37.584530, 33.800755, 38.347244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449135, 33.722595, 38.529343>,  <37.223476, 33.592331, 38.832840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449135, 33.722595, 38.529343> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435190, -0.663652, -0.608421,
		-0.701676, 0.673434, -0.232675,
		0.564147, 0.325656, -0.758740,
		37.618378, 33.820293, 38.301720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881821, 33.636395, 38.219112>,  <37.223476, 33.592331, 38.832840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881821, 33.636395, 38.219112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262680, 33.614265, 38.098873>,  <37.491196, 33.600990, 38.026730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262680, 33.614265, 38.098873>,  <36.881821, 33.636395, 38.219112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262680, 33.614265, 38.098873> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269147, -0.617829, -0.738814,
		-0.144851, 0.784364, -0.603151,
		0.952144, -0.055319, -0.300602,
		37.548325, 33.597672, 38.008694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788929, 33.371666, 37.605194>,  <36.881821, 33.636395, 38.219112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788929, 33.371666, 37.605194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182579, 33.318584, 37.652336>,  <37.418770, 33.286736, 37.680622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182579, 33.318584, 37.652336>,  <36.788929, 33.371666, 37.605194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182579, 33.318584, 37.652336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026461, -0.766315, -0.641919,
		0.175501, 0.628609, -0.757661,
		0.984124, -0.132706, 0.117855,
		37.477818, 33.278774, 37.687695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946888, 33.352406, 36.919167>,  <36.788929, 33.371666, 37.605194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946888, 33.352406, 36.919167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274910, 33.218288, 37.104679>,  <37.471722, 33.137817, 37.215988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274910, 33.218288, 37.104679>,  <36.946888, 33.352406, 36.919167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274910, 33.218288, 37.104679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097337, -0.716869, -0.690380,
		0.563952, 0.611290, -0.555232,
		0.820051, -0.335296, 0.463781,
		37.520924, 33.117699, 37.243813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442081, 33.083870, 36.396114>,  <36.946888, 33.352406, 36.919167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442081, 33.083870, 36.396114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587589, 32.899265, 36.719761>,  <37.674892, 32.788502, 36.913948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587589, 32.899265, 36.719761>,  <37.442081, 33.083870, 36.396114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587589, 32.899265, 36.719761> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278640, -0.774944, -0.567293,
		0.888838, 0.431817, -0.153303,
		0.363768, -0.461515, 0.809121,
		37.696720, 32.760811, 36.962498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.017090, 32.860374, 36.138813>,  <37.442081, 33.083870, 36.396114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.017090, 32.860374, 36.138813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900742, 32.649254, 36.458015>,  <37.830933, 32.522579, 36.649536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.900742, 32.649254, 36.458015>,  <38.017090, 32.860374, 36.138813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900742, 32.649254, 36.458015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211962, -0.848894, -0.484202,
		0.932987, 0.028305, 0.358796,
		-0.290874, -0.527805, 0.798006,
		37.813480, 32.490913, 36.697418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290310, 32.128700, 36.056427>,  <38.017090, 32.860374, 36.138813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290310, 32.128700, 36.056427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001453, 32.076958, 36.328243>,  <37.828140, 32.045914, 36.491333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001453, 32.076958, 36.328243>,  <38.290310, 32.128700, 36.056427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001453, 32.076958, 36.328243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183353, -0.911431, -0.368341,
		0.667000, -0.390591, 0.634468,
		-0.722145, -0.129352, 0.679540,
		37.784809, 32.038151, 36.532104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394592, 31.471933, 36.406975>,  <38.290310, 32.128700, 36.056427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394592, 31.471933, 36.406975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009571, 31.578894, 36.424789>,  <37.778557, 31.643070, 36.435478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009571, 31.578894, 36.424789>,  <38.394592, 31.471933, 36.406975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009571, 31.578894, 36.424789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263198, -0.882510, -0.389748,
		-0.064912, -0.386877, 0.919844,
		-0.962556, 0.267400, 0.044540,
		37.720806, 31.659113, 36.438152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.454830, 37.872059, 41.075130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064068, 37.949303, 41.038551>,  <38.829609, 37.995651, 41.016602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.064068, 37.949303, 41.038551>,  <39.454830, 37.872059, 41.075130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064068, 37.949303, 41.038551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128336, -0.872491, -0.471476,
		-0.170838, -0.448851, 0.877124,
		-0.976905, 0.193112, -0.091451,
		38.770996, 38.007236, 41.011116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150795, 37.268219, 41.286526>,  <39.454830, 37.872059, 41.075130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150795, 37.268219, 41.286526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869072, 37.446163, 41.065239>,  <38.700039, 37.552929, 40.932465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.869072, 37.446163, 41.065239>,  <39.150795, 37.268219, 41.286526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869072, 37.446163, 41.065239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157241, -0.857698, -0.489520,
		-0.692264, -0.257783, 0.674032,
		-0.704305, 0.444862, -0.553219,
		38.657780, 37.579620, 40.899273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478889, 36.887295, 41.370159>,  <39.150795, 37.268219, 41.286526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478889, 36.887295, 41.370159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486694, 37.098694, 41.030674>,  <38.491379, 37.225533, 40.826984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.486694, 37.098694, 41.030674>,  <38.478889, 36.887295, 41.370159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486694, 37.098694, 41.030674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139521, -0.839128, -0.525736,
		-0.990027, 0.128671, 0.057363,
		0.019512, 0.528496, -0.848711,
		38.492546, 37.257244, 40.776062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801445, 36.651966, 41.085224>,  <38.478889, 36.887295, 41.370159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801445, 36.651966, 41.085224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009712, 36.828156, 40.792679>,  <38.134674, 36.933868, 40.617153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009712, 36.828156, 40.792679>,  <37.801445, 36.651966, 41.085224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009712, 36.828156, 40.792679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176570, -0.782562, -0.597010,
		-0.835299, 0.439983, -0.329684,
		0.520672, 0.440469, -0.731360,
		38.165913, 36.960297, 40.573269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349915, 36.595699, 40.526909>,  <37.801445, 36.651966, 41.085224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349915, 36.595699, 40.526909> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.719849, 36.655247, 40.386898>,  <37.941811, 36.690975, 40.302891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.719849, 36.655247, 40.386898>,  <37.349915, 36.595699, 40.526909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719849, 36.655247, 40.386898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089551, -0.809138, -0.580754,
		-0.369674, 0.568447, -0.734989,
		0.924836, 0.148871, -0.350023,
		37.997299, 36.699909, 40.281891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.354515, 36.576374, 39.768269>,  <37.349915, 36.595699, 40.526909>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.354515, 36.576374, 39.768269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729652, 36.488617, 39.875839>,  <37.954735, 36.435963, 39.940380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729652, 36.488617, 39.875839>,  <37.354515, 36.576374, 39.768269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729652, 36.488617, 39.875839> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006399, -0.763787, -0.645437,
		0.347005, 0.607038, -0.714907,
		0.937841, -0.219395, 0.268922,
		38.011005, 36.422798, 39.956516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778450, 36.559841, 39.088718>,  <37.354515, 36.576374, 39.768269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778450, 36.559841, 39.088718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995453, 36.386337, 39.376480>,  <38.125652, 36.282234, 39.549137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.995453, 36.386337, 39.376480>,  <37.778450, 36.559841, 39.088718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.995453, 36.386337, 39.376480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278108, -0.715349, -0.641039,
		0.792683, 0.547838, -0.267447,
		0.542503, -0.433762, 0.719403,
		38.158203, 36.256210, 39.592300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296272, 36.420483, 38.745533>,  <37.778450, 36.559841, 39.088718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296272, 36.420483, 38.745533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312756, 36.176205, 39.061852>,  <38.322647, 36.029636, 39.251640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.312756, 36.176205, 39.061852>,  <38.296272, 36.420483, 38.745533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312756, 36.176205, 39.061852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104493, -0.784491, -0.611273,
		0.993671, 0.107822, 0.031485,
		0.041210, -0.610694, 0.790793,
		38.325119, 35.992996, 39.299091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737900, 35.883865, 38.511673>,  <38.296272, 36.420483, 38.745533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737900, 35.883865, 38.511673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526764, 35.714367, 38.806107>,  <38.400082, 35.612667, 38.982769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.526764, 35.714367, 38.806107>,  <38.737900, 35.883865, 38.511673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526764, 35.714367, 38.806107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016853, -0.861258, -0.507888,
		0.849176, -0.280489, 0.447466,
		-0.527841, -0.423745, 0.736087,
		38.368412, 35.587242, 39.026932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453026, 36.052406, 38.278610>,  <38.737900, 35.883865, 38.511673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453026, 36.052406, 38.278610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.396347, 36.173851, 37.901730>,  <39.362339, 36.246719, 37.675602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.396347, 36.173851, 37.901730>,  <39.453026, 36.052406, 38.278610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396347, 36.173851, 37.901730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072199, 0.952439, 0.296054,
		0.987273, -0.026075, -0.156882,
		-0.141700, 0.303612, -0.942200,
		39.353836, 36.264935, 37.619068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.006054, 36.573219, 38.125690>,  <39.453026, 36.052406, 38.278610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.006054, 36.573219, 38.125690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687935, 36.613564, 37.886585>,  <39.497063, 36.637772, 37.743122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.687935, 36.613564, 37.886585>,  <40.006054, 36.573219, 38.125690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687935, 36.613564, 37.886585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041633, 0.974647, 0.219842,
		0.604783, 0.199727, -0.770939,
		-0.795301, 0.100860, -0.597765,
		39.449345, 36.643822, 37.707256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.235432, 37.118767, 37.781525>,  <40.006054, 36.573219, 38.125690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.235432, 37.118767, 37.781525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838406, 37.143051, 37.739334>,  <39.600189, 37.157623, 37.714020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.838406, 37.143051, 37.739334>,  <40.235432, 37.118767, 37.781525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838406, 37.143051, 37.739334> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033806, 0.970112, 0.240293,
		0.116913, 0.234941, -0.964953,
		-0.992566, 0.060715, -0.105477,
		39.540634, 37.161266, 37.707691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138615, 37.778584, 37.494892>,  <40.235432, 37.118767, 37.781525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138615, 37.778584, 37.494892> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767277, 37.692284, 37.615974>,  <39.544476, 37.640503, 37.688625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.767277, 37.692284, 37.615974>,  <40.138615, 37.778584, 37.494892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.767277, 37.692284, 37.615974> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125109, 0.948166, 0.292112,
		-0.350041, 0.233309, -0.907214,
		-0.928342, -0.215752, 0.302708,
		39.488773, 37.627560, 37.706787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847157, 38.358505, 37.378418>,  <40.138615, 37.778584, 37.494892>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847157, 38.358505, 37.378418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578011, 38.180641, 37.614902>,  <39.416523, 38.073921, 37.756794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.578011, 38.180641, 37.614902>,  <39.847157, 38.358505, 37.378418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578011, 38.180641, 37.614902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291098, 0.893861, 0.340990,
		-0.680085, 0.057340, -0.730887,
		-0.672864, -0.444662, 0.591210,
		39.376152, 38.047241, 37.792267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169067, 38.578175, 37.172123>,  <39.847157, 38.358505, 37.378418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169067, 38.578175, 37.172123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.166058, 38.467030, 37.556358>,  <39.164253, 38.400341, 37.786900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.166058, 38.467030, 37.556358>,  <39.169067, 38.578175, 37.172123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166058, 38.467030, 37.556358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282519, 0.922073, 0.264506,
		-0.959232, -0.269395, -0.085439,
		-0.007525, -0.277861, 0.960592,
		39.163799, 38.383671, 37.844536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642605, 39.014664, 37.411201>,  <39.169067, 38.578175, 37.172123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642605, 39.014664, 37.411201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831802, 38.863083, 37.729362>,  <38.945320, 38.772133, 37.920258>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.831802, 38.863083, 37.729362>,  <38.642605, 39.014664, 37.411201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831802, 38.863083, 37.729362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178479, 0.842847, 0.507695,
		-0.862797, -0.382101, 0.331028,
		0.472997, -0.378956, 0.795403,
		38.973701, 38.749397, 37.967983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.185509, 39.149662, 38.007416>,  <38.642605, 39.014664, 37.411201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.185509, 39.149662, 38.007416> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564579, 39.108353, 38.128239>,  <38.792023, 39.083565, 38.200733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.564579, 39.108353, 38.128239>,  <38.185509, 39.149662, 38.007416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564579, 39.108353, 38.128239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046956, 0.890829, 0.451905,
		-0.315750, -0.442445, 0.839371,
		0.947680, -0.103276, 0.302055,
		38.848885, 39.077370, 38.218857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198612, 39.301754, 38.713360>,  <38.185509, 39.149662, 38.007416>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198612, 39.301754, 38.713360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.568161, 39.356361, 38.570351>,  <38.789890, 39.389126, 38.484547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.568161, 39.356361, 38.570351>,  <38.198612, 39.301754, 38.713360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568161, 39.356361, 38.570351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004937, 0.929879, 0.367831,
		0.382668, -0.341595, 0.858416,
		0.923873, 0.136519, -0.357521,
		38.845322, 39.397316, 38.463093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618443, 39.662727, 39.269371>,  <38.198612, 39.301754, 38.713360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618443, 39.662727, 39.269371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795891, 39.727428, 38.916771>,  <38.902359, 39.766251, 38.705212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.795891, 39.727428, 38.916771>,  <38.618443, 39.662727, 39.269371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795891, 39.727428, 38.916771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152781, 0.955531, 0.252226,
		0.883095, -0.246569, 0.399184,
		0.443624, 0.161752, -0.881495,
		38.928978, 39.775955, 38.652321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.055363, 40.188721, 39.428936>,  <38.618443, 39.662727, 39.269371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.055363, 40.188721, 39.428936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.093487, 40.236347, 39.033615>,  <39.116360, 40.264923, 38.796421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.093487, 40.236347, 39.033615>,  <39.055363, 40.188721, 39.428936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093487, 40.236347, 39.033615> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452124, 0.879330, 0.149540,
		0.886849, -0.461087, 0.029971,
		0.095306, 0.119069, -0.988301,
		39.122078, 40.272068, 38.737125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.749832, 40.563740, 39.334301>,  <39.055363, 40.188721, 39.428936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.749832, 40.563740, 39.334301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.564953, 40.593067, 38.980804>,  <39.454025, 40.610664, 38.768707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.564953, 40.593067, 38.980804>,  <39.749832, 40.563740, 39.334301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564953, 40.593067, 38.980804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441048, 0.883580, -0.157366,
		0.769320, -0.462506, -0.440721,
		-0.462195, 0.073314, -0.883743,
		39.426296, 40.615063, 38.715683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.275745, 40.790840, 38.844414>,  <39.749832, 40.563740, 39.334301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.275745, 40.790840, 38.844414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.925503, 40.889919, 38.678539>,  <39.715359, 40.949368, 38.579014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.925503, 40.889919, 38.678539>,  <40.275745, 40.790840, 38.844414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925503, 40.889919, 38.678539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307938, 0.947678, -0.084142,
		0.372146, -0.201372, -0.906067,
		-0.875604, 0.247700, -0.414684,
		39.662823, 40.964230, 38.554134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514793, 41.399254, 38.366344>,  <40.275745, 40.790840, 38.844414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514793, 41.399254, 38.366344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122246, 41.395405, 38.443100>,  <39.886719, 41.393097, 38.489151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.122246, 41.395405, 38.443100>,  <40.514793, 41.399254, 38.366344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122246, 41.395405, 38.443100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018924, 0.989046, 0.146390,
		-0.191193, 0.147294, -0.970438,
		-0.981370, -0.009624, 0.191886,
		39.827835, 41.392517, 38.500668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.136929, 40.642010, 38.635342> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533062, 40.591801, 38.658974>,  <32.770741, 40.561676, 38.673153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.533062, 40.591801, 38.658974>,  <32.136929, 40.642010, 38.635342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.533062, 40.591801, 38.658974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076614, -0.849859, -0.521411,
		0.115662, 0.511843, -0.851258,
		0.990330, -0.125526, 0.059082,
		32.830162, 40.554142, 38.676697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.355354, 40.580936, 37.995655>,  <32.136929, 40.642010, 38.635342>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.355354, 40.580936, 37.995655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627773, 40.401356, 38.227039>,  <32.791225, 40.293606, 38.365871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.627773, 40.401356, 38.227039>,  <32.355354, 40.580936, 37.995655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627773, 40.401356, 38.227039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037859, -0.810519, -0.584487,
		0.731261, 0.376163, -0.568998,
		0.681046, -0.448954, 0.578460,
		32.832088, 40.266670, 38.400578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726231, 40.155823, 37.529461>,  <32.355354, 40.580936, 37.995655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726231, 40.155823, 37.529461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846527, 40.000252, 37.877781>,  <32.918705, 39.906910, 38.086773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.846527, 40.000252, 37.877781>,  <32.726231, 40.155823, 37.529461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846527, 40.000252, 37.877781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148701, -0.882780, -0.445632,
		0.942042, 0.263509, -0.207655,
		0.300742, -0.388925, 0.870799,
		32.936749, 39.883575, 38.139019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.217812, 39.654118, 37.336163>,  <32.726231, 40.155823, 37.529461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.217812, 39.654118, 37.336163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135811, 39.543865, 37.711823>,  <33.086609, 39.477715, 37.937218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.135811, 39.543865, 37.711823>,  <33.217812, 39.654118, 37.336163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135811, 39.543865, 37.711823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217186, -0.948418, -0.230943,
		0.954360, 0.156625, 0.254295,
		-0.205006, -0.275632, 0.939148,
		33.074310, 39.461174, 37.993568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796204, 39.260460, 37.569481>,  <33.217812, 39.654118, 37.336163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796204, 39.260460, 37.569481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504990, 39.157383, 37.823586>,  <33.330261, 39.095535, 37.976048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504990, 39.157383, 37.823586>,  <33.796204, 39.260460, 37.569481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504990, 39.157383, 37.823586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043309, -0.942098, -0.332530,
		0.684166, -0.214583, 0.697045,
		-0.728039, -0.257694, 0.635258,
		33.286579, 39.080074, 38.014164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986057, 38.758751, 38.167881>,  <33.796204, 39.260460, 37.569481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986057, 38.758751, 38.167881> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593933, 38.720741, 38.098644>,  <33.358658, 38.697937, 38.057102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.593933, 38.720741, 38.098644>,  <33.986057, 38.758751, 38.167881>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593933, 38.720741, 38.098644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117601, -0.985134, -0.125222,
		-0.158617, -0.143112, 0.976914,
		-0.980312, -0.095024, -0.173089,
		33.299839, 38.692234, 38.046719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812435, 38.124367, 38.381638>,  <33.986057, 38.758751, 38.167881>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812435, 38.124367, 38.381638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467590, 38.189850, 38.189819>,  <33.260685, 38.229137, 38.074726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.467590, 38.189850, 38.189819>,  <33.812435, 38.124367, 38.381638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467590, 38.189850, 38.189819> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045885, -0.967709, -0.247860,
		-0.504639, -0.191679, 0.841783,
		-0.862110, 0.163705, -0.479548,
		33.208958, 38.238960, 38.045956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395142, 37.468510, 38.358856>,  <33.812435, 38.124367, 38.381638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395142, 37.468510, 38.358856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.263737, 37.685757, 38.049767>,  <33.184895, 37.816105, 37.864311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.263737, 37.685757, 38.049767>,  <33.395142, 37.468510, 38.358856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263737, 37.685757, 38.049767> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147861, -0.778470, -0.610017,
		-0.932855, -0.314652, 0.175429,
		-0.328510, 0.543118, -0.772725,
		33.165184, 37.848694, 37.817947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.959122, 37.015812, 38.013145>,  <33.395142, 37.468510, 38.358856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.959122, 37.015812, 38.013145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.049782, 37.311447, 37.759411>,  <33.104176, 37.488827, 37.607170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.049782, 37.311447, 37.759411>,  <32.959122, 37.015812, 38.013145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.049782, 37.311447, 37.759411> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008073, -0.652687, -0.757584,
		-0.973943, 0.166584, -0.153896,
		0.226647, 0.739087, -0.634336,
		33.117775, 37.533173, 37.569111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433910, 37.042019, 37.397964>,  <32.959122, 37.015812, 38.013145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433910, 37.042019, 37.397964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769539, 37.236492, 37.300323>,  <32.970917, 37.353176, 37.241737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.769539, 37.236492, 37.300323>,  <32.433910, 37.042019, 37.397964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769539, 37.236492, 37.300323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103953, -0.583718, -0.805275,
		-0.533996, 0.650309, -0.540321,
		0.839072, 0.486181, -0.244101,
		33.021259, 37.382347, 37.227093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.390034, 37.147846, 36.634113>,  <32.433910, 37.042019, 37.397964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.390034, 37.147846, 36.634113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782021, 37.195324, 36.698086>,  <33.017212, 37.223808, 36.736469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782021, 37.195324, 36.698086>,  <32.390034, 37.147846, 36.634113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782021, 37.195324, 36.698086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198506, -0.647044, -0.736158,
		0.016105, 0.753158, -0.657643,
		0.979967, 0.118690, 0.159927,
		33.076012, 37.230930, 36.746063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715694, 37.335152, 35.990532>,  <32.390034, 37.147846, 36.634113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715694, 37.335152, 35.990532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994396, 37.177685, 36.230385>,  <33.161617, 37.083202, 36.374298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994396, 37.177685, 36.230385>,  <32.715694, 37.335152, 35.990532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994396, 37.177685, 36.230385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293851, -0.605935, -0.739253,
		0.654361, 0.691279, -0.306506,
		0.696752, -0.393671, 0.599633,
		33.203423, 37.059582, 36.410275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.242172, 37.177155, 35.412994>,  <32.715694, 37.335152, 35.990532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.242172, 37.177155, 35.412994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353226, 37.014149, 35.760983>,  <33.419857, 36.916348, 35.969776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.353226, 37.014149, 35.760983>,  <33.242172, 37.177155, 35.412994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.353226, 37.014149, 35.760983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395161, -0.776976, -0.490058,
		0.875652, 0.479836, -0.054683,
		0.277635, -0.407512, 0.869973,
		33.436516, 36.891895, 36.021973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964855, 36.876442, 35.351009>,  <33.242172, 37.177155, 35.412994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964855, 36.876442, 35.351009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742081, 36.690239, 35.626144>,  <33.608418, 36.578518, 35.791225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.742081, 36.690239, 35.626144>,  <33.964855, 36.876442, 35.351009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742081, 36.690239, 35.626144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080602, -0.854555, -0.513069,
		0.826635, -0.230305, 0.513453,
		-0.556936, -0.465506, 0.687842,
		33.575001, 36.550587, 35.832497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810707, 36.823280, 35.367290>,  <33.964855, 36.876442, 35.351009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810707, 36.823280, 35.367290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983959, 36.958736, 35.033173>,  <35.087910, 37.040012, 34.832703>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.983959, 36.958736, 35.033173>,  <34.810707, 36.823280, 35.367290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983959, 36.958736, 35.033173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217546, 0.860060, 0.461487,
		0.874686, -0.381598, 0.298843,
		0.433125, 0.338644, -0.835298,
		35.113899, 37.060329, 34.782585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.393787, 37.242542, 35.663921>,  <34.810707, 36.823280, 35.367290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.393787, 37.242542, 35.663921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355186, 37.367149, 35.285789>,  <35.332027, 37.441914, 35.058910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.355186, 37.367149, 35.285789>,  <35.393787, 37.242542, 35.663921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355186, 37.367149, 35.285789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199630, 0.936519, 0.288237,
		0.975108, -0.160901, -0.152562,
		-0.096499, 0.311518, -0.945328,
		35.326237, 37.460606, 35.002190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041309, 37.482273, 35.389511>,  <35.393787, 37.242542, 35.663921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041309, 37.482273, 35.389511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.752686, 37.673203, 35.188908>,  <35.579510, 37.787762, 35.068546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.752686, 37.673203, 35.188908>,  <36.041309, 37.482273, 35.389511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752686, 37.673203, 35.188908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271548, 0.861428, 0.429189,
		0.636878, 0.173502, -0.751189,
		-0.721560, 0.477325, -0.501510,
		35.536217, 37.816399, 35.038456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312057, 38.144535, 35.226227>,  <36.041309, 37.482273, 35.389511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312057, 38.144535, 35.226227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.916283, 38.193718, 35.195496>,  <35.678818, 38.223228, 35.177059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.916283, 38.193718, 35.195496>,  <36.312057, 38.144535, 35.226227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916283, 38.193718, 35.195496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091271, 0.939937, 0.328921,
		0.112655, 0.318433, -0.941227,
		-0.989433, 0.122962, -0.076825,
		35.619453, 38.230606, 35.172447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229588, 38.783012, 34.958183>,  <36.312057, 38.144535, 35.226227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229588, 38.783012, 34.958183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857471, 38.710880, 35.085964>,  <35.634201, 38.667603, 35.162632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.857471, 38.710880, 35.085964>,  <36.229588, 38.783012, 34.958183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.857471, 38.710880, 35.085964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023741, 0.898606, 0.438114,
		-0.366066, 0.399987, -0.840242,
		-0.930286, -0.180327, 0.319453,
		35.578384, 38.656784, 35.181801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769806, 39.239697, 34.701328>,  <36.229588, 38.783012, 34.958183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769806, 39.239697, 34.701328> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603371, 39.119156, 35.044502>,  <35.503510, 39.046833, 35.250408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.603371, 39.119156, 35.044502>,  <35.769806, 39.239697, 34.701328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603371, 39.119156, 35.044502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022520, 0.946615, 0.321580,
		-0.909045, 0.114485, -0.400663,
		-0.416090, -0.301353, 0.857937,
		35.478542, 39.028751, 35.301884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331936, 39.801598, 34.912376>,  <35.769806, 39.239697, 34.701328>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331936, 39.801598, 34.912376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337471, 39.603985, 35.260109>,  <35.340794, 39.485416, 35.468750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.337471, 39.603985, 35.260109>,  <35.331936, 39.801598, 34.912376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.337471, 39.603985, 35.260109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122486, 0.862033, 0.491829,
		-0.992374, -0.113289, -0.048581,
		0.013840, -0.494029, 0.869336,
		35.341621, 39.455776, 35.520908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739613, 39.986778, 35.270206>,  <35.331936, 39.801598, 34.912376>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739613, 39.986778, 35.270206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994488, 39.859398, 35.550941>,  <35.147415, 39.782970, 35.719383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994488, 39.859398, 35.550941>,  <34.739613, 39.986778, 35.270206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994488, 39.859398, 35.550941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139071, 0.848186, 0.511116,
		-0.758055, -0.423284, 0.496169,
		0.637191, -0.318452, 0.701837,
		35.185646, 39.763863, 35.761494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497234, 40.173222, 35.858627>,  <34.739613, 39.986778, 35.270206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497234, 40.173222, 35.858627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873894, 40.122486, 35.983337>,  <35.099892, 40.092045, 36.058163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.873894, 40.122486, 35.983337>,  <34.497234, 40.173222, 35.858627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873894, 40.122486, 35.983337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075357, 0.823332, 0.562535,
		-0.328046, -0.553207, 0.765733,
		0.941651, -0.126834, 0.311779,
		35.156387, 40.084435, 36.076870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459660, 40.169189, 36.646809>,  <34.497234, 40.173222, 35.858627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459660, 40.169189, 36.646809> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847931, 40.235374, 36.577057>,  <35.080894, 40.275085, 36.535206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847931, 40.235374, 36.577057>,  <34.459660, 40.169189, 36.646809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847931, 40.235374, 36.577057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009477, 0.698504, 0.715543,
		0.240196, -0.696215, 0.676455,
		0.970678, 0.165460, -0.174376,
		35.139133, 40.285011, 36.524746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829674, 40.091770, 37.286583>,  <34.459660, 40.169189, 36.646809>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829674, 40.091770, 37.286583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.052738, 40.324043, 37.049324>,  <35.186577, 40.463406, 36.906967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.052738, 40.324043, 37.049324>,  <34.829674, 40.091770, 37.286583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052738, 40.324043, 37.049324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091025, 0.667487, 0.739037,
		0.825059, -0.466126, 0.319379,
		0.557666, 0.580678, -0.593146,
		35.220039, 40.498245, 36.871380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440647, 40.340664, 37.689392>,  <34.829674, 40.091770, 37.286583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440647, 40.340664, 37.689392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423820, 40.604610, 37.389309>,  <35.413723, 40.762978, 37.209259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.423820, 40.604610, 37.389309>,  <35.440647, 40.340664, 37.689392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.423820, 40.604610, 37.389309> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095127, 0.750104, 0.654443,
		0.994576, -0.043832, -0.094329,
		-0.042071, 0.659866, -0.750205,
		35.411198, 40.802570, 37.164246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911182, 40.888443, 37.923851>,  <35.440647, 40.340664, 37.689392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911182, 40.888443, 37.923851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.710785, 41.082325, 37.637054>,  <35.590546, 41.198654, 37.464977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.710785, 41.082325, 37.637054>,  <35.911182, 40.888443, 37.923851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710785, 41.082325, 37.637054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008169, 0.831065, 0.556116,
		0.865414, 0.272752, -0.420316,
		-0.500991, 0.484704, -0.716987,
		35.560486, 41.227737, 37.421959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338692, 41.559029, 37.739437>,  <35.911182, 40.888443, 37.923851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338692, 41.559029, 37.739437> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948364, 41.579899, 37.654541>,  <35.714169, 41.592422, 37.603603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.948364, 41.579899, 37.654541>,  <36.338692, 41.559029, 37.739437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948364, 41.579899, 37.654541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044663, 0.902991, 0.427332,
		0.213952, 0.426480, -0.878828,
		-0.975823, 0.052177, -0.212245,
		35.655617, 41.595551, 37.590866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726692, 41.758816, 37.208710>,  <36.338692, 41.559029, 37.739437>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726692, 41.758816, 37.208710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.044113, 41.925056, 37.030918>,  <37.234566, 42.024799, 36.924244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.044113, 41.925056, 37.030918>,  <36.726692, 41.758816, 37.208710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044113, 41.925056, 37.030918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165168, -0.850124, -0.500008,
		-0.585661, 0.323368, -0.743259,
		0.793549, 0.415598, -0.444475,
		37.282177, 42.049736, 36.897575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637264, 41.558048, 36.555832>,  <36.726692, 41.758816, 37.208710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637264, 41.558048, 36.555832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024620, 41.657772, 36.552532>,  <37.257034, 41.717606, 36.550552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.024620, 41.657772, 36.552532>,  <36.637264, 41.558048, 36.555832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024620, 41.657772, 36.552532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217551, -0.860281, -0.461073,
		-0.122045, 0.444704, -0.887324,
		0.968389, 0.249310, -0.008248,
		37.315136, 41.732567, 36.550056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.912235, 41.318848, 35.913143>,  <36.637264, 41.558048, 36.555832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.912235, 41.318848, 35.913143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244671, 41.385887, 36.125256>,  <37.444134, 41.426109, 36.252522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.244671, 41.385887, 36.125256>,  <36.912235, 41.318848, 35.913143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244671, 41.385887, 36.125256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454578, -0.754032, -0.474126,
		0.320386, 0.635096, -0.702856,
		0.831091, 0.167599, 0.530282,
		37.493999, 41.436169, 36.284340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418648, 41.623135, 35.394741>,  <36.912235, 41.318848, 35.913143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418648, 41.623135, 35.394741> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.605114, 41.460388, 35.708977>,  <37.716995, 41.362740, 35.897518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.605114, 41.460388, 35.708977>,  <37.418648, 41.623135, 35.394741>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605114, 41.460388, 35.708977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525600, -0.586908, -0.615860,
		0.711641, 0.699998, -0.059748,
		0.466168, -0.406868, 0.785586,
		37.744965, 41.338329, 35.944653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015469, 41.463341, 35.098011>,  <37.418648, 41.623135, 35.394741>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015469, 41.463341, 35.098011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.004112, 41.248501, 35.435226>,  <37.997299, 41.119595, 35.637554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.004112, 41.248501, 35.435226>,  <38.015469, 41.463341, 35.098011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004112, 41.248501, 35.435226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397750, -0.779807, -0.483422,
		0.917055, 0.321595, 0.235770,
		-0.028389, -0.537102, 0.843040,
		37.995594, 41.087372, 35.688137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651955, 41.063385, 35.064327>,  <38.015469, 41.463341, 35.098011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651955, 41.063385, 35.064327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384377, 40.868622, 35.288979>,  <38.223827, 40.751762, 35.423767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.384377, 40.868622, 35.288979>,  <38.651955, 41.063385, 35.064327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.384377, 40.868622, 35.288979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306580, -0.869052, -0.388276,
		0.677138, -0.087554, 0.730628,
		-0.668949, -0.486912, 0.561626,
		38.183693, 40.722549, 35.457466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.033230, 40.483986, 35.159672>,  <38.651955, 41.063385, 35.064327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.033230, 40.483986, 35.159672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657917, 40.389481, 35.260708>,  <38.432728, 40.332775, 35.321331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.657917, 40.389481, 35.260708>,  <39.033230, 40.483986, 35.159672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657917, 40.389481, 35.260708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104326, -0.889633, -0.444600,
		0.329757, -0.390809, 0.859377,
		-0.938284, -0.236265, 0.252591,
		38.376431, 40.318600, 35.336487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108006, 39.813251, 35.516228>,  <39.033230, 40.483986, 35.159672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108006, 39.813251, 35.516228> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729771, 39.813290, 35.386078>,  <38.502831, 39.813313, 35.307987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.729771, 39.813290, 35.386078>,  <39.108006, 39.813251, 35.516228>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.729771, 39.813290, 35.386078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148720, -0.889297, -0.432474,
		-0.289398, -0.457331, 0.840891,
		-0.945585, 0.000099, -0.325375,
		38.446095, 39.813320, 35.288464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.803162, 39.147282, 35.710171>,  <39.108006, 39.813251, 35.516228>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.803162, 39.147282, 35.710171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.634392, 39.308182, 35.385166>,  <38.533131, 39.404720, 35.190163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.634392, 39.308182, 35.385166>,  <38.803162, 39.147282, 35.710171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634392, 39.308182, 35.385166> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009379, -0.894203, -0.447565,
		-0.906585, -0.196457, 0.373508,
		-0.421919, 0.402252, -0.812513,
		38.507816, 39.428856, 35.141415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269829, 38.754452, 35.540279>,  <38.803162, 39.147282, 35.710171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269829, 38.754452, 35.540279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311310, 38.932453, 35.184479>,  <38.336197, 39.039253, 34.970997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.311310, 38.932453, 35.184479>,  <38.269829, 38.754452, 35.540279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.311310, 38.932453, 35.184479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055705, -0.890323, -0.451908,
		-0.993047, 0.096413, -0.067539,
		0.103701, 0.445004, -0.889504,
		38.342419, 39.065956, 34.917629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739944, 38.477440, 35.134121>,  <38.269829, 38.754452, 35.540279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739944, 38.477440, 35.134121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006577, 38.631489, 34.878822>,  <38.166553, 38.723919, 34.725643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.006577, 38.631489, 34.878822>,  <37.739944, 38.477440, 35.134121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.006577, 38.631489, 34.878822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097251, -0.803953, -0.586687,
		-0.739065, 0.453142, -0.498443,
		0.666577, 0.385126, -0.638242,
		38.206551, 38.747028, 34.687351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383160, 38.476398, 34.419003>,  <37.739944, 38.477440, 35.134121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383160, 38.476398, 34.419003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780399, 38.487724, 34.373482>,  <38.018742, 38.494522, 34.346169>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.780399, 38.487724, 34.373482>,  <37.383160, 38.476398, 34.419003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.780399, 38.487724, 34.373482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055047, -0.744282, -0.665593,
		-0.103545, 0.667265, -0.737587,
		0.993100, 0.028317, -0.113798,
		38.078331, 38.496220, 34.339344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530327, 38.429810, 33.719921>,  <37.383160, 38.476398, 34.419003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530327, 38.429810, 33.719921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.861290, 38.276772, 33.884365>,  <38.059868, 38.184948, 33.983032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.861290, 38.276772, 33.884365>,  <37.530327, 38.429810, 33.719921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861290, 38.276772, 33.884365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005940, -0.726030, -0.687638,
		0.561567, 0.571400, -0.598451,
		0.827410, -0.382600, 0.411109,
		38.109512, 38.161991, 34.007698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898396, 38.184353, 33.125858>,  <37.530327, 38.429810, 33.719921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898396, 38.184353, 33.125858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051807, 38.013226, 33.453243>,  <38.143856, 37.910549, 33.649673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.051807, 38.013226, 33.453243>,  <37.898396, 38.184353, 33.125858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051807, 38.013226, 33.453243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079926, -0.867531, -0.490919,
		0.920062, 0.253700, -0.298533,
		0.383533, -0.427816, 0.818460,
		38.166866, 37.884880, 33.698780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.452974, 34.266376, 29.536846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.718010, 34.543980, 29.424183>,  <30.877031, 34.710541, 29.356585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.718010, 34.543980, 29.424183>,  <30.452974, 34.266376, 29.536846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718010, 34.543980, 29.424183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222278, 0.541316, 0.810907,
		0.715241, -0.474690, 0.512932,
		0.662587, 0.694008, -0.281658,
		30.916786, 34.752182, 29.339685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930866, 34.393196, 30.083754>,  <30.452974, 34.266376, 29.536846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930866, 34.393196, 30.083754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906849, 34.739849, 29.885624>,  <30.892439, 34.947842, 29.766747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.906849, 34.739849, 29.885624>,  <30.930866, 34.393196, 30.083754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.906849, 34.739849, 29.885624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137646, 0.484289, 0.864012,
		0.988660, 0.120056, 0.090211,
		-0.060041, 0.866632, -0.495322,
		30.888836, 34.999840, 29.737028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.407139, 34.889339, 30.415186>,  <30.930866, 34.393196, 30.083754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.407139, 34.889339, 30.415186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.130798, 35.105530, 30.223099>,  <30.964994, 35.235245, 30.107845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.130798, 35.105530, 30.223099>,  <31.407139, 34.889339, 30.415186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130798, 35.105530, 30.223099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266444, 0.427134, 0.864039,
		0.672108, 0.724876, -0.151081,
		-0.690853, 0.540474, -0.480219,
		30.923542, 35.267673, 30.079033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388206, 35.542934, 30.712559>,  <31.407139, 34.889339, 30.415186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388206, 35.542934, 30.712559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.028044, 35.527225, 30.539251>,  <30.811945, 35.517799, 30.435266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.028044, 35.527225, 30.539251>,  <31.388206, 35.542934, 30.712559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028044, 35.527225, 30.539251> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427038, 0.270007, 0.862980,
		0.083092, 0.962057, -0.259889,
		-0.900408, -0.039275, -0.433270,
		30.757921, 35.515442, 30.409269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062567, 36.259472, 30.825579>,  <31.388206, 35.542934, 30.712559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062567, 36.259472, 30.825579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747129, 36.038605, 30.717335>,  <30.557867, 35.906082, 30.652388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747129, 36.038605, 30.717335>,  <31.062567, 36.259472, 30.825579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747129, 36.038605, 30.717335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551861, 0.441393, 0.707546,
		-0.271241, 0.707304, -0.652801,
		-0.788592, -0.552171, -0.270609,
		30.510551, 35.872955, 30.636152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395638, 36.698265, 30.734005>,  <31.062567, 36.259472, 30.825579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395638, 36.698265, 30.734005> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237423, 36.337929, 30.805601>,  <30.142494, 36.121727, 30.848558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.237423, 36.337929, 30.805601>,  <30.395638, 36.698265, 30.734005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237423, 36.337929, 30.805601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543209, 0.386592, 0.745299,
		-0.740592, 0.197563, -0.642256,
		-0.395534, -0.900842, 0.178989,
		30.118763, 36.067677, 30.859299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.654020, 36.778023, 30.884867>,  <30.395638, 36.698265, 30.734005>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.654020, 36.778023, 30.884867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697882, 36.399265, 31.005779>,  <29.724199, 36.172012, 31.078327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.697882, 36.399265, 31.005779>,  <29.654020, 36.778023, 30.884867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697882, 36.399265, 31.005779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587288, 0.183635, 0.788271,
		-0.801916, -0.263964, -0.535961,
		0.109654, -0.946890, 0.302283,
		29.730778, 36.115200, 31.096464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956221, 36.486237, 31.069862>,  <29.654020, 36.778023, 30.884867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956221, 36.486237, 31.069862> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.213713, 36.232620, 31.241259>,  <29.368208, 36.080452, 31.344097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.213713, 36.232620, 31.241259>,  <28.956221, 36.486237, 31.069862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213713, 36.232620, 31.241259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597839, -0.067138, 0.798800,
		-0.477704, -0.770379, -0.422274,
		0.643729, -0.634042, 0.428490,
		29.406832, 36.042408, 31.369806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575041, 35.864201, 31.127308>,  <28.956221, 36.486237, 31.069862>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575041, 35.864201, 31.127308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.859495, 35.849907, 31.408167>,  <29.030167, 35.841331, 31.576683>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.859495, 35.849907, 31.408167>,  <28.575041, 35.864201, 31.127308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.859495, 35.849907, 31.408167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691416, -0.216531, 0.689245,
		0.127411, -0.975622, -0.178686,
		0.711133, -0.035729, 0.702148,
		29.072836, 35.839188, 31.618811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462431, 35.307892, 31.473875>,  <28.575041, 35.864201, 31.127308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462431, 35.307892, 31.473875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691875, 35.495090, 31.742783>,  <28.829542, 35.607410, 31.904127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691875, 35.495090, 31.742783>,  <28.462431, 35.307892, 31.473875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691875, 35.495090, 31.742783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628723, -0.274517, 0.727563,
		0.525048, -0.840010, 0.136775,
		0.573613, 0.467999, 0.672268,
		28.863960, 35.635490, 31.944464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.465803, 34.907791, 32.074162>,  <28.462431, 35.307892, 31.473875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.465803, 34.907791, 32.074162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.588326, 35.269947, 32.191772>,  <28.661839, 35.487240, 32.262341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.588326, 35.269947, 32.191772>,  <28.465803, 34.907791, 32.074162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588326, 35.269947, 32.191772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458626, -0.130304, 0.879024,
		0.834169, -0.404099, 0.375321,
		0.306307, 0.905387, 0.294026,
		28.680218, 35.541561, 32.279980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.755281, 34.798946, 32.707417>,  <28.465803, 34.907791, 32.074162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.755281, 34.798946, 32.707417> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.634962, 35.180367, 32.700909>,  <28.562771, 35.409218, 32.697002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.634962, 35.180367, 32.700909>,  <28.755281, 34.798946, 32.707417>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.634962, 35.180367, 32.700909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582451, -0.170170, 0.794854,
		0.755162, 0.248570, 0.606583,
		-0.300799, 0.953549, -0.016274,
		28.544722, 35.466431, 32.696026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769499, 34.997055, 33.379189>,  <28.755281, 34.798946, 32.707417>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769499, 34.997055, 33.379189> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520952, 35.255451, 33.201828>,  <28.371824, 35.410488, 33.095409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.520952, 35.255451, 33.201828>,  <28.769499, 34.997055, 33.379189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.520952, 35.255451, 33.201828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664319, -0.134301, 0.735285,
		0.415435, 0.751441, 0.512591,
		-0.621365, 0.645987, -0.443403,
		28.334543, 35.449249, 33.068806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453640, 35.490704, 33.958759>,  <28.769499, 34.997055, 33.379189>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453640, 35.490704, 33.958759> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234766, 35.524952, 33.625710>,  <28.103441, 35.545502, 33.425880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234766, 35.524952, 33.625710>,  <28.453640, 35.490704, 33.958759>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234766, 35.524952, 33.625710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834771, 0.016937, 0.550336,
		0.061221, 0.996184, 0.062204,
		-0.547183, 0.085618, -0.832623,
		28.070612, 35.550636, 33.375923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002182, 36.005688, 34.024235>,  <28.453640, 35.490704, 33.958759>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.002182, 36.005688, 34.024235> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.815742, 35.789223, 33.744267>,  <27.703878, 35.659344, 33.576286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.815742, 35.789223, 33.744267>,  <28.002182, 36.005688, 34.024235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.815742, 35.789223, 33.744267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842585, 0.030249, 0.537714,
		-0.269818, 0.840374, -0.470074,
		-0.466101, -0.541162, -0.699925,
		27.675913, 35.626873, 33.534290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465191, 36.341209, 33.980930>,  <28.002182, 36.005688, 34.024235>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465191, 36.341209, 33.980930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.394947, 35.973110, 33.841038>,  <27.352800, 35.752251, 33.757103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.394947, 35.973110, 33.841038>,  <27.465191, 36.341209, 33.980930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.394947, 35.973110, 33.841038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825649, -0.055800, 0.561417,
		-0.536157, 0.387344, -0.750000,
		-0.175612, -0.920245, -0.349728,
		27.342264, 35.697037, 33.736118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707432, 36.330738, 33.944729>,  <27.465191, 36.341209, 33.980930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707432, 36.330738, 33.944729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830734, 35.950531, 33.929268>,  <26.904716, 35.722408, 33.919991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830734, 35.950531, 33.929268>,  <26.707432, 36.330738, 33.944729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830734, 35.950531, 33.929268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840128, -0.291070, 0.457672,
		-0.446277, -0.108604, -0.888281,
		0.308257, -0.950517, -0.038657,
		26.923212, 35.665375, 33.917671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194187, 35.937992, 33.655796>,  <26.707432, 36.330738, 33.944729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194187, 35.937992, 33.655796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392975, 35.648464, 33.847260>,  <26.512247, 35.474747, 33.962135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.392975, 35.648464, 33.847260>,  <26.194187, 35.937992, 33.655796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.392975, 35.648464, 33.847260> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861830, -0.476110, 0.174841,
		0.101341, -0.499411, -0.860418,
		0.496971, -0.723815, 0.478656,
		26.542067, 35.431320, 33.990856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.882746, 35.252457, 33.461685>,  <26.194187, 35.937992, 33.655796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.882746, 35.252457, 33.461685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085707, 35.178555, 33.798355>,  <26.207483, 35.134212, 34.000355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085707, 35.178555, 33.798355>,  <25.882746, 35.252457, 33.461685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085707, 35.178555, 33.798355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751815, -0.572219, 0.327626,
		0.421090, -0.799019, -0.429246,
		0.507402, -0.184753, 0.841670,
		26.237926, 35.123127, 34.050858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632004, 34.629791, 33.712006>,  <25.882746, 35.252457, 33.461685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632004, 34.629791, 33.712006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.815905, 34.771782, 34.037613>,  <25.926245, 34.856976, 34.232975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.815905, 34.771782, 34.037613>,  <25.632004, 34.629791, 33.712006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815905, 34.771782, 34.037613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799284, -0.234055, 0.553501,
		0.387005, -0.905102, 0.176121,
		0.459753, 0.354978, 0.814013,
		25.953831, 34.878277, 34.281818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.699419, 34.081718, 34.321201>,  <25.632004, 34.629791, 33.712006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.699419, 34.081718, 34.321201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712244, 34.450394, 34.475849>,  <25.719938, 34.671597, 34.568638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712244, 34.450394, 34.475849>,  <25.699419, 34.081718, 34.321201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712244, 34.450394, 34.475849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739804, -0.238212, 0.629241,
		0.672058, -0.306193, 0.674229,
		0.032060, 0.921684, 0.386615,
		25.721863, 34.726898, 34.591835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006140, 33.835648, 34.923168>,  <25.699419, 34.081718, 34.321201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006140, 33.835648, 34.923168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.186295, 33.480324, 34.887280>,  <26.294388, 33.267128, 34.865746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.186295, 33.480324, 34.887280>,  <26.006140, 33.835648, 34.923168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.186295, 33.480324, 34.887280> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067383, 0.066381, -0.995516,
		0.890287, 0.454414, -0.029960,
		0.450388, -0.888314, -0.089718,
		26.321411, 33.213829, 34.860363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.498228, 33.822895, 34.312672>,  <26.006140, 33.835648, 34.923168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.498228, 33.822895, 34.312672> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391399, 33.445461, 34.390976>,  <26.327303, 33.219002, 34.437958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.391399, 33.445461, 34.390976>,  <26.498228, 33.822895, 34.312672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.391399, 33.445461, 34.390976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090765, -0.177608, -0.979907,
		0.959393, -0.279473, -0.038211,
		-0.267071, -0.943584, 0.195762,
		26.311277, 33.162388, 34.449703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946751, 33.361412, 33.910088>,  <26.498228, 33.822895, 34.312672>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946751, 33.361412, 33.910088> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.604645, 33.163830, 33.972744>,  <26.399382, 33.045280, 34.010338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.604645, 33.163830, 33.972744>,  <26.946751, 33.361412, 33.910088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604645, 33.163830, 33.972744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099707, -0.139761, -0.985153,
		0.508509, -0.858183, 0.070282,
		-0.855264, -0.493952, 0.156636,
		26.348066, 33.015644, 34.019733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041407, 32.690884, 33.486877>,  <26.946751, 33.361412, 33.910088>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041407, 32.690884, 33.486877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663584, 32.790371, 33.572617>,  <26.436890, 32.850063, 33.624062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.663584, 32.790371, 33.572617>,  <27.041407, 32.690884, 33.486877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.663584, 32.790371, 33.572617> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241320, -0.083188, -0.966873,
		-0.222652, -0.964996, 0.138597,
		-0.944559, 0.248722, 0.214351,
		26.380217, 32.864986, 33.636921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.740448, 32.146606, 33.410473>,  <27.041407, 32.690884, 33.486877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.740448, 32.146606, 33.410473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459917, 32.429047, 33.371368>,  <26.291597, 32.598511, 33.347904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.459917, 32.429047, 33.371368>,  <26.740448, 32.146606, 33.410473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.459917, 32.429047, 33.371368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042163, -0.095817, -0.994505,
		-0.711589, -0.701598, 0.037428,
		-0.701329, 0.706102, -0.097764,
		26.249517, 32.640877, 33.342041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238180, 31.873917, 33.014687>,  <26.740448, 32.146606, 33.410473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238180, 31.873917, 33.014687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.180515, 32.267433, 32.972031>,  <26.145916, 32.503544, 32.946438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.180515, 32.267433, 32.972031>,  <26.238180, 31.873917, 33.014687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.180515, 32.267433, 32.972031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098168, -0.093016, -0.990813,
		-0.984672, -0.153308, -0.083167,
		-0.144164, 0.983791, -0.106640,
		26.137266, 32.562569, 32.940037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.845142, 32.045547, 32.304047>,  <26.238180, 31.873917, 33.014687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.845142, 32.045547, 32.304047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023428, 32.385311, 32.417072>,  <26.130400, 32.589169, 32.484886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.023428, 32.385311, 32.417072>,  <25.845142, 32.045547, 32.304047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.023428, 32.385311, 32.417072> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052627, 0.290241, -0.955505,
		-0.893628, 0.440751, 0.084662,
		0.445712, 0.849411, 0.282563,
		26.157141, 32.640133, 32.501842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.548475, 32.677158, 31.974194>,  <25.845142, 32.045547, 32.304047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.548475, 32.677158, 31.974194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896164, 32.831081, 32.098373>,  <26.104776, 32.923435, 32.172882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.896164, 32.831081, 32.098373>,  <25.548475, 32.677158, 31.974194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896164, 32.831081, 32.098373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109905, 0.461815, -0.880141,
		-0.482054, 0.799157, 0.359127,
		0.869221, 0.384805, 0.310451,
		26.156931, 32.946522, 32.191509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.461094, 33.331543, 31.598888>,  <25.548475, 32.677158, 31.974194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.461094, 33.331543, 31.598888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.841013, 33.267494, 31.706402>,  <26.068964, 33.229065, 31.770910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.841013, 33.267494, 31.706402>,  <25.461094, 33.331543, 31.598888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841013, 33.267494, 31.706402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311226, 0.395778, -0.864001,
		0.031971, 0.904278, 0.425745,
		0.949798, -0.160126, 0.268782,
		26.125952, 33.219456, 31.787037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.862295, 33.866924, 31.224731>,  <25.461094, 33.331543, 31.598888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.862295, 33.866924, 31.224731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159821, 33.631962, 31.352293>,  <26.338335, 33.490986, 31.428831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159821, 33.631962, 31.352293>,  <25.862295, 33.866924, 31.224731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159821, 33.631962, 31.352293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577153, 0.323819, -0.749690,
		0.337103, 0.741686, 0.579882,
		0.743812, -0.587404, 0.318906,
		26.382963, 33.455742, 31.447966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.452400, 34.302067, 31.278509>,  <25.862295, 33.866924, 31.224731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.452400, 34.302067, 31.278509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572855, 33.922623, 31.239616>,  <26.645126, 33.694958, 31.216280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.572855, 33.922623, 31.239616>,  <26.452400, 34.302067, 31.278509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572855, 33.922623, 31.239616> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691602, 0.287464, -0.662610,
		0.656510, 0.132289, 0.742627,
		0.301135, -0.948612, -0.097232,
		26.663195, 33.638039, 31.210447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.155855, 34.339287, 31.289162>,  <26.452400, 34.302067, 31.278509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.155855, 34.339287, 31.289162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065756, 34.011059, 31.079048>,  <27.011696, 33.814121, 30.952980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.065756, 34.011059, 31.079048>,  <27.155855, 34.339287, 31.289162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.065756, 34.011059, 31.079048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568007, 0.327443, -0.755082,
		0.791600, -0.468448, 0.392334,
		-0.225249, -0.820572, -0.525285,
		26.998180, 33.764889, 30.921463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.766939, 34.173222, 30.969601>,  <27.155855, 34.339287, 31.289162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.766939, 34.173222, 30.969601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485397, 33.973911, 30.767092>,  <27.316471, 33.854324, 30.645586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.485397, 33.973911, 30.767092>,  <27.766939, 34.173222, 30.969601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.485397, 33.973911, 30.767092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459722, 0.223799, -0.859401,
		0.541519, -0.837638, 0.071544,
		-0.703856, -0.498273, -0.506272,
		27.274240, 33.824429, 30.615210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188435, 33.754837, 30.598124>,  <27.766939, 34.173222, 30.969601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188435, 33.754837, 30.598124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825773, 33.804337, 30.436798>,  <27.608175, 33.834038, 30.340002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.825773, 33.804337, 30.436798>,  <28.188435, 33.754837, 30.598124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.825773, 33.804337, 30.436798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419670, 0.166983, -0.892184,
		-0.043064, -0.978162, -0.203332,
		-0.906654, 0.123754, -0.403315,
		27.553778, 33.841461, 30.315804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298126, 33.313309, 29.979069>,  <28.188435, 33.754837, 30.598124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298126, 33.313309, 29.979069> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.975712, 33.541206, 29.914940>,  <27.782263, 33.677944, 29.876463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.975712, 33.541206, 29.914940>,  <28.298126, 33.313309, 29.979069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975712, 33.541206, 29.914940> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410412, 0.342854, -0.844993,
		-0.426461, -0.746891, -0.510181,
		-0.806036, 0.569741, -0.160320,
		27.733902, 33.712128, 29.866844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201139, 33.235565, 29.258106>,  <28.298126, 33.313309, 29.979069>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201139, 33.235565, 29.258106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992765, 33.564774, 29.348675>,  <27.867741, 33.762299, 29.403015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.992765, 33.564774, 29.348675>,  <28.201139, 33.235565, 29.258106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.992765, 33.564774, 29.348675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223808, 0.387669, -0.894217,
		-0.823732, -0.415156, -0.386149,
		-0.520937, 0.823018, 0.226420,
		27.836485, 33.811680, 29.416601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889421, 33.374722, 28.594093>,  <28.201139, 33.235565, 29.258106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889421, 33.374722, 28.594093> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885241, 33.710114, 28.812025>,  <27.882732, 33.911350, 28.942783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885241, 33.710114, 28.812025>,  <27.889421, 33.374722, 28.594093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885241, 33.710114, 28.812025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539519, 0.463475, -0.702929,
		-0.841908, 0.286598, -0.457222,
		-0.010453, 0.838482, 0.544829,
		27.882105, 33.961658, 28.975473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807537, 33.882843, 28.148132>,  <27.889421, 33.374722, 28.594093>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807537, 33.882843, 28.148132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956686, 34.096096, 28.451906>,  <28.046175, 34.224049, 28.634171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.956686, 34.096096, 28.451906>,  <27.807537, 33.882843, 28.148132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956686, 34.096096, 28.451906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641634, 0.443088, -0.626083,
		-0.670279, 0.720727, -0.176859,
		0.372871, 0.533128, 0.759435,
		28.068546, 34.256035, 28.679737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858370, 34.535419, 27.848803>,  <27.807537, 33.882843, 28.148132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858370, 34.535419, 27.848803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099142, 34.518211, 28.167759>,  <28.243605, 34.507889, 28.359133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099142, 34.518211, 28.167759>,  <27.858370, 34.535419, 27.848803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099142, 34.518211, 28.167759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781015, 0.239823, -0.576629,
		-0.166427, 0.969863, 0.177954,
		0.601929, -0.043018, 0.797390,
		28.279720, 34.505306, 28.406977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391796, 35.071983, 27.769804>,  <27.858370, 34.535419, 27.848803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391796, 35.071983, 27.769804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541325, 34.831905, 28.052652>,  <28.631042, 34.687859, 28.222361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.541325, 34.831905, 28.052652>,  <28.391796, 35.071983, 27.769804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541325, 34.831905, 28.052652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924272, 0.177511, -0.337952,
		0.077316, 0.779907, 0.621102,
		0.373823, -0.600196, 0.707122,
		28.653471, 34.651848, 28.264790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923628, 35.392693, 27.938757>,  <28.391796, 35.071983, 27.769804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923628, 35.392693, 27.938757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.973021, 35.003345, 28.016018>,  <29.002655, 34.769737, 28.062374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.973021, 35.003345, 28.016018>,  <28.923628, 35.392693, 27.938757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.973021, 35.003345, 28.016018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910635, 0.033800, -0.411827,
		0.394331, 0.226742, 0.890557,
		0.123480, -0.973368, 0.193151,
		29.010065, 34.711334, 28.073963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.303886, 42.043880, 38.038647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.993713, 41.929775, 38.263977>,  <39.807610, 41.861313, 38.399174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.993713, 41.929775, 38.263977>,  <40.303886, 42.043880, 38.038647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.993713, 41.929775, 38.263977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153614, 0.950555, 0.269903,
		-0.612465, 0.122756, -0.780908,
		-0.775429, -0.285264, 0.563325,
		39.761086, 41.844196, 38.432976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736614, 42.498531, 37.920441>,  <40.303886, 42.043880, 38.038647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736614, 42.498531, 37.920441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.651615, 42.331261, 38.273705>,  <39.600616, 42.230896, 38.485664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.651615, 42.331261, 38.273705>,  <39.736614, 42.498531, 37.920441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.651615, 42.331261, 38.273705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203402, 0.902933, 0.378602,
		-0.955758, -0.099185, -0.276928,
		-0.212495, -0.418180, 0.883160,
		39.587868, 42.205807, 38.538654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130459, 42.956398, 38.172291>,  <39.736614, 42.498531, 37.920441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130459, 42.956398, 38.172291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.269993, 42.778786, 38.502419>,  <39.353714, 42.672218, 38.700497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.269993, 42.778786, 38.502419>,  <39.130459, 42.956398, 38.172291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.269993, 42.778786, 38.502419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053963, 0.888693, 0.455315,
		-0.935629, -0.114294, 0.333969,
		0.348836, -0.444028, 0.825320,
		39.374645, 42.645576, 38.750015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693356, 43.106262, 38.680317>,  <39.130459, 42.956398, 38.172291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693356, 43.106262, 38.680317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041824, 43.018028, 38.855774>,  <39.250904, 42.965088, 38.961048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.041824, 43.018028, 38.855774>,  <38.693356, 43.106262, 38.680317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041824, 43.018028, 38.855774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045617, 0.853165, 0.519643,
		-0.488863, -0.472705, 0.733187,
		0.871167, -0.220588, 0.438644,
		39.303173, 42.951851, 38.987366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633831, 43.318256, 39.366135>,  <38.693356, 43.106262, 38.680317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633831, 43.318256, 39.366135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031307, 43.285439, 39.335533>,  <39.269791, 43.265747, 39.317173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.031307, 43.285439, 39.335533>,  <38.633831, 43.318256, 39.366135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031307, 43.285439, 39.335533> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111166, 0.811460, 0.573738,
		0.015008, -0.578621, 0.815459,
		0.993689, -0.082041, -0.076502,
		39.329414, 43.260826, 39.312584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.870422, 43.235195, 40.022572>,  <38.633831, 43.318256, 39.366135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.870422, 43.235195, 40.022572> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195202, 43.372459, 39.833691>,  <39.390072, 43.454819, 39.720364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.195202, 43.372459, 39.833691>,  <38.870422, 43.235195, 40.022572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.195202, 43.372459, 39.833691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087690, 0.728063, 0.679879,
		0.577097, -0.593437, 0.561062,
		0.811954, 0.343157, -0.472202,
		39.438789, 43.475407, 39.692028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422443, 43.442551, 40.561127>,  <38.870422, 43.235195, 40.022572>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422443, 43.442551, 40.561127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.530636, 43.626057, 40.222572>,  <39.595551, 43.736160, 40.019440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.530636, 43.626057, 40.222572>,  <39.422443, 43.442551, 40.561127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530636, 43.626057, 40.222572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146049, 0.849429, 0.507089,
		0.951582, -0.260773, 0.162754,
		0.270484, 0.458767, -0.846387,
		39.611782, 43.763687, 39.968655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011059, 43.805977, 40.730881>,  <39.422443, 43.442551, 40.561127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011059, 43.805977, 40.730881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.902645, 44.003807, 40.400562>,  <39.837597, 44.122505, 40.202374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.902645, 44.003807, 40.400562>,  <40.011059, 43.805977, 40.730881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902645, 44.003807, 40.400562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285268, 0.860635, 0.421816,
		0.919327, -0.121246, -0.374349,
		-0.271035, 0.494577, -0.825793,
		39.821335, 44.152180, 40.152824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545158, 44.372383, 40.727573>,  <40.011059, 43.805977, 40.730881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545158, 44.372383, 40.727573> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.252586, 44.483349, 40.478397>,  <40.077042, 44.549927, 40.328892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.252586, 44.483349, 40.478397>,  <40.545158, 44.372383, 40.727573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252586, 44.483349, 40.478397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126159, 0.952792, 0.276172,
		0.670145, 0.123411, -0.731898,
		-0.731430, 0.277411, -0.622939,
		40.033157, 44.566570, 40.291515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764370, 44.973820, 40.332745>,  <40.545158, 44.372383, 40.727573>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764370, 44.973820, 40.332745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.364697, 44.985699, 40.343666>,  <40.124893, 44.992825, 40.350220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.364697, 44.985699, 40.343666>,  <40.764370, 44.973820, 40.332745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364697, 44.985699, 40.343666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037004, 0.944270, 0.327085,
		-0.016071, 0.327829, -0.944600,
		-0.999186, 0.029697, 0.027307,
		40.064941, 44.994610, 40.351856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699421, 45.564449, 39.986622>,  <40.764370, 44.973820, 40.332745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699421, 45.564449, 39.986622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388184, 45.485558, 40.225178>,  <40.201443, 45.438221, 40.368309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388184, 45.485558, 40.225178>,  <40.699421, 45.564449, 39.986622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388184, 45.485558, 40.225178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162641, 0.980307, 0.112007,
		-0.606734, -0.009845, -0.794844,
		-0.778089, -0.197233, 0.596387,
		40.154758, 45.426388, 40.404095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283482, 46.169624, 39.867260>,  <40.699421, 45.564449, 39.986622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283482, 46.169624, 39.867260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.119846, 46.006866, 40.193962>,  <40.021667, 45.909214, 40.389984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.119846, 46.006866, 40.193962>,  <40.283482, 46.169624, 39.867260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119846, 46.006866, 40.193962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144787, 0.912682, 0.382162,
		-0.900936, 0.038082, -0.432278,
		-0.409086, -0.406892, 0.816754,
		39.997120, 45.884800, 40.438988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.980709, 46.752197, 39.352020>,  <40.283482, 46.169624, 39.867260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.980709, 46.752197, 39.352020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.873707, 46.833923, 38.975361>,  <39.809505, 46.882957, 38.749367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.873707, 46.833923, 38.975361>,  <39.980709, 46.752197, 39.352020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873707, 46.833923, 38.975361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108142, -0.977452, -0.181362,
		-0.957468, 0.053316, 0.283570,
		-0.267507, 0.204314, -0.941645,
		39.793457, 46.895218, 38.692867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576855, 46.183998, 39.203342>,  <39.980709, 46.752197, 39.352020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576855, 46.183998, 39.203342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.657726, 46.335201, 38.841961>,  <39.706249, 46.425922, 38.625130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.657726, 46.335201, 38.841961>,  <39.576855, 46.183998, 39.203342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657726, 46.335201, 38.841961> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102114, -0.909342, -0.403323,
		-0.974010, 0.173800, -0.145252,
		0.202182, 0.378009, -0.903456,
		39.718380, 46.448605, 38.570923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014343, 46.696468, 39.494907>,  <39.576855, 46.183998, 39.203342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014343, 46.696468, 39.494907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.684898, 46.867275, 39.345600>,  <38.487232, 46.969757, 39.256016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.684898, 46.867275, 39.345600>,  <39.014343, 46.696468, 39.494907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.684898, 46.867275, 39.345600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304152, -0.888036, -0.344796,
		-0.478705, -0.170448, 0.861272,
		-0.823610, 0.427013, -0.373265,
		38.437817, 46.995380, 39.233620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437527, 46.310364, 39.705654>,  <39.014343, 46.696468, 39.494907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437527, 46.310364, 39.705654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316856, 46.509155, 39.380199>,  <38.244453, 46.628429, 39.184925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.316856, 46.509155, 39.380199>,  <38.437527, 46.310364, 39.705654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316856, 46.509155, 39.380199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316161, -0.857256, -0.406391,
		-0.899463, 0.134643, 0.415737,
		-0.301675, 0.496974, -0.813639,
		38.226353, 46.658249, 39.136108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743393, 46.171219, 39.773117>,  <38.437527, 46.310364, 39.705654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743393, 46.171219, 39.773117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806530, 46.279408, 39.393238>,  <37.844414, 46.344322, 39.165310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806530, 46.279408, 39.393238>,  <37.743393, 46.171219, 39.773117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806530, 46.279408, 39.393238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317201, -0.896897, -0.308155,
		-0.935130, 0.349887, -0.055779,
		0.157847, 0.270472, -0.949700,
		37.853886, 46.360550, 39.108330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161137, 46.190884, 39.377510>,  <37.743393, 46.171219, 39.773117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161137, 46.190884, 39.377510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447662, 46.150902, 39.101280>,  <37.619579, 46.126911, 38.935543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.447662, 46.150902, 39.101280>,  <37.161137, 46.190884, 39.377510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447662, 46.150902, 39.101280> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370371, -0.893229, -0.254886,
		-0.591365, 0.438349, -0.676859,
		0.716319, -0.099958, -0.690576,
		37.662560, 46.120914, 38.894108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835213, 45.890469, 38.872467>,  <37.161137, 46.190884, 39.377510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835213, 45.890469, 38.872467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201748, 45.852890, 38.716770>,  <37.421669, 45.830345, 38.623352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.201748, 45.852890, 38.716770>,  <36.835213, 45.890469, 38.872467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201748, 45.852890, 38.716770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219312, -0.931064, -0.291586,
		-0.335013, 0.352554, -0.873769,
		0.916334, -0.093943, -0.389238,
		37.476646, 45.824707, 38.599998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752140, 45.752884, 38.129623>,  <36.835213, 45.890469, 38.872467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752140, 45.752884, 38.129623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125774, 45.636398, 38.212254>,  <37.349957, 45.566509, 38.261829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.125774, 45.636398, 38.212254>,  <36.752140, 45.752884, 38.129623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125774, 45.636398, 38.212254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199963, -0.906015, -0.373030,
		0.295789, 0.307136, -0.904531,
		0.934090, -0.291211, 0.206573,
		37.406002, 45.549034, 38.274227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.228653, 45.484970, 37.509678>,  <36.752140, 45.752884, 38.129623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.228653, 45.484970, 37.509678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.366306, 45.297401, 37.835052>,  <37.448898, 45.184860, 38.030277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.366306, 45.297401, 37.835052>,  <37.228653, 45.484970, 37.509678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366306, 45.297401, 37.835052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097805, -0.879545, -0.465656,
		0.933814, 0.080688, -0.348541,
		0.344131, -0.468925, 0.813439,
		37.469547, 45.156723, 38.079082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620262, 45.028790, 37.140919>,  <37.228653, 45.484970, 37.509678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620262, 45.028790, 37.140919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602558, 44.888657, 37.515152>,  <37.591934, 44.804577, 37.739693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.602558, 44.888657, 37.515152>,  <37.620262, 45.028790, 37.140919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602558, 44.888657, 37.515152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011266, -0.936614, -0.350182,
		0.998957, -0.004960, 0.045402,
		-0.044261, -0.350328, 0.935581,
		37.589279, 44.783558, 37.795826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120426, 44.553509, 37.232635>,  <37.620262, 45.028790, 37.140919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120426, 44.553509, 37.232635> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860649, 44.461163, 37.522442>,  <37.704781, 44.405754, 37.696327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.860649, 44.461163, 37.522442>,  <38.120426, 44.553509, 37.232635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860649, 44.461163, 37.522442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021638, -0.946800, -0.321094,
		0.760101, -0.224210, 0.609899,
		-0.649445, -0.230867, 0.724515,
		37.665817, 44.391903, 37.739796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411045, 43.995094, 37.592720>,  <38.120426, 44.553509, 37.232635>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411045, 43.995094, 37.592720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.017445, 43.989410, 37.663754>,  <37.781284, 43.986000, 37.706375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.017445, 43.989410, 37.663754>,  <38.411045, 43.995094, 37.592720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017445, 43.989410, 37.663754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013253, -0.988210, -0.152530,
		0.177658, -0.152443, 0.972213,
		-0.984003, -0.014214, 0.177583,
		37.722244, 43.985146, 37.717030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.399929, 43.403862, 37.917938>,  <38.411045, 43.995094, 37.592720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.399929, 43.403862, 37.917938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023602, 43.453655, 37.791851>,  <37.797806, 43.483532, 37.716198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.023602, 43.453655, 37.791851>,  <38.399929, 43.403862, 37.917938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023602, 43.453655, 37.791851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036241, -0.961721, -0.271622,
		-0.336963, -0.244124, 0.909318,
		-0.940820, 0.124481, -0.315217,
		37.741356, 43.491001, 37.697285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.038548, 42.792873, 38.117378>,  <38.399929, 43.403862, 37.917938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.038548, 42.792873, 38.117378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.809860, 42.957733, 37.833614>,  <37.672646, 43.056648, 37.663357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.809860, 42.957733, 37.833614>,  <38.038548, 42.792873, 38.117378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.809860, 42.957733, 37.833614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164522, -0.904695, -0.393013,
		-0.803782, -0.107980, 0.585042,
		-0.571723, 0.412150, -0.709413,
		37.638344, 43.081379, 37.620789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621628, 42.320362, 38.039371>,  <38.038548, 42.792873, 38.117378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621628, 42.320362, 38.039371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517029, 42.518314, 37.707901>,  <37.454269, 42.637085, 37.509018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.517029, 42.518314, 37.707901>,  <37.621628, 42.320362, 38.039371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517029, 42.518314, 37.707901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157122, -0.868927, -0.469339,
		-0.952331, 0.007474, 0.304977,
		-0.261494, 0.494884, -0.828680,
		37.438580, 42.666779, 37.459297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027390, 42.009750, 37.811508>,  <37.621628, 42.320362, 38.039371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027390, 42.009750, 37.811508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.203888, 42.192074, 37.502308>,  <37.309788, 42.301468, 37.316788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.203888, 42.192074, 37.502308>,  <37.027390, 42.009750, 37.811508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203888, 42.192074, 37.502308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026034, -0.854532, -0.518747,
		-0.897009, 0.249019, -0.365192,
		0.441246, 0.455813, -0.773005,
		37.336262, 42.328819, 37.270405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255291, 42.268867, 37.631081>,  <37.027390, 42.009750, 37.811508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255291, 42.268867, 37.631081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875046, 42.147823, 37.603470>,  <35.646900, 42.075199, 37.586903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.875046, 42.147823, 37.603470>,  <36.255291, 42.268867, 37.631081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875046, 42.147823, 37.603470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306025, 0.876668, 0.371217,
		-0.051815, 0.374008, -0.925977,
		-0.950613, -0.302606, -0.069031,
		35.589863, 42.057041, 37.582760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.956783, 42.741791, 37.230621>,  <36.255291, 42.268867, 37.631081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.956783, 42.741791, 37.230621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672104, 42.575130, 37.456856>,  <35.501297, 42.475136, 37.592598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672104, 42.575130, 37.456856>,  <35.956783, 42.741791, 37.230621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672104, 42.575130, 37.456856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278627, 0.906507, 0.317192,
		-0.644869, 0.068156, -0.761248,
		-0.711695, -0.416652, 0.565588,
		35.458595, 42.450134, 37.626534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340599, 43.132572, 37.007580>,  <35.956783, 42.741791, 37.230621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340599, 43.132572, 37.007580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303680, 42.986809, 37.378242>,  <35.281528, 42.899353, 37.600639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303680, 42.986809, 37.378242>,  <35.340599, 43.132572, 37.007580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303680, 42.986809, 37.378242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283047, 0.901839, 0.326452,
		-0.954655, -0.232156, -0.186382,
		-0.092299, -0.364404, 0.926656,
		35.275990, 42.877487, 37.656239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652859, 43.423172, 37.199734>,  <35.340599, 43.132572, 37.007580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652859, 43.423172, 37.199734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851147, 43.318104, 37.530857>,  <34.970119, 43.255062, 37.729530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.851147, 43.318104, 37.530857>,  <34.652859, 43.423172, 37.199734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851147, 43.318104, 37.530857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335972, 0.820953, 0.461691,
		-0.800863, -0.506991, 0.318716,
		0.495724, -0.262672, 0.827805,
		34.999863, 43.239304, 37.779198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176151, 43.498329, 37.719715>,  <34.652859, 43.423172, 37.199734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176151, 43.498329, 37.719715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504181, 43.485817, 37.948273>,  <34.701000, 43.478310, 38.085407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504181, 43.485817, 37.948273>,  <34.176151, 43.498329, 37.719715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504181, 43.485817, 37.948273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327629, 0.792996, 0.513630,
		-0.469181, -0.608423, 0.640071,
		0.820078, -0.031280, 0.571396,
		34.750206, 43.476433, 38.119690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822571, 43.705360, 38.302025>,  <34.176151, 43.498329, 37.719715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822571, 43.705360, 38.302025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218559, 43.743099, 38.344082>,  <34.456154, 43.765743, 38.369316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218559, 43.743099, 38.344082>,  <33.822571, 43.705360, 38.302025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218559, 43.743099, 38.344082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139392, 0.773135, 0.618734,
		-0.022915, -0.627185, 0.778533,
		0.989972, 0.094343, 0.105141,
		34.515553, 43.771400, 38.375626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937618, 43.814495, 39.077133>,  <33.822571, 43.705360, 38.302025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937618, 43.814495, 39.077133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227409, 43.979496, 38.856232>,  <34.401283, 44.078495, 38.723690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.227409, 43.979496, 38.856232>,  <33.937618, 43.814495, 39.077133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227409, 43.979496, 38.856232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139548, 0.872355, 0.468532,
		0.675029, -0.262374, 0.689562,
		0.724474, 0.412499, -0.552251,
		34.444752, 44.103245, 38.690556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205399, 43.340137, 39.412971>,  <33.937618, 43.814495, 39.077133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205399, 43.340137, 39.412971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121811, 43.148472, 39.753967>,  <34.071659, 43.033474, 39.958565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.121811, 43.148472, 39.753967>,  <34.205399, 43.340137, 39.412971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.121811, 43.148472, 39.753967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004518, -0.872196, -0.489136,
		0.977912, -0.098362, 0.184425,
		-0.208967, -0.479165, 0.852486,
		34.059120, 43.004723, 40.009712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.632896, 42.717079, 39.523472>,  <34.205399, 43.340137, 39.412971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.632896, 42.717079, 39.523472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291111, 42.639809, 39.716377>,  <34.086040, 42.593445, 39.832123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.291111, 42.639809, 39.716377>,  <34.632896, 42.717079, 39.523472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291111, 42.639809, 39.716377> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058014, -0.887008, -0.458095,
		0.516268, -0.419402, 0.746705,
		-0.854460, -0.193180, 0.482266,
		34.034775, 42.581856, 39.861057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662727, 41.968060, 39.591892>,  <34.632896, 42.717079, 39.523472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662727, 41.968060, 39.591892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283253, 42.047382, 39.690418>,  <34.055569, 42.094978, 39.749535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.283253, 42.047382, 39.690418>,  <34.662727, 41.968060, 39.591892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283253, 42.047382, 39.690418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280243, -0.888096, -0.364349,
		0.146493, -0.414679, 0.898098,
		-0.948685, 0.198311, 0.246311,
		33.998646, 42.106876, 39.764313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.411640, 41.422775, 40.052235>,  <34.662727, 41.968060, 39.591892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.411640, 41.422775, 40.052235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102161, 41.591045, 39.862740>,  <33.916473, 41.692005, 39.749043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.102161, 41.591045, 39.862740>,  <34.411640, 41.422775, 40.052235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102161, 41.591045, 39.862740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311761, -0.903743, -0.293350,
		-0.551543, -0.079270, 0.830371,
		-0.773696, 0.420672, -0.473739,
		33.870052, 41.717247, 39.720619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973049, 41.072067, 40.227379>,  <34.411640, 41.422775, 40.052235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973049, 41.072067, 40.227379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792660, 41.190922, 39.890728>,  <33.684425, 41.262234, 39.688740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.792660, 41.190922, 39.890728>,  <33.973049, 41.072067, 40.227379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792660, 41.190922, 39.890728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185230, -0.953585, -0.237414,
		-0.873103, 0.048826, 0.485084,
		-0.450977, 0.297139, -0.841622,
		33.657368, 41.280064, 39.638241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.364235, 40.617962, 40.171326>,  <33.973049, 41.072067, 40.227379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.364235, 40.617962, 40.171326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413128, 40.790382, 39.813721>,  <33.442463, 40.893833, 39.599159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.413128, 40.790382, 39.813721>,  <33.364235, 40.617962, 40.171326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413128, 40.790382, 39.813721> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342445, -0.827134, -0.445624,
		-0.931553, 0.360618, 0.046510,
		0.122230, 0.431049, -0.894011,
		33.449799, 40.919697, 39.545517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786671, 40.372726, 39.857605>,  <33.364235, 40.617962, 40.171326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786671, 40.372726, 39.857605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023285, 40.483688, 39.554783>,  <33.165253, 40.550266, 39.373089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.023285, 40.483688, 39.554783>,  <32.786671, 40.372726, 39.857605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023285, 40.483688, 39.554783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303938, -0.792961, -0.528048,
		-0.746801, 0.542455, -0.384746,
		0.591531, 0.277408, -0.757057,
		33.200745, 40.566910, 39.327667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.934490, 44.511936, 43.445496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171867, 44.555550, 43.126511>,  <38.314293, 44.581718, 42.935120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.171867, 44.555550, 43.126511>,  <37.934490, 44.511936, 43.445496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171867, 44.555550, 43.126511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200169, -0.939660, -0.277437,
		-0.779591, 0.324269, -0.535805,
		0.593439, 0.109036, -0.797459,
		38.349899, 44.588261, 42.887272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644722, 44.066891, 42.934345>,  <37.934490, 44.511936, 43.445496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644722, 44.066891, 42.934345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023712, 44.130535, 42.823364>,  <38.251106, 44.168724, 42.756775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.023712, 44.130535, 42.823364>,  <37.644722, 44.066891, 42.934345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023712, 44.130535, 42.823364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079566, -0.957461, -0.277376,
		-0.309785, 0.240730, -0.919827,
		0.947471, 0.159114, -0.277454,
		38.307953, 44.178268, 42.740128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673401, 43.807728, 42.284344>,  <37.644722, 44.066891, 42.934345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673401, 43.807728, 42.284344> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.043827, 43.794403, 42.434700>,  <38.266083, 43.786407, 42.524914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.043827, 43.794403, 42.434700>,  <37.673401, 43.807728, 42.284344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043827, 43.794403, 42.434700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104001, -0.934993, -0.339075,
		0.362752, 0.353099, -0.862399,
		0.926064, -0.033310, 0.375893,
		38.321648, 43.784409, 42.547466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037502, 43.546143, 41.659836>,  <37.673401, 43.807728, 42.284344>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037502, 43.546143, 41.659836> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.276932, 43.491493, 41.975567>,  <38.420589, 43.458702, 42.165005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.276932, 43.491493, 41.975567>,  <38.037502, 43.546143, 41.659836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276932, 43.491493, 41.975567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050869, -0.989843, -0.132753,
		0.799452, 0.039309, -0.599442,
		0.598572, -0.136623, 0.789332,
		38.456505, 43.450508, 42.212368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738525, 43.243256, 41.414627>,  <38.037502, 43.546143, 41.659836>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738525, 43.243256, 41.414627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.695004, 43.134300, 41.797035>,  <38.668892, 43.068928, 42.026478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.695004, 43.134300, 41.797035>,  <38.738525, 43.243256, 41.414627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695004, 43.134300, 41.797035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176362, -0.951759, -0.251100,
		0.978294, 0.141285, 0.151592,
		-0.108802, -0.272384, 0.956017,
		38.662361, 43.052586, 42.083839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260136, 42.723976, 41.513855>,  <38.738525, 43.243256, 41.414627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260136, 42.723976, 41.513855> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.035686, 42.688034, 41.842991>,  <38.901016, 42.666470, 42.040470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.035686, 42.688034, 41.842991>,  <39.260136, 42.723976, 41.513855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035686, 42.688034, 41.842991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035307, -0.990587, -0.132256,
		0.826976, -0.103264, 0.552673,
		-0.561127, -0.089859, 0.822838,
		38.867348, 42.661076, 42.089844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531151, 42.259186, 41.892292>,  <39.260136, 42.723976, 41.513855>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531151, 42.259186, 41.892292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151997, 42.255325, 42.019680>,  <38.924503, 42.253010, 42.096115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.151997, 42.255325, 42.019680>,  <39.531151, 42.259186, 41.892292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151997, 42.255325, 42.019680> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032477, -0.991409, -0.126700,
		0.316959, -0.130440, 0.939427,
		-0.947883, -0.009649, 0.318472,
		38.867630, 42.252430, 42.115223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479900, 41.683167, 42.317554>,  <39.531151, 42.259186, 41.892292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479900, 41.683167, 42.317554> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.096527, 41.762211, 42.235229>,  <38.866505, 41.809639, 42.185833>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.096527, 41.762211, 42.235229>,  <39.479900, 41.683167, 42.317554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096527, 41.762211, 42.235229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194869, -0.980249, -0.033730,
		-0.208414, 0.007779, 0.978010,
		-0.958431, 0.197613, -0.205814,
		38.808998, 41.821495, 42.173485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984951, 41.337490, 42.840710>,  <39.479900, 41.683167, 42.317554>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984951, 41.337490, 42.840710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747356, 41.386353, 42.522652>,  <38.604797, 41.415672, 42.331818>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.747356, 41.386353, 42.522652>,  <38.984951, 41.337490, 42.840710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.747356, 41.386353, 42.522652> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118866, -0.990882, -0.063435,
		-0.795642, 0.056835, 0.603095,
		-0.593990, 0.122159, -0.795143,
		38.569160, 41.423000, 42.284107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430096, 40.885571, 43.031376>,  <38.984951, 41.337490, 42.840710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430096, 40.885571, 43.031376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.367706, 40.957115, 42.642803>,  <38.330273, 41.000042, 42.409660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.367706, 40.957115, 42.642803>,  <38.430096, 40.885571, 43.031376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367706, 40.957115, 42.642803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104624, -0.980928, -0.163809,
		-0.982203, 0.076083, 0.171724,
		-0.155986, 0.178860, -0.971430,
		38.320915, 41.010773, 42.351372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890129, 40.384220, 42.849228>,  <38.430096, 40.885571, 43.031376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890129, 40.384220, 42.849228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.086185, 40.477264, 42.513214>,  <38.203819, 40.533089, 42.311607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.086185, 40.477264, 42.513214>,  <37.890129, 40.384220, 42.849228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086185, 40.477264, 42.513214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106037, -0.940666, -0.322342,
		-0.865169, 0.247068, -0.436395,
		0.490142, 0.232606, -0.840033,
		38.233227, 40.547047, 42.261204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677402, 40.087280, 42.391838>,  <37.890129, 40.384220, 42.849228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677402, 40.087280, 42.391838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.996387, 40.174313, 42.166729>,  <38.187778, 40.226532, 42.031662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.996387, 40.174313, 42.166729>,  <37.677402, 40.087280, 42.391838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996387, 40.174313, 42.166729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070501, -0.959930, -0.271226,
		-0.599240, 0.176616, -0.780844,
		0.797459, 0.217580, -0.562777,
		38.235626, 40.239586, 41.997894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291122, 40.546364, 41.904510>,  <37.677402, 40.087280, 42.391838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291122, 40.546364, 41.904510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.910496, 40.432884, 41.857105>,  <36.682121, 40.364796, 41.828663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.910496, 40.432884, 41.857105>,  <37.291122, 40.546364, 41.904510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910496, 40.432884, 41.857105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307386, 0.869631, 0.386337,
		-0.006541, 0.404052, -0.914713,
		-0.951562, -0.283697, -0.118512,
		36.625027, 40.347775, 41.821552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947788, 41.132133, 41.585072>,  <37.291122, 40.546364, 41.904510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947788, 41.132133, 41.585072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.634815, 40.937931, 41.741058>,  <36.447029, 40.821407, 41.834652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.634815, 40.937931, 41.741058>,  <36.947788, 41.132133, 41.585072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634815, 40.937931, 41.741058> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365949, 0.865165, 0.342885,
		-0.503860, 0.125578, -0.854608,
		-0.782436, -0.485510, 0.389967,
		36.400085, 40.792278, 41.858047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249950, 41.490009, 41.383148>,  <36.947788, 41.132133, 41.585072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249950, 41.490009, 41.383148> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.216560, 41.295639, 41.731152>,  <36.196526, 41.179016, 41.939953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.216560, 41.295639, 41.731152>,  <36.249950, 41.490009, 41.383148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216560, 41.295639, 41.731152> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330139, 0.837235, 0.435942,
		-0.940234, -0.250834, -0.230308,
		-0.083473, -0.485921, 0.870008,
		36.191517, 41.149864, 41.992153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650574, 41.746750, 41.720345>,  <36.249950, 41.490009, 41.383148>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650574, 41.746750, 41.720345> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.843357, 41.552425, 42.012016>,  <35.959026, 41.435829, 42.187019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.843357, 41.552425, 42.012016>,  <35.650574, 41.746750, 41.720345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843357, 41.552425, 42.012016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367383, 0.643480, 0.671538,
		-0.795456, -0.591539, 0.131648,
		0.481954, -0.485813, 0.729182,
		35.987942, 41.406681, 42.230770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133411, 41.738811, 42.271477>,  <35.650574, 41.746750, 41.720345>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133411, 41.738811, 42.271477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493290, 41.674465, 42.433796>,  <35.709217, 41.635857, 42.531189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.493290, 41.674465, 42.433796>,  <35.133411, 41.738811, 42.271477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493290, 41.674465, 42.433796> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156560, 0.748860, 0.643970,
		-0.407483, -0.642908, 0.648558,
		0.899692, -0.160868, 0.405802,
		35.763199, 41.626205, 42.555538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921993, 41.669521, 42.848232>,  <35.133411, 41.738811, 42.271477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921993, 41.669521, 42.848232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.306591, 41.777805, 42.867176>,  <35.537350, 41.842773, 42.878544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.306591, 41.777805, 42.867176>,  <34.921993, 41.669521, 42.848232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306591, 41.777805, 42.867176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225502, 0.678636, 0.699000,
		0.157082, -0.682767, 0.713551,
		0.961496, 0.270708, 0.047364,
		35.595039, 41.859016, 42.881386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979542, 41.752125, 43.581841>,  <34.921993, 41.669521, 42.848232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979542, 41.752125, 43.581841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.280113, 41.954277, 43.412159>,  <35.460457, 42.075569, 43.310349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.280113, 41.954277, 43.412159>,  <34.979542, 41.752125, 43.581841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280113, 41.954277, 43.412159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316790, 0.840292, 0.439947,
		0.578797, -0.196204, 0.791516,
		0.751424, 0.505385, -0.424203,
		35.505539, 42.105892, 43.284897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292561, 42.131458, 44.078018>,  <34.979542, 41.752125, 43.581841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292561, 42.131458, 44.078018> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409485, 42.323704, 43.747307>,  <35.479641, 42.439053, 43.548882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.409485, 42.323704, 43.747307>,  <35.292561, 42.131458, 44.078018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409485, 42.323704, 43.747307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214491, 0.875462, 0.433082,
		0.931960, 0.050743, 0.358994,
		0.292310, 0.480615, -0.826779,
		35.497177, 42.467888, 43.499271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601322, 42.677284, 44.362213>,  <35.292561, 42.131458, 44.078018>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601322, 42.677284, 44.362213> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.516579, 42.797840, 43.990349>,  <35.465733, 42.870174, 43.767231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.516579, 42.797840, 43.990349>,  <35.601322, 42.677284, 44.362213>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516579, 42.797840, 43.990349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160050, 0.927716, 0.337235,
		0.964105, 0.220240, -0.148308,
		-0.211860, 0.301393, -0.929665,
		35.453022, 42.888260, 43.711449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048981, 43.303818, 44.221329>,  <35.601322, 42.677284, 44.362213>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048981, 43.303818, 44.221329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.744915, 43.309380, 43.961494>,  <35.562477, 43.312717, 43.805595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.744915, 43.309380, 43.961494>,  <36.048981, 43.303818, 44.221329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744915, 43.309380, 43.961494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190392, 0.951119, 0.243155,
		0.621214, 0.308513, -0.720357,
		-0.760161, 0.013901, -0.649586,
		35.516869, 43.313549, 43.766617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940903, 43.945995, 44.049458>,  <36.048981, 43.303818, 44.221329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940903, 43.945995, 44.049458> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588558, 43.796368, 43.933422>,  <35.377151, 43.706593, 43.863800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.588558, 43.796368, 43.933422>,  <35.940903, 43.945995, 44.049458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588558, 43.796368, 43.933422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409821, 0.909332, 0.071848,
		0.236910, 0.182172, -0.954299,
		-0.880864, -0.374070, -0.290088,
		35.324299, 43.684147, 43.846397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672432, 44.446911, 43.553162>,  <35.940903, 43.945995, 44.049458>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672432, 44.446911, 43.553162> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367245, 44.228813, 43.692062>,  <35.184132, 44.097954, 43.775402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.367245, 44.228813, 43.692062>,  <35.672432, 44.446911, 43.553162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.367245, 44.228813, 43.692062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524802, 0.836102, 0.159737,
		-0.377432, -0.060363, -0.924068,
		-0.762973, -0.545243, 0.347251,
		35.138351, 44.065239, 43.796238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016472, 44.815369, 43.345943>,  <35.672432, 44.446911, 43.553162>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016472, 44.815369, 43.345943> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.884048, 44.546230, 43.610573>,  <34.804592, 44.384747, 43.769352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.884048, 44.546230, 43.610573>,  <35.016472, 44.815369, 43.345943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884048, 44.546230, 43.610573> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707384, 0.640981, 0.297912,
		-0.624505, -0.369359, -0.688163,
		-0.331063, -0.672843, 0.661574,
		34.784729, 44.344379, 43.809044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243912, 44.819080, 43.265739>,  <35.016472, 44.815369, 43.345943>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243912, 44.819080, 43.265739> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.339252, 44.675343, 43.626640>,  <34.396458, 44.589100, 43.843182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.339252, 44.675343, 43.626640>,  <34.243912, 44.819080, 43.265739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339252, 44.675343, 43.626640> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585008, 0.688442, 0.428735,
		-0.775211, -0.630015, -0.046126,
		0.238355, -0.359344, 0.902252,
		34.410759, 44.567539, 43.897316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672104, 44.993202, 42.651039>,  <34.243912, 44.819080, 43.265739>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672104, 44.993202, 42.651039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.356636, 45.092636, 42.426113>,  <34.167355, 45.152298, 42.291157>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.356636, 45.092636, 42.426113>,  <34.672104, 44.993202, 42.651039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356636, 45.092636, 42.426113> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174938, -0.786073, -0.592863,
		-0.589400, -0.565945, 0.576466,
		-0.788672, 0.248588, -0.562317,
		34.120033, 45.167213, 42.257420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.507233, 44.301777, 42.399532>,  <34.672104, 44.993202, 42.651039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.507233, 44.301777, 42.399532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.252617, 44.504787, 42.167244>,  <34.099850, 44.626595, 42.027870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.252617, 44.504787, 42.167244>,  <34.507233, 44.301777, 42.399532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252617, 44.504787, 42.167244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033630, -0.770513, -0.636536,
		-0.770513, -0.385648, 0.507527,
		0.636536, -0.507527, 0.580722,
		34.061657, 44.657047, 41.993027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950363, 43.856007, 42.377773>,  <34.507233, 44.301777, 42.399532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950363, 43.856007, 42.377773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956810, 44.109684, 42.068569>,  <33.960678, 44.261890, 41.883045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.956810, 44.109684, 42.068569>,  <33.950363, 43.856007, 42.377773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956810, 44.109684, 42.068569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157628, -0.761832, -0.628304,
		-0.987367, 0.131975, 0.087687,
		0.016118, 0.634189, -0.773010,
		33.961647, 44.299942, 41.836666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.379459, 43.801968, 41.853703>,  <33.950363, 43.856007, 42.377773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.379459, 43.801968, 41.853703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.661674, 43.982105, 41.634830>,  <33.831005, 44.090187, 41.503506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.661674, 43.982105, 41.634830>,  <33.379459, 43.801968, 41.853703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661674, 43.982105, 41.634830> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138124, -0.669927, -0.729466,
		-0.695079, 0.590246, -0.410457,
		0.705540, 0.450342, -0.547179,
		33.873337, 44.117207, 41.470676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165989, 43.886631, 41.115269>,  <33.379459, 43.801968, 41.853703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165989, 43.886631, 41.115269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564533, 43.906830, 41.087826>,  <33.803661, 43.918949, 41.071362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564533, 43.906830, 41.087826>,  <33.165989, 43.886631, 41.115269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564533, 43.906830, 41.087826> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013684, -0.700018, -0.713995,
		-0.084076, 0.712338, -0.696782,
		0.996365, 0.050495, -0.068603,
		33.863441, 43.921978, 41.067245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232727, 43.894253, 40.465782>,  <33.165989, 43.886631, 41.115269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232727, 43.894253, 40.465782> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.582359, 43.746880, 40.592422>,  <33.792137, 43.658455, 40.668407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.582359, 43.746880, 40.592422>,  <33.232727, 43.894253, 40.465782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582359, 43.746880, 40.592422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059369, -0.565833, -0.822380,
		0.482137, 0.737624, -0.472711,
		0.874082, -0.368435, 0.316601,
		33.844585, 43.636349, 40.687405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777710, 43.927555, 39.826675>,  <33.232727, 43.894253, 40.465782>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777710, 43.927555, 39.826675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870888, 43.638340, 40.086815>,  <33.926796, 43.464813, 40.242901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.870888, 43.638340, 40.086815>,  <33.777710, 43.927555, 39.826675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870888, 43.638340, 40.086815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229908, -0.608846, -0.759242,
		0.944923, 0.326382, 0.024405,
		0.232944, -0.723036, 0.650351,
		33.940769, 43.421429, 40.281921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532925, 44.078445, 39.522243>,  <33.777710, 43.927555, 39.826675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532925, 44.078445, 39.522243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585411, 44.274902, 39.177788>,  <34.616905, 44.392776, 38.971115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585411, 44.274902, 39.177788>,  <34.532925, 44.078445, 39.522243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585411, 44.274902, 39.177788> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003102, 0.868849, 0.495068,
		0.991348, -0.062292, 0.115534,
		0.131221, 0.491143, -0.861139,
		34.624779, 44.422245, 38.919445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030834, 44.675266, 39.734066>,  <34.532925, 44.078445, 39.522243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030834, 44.675266, 39.734066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875942, 44.772583, 39.378345>,  <34.783009, 44.830975, 39.164913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.875942, 44.772583, 39.378345>,  <35.030834, 44.675266, 39.734066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875942, 44.772583, 39.378345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126452, 0.969454, 0.210163,
		0.913271, -0.031073, -0.406166,
		-0.387228, 0.243297, -0.889304,
		34.759773, 44.845573, 39.111553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539631, 45.177071, 39.373787>,  <35.030834, 44.675266, 39.734066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539631, 45.177071, 39.373787> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192844, 45.238419, 39.184116>,  <34.984772, 45.275227, 39.070316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.192844, 45.238419, 39.184116>,  <35.539631, 45.177071, 39.373787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192844, 45.238419, 39.184116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136932, 0.988156, 0.069260,
		0.479180, -0.004882, -0.877703,
		-0.866970, 0.153373, -0.474173,
		34.932755, 45.284431, 39.041866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747162, 45.758064, 38.916969>,  <35.539631, 45.177071, 39.373787>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747162, 45.758064, 38.916969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.348904, 45.734608, 38.945953>,  <35.109947, 45.720535, 38.963345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.348904, 45.734608, 38.945953>,  <35.747162, 45.758064, 38.916969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348904, 45.734608, 38.945953> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040725, 0.972863, 0.227767,
		-0.083849, 0.223825, -0.971016,
		-0.995646, -0.058643, 0.072459,
		35.050209, 45.717014, 38.967690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524120, 46.286751, 38.489189>,  <35.747162, 45.758064, 38.916969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524120, 46.286751, 38.489189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.237579, 46.219841, 38.760143>,  <35.065655, 46.179695, 38.922718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.237579, 46.219841, 38.760143>,  <35.524120, 46.286751, 38.489189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237579, 46.219841, 38.760143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035746, 0.960764, 0.275054,
		-0.696819, 0.221250, -0.682269,
		-0.716355, -0.167274, 0.677388,
		35.022675, 46.169659, 38.963360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079670, 46.862610, 38.340553>,  <35.524120, 46.286751, 38.489189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079670, 46.862610, 38.340553> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.966560, 46.714050, 38.694298>,  <34.898697, 46.624912, 38.906544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.966560, 46.714050, 38.694298>,  <35.079670, 46.862610, 38.340553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966560, 46.714050, 38.694298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365087, 0.894270, 0.258827,
		-0.886990, -0.249682, -0.388468,
		-0.282771, -0.371402, 0.884365,
		34.881729, 46.602631, 38.959606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496334, 47.162857, 38.397549>,  <35.079670, 46.862610, 38.340553>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496334, 47.162857, 38.397549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585735, 47.063663, 38.774601>,  <34.639374, 47.004147, 39.000832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.585735, 47.063663, 38.774601>,  <34.496334, 47.162857, 38.397549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585735, 47.063663, 38.774601> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397486, 0.859836, 0.320448,
		-0.889973, -0.446302, 0.093603,
		0.223500, -0.247985, 0.942630,
		34.652786, 46.989269, 39.057388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913895, 47.474384, 38.739666>,  <34.496334, 47.162857, 38.397549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913895, 47.474384, 38.739666> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220196, 47.426510, 38.992428>,  <34.403976, 47.397785, 39.144085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.220196, 47.426510, 38.992428>,  <33.913895, 47.474384, 38.739666>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220196, 47.426510, 38.992428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160138, 0.916103, 0.367576,
		-0.622884, -0.382662, 0.682338,
		0.765749, -0.119689, 0.631904,
		34.449921, 47.390602, 39.181999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.729683, 47.810226, 39.337799>,  <33.913895, 47.474384, 38.739666>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.729683, 47.810226, 39.337799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.127804, 47.775307, 39.321030>,  <34.366676, 47.754356, 39.310966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.127804, 47.775307, 39.321030>,  <33.729683, 47.810226, 39.337799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127804, 47.775307, 39.321030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096815, 0.907796, 0.408084,
		0.002433, -0.410225, 0.911981,
		0.995299, -0.087301, -0.041925,
		34.426395, 47.749115, 39.308453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.758980, 32.653553, 33.413540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122784, 32.793587, 33.503189>,  <36.341064, 32.877605, 33.556980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122784, 32.793587, 33.503189>,  <35.758980, 32.653553, 33.413540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122784, 32.793587, 33.503189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412458, 0.827053, 0.381918,
		-0.051660, -0.439801, 0.896608,
		0.909511, 0.350083, 0.224124,
		36.395638, 32.898613, 33.570427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862484, 32.872368, 34.158836>,  <35.758980, 32.653553, 33.413540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862484, 32.872368, 34.158836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126301, 33.070492, 33.932674>,  <36.284592, 33.189365, 33.796978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.126301, 33.070492, 33.932674>,  <35.862484, 32.872368, 34.158836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126301, 33.070492, 33.932674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334149, 0.866980, 0.369716,
		0.673316, -0.054913, 0.737313,
		0.659538, 0.495308, -0.565402,
		36.324162, 33.219086, 33.763054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133953, 33.358440, 34.594383>,  <35.862484, 32.872368, 34.158836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133953, 33.358440, 34.594383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202477, 33.488159, 34.222256>,  <36.243591, 33.565990, 33.998981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202477, 33.488159, 34.222256>,  <36.133953, 33.358440, 34.594383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202477, 33.488159, 34.222256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340748, 0.905501, 0.252900,
		0.924415, 0.273677, 0.265626,
		0.171312, 0.324296, -0.930314,
		36.253868, 33.585449, 33.943161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.355324, 34.004276, 34.629333>,  <36.133953, 33.358440, 34.594383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.355324, 34.004276, 34.629333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253643, 33.984188, 34.242996>,  <36.192635, 33.972134, 34.011192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.253643, 33.984188, 34.242996>,  <36.355324, 34.004276, 34.629333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253643, 33.984188, 34.242996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297608, 0.954256, 0.028712,
		0.920223, 0.294742, -0.257522,
		-0.254205, -0.050219, -0.965846,
		36.177383, 33.969124, 33.953243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.657238, 34.647934, 34.252014>,  <36.355324, 34.004276, 34.629333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.657238, 34.647934, 34.252014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355469, 34.492504, 34.040409>,  <36.174408, 34.399246, 33.913445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.355469, 34.492504, 34.040409>,  <36.657238, 34.647934, 34.252014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355469, 34.492504, 34.040409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397398, 0.911842, -0.103048,
		0.522418, 0.132487, -0.842334,
		-0.754423, -0.388576, -0.529013,
		36.129143, 34.375931, 33.881706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691814, 34.980545, 33.598843>,  <36.657238, 34.647934, 34.252014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691814, 34.980545, 33.598843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325340, 34.829895, 33.653625>,  <36.105457, 34.739506, 33.686497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325340, 34.829895, 33.653625>,  <36.691814, 34.980545, 33.598843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325340, 34.829895, 33.653625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393489, 0.910200, -0.129236,
		-0.075987, -0.172296, -0.982110,
		-0.916183, -0.376629, 0.136960,
		36.050484, 34.716908, 33.694714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.376774, 35.514080, 33.364170>,  <36.691814, 34.980545, 33.598843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.376774, 35.514080, 33.364170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085567, 35.299133, 33.534454>,  <35.910843, 35.170166, 33.636623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.085567, 35.299133, 33.534454>,  <36.376774, 35.514080, 33.364170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085567, 35.299133, 33.534454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566522, 0.821250, 0.067828,
		-0.386061, -0.191792, -0.902315,
		-0.728018, -0.537368, 0.425707,
		35.867161, 35.137924, 33.662167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618999, 35.659748, 33.043423>,  <36.376774, 35.514080, 33.364170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618999, 35.659748, 33.043423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584324, 35.548393, 33.426041>,  <35.563519, 35.481579, 33.655613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.584324, 35.548393, 33.426041>,  <35.618999, 35.659748, 33.043423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584324, 35.548393, 33.426041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539243, 0.820458, 0.189913,
		-0.837677, -0.499349, -0.221240,
		-0.086685, -0.278388, 0.956549,
		35.558319, 35.464878, 33.713005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073772, 36.024879, 33.087196>,  <35.618999, 35.659748, 33.043423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073772, 36.024879, 33.087196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201359, 35.919598, 33.451389>,  <35.277912, 35.856430, 33.669907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201359, 35.919598, 33.451389>,  <35.073772, 36.024879, 33.087196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201359, 35.919598, 33.451389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345389, 0.862322, 0.370279,
		-0.882591, -0.432578, 0.184143,
		0.318966, -0.263204, 0.910486,
		35.297047, 35.840637, 33.724537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453644, 36.148335, 33.540062>,  <35.073772, 36.024879, 33.087196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453644, 36.148335, 33.540062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787079, 36.134659, 33.760593>,  <34.987141, 36.126453, 33.892914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.787079, 36.134659, 33.760593>,  <34.453644, 36.148335, 33.540062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787079, 36.134659, 33.760593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248974, 0.867698, 0.430246,
		-0.493095, -0.495914, 0.714791,
		0.833588, -0.034188, 0.551327,
		35.037155, 36.124401, 33.925991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260479, 36.506691, 34.029236>,  <34.453644, 36.148335, 33.540062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260479, 36.506691, 34.029236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658081, 36.497433, 34.071980>,  <34.896641, 36.491879, 34.097626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.658081, 36.497433, 34.071980>,  <34.260479, 36.506691, 34.029236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.658081, 36.497433, 34.071980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025156, 0.902703, 0.429529,
		-0.106400, -0.429642, 0.896709,
		0.994005, -0.023144, 0.106856,
		34.956284, 36.490490, 34.104034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337753, 36.604279, 34.733486>,  <34.260479, 36.506691, 34.029236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337753, 36.604279, 34.733486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689434, 36.691830, 34.564209>,  <34.900444, 36.744362, 34.462643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689434, 36.691830, 34.564209>,  <34.337753, 36.604279, 34.733486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689434, 36.691830, 34.564209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016142, 0.901406, 0.432674,
		0.476175, -0.373576, 0.796051,
		0.879202, 0.218878, -0.423197,
		34.953194, 36.757492, 34.437248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279186, 36.240135, 35.372795>,  <34.337753, 36.604279, 34.733486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279186, 36.240135, 35.372795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960739, 36.157333, 35.600246>,  <33.769669, 36.107651, 35.736717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960739, 36.157333, 35.600246>,  <34.279186, 36.240135, 35.372795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960739, 36.157333, 35.600246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013299, -0.933457, -0.358442,
		0.604993, -0.292925, 0.740391,
		-0.796120, -0.207008, 0.568630,
		33.721905, 36.095230, 35.770836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470352, 35.630886, 35.797359>,  <34.279186, 36.240135, 35.372795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470352, 35.630886, 35.797359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075901, 35.672329, 35.745487>,  <33.839230, 35.697193, 35.714363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.075901, 35.672329, 35.745487>,  <34.470352, 35.630886, 35.797359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075901, 35.672329, 35.745487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043853, -0.916137, -0.398459,
		-0.160086, -0.387245, 0.907972,
		-0.986128, 0.103605, -0.129679,
		33.780064, 35.703411, 35.706585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124035, 34.958324, 36.041634>,  <34.470352, 35.630886, 35.797359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124035, 34.958324, 36.041634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862286, 35.151257, 35.808685>,  <33.705238, 35.267014, 35.668915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862286, 35.151257, 35.808685>,  <34.124035, 34.958324, 36.041634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862286, 35.151257, 35.808685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208574, -0.855410, -0.474100,
		-0.726841, -0.188769, 0.660355,
		-0.654370, 0.482328, -0.582374,
		33.665974, 35.295956, 35.633972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457443, 34.763794, 36.174793>,  <34.124035, 34.958324, 36.041634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457443, 34.763794, 36.174793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428715, 34.885582, 35.794868>,  <33.411476, 34.958656, 35.566914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.428715, 34.885582, 35.794868>,  <33.457443, 34.763794, 36.174793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428715, 34.885582, 35.794868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327811, -0.906574, -0.265824,
		-0.942009, 0.292265, 0.164925,
		-0.071826, 0.304473, -0.949809,
		33.407166, 34.976925, 35.509926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887871, 34.385429, 35.870869>,  <33.457443, 34.763794, 36.174793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887871, 34.385429, 35.870869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065132, 34.529671, 35.542580>,  <33.171490, 34.616215, 35.345608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.065132, 34.529671, 35.542580>,  <32.887871, 34.385429, 35.870869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.065132, 34.529671, 35.542580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274541, -0.816940, -0.507184,
		-0.853370, 0.450083, -0.263031,
		0.443156, 0.360603, -0.820718,
		33.198078, 34.637852, 35.296364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350159, 34.174385, 35.311264>,  <32.887871, 34.385429, 35.870869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350159, 34.174385, 35.311264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689011, 34.276031, 35.124588>,  <32.892323, 34.337017, 35.012581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.689011, 34.276031, 35.124588>,  <32.350159, 34.174385, 35.311264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689011, 34.276031, 35.124588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023301, -0.859641, -0.510367,
		-0.530877, 0.443221, -0.722305,
		0.847128, 0.254112, -0.466691,
		32.943150, 34.352264, 34.984581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.292660, 34.117176, 34.511677>,  <32.350159, 34.174385, 35.311264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.292660, 34.117176, 34.511677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686260, 34.122646, 34.582722>,  <32.922421, 34.125927, 34.625351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.686260, 34.122646, 34.582722>,  <32.292660, 34.117176, 34.511677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686260, 34.122646, 34.582722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119810, -0.788665, -0.603036,
		0.131831, 0.614671, -0.777689,
		0.984005, 0.013676, 0.177615,
		32.981461, 34.126751, 34.636005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513382, 33.856575, 33.892521>,  <32.292660, 34.117176, 34.511677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513382, 33.856575, 33.892521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804623, 33.817062, 34.163849>,  <32.979366, 33.793354, 34.326645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804623, 33.817062, 34.163849>,  <32.513382, 33.856575, 33.892521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804623, 33.817062, 34.163849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315003, -0.830671, -0.459085,
		0.608805, 0.547932, -0.573697,
		0.728100, -0.098777, 0.678316,
		33.023052, 33.787430, 34.367344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.157494, 33.699104, 33.542816>,  <32.513382, 33.856575, 33.892521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.157494, 33.699104, 33.542816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166058, 33.556145, 33.916298>,  <33.171196, 33.470371, 34.140388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166058, 33.556145, 33.916298>,  <33.157494, 33.699104, 33.542816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166058, 33.556145, 33.916298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294116, -0.890343, -0.347542,
		0.955530, 0.282058, 0.086055,
		0.021408, -0.357397, 0.933707,
		33.172482, 33.448925, 34.196411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.865452, 33.265278, 33.552853>,  <33.157494, 33.699104, 33.542816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.865452, 33.265278, 33.552853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619087, 33.162807, 33.850853>,  <33.471268, 33.101326, 34.029652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619087, 33.162807, 33.850853>,  <33.865452, 33.265278, 33.552853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619087, 33.162807, 33.850853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101922, -0.963619, -0.247084,
		0.781192, -0.076251, 0.619617,
		-0.615915, -0.256172, 0.745000,
		33.434311, 33.085957, 34.074352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107693, 32.637630, 33.773190>,  <33.865452, 33.265278, 33.552853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107693, 32.637630, 33.773190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759335, 32.636692, 33.969776>,  <33.550320, 32.636131, 34.087730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759335, 32.636692, 33.969776>,  <34.107693, 32.637630, 33.773190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759335, 32.636692, 33.969776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012135, -0.999581, -0.026266,
		0.491324, -0.028839, 0.870499,
		-0.870892, -0.002342, 0.491469,
		33.498066, 32.635990, 34.117218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.148647, 32.059750, 34.304962>,  <34.107693, 32.637630, 33.773190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.148647, 32.059750, 34.304962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759861, 32.137207, 34.251610>,  <33.526588, 32.183681, 34.219597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.759861, 32.137207, 34.251610>,  <34.148647, 32.059750, 34.304962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.759861, 32.137207, 34.251610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171619, -0.971996, -0.160533,
		-0.160731, -0.133142, 0.977977,
		-0.971963, 0.193642, -0.133380,
		33.468273, 32.195301, 34.211597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818718, 31.703821, 34.244656>,  <34.148647, 32.059750, 34.304962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818718, 31.703821, 34.244656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968842, 31.347940, 34.140678>,  <35.058914, 31.134411, 34.078293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968842, 31.347940, 34.140678>,  <34.818718, 31.703821, 34.244656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968842, 31.347940, 34.140678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811960, 0.180312, 0.555165,
		-0.447061, -0.419424, 0.790076,
		0.375310, -0.889703, -0.259946,
		35.081436, 31.081030, 34.062695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976078, 31.292305, 34.836575>,  <34.818718, 31.703821, 34.244656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976078, 31.292305, 34.836575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220726, 31.199100, 34.534149>,  <35.367516, 31.143179, 34.352695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.220726, 31.199100, 34.534149>,  <34.976078, 31.292305, 34.836575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.220726, 31.199100, 34.534149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791029, 0.163404, 0.589552,
		-0.013829, -0.958648, 0.284259,
		0.611621, -0.233010, -0.756059,
		35.404213, 31.129198, 34.307331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575874, 30.695066, 34.955830>,  <34.976078, 31.292305, 34.836575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575874, 30.695066, 34.955830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707050, 30.966259, 34.692680>,  <35.785755, 31.128975, 34.534790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.707050, 30.966259, 34.692680>,  <35.575874, 30.695066, 34.955830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707050, 30.966259, 34.692680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769797, 0.211886, 0.602093,
		0.547602, -0.703880, -0.452422,
		0.327940, 0.677981, -0.657874,
		35.805431, 31.169653, 34.495319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483498, 30.683804, 35.682804>,  <35.575874, 30.695066, 34.955830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483498, 30.683804, 35.682804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605755, 30.983709, 35.448051>,  <35.679111, 31.163652, 35.307198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.605755, 30.983709, 35.448051>,  <35.483498, 30.683804, 35.682804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.605755, 30.983709, 35.448051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739930, 0.574959, 0.349178,
		0.599236, 0.327529, 0.730508,
		0.305646, 0.749765, -0.586884,
		35.697449, 31.208639, 35.271988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538639, 31.245527, 36.113071>,  <35.483498, 30.683804, 35.682804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538639, 31.245527, 36.113071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447556, 31.317327, 35.730255>,  <35.392906, 31.360407, 35.500565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447556, 31.317327, 35.730255>,  <35.538639, 31.245527, 36.113071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447556, 31.317327, 35.730255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735265, 0.612674, 0.289854,
		0.638384, 0.769682, -0.007532,
		-0.227710, 0.179500, -0.957041,
		35.379242, 31.371178, 35.443142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.979584, 31.508272, 36.596176>,  <35.538639, 31.245527, 36.113071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.979584, 31.508272, 36.596176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221382, 31.808483, 36.489372>,  <35.366463, 31.988609, 36.425289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.221382, 31.808483, 36.489372>,  <34.979584, 31.508272, 36.596176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.221382, 31.808483, 36.489372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328722, 0.540332, 0.774585,
		0.725620, -0.380462, 0.573344,
		0.604497, 0.750526, -0.267010,
		35.402733, 32.033642, 36.409267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309921, 31.766819, 37.234325>,  <34.979584, 31.508272, 36.596176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309921, 31.766819, 37.234325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354801, 32.048462, 36.953857>,  <35.381729, 32.217449, 36.785576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354801, 32.048462, 36.953857>,  <35.309921, 31.766819, 37.234325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354801, 32.048462, 36.953857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246597, 0.703285, 0.666768,
		0.962601, 0.098093, 0.252542,
		0.112204, 0.704108, -0.701173,
		35.388462, 32.259693, 36.743507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708843, 32.225143, 37.507027>,  <35.309921, 31.766819, 37.234325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708843, 32.225143, 37.507027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511219, 32.438015, 37.232018>,  <35.392643, 32.565739, 37.067013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511219, 32.438015, 37.232018>,  <35.708843, 32.225143, 37.507027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511219, 32.438015, 37.232018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217357, 0.690065, 0.690337,
		0.841819, 0.490508, -0.225262,
		-0.494061, 0.532177, -0.687526,
		35.362999, 32.597668, 37.025761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063862, 32.956898, 37.508541>,  <35.708843, 32.225143, 37.507027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063862, 32.956898, 37.508541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701942, 33.000446, 37.343868>,  <35.484791, 33.026573, 37.245064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.701942, 33.000446, 37.343868>,  <36.063862, 32.956898, 37.508541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701942, 33.000446, 37.343868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092706, 0.893219, 0.439961,
		0.415619, 0.436243, -0.798093,
		-0.904802, 0.108868, -0.411681,
		35.430500, 33.033108, 37.220364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025574, 33.654079, 37.422672>,  <36.063862, 32.956898, 37.508541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025574, 33.654079, 37.422672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653275, 33.509464, 37.400772>,  <35.429893, 33.422695, 37.387634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653275, 33.509464, 37.400772>,  <36.025574, 33.654079, 37.422672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653275, 33.509464, 37.400772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329078, 0.762920, 0.556472,
		-0.159419, 0.535952, -0.829060,
		-0.930749, -0.361538, -0.054746,
		35.374050, 33.401005, 37.384350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550415, 34.171135, 37.086037>,  <36.025574, 33.654079, 37.422672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550415, 34.171135, 37.086037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299843, 33.951256, 37.307095>,  <35.149502, 33.819328, 37.439732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299843, 33.951256, 37.307095>,  <35.550415, 34.171135, 37.086037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299843, 33.951256, 37.307095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194085, 0.796662, 0.572416,
		-0.754930, 0.251317, -0.605740,
		-0.626428, -0.549699, 0.552647,
		35.111916, 33.786346, 37.472889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987434, 34.538162, 37.063225>,  <35.550415, 34.171135, 37.086037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987434, 34.538162, 37.063225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925476, 34.295944, 37.375462>,  <34.888302, 34.150612, 37.562801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925476, 34.295944, 37.375462>,  <34.987434, 34.538162, 37.063225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925476, 34.295944, 37.375462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289924, 0.783199, 0.550039,
		-0.944431, -0.141112, -0.296879,
		-0.154898, -0.605547, 0.780590,
		34.879005, 34.114281, 37.609638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319363, 34.662094, 37.372517>,  <34.987434, 34.538162, 37.063225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319363, 34.662094, 37.372517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533146, 34.497421, 37.667778>,  <34.661415, 34.398617, 37.844936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533146, 34.497421, 37.667778>,  <34.319363, 34.662094, 37.372517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533146, 34.497421, 37.667778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208288, 0.782264, 0.587094,
		-0.819130, -0.467524, 0.332336,
		0.534455, -0.411685, 0.738155,
		34.693481, 34.373917, 37.889225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869740, 34.658104, 37.980652>,  <34.319363, 34.662094, 37.372517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869740, 34.658104, 37.980652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231327, 34.604244, 38.142986>,  <34.448280, 34.571930, 38.240387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.231327, 34.604244, 38.142986>,  <33.869740, 34.658104, 37.980652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231327, 34.604244, 38.142986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163511, 0.768138, 0.619055,
		-0.395092, -0.625967, 0.672359,
		0.903973, -0.134646, 0.405838,
		34.502518, 34.563850, 38.264736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791100, 34.672020, 38.735912>,  <33.869740, 34.658104, 37.980652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791100, 34.672020, 38.735912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167591, 34.778965, 38.653343>,  <34.393486, 34.843132, 38.603802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167591, 34.778965, 38.653343>,  <33.791100, 34.672020, 38.735912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167591, 34.778965, 38.653343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082931, 0.775337, 0.626079,
		0.327435, -0.572164, 0.751940,
		0.941227, 0.267360, -0.206422,
		34.449959, 34.859173, 38.591415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019180, 34.795769, 39.349934>,  <33.791100, 34.672020, 38.735912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019180, 34.795769, 39.349934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227642, 34.991241, 39.070049>,  <34.352718, 35.108524, 38.902119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227642, 34.991241, 39.070049>,  <34.019180, 34.795769, 39.349934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227642, 34.991241, 39.070049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009544, 0.816455, 0.577330,
		0.853411, -0.307554, 0.420832,
		0.521151, 0.488683, -0.699708,
		34.383987, 35.137848, 38.860138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289928, 35.322056, 39.797943>,  <34.019180, 34.795769, 39.349934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289928, 35.322056, 39.797943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412807, 35.445629, 39.437901>,  <34.486534, 35.519775, 39.221874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412807, 35.445629, 39.437901>,  <34.289928, 35.322056, 39.797943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412807, 35.445629, 39.437901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243384, 0.888879, 0.388147,
		0.919998, -0.338307, 0.197868,
		0.307193, 0.308936, -0.900106,
		34.504967, 35.538311, 39.167870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.839401, 35.672985, 40.002487>,  <34.289928, 35.322056, 39.797943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.839401, 35.672985, 40.002487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774742, 35.801483, 39.629250>,  <34.735947, 35.878582, 39.405308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774742, 35.801483, 39.629250>,  <34.839401, 35.672985, 40.002487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774742, 35.801483, 39.629250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348695, 0.903133, 0.250524,
		0.923190, -0.284870, -0.258009,
		-0.161650, 0.321247, -0.933097,
		34.726246, 35.897858, 39.349319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414291, 35.950127, 39.865608>,  <34.839401, 35.672985, 40.002487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414291, 35.950127, 39.865608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150280, 36.116154, 39.615143>,  <34.991871, 36.215771, 39.464863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.150280, 36.116154, 39.615143>,  <35.414291, 35.950127, 39.865608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150280, 36.116154, 39.615143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359798, 0.906348, 0.221536,
		0.659473, -0.079071, -0.747558,
		-0.660031, 0.415067, -0.626162,
		34.952271, 36.240673, 39.427296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.745029, 36.342278, 39.464493>,  <35.414291, 35.950127, 39.865608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.745029, 36.342278, 39.464493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381927, 36.507145, 39.433235>,  <35.164066, 36.606064, 39.414482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.381927, 36.507145, 39.433235>,  <35.745029, 36.342278, 39.464493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381927, 36.507145, 39.433235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383585, 0.890905, 0.243208,
		0.169858, 0.190799, -0.966821,
		-0.907750, 0.412169, -0.078140,
		35.109604, 36.630795, 39.409794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779945, 36.822018, 38.939232>,  <35.745029, 36.342278, 39.464493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779945, 36.822018, 38.939232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453472, 36.922646, 39.147293>,  <35.257587, 36.983021, 39.272129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453472, 36.922646, 39.147293>,  <35.779945, 36.822018, 38.939232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453472, 36.922646, 39.147293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423868, 0.872483, 0.243124,
		-0.392666, 0.418911, -0.818735,
		-0.816180, 0.251569, 0.520157,
		35.208618, 36.998116, 39.303341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718521, 37.487209, 38.764015>,  <35.779945, 36.822018, 38.939232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718521, 37.487209, 38.764015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524055, 37.458984, 39.112423>,  <35.407375, 37.442051, 39.321468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524055, 37.458984, 39.112423>,  <35.718521, 37.487209, 38.764015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524055, 37.458984, 39.112423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414337, 0.858962, 0.300846,
		-0.769396, 0.507154, -0.388360,
		-0.486162, -0.070558, 0.871015,
		35.378208, 37.437817, 39.373726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470463, 38.214302, 38.918404>,  <35.718521, 37.487209, 38.764015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470463, 38.214302, 38.918404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474194, 38.019299, 39.267632>,  <35.476433, 37.902298, 39.477169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474194, 38.019299, 39.267632>,  <35.470463, 38.214302, 38.918404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474194, 38.019299, 39.267632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370458, 0.812665, 0.449818,
		-0.928802, 0.319242, 0.188177,
		0.009324, -0.487504, 0.873071,
		35.476990, 37.873047, 39.529552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108288, 38.711666, 39.452435>,  <35.470463, 38.214302, 38.918404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108288, 38.711666, 39.452435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329235, 38.465622, 39.677475>,  <35.461803, 38.317997, 39.812500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.329235, 38.465622, 39.677475>,  <35.108288, 38.711666, 39.452435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.329235, 38.465622, 39.677475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277525, 0.772109, 0.571689,
		-0.786044, -0.159648, 0.597199,
		0.552371, -0.615111, 0.562605,
		35.494946, 38.281090, 39.846256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944061, 38.982204, 40.030128>,  <35.108288, 38.711666, 39.452435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944061, 38.982204, 40.030128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269958, 38.764679, 40.110596>,  <35.465496, 38.634163, 40.158875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.269958, 38.764679, 40.110596>,  <34.944061, 38.982204, 40.030128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269958, 38.764679, 40.110596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272956, 0.665813, 0.694398,
		-0.511562, -0.510843, 0.690900,
		0.814739, -0.543813, 0.201167,
		35.514381, 38.601536, 40.170944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985149, 38.899979, 40.739185>,  <34.944061, 38.982204, 40.030128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985149, 38.899979, 40.739185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365704, 38.807098, 40.658241>,  <35.594036, 38.751369, 40.609676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.365704, 38.807098, 40.658241>,  <34.985149, 38.899979, 40.739185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365704, 38.807098, 40.658241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301088, 0.562677, 0.769897,
		-0.064907, -0.793396, 0.605235,
		0.951385, -0.232201, -0.202361,
		35.651119, 38.737438, 40.597534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293755, 38.655701, 41.350765>,  <34.985149, 38.899979, 40.739185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293755, 38.655701, 41.350765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615467, 38.759632, 41.136990>,  <35.808495, 38.821991, 41.008724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615467, 38.759632, 41.136990>,  <35.293755, 38.655701, 41.350765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615467, 38.759632, 41.136990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362153, 0.498726, 0.787475,
		0.471151, -0.826897, 0.307014,
		0.804277, 0.259834, -0.534439,
		35.856750, 38.837582, 40.976658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735332, 38.722721, 41.812588>,  <35.293755, 38.655701, 41.350765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735332, 38.722721, 41.812588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941246, 38.923599, 41.534653>,  <36.064793, 39.044125, 41.367889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.941246, 38.923599, 41.534653>,  <35.735332, 38.722721, 41.812588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941246, 38.923599, 41.534653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396626, 0.579024, 0.712333,
		0.760057, -0.642289, 0.098890,
		0.514783, 0.502191, -0.694840,
		36.095680, 39.074257, 41.326202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439648, 38.771725, 42.057281>,  <35.735332, 38.722721, 41.812588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439648, 38.771725, 42.057281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378803, 39.072048, 41.800175>,  <36.342297, 39.252243, 41.645912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.378803, 39.072048, 41.800175>,  <36.439648, 38.771725, 42.057281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378803, 39.072048, 41.800175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322153, 0.652483, 0.685918,
		0.934388, -0.102736, -0.341124,
		-0.152109, 0.750807, -0.642768,
		36.333172, 39.297291, 41.607346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127708, 39.205482, 42.016701>,  <36.439648, 38.771725, 42.057281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127708, 39.205482, 42.016701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810642, 39.421757, 41.904030>,  <36.620403, 39.551521, 41.836430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.810642, 39.421757, 41.904030>,  <37.127708, 39.205482, 42.016701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810642, 39.421757, 41.904030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209856, 0.675767, 0.706611,
		0.572404, 0.500993, -0.649122,
		-0.792663, 0.540689, -0.281676,
		36.572842, 39.583965, 41.819527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482128, 39.806068, 41.747971>,  <37.127708, 39.205482, 42.016701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482128, 39.806068, 41.747971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880596, 39.840485, 41.741653>,  <38.119675, 39.861134, 41.737865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.880596, 39.840485, 41.741653>,  <37.482128, 39.806068, 41.747971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880596, 39.840485, 41.741653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064659, -0.845804, -0.529561,
		-0.058918, 0.526510, -0.848125,
		0.996167, 0.086039, -0.015789,
		38.179447, 39.866295, 41.736916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858242, 39.994576, 41.050858>,  <37.482128, 39.806068, 41.747971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858242, 39.994576, 41.050858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101593, 39.778057, 41.283020>,  <38.247604, 39.648148, 41.422318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.101593, 39.778057, 41.283020>,  <37.858242, 39.994576, 41.050858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101593, 39.778057, 41.283020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092409, -0.678029, -0.729204,
		0.788248, 0.497267, -0.362478,
		0.608380, -0.541297, 0.580406,
		38.284107, 39.615669, 41.457142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335747, 39.623692, 40.600052>,  <37.858242, 39.994576, 41.050858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335747, 39.623692, 40.600052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437366, 39.466747, 40.953663>,  <38.498337, 39.372581, 41.165833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.437366, 39.466747, 40.953663>,  <38.335747, 39.623692, 40.600052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437366, 39.466747, 40.953663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318664, -0.829030, -0.459524,
		0.913188, 0.398450, -0.085582,
		0.254048, -0.392360, 0.884032,
		38.513580, 39.349041, 41.218872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026608, 39.287064, 40.489643>,  <38.335747, 39.623692, 40.600052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026608, 39.287064, 40.489643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841225, 39.098972, 40.790066>,  <38.729996, 38.986118, 40.970322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.841225, 39.098972, 40.790066>,  <39.026608, 39.287064, 40.489643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.841225, 39.098972, 40.790066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127003, -0.874081, -0.468885,
		0.876971, -0.121920, 0.464819,
		-0.463456, -0.470232, 0.751060,
		38.702187, 38.957901, 41.015385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380920, 38.656513, 40.525482>,  <39.026608, 39.287064, 40.489643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380920, 38.656513, 40.525482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014629, 38.617115, 40.681297>,  <38.794853, 38.593475, 40.774788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014629, 38.617115, 40.681297>,  <39.380920, 38.656513, 40.525482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014629, 38.617115, 40.681297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100580, -0.882428, -0.459569,
		0.389010, -0.460020, 0.798156,
		-0.915726, -0.098499, 0.389542,
		38.739910, 38.587566, 40.798161>
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
