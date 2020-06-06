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
	<24.292627, 35.025627, 35.366760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373468, 34.878368, 35.003746>,  <24.421972, 34.790012, 34.785938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.373468, 34.878368, 35.003746>,  <24.292627, 35.025627, 35.366760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.373468, 34.878368, 35.003746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688885, -0.605226, 0.398923,
		-0.696126, -0.705812, 0.131292,
		0.202103, -0.368146, -0.907537,
		24.434099, 34.767925, 34.731483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.217793, 34.263420, 35.262798>,  <24.292627, 35.025627, 35.366760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.217793, 34.263420, 35.262798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509541, 34.413002, 35.033653>,  <24.684589, 34.502750, 34.896164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.509541, 34.413002, 35.033653>,  <24.217793, 34.263420, 35.262798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.509541, 34.413002, 35.033653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672957, -0.542822, 0.502467,
		-0.123064, -0.751999, -0.647574,
		0.729372, 0.373954, -0.572865,
		24.728352, 34.525188, 34.861794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.609278, 33.710213, 34.755325>,  <24.217793, 34.263420, 35.262798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.609278, 33.710213, 34.755325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805517, 34.018291, 34.918354>,  <24.923260, 34.203136, 35.016171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.805517, 34.018291, 34.918354>,  <24.609278, 33.710213, 34.755325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.805517, 34.018291, 34.918354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372637, -0.608238, 0.700848,
		0.787690, -0.191957, -0.585403,
		0.490597, 0.770194, 0.407573,
		24.952696, 34.249352, 35.040627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348715, 33.593136, 34.838612>,  <24.609278, 33.710213, 34.755325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348715, 33.593136, 34.838612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213154, 33.844013, 35.119118>,  <25.131817, 33.994537, 35.287422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.213154, 33.844013, 35.119118>,  <25.348715, 33.593136, 34.838612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.213154, 33.844013, 35.119118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385502, -0.587359, 0.711616,
		0.858214, 0.511510, -0.042725,
		-0.338905, 0.627190, 0.701268,
		25.111483, 34.032169, 35.329498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.792030, 33.908588, 34.397320>,  <25.348715, 33.593136, 34.838612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.792030, 33.908588, 34.397320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156528, 33.951748, 34.556309>,  <26.375227, 33.977642, 34.651703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.156528, 33.951748, 34.556309>,  <25.792030, 33.908588, 34.397320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.156528, 33.951748, 34.556309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326336, -0.399612, 0.856630,
		0.251265, -0.910312, -0.328934,
		0.911246, 0.107898, 0.397477,
		26.429903, 33.984116, 34.675552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.982483, 33.260357, 34.808960>,  <25.792030, 33.908588, 34.397320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.982483, 33.260357, 34.808960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230610, 33.540985, 34.949249>,  <26.379486, 33.709362, 35.033421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230610, 33.540985, 34.949249>,  <25.982483, 33.260357, 34.808960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230610, 33.540985, 34.949249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192765, -0.297071, 0.935196,
		0.760294, -0.647726, -0.049040,
		0.620319, 0.701570, 0.350720,
		26.416706, 33.751457, 35.054466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225073, 33.003872, 35.416100>,  <25.982483, 33.260357, 34.808960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225073, 33.003872, 35.416100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354958, 33.379807, 35.458561>,  <26.432888, 33.605366, 35.484039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354958, 33.379807, 35.458561>,  <26.225073, 33.003872, 35.416100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354958, 33.379807, 35.458561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257264, -0.020238, 0.966129,
		0.910152, -0.341024, 0.235214,
		0.324713, 0.939837, 0.106153,
		26.452372, 33.661758, 35.490406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.689005, 32.935131, 35.933849>,  <26.225073, 33.003872, 35.416100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.689005, 32.935131, 35.933849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554899, 33.311539, 35.915588>,  <26.474436, 33.537384, 35.904633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.554899, 33.311539, 35.915588>,  <26.689005, 32.935131, 35.933849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.554899, 33.311539, 35.915588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019736, 0.041434, 0.998946,
		0.941918, 0.335811, 0.004681,
		-0.335263, 0.941018, -0.045655,
		26.454321, 33.593845, 35.901894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.906425, 33.190563, 36.567833>,  <26.689005, 32.935131, 35.933849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.906425, 33.190563, 36.567833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619095, 33.446762, 36.459194>,  <26.446697, 33.600483, 36.394009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.619095, 33.446762, 36.459194>,  <26.906425, 33.190563, 36.567833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.619095, 33.446762, 36.459194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186868, 0.198416, 0.962139,
		0.670139, 0.741884, -0.022839,
		-0.718327, 0.640499, -0.271601,
		26.403597, 33.638912, 36.377712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.159599, 33.744286, 36.907455>,  <26.906425, 33.190563, 36.567833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.159599, 33.744286, 36.907455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773611, 33.804424, 36.821449>,  <26.542019, 33.840508, 36.769848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773611, 33.804424, 36.821449>,  <27.159599, 33.744286, 36.907455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773611, 33.804424, 36.821449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169092, 0.270220, 0.947834,
		0.200600, 0.950988, -0.235332,
		-0.964970, 0.150343, -0.215011,
		26.484119, 33.849525, 36.756947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934704, 34.483540, 37.197975>,  <27.159599, 33.744286, 36.907455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934704, 34.483540, 37.197975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620070, 34.243401, 37.140194>,  <26.431290, 34.099316, 37.105526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.620070, 34.243401, 37.140194>,  <26.934704, 34.483540, 37.197975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.620070, 34.243401, 37.140194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338224, 0.223180, 0.914218,
		-0.516611, 0.767967, -0.378602,
		-0.786586, -0.600347, -0.144448,
		26.384094, 34.063297, 37.096859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427980, 34.833538, 37.513634>,  <26.934704, 34.483540, 37.197975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427980, 34.833538, 37.513634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270578, 34.466007, 37.501530>,  <26.176138, 34.245491, 37.494267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.270578, 34.466007, 37.501530>,  <26.427980, 34.833538, 37.513634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.270578, 34.466007, 37.501530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396933, 0.140123, 0.907088,
		-0.829215, 0.368954, -0.419851,
		-0.393505, -0.918824, -0.030258,
		26.152527, 34.190361, 37.492451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951630, 34.961014, 37.858013>,  <26.427980, 34.833538, 37.513634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951630, 34.961014, 37.858013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964506, 34.561245, 37.862453>,  <25.972233, 34.321384, 37.865120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.964506, 34.561245, 37.862453>,  <25.951630, 34.961014, 37.858013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.964506, 34.561245, 37.862453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411233, -0.003118, 0.911525,
		-0.910962, -0.033911, -0.411095,
		0.032193, -0.999420, 0.011105,
		25.974163, 34.261417, 37.865784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.330870, 34.670082, 38.117439>,  <25.951630, 34.961014, 37.858013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.330870, 34.670082, 38.117439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618542, 34.399036, 38.178917>,  <25.791145, 34.236408, 38.215805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.618542, 34.399036, 38.178917>,  <25.330870, 34.670082, 38.117439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.618542, 34.399036, 38.178917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262178, -0.059801, 0.963165,
		-0.643462, -0.732983, -0.220663,
		0.719179, -0.677613, 0.153692,
		25.834295, 34.195751, 38.225025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.988077, 34.062183, 38.437698>,  <25.330870, 34.670082, 38.117439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.988077, 34.062183, 38.437698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381588, 34.041264, 38.506336>,  <25.617695, 34.028709, 38.547520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.381588, 34.041264, 38.506336>,  <24.988077, 34.062183, 38.437698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.381588, 34.041264, 38.506336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179348, -0.266892, 0.946891,
		-0.003729, -0.962306, -0.271943,
		0.983779, -0.052303, 0.171593,
		25.676722, 34.025574, 38.557816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.050262, 33.491161, 38.910606>,  <24.988077, 34.062183, 38.437698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.050262, 33.491161, 38.910606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397606, 33.684891, 38.953281>,  <25.606012, 33.801128, 38.978886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397606, 33.684891, 38.953281>,  <25.050262, 33.491161, 38.910606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397606, 33.684891, 38.953281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003462, -0.221047, 0.975257,
		0.495922, -0.846505, -0.193625,
		0.868360, 0.484322, 0.106692,
		25.658113, 33.830189, 38.985291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.398645, 33.100636, 39.273579>,  <25.050262, 33.491161, 38.910606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.398645, 33.100636, 39.273579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569035, 33.460571, 39.311161>,  <25.671268, 33.676533, 39.333710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.569035, 33.460571, 39.311161>,  <25.398645, 33.100636, 39.273579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569035, 33.460571, 39.311161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017674, -0.095554, 0.995267,
		0.904563, -0.425618, -0.024799,
		0.425973, 0.899844, 0.093957,
		25.696827, 33.730526, 39.339348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.914259, 33.031910, 39.799694>,  <25.398645, 33.100636, 39.273579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.914259, 33.031910, 39.799694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820156, 33.420635, 39.793610>,  <25.763695, 33.653870, 39.789959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.820156, 33.420635, 39.793610>,  <25.914259, 33.031910, 39.799694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.820156, 33.420635, 39.793610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095844, -0.007619, 0.995367,
		0.967196, 0.235623, 0.094935,
		-0.235255, 0.971815, -0.015214,
		25.749580, 33.712181, 39.789047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263124, 33.295891, 40.318150>,  <25.914259, 33.031910, 39.799694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263124, 33.295891, 40.318150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995367, 33.590279, 40.277637>,  <25.834713, 33.766911, 40.253330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.995367, 33.590279, 40.277637>,  <26.263124, 33.295891, 40.318150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.995367, 33.590279, 40.277637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093812, 0.051495, 0.994257,
		0.736963, 0.675049, 0.034572,
		-0.669392, 0.735974, -0.101277,
		25.794550, 33.811069, 40.247253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364326, 33.935543, 40.805595>,  <26.263124, 33.295891, 40.318150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364326, 33.935543, 40.805595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975929, 33.966137, 40.714977>,  <25.742891, 33.984493, 40.660606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.975929, 33.966137, 40.714977>,  <26.364326, 33.935543, 40.805595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.975929, 33.966137, 40.714977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222297, 0.060185, 0.973120,
		0.088060, 0.995253, -0.041438,
		-0.970994, 0.076481, -0.226541,
		25.684631, 33.989082, 40.647015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.078028, 34.553280, 41.154949>,  <26.364326, 33.935543, 40.805595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.078028, 34.553280, 41.154949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758537, 34.323730, 41.082611>,  <25.566843, 34.186001, 41.039207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.758537, 34.323730, 41.082611>,  <26.078028, 34.553280, 41.154949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.758537, 34.323730, 41.082611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332528, 0.170520, 0.927550,
		-0.501460, 0.800994, -0.327028,
		-0.798726, -0.573874, -0.180844,
		25.518919, 34.151569, 41.028358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.442226, 34.881973, 41.442703>,  <26.078028, 34.553280, 41.154949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.442226, 34.881973, 41.442703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333452, 34.499435, 41.399887>,  <25.268188, 34.269913, 41.374199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.333452, 34.499435, 41.399887>,  <25.442226, 34.881973, 41.442703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333452, 34.499435, 41.399887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505531, 0.047322, 0.861509,
		-0.818834, 0.288387, -0.496331,
		-0.271936, -0.956344, -0.107040,
		25.251871, 34.212532, 41.367775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.637806, 34.775940, 41.587849>,  <25.442226, 34.881973, 41.442703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.637806, 34.775940, 41.587849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788704, 34.408577, 41.635536>,  <24.879242, 34.188160, 41.664150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.788704, 34.408577, 41.635536>,  <24.637806, 34.775940, 41.587849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.788704, 34.408577, 41.635536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663831, -0.178392, 0.726295,
		-0.645767, -0.353134, -0.676965,
		0.377245, -0.918408, 0.119221,
		24.901876, 34.133053, 41.671303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.101864, 34.360176, 41.857853>,  <24.637806, 34.775940, 41.587849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.101864, 34.360176, 41.857853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.415604, 34.122250, 41.928276>,  <24.603848, 33.979496, 41.970528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.415604, 34.122250, 41.928276>,  <24.101864, 34.360176, 41.857853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.415604, 34.122250, 41.928276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490390, -0.420752, 0.763207,
		-0.379887, -0.684958, -0.621706,
		0.784349, -0.594811, 0.176058,
		24.650908, 33.943806, 41.981094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.778297, 33.709236, 41.909634>,  <24.101864, 34.360176, 41.857853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.778297, 33.709236, 41.909634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134838, 33.692795, 42.090210>,  <24.348763, 33.682930, 42.198555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.134838, 33.692795, 42.090210>,  <23.778297, 33.709236, 41.909634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.134838, 33.692795, 42.090210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423340, -0.431589, 0.796564,
		0.162097, -0.901133, -0.402099,
		0.891352, -0.041104, 0.451445,
		24.402245, 33.680462, 42.225643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.971176, 32.963013, 42.201195>,  <23.778297, 33.709236, 41.909634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.971176, 32.963013, 42.201195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161301, 33.249779, 42.405197>,  <24.275375, 33.421841, 42.527599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161301, 33.249779, 42.405197>,  <23.971176, 32.963013, 42.201195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.161301, 33.249779, 42.405197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293197, -0.417466, 0.860092,
		0.829526, -0.558344, 0.011772,
		0.475313, 0.716920, 0.510004,
		24.303894, 33.464855, 42.558197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460106, 32.661469, 42.759537>,  <23.971176, 32.963013, 42.201195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460106, 32.661469, 42.759537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287079, 33.018314, 42.811707>,  <24.183262, 33.232422, 42.843006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287079, 33.018314, 42.811707>,  <24.460106, 32.661469, 42.759537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287079, 33.018314, 42.811707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367886, -0.306712, 0.877831,
		0.823132, 0.331741, 0.460871,
		-0.432567, 0.892119, 0.130422,
		24.157309, 33.285950, 42.850834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835056, 31.983099, 42.928185>,  <24.460106, 32.661469, 42.759537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835056, 31.983099, 42.928185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976191, 32.320385, 42.765953>,  <25.060871, 32.522755, 42.668613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.976191, 32.320385, 42.765953>,  <24.835056, 31.983099, 42.928185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.976191, 32.320385, 42.765953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868299, -0.456585, -0.193873,
		-0.348660, -0.283762, -0.893261,
		0.352836, 0.843214, -0.405583,
		25.082041, 32.573349, 42.644279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132383, 31.872246, 42.286469>,  <24.835056, 31.983099, 42.928185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132383, 31.872246, 42.286469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350061, 32.177864, 42.425083>,  <25.480669, 32.361233, 42.508251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350061, 32.177864, 42.425083>,  <25.132383, 31.872246, 42.286469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350061, 32.177864, 42.425083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836494, -0.525782, -0.154372,
		0.064258, 0.373887, -0.925246,
		0.544195, 0.764043, 0.346539,
		25.513319, 32.407078, 42.529045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.704901, 31.887617, 41.888138>,  <25.132383, 31.872246, 42.286469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.704901, 31.887617, 41.888138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807430, 32.107540, 42.206135>,  <25.868948, 32.239494, 42.396935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.807430, 32.107540, 42.206135>,  <25.704901, 31.887617, 41.888138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807430, 32.107540, 42.206135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933013, -0.355634, -0.054875,
		0.252555, 0.755803, -0.604134,
		0.256325, 0.549806, 0.794991,
		25.884327, 32.272484, 42.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.244131, 32.291935, 41.598850>,  <25.704901, 31.887617, 41.888138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.244131, 32.291935, 41.598850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253469, 32.259331, 41.997410>,  <26.259073, 32.239769, 42.236546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253469, 32.259331, 41.997410>,  <26.244131, 32.291935, 41.598850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253469, 32.259331, 41.997410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953728, -0.297031, -0.046644,
		0.299763, 0.951383, 0.070801,
		0.023346, -0.081507, 0.996399,
		26.260473, 32.234879, 42.296329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.958916, 32.490005, 41.906456>,  <26.244131, 32.291935, 41.598850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.958916, 32.490005, 41.906456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781376, 32.249599, 42.172321>,  <26.674852, 32.105358, 42.331841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.781376, 32.249599, 42.172321>,  <26.958916, 32.490005, 41.906456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.781376, 32.249599, 42.172321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872785, -0.458044, 0.168647,
		0.203088, 0.654964, 0.727858,
		-0.443849, -0.601013, 0.664666,
		26.648222, 32.069294, 42.371719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.273287, 32.528999, 42.521378>,  <26.958916, 32.490005, 41.906456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.273287, 32.528999, 42.521378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117865, 32.160656, 42.508427>,  <27.024611, 31.939650, 42.500656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.117865, 32.160656, 42.508427>,  <27.273287, 32.528999, 42.521378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.117865, 32.160656, 42.508427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918425, -0.384220, -0.094181,
		0.074289, -0.066327, 0.995029,
		-0.388556, -0.920856, -0.032374,
		27.001297, 31.884399, 42.498714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684771, 32.055588, 42.934902>,  <27.273287, 32.528999, 42.521378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684771, 32.055588, 42.934902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518089, 31.865601, 42.624866>,  <27.418079, 31.751608, 42.438847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518089, 31.865601, 42.624866>,  <27.684771, 32.055588, 42.934902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518089, 31.865601, 42.624866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895470, -0.361264, -0.260044,
		-0.156497, -0.802428, 0.575864,
		-0.416705, -0.474972, -0.775086,
		27.393078, 31.723108, 42.392342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006254, 31.366955, 42.873070>,  <27.684771, 32.055588, 42.934902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006254, 31.366955, 42.873070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826674, 31.021486, 42.781406>,  <27.718925, 30.814205, 42.726410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.826674, 31.021486, 42.781406>,  <28.006254, 31.366955, 42.873070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.826674, 31.021486, 42.781406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106306, 0.203009, -0.973389,
		0.887211, -0.461364, 0.000672,
		-0.448950, -0.863672, -0.229158,
		27.691988, 30.762384, 42.712658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457254, 30.838589, 42.673683>,  <28.006254, 31.366955, 42.873070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457254, 30.838589, 42.673683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110081, 30.815243, 42.476387>,  <27.901777, 30.801235, 42.358009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.110081, 30.815243, 42.476387>,  <28.457254, 30.838589, 42.673683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.110081, 30.815243, 42.476387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488079, 0.083811, -0.868766,
		0.092079, -0.994769, -0.044237,
		-0.867929, -0.058404, -0.493243,
		27.849701, 30.797733, 42.328415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.491217, 30.313797, 42.025082>,  <28.457254, 30.838589, 42.673683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.491217, 30.313797, 42.025082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223459, 30.605690, 41.969364>,  <28.062805, 30.780827, 41.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.223459, 30.605690, 41.969364>,  <28.491217, 30.313797, 42.025082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223459, 30.605690, 41.969364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466373, 0.266823, -0.843387,
		-0.578281, -0.629520, -0.518937,
		-0.669393, 0.729733, -0.139292,
		28.022642, 30.824610, 41.927578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372702, 30.265844, 41.343208>,  <28.491217, 30.313797, 42.025082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372702, 30.265844, 41.343208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192675, 30.616741, 41.410000>,  <28.084658, 30.827280, 41.450077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.192675, 30.616741, 41.410000>,  <28.372702, 30.265844, 41.343208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.192675, 30.616741, 41.410000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158616, 0.262550, -0.951792,
		-0.878795, -0.401884, -0.257311,
		-0.450067, 0.877243, 0.166982,
		28.057655, 30.879913, 41.460094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.106682, 30.394890, 40.683506>,  <28.372702, 30.265844, 41.343208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.106682, 30.394890, 40.683506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098169, 30.740499, 40.884705>,  <28.093061, 30.947866, 41.005424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098169, 30.740499, 40.884705>,  <28.106682, 30.394890, 40.683506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098169, 30.740499, 40.884705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015509, 0.503335, -0.863952,
		-0.999653, -0.010584, -0.024110,
		-0.021279, 0.864026, 0.502997,
		28.091785, 30.999708, 41.035603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.723328, 30.863733, 40.292290>,  <28.106682, 30.394890, 40.683506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.723328, 30.863733, 40.292290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950512, 31.090925, 40.530556>,  <28.086823, 31.227242, 40.673515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.950512, 31.090925, 40.530556>,  <27.723328, 30.863733, 40.292290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.950512, 31.090925, 40.530556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368266, 0.471866, -0.801076,
		-0.736070, 0.674344, 0.058834,
		0.567962, 0.567982, 0.595665,
		28.120901, 31.261320, 40.709255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755037, 31.506496, 39.893993>,  <27.723328, 30.863733, 40.292290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755037, 31.506496, 39.893993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025314, 31.528357, 40.188057>,  <28.187481, 31.541473, 40.364494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025314, 31.528357, 40.188057>,  <27.755037, 31.506496, 39.893993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025314, 31.528357, 40.188057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566581, 0.599500, -0.565318,
		-0.471622, 0.798506, 0.374112,
		0.675690, 0.054652, 0.735157,
		28.228022, 31.544752, 40.408604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790886, 32.131012, 40.063492>,  <27.755037, 31.506496, 39.893993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790886, 32.131012, 40.063492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143204, 32.001408, 40.201607>,  <28.354593, 31.923645, 40.284477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.143204, 32.001408, 40.201607>,  <27.790886, 32.131012, 40.063492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143204, 32.001408, 40.201607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466427, 0.719295, -0.514841,
		-0.081551, 0.614519, 0.784676,
		0.880793, -0.324008, 0.345287,
		28.407442, 31.904205, 40.305191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.162502, 32.635220, 40.399265>,  <27.790886, 32.131012, 40.063492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.162502, 32.635220, 40.399265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428066, 32.380268, 40.242821>,  <28.587404, 32.227295, 40.148952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.428066, 32.380268, 40.242821>,  <28.162502, 32.635220, 40.399265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.428066, 32.380268, 40.242821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308600, 0.709915, -0.633077,
		0.681167, 0.299610, 0.668016,
		0.663911, -0.637381, -0.391111,
		28.627239, 32.189053, 40.125488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.831362, 33.006157, 40.409790>,  <28.162502, 32.635220, 40.399265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.831362, 33.006157, 40.409790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838448, 32.706253, 40.145203>,  <28.842699, 32.526310, 39.986450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838448, 32.706253, 40.145203>,  <28.831362, 33.006157, 40.409790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838448, 32.706253, 40.145203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273401, 0.639995, -0.718094,
		0.961737, -0.168127, 0.216322,
		0.017713, -0.749760, -0.661473,
		28.843761, 32.481323, 39.946762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.380817, 33.155804, 40.023159>,  <28.831362, 33.006157, 40.409790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.380817, 33.155804, 40.023159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233776, 32.856831, 39.801811>,  <29.145552, 32.677448, 39.669003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233776, 32.856831, 39.801811>,  <29.380817, 33.155804, 40.023159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233776, 32.856831, 39.801811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240852, 0.498211, -0.832932,
		0.898253, -0.439467, -0.003123,
		-0.367603, -0.747432, -0.553366,
		29.123495, 32.632603, 39.635803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856127, 32.982506, 39.506485>,  <29.380817, 33.155804, 40.023159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856127, 32.982506, 39.506485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507715, 32.854435, 39.357464>,  <29.298668, 32.777592, 39.268051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.507715, 32.854435, 39.357464>,  <29.856127, 32.982506, 39.506485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.507715, 32.854435, 39.357464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234991, 0.394413, -0.888379,
		0.431380, -0.861350, -0.268306,
		-0.871029, -0.320180, -0.372551,
		29.246407, 32.758381, 39.245697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127111, 32.726246, 38.956902>,  <29.856127, 32.982506, 39.506485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127111, 32.726246, 38.956902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739801, 32.811943, 38.905449>,  <29.507416, 32.863361, 38.874577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739801, 32.811943, 38.905449>,  <30.127111, 32.726246, 38.956902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739801, 32.811943, 38.905449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203861, 0.379509, -0.902449,
		-0.144524, -0.900041, -0.411144,
		-0.968273, 0.214242, -0.128635,
		29.449320, 32.876217, 38.866859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077267, 32.618515, 38.211124>,  <30.127111, 32.726246, 38.956902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077267, 32.618515, 38.211124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758560, 32.832947, 38.322685>,  <29.567337, 32.961605, 38.389622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758560, 32.832947, 38.322685>,  <30.077267, 32.618515, 38.211124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758560, 32.832947, 38.322685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200296, 0.201164, -0.958861,
		-0.570130, -0.819849, -0.052906,
		-0.796764, 0.536079, 0.278903,
		29.519531, 32.993771, 38.406357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.542501, 32.417320, 37.788570>,  <30.077267, 32.618515, 38.211124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.542501, 32.417320, 37.788570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400274, 32.768356, 37.917198>,  <29.314938, 32.978977, 37.994377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.400274, 32.768356, 37.917198>,  <29.542501, 32.417320, 37.788570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400274, 32.768356, 37.917198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090061, 0.310284, -0.946368,
		-0.930302, -0.365457, -0.031290,
		-0.355566, 0.877590, 0.321572,
		29.293604, 33.031631, 38.013668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971195, 32.572716, 37.291161>,  <29.542501, 32.417320, 37.788570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971195, 32.572716, 37.291161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100138, 32.907337, 37.468369>,  <29.177504, 33.108109, 37.574692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.100138, 32.907337, 37.468369>,  <28.971195, 32.572716, 37.291161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.100138, 32.907337, 37.468369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094512, 0.437219, -0.894375,
		-0.941888, 0.330178, 0.061876,
		0.322356, 0.836554, 0.443018,
		29.196844, 33.158302, 37.601273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506680, 33.075443, 37.045483>,  <28.971195, 32.572716, 37.291161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506680, 33.075443, 37.045483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830660, 33.269901, 37.176720>,  <29.025049, 33.386574, 37.255463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.830660, 33.269901, 37.176720>,  <28.506680, 33.075443, 37.045483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.830660, 33.269901, 37.176720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004587, 0.554140, -0.832411,
		-0.586477, 0.675718, 0.446598,
		0.809953, 0.486141, 0.328090,
		29.073647, 33.415745, 37.275146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402508, 33.754482, 36.840179>,  <28.506680, 33.075443, 37.045483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402508, 33.754482, 36.840179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798325, 33.776920, 36.893330>,  <29.035814, 33.790382, 36.925220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.798325, 33.776920, 36.893330>,  <28.402508, 33.754482, 36.840179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798325, 33.776920, 36.893330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064534, 0.651698, -0.755728,
		-0.128991, 0.756401, 0.641264,
		0.989544, 0.056099, 0.132877,
		29.095188, 33.793751, 36.933193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510778, 34.460083, 37.068951>,  <28.402508, 33.754482, 36.840179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.510778, 34.460083, 37.068951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844011, 34.300358, 36.915836>,  <29.043951, 34.204521, 36.823967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.844011, 34.300358, 36.915836>,  <28.510778, 34.460083, 37.068951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844011, 34.300358, 36.915836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069840, 0.610539, -0.788901,
		0.548722, 0.683953, 0.480742,
		0.833082, -0.399312, -0.382783,
		29.093937, 34.180565, 36.801003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.763954, 34.990902, 36.719662>,  <28.510778, 34.460083, 37.068951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.763954, 34.990902, 36.719662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948057, 34.687332, 36.535400>,  <29.058519, 34.505192, 36.424843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.948057, 34.687332, 36.535400>,  <28.763954, 34.990902, 36.719662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.948057, 34.687332, 36.535400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051256, 0.495296, -0.867211,
		0.886305, 0.422751, 0.189063,
		0.460256, -0.758923, -0.460651,
		29.086134, 34.459656, 36.397205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339344, 35.276203, 36.298473>,  <28.763954, 34.990902, 36.719662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339344, 35.276203, 36.298473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251757, 34.924030, 36.130238>,  <29.199203, 34.712727, 36.029297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.251757, 34.924030, 36.130238>,  <29.339344, 35.276203, 36.298473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251757, 34.924030, 36.130238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009907, 0.433038, -0.901321,
		0.975681, -0.193195, -0.103544,
		-0.218969, -0.880428, -0.420594,
		29.186066, 34.659901, 36.004059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.775595, 35.201843, 35.750095>,  <29.339344, 35.276203, 36.298473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.775595, 35.201843, 35.750095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459995, 34.976006, 35.653168>,  <29.270636, 34.840504, 35.595013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.459995, 34.976006, 35.653168>,  <29.775595, 35.201843, 35.750095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459995, 34.976006, 35.653168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060457, 0.463831, -0.883858,
		0.611413, -0.682713, -0.400096,
		-0.788999, -0.564591, -0.242318,
		29.223295, 34.806629, 35.580471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125172, 35.839840, 36.213253>,  <29.775595, 35.201843, 35.750095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125172, 35.839840, 36.213253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085398, 36.230839, 36.138832>,  <30.061533, 36.465439, 36.094177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085398, 36.230839, 36.138832>,  <30.125172, 35.839840, 36.213253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085398, 36.230839, 36.138832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994230, 0.105164, 0.021159,
		0.040249, -0.182877, -0.982312,
		-0.099434, 0.977495, -0.186054,
		30.055567, 36.524086, 36.083015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535791, 36.046013, 35.605171>,  <30.125172, 35.839840, 36.213253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535791, 36.046013, 35.605171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482393, 36.365810, 35.839432>,  <30.450354, 36.557690, 35.979988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482393, 36.365810, 35.839432>,  <30.535791, 36.046013, 35.605171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482393, 36.365810, 35.839432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950869, 0.269887, -0.151689,
		-0.279334, 0.536629, -0.796242,
		-0.133495, 0.799494, 0.585652,
		30.442345, 36.605659, 36.015129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839493, 36.576263, 35.265041>,  <30.535791, 36.046013, 35.605171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839493, 36.576263, 35.265041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855078, 36.649788, 35.657917>,  <30.864429, 36.693905, 35.893642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855078, 36.649788, 35.657917>,  <30.839493, 36.576263, 35.265041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855078, 36.649788, 35.657917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995097, -0.096560, -0.021406,
		0.090905, 0.978207, -0.186676,
		0.038965, 0.183815, 0.982188,
		30.866768, 36.704933, 35.952572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396767, 37.070713, 35.471924>,  <30.839493, 36.576263, 35.265041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396767, 37.070713, 35.471924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329588, 36.817604, 35.774288>,  <31.289280, 36.665737, 35.955708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329588, 36.817604, 35.774288>,  <31.396767, 37.070713, 35.471924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329588, 36.817604, 35.774288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985710, -0.117895, 0.120315,
		0.012986, 0.765311, 0.643529,
		-0.167948, -0.632771, 0.755906,
		31.279203, 36.627773, 36.001060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714071, 37.253014, 36.078621>,  <31.396767, 37.070713, 35.471924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714071, 37.253014, 36.078621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680422, 36.860783, 36.149498>,  <31.660233, 36.625446, 36.192024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.680422, 36.860783, 36.149498>,  <31.714071, 37.253014, 36.078621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.680422, 36.860783, 36.149498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988073, -0.059071, 0.142205,
		-0.128975, 0.187046, 0.973848,
		-0.084125, -0.980573, 0.177197,
		31.655184, 36.566612, 36.202656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898937, 37.065105, 36.776241>,  <31.714071, 37.253014, 36.078621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898937, 37.065105, 36.776241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949125, 36.847626, 36.444302>,  <31.979239, 36.717136, 36.245140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949125, 36.847626, 36.444302>,  <31.898937, 37.065105, 36.776241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949125, 36.847626, 36.444302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967976, 0.250418, -0.017716,
		0.217441, -0.801048, 0.557711,
		0.125470, -0.543702, -0.829846,
		31.986767, 36.684517, 36.195347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596069, 36.712418, 36.856438>,  <31.898937, 37.065105, 36.776241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596069, 36.712418, 36.856438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454880, 36.774906, 36.487438>,  <32.370167, 36.812397, 36.266037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.454880, 36.774906, 36.487438>,  <32.596069, 36.712418, 36.856438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454880, 36.774906, 36.487438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715699, 0.680147, -0.158666,
		0.602650, -0.716237, -0.351878,
		-0.352971, 0.156218, -0.922501,
		32.348988, 36.821774, 36.210690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182735, 36.759014, 36.387867>,  <32.596069, 36.712418, 36.856438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182735, 36.759014, 36.387867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882553, 36.976242, 36.237194>,  <32.702442, 37.106579, 36.146790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882553, 36.976242, 36.237194>,  <33.182735, 36.759014, 36.387867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882553, 36.976242, 36.237194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640262, 0.738748, -0.210511,
		0.163950, -0.399154, -0.902107,
		-0.750456, 0.543072, -0.376681,
		32.657417, 37.139164, 36.124191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797722, 36.571487, 36.813274>,  <33.182735, 36.759014, 36.387867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797722, 36.571487, 36.813274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154209, 36.419388, 36.714363>,  <34.368099, 36.328129, 36.655018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154209, 36.419388, 36.714363>,  <33.797722, 36.571487, 36.813274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154209, 36.419388, 36.714363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003035, -0.540148, 0.841565,
		-0.453572, -0.750765, -0.480234,
		0.891214, -0.380252, -0.247274,
		34.421574, 36.305313, 36.640182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701809, 35.816418, 36.808853>,  <33.797722, 36.571487, 36.813274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701809, 35.816418, 36.808853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074265, 35.940281, 36.885880>,  <34.297737, 36.014599, 36.932095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074265, 35.940281, 36.885880>,  <33.701809, 35.816418, 36.808853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074265, 35.940281, 36.885880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004612, -0.538041, 0.842906,
		0.364624, -0.783978, -0.502422,
		0.931144, 0.309660, 0.192567,
		34.353607, 36.033180, 36.943649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089920, 35.160301, 37.074963>,  <33.701809, 35.816418, 36.808853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089920, 35.160301, 37.074963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265064, 35.491264, 37.215630>,  <34.370152, 35.689842, 37.300030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265064, 35.491264, 37.215630>,  <34.089920, 35.160301, 37.074963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265064, 35.491264, 37.215630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057663, -0.364505, 0.929414,
		0.897191, -0.427232, -0.111892,
		0.437861, 0.827411, 0.351667,
		34.396423, 35.739487, 37.321129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582996, 34.813736, 37.549068>,  <34.089920, 35.160301, 37.074963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582996, 34.813736, 37.549068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556396, 35.199104, 37.652912>,  <34.540436, 35.430325, 37.715218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.556396, 35.199104, 37.652912>,  <34.582996, 34.813736, 37.549068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556396, 35.199104, 37.652912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128724, -0.249731, 0.959721,
		0.989448, 0.097238, -0.107408,
		-0.066499, 0.963421, 0.259613,
		34.536446, 35.488129, 37.730797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112896, 34.825497, 37.936676>,  <34.582996, 34.813736, 37.549068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112896, 34.825497, 37.936676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880779, 35.123657, 38.067913>,  <34.741508, 35.302555, 38.146656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880779, 35.123657, 38.067913>,  <35.112896, 34.825497, 37.936676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880779, 35.123657, 38.067913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058461, -0.363690, 0.929684,
		0.812310, 0.558665, 0.167468,
		-0.580288, 0.745401, 0.328090,
		34.706692, 35.347279, 38.166340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458069, 35.018078, 38.534248>,  <35.112896, 34.825497, 37.936676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458069, 35.018078, 38.534248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083771, 35.153664, 38.573200>,  <34.859192, 35.235016, 38.596573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083771, 35.153664, 38.573200>,  <35.458069, 35.018078, 38.534248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083771, 35.153664, 38.573200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001519, -0.279987, 0.960002,
		0.352669, 0.898171, 0.262512,
		-0.935747, 0.338962, 0.097378,
		34.803047, 35.255352, 38.602413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425110, 35.331188, 39.124138>,  <35.458069, 35.018078, 38.534248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425110, 35.331188, 39.124138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042221, 35.236130, 39.058113>,  <34.812489, 35.179096, 39.018497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.042221, 35.236130, 39.058113>,  <35.425110, 35.331188, 39.124138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042221, 35.236130, 39.058113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087786, -0.305061, 0.948278,
		-0.275711, 0.922205, 0.271149,
		-0.957224, -0.237647, -0.165065,
		34.755054, 35.164837, 39.008595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077438, 35.512104, 39.668083>,  <35.425110, 35.331188, 39.124138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077438, 35.512104, 39.668083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830757, 35.240021, 39.509594>,  <34.682747, 35.076771, 39.414501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.830757, 35.240021, 39.509594>,  <35.077438, 35.512104, 39.668083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.830757, 35.240021, 39.509594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082361, -0.444812, 0.891829,
		-0.782875, 0.582626, 0.218295,
		-0.616703, -0.680212, -0.396218,
		34.645744, 35.035957, 39.390728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546314, 35.428410, 40.155502>,  <35.077438, 35.512104, 39.668083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546314, 35.428410, 40.155502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537163, 35.107227, 39.917263>,  <34.531670, 34.914516, 39.774319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537163, 35.107227, 39.917263>,  <34.546314, 35.428410, 40.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537163, 35.107227, 39.917263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160766, -0.585043, 0.794908,
		-0.986727, 0.113940, -0.115702,
		-0.022881, -0.802959, -0.595596,
		34.530300, 34.866341, 39.738583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045872, 35.160374, 40.329536>,  <34.546314, 35.428410, 40.155502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045872, 35.160374, 40.329536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212978, 34.839130, 40.159603>,  <34.313244, 34.646385, 40.057644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.212978, 34.839130, 40.159603>,  <34.045872, 35.160374, 40.329536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212978, 34.839130, 40.159603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252348, -0.551762, 0.794908,
		-0.872806, -0.224881, -0.433172,
		0.417768, -0.803111, -0.424832,
		34.338310, 34.598198, 40.032154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566097, 34.622040, 40.362289>,  <34.045872, 35.160374, 40.329536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566097, 34.622040, 40.362289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917809, 34.434238, 40.330193>,  <34.128834, 34.321556, 40.310936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917809, 34.434238, 40.330193>,  <33.566097, 34.622040, 40.362289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917809, 34.434238, 40.330193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253116, -0.603285, 0.756293,
		-0.403489, -0.644681, -0.649294,
		0.879278, -0.469503, -0.080240,
		34.181591, 34.293388, 40.306122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.437943, 33.860714, 40.518204>,  <33.566097, 34.622040, 40.362289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.437943, 33.860714, 40.518204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834244, 33.901718, 40.553749>,  <34.072025, 33.926323, 40.575077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834244, 33.901718, 40.553749>,  <33.437943, 33.860714, 40.518204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834244, 33.901718, 40.553749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001867, -0.644638, 0.764485,
		0.135656, -0.757583, -0.638487,
		0.990754, 0.102515, 0.088863,
		34.131470, 33.932472, 40.580406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749989, 33.173237, 40.424858>,  <33.437943, 33.860714, 40.518204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749989, 33.173237, 40.424858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014362, 33.397690, 40.624172>,  <34.172989, 33.532360, 40.743763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.014362, 33.397690, 40.624172>,  <33.749989, 33.173237, 40.424858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.014362, 33.397690, 40.624172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023094, -0.678887, 0.733879,
		0.750085, -0.473541, -0.461661,
		0.660938, 0.561134, 0.498287,
		34.212643, 33.566029, 40.773659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261261, 32.699223, 40.677082>,  <33.749989, 33.173237, 40.424858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261261, 32.699223, 40.677082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261475, 33.030190, 40.901718>,  <34.261604, 33.228767, 41.036499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261475, 33.030190, 40.901718>,  <34.261261, 32.699223, 40.677082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261475, 33.030190, 40.901718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090059, -0.559269, 0.824080,
		0.995936, -0.051016, 0.074218,
		0.000534, 0.827415, 0.561591,
		34.261635, 33.278416, 41.070194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592133, 32.477268, 41.316975>,  <34.261261, 32.699223, 40.677082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592133, 32.477268, 41.316975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422142, 32.829781, 41.399670>,  <34.320148, 33.041286, 41.449287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.422142, 32.829781, 41.399670>,  <34.592133, 32.477268, 41.316975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422142, 32.829781, 41.399670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231394, -0.326565, 0.916413,
		0.875131, 0.341612, 0.342704,
		-0.424973, 0.881281, 0.206740,
		34.294651, 33.094166, 41.461693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854282, 32.555252, 41.855389>,  <34.592133, 32.477268, 41.316975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854282, 32.555252, 41.855389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513374, 32.764317, 41.846748>,  <34.308830, 32.889755, 41.841564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513374, 32.764317, 41.846748>,  <34.854282, 32.555252, 41.855389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513374, 32.764317, 41.846748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292764, -0.442355, 0.847710,
		0.433505, 0.728802, 0.530020,
		-0.852269, 0.522657, -0.021604,
		34.257694, 32.921112, 41.840267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702023, 32.552296, 42.593990>,  <34.854282, 32.555252, 41.855389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702023, 32.552296, 42.593990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362514, 32.695080, 42.437958>,  <34.158810, 32.780750, 42.344337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362514, 32.695080, 42.437958>,  <34.702023, 32.552296, 42.593990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362514, 32.695080, 42.437958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498891, -0.296188, 0.814481,
		0.175203, 0.885917, 0.429482,
		-0.848770, 0.356965, -0.390083,
		34.107883, 32.802170, 42.320934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430614, 32.995567, 43.015186>,  <34.702023, 32.552296, 42.593990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430614, 32.995567, 43.015186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131100, 32.853416, 42.791393>,  <33.951389, 32.768124, 42.657116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131100, 32.853416, 42.791393>,  <34.430614, 32.995567, 43.015186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131100, 32.853416, 42.791393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461423, -0.326473, 0.824926,
		-0.475818, 0.875854, 0.080479,
		-0.748789, -0.355380, -0.559482,
		33.906464, 32.746803, 42.623550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797115, 33.145439, 43.378712>,  <34.430614, 32.995567, 43.015186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797115, 33.145439, 43.378712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650616, 32.857269, 43.143135>,  <33.562717, 32.684368, 43.001789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.650616, 32.857269, 43.143135>,  <33.797115, 33.145439, 43.378712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.650616, 32.857269, 43.143135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525834, -0.361938, 0.769740,
		-0.767698, 0.591603, -0.246263,
		-0.366249, -0.720421, -0.588945,
		33.540741, 32.641144, 42.966454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204391, 33.017006, 43.724949>,  <33.797115, 33.145439, 43.378712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204391, 33.017006, 43.724949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257851, 32.697159, 43.490768>,  <33.289928, 32.505253, 43.350258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257851, 32.697159, 43.490768>,  <33.204391, 33.017006, 43.724949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257851, 32.697159, 43.490768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525550, -0.558030, 0.642183,
		-0.840199, 0.221857, -0.494818,
		0.133650, -0.799613, -0.585454,
		33.297947, 32.457275, 43.315132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530678, 32.705841, 43.592533>,  <33.204391, 33.017006, 43.724949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530678, 32.705841, 43.592533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825054, 32.437870, 43.553360>,  <33.001678, 32.277088, 43.529858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.825054, 32.437870, 43.553360>,  <32.530678, 32.705841, 43.592533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825054, 32.437870, 43.553360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493325, -0.629661, 0.600131,
		-0.463708, -0.393348, -0.793884,
		0.735939, -0.669928, -0.097930,
		33.045837, 32.236893, 43.523979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.165283, 32.090656, 43.725632>,  <32.530678, 32.705841, 43.592533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.165283, 32.090656, 43.725632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546448, 31.970514, 43.742306>,  <32.775146, 31.898428, 43.752312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.546448, 31.970514, 43.742306>,  <32.165283, 32.090656, 43.725632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546448, 31.970514, 43.742306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244180, -0.678529, 0.692802,
		-0.179801, -0.670361, -0.719922,
		0.952916, -0.300357, 0.041689,
		32.832321, 31.880407, 43.754814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155430, 31.409573, 43.698475>,  <32.165283, 32.090656, 43.725632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155430, 31.409573, 43.698475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472488, 31.528566, 43.911346>,  <32.662724, 31.599962, 44.039070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.472488, 31.528566, 43.911346>,  <32.155430, 31.409573, 43.698475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472488, 31.528566, 43.911346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313587, -0.549642, 0.774310,
		0.522855, -0.780638, -0.342384,
		0.792645, 0.297485, 0.532182,
		32.710281, 31.617811, 44.070999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259090, 30.820715, 44.117096>,  <32.155430, 31.409573, 43.698475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259090, 30.820715, 44.117096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487663, 31.105284, 44.280724>,  <32.624805, 31.276026, 44.378902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487663, 31.105284, 44.280724>,  <32.259090, 30.820715, 44.117096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487663, 31.105284, 44.280724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119013, -0.421365, 0.899048,
		0.811973, -0.562430, -0.156113,
		0.571433, 0.711424, 0.409073,
		32.659092, 31.318710, 44.403446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.735950, 30.508083, 44.520470>,  <32.259090, 30.820715, 44.117096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.735950, 30.508083, 44.520470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740833, 30.880106, 44.667355>,  <32.743763, 31.103319, 44.755486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740833, 30.880106, 44.667355>,  <32.735950, 30.508083, 44.520470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740833, 30.880106, 44.667355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354426, -0.339373, 0.871326,
		0.935005, -0.140785, 0.325494,
		0.012206, 0.930057, 0.367213,
		32.744495, 31.159122, 44.777519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018673, 30.400146, 45.112747>,  <32.735950, 30.508083, 44.520470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018673, 30.400146, 45.112747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831253, 30.752453, 45.140194>,  <32.718800, 30.963837, 45.156662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.831253, 30.752453, 45.140194>,  <33.018673, 30.400146, 45.112747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831253, 30.752453, 45.140194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240494, -0.201902, 0.949420,
		0.850071, 0.428352, 0.306420,
		-0.468553, 0.880767, 0.068615,
		32.690689, 31.016684, 45.160778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309509, 30.684090, 45.733395>,  <33.018673, 30.400146, 45.112747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309509, 30.684090, 45.733395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964909, 30.870413, 45.652557>,  <32.758148, 30.982206, 45.604057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964909, 30.870413, 45.652557>,  <33.309509, 30.684090, 45.733395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964909, 30.870413, 45.652557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271905, -0.087091, 0.958375,
		0.428820, 0.880589, 0.201685,
		-0.861499, 0.465809, -0.202090,
		32.706459, 31.010157, 45.591930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336079, 31.325224, 46.171898>,  <33.309509, 30.684090, 45.733395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336079, 31.325224, 46.171898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957684, 31.221375, 46.094234>,  <32.730644, 31.159065, 46.047638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.957684, 31.221375, 46.094234>,  <33.336079, 31.325224, 46.171898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.957684, 31.221375, 46.094234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203284, 0.008507, 0.979083,
		-0.252541, 0.965673, -0.060825,
		-0.945991, -0.259623, -0.194157,
		32.673885, 31.143488, 46.035988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932652, 31.625191, 46.643707>,  <33.336079, 31.325224, 46.171898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932652, 31.625191, 46.643707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656380, 31.369257, 46.508904>,  <32.490616, 31.215696, 46.428020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.656380, 31.369257, 46.508904>,  <32.932652, 31.625191, 46.643707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.656380, 31.369257, 46.508904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373376, -0.083591, 0.923906,
		-0.619320, 0.763951, -0.181165,
		-0.690676, -0.639837, -0.337010,
		32.449177, 31.177305, 46.407799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276047, 31.854376, 46.977551>,  <32.932652, 31.625191, 46.643707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276047, 31.854376, 46.977551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243031, 31.466972, 46.883591>,  <32.223221, 31.234529, 46.827213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243031, 31.466972, 46.883591>,  <32.276047, 31.854376, 46.977551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243031, 31.466972, 46.883591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361680, -0.190521, 0.912628,
		-0.928641, 0.160289, -0.334564,
		-0.082542, -0.968509, -0.234898,
		32.218269, 31.176420, 46.813122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555666, 31.648893, 47.158775>,  <32.276047, 31.854376, 46.977551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555666, 31.648893, 47.158775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744818, 31.296957, 47.139729>,  <31.858309, 31.085796, 47.128300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.744818, 31.296957, 47.139729>,  <31.555666, 31.648893, 47.158775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744818, 31.296957, 47.139729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511166, -0.317951, 0.798509,
		-0.717701, -0.353256, -0.600097,
		0.472879, -0.879840, -0.047621,
		31.886681, 31.033005, 47.125443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087835, 31.130409, 47.431274>,  <31.555666, 31.648893, 47.158775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087835, 31.130409, 47.431274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441168, 30.944242, 47.453594>,  <31.653168, 30.832542, 47.466988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.441168, 30.944242, 47.453594>,  <31.087835, 31.130409, 47.431274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441168, 30.944242, 47.453594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270421, -0.408736, 0.871669,
		-0.382889, -0.785058, -0.486908,
		0.883328, -0.465423, 0.055796,
		31.706167, 30.804617, 47.470333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937710, 30.453064, 47.677273>,  <31.087835, 31.130409, 47.431274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937710, 30.453064, 47.677273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328880, 30.506845, 47.741253>,  <31.563583, 30.539114, 47.779640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328880, 30.506845, 47.741253>,  <30.937710, 30.453064, 47.677273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328880, 30.506845, 47.741253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067206, -0.522421, 0.850035,
		0.197850, -0.842021, -0.501853,
		0.977926, 0.134452, 0.159950,
		31.622257, 30.547182, 47.789238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106482, 29.847197, 47.955376>,  <30.937710, 30.453064, 47.677273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106482, 29.847197, 47.955376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391457, 30.114931, 48.039680>,  <31.562443, 30.275572, 48.090263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.391457, 30.114931, 48.039680>,  <31.106482, 29.847197, 47.955376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391457, 30.114931, 48.039680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113663, -0.406445, 0.906578,
		0.692468, -0.621925, -0.365645,
		0.712438, 0.669337, 0.210760,
		31.605188, 30.315733, 48.102909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638462, 29.466808, 48.085945>,  <31.106482, 29.847197, 47.955376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638462, 29.466808, 48.085945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725727, 29.805141, 48.280663>,  <31.778086, 30.008142, 48.397491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725727, 29.805141, 48.280663>,  <31.638462, 29.466808, 48.085945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725727, 29.805141, 48.280663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030114, -0.492738, 0.869657,
		0.975447, -0.204387, -0.082026,
		0.218164, 0.845834, 0.486794,
		31.791176, 30.058891, 48.426701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.197884, 29.387220, 48.447525>,  <31.638462, 29.466808, 48.085945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.197884, 29.387220, 48.447525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069759, 29.705994, 48.652386>,  <31.992884, 29.897257, 48.775303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069759, 29.705994, 48.652386>,  <32.197884, 29.387220, 48.447525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069759, 29.705994, 48.652386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100260, -0.509078, 0.854861,
		0.941991, 0.325171, 0.083163,
		-0.320313, 0.796934, 0.512149,
		31.973665, 29.945074, 48.806030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686558, 29.550373, 49.020473>,  <32.197884, 29.387220, 48.447525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686558, 29.550373, 49.020473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331192, 29.707506, 49.115475>,  <32.117973, 29.801786, 49.172474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331192, 29.707506, 49.115475>,  <32.686558, 29.550373, 49.020473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331192, 29.707506, 49.115475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103990, -0.331708, 0.937633,
		0.447114, 0.857702, 0.253843,
		-0.888412, 0.392832, 0.237503,
		32.064667, 29.825356, 49.186726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806602, 30.004370, 49.621021>,  <32.686558, 29.550373, 49.020473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806602, 30.004370, 49.621021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416557, 29.915688, 49.621738>,  <32.182529, 29.862478, 49.622169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416557, 29.915688, 49.621738>,  <32.806602, 30.004370, 49.621021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416557, 29.915688, 49.621738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085747, -0.369653, 0.925205,
		-0.204460, 0.902332, 0.379464,
		-0.975112, -0.221705, 0.001793,
		32.124023, 29.849176, 49.622276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590782, 30.207460, 50.287865>,  <32.806602, 30.004370, 49.621021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590782, 30.207460, 50.287865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292809, 29.967171, 50.171795>,  <32.114025, 29.822998, 50.102154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.292809, 29.967171, 50.171795>,  <32.590782, 30.207460, 50.287865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292809, 29.967171, 50.171795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063304, -0.369348, 0.927132,
		-0.664125, 0.709024, 0.237113,
		-0.744936, -0.600722, -0.290178,
		32.069328, 29.786955, 50.084740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.988626, 30.189079, 50.830765>,  <32.590782, 30.207460, 50.287865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.988626, 30.189079, 50.830765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916475, 29.849403, 50.632233>,  <31.873184, 29.645597, 50.513115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916475, 29.849403, 50.632233>,  <31.988626, 30.189079, 50.830765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916475, 29.849403, 50.632233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431811, -0.385013, 0.815662,
		-0.883744, 0.361447, -0.297242,
		-0.180377, -0.849189, -0.496329,
		31.862362, 29.594646, 50.483334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316544, 30.074728, 51.096741>,  <31.988626, 30.189079, 50.830765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316544, 30.074728, 51.096741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395899, 29.725807, 50.917976>,  <31.443512, 29.516455, 50.810719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395899, 29.725807, 50.917976>,  <31.316544, 30.074728, 51.096741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395899, 29.725807, 50.917976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391308, -0.488552, 0.779869,
		-0.898622, 0.020166, -0.438260,
		0.198386, -0.872302, -0.446914,
		31.455414, 29.464117, 50.783901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.714973, 29.703203, 51.173649>,  <31.316544, 30.074728, 51.096741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.714973, 29.703203, 51.173649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036304, 29.470671, 51.121925>,  <31.229103, 29.331152, 51.090893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036304, 29.470671, 51.121925>,  <30.714973, 29.703203, 51.173649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036304, 29.470671, 51.121925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224095, -0.496239, 0.838766,
		-0.551768, -0.644826, -0.528915,
		0.803326, -0.581332, -0.129307,
		31.277302, 29.296270, 51.083134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515776, 29.047787, 51.095604>,  <30.714973, 29.703203, 51.173649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515776, 29.047787, 51.095604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876657, 29.070446, 51.266632>,  <31.093187, 29.084042, 51.369251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.876657, 29.070446, 51.266632>,  <30.515776, 29.047787, 51.095604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.876657, 29.070446, 51.266632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350702, -0.480712, 0.803694,
		0.251069, -0.875047, -0.413833,
		0.902204, 0.056650, 0.427573,
		31.147318, 29.087440, 51.394905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623653, 28.480885, 51.525719>,  <30.515776, 29.047787, 51.095604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623653, 28.480885, 51.525719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925203, 28.714417, 51.646259>,  <31.106134, 28.854536, 51.718586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.925203, 28.714417, 51.646259>,  <30.623653, 28.480885, 51.525719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925203, 28.714417, 51.646259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078389, -0.375466, 0.923515,
		0.652324, -0.719839, -0.237289,
		0.753876, 0.583830, 0.301353,
		31.151365, 28.889565, 51.736664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266802, 28.227947, 51.330471>,  <30.623653, 28.480885, 51.525719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266802, 28.227947, 51.330471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210543, 27.833992, 51.370903>,  <31.176786, 27.597620, 51.395161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.210543, 27.833992, 51.370903>,  <31.266802, 28.227947, 51.330471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.210543, 27.833992, 51.370903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787776, -0.049489, 0.613971,
		-0.599689, 0.165982, 0.782830,
		-0.140649, -0.984886, 0.101079,
		31.168348, 27.538527, 51.401226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008501, 27.714699, 50.846409>,  <31.266802, 28.227947, 51.330471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008501, 27.714699, 50.846409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356623, 27.730354, 51.042789>,  <31.565496, 27.739748, 51.160618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.356623, 27.730354, 51.042789>,  <31.008501, 27.714699, 50.846409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356623, 27.730354, 51.042789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337437, -0.678730, 0.652274,
		0.358755, -0.733344, -0.577495,
		0.870305, 0.039139, 0.490955,
		31.617714, 27.742096, 51.190075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316071, 27.009184, 51.044117>,  <31.008501, 27.714699, 50.846409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316071, 27.009184, 51.044117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459412, 27.286594, 51.294113>,  <31.545416, 27.453041, 51.444111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.459412, 27.286594, 51.294113>,  <31.316071, 27.009184, 51.044117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.459412, 27.286594, 51.294113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274099, -0.561787, 0.780554,
		0.892443, -0.451020, -0.011223,
		0.358350, 0.693524, 0.624987,
		31.566917, 27.494652, 51.481609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925873, 26.852804, 51.348480>,  <31.316071, 27.009184, 51.044117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925873, 26.852804, 51.348480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705019, 27.072569, 51.599335>,  <31.572506, 27.204428, 51.749847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.705019, 27.072569, 51.599335>,  <31.925873, 26.852804, 51.348480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705019, 27.072569, 51.599335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170119, -0.810592, 0.560357,
		0.816215, 0.202706, 0.541021,
		-0.552135, 0.549410, 0.627133,
		31.539379, 27.237392, 51.787476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029358, 26.283184, 50.913898>,  <31.925873, 26.852804, 51.348480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029358, 26.283184, 50.913898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095921, 26.082312, 50.574459>,  <32.135857, 25.961788, 50.370796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.095921, 26.082312, 50.574459>,  <32.029358, 26.283184, 50.913898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095921, 26.082312, 50.574459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105616, 0.864726, -0.491015,
		0.980385, -0.007917, 0.196934,
		0.166407, -0.502182, -0.848600,
		32.145844, 25.931658, 50.319878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742428, 26.436762, 50.817894>,  <32.029358, 26.283184, 50.913898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742428, 26.436762, 50.817894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531055, 26.364265, 50.486134>,  <32.404232, 26.320766, 50.287075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531055, 26.364265, 50.486134>,  <32.742428, 26.436762, 50.817894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531055, 26.364265, 50.486134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512875, 0.710379, -0.481997,
		0.676548, -0.680084, -0.282434,
		-0.528434, -0.181241, -0.829403,
		32.372524, 26.309893, 50.237312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.057213, 26.157328, 50.162998>,  <32.742428, 26.436762, 50.817894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.057213, 26.157328, 50.162998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760349, 26.418440, 50.102234>,  <32.582230, 26.575108, 50.065777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.760349, 26.418440, 50.102234>,  <33.057213, 26.157328, 50.162998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760349, 26.418440, 50.102234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670092, 0.727189, -0.148906,
		0.013262, -0.212303, -0.977114,
		-0.742159, 0.652782, -0.151907,
		32.537701, 26.614275, 50.056664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176670, 26.526621, 49.564220>,  <33.057213, 26.157328, 50.162998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176670, 26.526621, 49.564220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922173, 26.770630, 49.753139>,  <32.769474, 26.917034, 49.866489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922173, 26.770630, 49.753139>,  <33.176670, 26.526621, 49.564220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922173, 26.770630, 49.753139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490266, 0.792385, -0.362995,
		-0.595677, 0.000597, -0.803224,
		-0.636246, 0.610021, 0.472298,
		32.731300, 26.953636, 49.894829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917492, 27.008247, 49.146973>,  <33.176670, 26.526621, 49.564220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917492, 27.008247, 49.146973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832958, 27.198965, 49.488266>,  <32.782238, 27.313395, 49.693043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832958, 27.198965, 49.488266>,  <32.917492, 27.008247, 49.146973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832958, 27.198965, 49.488266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559258, 0.774917, -0.294508,
		-0.801603, 0.414937, -0.430418,
		-0.211336, 0.476793, 0.853232,
		32.769558, 27.342003, 49.744236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767300, 27.726368, 48.929611>,  <32.917492, 27.008247, 49.146973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767300, 27.726368, 48.929611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858425, 27.713577, 49.318882>,  <32.913101, 27.705902, 49.552444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.858425, 27.713577, 49.318882>,  <32.767300, 27.726368, 48.929611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858425, 27.713577, 49.318882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593336, 0.797026, -0.112704,
		-0.772046, 0.603098, 0.200543,
		0.227809, -0.031976, 0.973181,
		32.926769, 27.703985, 49.610836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650055, 28.420383, 49.146511>,  <32.767300, 27.726368, 48.929611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650055, 28.420383, 49.146511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910080, 28.237846, 49.389545>,  <33.066097, 28.128325, 49.535366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910080, 28.237846, 49.389545>,  <32.650055, 28.420383, 49.146511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910080, 28.237846, 49.389545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651088, 0.746768, -0.135728,
		-0.391790, 0.483827, 0.782567,
		0.650065, -0.456343, 0.607590,
		33.105099, 28.100943, 49.571823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.940300, 28.960314, 49.555088>,  <32.650055, 28.420383, 49.146511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.940300, 28.960314, 49.555088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200024, 28.669340, 49.643848>,  <33.355858, 28.494757, 49.697105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200024, 28.669340, 49.643848>,  <32.940300, 28.960314, 49.555088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200024, 28.669340, 49.643848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760519, 0.622359, -0.185147,
		-0.003420, 0.288977, 0.957330,
		0.649306, -0.727435, 0.221901,
		33.394817, 28.451109, 49.710419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.414890, 29.206749, 50.023335>,  <32.940300, 28.960314, 49.555088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.414890, 29.206749, 50.023335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569435, 28.896832, 49.823170>,  <33.662163, 28.710880, 49.703072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.569435, 28.896832, 49.823170>,  <33.414890, 29.206749, 50.023335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569435, 28.896832, 49.823170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725343, 0.590366, -0.354041,
		0.569738, -0.226185, 0.790088,
		0.386362, -0.774796, -0.500416,
		33.685345, 28.664392, 49.673046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109272, 29.287218, 50.035145>,  <33.414890, 29.206749, 50.023335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109272, 29.287218, 50.035145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072021, 29.016420, 49.743114>,  <34.049671, 28.853941, 49.567898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072021, 29.016420, 49.743114>,  <34.109272, 29.287218, 50.035145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072021, 29.016420, 49.743114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790613, 0.395416, -0.467522,
		0.605192, -0.620745, 0.498415,
		-0.093131, -0.676994, -0.730072,
		34.044083, 28.813322, 49.524094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834663, 28.974878, 49.933445>,  <34.109272, 29.287218, 50.035145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834663, 28.974878, 49.933445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593346, 28.949682, 49.615433>,  <34.448555, 28.934565, 49.424625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593346, 28.949682, 49.615433>,  <34.834663, 28.974878, 49.933445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593346, 28.949682, 49.615433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691992, 0.454221, -0.561098,
		0.396461, -0.888660, -0.230440,
		-0.603295, -0.062991, -0.795026,
		34.412357, 28.930784, 49.376926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374798, 29.000967, 49.423367>,  <34.834663, 28.974878, 49.933445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374798, 29.000967, 49.423367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038502, 29.048212, 49.212009>,  <34.836723, 29.076559, 49.085194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.038502, 29.048212, 49.212009>,  <35.374798, 29.000967, 49.423367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.038502, 29.048212, 49.212009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518329, 0.457628, -0.722435,
		0.156481, -0.881264, -0.445968,
		-0.840743, 0.118111, -0.528395,
		34.786278, 29.083645, 49.053490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525215, 28.838648, 48.638485>,  <35.374798, 29.000967, 49.423367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525215, 28.838648, 48.638485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169750, 29.020531, 48.614761>,  <34.956470, 29.129662, 48.600529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.169750, 29.020531, 48.614761>,  <35.525215, 28.838648, 48.638485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169750, 29.020531, 48.614761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247708, 0.367177, -0.896561,
		-0.385899, -0.811431, -0.438932,
		-0.888664, 0.454709, -0.059304,
		34.903152, 29.156944, 48.596970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147640, 28.653587, 48.021748>,  <35.525215, 28.838648, 48.638485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147640, 28.653587, 48.021748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994400, 29.010336, 48.117916>,  <34.902458, 29.224384, 48.175617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994400, 29.010336, 48.117916>,  <35.147640, 28.653587, 48.021748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994400, 29.010336, 48.117916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347479, 0.380307, -0.857103,
		-0.855859, -0.244813, -0.455601,
		-0.383098, 0.891871, 0.240421,
		34.879471, 29.277897, 48.190041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766834, 28.848215, 47.470913>,  <35.147640, 28.653587, 48.021748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766834, 28.848215, 47.470913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816544, 29.197392, 47.659603>,  <34.846371, 29.406898, 47.772816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816544, 29.197392, 47.659603>,  <34.766834, 28.848215, 47.470913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816544, 29.197392, 47.659603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219942, 0.439351, -0.870974,
		-0.967564, 0.211994, -0.137396,
		0.124276, 0.872943, 0.471727,
		34.853825, 29.459274, 47.801121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462814, 29.319445, 47.087578>,  <34.766834, 28.848215, 47.470913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462814, 29.319445, 47.087578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707729, 29.551439, 47.302505>,  <34.854679, 29.690636, 47.431461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.707729, 29.551439, 47.302505>,  <34.462814, 29.319445, 47.087578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707729, 29.551439, 47.302505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378746, 0.381391, -0.843263,
		-0.694010, 0.719832, 0.013855,
		0.612292, 0.579986, 0.537322,
		34.891418, 29.725435, 47.463703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475563, 29.980936, 46.746372>,  <34.462814, 29.319445, 47.087578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475563, 29.980936, 46.746372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808975, 30.003241, 46.966236>,  <35.009022, 30.016624, 47.098152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808975, 30.003241, 46.966236>,  <34.475563, 29.980936, 46.746372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808975, 30.003241, 46.966236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478683, 0.423861, -0.768898,
		-0.275854, 0.904009, 0.326607,
		0.833527, 0.055763, 0.549658,
		35.059032, 30.019970, 47.131134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834911, 30.735748, 46.670002>,  <34.475563, 29.980936, 46.746372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834911, 30.735748, 46.670002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128311, 30.502783, 46.810154>,  <35.304352, 30.363003, 46.894245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.128311, 30.502783, 46.810154>,  <34.834911, 30.735748, 46.670002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.128311, 30.502783, 46.810154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644934, 0.433664, -0.629282,
		0.214556, 0.687553, 0.693713,
		0.733503, -0.582415, 0.350381,
		35.348362, 30.328058, 46.915268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460133, 31.266632, 46.834255>,  <34.834911, 30.735748, 46.670002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460133, 31.266632, 46.834255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607006, 30.896608, 46.795395>,  <35.695129, 30.674595, 46.772079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607006, 30.896608, 46.795395>,  <35.460133, 31.266632, 46.834255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607006, 30.896608, 46.795395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557074, 0.302351, -0.773468,
		0.744877, 0.229888, 0.626346,
		0.367187, -0.925060, -0.097149,
		35.717163, 30.619091, 46.766251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.139233, 31.340916, 46.775105>,  <35.460133, 31.266632, 46.834255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.139233, 31.340916, 46.775105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056511, 30.979364, 46.625309>,  <36.006878, 30.762434, 46.535431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.056511, 30.979364, 46.625309>,  <36.139233, 31.340916, 46.775105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056511, 30.979364, 46.625309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599549, 0.185395, -0.778569,
		0.773158, -0.385534, 0.503577,
		-0.206804, -0.903876, -0.374486,
		35.994469, 30.708202, 46.512962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828674, 31.257620, 46.441002>,  <36.139233, 31.340916, 46.775105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828674, 31.257620, 46.441002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562019, 30.983450, 46.323841>,  <36.402027, 30.818949, 46.253544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.562019, 30.983450, 46.323841>,  <36.828674, 31.257620, 46.441002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562019, 30.983450, 46.323841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292427, 0.120951, -0.948608,
		0.685626, -0.718028, 0.119806,
		-0.666636, -0.685425, -0.292898,
		36.362030, 30.777822, 46.235973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209133, 30.939671, 45.920013>,  <36.828674, 31.257620, 46.441002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209133, 30.939671, 45.920013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841888, 30.813900, 45.823509>,  <36.621540, 30.738438, 45.765606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.841888, 30.813900, 45.823509>,  <37.209133, 30.939671, 45.920013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841888, 30.813900, 45.823509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181039, 0.208801, -0.961055,
		0.352558, -0.926033, -0.134779,
		-0.918111, -0.314427, -0.241263,
		36.566456, 30.719572, 45.751129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.220776, 30.342375, 45.337944>,  <37.209133, 30.939671, 45.920013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.220776, 30.342375, 45.337944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879787, 30.551317, 45.329548>,  <36.675194, 30.676683, 45.324509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.879787, 30.551317, 45.329548>,  <37.220776, 30.342375, 45.337944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879787, 30.551317, 45.329548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198848, 0.286854, -0.937109,
		-0.483484, -0.803031, -0.348404,
		-0.852469, 0.522357, -0.020992,
		36.624046, 30.708025, 45.323250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001434, 30.192318, 44.674377>,  <37.220776, 30.342375, 45.337944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001434, 30.192318, 44.674377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784424, 30.509865, 44.784241>,  <36.654217, 30.700394, 44.850159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784424, 30.509865, 44.784241>,  <37.001434, 30.192318, 44.674377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784424, 30.509865, 44.784241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038211, 0.349945, -0.935991,
		-0.839167, -0.497307, -0.220190,
		-0.542529, 0.793867, 0.274660,
		36.621666, 30.748024, 44.866638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516468, 30.195381, 44.155849>,  <37.001434, 30.192318, 44.674377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516468, 30.195381, 44.155849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496525, 30.559341, 44.320576>,  <36.484558, 30.777718, 44.419411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496525, 30.559341, 44.320576>,  <36.516468, 30.195381, 44.155849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496525, 30.559341, 44.320576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041401, 0.413856, -0.909401,
		-0.997898, -0.028295, -0.058306,
		-0.049862, 0.909903, 0.411814,
		36.481567, 30.832312, 44.444118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864384, 30.517988, 44.027534>,  <36.516468, 30.195381, 44.155849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864384, 30.517988, 44.027534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107491, 30.831945, 44.075794>,  <36.253357, 31.020319, 44.104748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107491, 30.831945, 44.075794>,  <35.864384, 30.517988, 44.027534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107491, 30.831945, 44.075794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220781, 0.312949, -0.923752,
		-0.762803, 0.534794, 0.363492,
		0.607772, 0.784894, 0.120646,
		36.289822, 31.067413, 44.111988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499836, 31.088144, 43.770828>,  <35.864384, 30.517988, 44.027534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499836, 31.088144, 43.770828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877239, 31.220350, 43.761398>,  <36.103680, 31.299675, 43.755741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.877239, 31.220350, 43.761398>,  <35.499836, 31.088144, 43.770828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877239, 31.220350, 43.761398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168424, 0.417080, -0.893128,
		-0.285359, 0.846643, 0.449185,
		0.943506, 0.330516, -0.023578,
		36.160290, 31.319506, 43.754326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508396, 31.795919, 43.527863>,  <35.499836, 31.088144, 43.770828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508396, 31.795919, 43.527863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880188, 31.671597, 43.448391>,  <36.103264, 31.597004, 43.400707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.880188, 31.671597, 43.448391>,  <35.508396, 31.795919, 43.527863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.880188, 31.671597, 43.448391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037685, 0.455766, -0.889302,
		0.366949, 0.834073, 0.411911,
		0.929478, -0.310805, -0.198674,
		36.159031, 31.578356, 43.388790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878704, 32.363426, 43.444485>,  <35.508396, 31.795919, 43.527863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878704, 32.363426, 43.444485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118389, 32.090981, 43.276188>,  <36.262199, 31.927513, 43.175209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118389, 32.090981, 43.276188>,  <35.878704, 32.363426, 43.444485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118389, 32.090981, 43.276188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109937, 0.590573, -0.799460,
		0.793002, 0.432795, 0.428761,
		0.599217, -0.681111, -0.420746,
		36.298153, 31.886648, 43.149963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399673, 32.812309, 43.229076>,  <35.878704, 32.363426, 43.444485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399673, 32.812309, 43.229076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417202, 32.463314, 43.034412>,  <36.427719, 32.253918, 42.917614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417202, 32.463314, 43.034412>,  <36.399673, 32.812309, 43.229076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417202, 32.463314, 43.034412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046062, 0.488373, -0.871418,
		0.997977, 0.015774, 0.061592,
		0.043825, -0.872492, -0.486658,
		36.430351, 32.201565, 42.888416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953739, 32.963799, 42.782883>,  <36.399673, 32.812309, 43.229076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953739, 32.963799, 42.782883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789082, 32.631367, 42.633297>,  <36.690285, 32.431908, 42.543545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789082, 32.631367, 42.633297>,  <36.953739, 32.963799, 42.782883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789082, 32.631367, 42.633297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207096, 0.314299, -0.926459,
		0.887501, -0.458820, 0.042734,
		-0.411647, -0.831083, -0.373961,
		36.665588, 32.382042, 42.521111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491959, 32.635933, 42.402382>,  <36.953739, 32.963799, 42.782883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491959, 32.635933, 42.402382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132103, 32.539692, 42.256638>,  <36.916191, 32.481949, 42.169193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.132103, 32.539692, 42.256638>,  <37.491959, 32.635933, 42.402382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.132103, 32.539692, 42.256638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215527, 0.481025, -0.849802,
		0.379730, -0.843045, -0.380893,
		-0.899641, -0.240602, -0.364359,
		36.862209, 32.467510, 42.147331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633381, 32.239422, 41.692547>,  <37.491959, 32.635933, 42.402382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633381, 32.239422, 41.692547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241268, 32.318188, 41.686028>,  <37.006001, 32.365448, 41.682117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241268, 32.318188, 41.686028>,  <37.633381, 32.239422, 41.692547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241268, 32.318188, 41.686028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095093, 0.397860, -0.912505,
		-0.173202, -0.896064, -0.408741,
		-0.980285, 0.196917, -0.016299,
		36.947182, 32.377262, 41.681137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168716, 31.860975, 41.088661>,  <37.633381, 32.239422, 41.692547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168716, 31.860975, 41.088661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014565, 32.208466, 41.213108>,  <36.922073, 32.416962, 41.287777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014565, 32.208466, 41.213108>,  <37.168716, 31.860975, 41.088661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014565, 32.208466, 41.213108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116196, 0.380163, -0.917592,
		-0.915413, -0.317471, -0.247450,
		-0.385380, 0.868728, 0.311117,
		36.898949, 32.469086, 41.306442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800606, 32.036449, 40.507858>,  <37.168716, 31.860975, 41.088661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800606, 32.036449, 40.507858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843845, 32.357082, 40.743069>,  <36.869789, 32.549461, 40.884197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.843845, 32.357082, 40.743069>,  <36.800606, 32.036449, 40.507858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.843845, 32.357082, 40.743069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185828, 0.564778, -0.804048,
		-0.976618, 0.196186, -0.087907,
		0.108095, 0.801584, 0.588030,
		36.876274, 32.597557, 40.919479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.382519, 32.629147, 40.030418>,  <36.800606, 32.036449, 40.507858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.382519, 32.629147, 40.030418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602661, 32.820549, 40.304100>,  <36.734745, 32.935390, 40.468311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602661, 32.820549, 40.304100>,  <36.382519, 32.629147, 40.030418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602661, 32.820549, 40.304100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308899, 0.644637, -0.699303,
		-0.775687, 0.596216, 0.206969,
		0.550355, 0.478507, 0.684207,
		36.767769, 32.964100, 40.509361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203262, 33.349804, 39.995884>,  <36.382519, 32.629147, 40.030418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203262, 33.349804, 39.995884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576641, 33.328182, 40.137737>,  <36.800667, 33.315208, 40.222847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.576641, 33.328182, 40.137737>,  <36.203262, 33.349804, 39.995884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576641, 33.328182, 40.137737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301517, 0.653802, -0.693996,
		-0.194346, 0.754733, 0.626585,
		0.933443, -0.054051, 0.354629,
		36.856674, 33.311966, 40.244125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528542, 34.093441, 39.897099>,  <36.203262, 33.349804, 39.995884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528542, 34.093441, 39.897099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844810, 33.862476, 39.978516>,  <37.034573, 33.723896, 40.027367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.844810, 33.862476, 39.978516>,  <36.528542, 34.093441, 39.897099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.844810, 33.862476, 39.978516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528512, 0.475896, -0.702992,
		0.309050, 0.663413, 0.681448,
		0.790673, -0.577413, 0.203546,
		37.082012, 33.689251, 40.039581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079327, 34.523647, 39.944496>,  <36.528542, 34.093441, 39.897099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079327, 34.523647, 39.944496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253521, 34.172352, 39.865456>,  <37.358040, 33.961575, 39.818031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253521, 34.172352, 39.865456>,  <37.079327, 34.523647, 39.944496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253521, 34.172352, 39.865456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571256, 0.439266, -0.693334,
		0.695712, 0.189058, 0.692994,
		0.435489, -0.878238, -0.197602,
		37.384167, 33.908882, 39.806175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811909, 34.669685, 39.802464>,  <37.079327, 34.523647, 39.944496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811909, 34.669685, 39.802464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741333, 34.316204, 39.629059>,  <37.698990, 34.104115, 39.525017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741333, 34.316204, 39.629059>,  <37.811909, 34.669685, 39.802464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741333, 34.316204, 39.629059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572277, 0.266243, -0.775637,
		0.800855, -0.384941, 0.458749,
		-0.176436, -0.883705, -0.433515,
		37.688400, 34.051094, 39.499004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456181, 34.462463, 39.543285>,  <37.811909, 34.669685, 39.802464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456181, 34.462463, 39.543285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189491, 34.244747, 39.339626>,  <38.029476, 34.114117, 39.217430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189491, 34.244747, 39.339626>,  <38.456181, 34.462463, 39.543285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189491, 34.244747, 39.339626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495610, 0.186434, -0.848300,
		0.556643, -0.817919, 0.145455,
		-0.666723, -0.544289, -0.509147,
		37.989475, 34.081459, 39.186882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885059, 34.099377, 39.054493>,  <38.456181, 34.462463, 39.543285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885059, 34.099377, 39.054493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510853, 34.131489, 38.916878>,  <38.286327, 34.150757, 38.834309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510853, 34.131489, 38.916878>,  <38.885059, 34.099377, 39.054493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510853, 34.131489, 38.916878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350462, 0.333654, -0.875129,
		0.044535, -0.939271, -0.340274,
		-0.935517, 0.080279, -0.344038,
		38.230198, 34.155571, 38.813667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574455, 33.602024, 38.921818>,  <38.885059, 34.099377, 39.054493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574455, 33.602024, 38.921818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845684, 33.308693, 38.941605>,  <40.008423, 33.132694, 38.953476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.845684, 33.308693, 38.941605>,  <39.574455, 33.602024, 38.921818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.845684, 33.308693, 38.941605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579496, -0.492005, 0.649705,
		-0.452110, -0.469211, -0.758576,
		0.678072, -0.733329, 0.049465,
		40.049107, 33.088696, 38.956444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378922, 32.920628, 39.217548>,  <39.574455, 33.602024, 38.921818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378922, 32.920628, 39.217548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774387, 32.882820, 39.264194>,  <40.011669, 32.860134, 39.292183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774387, 32.882820, 39.264194>,  <39.378922, 32.920628, 39.217548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774387, 32.882820, 39.264194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146928, -0.450125, 0.880795,
		-0.030761, -0.887949, -0.458912,
		0.988669, -0.094522, 0.116619,
		40.070988, 32.854462, 39.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579571, 32.182236, 39.294682>,  <39.378922, 32.920628, 39.217548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579571, 32.182236, 39.294682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864437, 32.403904, 39.467064>,  <40.035355, 32.536903, 39.570492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.864437, 32.403904, 39.467064>,  <39.579571, 32.182236, 39.294682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.864437, 32.403904, 39.467064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026221, -0.592457, 0.805175,
		0.701524, -0.584716, -0.407394,
		0.712163, 0.554168, 0.430955,
		40.078087, 32.570156, 39.596352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.061707, 31.691614, 39.627346>,  <39.579571, 32.182236, 39.294682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.061707, 31.691614, 39.627346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114002, 32.053215, 39.790165>,  <40.145378, 32.270176, 39.887856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114002, 32.053215, 39.790165>,  <40.061707, 31.691614, 39.627346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114002, 32.053215, 39.790165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216375, -0.426688, 0.878134,
		0.967517, -0.026731, -0.251388,
		0.130738, 0.904004, 0.407044,
		40.153225, 32.324417, 39.912277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591492, 31.447960, 40.164165>,  <40.061707, 31.691614, 39.627346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591492, 31.447960, 40.164165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432060, 31.801798, 40.261021>,  <40.336403, 32.014099, 40.319134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.432060, 31.801798, 40.261021>,  <40.591492, 31.447960, 40.164165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.432060, 31.801798, 40.261021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053437, -0.241170, 0.969011,
		0.915578, 0.399162, 0.048854,
		-0.398575, 0.884594, 0.242140,
		40.312489, 32.067177, 40.333664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085602, 31.806509, 40.611835>,  <40.591492, 31.447960, 40.164165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085602, 31.806509, 40.611835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717983, 31.956957, 40.658985>,  <40.497414, 32.047226, 40.687275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.717983, 31.956957, 40.658985>,  <41.085602, 31.806509, 40.611835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717983, 31.956957, 40.658985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004291, -0.289476, 0.957176,
		0.394135, 0.880191, 0.264427,
		-0.919043, 0.376121, 0.117870,
		40.442272, 32.069794, 40.694347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.133099, 32.311432, 41.242157>,  <41.085602, 31.806509, 40.611835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.133099, 32.311432, 41.242157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750965, 32.212002, 41.178215>,  <40.521687, 32.152344, 41.139851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.750965, 32.212002, 41.178215>,  <41.133099, 32.311432, 41.242157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.750965, 32.212002, 41.178215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129206, -0.135157, 0.982364,
		-0.265796, 0.959136, 0.097003,
		-0.955331, -0.248575, -0.159850,
		40.464367, 32.137428, 41.130260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701218, 32.753407, 41.678886>,  <41.133099, 32.311432, 41.242157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701218, 32.753407, 41.678886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478973, 32.433945, 41.586414>,  <40.345627, 32.242268, 41.530930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.478973, 32.433945, 41.586414>,  <40.701218, 32.753407, 41.678886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.478973, 32.433945, 41.586414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147528, -0.178941, 0.972736,
		-0.818251, 0.574566, -0.018404,
		-0.555608, -0.798658, -0.231184,
		40.312290, 32.194347, 41.517059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247807, 32.765697, 42.163357>,  <40.701218, 32.753407, 41.678886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247807, 32.765697, 42.163357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211063, 32.393475, 42.021584>,  <40.189018, 32.170139, 41.936520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.211063, 32.393475, 42.021584>,  <40.247807, 32.765697, 42.163357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.211063, 32.393475, 42.021584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222364, -0.327777, 0.918214,
		-0.970627, 0.163159, -0.176814,
		-0.091859, -0.930560, -0.354430,
		40.183506, 32.114307, 41.915257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585472, 32.524879, 42.358131>,  <40.247807, 32.765697, 42.163357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585472, 32.524879, 42.358131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797638, 32.193428, 42.286541>,  <39.924938, 31.994556, 42.243587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.797638, 32.193428, 42.286541>,  <39.585472, 32.524879, 42.358131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.797638, 32.193428, 42.286541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316406, -0.389369, 0.865031,
		-0.786477, -0.402198, -0.468711,
		0.530415, -0.828631, -0.178972,
		39.956764, 31.944839, 42.232849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120499, 31.965496, 42.564644>,  <39.585472, 32.524879, 42.358131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120499, 31.965496, 42.564644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485485, 31.801888, 42.560574>,  <39.704475, 31.703722, 42.558132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.485485, 31.801888, 42.560574>,  <39.120499, 31.965496, 42.564644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485485, 31.801888, 42.560574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201255, -0.470346, 0.859227,
		-0.356231, -0.781968, -0.511493,
		0.912467, -0.409024, -0.010176,
		39.759224, 31.679180, 42.557522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958572, 31.333385, 42.913860>,  <39.120499, 31.965496, 42.564644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958572, 31.333385, 42.913860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353168, 31.391470, 42.944206>,  <39.589924, 31.426321, 42.962414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353168, 31.391470, 42.944206>,  <38.958572, 31.333385, 42.913860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353168, 31.391470, 42.944206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052649, -0.157503, 0.986114,
		0.155145, -0.976783, -0.147729,
		0.986488, 0.145213, 0.075863,
		39.649117, 31.435034, 42.966965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244678, 30.739569, 43.226974>,  <38.958572, 31.333385, 42.913860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244678, 30.739569, 43.226974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489346, 31.045807, 43.306705>,  <39.636147, 31.229549, 43.354546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.489346, 31.045807, 43.306705>,  <39.244678, 30.739569, 43.226974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.489346, 31.045807, 43.306705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099790, -0.324611, 0.940569,
		0.784799, -0.555421, -0.274952,
		0.611664, 0.765595, 0.199329,
		39.672844, 31.275486, 43.366505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617043, 30.412518, 43.679550>,  <39.244678, 30.739569, 43.226974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617043, 30.412518, 43.679550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708481, 30.792032, 43.766773>,  <39.763344, 31.019741, 43.819107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.708481, 30.792032, 43.766773>,  <39.617043, 30.412518, 43.679550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.708481, 30.792032, 43.766773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006961, -0.225580, 0.974200,
		0.973496, -0.221180, -0.058172,
		0.228596, 0.948785, 0.218062,
		39.777061, 31.076668, 43.832191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079578, 30.380238, 44.166153>,  <39.617043, 30.412518, 43.679550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079578, 30.380238, 44.166153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935291, 30.752266, 44.194019>,  <39.848721, 30.975483, 44.210739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.935291, 30.752266, 44.194019>,  <40.079578, 30.380238, 44.166153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.935291, 30.752266, 44.194019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257547, -0.171117, 0.950993,
		0.896412, 0.325094, 0.301262,
		-0.360713, 0.930071, 0.069665,
		39.827076, 31.031288, 44.214920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412365, 30.603264, 44.692154>,  <40.079578, 30.380238, 44.166153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412365, 30.603264, 44.692154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106434, 30.860601, 44.678658>,  <39.922874, 31.015005, 44.670559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106434, 30.860601, 44.678658>,  <40.412365, 30.603264, 44.692154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106434, 30.860601, 44.678658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278968, -0.283525, 0.917492,
		0.580697, 0.711140, 0.396322,
		-0.764832, 0.643345, -0.033743,
		39.876984, 31.053604, 44.668533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436291, 31.008518, 45.332989>,  <40.412365, 30.603264, 44.692154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436291, 31.008518, 45.332989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070068, 31.088924, 45.193645>,  <39.850334, 31.137169, 45.110039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.070068, 31.088924, 45.193645>,  <40.436291, 31.008518, 45.332989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070068, 31.088924, 45.193645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372126, -0.094785, 0.923330,
		0.152584, 0.974992, 0.161584,
		-0.915555, 0.201015, -0.348357,
		39.795403, 31.149229, 45.089138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179062, 31.571852, 45.701447>,  <40.436291, 31.008518, 45.332989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179062, 31.571852, 45.701447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872475, 31.355135, 45.563473>,  <39.688522, 31.225105, 45.480686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872475, 31.355135, 45.563473>,  <40.179062, 31.571852, 45.701447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872475, 31.355135, 45.563473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354906, -0.090348, 0.930526,
		-0.535314, 0.835644, -0.123036,
		-0.766473, -0.541790, -0.344939,
		39.642532, 31.192598, 45.459991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639774, 31.752712, 46.066814>,  <40.179062, 31.571852, 45.701447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.639774, 31.752712, 46.066814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515160, 31.399630, 45.926090>,  <39.440392, 31.187780, 45.841656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.515160, 31.399630, 45.926090>,  <39.639774, 31.752712, 46.066814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515160, 31.399630, 45.926090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427329, -0.200536, 0.881575,
		-0.848724, 0.424985, -0.314732,
		-0.311541, -0.882708, -0.351808,
		39.421696, 31.134817, 45.820549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003616, 31.751413, 46.306576>,  <39.639774, 31.752712, 46.066814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003616, 31.751413, 46.306576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077850, 31.371735, 46.204922>,  <39.122391, 31.143929, 46.143929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077850, 31.371735, 46.204922>,  <39.003616, 31.751413, 46.306576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077850, 31.371735, 46.204922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579337, -0.314593, 0.751931,
		-0.793679, 0.007682, -0.608288,
		0.185587, -0.949196, -0.254136,
		39.133526, 31.086975, 46.128681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332371, 31.430431, 46.188377>,  <39.003616, 31.751413, 46.306576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.332371, 31.430431, 46.188377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586910, 31.127365, 46.246353>,  <38.739632, 30.945526, 46.281139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586910, 31.127365, 46.246353>,  <38.332371, 31.430431, 46.188377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586910, 31.127365, 46.246353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619265, -0.389713, 0.681641,
		-0.459974, -0.523511, -0.717189,
		0.636345, -0.757667, 0.144934,
		38.777813, 30.900066, 46.289833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908527, 30.907118, 46.251877>,  <38.332371, 31.430431, 46.188377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908527, 30.907118, 46.251877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255749, 30.776207, 46.401211>,  <38.464081, 30.697660, 46.490810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.255749, 30.776207, 46.401211>,  <37.908527, 30.907118, 46.251877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255749, 30.776207, 46.401211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488481, -0.428611, 0.760052,
		-0.088734, -0.842129, -0.531926,
		0.868051, -0.327278, 0.373332,
		38.516163, 30.678024, 46.513210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.787178, 30.171654, 46.378845>,  <37.908527, 30.907118, 46.251877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.787178, 30.171654, 46.378845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094173, 30.288513, 46.607094>,  <38.278370, 30.358629, 46.744045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.094173, 30.288513, 46.607094>,  <37.787178, 30.171654, 46.378845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094173, 30.288513, 46.607094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374550, -0.518040, 0.768991,
		0.520266, -0.803918, -0.288165,
		0.767487, 0.292147, 0.570626,
		38.324421, 30.376158, 46.778282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004543, 29.545546, 46.815014>,  <37.787178, 30.171654, 46.378845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004543, 29.545546, 46.815014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127037, 29.877266, 47.001984>,  <38.200531, 30.076298, 47.114166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.127037, 29.877266, 47.001984>,  <38.004543, 29.545546, 46.815014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127037, 29.877266, 47.001984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343003, -0.361911, 0.866815,
		0.888016, -0.425773, 0.173624,
		0.306230, 0.829300, 0.467424,
		38.218906, 30.126057, 47.142212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518185, 29.328522, 47.375145>,  <38.004543, 29.545546, 46.815014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518185, 29.328522, 47.375145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370224, 29.688475, 47.467564>,  <38.281448, 29.904446, 47.523014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370224, 29.688475, 47.467564>,  <38.518185, 29.328522, 47.375145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370224, 29.688475, 47.467564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435356, -0.387585, 0.812553,
		0.820753, 0.199978, 0.535139,
		-0.369904, 0.899881, 0.231050,
		38.259254, 29.958439, 47.536880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749146, 29.323530, 48.085159>,  <38.518185, 29.328522, 47.375145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749146, 29.323530, 48.085159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467415, 29.597084, 48.009033>,  <38.298374, 29.761217, 47.963356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.467415, 29.597084, 48.009033>,  <38.749146, 29.323530, 48.085159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467415, 29.597084, 48.009033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323265, -0.070306, 0.943693,
		0.631998, 0.726194, 0.270594,
		-0.704328, 0.683886, -0.190320,
		38.256115, 29.802250, 47.951939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457142, 29.471098, 48.755226>,  <38.749146, 29.323530, 48.085159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457142, 29.471098, 48.755226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177612, 29.652536, 48.533993>,  <38.009895, 29.761398, 48.401253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.177612, 29.652536, 48.533993>,  <38.457142, 29.471098, 48.755226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177612, 29.652536, 48.533993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578562, 0.096241, 0.809941,
		0.420613, 0.885997, 0.195177,
		-0.698821, 0.453594, -0.553084,
		37.967964, 29.788614, 48.368069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.412388, 30.150251, 49.063297>,  <38.457142, 29.471098, 48.755226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.412388, 30.150251, 49.063297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075306, 30.049725, 48.872852>,  <37.873055, 29.989408, 48.758587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.075306, 30.049725, 48.872852>,  <38.412388, 30.150251, 49.063297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075306, 30.049725, 48.872852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526290, 0.198276, 0.826865,
		-0.113405, 0.947378, -0.299355,
		-0.842709, -0.251319, -0.476110,
		37.822495, 29.974329, 48.730019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873344, 30.738317, 49.232502>,  <38.412388, 30.150251, 49.063297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873344, 30.738317, 49.232502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685402, 30.397236, 49.141178>,  <37.572636, 30.192587, 49.086384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.685402, 30.397236, 49.141178>,  <37.873344, 30.738317, 49.232502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685402, 30.397236, 49.141178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629973, 0.142733, 0.763388,
		-0.618358, 0.502514, -0.604246,
		-0.469860, -0.852705, -0.228310,
		37.544445, 30.141424, 49.072685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238163, 30.863831, 49.284691>,  <37.873344, 30.738317, 49.232502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238163, 30.863831, 49.284691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224308, 30.464762, 49.308174>,  <37.215996, 30.225321, 49.322266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.224308, 30.464762, 49.308174>,  <37.238163, 30.863831, 49.284691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.224308, 30.464762, 49.308174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645377, 0.067183, 0.760904,
		-0.763079, -0.011534, -0.646203,
		-0.034637, -0.997674, 0.058710,
		37.213917, 30.165459, 49.325787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549404, 30.768696, 49.338478>,  <37.238163, 30.863831, 49.284691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549404, 30.768696, 49.338478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710266, 30.422680, 49.458462>,  <36.806782, 30.215071, 49.530453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.710266, 30.422680, 49.458462>,  <36.549404, 30.768696, 49.338478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710266, 30.422680, 49.458462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579594, 0.013087, 0.814800,
		-0.708760, -0.501532, -0.496109,
		0.402155, -0.865040, 0.299961,
		36.830914, 30.163168, 49.548450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043522, 30.215679, 49.316898>,  <36.549404, 30.768696, 49.338478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043522, 30.215679, 49.316898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314606, 30.111794, 49.592075>,  <36.477257, 30.049463, 49.757179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314606, 30.111794, 49.592075>,  <36.043522, 30.215679, 49.316898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314606, 30.111794, 49.592075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701524, 0.052053, 0.710742,
		-0.220399, -0.964282, -0.146919,
		0.677708, -0.259714, 0.687939,
		36.517918, 30.033880, 49.798458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797977, 29.612288, 49.717793>,  <36.043522, 30.215679, 49.316898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797977, 29.612288, 49.717793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069660, 29.782385, 49.957073>,  <36.232670, 29.884443, 50.100643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.069660, 29.782385, 49.957073>,  <35.797977, 29.612288, 49.717793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069660, 29.782385, 49.957073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612366, -0.120953, 0.781267,
		0.404584, -0.896960, 0.178253,
		0.679205, 0.425245, 0.598204,
		36.273422, 29.909958, 50.136536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763523, 29.295387, 50.251205>,  <35.797977, 29.612288, 49.717793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763523, 29.295387, 50.251205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966351, 29.605375, 50.402100>,  <36.088047, 29.791368, 50.492638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966351, 29.605375, 50.402100>,  <35.763523, 29.295387, 50.251205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966351, 29.605375, 50.402100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508276, -0.084617, 0.857027,
		0.696090, -0.626309, 0.350992,
		0.507064, 0.774969, 0.377239,
		36.118469, 29.837866, 50.515270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809113, 29.056694, 50.990944>,  <35.763523, 29.295387, 50.251205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809113, 29.056694, 50.990944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985531, 29.414055, 51.025139>,  <36.091381, 29.628471, 51.045658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985531, 29.414055, 51.025139>,  <35.809113, 29.056694, 50.990944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985531, 29.414055, 51.025139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186943, -0.001718, 0.982369,
		0.877800, -0.449250, 0.166258,
		0.441044, 0.893405, 0.085492,
		36.117844, 29.682076, 51.050785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336300, 29.065828, 51.446102>,  <35.809113, 29.056694, 50.990944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336300, 29.065828, 51.446102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181759, 29.434677, 51.437870>,  <36.089035, 29.655987, 51.432930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181759, 29.434677, 51.437870>,  <36.336300, 29.065828, 51.446102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181759, 29.434677, 51.437870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185329, -0.055756, 0.981093,
		0.903540, 0.382861, 0.192437,
		-0.386352, 0.922122, -0.020577,
		36.065853, 29.711313, 51.431698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705414, 29.437721, 51.985516>,  <36.336300, 29.065828, 51.446102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.705414, 29.437721, 51.985516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363274, 29.628656, 51.904991>,  <36.157990, 29.743217, 51.856674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363274, 29.628656, 51.904991>,  <36.705414, 29.437721, 51.985516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363274, 29.628656, 51.904991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209468, 0.036749, 0.977125,
		0.473815, 0.877952, 0.068553,
		-0.855349, 0.477336, -0.201316,
		36.106670, 29.771856, 51.844597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627441, 29.939877, 52.508469>,  <36.705414, 29.437721, 51.985516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627441, 29.939877, 52.508469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267227, 29.870262, 52.349094>,  <36.051098, 29.828493, 52.253471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.267227, 29.870262, 52.349094>,  <36.627441, 29.939877, 52.508469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.267227, 29.870262, 52.349094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402301, -0.014011, 0.915400,
		-0.164896, 0.984639, -0.057398,
		-0.900535, -0.174037, -0.398431,
		35.997066, 29.818050, 52.229565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253036, 30.395992, 52.912216>,  <36.627441, 29.939877, 52.508469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253036, 30.395992, 52.912216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020359, 30.100004, 52.777115>,  <35.880753, 29.922411, 52.696053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020359, 30.100004, 52.777115>,  <36.253036, 30.395992, 52.912216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020359, 30.100004, 52.777115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380592, -0.119381, 0.917005,
		-0.718879, 0.661959, -0.212185,
		-0.581689, -0.739972, -0.337757,
		35.845852, 29.878014, 52.675789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576607, 31.112923, 53.060337>,  <36.253036, 30.395992, 52.912216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576607, 31.112923, 53.060337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518063, 31.506880, 53.097347>,  <36.482937, 31.743254, 53.119553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518063, 31.506880, 53.097347>,  <36.576607, 31.112923, 53.060337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518063, 31.506880, 53.097347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178676, 0.118315, -0.976768,
		-0.972962, -0.126425, -0.193294,
		-0.146357, 0.984895, 0.092527,
		36.474155, 31.802349, 53.125107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035320, 31.397081, 52.529472>,  <36.576607, 31.112923, 53.060337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035320, 31.397081, 52.529472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277039, 31.700245, 52.627781>,  <36.422070, 31.882143, 52.686768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277039, 31.700245, 52.627781>,  <36.035320, 31.397081, 52.529472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277039, 31.700245, 52.627781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049930, 0.271836, -0.961047,
		-0.795194, 0.593028, 0.126427,
		0.604296, 0.757907, 0.245772,
		36.458328, 31.927616, 52.701511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839260, 31.949533, 52.114346>,  <36.035320, 31.397081, 52.529472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839260, 31.949533, 52.114346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208622, 32.032314, 52.243649>,  <36.430241, 32.081982, 52.321232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.208622, 32.032314, 52.243649>,  <35.839260, 31.949533, 52.114346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208622, 32.032314, 52.243649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270347, 0.247174, -0.930493,
		-0.272468, 0.946613, 0.172293,
		0.923403, 0.206951, 0.323261,
		36.485641, 32.094398, 52.340626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975494, 32.750732, 51.924934>,  <35.839260, 31.949533, 52.114346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975494, 32.750732, 51.924934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332233, 32.574825, 51.967297>,  <36.546276, 32.469280, 51.992714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.332233, 32.574825, 51.967297>,  <35.975494, 32.750732, 51.924934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.332233, 32.574825, 51.967297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302411, 0.405561, -0.862593,
		0.336387, 0.801328, 0.494688,
		0.891847, -0.439765, 0.105905,
		36.599789, 32.442894, 51.999069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.470455, 33.299774, 51.912216>,  <35.975494, 32.750732, 51.924934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.470455, 33.299774, 51.912216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643517, 32.951408, 51.818993>,  <36.747353, 32.742390, 51.763058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643517, 32.951408, 51.818993>,  <36.470455, 33.299774, 51.912216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643517, 32.951408, 51.818993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366552, 0.406101, -0.837091,
		0.823679, 0.276747, 0.494938,
		0.432658, -0.870915, -0.233055,
		36.773315, 32.690132, 51.749077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174274, 33.576122, 51.774185>,  <36.470455, 33.299774, 51.912216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174274, 33.576122, 51.774185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166843, 33.207806, 51.618340>,  <37.162384, 32.986816, 51.524834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.166843, 33.207806, 51.618340>,  <37.174274, 33.576122, 51.774185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166843, 33.207806, 51.618340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564668, 0.311922, -0.764104,
		0.825109, -0.234196, 0.514147,
		-0.018576, -0.920791, -0.389613,
		37.161270, 32.931568, 51.501457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904228, 33.427967, 51.570869>,  <37.174274, 33.576122, 51.774185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.904228, 33.427967, 51.570869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689323, 33.167866, 51.356014>,  <37.560379, 33.011803, 51.227100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.689323, 33.167866, 51.356014>,  <37.904228, 33.427967, 51.570869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689323, 33.167866, 51.356014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575016, 0.183498, -0.797299,
		0.617013, -0.737220, 0.275322,
		-0.537264, -0.650258, -0.537134,
		37.528145, 32.972790, 51.194874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451405, 32.997219, 51.150887>,  <37.904228, 33.427967, 51.570869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451405, 32.997219, 51.150887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090034, 32.971931, 50.981266>,  <37.873211, 32.956760, 50.879494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090034, 32.971931, 50.981266>,  <38.451405, 32.997219, 51.150887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090034, 32.971931, 50.981266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423226, 0.026640, -0.905632,
		0.068555, -0.997644, 0.002692,
		-0.903427, -0.063225, -0.424055,
		37.819008, 32.952965, 50.854050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509800, 32.484180, 50.661297>,  <38.451405, 32.997219, 51.150887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509800, 32.484180, 50.661297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192451, 32.695660, 50.540604>,  <38.002041, 32.822548, 50.468189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192451, 32.695660, 50.540604>,  <38.509800, 32.484180, 50.661297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192451, 32.695660, 50.540604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274656, -0.131454, -0.952514,
		-0.543253, -0.838571, -0.040917,
		-0.793373, 0.528695, -0.301732,
		37.954441, 32.854267, 50.450085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230892, 32.178078, 50.179832>,  <38.509800, 32.484180, 50.661297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230892, 32.178078, 50.179832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054829, 32.524605, 50.085381>,  <37.949192, 32.732521, 50.028709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054829, 32.524605, 50.085381>,  <38.230892, 32.178078, 50.179832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054829, 32.524605, 50.085381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258814, -0.129410, -0.957219,
		-0.859813, -0.482439, -0.167255,
		-0.440155, 0.866318, -0.236130,
		37.922783, 32.784500, 50.014542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012531, 32.066341, 49.556744>,  <38.230892, 32.178078, 50.179832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012531, 32.066341, 49.556744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982109, 32.464478, 49.580448>,  <37.963856, 32.703358, 49.594669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.982109, 32.464478, 49.580448>,  <38.012531, 32.066341, 49.556744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982109, 32.464478, 49.580448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288937, 0.078884, -0.954092,
		-0.954322, -0.055440, -0.293590,
		-0.076054, 0.995341, 0.059262,
		37.959293, 32.763081, 49.598228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544231, 32.352654, 49.025410>,  <38.012531, 32.066341, 49.556744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544231, 32.352654, 49.025410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802780, 32.640930, 49.125652>,  <37.957909, 32.813896, 49.185799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.802780, 32.640930, 49.125652>,  <37.544231, 32.352654, 49.025410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802780, 32.640930, 49.125652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288207, 0.073510, -0.954742,
		-0.706497, 0.689347, -0.160194,
		0.646373, 0.720692, 0.250609,
		37.996693, 32.857140, 49.200836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485394, 32.779209, 48.493111>,  <37.544231, 32.352654, 49.025410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.485394, 32.779209, 48.493111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833935, 32.840561, 48.679535>,  <38.043060, 32.877373, 48.791389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.833935, 32.840561, 48.679535>,  <37.485394, 32.779209, 48.493111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833935, 32.840561, 48.679535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447986, 0.138716, -0.883214,
		-0.200120, 0.978382, 0.052158,
		0.871356, 0.153383, 0.466061,
		38.095341, 32.886578, 48.819355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713184, 33.381207, 48.164795>,  <37.485394, 32.779209, 48.493111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713184, 33.381207, 48.164795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044697, 33.239208, 48.337814>,  <38.243603, 33.154007, 48.441628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044697, 33.239208, 48.337814>,  <37.713184, 33.381207, 48.164795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044697, 33.239208, 48.337814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516607, 0.188370, -0.835245,
		0.215032, 0.915693, 0.339512,
		0.828781, -0.354998, 0.432548,
		38.293331, 33.132710, 48.467579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202545, 33.943893, 47.985851>,  <37.713184, 33.381207, 48.164795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202545, 33.943893, 47.985851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390663, 33.601063, 48.069988>,  <38.503532, 33.395363, 48.120472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390663, 33.601063, 48.069988>,  <38.202545, 33.943893, 47.985851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390663, 33.601063, 48.069988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627900, 0.157486, -0.762194,
		0.620132, 0.490530, 0.612223,
		0.470295, -0.857076, 0.210341,
		38.531754, 33.343941, 48.133091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969086, 33.999554, 48.043953>,  <38.202545, 33.943893, 47.985851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969086, 33.999554, 48.043953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953503, 33.607124, 47.968075>,  <38.944153, 33.371666, 47.922546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953503, 33.607124, 47.968075>,  <38.969086, 33.999554, 48.043953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953503, 33.607124, 47.968075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642288, 0.120842, -0.756878,
		0.765473, -0.151326, 0.625421,
		-0.038958, -0.981070, -0.189696,
		38.941814, 33.312805, 47.911167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682823, 33.863457, 47.938339>,  <38.969086, 33.999554, 48.043953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.682823, 33.863457, 47.938339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439213, 33.583015, 47.789993>,  <39.293045, 33.414753, 47.700985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439213, 33.583015, 47.789993>,  <39.682823, 33.863457, 47.938339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439213, 33.583015, 47.789993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585219, -0.081609, -0.806758,
		0.535351, -0.708378, 0.459999,
		-0.609030, -0.701099, -0.370867,
		39.256504, 33.372684, 47.678734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238636, 33.432785, 47.882145>,  <39.682823, 33.863457, 47.938339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238636, 33.432785, 47.882145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925072, 33.313522, 47.664307>,  <39.736935, 33.241962, 47.533604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925072, 33.313522, 47.664307>,  <40.238636, 33.432785, 47.882145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925072, 33.313522, 47.664307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602371, -0.152671, -0.783480,
		0.150458, -0.942227, 0.299283,
		-0.783908, -0.298160, -0.544599,
		39.689899, 33.224075, 47.500927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458214, 32.727699, 47.561161>,  <40.238636, 33.432785, 47.882145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458214, 32.727699, 47.561161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177547, 32.918934, 47.349842>,  <40.009148, 33.033676, 47.223053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177547, 32.918934, 47.349842>,  <40.458214, 32.727699, 47.561161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177547, 32.918934, 47.349842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561569, -0.085264, -0.823025,
		-0.438522, -0.874164, -0.208652,
		-0.701668, 0.478087, -0.528294,
		39.967049, 33.062359, 47.191353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.397327, 32.377201, 46.971127>,  <40.458214, 32.727699, 47.561161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.397327, 32.377201, 46.971127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237961, 32.735142, 46.890633>,  <40.142342, 32.949905, 46.842339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237961, 32.735142, 46.890633>,  <40.397327, 32.377201, 46.971127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237961, 32.735142, 46.890633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523828, 0.041903, -0.850792,
		-0.752904, -0.444385, -0.485446,
		-0.398421, 0.894855, -0.201232,
		40.118435, 33.003597, 46.830261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318027, 32.374107, 46.274189>,  <40.397327, 32.377201, 46.971127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318027, 32.374107, 46.274189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253948, 32.764893, 46.330593>,  <40.215500, 32.999363, 46.364433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.253948, 32.764893, 46.330593>,  <40.318027, 32.374107, 46.274189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253948, 32.764893, 46.330593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318396, 0.186358, -0.929459,
		-0.934324, -0.103998, -0.340914,
		-0.160194, 0.976962, 0.141006,
		40.205891, 33.057980, 46.372894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847691, 32.619213, 45.810696>,  <40.318027, 32.374107, 46.274189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847691, 32.619213, 45.810696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057354, 32.950417, 45.890350>,  <40.183151, 33.149139, 45.938141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.057354, 32.950417, 45.890350>,  <39.847691, 32.619213, 45.810696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057354, 32.950417, 45.890350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016238, 0.224070, -0.974438,
		-0.851466, 0.513993, 0.104003,
		0.524159, 0.828012, 0.199134,
		40.214603, 33.198818, 45.950092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.565155, 33.229404, 45.378578>,  <39.847691, 32.619213, 45.810696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.565155, 33.229404, 45.378578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930851, 33.345554, 45.491608>,  <40.150269, 33.415245, 45.559425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.930851, 33.345554, 45.491608>,  <39.565155, 33.229404, 45.378578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.930851, 33.345554, 45.491608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138420, 0.431609, -0.891377,
		-0.380793, 0.854047, 0.354401,
		0.914241, 0.290374, 0.282571,
		40.205124, 33.432667, 45.576378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620937, 33.902905, 45.107880>,  <39.565155, 33.229404, 45.378578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620937, 33.902905, 45.107880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976124, 33.730129, 45.171066>,  <40.189236, 33.626465, 45.208977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976124, 33.730129, 45.171066>,  <39.620937, 33.902905, 45.107880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976124, 33.730129, 45.171066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305608, 0.297468, -0.904498,
		0.343695, 0.851436, 0.396144,
		0.887962, -0.431936, 0.157967,
		40.242512, 33.600548, 45.218456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.130810, 34.435402, 44.886162>,  <39.620937, 33.902905, 45.107880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.130810, 34.435402, 44.886162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323345, 34.084805, 44.882698>,  <40.438866, 33.874447, 44.880619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323345, 34.084805, 44.882698>,  <40.130810, 34.435402, 44.886162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323345, 34.084805, 44.882698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261542, 0.153043, -0.952982,
		0.836603, 0.456447, 0.302905,
		0.481343, -0.876490, -0.008656,
		40.467747, 33.821857, 44.880100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.724731, 34.555878, 44.608765>,  <40.130810, 34.435402, 44.886162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.724731, 34.555878, 44.608765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757103, 34.159199, 44.568787>,  <40.776524, 33.921192, 44.544800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757103, 34.159199, 44.568787>,  <40.724731, 34.555878, 44.608765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757103, 34.159199, 44.568787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385533, 0.123609, -0.914377,
		0.919138, 0.035465, 0.392335,
		0.080925, -0.991697, -0.099941,
		40.781380, 33.861691, 44.538803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.478073, 34.398323, 44.625217>,  <40.724731, 34.555878, 44.608765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.478073, 34.398323, 44.625217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289257, 34.092598, 44.449490>,  <41.175968, 33.909161, 44.344051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289257, 34.092598, 44.449490>,  <41.478073, 34.398323, 44.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289257, 34.092598, 44.449490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470555, 0.202963, -0.858711,
		0.745491, -0.612069, 0.263846,
		-0.472039, -0.764316, -0.439319,
		41.147644, 33.863304, 44.317696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.975861, 34.078663, 44.174873>,  <41.478073, 34.398323, 44.625217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.975861, 34.078663, 44.174873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622456, 33.959873, 44.029980>,  <41.410412, 33.888599, 43.943043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.622456, 33.959873, 44.029980>,  <41.975861, 34.078663, 44.174873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.622456, 33.959873, 44.029980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306361, 0.218615, -0.926472,
		0.354325, -0.929524, -0.102169,
		-0.883514, -0.296972, -0.362231,
		41.357403, 33.870781, 43.921310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.174801, 33.542465, 43.668823>,  <41.975861, 34.078663, 44.174873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.174801, 33.542465, 43.668823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801567, 33.660770, 43.586960>,  <41.577629, 33.731754, 43.537842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.801567, 33.660770, 43.586960>,  <42.174801, 33.542465, 43.668823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801567, 33.660770, 43.586960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259414, 0.159281, -0.952541,
		-0.249130, -0.941888, -0.225348,
		-0.933080, 0.295765, -0.204658,
		41.521645, 33.749500, 43.525562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038544, 33.176094, 43.027981>,  <42.174801, 33.542465, 43.668823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038544, 33.176094, 43.027981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769066, 33.470074, 43.058941>,  <41.607380, 33.646461, 43.077515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.769066, 33.470074, 43.058941>,  <42.038544, 33.176094, 43.027981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.769066, 33.470074, 43.058941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109011, 0.202413, -0.973214,
		-0.730926, -0.647212, -0.216481,
		-0.673694, 0.734946, 0.077395,
		41.566956, 33.690556, 43.082161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611729, 33.113285, 42.366199>,  <42.038544, 33.176094, 43.027981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611729, 33.113285, 42.366199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595905, 33.482388, 42.519539>,  <41.586411, 33.703850, 42.611542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595905, 33.482388, 42.519539>,  <41.611729, 33.113285, 42.366199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595905, 33.482388, 42.519539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230984, 0.381702, -0.894958,
		-0.972153, 0.053143, -0.228242,
		-0.039559, 0.922757, 0.383347,
		41.584038, 33.759216, 42.634544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335278, 33.513512, 41.808258>,  <41.611729, 33.113285, 42.366199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335278, 33.513512, 41.808258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484737, 33.786125, 42.059940>,  <41.574413, 33.949692, 42.210949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.484737, 33.786125, 42.059940>,  <41.335278, 33.513512, 41.808258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484737, 33.786125, 42.059940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205563, 0.600632, -0.772648,
		-0.904505, 0.418042, 0.084328,
		0.373649, 0.681530, 0.629209,
		41.596832, 33.990585, 42.248703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980446, 34.130524, 41.615860>,  <41.335278, 33.513512, 41.808258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980446, 34.130524, 41.615860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314671, 34.233360, 41.810074>,  <41.515205, 34.295063, 41.926601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.314671, 34.233360, 41.810074>,  <40.980446, 34.130524, 41.615860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.314671, 34.233360, 41.810074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249763, 0.609395, -0.752500,
		-0.489344, 0.750027, 0.444974,
		0.835560, 0.257093, 0.485533,
		41.565338, 34.310490, 41.955734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102390, 34.917900, 41.537132>,  <40.980446, 34.130524, 41.615860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102390, 34.917900, 41.537132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462914, 34.782936, 41.645794>,  <41.679230, 34.701958, 41.710991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462914, 34.782936, 41.645794>,  <41.102390, 34.917900, 41.537132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462914, 34.782936, 41.645794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422342, 0.545113, -0.724209,
		0.096268, 0.767470, 0.633816,
		0.901310, -0.337405, 0.271658,
		41.733307, 34.681713, 41.727291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.474190, 35.455486, 41.412140>,  <41.102390, 34.917900, 41.537132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.474190, 35.455486, 41.412140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750626, 35.166534, 41.421719>,  <41.916485, 34.993164, 41.427467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750626, 35.166534, 41.421719>,  <41.474190, 35.455486, 41.412140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750626, 35.166534, 41.421719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405394, 0.359979, -0.840280,
		0.598378, 0.590414, 0.541623,
		0.691086, -0.722376, 0.023947,
		41.957951, 34.949821, 41.428902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.038746, 35.800659, 41.397919>,  <41.474190, 35.455486, 41.412140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.038746, 35.800659, 41.397919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136089, 35.434669, 41.269169>,  <42.194496, 35.215076, 41.191917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.136089, 35.434669, 41.269169>,  <42.038746, 35.800659, 41.397919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136089, 35.434669, 41.269169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524145, 0.403281, -0.750091,
		0.816118, 0.013830, 0.577719,
		0.243357, -0.914972, -0.321876,
		42.209095, 35.160179, 41.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735363, 35.862297, 41.297287>,  <42.038746, 35.800659, 41.397919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735363, 35.862297, 41.297287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682674, 35.534657, 41.073956>,  <42.651062, 35.338074, 40.939957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.682674, 35.534657, 41.073956>,  <42.735363, 35.862297, 41.297287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.682674, 35.534657, 41.073956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680460, 0.334863, -0.651798,
		0.720850, -0.465771, 0.513257,
		-0.131718, -0.819099, -0.558325,
		42.643158, 35.288925, 40.906460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.386093, 35.660206, 41.023735>,  <42.735363, 35.862297, 41.297287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.386093, 35.660206, 41.023735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119598, 35.503815, 40.769726>,  <42.959702, 35.409981, 40.617321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119598, 35.503815, 40.769726>,  <43.386093, 35.660206, 41.023735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119598, 35.503815, 40.769726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574639, 0.273579, -0.771326,
		0.475304, -0.878799, 0.042403,
		-0.666241, -0.390981, -0.635025,
		42.919727, 35.386520, 40.579220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.842125, 35.597702, 40.508171>,  <43.386093, 35.660206, 41.023735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.842125, 35.597702, 40.508171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484360, 35.526672, 40.343983>,  <43.269699, 35.484055, 40.245468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.484360, 35.526672, 40.343983>,  <43.842125, 35.597702, 40.508171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.484360, 35.526672, 40.343983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340824, 0.323647, -0.882662,
		0.289583, -0.929366, -0.228955,
		-0.894416, -0.177570, -0.410473,
		43.216034, 35.473400, 40.220840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916687, 35.027691, 39.935638>,  <43.842125, 35.597702, 40.508171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916687, 35.027691, 39.935638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599480, 35.264339, 39.877537>,  <43.409153, 35.406330, 39.842674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599480, 35.264339, 39.877537>,  <43.916687, 35.027691, 39.935638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599480, 35.264339, 39.877537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328627, 0.214678, -0.919738,
		-0.512953, -0.777108, -0.364667,
		-0.793022, 0.591622, -0.145259,
		43.361572, 35.441826, 39.833958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843906, 35.104691, 39.264698>,  <43.916687, 35.027691, 39.935638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843906, 35.104691, 39.264698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568607, 35.369965, 39.382347>,  <43.403427, 35.529129, 39.452938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568607, 35.369965, 39.382347>,  <43.843906, 35.104691, 39.264698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568607, 35.369965, 39.382347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075124, 0.468388, -0.880323,
		-0.721579, -0.583782, -0.372186,
		-0.688244, 0.663183, 0.294123,
		43.362133, 35.568920, 39.470585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981514, 35.265152, 38.634117>,  <43.843906, 35.104691, 39.264698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981514, 35.265152, 38.634117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277977, 35.533604, 38.640633>,  <44.455856, 35.694675, 38.644543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.277977, 35.533604, 38.640633>,  <43.981514, 35.265152, 38.634117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.277977, 35.533604, 38.640633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492563, 0.560125, -0.666065,
		-0.456137, 0.485640, 0.745716,
		0.741162, 0.671129, 0.016285,
		44.500324, 35.734943, 38.645519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579235, 35.920670, 38.404968>,  <43.981514, 35.265152, 38.634117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579235, 35.920670, 38.404968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972816, 35.954597, 38.342171>,  <44.208965, 35.974953, 38.304493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972816, 35.954597, 38.342171>,  <43.579235, 35.920670, 38.404968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972816, 35.954597, 38.342171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178132, 0.518817, -0.836120,
		0.010531, 0.850667, 0.525600,
		0.983950, 0.084821, -0.156995,
		44.268002, 35.980045, 38.295071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.924068, 36.527554, 38.480213>,  <43.579235, 35.920670, 38.404968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.924068, 36.527554, 38.480213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558441, 36.676037, 38.545567>,  <43.339066, 36.765125, 38.584778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558441, 36.676037, 38.545567>,  <43.924068, 36.527554, 38.480213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558441, 36.676037, 38.545567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259797, 0.845253, -0.466962,
		-0.311437, -0.384387, -0.869053,
		-0.914064, 0.371206, 0.163380,
		43.284222, 36.787399, 38.594582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.690823, 36.791195, 37.876507>,  <43.924068, 36.527554, 38.480213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.690823, 36.791195, 37.876507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504402, 36.982319, 38.174366>,  <43.392548, 37.096992, 38.353081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.504402, 36.982319, 38.174366>,  <43.690823, 36.791195, 37.876507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.504402, 36.982319, 38.174366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231681, 0.878177, -0.418485,
		-0.853884, -0.022517, -0.519976,
		-0.466054, 0.477806, 0.744644,
		43.364586, 37.125660, 38.397758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002403, 37.350700, 37.570053>,  <43.690823, 36.791195, 37.876507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002403, 37.350700, 37.570053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354904, 37.180012, 37.651352>,  <44.566402, 37.077599, 37.700130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.354904, 37.180012, 37.651352>,  <44.002403, 37.350700, 37.570053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354904, 37.180012, 37.651352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325274, 0.235543, -0.915814,
		0.342926, 0.873170, 0.346374,
		0.881248, -0.426723, 0.203246,
		44.619278, 37.051994, 37.712326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319931, 37.726990, 37.085201>,  <44.002403, 37.350700, 37.570053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319931, 37.726990, 37.085201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540333, 37.424686, 37.226746>,  <44.672573, 37.243305, 37.311672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540333, 37.424686, 37.226746>,  <44.319931, 37.726990, 37.085201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540333, 37.424686, 37.226746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512017, -0.028662, -0.858497,
		0.658961, 0.654220, 0.371169,
		0.551007, -0.755761, 0.353859,
		44.705635, 37.197960, 37.332905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.987137, 37.820259, 36.767647>,  <44.319931, 37.726990, 37.085201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.987137, 37.820259, 36.767647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920498, 37.429585, 36.821793>,  <44.880512, 37.195179, 36.854279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920498, 37.429585, 36.821793>,  <44.987137, 37.820259, 36.767647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920498, 37.429585, 36.821793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193071, -0.166936, -0.966879,
		0.966937, -0.134949, 0.216382,
		-0.166601, -0.976689, 0.135362,
		44.870518, 37.136578, 36.862400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405197, 37.555214, 36.366177>,  <44.987137, 37.820259, 36.767647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405197, 37.555214, 36.366177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157726, 37.243332, 36.404739>,  <45.009243, 37.056202, 36.427876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.157726, 37.243332, 36.404739>,  <45.405197, 37.555214, 36.366177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.157726, 37.243332, 36.404739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109362, -0.206988, -0.972212,
		0.777995, -0.590943, 0.213330,
		-0.618679, -0.779707, 0.096408,
		44.972122, 37.009418, 36.433662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.784950, 36.990524, 36.165619>,  <45.405197, 37.555214, 36.366177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.784950, 36.990524, 36.165619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396450, 36.916306, 36.105953>,  <45.163349, 36.871773, 36.070152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.396450, 36.916306, 36.105953>,  <45.784950, 36.990524, 36.165619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.396450, 36.916306, 36.105953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191903, -0.239361, -0.951777,
		0.140897, -0.953036, 0.268086,
		-0.971247, -0.185549, -0.149165,
		45.105076, 36.860641, 36.061203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718334, 36.876678, 35.412033>,  <45.784950, 36.990524, 36.165619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718334, 36.876678, 35.412033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337826, 36.804161, 35.511803>,  <45.109520, 36.760651, 35.571667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.337826, 36.804161, 35.511803>,  <45.718334, 36.876678, 35.412033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337826, 36.804161, 35.511803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251879, -0.009747, -0.967710,
		0.177868, -0.983381, -0.036391,
		-0.951273, -0.181291, 0.249427,
		45.052444, 36.749775, 35.586632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.396866, 36.169762, 35.133640>,  <45.718334, 36.876678, 35.412033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.396866, 36.169762, 35.133640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123901, 36.456799, 35.189323>,  <44.960121, 36.629021, 35.222733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.123901, 36.456799, 35.189323>,  <45.396866, 36.169762, 35.133640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.123901, 36.456799, 35.189323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211392, -0.011437, -0.977334,
		-0.699734, -0.696371, 0.159498,
		-0.682411, 0.717591, 0.139204,
		44.919178, 36.672077, 35.231083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.830433, 35.908463, 34.863483>,  <45.396866, 36.169762, 35.133640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.830433, 35.908463, 34.863483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791496, 36.306553, 34.866470>,  <44.768135, 36.545406, 34.868263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.791496, 36.306553, 34.866470>,  <44.830433, 35.908463, 34.863483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.791496, 36.306553, 34.866470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101961, -0.002510, -0.994785,
		-0.990015, -0.097592, 0.101718,
		-0.097338, 0.995223, 0.007466,
		44.762295, 36.605122, 34.868710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.455353, 35.858372, 34.336391>,  <44.830433, 35.908463, 34.863483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.455353, 35.858372, 34.336391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546349, 36.245243, 34.381672>,  <44.600945, 36.477367, 34.408840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.546349, 36.245243, 34.381672>,  <44.455353, 35.858372, 34.336391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.546349, 36.245243, 34.381672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206666, 0.161557, -0.964981,
		-0.951598, 0.196127, 0.236635,
		0.227489, 0.967178, 0.113205,
		44.614594, 36.535397, 34.415634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976017, 36.223080, 33.973122>,  <44.455353, 35.858372, 34.336391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976017, 36.223080, 33.973122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269886, 36.493347, 33.997543>,  <44.446205, 36.655510, 34.012196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.269886, 36.493347, 33.997543>,  <43.976017, 36.223080, 33.973122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.269886, 36.493347, 33.997543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024315, 0.063710, -0.997672,
		-0.677990, 0.734444, 0.030377,
		0.734669, 0.675673, 0.061053,
		44.490288, 36.696049, 34.015858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809021, 36.688591, 33.432846>,  <43.976017, 36.223080, 33.973122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809021, 36.688591, 33.432846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184048, 36.799164, 33.517281>,  <44.409061, 36.865509, 33.567940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.184048, 36.799164, 33.517281>,  <43.809021, 36.688591, 33.432846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.184048, 36.799164, 33.517281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189358, 0.103394, -0.976449,
		-0.291746, 0.955456, 0.044594,
		0.937565, 0.276431, 0.211088,
		44.465317, 36.882092, 33.580608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.831539, 37.370594, 33.266716>,  <43.809021, 36.688591, 33.432846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.831539, 37.370594, 33.266716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204269, 37.228043, 33.239315>,  <44.427906, 37.142509, 33.222874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204269, 37.228043, 33.239315>,  <43.831539, 37.370594, 33.266716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204269, 37.228043, 33.239315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086609, -0.035071, -0.995625,
		0.352420, 0.933682, -0.063546,
		0.931826, -0.356382, -0.068505,
		44.483818, 37.121128, 33.218765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.127796, 37.810589, 32.734512>,  <43.831539, 37.370594, 33.266716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.127796, 37.810589, 32.734512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362194, 37.488907, 32.774242>,  <44.502834, 37.295898, 32.798080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.362194, 37.488907, 32.774242>,  <44.127796, 37.810589, 32.734512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.362194, 37.488907, 32.774242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015333, -0.111554, -0.993640,
		0.810169, 0.583792, -0.053039,
		0.585995, -0.804204, 0.099329,
		44.537994, 37.247646, 32.804043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712910, 37.956139, 32.306240>,  <44.127796, 37.810589, 32.734512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712910, 37.956139, 32.306240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705559, 37.560921, 32.367466>,  <44.701149, 37.323792, 32.404202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.705559, 37.560921, 32.367466>,  <44.712910, 37.956139, 32.306240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.705559, 37.560921, 32.367466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267036, -0.152376, -0.951564,
		0.963512, 0.023389, 0.266643,
		-0.018373, -0.988046, 0.153062,
		44.700047, 37.264507, 32.413383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317467, 37.674473, 31.956371>,  <44.712910, 37.956139, 32.306240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317467, 37.674473, 31.956371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071537, 37.363720, 32.010696>,  <44.923977, 37.177269, 32.043293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071537, 37.363720, 32.010696>,  <45.317467, 37.674473, 31.956371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071537, 37.363720, 32.010696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014964, -0.160684, -0.986892,
		0.788520, -0.608800, 0.087167,
		-0.614827, -0.776880, 0.135813,
		44.887089, 37.130657, 32.051441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473515, 37.029026, 31.585258>,  <45.317467, 37.674473, 31.956371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473515, 37.029026, 31.585258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083382, 36.955837, 31.634645>,  <44.849300, 36.911926, 31.664278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083382, 36.955837, 31.634645>,  <45.473515, 37.029026, 31.585258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083382, 36.955837, 31.634645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028913, -0.448637, -0.893246,
		0.218828, -0.874784, 0.432281,
		-0.975335, -0.182969, 0.123467,
		44.790783, 36.900948, 31.671686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405025, 36.415226, 31.196714>,  <45.473515, 37.029026, 31.585258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405025, 36.415226, 31.196714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021175, 36.507069, 31.261713>,  <44.790867, 36.562172, 31.300713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.021175, 36.507069, 31.261713>,  <45.405025, 36.415226, 31.196714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021175, 36.507069, 31.261713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273576, -0.627478, -0.728990,
		-0.065414, -0.744012, 0.664957,
		-0.959623, 0.229603, 0.162498,
		44.733288, 36.575951, 31.310463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.035934, 35.798584, 31.131630>,  <45.405025, 36.415226, 31.196714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.035934, 35.798584, 31.131630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.745575, 36.069290, 31.082535>,  <44.571358, 36.231712, 31.053078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.745575, 36.069290, 31.082535>,  <45.035934, 35.798584, 31.131630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.745575, 36.069290, 31.082535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280255, -0.453991, -0.845783,
		-0.628117, -0.579554, 0.519217,
		-0.725897, 0.676764, -0.122736,
		44.527805, 36.272320, 31.045713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.319828, 35.440403, 31.166986>,  <45.035934, 35.798584, 31.131630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.319828, 35.440403, 31.166986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321568, 35.785084, 30.964029>,  <44.322613, 35.991894, 30.842255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.321568, 35.785084, 30.964029>,  <44.319828, 35.440403, 31.166986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.321568, 35.785084, 30.964029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445866, -0.452500, -0.772300,
		-0.895089, 0.229591, 0.382234,
		0.004352, 0.861702, -0.507395,
		44.322872, 36.043594, 30.811811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.596077, 35.495964, 30.898214>,  <44.319828, 35.440403, 31.166986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.596077, 35.495964, 30.898214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858593, 35.718208, 30.694031>,  <44.016102, 35.851555, 30.571520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858593, 35.718208, 30.694031>,  <43.596077, 35.495964, 30.898214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858593, 35.718208, 30.694031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235649, -0.491764, -0.838235,
		-0.716762, 0.670419, -0.191812,
		0.656295, 0.555614, -0.510461,
		44.055481, 35.884892, 30.540892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207851, 35.598885, 30.347620>,  <43.596077, 35.495964, 30.898214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207851, 35.598885, 30.347620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579224, 35.679516, 30.222795>,  <43.802048, 35.727894, 30.147902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579224, 35.679516, 30.222795>,  <43.207851, 35.598885, 30.347620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579224, 35.679516, 30.222795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216547, -0.388890, -0.895473,
		-0.301865, 0.898961, -0.317406,
		0.928431, 0.201579, -0.312059,
		43.857754, 35.739990, 30.129177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128521, 35.901657, 29.660742>,  <43.207851, 35.598885, 30.347620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128521, 35.901657, 29.660742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502029, 35.766979, 29.709267>,  <43.726135, 35.686172, 29.738382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502029, 35.766979, 29.709267>,  <43.128521, 35.901657, 29.660742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502029, 35.766979, 29.709267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003416, -0.347348, -0.937730,
		0.357863, 0.875208, -0.325493,
		0.933768, -0.336691, 0.121314,
		43.782158, 35.665974, 29.745661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347092, 35.978878, 28.997126>,  <43.128521, 35.901657, 29.660742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347092, 35.978878, 28.997126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595444, 35.722179, 29.177202>,  <43.744453, 35.568161, 29.285248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595444, 35.722179, 29.177202>,  <43.347092, 35.978878, 28.997126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595444, 35.722179, 29.177202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359456, -0.743425, -0.564013,
		0.696637, 0.188359, -0.692255,
		0.620877, -0.641748, 0.450191,
		43.781708, 35.529655, 29.312260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766369, 35.715252, 28.502890>,  <43.347092, 35.978878, 28.997126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766369, 35.715252, 28.502890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708576, 35.462513, 28.807493>,  <43.673901, 35.310871, 28.990255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.708576, 35.462513, 28.807493>,  <43.766369, 35.715252, 28.502890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.708576, 35.462513, 28.807493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378596, -0.675726, -0.632502,
		0.914216, -0.379689, -0.141584,
		-0.144482, -0.631847, 0.761508,
		43.665230, 35.272961, 29.035946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.155186, 35.024052, 28.517941>,  <43.766369, 35.715252, 28.502890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.155186, 35.024052, 28.517941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792408, 34.989491, 28.682856>,  <43.574741, 34.968754, 28.781805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.792408, 34.989491, 28.682856>,  <44.155186, 35.024052, 28.517941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.792408, 34.989491, 28.682856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301392, -0.550674, -0.778409,
		0.294295, -0.830236, 0.473390,
		-0.906947, -0.086406, 0.412287,
		43.520325, 34.963570, 28.806541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.916523, 34.269337, 28.631144>,  <44.155186, 35.024052, 28.517941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.916523, 34.269337, 28.631144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682499, 34.574970, 28.522421>,  <43.542084, 34.758350, 28.457188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.682499, 34.574970, 28.522421>,  <43.916523, 34.269337, 28.631144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.682499, 34.574970, 28.522421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417932, -0.571288, -0.706373,
		-0.695011, -0.299671, 0.653572,
		-0.585057, 0.764086, -0.271809,
		43.506981, 34.804195, 28.440878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.531864, 33.865562, 28.700291>,  <43.916523, 34.269337, 28.631144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.531864, 33.865562, 28.700291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716671, 33.512779, 28.737581>,  <44.827557, 33.301109, 28.759956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.716671, 33.512779, 28.737581>,  <44.531864, 33.865562, 28.700291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.716671, 33.512779, 28.737581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818702, -0.383729, 0.427176,
		-0.340973, -0.273694, -0.899349,
		0.462022, -0.881954, 0.093232,
		44.855278, 33.248192, 28.765551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230278, 33.242008, 28.309446>,  <44.531864, 33.865562, 28.700291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230278, 33.242008, 28.309446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417454, 33.149158, 28.650539>,  <44.529758, 33.093449, 28.855196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.417454, 33.149158, 28.650539>,  <44.230278, 33.242008, 28.309446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.417454, 33.149158, 28.650539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860102, -0.341392, 0.379046,
		0.203129, -0.910806, -0.359403,
		0.467935, -0.232128, 0.852733,
		44.557835, 33.079521, 28.906359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.944668, 32.609753, 28.513752>,  <44.230278, 33.242008, 28.309446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.944668, 32.609753, 28.513752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115616, 32.735481, 28.852823>,  <44.218185, 32.810917, 29.056267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.115616, 32.735481, 28.852823>,  <43.944668, 32.609753, 28.513752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.115616, 32.735481, 28.852823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805914, -0.292459, 0.514753,
		0.409709, -0.903145, 0.128327,
		0.427366, 0.314320, 0.847680,
		44.243824, 32.829777, 29.107128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.063004, 32.109573, 29.050392>,  <43.944668, 32.609753, 28.513752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.063004, 32.109573, 29.050392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967014, 32.463009, 29.211233>,  <43.909420, 32.675068, 29.307737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967014, 32.463009, 29.211233>,  <44.063004, 32.109573, 29.050392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967014, 32.463009, 29.211233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540715, -0.465664, 0.700560,
		0.806250, -0.049304, 0.589517,
		-0.239976, 0.883587, 0.402101,
		43.895023, 32.728085, 29.331863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.324268, 32.077061, 29.745321>,  <44.063004, 32.109573, 29.050392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.324268, 32.077061, 29.745321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021034, 32.332130, 29.690655>,  <43.839092, 32.485172, 29.657854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021034, 32.332130, 29.690655>,  <44.324268, 32.077061, 29.745321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021034, 32.332130, 29.690655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556741, -0.523675, 0.644829,
		0.339619, 0.564925, 0.752010,
		-0.758089, 0.637671, -0.136667,
		43.793606, 32.523430, 29.649654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.072834, 31.972227, 30.308552>,  <44.324268, 32.077061, 29.745321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.072834, 31.972227, 30.308552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800694, 32.203171, 30.127983>,  <43.637409, 32.341736, 30.019642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.800694, 32.203171, 30.127983>,  <44.072834, 31.972227, 30.308552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.800694, 32.203171, 30.127983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711748, -0.373640, 0.594817,
		0.174755, 0.725981, 0.665141,
		-0.680349, 0.577361, -0.451420,
		43.596588, 32.376377, 29.992558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327019, 31.366838, 30.835869>,  <44.072834, 31.972227, 30.308552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327019, 31.366838, 30.835869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993507, 31.365946, 30.615030>,  <43.793400, 31.365410, 30.482527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.993507, 31.365946, 30.615030>,  <44.327019, 31.366838, 30.835869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.993507, 31.365946, 30.615030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327068, -0.807629, -0.490676,
		-0.444794, -0.589687, 0.674112,
		-0.833777, -0.002231, -0.552097,
		43.743374, 31.365276, 30.449402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.957806, 31.030899, 31.465899>,  <44.327019, 31.366838, 30.835869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.957806, 31.030899, 31.465899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059032, 30.698479, 31.664015>,  <44.119770, 30.499027, 31.782885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.059032, 30.698479, 31.664015>,  <43.957806, 31.030899, 31.465899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.059032, 30.698479, 31.664015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432170, 0.555147, 0.710662,
		-0.865555, 0.034203, 0.499645,
		0.253070, -0.831049, 0.495292,
		44.134953, 30.449163, 31.812603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.818344, 31.163179, 32.164005>,  <43.957806, 31.030899, 31.465899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.818344, 31.163179, 32.164005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062374, 30.846405, 32.174206>,  <44.208790, 30.656342, 32.180325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.062374, 30.846405, 32.174206>,  <43.818344, 31.163179, 32.164005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.062374, 30.846405, 32.174206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504084, 0.412753, 0.758640,
		-0.611319, -0.449971, 0.651011,
		0.610073, -0.791935, 0.025501,
		44.245396, 30.608824, 32.181854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.827347, 30.881842, 32.848923>,  <43.818344, 31.163179, 32.164005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.827347, 30.881842, 32.848923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173279, 30.754082, 32.693977>,  <44.380836, 30.677425, 32.601009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.173279, 30.754082, 32.693977>,  <43.827347, 30.881842, 32.848923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.173279, 30.754082, 32.693977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492381, 0.388768, 0.778730,
		-0.098133, -0.864200, 0.493485,
		0.864830, -0.319402, -0.387365,
		44.432728, 30.658260, 32.577766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.218658, 30.656679, 33.494186>,  <43.827347, 30.881842, 32.848923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.218658, 30.656679, 33.494186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483250, 30.715363, 33.199997>,  <44.642006, 30.750572, 33.023483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483250, 30.715363, 33.199997>,  <44.218658, 30.656679, 33.494186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483250, 30.715363, 33.199997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574931, 0.530500, 0.622915,
		0.481554, -0.834893, 0.266570,
		0.661483, 0.146708, -0.735470,
		44.681694, 30.759375, 32.979355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.870571, 30.538200, 33.806087>,  <44.218658, 30.656679, 33.494186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.870571, 30.538200, 33.806087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927486, 30.767054, 33.482998>,  <44.961636, 30.904366, 33.289143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.927486, 30.767054, 33.482998>,  <44.870571, 30.538200, 33.806087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.927486, 30.767054, 33.482998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622266, 0.582903, 0.522503,
		0.769766, -0.576964, -0.273080,
		0.142287, 0.572133, -0.807724,
		44.970173, 30.938694, 33.240681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518280, 30.859564, 33.928909>,  <44.870571, 30.538200, 33.806087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518280, 30.859564, 33.928909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378620, 31.069540, 33.618420>,  <45.294823, 31.195526, 33.432125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378620, 31.069540, 33.618420>,  <45.518280, 30.859564, 33.928909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378620, 31.069540, 33.618420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633632, 0.742535, 0.217148,
		0.690366, -0.416026, -0.591875,
		-0.349149, 0.524943, -0.776228,
		45.273876, 31.227022, 33.385551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.083855, 31.178120, 33.586174>,  <45.518280, 30.859564, 33.928909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.083855, 31.178120, 33.586174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775494, 31.418451, 33.501583>,  <45.590477, 31.562651, 33.450829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775494, 31.418451, 33.501583>,  <46.083855, 31.178120, 33.586174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775494, 31.418451, 33.501583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508830, 0.780610, 0.362961,
		0.383156, 0.172201, -0.907490,
		-0.770898, 0.600829, -0.211474,
		45.544224, 31.598700, 33.438141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374748, 31.771872, 33.319828>,  <46.083855, 31.178120, 33.586174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374748, 31.771872, 33.319828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019318, 31.916258, 33.433060>,  <45.806061, 32.002892, 33.500999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.019318, 31.916258, 33.433060>,  <46.374748, 31.771872, 33.319828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.019318, 31.916258, 33.433060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449879, 0.806333, 0.383973,
		-0.089652, 0.468540, -0.878881,
		-0.888578, 0.360967, 0.283076,
		45.752743, 32.024548, 33.517982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.430534, 32.482597, 33.148129>,  <46.374748, 31.771872, 33.319828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.430534, 32.482597, 33.148129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125530, 32.459328, 33.405872>,  <45.942528, 32.445366, 33.560516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.125530, 32.459328, 33.405872>,  <46.430534, 32.482597, 33.148129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.125530, 32.459328, 33.405872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279982, 0.868192, 0.409699,
		-0.583258, 0.492807, -0.645717,
		-0.762509, -0.058171, 0.644357,
		45.896778, 32.441875, 33.599178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193115, 33.178497, 33.336544>,  <46.430534, 32.482597, 33.148129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193115, 33.178497, 33.336544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030113, 32.991142, 33.650116>,  <45.932312, 32.878731, 33.838261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.030113, 32.991142, 33.650116>,  <46.193115, 33.178497, 33.336544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.030113, 32.991142, 33.650116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204656, 0.789768, 0.578258,
		-0.889974, 0.396082, -0.225978,
		-0.407508, -0.468386, 0.783933,
		45.907860, 32.850628, 33.885296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.822540, 33.764774, 33.680920>,  <46.193115, 33.178497, 33.336544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.822540, 33.764774, 33.680920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905827, 33.470612, 33.938858>,  <45.955799, 33.294113, 34.093620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.905827, 33.470612, 33.938858>,  <45.822540, 33.764774, 33.680920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.905827, 33.470612, 33.938858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023543, 0.655333, 0.754973,
		-0.977800, -0.172377, 0.119136,
		0.208213, -0.735408, 0.644843,
		45.968292, 33.249989, 34.132313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.470280, 33.950554, 34.204800>,  <45.822540, 33.764774, 33.680920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.470280, 33.950554, 34.204800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727306, 33.711613, 34.396751>,  <45.881523, 33.568249, 34.511921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.727306, 33.711613, 34.396751>,  <45.470280, 33.950554, 34.204800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727306, 33.711613, 34.396751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101482, 0.554418, 0.826028,
		-0.759484, -0.579473, 0.295627,
		0.642562, -0.597354, 0.479878,
		45.920074, 33.532406, 34.540714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.180546, 33.877342, 34.807926>,  <45.470280, 33.950554, 34.204800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.180546, 33.877342, 34.807926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561096, 33.766636, 34.862003>,  <45.789429, 33.700211, 34.894447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.561096, 33.766636, 34.862003>,  <45.180546, 33.877342, 34.807926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.561096, 33.766636, 34.862003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046991, 0.564175, 0.824317,
		-0.304417, -0.777885, 0.549750,
		0.951379, -0.276770, 0.135191,
		45.846512, 33.683605, 34.902561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.289036, 33.803497, 35.535877>,  <45.180546, 33.877342, 34.807926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.289036, 33.803497, 35.535877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672474, 33.825256, 35.424065>,  <45.902538, 33.838314, 35.356979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.672474, 33.825256, 35.424065>,  <45.289036, 33.803497, 35.535877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.672474, 33.825256, 35.424065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188990, 0.612728, 0.767364,
		0.213020, -0.788419, 0.577077,
		0.958595, 0.054402, -0.279527,
		45.960052, 33.841576, 35.340206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666897, 33.778572, 36.208878>,  <45.289036, 33.803497, 35.535877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666897, 33.778572, 36.208878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919315, 33.920784, 35.933086>,  <46.070766, 34.006111, 35.767612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.919315, 33.920784, 35.933086>,  <45.666897, 33.778572, 36.208878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.919315, 33.920784, 35.933086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296251, 0.710983, 0.637760,
		0.716954, -0.606712, 0.343332,
		0.631040, 0.355532, -0.689482,
		46.108627, 34.027443, 35.726242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223614, 33.934105, 36.589283>,  <45.666897, 33.778572, 36.208878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223614, 33.934105, 36.589283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231960, 34.158817, 36.258476>,  <46.236969, 34.293644, 36.059990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.231960, 34.158817, 36.258476>,  <46.223614, 33.934105, 36.589283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.231960, 34.158817, 36.258476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125350, 0.819204, 0.559636,
		0.991893, -0.115342, -0.053330,
		0.020862, 0.561784, -0.827021,
		46.238220, 34.327354, 36.010368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.875713, 34.387444, 36.627922>,  <46.223614, 33.934105, 36.589283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.875713, 34.387444, 36.627922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624409, 34.565811, 36.372910>,  <46.473625, 34.672832, 36.219902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.624409, 34.565811, 36.372910>,  <46.875713, 34.387444, 36.627922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.624409, 34.565811, 36.372910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136495, 0.869910, 0.473946,
		0.765937, 0.210741, -0.607395,
		-0.628259, 0.445920, -0.637531,
		46.435932, 34.699589, 36.181648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.223072, 34.964645, 36.468006>,  <46.875713, 34.387444, 36.627922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.223072, 34.964645, 36.468006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863461, 35.069851, 36.327965>,  <46.647694, 35.132973, 36.243938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863461, 35.069851, 36.327965>,  <47.223072, 34.964645, 36.468006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863461, 35.069851, 36.327965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133252, 0.925929, 0.353411,
		0.417123, 0.271074, -0.867484,
		-0.899029, 0.263010, -0.350105,
		46.593754, 35.148754, 36.222935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.311111, 35.497223, 35.939102>,  <47.223072, 34.964645, 36.468006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.311111, 35.497223, 35.939102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943943, 35.553890, 36.087349>,  <46.723644, 35.587891, 36.176296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.943943, 35.553890, 36.087349>,  <47.311111, 35.497223, 35.939102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.943943, 35.553890, 36.087349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299431, 0.860190, 0.412812,
		-0.260318, 0.489902, -0.832004,
		-0.917919, 0.141665, 0.370615,
		46.668568, 35.596390, 36.198532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.209877, 36.226780, 36.022732>,  <47.311111, 35.497223, 35.939102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.209877, 36.226780, 36.022732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897461, 36.090553, 36.232105>,  <46.710011, 36.008816, 36.357731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.897461, 36.090553, 36.232105>,  <47.209877, 36.226780, 36.022732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.897461, 36.090553, 36.232105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043642, 0.806381, 0.589784,
		-0.622951, 0.483490, -0.614954,
		-0.781042, -0.340569, 0.523436,
		46.663147, 35.988384, 36.389137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661503, 36.759991, 36.012230>,  <47.209877, 36.226780, 36.022732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661503, 36.759991, 36.012230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623047, 36.533882, 36.339943>,  <46.599972, 36.398216, 36.536572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.623047, 36.533882, 36.339943>,  <46.661503, 36.759991, 36.012230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623047, 36.533882, 36.339943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172974, 0.801086, 0.573011,
		-0.980223, 0.196805, 0.020760,
		-0.096141, -0.565269, 0.819285,
		46.594204, 36.364300, 36.585728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.949669, 36.703377, 35.346684>,  <46.661503, 36.759991, 36.012230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.949669, 36.703377, 35.346684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268162, 36.473644, 35.422749>,  <47.459259, 36.335808, 35.468388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.268162, 36.473644, 35.422749>,  <46.949669, 36.703377, 35.346684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.268162, 36.473644, 35.422749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503115, -0.803158, -0.319081,
		0.335989, 0.158388, -0.928453,
		0.796233, -0.574327, 0.190165,
		47.507030, 36.301346, 35.479797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094929, 36.328812, 34.785252>,  <46.949669, 36.703377, 35.346684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094929, 36.328812, 34.785252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242130, 36.126556, 35.097382>,  <47.330452, 36.005203, 35.284660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.242130, 36.126556, 35.097382>,  <47.094929, 36.328812, 34.785252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.242130, 36.126556, 35.097382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532698, -0.802490, -0.268779,
		0.762108, -0.316767, -0.564668,
		0.368000, -0.505636, 0.780326,
		47.352531, 35.974865, 35.331478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.422302, 35.712639, 34.639652>,  <47.094929, 36.328812, 34.785252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.422302, 35.712639, 34.639652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254429, 35.681511, 35.001385>,  <47.153706, 35.662834, 35.218422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254429, 35.681511, 35.001385>,  <47.422302, 35.712639, 34.639652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254429, 35.681511, 35.001385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518275, -0.797383, -0.309145,
		0.745154, -0.598434, 0.294316,
		-0.419685, -0.077824, 0.904327,
		47.128525, 35.658165, 35.272682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.712303, 35.478844, 35.138943>,  <47.422302, 35.712639, 34.639652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.712303, 35.478844, 35.138943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.860115, 35.109749, 35.095116>,  <47.948803, 34.888290, 35.068817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.860115, 35.109749, 35.095116>,  <47.712303, 35.478844, 35.138943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.860115, 35.109749, 35.095116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729894, -0.361211, 0.580329,
		-0.575069, -0.134474, -0.806977,
		0.369528, -0.922737, -0.109570,
		47.970974, 34.832928, 35.062244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.255913, 35.315220, 46.028530> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966507, 35.088146, 45.871426>,  <33.792862, 34.951904, 45.777164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.966507, 35.088146, 45.871426>,  <34.255913, 35.315220, 46.028530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966507, 35.088146, 45.871426> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366718, 0.165955, -0.915410,
		0.584841, -0.806348, 0.088107,
		-0.723518, -0.567680, -0.392761,
		33.749451, 34.917843, 45.753597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528259, 34.602718, 45.788239>,  <34.255913, 35.315220, 46.028530>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528259, 34.602718, 45.788239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209660, 34.715416, 45.574242>,  <34.018501, 34.783035, 45.445843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209660, 34.715416, 45.574242>,  <34.528259, 34.602718, 45.788239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209660, 34.715416, 45.574242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577895, 0.094471, -0.810625,
		-0.177845, -0.954829, -0.238062,
		-0.796498, 0.281740, -0.534989,
		33.970711, 34.799938, 45.413746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.539379, 34.277508, 45.124180>,  <34.528259, 34.602718, 45.788239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.539379, 34.277508, 45.124180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276520, 34.566475, 45.038143>,  <34.118805, 34.739857, 44.986519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276520, 34.566475, 45.038143>,  <34.539379, 34.277508, 45.124180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276520, 34.566475, 45.038143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309875, -0.001210, -0.950776,
		-0.687121, -0.691452, -0.223065,
		-0.657147, 0.722421, -0.215095,
		34.079376, 34.783199, 44.973614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325722, 34.177639, 44.433254>,  <34.539379, 34.277508, 45.124180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325722, 34.177639, 44.433254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.198006, 34.551968, 44.492985>,  <34.121376, 34.776566, 44.528824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.198006, 34.551968, 44.492985>,  <34.325722, 34.177639, 44.433254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198006, 34.551968, 44.492985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176295, 0.213481, -0.960909,
		-0.931116, -0.280480, -0.233142,
		-0.319287, 0.935819, 0.149328,
		34.102219, 34.832714, 44.537785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.844589, 34.352810, 43.991215>,  <34.325722, 34.177639, 44.433254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.844589, 34.352810, 43.991215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983978, 34.712971, 44.095406>,  <34.067612, 34.929066, 44.157921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.983978, 34.712971, 44.095406>,  <33.844589, 34.352810, 43.991215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983978, 34.712971, 44.095406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058040, 0.256638, -0.964763,
		-0.935522, 0.351308, 0.037171,
		0.348468, 0.900400, 0.260481,
		34.088520, 34.983089, 44.173550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.558868, 34.818626, 43.438580>,  <33.844589, 34.352810, 43.991215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.558868, 34.818626, 43.438580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.856544, 35.022926, 43.610775>,  <34.035149, 35.145508, 43.714092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.856544, 35.022926, 43.610775>,  <33.558868, 34.818626, 43.438580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856544, 35.022926, 43.610775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314281, 0.300947, -0.900366,
		-0.589414, 0.805336, 0.063443,
		0.744190, 0.510750, 0.430484,
		34.079800, 35.176151, 43.739922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759850, 35.318836, 42.921345>,  <33.558868, 34.818626, 43.438580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759850, 35.318836, 42.921345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066521, 35.345085, 43.176811>,  <34.250523, 35.360836, 43.330090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.066521, 35.345085, 43.176811>,  <33.759850, 35.318836, 42.921345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.066521, 35.345085, 43.176811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585723, 0.335882, -0.737640,
		-0.262924, 0.939615, 0.219076,
		0.766681, 0.065626, 0.638665,
		34.296524, 35.364773, 43.368412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077892, 36.026611, 42.767498>,  <33.759850, 35.318836, 42.921345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077892, 36.026611, 42.767498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.322865, 35.775394, 42.959534>,  <34.469849, 35.624664, 43.074757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.322865, 35.775394, 42.959534>,  <34.077892, 36.026611, 42.767498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.322865, 35.775394, 42.959534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718024, 0.187876, -0.670182,
		0.330708, 0.755156, 0.566013,
		0.612433, -0.628046, 0.480088,
		34.506596, 35.586979, 43.103561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621487, 36.394100, 42.933327>,  <34.077892, 36.026611, 42.767498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621487, 36.394100, 42.933327> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747360, 36.014435, 42.936451>,  <34.822884, 35.786636, 42.938324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.747360, 36.014435, 42.936451>,  <34.621487, 36.394100, 42.933327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747360, 36.014435, 42.936451> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811026, 0.264593, -0.521754,
		0.493164, 0.170521, 0.853060,
		0.314684, -0.949164, 0.007809,
		34.841766, 35.729687, 42.938793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337730, 36.310844, 43.209789>,  <34.621487, 36.394100, 42.933327>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337730, 36.310844, 43.209789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248360, 36.014252, 42.956718>,  <35.194736, 35.836296, 42.804874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.248360, 36.014252, 42.956718>,  <35.337730, 36.310844, 43.209789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248360, 36.014252, 42.956718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861049, 0.154059, -0.484624,
		0.456810, -0.653048, 0.604031,
		-0.223426, -0.741482, -0.632682,
		35.181332, 35.791809, 42.766914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.951134, 35.978390, 43.028183>,  <35.337730, 36.310844, 43.209789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.951134, 35.978390, 43.028183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743179, 35.820221, 42.725300>,  <35.618408, 35.725319, 42.543571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.743179, 35.820221, 42.725300>,  <35.951134, 35.978390, 43.028183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743179, 35.820221, 42.725300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806643, 0.064492, -0.587510,
		0.281148, -0.916233, 0.285435,
		-0.519887, -0.395422, -0.757205,
		35.587212, 35.701595, 42.498138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349411, 35.516983, 42.745678>,  <35.951134, 35.978390, 43.028183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349411, 35.516983, 42.745678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074718, 35.526165, 42.455059>,  <35.909904, 35.531673, 42.280685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074718, 35.526165, 42.455059>,  <36.349411, 35.516983, 42.745678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074718, 35.526165, 42.455059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726659, 0.048014, -0.685318,
		0.019156, -0.998583, -0.049650,
		-0.686731, 0.022951, -0.726549,
		35.868698, 35.533051, 42.237095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630791, 35.079411, 42.175823>,  <36.349411, 35.516983, 42.745678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630791, 35.079411, 42.175823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.379929, 35.338207, 42.002350>,  <36.229412, 35.493484, 41.898266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.379929, 35.338207, 42.002350>,  <36.630791, 35.079411, 42.175823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379929, 35.338207, 42.002350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729822, 0.293611, -0.617375,
		-0.272101, -0.703701, -0.656327,
		-0.627153, 0.646991, -0.433685,
		36.191784, 35.532303, 41.872246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773544, 35.072193, 41.553917>,  <36.630791, 35.079411, 42.175823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773544, 35.072193, 41.553917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580597, 35.421917, 41.532322>,  <36.464828, 35.631752, 41.519363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.580597, 35.421917, 41.532322>,  <36.773544, 35.072193, 41.553917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580597, 35.421917, 41.532322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459873, 0.200298, -0.865100,
		-0.745548, -0.442121, -0.498686,
		-0.482365, 0.874305, -0.053988,
		36.435886, 35.684208, 41.516125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504662, 35.110466, 40.908237>,  <36.773544, 35.072193, 41.553917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504662, 35.110466, 40.908237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514671, 35.492802, 41.025372>,  <36.520679, 35.722202, 41.095654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.514671, 35.492802, 41.025372>,  <36.504662, 35.110466, 40.908237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514671, 35.492802, 41.025372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364211, 0.264079, -0.893092,
		-0.930980, 0.129008, -0.341515,
		0.025029, 0.955834, 0.292838,
		36.522179, 35.779552, 41.113224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271763, 35.455784, 40.328156>,  <36.504662, 35.110466, 40.908237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271763, 35.455784, 40.328156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467949, 35.726143, 40.548195>,  <36.585659, 35.888359, 40.680218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.467949, 35.726143, 40.548195>,  <36.271763, 35.455784, 40.328156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467949, 35.726143, 40.548195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420976, 0.368941, -0.828650,
		-0.763036, 0.638002, -0.103583,
		0.490465, 0.675896, 0.550099,
		36.615089, 35.928913, 40.713226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471783, 35.886585, 39.817139>,  <36.271763, 35.455784, 40.328156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471783, 35.886585, 39.817139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684841, 36.044014, 40.116844>,  <36.812675, 36.138470, 40.296665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.684841, 36.044014, 40.116844>,  <36.471783, 35.886585, 39.817139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684841, 36.044014, 40.116844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597769, 0.451767, -0.662253,
		-0.599135, 0.800630, 0.005368,
		0.532645, 0.393570, 0.749261,
		36.844635, 36.162086, 40.341621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609272, 36.598412, 39.683620>,  <36.471783, 35.886585, 39.817139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609272, 36.598412, 39.683620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906319, 36.483788, 39.925743>,  <37.084549, 36.415012, 40.071018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.906319, 36.483788, 39.925743>,  <36.609272, 36.598412, 39.683620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.906319, 36.483788, 39.925743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665116, 0.421291, -0.616551,
		-0.078334, 0.860464, 0.503453,
		0.742620, -0.286558, 0.605310,
		37.129105, 36.397820, 40.107338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.049217, 37.145828, 39.644638>,  <36.609272, 36.598412, 39.683620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.049217, 37.145828, 39.644638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272373, 36.849945, 39.795155>,  <37.406265, 36.672417, 39.885464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.272373, 36.849945, 39.795155>,  <37.049217, 37.145828, 39.644638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272373, 36.849945, 39.795155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794693, 0.345458, -0.499122,
		0.239209, 0.577493, 0.780565,
		0.557891, -0.739703, 0.376293,
		37.439739, 36.628033, 39.908043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777447, 37.474293, 39.855652>,  <37.049217, 37.145828, 39.644638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777447, 37.474293, 39.855652> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851326, 37.082478, 39.823654>,  <37.895653, 36.847389, 39.804455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.851326, 37.082478, 39.823654>,  <37.777447, 37.474293, 39.855652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.851326, 37.082478, 39.823654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687095, 0.186900, -0.702118,
		0.702699, 0.074718, 0.707553,
		0.184702, -0.979533, -0.079996,
		37.906738, 36.788616, 39.799656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.531834, 37.417347, 39.905594>,  <37.777447, 37.474293, 39.855652>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.531834, 37.417347, 39.905594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389599, 37.091652, 39.722042>,  <38.304256, 36.896233, 39.611912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.389599, 37.091652, 39.722042>,  <38.531834, 37.417347, 39.905594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389599, 37.091652, 39.722042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671157, 0.119239, -0.731663,
		0.650466, -0.568150, 0.504083,
		-0.355588, -0.814241, -0.458878,
		38.282921, 36.847382, 39.584377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.011333, 36.963932, 39.836578>,  <38.531834, 37.417347, 39.905594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.011333, 36.963932, 39.836578> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754459, 36.842590, 39.554989>,  <38.600334, 36.769787, 39.386036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.754459, 36.842590, 39.554989>,  <39.011333, 36.963932, 39.836578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754459, 36.842590, 39.554989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695399, 0.155847, -0.701521,
		0.322519, -0.940048, 0.110867,
		-0.642186, -0.303351, -0.703972,
		38.561802, 36.751587, 39.343796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482929, 36.684772, 39.297668>,  <39.011333, 36.963932, 39.836578>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482929, 36.684772, 39.297668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790257, 36.852623, 39.490997>,  <39.974651, 36.953335, 39.606995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.790257, 36.852623, 39.490997>,  <39.482929, 36.684772, 39.297668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790257, 36.852623, 39.490997> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340543, -0.371378, 0.863776,
		0.541959, -0.828247, -0.142435,
		0.768317, 0.419626, 0.483325,
		40.020752, 36.978512, 39.635994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609833, 36.168938, 39.797401>,  <39.482929, 36.684772, 39.297668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609833, 36.168938, 39.797401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813175, 36.485149, 39.934010>,  <39.935181, 36.674877, 40.015976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.813175, 36.485149, 39.934010>,  <39.609833, 36.168938, 39.797401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813175, 36.485149, 39.934010> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081838, -0.350443, 0.933002,
		0.857251, -0.502244, -0.113453,
		0.508354, 0.790532, 0.341520,
		39.965683, 36.722309, 40.036465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075253, 35.905991, 40.210007>,  <39.609833, 36.168938, 39.797401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075253, 35.905991, 40.210007> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.036041, 36.272991, 40.364189>,  <40.012512, 36.493191, 40.456699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.036041, 36.272991, 40.364189>,  <40.075253, 35.905991, 40.210007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.036041, 36.272991, 40.364189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056740, -0.381535, 0.922611,
		0.993565, 0.112314, -0.014657,
		-0.098030, 0.917506, 0.385453,
		40.006634, 36.548244, 40.479824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550812, 35.918503, 40.690014>,  <40.075253, 35.905991, 40.210007>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550812, 35.918503, 40.690014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.306221, 36.223961, 40.772903>,  <40.159466, 36.407238, 40.822636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.306221, 36.223961, 40.772903>,  <40.550812, 35.918503, 40.690014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306221, 36.223961, 40.772903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034742, -0.235726, 0.971198,
		0.790501, 0.601063, 0.117609,
		-0.611475, 0.763647, 0.207224,
		40.122780, 36.453056, 40.835072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776714, 36.175671, 41.393929>,  <40.550812, 35.918503, 40.690014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776714, 36.175671, 41.393929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.413269, 36.336918, 41.350262>,  <40.195202, 36.433666, 41.324062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.413269, 36.336918, 41.350262>,  <40.776714, 36.175671, 41.393929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413269, 36.336918, 41.350262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188650, -0.162949, 0.968431,
		0.372600, 0.900525, 0.224106,
		-0.908614, 0.403115, -0.109170,
		40.140686, 36.457851, 41.317513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760475, 36.652390, 41.950768>,  <40.776714, 36.175671, 41.393929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760475, 36.652390, 41.950768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.381401, 36.573162, 41.850643>,  <40.153957, 36.525627, 41.790569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.381401, 36.573162, 41.850643>,  <40.760475, 36.652390, 41.950768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381401, 36.573162, 41.850643> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230938, -0.115902, 0.966040,
		-0.220355, 0.973311, 0.064097,
		-0.947687, -0.198070, -0.250315,
		40.097095, 36.513741, 41.775547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.391426, 37.006981, 42.436928>,  <40.760475, 36.652390, 41.950768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.391426, 37.006981, 42.436928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.131783, 36.724865, 42.322929>,  <39.975994, 36.555595, 42.254532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.131783, 36.724865, 42.322929>,  <40.391426, 37.006981, 42.436928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.131783, 36.724865, 42.322929> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382395, -0.021333, 0.923753,
		-0.657591, 0.708600, -0.255851,
		-0.649113, -0.705288, -0.284993,
		39.937050, 36.513279, 42.237431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.646957, 37.231358, 42.672081>,  <40.391426, 37.006981, 42.436928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.646957, 37.231358, 42.672081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623615, 36.842121, 42.582916>,  <39.609612, 36.608578, 42.529419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623615, 36.842121, 42.582916>,  <39.646957, 37.231358, 42.672081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623615, 36.842121, 42.582916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615627, -0.140701, 0.775375,
		-0.785874, 0.182472, -0.590851,
		-0.058351, -0.973091, -0.222908,
		39.606110, 36.550194, 42.516045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.965851, 37.140808, 42.871906>,  <39.646957, 37.231358, 42.672081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.965851, 37.140808, 42.871906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.100155, 36.765251, 42.841595>,  <39.180737, 36.539917, 42.823406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.100155, 36.765251, 42.841595>,  <38.965851, 37.140808, 42.871906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.100155, 36.765251, 42.841595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630478, -0.283780, 0.722473,
		-0.699830, -0.194802, -0.687234,
		0.335762, -0.938894, -0.075779,
		39.200882, 36.483582, 42.818859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371243, 36.707787, 42.906422>,  <38.965851, 37.140808, 42.871906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371243, 36.707787, 42.906422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685051, 36.490669, 43.026356>,  <38.873337, 36.360397, 43.098316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.685051, 36.490669, 43.026356>,  <38.371243, 36.707787, 42.906422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685051, 36.490669, 43.026356> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534272, -0.346210, 0.771163,
		-0.314768, -0.765193, -0.561605,
		0.784522, -0.542787, 0.299846,
		38.920406, 36.327831, 43.116306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074329, 36.087914, 43.083267>,  <38.371243, 36.707787, 42.906422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074329, 36.087914, 43.083267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431839, 36.080849, 43.262539>,  <38.646343, 36.076611, 43.370102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.431839, 36.080849, 43.262539>,  <38.074329, 36.087914, 43.083267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431839, 36.080849, 43.262539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414900, -0.412148, 0.811167,
		0.170390, -0.910946, -0.375693,
		0.893770, -0.017661, 0.448177,
		38.699970, 36.075550, 43.396992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023914, 35.464108, 43.507935>,  <38.074329, 36.087914, 43.083267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023914, 35.464108, 43.507935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.321918, 35.678051, 43.667374>,  <38.500721, 35.806419, 43.763039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.321918, 35.678051, 43.667374>,  <38.023914, 35.464108, 43.507935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321918, 35.678051, 43.667374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450776, -0.036777, 0.891879,
		0.491691, -0.844139, 0.213703,
		0.745011, 0.534861, 0.398601,
		38.545422, 35.838509, 43.786953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285904, 35.078747, 44.088131>,  <38.023914, 35.464108, 43.507935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285904, 35.078747, 44.088131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360035, 35.470352, 44.122025>,  <38.404514, 35.705315, 44.142361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.360035, 35.470352, 44.122025>,  <38.285904, 35.078747, 44.088131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360035, 35.470352, 44.122025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488325, 0.016927, 0.872497,
		0.852755, -0.203076, 0.481216,
		0.185329, 0.979017, 0.084732,
		38.415634, 35.764057, 44.147446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525558, 35.201405, 44.739891>,  <38.285904, 35.078747, 44.088131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525558, 35.201405, 44.739891> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388771, 35.561260, 44.631298>,  <38.306698, 35.777176, 44.566143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.388771, 35.561260, 44.631298>,  <38.525558, 35.201405, 44.739891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388771, 35.561260, 44.631298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524774, 0.056831, 0.849342,
		0.779533, 0.432914, 0.452675,
		-0.341966, 0.899642, -0.271484,
		38.286182, 35.831154, 44.549854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481136, 35.651882, 45.374928>,  <38.525558, 35.201405, 44.739891>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481136, 35.651882, 45.374928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248745, 35.827259, 45.100636>,  <38.109310, 35.932484, 44.936058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248745, 35.827259, 45.100636>,  <38.481136, 35.651882, 45.374928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248745, 35.827259, 45.100636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711502, 0.135560, 0.689485,
		0.395256, 0.888479, 0.233194,
		-0.580980, 0.438441, -0.685735,
		38.074451, 35.958790, 44.894917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259235, 36.267876, 45.732212>,  <38.481136, 35.651882, 45.374928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259235, 36.267876, 45.732212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001488, 36.224705, 45.429386>,  <37.846840, 36.198803, 45.247692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.001488, 36.224705, 45.429386>,  <38.259235, 36.267876, 45.732212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001488, 36.224705, 45.429386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763764, 0.140209, 0.630084,
		0.038145, 0.984222, -0.172775,
		-0.644367, -0.107925, -0.757062,
		37.808178, 36.192326, 45.202267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815346, 36.884773, 45.801296>,  <38.259235, 36.267876, 45.732212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815346, 36.884773, 45.801296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.628647, 36.600536, 45.590694>,  <37.516628, 36.429993, 45.464333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.628647, 36.600536, 45.590694>,  <37.815346, 36.884773, 45.801296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628647, 36.600536, 45.590694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807563, 0.099742, 0.581286,
		-0.360542, 0.696499, -0.620401,
		-0.466745, -0.710591, -0.526506,
		37.488625, 36.387360, 45.432743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143513, 37.066845, 45.540188>,  <37.815346, 36.884773, 45.801296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143513, 37.066845, 45.540188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099915, 36.669903, 45.563370>,  <37.073757, 36.431740, 45.577278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099915, 36.669903, 45.563370>,  <37.143513, 37.066845, 45.540188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099915, 36.669903, 45.563370> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750114, 0.120366, 0.650262,
		-0.652265, 0.027400, -0.757496,
		-0.108994, -0.992352, 0.057958,
		37.067215, 36.372196, 45.580757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.126942, 36.862652, 45.449806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312656, 36.522160, 45.547665>,  <36.424084, 36.317863, 45.606380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.312656, 36.522160, 45.547665>,  <36.126942, 36.862652, 45.449806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312656, 36.522160, 45.547665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708787, -0.191457, 0.678944,
		-0.531097, -0.488625, -0.692229,
		0.464282, -0.851229, 0.244649,
		36.451942, 36.266792, 45.621059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608711, 36.343937, 45.400719>,  <36.126942, 36.862652, 45.449806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608711, 36.343937, 45.400719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902245, 36.192055, 45.626041>,  <36.078365, 36.100925, 45.761234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.902245, 36.192055, 45.626041>,  <35.608711, 36.343937, 45.400719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902245, 36.192055, 45.626041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672500, -0.288785, 0.681430,
		-0.096068, -0.878879, -0.467272,
		0.733836, -0.379704, 0.563303,
		36.122395, 36.078144, 45.795033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304668, 35.712425, 45.686230>,  <35.608711, 36.343937, 45.400719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304668, 35.712425, 45.686230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620281, 35.773190, 45.924339>,  <35.809650, 35.809647, 46.067204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.620281, 35.773190, 45.924339>,  <35.304668, 35.712425, 45.686230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620281, 35.773190, 45.924339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439343, -0.537756, 0.719581,
		0.429419, -0.829303, -0.357570,
		0.789035, 0.151906, 0.595271,
		35.856991, 35.818760, 46.102921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520191, 35.004238, 45.969177>,  <35.304668, 35.712425, 45.686230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520191, 35.004238, 45.969177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624245, 35.325603, 46.183411>,  <35.686676, 35.518421, 46.311951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.624245, 35.325603, 46.183411>,  <35.520191, 35.004238, 45.969177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624245, 35.325603, 46.183411> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332864, -0.446066, 0.830799,
		0.906383, -0.394400, 0.151389,
		0.260138, 0.803414, 0.535588,
		35.702286, 35.566628, 46.344086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653576, 34.614304, 46.581470>,  <35.520191, 35.004238, 45.969177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653576, 34.614304, 46.581470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668571, 34.994915, 46.703575>,  <35.677567, 35.223282, 46.776836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.668571, 34.994915, 46.703575>,  <35.653576, 34.614304, 46.581470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668571, 34.994915, 46.703575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197287, -0.292417, 0.935719,
		0.979629, -0.095302, 0.176763,
		0.037487, 0.951530, 0.305262,
		35.679817, 35.280373, 46.795155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023891, 34.698803, 47.255928>,  <35.653576, 34.614304, 46.581470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023891, 34.698803, 47.255928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758476, 34.994324, 47.208775>,  <35.599228, 35.171635, 47.180485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.758476, 34.994324, 47.208775>,  <36.023891, 34.698803, 47.255928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758476, 34.994324, 47.208775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384600, -0.201693, 0.900779,
		0.641721, 0.643034, 0.417973,
		-0.663534, 0.738801, -0.117881,
		35.559418, 35.215965, 47.173409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136707, 35.181519, 47.865326>,  <36.023891, 34.698803, 47.255928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136707, 35.181519, 47.865326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764015, 35.252476, 47.738575>,  <35.540401, 35.295052, 47.662525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764015, 35.252476, 47.738575>,  <36.136707, 35.181519, 47.865326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764015, 35.252476, 47.738575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356081, -0.274939, 0.893093,
		0.071311, 0.944954, 0.319337,
		-0.931730, 0.177397, -0.316874,
		35.484497, 35.305695, 47.643513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863422, 35.604279, 48.390396>,  <36.136707, 35.181519, 47.865326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863422, 35.604279, 48.390396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548054, 35.457966, 48.192574>,  <35.358833, 35.370178, 48.073879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.548054, 35.457966, 48.192574>,  <35.863422, 35.604279, 48.390396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548054, 35.457966, 48.192574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424495, -0.258332, 0.867795,
		-0.445187, 0.894128, 0.048401,
		-0.788424, -0.365785, -0.494559,
		35.311527, 35.348228, 48.044205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198784, 35.961220, 48.676464>,  <35.863422, 35.604279, 48.390396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198784, 35.961220, 48.676464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064362, 35.634613, 48.488689>,  <34.983707, 35.438648, 48.376022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.064362, 35.634613, 48.488689>,  <35.198784, 35.961220, 48.676464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.064362, 35.634613, 48.488689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541299, -0.240449, 0.805717,
		-0.770755, 0.524871, -0.361174,
		-0.336054, -0.816513, -0.469440,
		34.963547, 35.389660, 48.347858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425976, 35.923122, 48.752232>,  <35.198784, 35.961220, 48.676464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425976, 35.923122, 48.752232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.579735, 35.559719, 48.686680>,  <34.671989, 35.341679, 48.647350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.579735, 35.559719, 48.686680>,  <34.425976, 35.923122, 48.752232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579735, 35.559719, 48.686680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402241, -0.324607, 0.856057,
		-0.830928, -0.263148, -0.490216,
		0.384397, -0.908506, -0.163876,
		34.695053, 35.287167, 48.637516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940685, 35.486431, 49.003094>,  <34.425976, 35.923122, 48.752232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940685, 35.486431, 49.003094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253017, 35.237892, 48.977062>,  <34.440418, 35.088768, 48.961441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.253017, 35.237892, 48.977062>,  <33.940685, 35.486431, 49.003094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.253017, 35.237892, 48.977062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266923, -0.425983, 0.864460,
		-0.564852, -0.657624, -0.498471,
		0.780829, -0.621345, -0.065082,
		34.487267, 35.051487, 48.957539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692272, 34.805351, 49.126347>,  <33.940685, 35.486431, 49.003094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692272, 34.805351, 49.126347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087318, 34.797897, 49.188667>,  <34.324345, 34.793427, 49.226059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.087318, 34.797897, 49.188667>,  <33.692272, 34.805351, 49.126347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087318, 34.797897, 49.188667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139018, -0.564424, 0.813695,
		0.072776, -0.825274, -0.560023,
		0.987612, -0.018636, 0.155805,
		34.383602, 34.792305, 49.235409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828117, 34.115158, 49.457291>,  <33.692272, 34.805351, 49.126347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828117, 34.115158, 49.457291> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.169746, 34.297222, 49.558006>,  <34.374722, 34.406460, 49.618435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.169746, 34.297222, 49.558006>,  <33.828117, 34.115158, 49.457291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.169746, 34.297222, 49.558006> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108340, -0.629098, 0.769739,
		0.508752, -0.630132, -0.586605,
		0.854069, 0.455159, 0.251786,
		34.425968, 34.433769, 49.633541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223042, 33.502201, 49.507580>,  <33.828117, 34.115158, 49.457291>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223042, 33.502201, 49.507580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377869, 33.829338, 49.677906>,  <34.470764, 34.025620, 49.780102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.377869, 33.829338, 49.677906>,  <34.223042, 33.502201, 49.507580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.377869, 33.829338, 49.677906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160928, -0.514644, 0.842166,
		0.907899, -0.257449, -0.330815,
		0.387067, 0.817839, 0.425814,
		34.493988, 34.074688, 49.805649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700844, 33.180073, 49.976002>,  <34.223042, 33.502201, 49.507580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700844, 33.180073, 49.976002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.647499, 33.551151, 50.115479>,  <34.615494, 33.773800, 50.199165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.647499, 33.551151, 50.115479>,  <34.700844, 33.180073, 49.976002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647499, 33.551151, 50.115479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183199, -0.322699, 0.928603,
		0.973988, 0.187719, -0.126919,
		-0.133359, 0.927700, 0.348695,
		34.607491, 33.829460, 50.220085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265331, 33.218712, 50.474621>,  <34.700844, 33.180073, 49.976002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265331, 33.218712, 50.474621> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020309, 33.521000, 50.567280>,  <34.873295, 33.702374, 50.622875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.020309, 33.521000, 50.567280>,  <35.265331, 33.218712, 50.474621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020309, 33.521000, 50.567280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039345, -0.263551, 0.963843,
		0.789447, 0.599522, 0.131706,
		-0.612557, 0.755721, 0.231648,
		34.836544, 33.747715, 50.636776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610413, 33.571217, 50.880932>,  <35.265331, 33.218712, 50.474621>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610413, 33.571217, 50.880932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217049, 33.598286, 50.948246>,  <34.981030, 33.614529, 50.988632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.217049, 33.598286, 50.948246>,  <35.610413, 33.571217, 50.880932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217049, 33.598286, 50.948246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135727, -0.340897, 0.930251,
		0.120320, 0.937662, 0.326058,
		-0.983413, 0.067673, 0.168282,
		34.922024, 33.618587, 50.998730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487492, 33.905666, 51.491539>,  <35.610413, 33.571217, 50.880932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487492, 33.905666, 51.491539> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144100, 33.710175, 51.429359>,  <34.938065, 33.592880, 51.392052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.144100, 33.710175, 51.429359>,  <35.487492, 33.905666, 51.491539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144100, 33.710175, 51.429359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002256, -0.306707, 0.951801,
		-0.512847, 0.816749, 0.264403,
		-0.858477, -0.488725, -0.155451,
		34.886559, 33.563557, 51.382725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084167, 34.166725, 52.000683>,  <35.487492, 33.905666, 51.491539>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084167, 34.166725, 52.000683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915096, 33.826778, 51.874779>,  <34.813652, 33.622810, 51.799236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.915096, 33.826778, 51.874779>,  <35.084167, 34.166725, 52.000683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.915096, 33.826778, 51.874779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252487, -0.223130, 0.941522,
		-0.870397, 0.477436, -0.120266,
		-0.422682, -0.849863, -0.314758,
		34.788292, 33.571819, 51.780350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389927, 34.129993, 52.288258>,  <35.084167, 34.166725, 52.000683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389927, 34.129993, 52.288258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502651, 33.756721, 52.199028>,  <34.570286, 33.532761, 52.145489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.502651, 33.756721, 52.199028>,  <34.389927, 34.129993, 52.288258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502651, 33.756721, 52.199028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235837, -0.292738, 0.926653,
		-0.930035, -0.208530, -0.302574,
		0.281810, -0.933177, -0.223077,
		34.587193, 33.476768, 52.132103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873615, 33.784225, 52.542553>,  <34.389927, 34.129993, 52.288258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873615, 33.784225, 52.542553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148308, 33.499207, 52.485050>,  <34.313126, 33.328194, 52.450546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.148308, 33.499207, 52.485050>,  <33.873615, 33.784225, 52.542553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148308, 33.499207, 52.485050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314216, -0.469324, 0.825230,
		-0.655488, -0.521542, -0.546195,
		0.686734, -0.712552, -0.143760,
		34.354328, 33.285442, 52.441921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498695, 33.221832, 52.531178>,  <33.873615, 33.784225, 52.542553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498695, 33.221832, 52.531178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870625, 33.151279, 52.660366>,  <34.093784, 33.108948, 52.737881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.870625, 33.151279, 52.660366>,  <33.498695, 33.221832, 52.531178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870625, 33.151279, 52.660366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367887, -0.424163, 0.827493,
		-0.008958, -0.888244, -0.459285,
		0.929827, -0.176378, 0.322974,
		34.149574, 33.098366, 52.757259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525303, 32.432491, 52.690552>,  <33.498695, 33.221832, 52.531178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525303, 32.432491, 52.690552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781818, 32.658344, 52.898373>,  <33.935730, 32.793854, 53.023067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.781818, 32.658344, 52.898373>,  <33.525303, 32.432491, 52.690552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.781818, 32.658344, 52.898373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431540, -0.294476, 0.852677,
		0.634444, -0.771023, 0.054815,
		0.641291, 0.564630, 0.519555,
		33.974205, 32.827732, 53.054241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933949, 32.148491, 52.662098>,  <33.525303, 32.432491, 52.690552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933949, 32.148491, 52.662098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629501, 32.395412, 52.741730>,  <32.446835, 32.543568, 52.789509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.629501, 32.395412, 52.741730>,  <32.933949, 32.148491, 52.662098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629501, 32.395412, 52.741730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005482, 0.300791, -0.953674,
		-0.648590, -0.726950, -0.225553,
		-0.761118, 0.617307, 0.199076,
		32.401165, 32.580605, 52.801453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447876, 31.650751, 53.146797>,  <32.933949, 32.148491, 52.662098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447876, 31.650751, 53.146797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100834, 31.530209, 52.988586>,  <31.892607, 31.457884, 52.893661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.100834, 31.530209, 52.988586>,  <32.447876, 31.650751, 53.146797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100834, 31.530209, 52.988586> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251341, 0.420548, -0.871761,
		0.429066, -0.855752, -0.289120,
		-0.867600, -0.301375, -0.395528,
		31.840551, 31.439802, 52.869930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.640331, 31.281874, 52.596699>,  <32.447876, 31.650751, 53.146797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.640331, 31.281874, 52.596699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270042, 31.423737, 52.544151>,  <32.047871, 31.508854, 52.512623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.270042, 31.423737, 52.544151>,  <32.640331, 31.281874, 52.596699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270042, 31.423737, 52.544151> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266698, 0.365856, -0.891640,
		-0.268164, -0.860446, -0.433267,
		-0.925722, 0.354657, -0.131370,
		31.992327, 31.530134, 52.504742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542049, 31.047123, 51.991398>,  <32.640331, 31.281874, 52.596699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542049, 31.047123, 51.991398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232086, 31.299702, 52.002659>,  <32.046108, 31.451250, 52.009415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232086, 31.299702, 52.002659>,  <32.542049, 31.047123, 51.991398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232086, 31.299702, 52.002659> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039862, -0.004363, -0.999196,
		-0.630817, -0.775406, 0.028552,
		-0.774907, 0.631448, 0.028157,
		31.999615, 31.489136, 52.011105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154556, 30.810509, 51.393044>,  <32.542049, 31.047123, 51.991398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154556, 30.810509, 51.393044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.051250, 31.188345, 51.474087>,  <31.989267, 31.415047, 51.522713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.051250, 31.188345, 51.474087>,  <32.154556, 30.810509, 51.393044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051250, 31.188345, 51.474087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097209, 0.234070, -0.967348,
		-0.961171, -0.230135, -0.152275,
		-0.258263, 0.944590, 0.202610,
		31.973772, 31.471722, 51.534870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591806, 31.064001, 50.960373>,  <32.154556, 30.810509, 51.393044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591806, 31.064001, 50.960373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750206, 31.417103, 51.061512>,  <31.845245, 31.628963, 51.122196>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.750206, 31.417103, 51.061512>,  <31.591806, 31.064001, 50.960373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750206, 31.417103, 51.061512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099874, 0.232322, -0.967498,
		-0.912804, 0.408381, 0.003835,
		0.395998, 0.882752, 0.252851,
		31.869005, 31.681929, 51.137367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.221004, 31.546335, 50.574554>,  <31.591806, 31.064001, 50.960373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.221004, 31.546335, 50.574554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574188, 31.705027, 50.674946>,  <31.786098, 31.800241, 50.735180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.574188, 31.705027, 50.674946>,  <31.221004, 31.546335, 50.574554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574188, 31.705027, 50.674946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132870, 0.301571, -0.944140,
		-0.450258, 0.866983, 0.213561,
		0.882957, 0.396731, 0.250980,
		31.839075, 31.824045, 50.750240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319056, 32.076122, 50.120781>,  <31.221004, 31.546335, 50.574554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319056, 32.076122, 50.120781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690245, 32.053577, 50.268127>,  <31.912958, 32.040051, 50.356537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.690245, 32.053577, 50.268127>,  <31.319056, 32.076122, 50.120781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.690245, 32.053577, 50.268127> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364642, 0.341183, -0.866389,
		-0.076848, 0.938306, 0.337160,
		0.927971, -0.056362, 0.368365,
		31.968636, 32.036667, 50.378635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484314, 32.803722, 49.963375>,  <31.319056, 32.076122, 50.120781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484314, 32.803722, 49.963375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828104, 32.602104, 49.997414>,  <32.034378, 32.481133, 50.017838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.828104, 32.602104, 49.997414>,  <31.484314, 32.803722, 49.963375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828104, 32.602104, 49.997414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378590, 0.515811, -0.768510,
		0.343467, 0.692734, 0.634153,
		0.859477, -0.504042, 0.085098,
		32.085945, 32.450893, 50.022942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998543, 33.238808, 49.752453>,  <31.484314, 32.803722, 49.963375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998543, 33.238808, 49.752453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175575, 32.880981, 49.727531>,  <32.281796, 32.666286, 49.712578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.175575, 32.880981, 49.727531>,  <31.998543, 33.238808, 49.752453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175575, 32.880981, 49.727531> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596703, 0.345650, -0.724204,
		0.669380, 0.283343, 0.686766,
		0.442579, -0.894563, -0.062300,
		32.308350, 32.612614, 49.708843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.729153, 33.400295, 49.732445>,  <31.998543, 33.238808, 49.752453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.729153, 33.400295, 49.732445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657589, 33.037106, 49.580875>,  <32.614651, 32.819191, 49.489933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.657589, 33.037106, 49.580875>,  <32.729153, 33.400295, 49.732445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657589, 33.037106, 49.580875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618820, 0.195566, -0.760799,
		0.764887, -0.370601, 0.526881,
		-0.178913, -0.907970, -0.378921,
		32.603916, 32.764713, 49.467197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452648, 33.069572, 49.488655>,  <32.729153, 33.400295, 49.732445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452648, 33.069572, 49.488655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159744, 32.914612, 49.264614>,  <32.984001, 32.821636, 49.130188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159744, 32.914612, 49.264614>,  <33.452648, 33.069572, 49.488655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159744, 32.914612, 49.264614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482334, 0.285603, -0.828121,
		0.480780, -0.876558, -0.022280,
		-0.732260, -0.387398, -0.560106,
		32.940067, 32.798393, 49.096581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740112, 32.920280, 48.861660>,  <33.452648, 33.069572, 49.488655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740112, 32.920280, 48.861660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352386, 32.911175, 48.763748>,  <33.119751, 32.905712, 48.705002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352386, 32.911175, 48.763748>,  <33.740112, 32.920280, 48.861660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352386, 32.911175, 48.763748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210670, 0.436283, -0.874800,
		0.126704, -0.899522, -0.418099,
		-0.969311, -0.022760, -0.244781,
		33.061592, 32.904346, 48.690315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757984, 32.688293, 48.146755>,  <33.740112, 32.920280, 48.861660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757984, 32.688293, 48.146755> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402527, 32.860455, 48.210083>,  <33.189251, 32.963749, 48.248081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.402527, 32.860455, 48.210083>,  <33.757984, 32.688293, 48.146755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402527, 32.860455, 48.210083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032075, 0.402713, -0.914764,
		-0.457472, -0.807823, -0.371674,
		-0.888645, 0.430400, 0.158318,
		33.135933, 32.989574, 48.257580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314442, 32.554546, 47.536789>,  <33.757984, 32.688293, 48.146755>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314442, 32.554546, 47.536789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189198, 32.881409, 47.730377>,  <33.114052, 33.077526, 47.846531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.189198, 32.881409, 47.730377>,  <33.314442, 32.554546, 47.536789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.189198, 32.881409, 47.730377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026010, 0.502021, -0.864464,
		-0.949361, -0.283259, -0.135932,
		-0.313108, 0.817153, 0.483967,
		33.095264, 33.126556, 47.875568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739773, 32.753689, 47.059834>,  <33.314442, 32.554546, 47.536789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739773, 32.753689, 47.059834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847088, 33.065273, 47.286545>,  <32.911476, 33.252224, 47.422573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847088, 33.065273, 47.286545>,  <32.739773, 32.753689, 47.059834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847088, 33.065273, 47.286545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026224, 0.582225, -0.812605,
		-0.962982, 0.232875, 0.135777,
		0.268288, 0.778963, 0.566779,
		32.927574, 33.298962, 47.456577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382553, 33.340668, 46.774551>,  <32.739773, 32.753689, 47.059834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382553, 33.340668, 46.774551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680737, 33.510468, 46.980110>,  <32.859646, 33.612347, 47.103447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.680737, 33.510468, 46.980110>,  <32.382553, 33.340668, 46.774551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680737, 33.510468, 46.980110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139400, 0.654643, -0.742973,
		-0.651816, 0.625491, 0.428831,
		0.745455, 0.424503, 0.513901,
		32.904373, 33.637817, 47.134281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245564, 33.986313, 46.791664>,  <32.382553, 33.340668, 46.774551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245564, 33.986313, 46.791664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.631271, 33.988911, 46.897594>,  <32.862698, 33.990471, 46.961155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.631271, 33.988911, 46.897594>,  <32.245564, 33.986313, 46.791664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631271, 33.988911, 46.897594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146321, 0.820309, -0.552886,
		-0.220832, 0.571884, 0.790052,
		0.964274, 0.006494, 0.264829,
		32.920555, 33.990860, 46.977043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402832, 34.832569, 46.758770>,  <32.245564, 33.986313, 46.791664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402832, 34.832569, 46.758770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719013, 34.590919, 46.718338>,  <32.908722, 34.445930, 46.694077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719013, 34.590919, 46.718338>,  <32.402832, 34.832569, 46.758770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719013, 34.590919, 46.718338> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280356, 0.503558, -0.817209,
		0.544597, 0.617626, 0.567409,
		0.790452, -0.604126, -0.101082,
		32.956150, 34.409683, 46.688015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863605, 35.326164, 46.456051>,  <32.402832, 34.832569, 46.758770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863605, 35.326164, 46.456051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019554, 34.960751, 46.409641>,  <33.113121, 34.741505, 46.381794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019554, 34.960751, 46.409641>,  <32.863605, 35.326164, 46.456051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019554, 34.960751, 46.409641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419319, 0.288285, -0.860850,
		0.819862, 0.286968, 0.495455,
		0.389868, -0.913532, -0.116022,
		33.136513, 34.686691, 46.374836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599979, 35.559166, 46.406860>,  <32.863605, 35.326164, 46.456051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599979, 35.559166, 46.406860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513523, 35.201900, 46.249104>,  <33.461651, 34.987541, 46.154449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.513523, 35.201900, 46.249104>,  <33.599979, 35.559166, 46.406860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513523, 35.201900, 46.249104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426871, 0.276847, -0.860893,
		0.878104, -0.354425, 0.321428,
		-0.216136, -0.893162, -0.394395,
		33.448681, 34.933952, 46.130787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.637577, 34.573452, 29.695791> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421146, 34.877254, 29.551359>,  <44.291286, 35.059536, 29.464699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.421146, 34.877254, 29.551359>,  <44.637577, 34.573452, 29.695791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.421146, 34.877254, 29.551359> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234497, 0.548592, 0.802532,
		0.807617, 0.349560, -0.474934,
		-0.541078, 0.759510, -0.361081,
		44.258823, 35.105106, 29.443035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005379, 35.155098, 29.963173>,  <44.637577, 34.573452, 29.695791>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005379, 35.155098, 29.963173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.646034, 35.302376, 29.867353>,  <44.430428, 35.390743, 29.809862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.646034, 35.302376, 29.867353>,  <45.005379, 35.155098, 29.963173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646034, 35.302376, 29.867353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132063, 0.746505, 0.652142,
		0.418938, 0.554223, -0.719255,
		-0.898360, 0.368194, -0.239547,
		44.376526, 35.412834, 29.795490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.130753, 35.883801, 29.786688>,  <45.005379, 35.155098, 29.963173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.130753, 35.883801, 29.786688> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740734, 35.856548, 29.871204>,  <44.506721, 35.840199, 29.921915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.740734, 35.856548, 29.871204>,  <45.130753, 35.883801, 29.786688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740734, 35.856548, 29.871204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070112, 0.808545, 0.584242,
		-0.210643, 0.584477, -0.783592,
		-0.975045, -0.068127, 0.211294,
		44.448219, 35.836109, 29.934593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.915955, 36.584572, 29.828268>,  <45.130753, 35.883801, 29.786688>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.915955, 36.584572, 29.828268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633442, 36.376740, 30.020601>,  <44.463932, 36.252041, 30.136002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633442, 36.376740, 30.020601>,  <44.915955, 36.584572, 29.828268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633442, 36.376740, 30.020601> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040845, 0.707990, 0.705040,
		-0.706748, 0.478320, -0.521265,
		-0.706285, -0.519577, 0.480833,
		44.421555, 36.220867, 30.164852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.354992, 37.100906, 30.009453>,  <44.915955, 36.584572, 29.828268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.354992, 37.100906, 30.009453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342319, 36.783737, 30.252851>,  <44.334717, 36.593433, 30.398890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.342319, 36.783737, 30.252851>,  <44.354992, 37.100906, 30.009453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.342319, 36.783737, 30.252851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064386, 0.609155, 0.790433,
		-0.997422, -0.014136, -0.070352,
		-0.031682, -0.792925, 0.608495,
		44.332813, 36.545860, 30.435400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.950142, 37.321766, 30.612207>,  <44.354992, 37.100906, 30.009453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.950142, 37.321766, 30.612207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147022, 37.001408, 30.748617>,  <44.265152, 36.809193, 30.830463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.147022, 37.001408, 30.748617>,  <43.950142, 37.321766, 30.612207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.147022, 37.001408, 30.748617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131734, 0.455787, 0.880287,
		-0.860456, -0.388353, 0.329844,
		0.492201, -0.800900, 0.341025,
		44.294682, 36.761139, 30.850925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557545, 37.131653, 31.148378>,  <43.950142, 37.321766, 30.612207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557545, 37.131653, 31.148378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917263, 36.967525, 31.208923>,  <44.133095, 36.869049, 31.245251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.917263, 36.967525, 31.208923>,  <43.557545, 37.131653, 31.148378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917263, 36.967525, 31.208923> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113699, 0.114849, 0.986855,
		-0.422308, -0.904682, 0.056630,
		0.899293, -0.410318, 0.151363,
		44.187050, 36.844429, 31.254332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555126, 36.719612, 31.799822>,  <43.557545, 37.131653, 31.148378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555126, 36.719612, 31.799822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950256, 36.760059, 31.752533>,  <44.187336, 36.784328, 31.724159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.950256, 36.760059, 31.752533>,  <43.555126, 36.719612, 31.799822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.950256, 36.760059, 31.752533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133659, -0.162813, 0.977562,
		0.079603, -0.981461, -0.174346,
		0.987825, 0.101119, -0.118221,
		44.246605, 36.790394, 31.717066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913261, 36.325493, 32.266869>,  <43.555126, 36.719612, 31.799822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913261, 36.325493, 32.266869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216755, 36.577751, 32.201618>,  <44.398853, 36.729107, 32.162468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.216755, 36.577751, 32.201618>,  <43.913261, 36.325493, 32.266869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.216755, 36.577751, 32.201618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265981, -0.071334, 0.961335,
		0.594621, -0.772789, -0.221863,
		0.758735, 0.630642, -0.163130,
		44.444374, 36.766945, 32.152679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.638199, 36.004307, 32.503208>,  <43.913261, 36.325493, 32.266869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.638199, 36.004307, 32.503208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645016, 36.404247, 32.502056>,  <44.649105, 36.644211, 32.501366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.645016, 36.404247, 32.502056>,  <44.638199, 36.004307, 32.503208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.645016, 36.404247, 32.502056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394652, -0.004082, 0.918822,
		0.918673, -0.016797, -0.394662,
		0.017044, 0.999851, -0.002878,
		44.650127, 36.704201, 32.501194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.247612, 36.147205, 32.924706>,  <44.638199, 36.004307, 32.503208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.247612, 36.147205, 32.924706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027107, 36.480679, 32.911526>,  <44.894802, 36.680763, 32.903618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.027107, 36.480679, 32.911526>,  <45.247612, 36.147205, 32.924706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.027107, 36.480679, 32.911526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156673, 0.142227, 0.977356,
		0.819488, 0.533619, -0.209020,
		-0.551264, 0.833680, -0.032950,
		44.861729, 36.730782, 32.901642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686516, 36.622208, 33.248615>,  <45.247612, 36.147205, 32.924706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686516, 36.622208, 33.248615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315929, 36.772755, 33.247742>,  <45.093578, 36.863083, 33.247219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.315929, 36.772755, 33.247742>,  <45.686516, 36.622208, 33.248615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.315929, 36.772755, 33.247742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054773, 0.140557, 0.988556,
		0.372364, 0.915747, -0.150836,
		-0.926469, 0.376365, -0.002180,
		45.037991, 36.885666, 33.247089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731224, 37.131790, 33.612103>,  <45.686516, 36.622208, 33.248615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731224, 37.131790, 33.612103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336552, 37.067715, 33.623440>,  <45.099747, 37.029270, 33.630241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.336552, 37.067715, 33.623440>,  <45.731224, 37.131790, 33.612103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336552, 37.067715, 33.623440> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015029, 0.083732, 0.996375,
		-0.161979, 0.983529, -0.080210,
		-0.986680, -0.160186, 0.028344,
		45.040546, 37.019657, 33.631943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.369610, 37.644875, 34.042953>,  <45.731224, 37.131790, 33.612103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.369610, 37.644875, 34.042953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109154, 37.341297, 34.044674>,  <44.952881, 37.159149, 34.045704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.109154, 37.341297, 34.044674>,  <45.369610, 37.644875, 34.042953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.109154, 37.341297, 34.044674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093908, 0.086185, 0.991844,
		-0.753128, 0.645422, -0.127389,
		-0.651137, -0.758948, 0.004298,
		44.913815, 37.113613, 34.045963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.800148, 37.842312, 34.379848>,  <45.369610, 37.644875, 34.042953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.800148, 37.842312, 34.379848> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772121, 37.445560, 34.422291>,  <44.755306, 37.207508, 34.447758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.772121, 37.445560, 34.422291>,  <44.800148, 37.842312, 34.379848>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.772121, 37.445560, 34.422291> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214772, 0.118874, 0.969403,
		-0.974147, 0.045138, -0.221359,
		-0.070071, -0.991883, 0.106106,
		44.751099, 37.147995, 34.454124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499405, 37.862099, 34.964279>,  <44.800148, 37.842312, 34.379848>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499405, 37.862099, 34.964279> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568558, 37.469162, 34.935654>,  <44.610050, 37.233402, 34.918480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.568558, 37.469162, 34.935654>,  <44.499405, 37.862099, 34.964279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568558, 37.469162, 34.935654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031992, -0.078220, 0.996423,
		-0.984423, -0.169970, -0.044949,
		0.172878, -0.982340, -0.071564,
		44.620422, 37.174461, 34.914185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.042210, 37.633110, 35.489487>,  <44.499405, 37.862099, 34.964279>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.042210, 37.633110, 35.489487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298569, 37.337101, 35.407887>,  <44.452385, 37.159496, 35.358929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298569, 37.337101, 35.407887>,  <44.042210, 37.633110, 35.489487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298569, 37.337101, 35.407887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036989, -0.235670, 0.971129,
		-0.766736, -0.629938, -0.123666,
		0.640896, -0.740025, -0.203997,
		44.490837, 37.115093, 35.346687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.771927, 36.974346, 35.840500>,  <44.042210, 37.633110, 35.489487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.771927, 36.974346, 35.840500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159218, 36.905033, 35.768379>,  <44.391594, 36.863445, 35.725105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.159218, 36.905033, 35.768379>,  <43.771927, 36.974346, 35.840500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.159218, 36.905033, 35.768379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116806, -0.324146, 0.938768,
		-0.221111, -0.930002, -0.293607,
		0.968228, -0.173277, -0.180302,
		44.449688, 36.853050, 35.714287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.905487, 36.322582, 35.969906>,  <43.771927, 36.974346, 35.840500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.905487, 36.322582, 35.969906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262108, 36.501637, 35.997498>,  <44.476082, 36.609070, 36.014053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.262108, 36.501637, 35.997498>,  <43.905487, 36.322582, 35.969906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.262108, 36.501637, 35.997498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079050, -0.303751, 0.949466,
		0.445963, -0.841048, -0.306195,
		0.891553, 0.447632, 0.068977,
		44.529575, 36.635925, 36.018192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163227, 36.049183, 36.583218>,  <43.905487, 36.322582, 35.969906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163227, 36.049183, 36.583218> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.424606, 36.348969, 36.540676>,  <44.581432, 36.528839, 36.515152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.424606, 36.348969, 36.540676>,  <44.163227, 36.049183, 36.583218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.424606, 36.348969, 36.540676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126392, 0.030504, 0.991511,
		0.746344, -0.661345, -0.074793,
		0.653449, 0.749461, -0.106356,
		44.620640, 36.573807, 36.508770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721531, 35.885155, 37.105450>,  <44.163227, 36.049183, 36.583218>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721531, 35.885155, 37.105450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758179, 36.276192, 37.029640>,  <44.780167, 36.510815, 36.984154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.758179, 36.276192, 37.029640>,  <44.721531, 35.885155, 37.105450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.758179, 36.276192, 37.029640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056248, 0.184940, 0.981139,
		0.994205, -0.100548, -0.038045,
		0.091615, 0.977593, -0.189524,
		44.785664, 36.569469, 36.972782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.403202, 36.222858, 36.954212>,  <44.721531, 35.885155, 37.105450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.403202, 36.222858, 36.954212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272213, 36.459572, 36.659580>,  <45.193619, 36.601601, 36.482800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.272213, 36.459572, 36.659580>,  <45.403202, 36.222858, 36.954212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.272213, 36.459572, 36.659580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928225, -0.055851, 0.367802,
		0.176520, 0.804161, 0.567597,
		-0.327473, 0.591782, -0.736583,
		45.173973, 36.637108, 36.438606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706940, 35.513390, 37.203411>,  <45.403202, 36.222858, 36.954212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706940, 35.513390, 37.203411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.982010, 35.656384, 36.950649>,  <46.147053, 35.742180, 36.798992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.982010, 35.656384, 36.950649>,  <45.706940, 35.513390, 37.203411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.982010, 35.656384, 36.950649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213287, -0.732493, -0.646500,
		-0.693981, 0.579360, -0.427472,
		0.687676, 0.357485, -0.631907,
		46.188313, 35.763630, 36.761078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.405167, 35.347179, 36.628349>,  <45.706940, 35.513390, 37.203411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.405167, 35.347179, 36.628349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.773643, 35.447090, 36.509003>,  <45.994728, 35.507034, 36.437397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.773643, 35.447090, 36.509003>,  <45.405167, 35.347179, 36.628349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.773643, 35.447090, 36.509003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081550, -0.625823, -0.775690,
		-0.380469, 0.738891, -0.556134,
		0.921191, 0.249773, -0.298362,
		46.049999, 35.522022, 36.419495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354073, 35.475330, 35.873856>,  <45.405167, 35.347179, 36.628349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354073, 35.475330, 35.873856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729504, 35.378830, 35.972538>,  <45.954765, 35.320930, 36.031746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.729504, 35.378830, 35.972538>,  <45.354073, 35.475330, 35.873856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.729504, 35.378830, 35.972538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004553, -0.723561, -0.690246,
		0.345025, 0.646729, -0.680220,
		0.938582, -0.241249, 0.246702,
		46.011078, 35.306454, 36.046547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.808487, 35.326252, 35.237522>,  <45.354073, 35.475330, 35.873856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.808487, 35.326252, 35.237522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.011486, 35.135002, 35.524254>,  <46.133286, 35.020252, 35.696293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.011486, 35.135002, 35.524254>,  <45.808487, 35.326252, 35.237522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.011486, 35.135002, 35.524254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003189, -0.830875, -0.556451,
		0.861649, 0.284682, -0.420140,
		0.507495, -0.478125, 0.716830,
		46.163734, 34.991566, 35.739304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427532, 35.062366, 34.917133>,  <45.808487, 35.326252, 35.237522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427532, 35.062366, 34.917133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366173, 34.839733, 35.243736>,  <46.329357, 34.706154, 35.439697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366173, 34.839733, 35.243736>,  <46.427532, 35.062366, 34.917133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366173, 34.839733, 35.243736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017520, -0.827687, -0.560916,
		0.988009, -0.071740, 0.136720,
		-0.153401, -0.556585, 0.816505,
		46.320152, 34.672756, 35.488689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.918201, 34.592930, 34.940399>,  <46.427532, 35.062366, 34.917133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.918201, 34.592930, 34.940399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.655262, 34.411861, 35.181393>,  <46.497498, 34.303223, 35.325989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.655262, 34.411861, 35.181393>,  <46.918201, 34.592930, 34.940399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.655262, 34.411861, 35.181393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068306, -0.760408, -0.645844,
		0.750487, -0.465696, 0.468931,
		-0.657346, -0.452667, 0.602486,
		46.458057, 34.276062, 35.362137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.183342, 33.956028, 34.931458>,  <46.918201, 34.592930, 34.940399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.183342, 33.956028, 34.931458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.800014, 33.933537, 35.043507>,  <46.570019, 33.920040, 35.110737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.800014, 33.933537, 35.043507>,  <47.183342, 33.956028, 34.931458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.800014, 33.933537, 35.043507> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121289, -0.807639, -0.577069,
		0.258685, -0.586990, 0.767154,
		-0.958317, -0.056232, 0.280119,
		46.512520, 33.916668, 35.127541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.033459, 33.298363, 35.214146>,  <47.183342, 33.956028, 34.931458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.033459, 33.298363, 35.214146> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.680069, 33.435307, 35.086231>,  <46.468037, 33.517471, 35.009483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.680069, 33.435307, 35.086231>,  <47.033459, 33.298363, 35.214146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.680069, 33.435307, 35.086231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173234, -0.872964, -0.455986,
		-0.435275, -0.347454, 0.830549,
		-0.883474, 0.342359, -0.319788,
		46.415028, 33.538013, 34.990295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.622829, 32.723213, 35.264793>,  <47.033459, 33.298363, 35.214146>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.622829, 32.723213, 35.264793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.387703, 32.966022, 35.050880>,  <46.246628, 33.111706, 34.922531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.387703, 32.966022, 35.050880>,  <46.622829, 32.723213, 35.264793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.387703, 32.966022, 35.050880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367697, -0.789295, -0.491745,
		-0.720603, -0.092418, 0.687162,
		-0.587819, 0.607020, -0.534786,
		46.211357, 33.148129, 34.890446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.091328, 32.377937, 35.059608>,  <46.622829, 32.723213, 35.264793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.091328, 32.377937, 35.059608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.064415, 32.664600, 34.781940>,  <46.048267, 32.836597, 34.615341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.064415, 32.664600, 34.781940>,  <46.091328, 32.377937, 35.059608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.064415, 32.664600, 34.781940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403205, -0.655932, -0.638106,
		-0.912633, 0.236961, 0.333092,
		-0.067280, 0.716661, -0.694169,
		46.044231, 32.879601, 34.573689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.411472, 32.209415, 34.826847>,  <46.091328, 32.377937, 35.059608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.411472, 32.209415, 34.826847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.584934, 32.410713, 34.527863>,  <45.689011, 32.531490, 34.348473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.584934, 32.410713, 34.527863>,  <45.411472, 32.209415, 34.826847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584934, 32.410713, 34.527863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453728, -0.594726, -0.663650,
		-0.778509, 0.626937, -0.029569,
		0.433652, 0.503241, -0.747459,
		45.715031, 32.561684, 34.303623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937454, 32.506500, 34.496761>,  <45.411472, 32.209415, 34.826847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937454, 32.506500, 34.496761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235844, 32.468674, 34.233070>,  <45.414875, 32.445976, 34.074856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235844, 32.468674, 34.233070>,  <44.937454, 32.506500, 34.496761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235844, 32.468674, 34.233070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588484, -0.557029, -0.586008,
		-0.311794, 0.825092, -0.471178,
		0.745970, -0.094567, -0.659231,
		45.459633, 32.440304, 34.035301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.597446, 32.421215, 33.859703>,  <44.937454, 32.506500, 34.496761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.597446, 32.421215, 33.859703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970005, 32.320805, 33.754265>,  <45.193539, 32.260559, 33.691002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.970005, 32.320805, 33.754265>,  <44.597446, 32.421215, 33.859703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.970005, 32.320805, 33.754265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362650, -0.702344, -0.612534,
		-0.031375, 0.666107, -0.745196,
		0.931397, -0.251027, -0.263600,
		45.249424, 32.245495, 33.675186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.587311, 32.385666, 33.124352>,  <44.597446, 32.421215, 33.859703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.587311, 32.385666, 33.124352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.874184, 32.139706, 33.255531>,  <45.046307, 31.992130, 33.334240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.874184, 32.139706, 33.255531>,  <44.587311, 32.385666, 33.124352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.874184, 32.139706, 33.255531> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412340, -0.753801, -0.511625,
		0.561803, 0.231703, -0.794160,
		0.717184, -0.614897, 0.327947,
		45.089340, 31.955236, 33.353916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.668381, 32.041553, 32.523701>,  <44.587311, 32.385666, 33.124352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.668381, 32.041553, 32.523701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.839256, 31.809566, 32.801159>,  <44.941780, 31.670374, 32.967632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.839256, 31.809566, 32.801159>,  <44.668381, 32.041553, 32.523701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.839256, 31.809566, 32.801159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162632, -0.803945, -0.572035,
		0.889417, 0.131557, -0.437757,
		0.427187, -0.579970, 0.693647,
		44.967411, 31.635576, 33.009254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.224705, 31.625200, 32.167709>,  <44.668381, 32.041553, 32.523701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.224705, 31.625200, 32.167709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114174, 31.426235, 32.496639>,  <45.047855, 31.306856, 32.693996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114174, 31.426235, 32.496639>,  <45.224705, 31.625200, 32.167709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114174, 31.426235, 32.496639> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209514, -0.803885, -0.556662,
		0.937948, -0.326111, 0.117922,
		-0.276330, -0.497414, 0.822327,
		45.031277, 31.277012, 32.743336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.574673, 30.923363, 32.065136>,  <45.224705, 31.625200, 32.167709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.574673, 30.923363, 32.065136> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290867, 30.886467, 32.344585>,  <45.120583, 30.864330, 32.512257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290867, 30.886467, 32.344585>,  <45.574673, 30.923363, 32.065136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290867, 30.886467, 32.344585> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446968, -0.707549, -0.547351,
		0.544800, -0.700619, 0.460789,
		-0.709516, -0.092239, 0.698627,
		45.078011, 30.858795, 32.554173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.457069, 30.197847, 32.004501>,  <45.574673, 30.923363, 32.065136>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.457069, 30.197847, 32.004501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.142498, 30.350103, 32.199089>,  <44.953754, 30.441458, 32.315842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.142498, 30.350103, 32.199089>,  <45.457069, 30.197847, 32.004501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.142498, 30.350103, 32.199089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600252, -0.656740, -0.456498,
		0.145721, -0.651003, 0.744957,
		-0.786424, 0.380641, 0.486466,
		44.906570, 30.464296, 32.345028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.158581, 29.677120, 32.250553>,  <45.457069, 30.197847, 32.004501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.158581, 29.677120, 32.250553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861160, 29.944559, 32.246372>,  <44.682709, 30.105022, 32.243862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.861160, 29.944559, 32.246372>,  <45.158581, 29.677120, 32.250553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.861160, 29.944559, 32.246372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556043, -0.626909, -0.545711,
		-0.371415, -0.399952, 0.837908,
		-0.743550, 0.668598, -0.010453,
		44.638096, 30.145138, 32.243237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.498398, 29.433380, 32.525345>,  <45.158581, 29.677120, 32.250553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.498398, 29.433380, 32.525345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401196, 29.727083, 32.271790>,  <44.342873, 29.903305, 32.119656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.401196, 29.727083, 32.271790>,  <44.498398, 29.433380, 32.525345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.401196, 29.727083, 32.271790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652403, -0.607311, -0.453369,
		-0.717857, 0.303381, 0.626611,
		-0.243004, 0.734257, -0.633889,
		44.328293, 29.947361, 32.081623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.487759, 36.570518, 44.311264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190884, 36.352135, 44.155785>,  <39.012760, 36.221104, 44.062496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190884, 36.352135, 44.155785>,  <39.487759, 36.570518, 44.311264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190884, 36.352135, 44.155785> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498769, -0.062567, -0.864474,
		0.447647, -0.835473, 0.318743,
		-0.742187, -0.545958, -0.388700,
		38.968227, 36.188347, 44.039173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851227, 36.001556, 44.087135>,  <39.487759, 36.570518, 44.311264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851227, 36.001556, 44.087135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517952, 36.069893, 43.876759>,  <39.317989, 36.110893, 43.750530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.517952, 36.069893, 43.876759>,  <39.851227, 36.001556, 44.087135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517952, 36.069893, 43.876759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533441, -0.002390, -0.845834,
		-0.145759, -0.985296, -0.089142,
		-0.833183, 0.170840, -0.525946,
		39.267998, 36.121143, 43.718975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038017, 35.795803, 43.460674>,  <39.851227, 36.001556, 44.087135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038017, 35.795803, 43.460674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682819, 35.951843, 43.363277>,  <39.469700, 36.045467, 43.304840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.682819, 35.951843, 43.363277>,  <40.038017, 35.795803, 43.460674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.682819, 35.951843, 43.363277> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264584, 0.000351, -0.964363,
		-0.376112, -0.920773, -0.103526,
		-0.887995, 0.390099, -0.243489,
		39.416420, 36.068874, 43.290230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.833431, 35.371330, 42.902073>,  <40.038017, 35.795803, 43.460674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.833431, 35.371330, 42.902073> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604332, 35.697067, 42.864529>,  <39.466873, 35.892509, 42.842003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604332, 35.697067, 42.864529>,  <39.833431, 35.371330, 42.902073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604332, 35.697067, 42.864529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263026, 0.074123, -0.961937,
		-0.776385, -0.575639, -0.256646,
		-0.572751, 0.814338, -0.093860,
		39.432507, 35.941368, 42.836372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491158, 35.302185, 42.262787>,  <39.833431, 35.371330, 42.902073>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491158, 35.302185, 42.262787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527336, 35.688549, 42.359818>,  <39.549046, 35.920368, 42.418037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527336, 35.688549, 42.359818>,  <39.491158, 35.302185, 42.262787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.527336, 35.688549, 42.359818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193675, 0.221865, -0.955649,
		-0.976887, 0.133421, -0.167004,
		0.090451, 0.965906, 0.242578,
		39.554470, 35.978321, 42.432590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063263, 35.626076, 41.827484>,  <39.491158, 35.302185, 42.262787>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063263, 35.626076, 41.827484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351929, 35.874146, 41.950504>,  <39.525127, 36.022987, 42.024319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351929, 35.874146, 41.950504>,  <39.063263, 35.626076, 41.827484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351929, 35.874146, 41.950504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185391, 0.254908, -0.949027,
		-0.666960, 0.741894, 0.068983,
		0.721661, 0.620174, 0.307554,
		39.568428, 36.060196, 42.042770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868599, 36.206661, 41.456142>,  <39.063263, 35.626076, 41.827484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868599, 36.206661, 41.456142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253231, 36.281029, 41.536930>,  <39.484013, 36.325649, 41.585403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253231, 36.281029, 41.536930>,  <38.868599, 36.206661, 41.456142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253231, 36.281029, 41.536930> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126154, 0.354139, -0.926645,
		-0.243807, 0.916525, 0.317080,
		0.961584, 0.185921, 0.201965,
		39.541706, 36.336803, 41.597519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.986794, 36.956287, 41.230499>,  <38.868599, 36.206661, 41.456142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.986794, 36.956287, 41.230499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348793, 36.789215, 41.262817>,  <39.565990, 36.688972, 41.282207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348793, 36.789215, 41.262817>,  <38.986794, 36.956287, 41.230499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348793, 36.789215, 41.262817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242209, 0.349741, -0.904995,
		0.349741, 0.838585, 0.417679,
		0.904995, -0.417679, 0.080794,
		39.620293, 36.663910, 41.287056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.541683, 37.461311, 41.313362>,  <38.986794, 36.956287, 41.230499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.541683, 37.461311, 41.313362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692741, 37.131332, 41.145153>,  <39.783379, 36.933346, 41.044228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.692741, 37.131332, 41.145153>,  <39.541683, 37.461311, 41.313362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692741, 37.131332, 41.145153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226901, 0.522751, -0.821734,
		0.897718, 0.214911, 0.384598,
		0.377649, -0.824951, -0.420520,
		39.806034, 36.883846, 41.018997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030209, 37.792778, 40.922096>,  <39.541683, 37.461311, 41.313362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030209, 37.792778, 40.922096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025200, 37.421688, 40.772877>,  <40.022194, 37.199032, 40.683346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025200, 37.421688, 40.772877>,  <40.030209, 37.792778, 40.922096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025200, 37.421688, 40.772877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304869, 0.351772, -0.885048,
		0.952312, -0.124814, 0.278431,
		-0.012522, -0.927727, -0.373049,
		40.021442, 37.143372, 40.660961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.577991, 37.753693, 40.572697>,  <40.030209, 37.792778, 40.922096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.577991, 37.753693, 40.572697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384941, 37.445473, 40.406166>,  <40.269112, 37.260540, 40.306248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.384941, 37.445473, 40.406166>,  <40.577991, 37.753693, 40.572697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384941, 37.445473, 40.406166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338475, 0.274318, -0.900102,
		0.807777, -0.575330, 0.128418,
		-0.482629, -0.770549, -0.416323,
		40.240154, 37.214310, 40.281269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109100, 37.413544, 40.085423>,  <40.577991, 37.753693, 40.572697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109100, 37.413544, 40.085423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743511, 37.304119, 39.965542>,  <40.524158, 37.238464, 39.893612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.743511, 37.304119, 39.965542>,  <41.109100, 37.413544, 40.085423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.743511, 37.304119, 39.965542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223581, 0.276864, -0.934536,
		0.338635, -0.921145, -0.191881,
		-0.913968, -0.273566, -0.299707,
		40.469322, 37.222050, 39.875629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.165977, 36.965553, 39.451649>,  <41.109100, 37.413544, 40.085423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.165977, 36.965553, 39.451649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830021, 37.178665, 39.493084>,  <40.628448, 37.306534, 39.517944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830021, 37.178665, 39.493084>,  <41.165977, 36.965553, 39.451649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830021, 37.178665, 39.493084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205259, 0.488474, -0.848093,
		-0.502447, -0.691042, -0.519622,
		-0.839890, 0.532779, 0.103590,
		40.578053, 37.338497, 39.524162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.848862, 36.836815, 39.557968>,  <41.165977, 36.965553, 39.451649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.848862, 36.836815, 39.557968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517136, 36.633057, 39.649841>,  <41.318100, 36.510799, 39.704964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517136, 36.633057, 39.649841>,  <41.848862, 36.836815, 39.557968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517136, 36.633057, 39.649841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265894, -0.001776, -0.964001,
		0.491470, -0.860528, -0.133974,
		-0.829312, -0.509400, 0.229682,
		41.268341, 36.480236, 39.718746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153652, 36.180645, 39.785851>,  <41.848862, 36.836815, 39.557968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153652, 36.180645, 39.785851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509480, 36.002308, 39.825642>,  <42.722977, 35.895306, 39.849514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509480, 36.002308, 39.825642>,  <42.153652, 36.180645, 39.785851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509480, 36.002308, 39.825642> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379409, -0.599832, 0.704450,
		-0.254408, -0.664396, -0.702748,
		0.889565, -0.445847, 0.099476,
		42.776348, 35.868553, 39.855484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128983, 35.361099, 39.588726>,  <42.153652, 36.180645, 39.785851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128983, 35.361099, 39.588726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468895, 35.374348, 39.799164>,  <42.672844, 35.382298, 39.925426>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468895, 35.374348, 39.799164>,  <42.128983, 35.361099, 39.588726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468895, 35.374348, 39.799164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405247, -0.597206, 0.692184,
		0.337113, -0.801403, -0.494072,
		0.849782, 0.033123, 0.526093,
		42.723831, 35.384285, 39.956993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.126122, 34.734737, 39.778297>,  <42.128983, 35.361099, 39.588726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.126122, 34.734737, 39.778297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366226, 34.930618, 40.031242>,  <42.510288, 35.048145, 40.183010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366226, 34.930618, 40.031242>,  <42.126122, 34.734737, 39.778297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366226, 34.930618, 40.031242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362330, -0.538360, 0.760846,
		0.713026, -0.685828, -0.145722,
		0.600260, 0.489703, 0.632360,
		42.546303, 35.077530, 40.220951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.301289, 34.213665, 40.250309>,  <42.126122, 34.734737, 39.778297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.301289, 34.213665, 40.250309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434296, 34.538113, 40.442772>,  <42.514099, 34.732780, 40.558250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.434296, 34.538113, 40.442772>,  <42.301289, 34.213665, 40.250309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434296, 34.538113, 40.442772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234530, -0.423042, 0.875232,
		0.913471, -0.403875, 0.049564,
		0.332516, 0.811123, 0.481157,
		42.534050, 34.781448, 40.587120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590630, 33.921738, 40.843491>,  <42.301289, 34.213665, 40.250309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590630, 33.921738, 40.843491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518394, 34.302078, 40.944107>,  <42.475052, 34.530281, 41.004475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.518394, 34.302078, 40.944107>,  <42.590630, 33.921738, 40.843491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518394, 34.302078, 40.944107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252679, -0.292010, 0.922434,
		0.950548, 0.103023, 0.292994,
		-0.180589, 0.950850, 0.251537,
		42.464218, 34.587334, 41.019569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899036, 34.117344, 41.451595>,  <42.590630, 33.921738, 40.843491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899036, 34.117344, 41.451595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599976, 34.382076, 41.473495>,  <42.420540, 34.540916, 41.486637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.599976, 34.382076, 41.473495>,  <42.899036, 34.117344, 41.451595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.599976, 34.382076, 41.473495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233427, -0.339090, 0.911334,
		0.621716, 0.668578, 0.408010,
		-0.747650, 0.661832, 0.054754,
		42.375679, 34.580627, 41.489922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.967087, 34.521637, 42.063076>,  <42.899036, 34.117344, 41.451595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.967087, 34.521637, 42.063076> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581787, 34.531124, 41.956047>,  <42.350609, 34.536816, 41.891830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.581787, 34.531124, 41.956047>,  <42.967087, 34.521637, 42.063076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581787, 34.531124, 41.956047> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259729, -0.336441, 0.905179,
		-0.068554, 0.941406, 0.330236,
		-0.963245, 0.023718, -0.267575,
		42.292812, 34.538239, 41.875774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.640808, 34.634228, 42.692074>,  <42.967087, 34.521637, 42.063076>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.640808, 34.634228, 42.692074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322853, 34.562672, 42.460159>,  <42.132080, 34.519737, 42.321011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322853, 34.562672, 42.460159>,  <42.640808, 34.634228, 42.692074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322853, 34.562672, 42.460159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496949, -0.356317, 0.791252,
		-0.348132, 0.917081, 0.194335,
		-0.794887, -0.178886, -0.579788,
		42.084389, 34.509007, 42.286224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092957, 34.857094, 43.048729>,  <42.640808, 34.634228, 42.692074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092957, 34.857094, 43.048729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926834, 34.599865, 42.791367>,  <41.827160, 34.445526, 42.636948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.926834, 34.599865, 42.791367>,  <42.092957, 34.857094, 43.048729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926834, 34.599865, 42.791367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472826, -0.451643, 0.756607,
		-0.777145, 0.618446, -0.116491,
		-0.415308, -0.643074, -0.643409,
		41.802242, 34.406944, 42.598343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.495773, 34.906742, 43.212982>,  <42.092957, 34.857094, 43.048729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.495773, 34.906742, 43.212982> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524517, 34.552086, 43.030247>,  <41.541763, 34.339291, 42.920605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524517, 34.552086, 43.030247>,  <41.495773, 34.906742, 43.212982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.524517, 34.552086, 43.030247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524314, -0.423211, 0.738910,
		-0.848487, 0.186426, -0.495293,
		0.071861, -0.886644, -0.456835,
		41.546074, 34.286091, 42.893196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820164, 34.724743, 43.200352>,  <41.495773, 34.906742, 43.212982>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820164, 34.724743, 43.200352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063480, 34.409142, 43.165802>,  <41.209469, 34.219780, 43.145073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.063480, 34.409142, 43.165802>,  <40.820164, 34.724743, 43.200352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063480, 34.409142, 43.165802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526887, -0.482783, 0.699507,
		-0.593613, -0.379992, -0.709387,
		0.608287, -0.789003, -0.086374,
		41.245968, 34.172440, 43.139889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345890, 34.174789, 43.258060>,  <40.820164, 34.724743, 43.200352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345890, 34.174789, 43.258060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716625, 34.053619, 43.346786>,  <40.939068, 33.980919, 43.400021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716625, 34.053619, 43.346786>,  <40.345890, 34.174789, 43.258060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716625, 34.053619, 43.346786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351011, -0.489435, 0.798276,
		-0.133252, -0.817735, -0.559958,
		0.926841, -0.302924, 0.221815,
		40.994678, 33.962742, 43.413330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.231750, 33.464298, 43.399509>,  <40.345890, 34.174789, 43.258060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.231750, 33.464298, 43.399509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568977, 33.600849, 43.565742>,  <40.771313, 33.682777, 43.665482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568977, 33.600849, 43.565742>,  <40.231750, 33.464298, 43.399509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568977, 33.600849, 43.565742> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272907, -0.394299, 0.877525,
		0.463425, -0.853225, -0.239257,
		0.843065, 0.341373, 0.415579,
		40.821896, 33.703262, 43.690414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453415, 32.907326, 43.770164>,  <40.231750, 33.464298, 43.399509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453415, 32.907326, 43.770164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653538, 33.214043, 43.931023>,  <40.773613, 33.398071, 44.027538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653538, 33.214043, 43.931023>,  <40.453415, 32.907326, 43.770164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.653538, 33.214043, 43.931023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386553, -0.217790, 0.896183,
		0.774768, -0.603822, 0.187443,
		0.500312, 0.766790, 0.402146,
		40.803631, 33.444080, 44.051666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592274, 32.161541, 43.606625>,  <40.453415, 32.907326, 43.770164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592274, 32.161541, 43.606625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314316, 31.884041, 43.530907>,  <40.147541, 31.717541, 43.485477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314316, 31.884041, 43.530907>,  <40.592274, 32.161541, 43.606625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314316, 31.884041, 43.530907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205509, 0.060670, -0.976773,
		0.689122, -0.717655, 0.100413,
		-0.694893, -0.693751, -0.189294,
		40.105846, 31.675915, 43.474117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.901806, 31.702879, 43.115063>,  <40.592274, 32.161541, 43.606625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.901806, 31.702879, 43.115063> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513397, 31.621298, 43.065243>,  <40.280350, 31.572350, 43.035351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513397, 31.621298, 43.065243>,  <40.901806, 31.702879, 43.115063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513397, 31.621298, 43.065243> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133542, -0.030877, -0.990562,
		0.198182, -0.978494, 0.057219,
		-0.971025, -0.203953, -0.124550,
		40.222088, 31.560112, 43.027878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.872528, 31.082630, 42.732250>,  <40.901806, 31.702879, 43.115063>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.872528, 31.082630, 42.732250> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535660, 31.289593, 42.671535>,  <40.333538, 31.413771, 42.635105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535660, 31.289593, 42.671535>,  <40.872528, 31.082630, 42.732250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.535660, 31.289593, 42.671535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148766, -0.047621, -0.987725,
		-0.518284, -0.854413, -0.036867,
		-0.842170, 0.517407, -0.151789,
		40.283009, 31.444815, 42.625999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622799, 30.848688, 42.065998>,  <40.872528, 31.082630, 42.732250>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622799, 30.848688, 42.065998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416580, 31.188519, 42.110600>,  <40.292850, 31.392418, 42.137360>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.416580, 31.188519, 42.110600>,  <40.622799, 30.848688, 42.065998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.416580, 31.188519, 42.110600> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092376, 0.184475, -0.978486,
		-0.851869, -0.494153, -0.173586,
		-0.515544, 0.849577, 0.111500,
		40.261917, 31.443392, 42.144051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.997898, 30.856363, 41.609436>,  <40.622799, 30.848688, 42.065998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.997898, 30.856363, 41.609436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051090, 31.246387, 41.680511>,  <40.083008, 31.480402, 41.723156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051090, 31.246387, 41.680511>,  <39.997898, 30.856363, 41.609436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.051090, 31.246387, 41.680511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253706, 0.206795, -0.944918,
		-0.958097, 0.080577, 0.274879,
		0.132983, 0.975061, 0.177687,
		40.090984, 31.538906, 41.733818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372208, 31.283957, 41.363945>,  <39.997898, 30.856363, 41.609436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372208, 31.283957, 41.363945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667416, 31.553019, 41.385349>,  <39.844540, 31.714457, 41.398190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667416, 31.553019, 41.385349>,  <39.372208, 31.283957, 41.363945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667416, 31.553019, 41.385349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076274, 0.161948, -0.983847,
		-0.670457, 0.722015, 0.170827,
		0.738018, 0.672657, 0.053508,
		39.888821, 31.754816, 41.401402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178207, 31.856695, 40.967209>,  <39.372208, 31.283957, 41.363945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178207, 31.856695, 40.967209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567322, 31.931892, 41.021393>,  <39.800789, 31.977011, 41.053902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567322, 31.931892, 41.021393>,  <39.178207, 31.856695, 40.967209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567322, 31.931892, 41.021393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025175, 0.495396, -0.868302,
		-0.230343, 0.848081, 0.477181,
		0.972784, 0.187994, 0.135461,
		39.859158, 31.988291, 41.062031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276257, 32.587196, 40.882103>,  <39.178207, 31.856695, 40.967209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276257, 32.587196, 40.882103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639294, 32.431217, 40.819843>,  <39.857117, 32.337631, 40.782490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.639294, 32.431217, 40.819843>,  <39.276257, 32.587196, 40.882103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639294, 32.431217, 40.819843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093344, 0.548828, -0.830707,
		0.409353, 0.739412, 0.534510,
		0.907589, -0.389946, -0.155645,
		39.911572, 32.314232, 40.773151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661404, 33.146736, 40.648327>,  <39.276257, 32.587196, 40.882103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661404, 33.146736, 40.648327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865158, 32.819069, 40.542881>,  <39.987411, 32.622471, 40.479614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.865158, 32.819069, 40.542881>,  <39.661404, 33.146736, 40.648327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865158, 32.819069, 40.542881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242038, 0.430353, -0.869606,
		0.825796, 0.379164, 0.417486,
		0.509390, -0.819165, -0.263611,
		40.017975, 32.573318, 40.463799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360241, 33.358170, 40.539204>,  <39.661404, 33.146736, 40.648327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360241, 33.358170, 40.539204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264679, 33.027576, 40.335300>,  <40.207344, 32.829220, 40.212959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.264679, 33.027576, 40.335300>,  <40.360241, 33.358170, 40.539204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264679, 33.027576, 40.335300> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367765, 0.408841, -0.835223,
		0.898707, -0.387007, 0.206279,
		-0.238902, -0.826483, -0.509756,
		40.193008, 32.779633, 40.182373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.001812, 33.214645, 40.242069>,  <40.360241, 33.358170, 40.539204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.001812, 33.214645, 40.242069> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704651, 33.044807, 40.035065>,  <40.526356, 32.942905, 39.910862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704651, 33.044807, 40.035065>,  <41.001812, 33.214645, 40.242069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704651, 33.044807, 40.035065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411792, 0.319638, -0.853381,
		0.527757, -0.847084, -0.062616,
		-0.742900, -0.424593, -0.517514,
		40.481781, 32.917431, 39.879810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.284298, 32.778809, 39.719990>,  <41.001812, 33.214645, 40.242069>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.284298, 32.778809, 39.719990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906425, 32.863152, 39.619503>,  <40.679703, 32.913757, 39.559212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.906425, 32.863152, 39.619503>,  <41.284298, 32.778809, 39.719990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.906425, 32.863152, 39.619503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304208, 0.276989, -0.911447,
		-0.122600, -0.937452, -0.325811,
		-0.944684, 0.210858, -0.251221,
		40.623020, 32.926407, 39.544136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.622292, 30.341932, 47.039349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.277153, 30.428368, 46.856567>,  <39.070068, 30.480228, 46.746899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.277153, 30.428368, 46.856567>,  <39.622292, 30.341932, 47.039349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.277153, 30.428368, 46.856567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477804, 0.053707, -0.876823,
		-0.164930, -0.974896, -0.149589,
		-0.862845, 0.216089, -0.456951,
		39.018299, 30.493195, 46.719482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579735, 29.922663, 46.445915>,  <39.622292, 30.341932, 47.039349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579735, 29.922663, 46.445915> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.327412, 30.227186, 46.385925>,  <39.176018, 30.409901, 46.349934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.327412, 30.227186, 46.385925>,  <39.579735, 29.922663, 46.445915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327412, 30.227186, 46.385925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373685, 0.128676, -0.918587,
		-0.680031, -0.635492, -0.365660,
		-0.630807, 0.761309, -0.149970,
		39.138168, 30.455580, 46.340935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336006, 29.875044, 45.791622>,  <39.579735, 29.922663, 46.445915>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336006, 29.875044, 45.791622> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.248505, 30.251232, 45.895672>,  <39.196003, 30.476946, 45.958099>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.248505, 30.251232, 45.895672>,  <39.336006, 29.875044, 45.791622>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248505, 30.251232, 45.895672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208166, 0.305419, -0.929185,
		-0.953318, -0.149110, -0.262584,
		-0.218749, 0.940470, 0.260122,
		39.182880, 30.533373, 45.973709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914833, 30.085098, 45.298515>,  <39.336006, 29.875044, 45.791622>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914833, 30.085098, 45.298515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.052555, 30.416677, 45.474831>,  <39.135189, 30.615625, 45.580620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.052555, 30.416677, 45.474831>,  <38.914833, 30.085098, 45.298515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052555, 30.416677, 45.474831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095537, 0.436126, -0.894800,
		-0.933983, 0.350200, 0.070967,
		0.344309, 0.828948, 0.440791,
		39.155849, 30.665361, 45.607067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589184, 30.627787, 44.981327>,  <38.914833, 30.085098, 45.298515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589184, 30.627787, 44.981327> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.916416, 30.797934, 45.136147>,  <39.112755, 30.900021, 45.229038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.916416, 30.797934, 45.136147>,  <38.589184, 30.627787, 44.981327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916416, 30.797934, 45.136147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114087, 0.539603, -0.834154,
		-0.563675, 0.726562, 0.392910,
		0.818080, 0.425366, 0.387052,
		39.161839, 30.925543, 45.252262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576328, 31.364326, 44.768314>,  <38.589184, 30.627787, 44.981327>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576328, 31.364326, 44.768314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955086, 31.263424, 44.848080>,  <39.182339, 31.202883, 44.895939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.955086, 31.263424, 44.848080>,  <38.576328, 31.364326, 44.768314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955086, 31.263424, 44.848080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288658, 0.393554, -0.872807,
		0.141690, 0.884015, 0.445468,
		0.946890, -0.252256, 0.199416,
		39.239151, 31.187748, 44.907906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967945, 31.927498, 44.516544>,  <38.576328, 31.364326, 44.768314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967945, 31.927498, 44.516544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.239273, 31.638783, 44.571541>,  <39.402069, 31.465553, 44.604538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.239273, 31.638783, 44.571541>,  <38.967945, 31.927498, 44.516544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239273, 31.638783, 44.571541> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475489, 0.288551, -0.831053,
		0.560173, 0.629092, 0.538933,
		0.678319, -0.721790, 0.137487,
		39.442768, 31.422245, 44.612785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453766, 32.213596, 44.392910>,  <38.967945, 31.927498, 44.516544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453766, 32.213596, 44.392910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.552509, 31.831329, 44.328716>,  <39.611755, 31.601969, 44.290199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.552509, 31.831329, 44.328716>,  <39.453766, 32.213596, 44.392910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.552509, 31.831329, 44.328716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460321, 0.261377, -0.848402,
		0.852741, 0.135556, 0.504437,
		0.246855, -0.955671, -0.160488,
		39.626564, 31.544628, 44.280571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085007, 32.289536, 44.095581>,  <39.453766, 32.213596, 44.392910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085007, 32.289536, 44.095581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.995121, 31.916025, 43.984184>,  <39.941189, 31.691917, 43.917347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.995121, 31.916025, 43.984184>,  <40.085007, 32.289536, 44.095581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.995121, 31.916025, 43.984184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383712, 0.177916, -0.906152,
		0.895695, -0.310486, 0.318323,
		-0.224712, -0.933780, -0.278496,
		39.927708, 31.635891, 43.900635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570343, 32.635647, 44.421078>,  <40.085007, 32.289536, 44.095581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570343, 32.635647, 44.421078> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644989, 33.027115, 44.455463>,  <40.689777, 33.261993, 44.476093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.644989, 33.027115, 44.455463>,  <40.570343, 32.635647, 44.421078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644989, 33.027115, 44.455463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412718, -0.001307, 0.910858,
		0.891538, -0.205455, 0.403669,
		0.186613, 0.978666, 0.085960,
		40.700974, 33.320713, 44.481251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.143055, 32.714863, 44.976933>,  <40.570343, 32.635647, 44.421078>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.143055, 32.714863, 44.976933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.923466, 33.047085, 44.939388>,  <40.791710, 33.246418, 44.916862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.923466, 33.047085, 44.939388>,  <41.143055, 32.714863, 44.976933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.923466, 33.047085, 44.939388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144595, 0.016236, 0.989358,
		0.823235, 0.556707, 0.111181,
		-0.548977, 0.830550, -0.093863,
		40.758774, 33.296249, 44.911228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.477219, 33.142860, 45.455246>,  <41.143055, 32.714863, 44.976933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.477219, 33.142860, 45.455246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.088440, 33.219212, 45.400276>,  <40.855171, 33.265022, 45.367294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.088440, 33.219212, 45.400276>,  <41.477219, 33.142860, 45.455246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088440, 33.219212, 45.400276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145378, -0.028217, 0.988974,
		0.184899, 0.981207, 0.055175,
		-0.971945, 0.190882, -0.137428,
		40.796856, 33.276478, 45.359047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402805, 33.783993, 45.888081>,  <41.477219, 33.142860, 45.455246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402805, 33.783993, 45.888081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.031689, 33.666988, 45.795433>,  <40.809021, 33.596786, 45.739845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.031689, 33.666988, 45.795433>,  <41.402805, 33.783993, 45.888081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031689, 33.666988, 45.795433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253344, 0.038159, 0.966623,
		-0.273906, 0.955502, -0.109509,
		-0.927789, -0.292508, -0.231619,
		40.753353, 33.579235, 45.725948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.944481, 34.202881, 46.279087>,  <41.402805, 33.783993, 45.888081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.944481, 34.202881, 46.279087> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706284, 33.894569, 46.188496>,  <40.563366, 33.709583, 46.134140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.706284, 33.894569, 46.188496>,  <40.944481, 34.202881, 46.279087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706284, 33.894569, 46.188496> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408062, 0.047369, 0.911725,
		-0.692006, 0.635345, -0.342731,
		-0.595495, -0.770774, -0.226480,
		40.527634, 33.663338, 46.120552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312160, 34.351585, 46.583569>,  <40.944481, 34.202881, 46.279087>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312160, 34.351585, 46.583569> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.282864, 33.957909, 46.519066>,  <40.265285, 33.721703, 46.480366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.282864, 33.957909, 46.519066>,  <40.312160, 34.351585, 46.583569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282864, 33.957909, 46.519066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511762, -0.101694, 0.853087,
		-0.856000, 0.145005, -0.496224,
		-0.073239, -0.984191, -0.161258,
		40.260891, 33.662651, 46.470688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.559616, 34.157124, 46.555508>,  <40.312160, 34.351585, 46.583569>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.559616, 34.157124, 46.555508> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725407, 33.798428, 46.617561>,  <39.824883, 33.583210, 46.654793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.725407, 33.798428, 46.617561>,  <39.559616, 34.157124, 46.555508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725407, 33.798428, 46.617561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648284, -0.171297, 0.741879,
		-0.638696, -0.408068, -0.652340,
		0.414481, -0.896737, 0.155138,
		39.849751, 33.529408, 46.664104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929283, 33.696651, 46.600491>,  <39.559616, 34.157124, 46.555508>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929283, 33.696651, 46.600491> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230988, 33.492165, 46.765293>,  <39.412010, 33.369473, 46.864174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.230988, 33.492165, 46.765293>,  <38.929283, 33.696651, 46.600491>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.230988, 33.492165, 46.765293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601983, -0.287916, 0.744796,
		-0.262128, -0.809791, -0.524907,
		0.754258, -0.511217, 0.412010,
		39.457264, 33.338799, 46.888897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649475, 33.034939, 46.760761>,  <38.929283, 33.696651, 46.600491>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649475, 33.034939, 46.760761> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.967861, 33.091267, 46.996258>,  <39.158894, 33.125065, 47.137554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.967861, 33.091267, 46.996258>,  <38.649475, 33.034939, 46.760761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967861, 33.091267, 46.996258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539128, -0.277380, 0.795237,
		0.275290, -0.950384, -0.144864,
		0.795963, 0.140821, 0.588738,
		39.206650, 33.133514, 47.172878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604988, 32.364830, 47.129303>,  <38.649475, 33.034939, 46.760761>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604988, 32.364830, 47.129303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804916, 32.671906, 47.289722>,  <38.924873, 32.856152, 47.385975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.804916, 32.671906, 47.289722>,  <38.604988, 32.364830, 47.129303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804916, 32.671906, 47.289722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535108, -0.090391, 0.839934,
		0.681055, -0.634421, 0.365615,
		0.499823, 0.767684, 0.401045,
		38.954865, 32.902210, 47.410034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943169, 32.083157, 47.721233>,  <38.604988, 32.364830, 47.129303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943169, 32.083157, 47.721233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912842, 32.471169, 47.813583>,  <38.894646, 32.703976, 47.868992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.912842, 32.471169, 47.813583>,  <38.943169, 32.083157, 47.721233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.912842, 32.471169, 47.813583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137185, -0.239485, 0.961159,
		0.987639, 0.041205, 0.151231,
		-0.075822, 0.970025, 0.230872,
		38.890095, 32.762177, 47.882847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125164, 32.187126, 48.424957>,  <38.943169, 32.083157, 47.721233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125164, 32.187126, 48.424957> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.949596, 32.537632, 48.345444>,  <38.844257, 32.747936, 48.297737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.949596, 32.537632, 48.345444>,  <39.125164, 32.187126, 48.424957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.949596, 32.537632, 48.345444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236136, 0.100966, 0.966460,
		0.866945, 0.471134, 0.162602,
		-0.438915, 0.876264, -0.198783,
		38.817921, 32.800510, 48.285809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365200, 32.578114, 48.926476>,  <39.125164, 32.187126, 48.424957>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365200, 32.578114, 48.926476> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039032, 32.763798, 48.788147>,  <38.843330, 32.875210, 48.705151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.039032, 32.763798, 48.788147>,  <39.365200, 32.578114, 48.926476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039032, 32.763798, 48.788147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308753, 0.156550, 0.938170,
		0.489649, 0.871779, 0.015672,
		-0.815423, 0.464213, -0.345819,
		38.794403, 32.903061, 48.684402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209549, 33.222908, 49.229904>,  <39.365200, 32.578114, 48.926476>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209549, 33.222908, 49.229904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843166, 33.120220, 49.106537>,  <38.623337, 33.058605, 49.032516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.843166, 33.120220, 49.106537>,  <39.209549, 33.222908, 49.229904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843166, 33.120220, 49.106537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362269, 0.198463, 0.910699,
		-0.172588, 0.945889, -0.274786,
		-0.915955, -0.256723, -0.308414,
		38.568378, 33.043205, 49.014011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.596607, 31.638205, 45.414066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.944708, 31.452372, 45.479580>,  <32.153568, 31.340872, 45.518887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.944708, 31.452372, 45.479580>,  <31.596607, 31.638205, 45.414066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944708, 31.452372, 45.479580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385916, 0.436339, -0.812821,
		0.306159, 0.770564, 0.559015,
		0.870251, -0.464585, 0.163784,
		32.205784, 31.312996, 45.528713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105434, 32.147034, 45.298744>,  <31.596607, 31.638205, 45.414066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.105434, 32.147034, 45.298744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292927, 31.794462, 45.275517>,  <32.405422, 31.582918, 45.261581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.292927, 31.794462, 45.275517>,  <32.105434, 32.147034, 45.298744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.292927, 31.794462, 45.275517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532940, 0.334607, -0.777183,
		0.704465, 0.333339, 0.626590,
		0.468727, -0.881432, -0.058069,
		32.433544, 31.530033, 45.258095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815815, 32.323139, 45.294209>,  <32.105434, 32.147034, 45.298744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815815, 32.323139, 45.294209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785690, 31.960716, 45.127644>,  <32.767616, 31.743263, 45.027706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785690, 31.960716, 45.127644>,  <32.815815, 32.323139, 45.294209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785690, 31.960716, 45.127644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489418, 0.330249, -0.807097,
		0.868791, -0.264580, 0.418568,
		-0.075310, -0.906054, -0.416408,
		32.763096, 31.688900, 45.002720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460213, 32.171619, 45.020172>,  <32.815815, 32.323139, 45.294209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460213, 32.171619, 45.020172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202911, 31.932156, 44.829243>,  <33.048531, 31.788477, 44.714687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.202911, 31.932156, 44.829243>,  <33.460213, 32.171619, 45.020172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202911, 31.932156, 44.829243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504064, 0.138137, -0.852548,
		0.576321, -0.789002, 0.212906,
		-0.643252, -0.598660, -0.477319,
		33.009937, 31.752558, 44.686047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846245, 31.809910, 44.546555>,  <33.460213, 32.171619, 45.020172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846245, 31.809910, 44.546555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478889, 31.768150, 44.393890>,  <33.258476, 31.743095, 44.302292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.478889, 31.768150, 44.393890>,  <33.846245, 31.809910, 44.546555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478889, 31.768150, 44.393890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378874, 0.046079, -0.924300,
		0.114084, -0.993468, -0.002763,
		-0.918390, -0.104401, -0.381656,
		33.203373, 31.736832, 44.279392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018398, 31.446772, 44.001446>,  <33.846245, 31.809910, 44.546555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018398, 31.446772, 44.001446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660408, 31.596556, 43.904446>,  <33.445614, 31.686426, 43.846245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660408, 31.596556, 43.904446>,  <34.018398, 31.446772, 44.001446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660408, 31.596556, 43.904446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364862, 0.301595, -0.880861,
		-0.256710, -0.876824, -0.406545,
		-0.894972, 0.374459, -0.242497,
		33.391914, 31.708893, 43.831696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872364, 31.256191, 43.369514>,  <34.018398, 31.446772, 44.001446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872364, 31.256191, 43.369514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624493, 31.566109, 43.419617>,  <33.475769, 31.752060, 43.449677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.624493, 31.566109, 43.419617>,  <33.872364, 31.256191, 43.369514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624493, 31.566109, 43.419617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276996, 0.365220, -0.888756,
		-0.734349, -0.516050, -0.440935,
		-0.619681, 0.774794, 0.125255,
		33.438587, 31.798548, 43.457191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.670906, 31.413465, 42.642445>,  <33.872364, 31.256191, 43.369514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.670906, 31.413465, 42.642445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530663, 31.729290, 42.843906>,  <33.446518, 31.918785, 42.964783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530663, 31.729290, 42.843906>,  <33.670906, 31.413465, 42.642445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530663, 31.729290, 42.843906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223511, 0.592796, -0.773716,
		-0.909459, -0.158700, -0.384315,
		-0.350609, 0.789561, 0.503652,
		33.425480, 31.966158, 42.995003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108849, 31.711153, 42.235729>,  <33.670906, 31.413465, 42.642445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108849, 31.711153, 42.235729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271450, 31.996284, 42.464336>,  <33.369011, 32.167362, 42.601501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271450, 31.996284, 42.464336>,  <33.108849, 31.711153, 42.235729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271450, 31.996284, 42.464336> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310040, 0.480796, -0.820189,
		-0.859438, 0.510600, -0.025562,
		0.406499, 0.712827, 0.571521,
		33.393398, 32.210133, 42.635792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971577, 32.333012, 41.843868>,  <33.108849, 31.711153, 42.235729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971577, 32.333012, 41.843868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259396, 32.441563, 42.099556>,  <33.432087, 32.506695, 42.252968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.259396, 32.441563, 42.099556>,  <32.971577, 32.333012, 41.843868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.259396, 32.441563, 42.099556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423509, 0.558009, -0.713629,
		-0.550355, 0.784207, 0.286583,
		0.719548, 0.271378, 0.639221,
		33.475262, 32.522976, 42.291321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977997, 33.078327, 41.788200>,  <32.971577, 32.333012, 41.843868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977997, 33.078327, 41.788200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327766, 32.988682, 41.960320>,  <33.537628, 32.934895, 42.063591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.327766, 32.988682, 41.960320>,  <32.977997, 33.078327, 41.788200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.327766, 32.988682, 41.960320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451033, 0.702290, -0.550779,
		-0.178754, 0.675692, 0.715183,
		0.874423, -0.224118, 0.430297,
		33.590092, 32.921448, 42.089409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.231159, 33.677612, 42.036495>,  <32.977997, 33.078327, 41.788200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.231159, 33.677612, 42.036495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551620, 33.449692, 41.963306>,  <33.743896, 33.312939, 41.919392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551620, 33.449692, 41.963306>,  <33.231159, 33.677612, 42.036495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551620, 33.449692, 41.963306> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291989, 0.639051, -0.711587,
		0.522390, 0.516666, 0.678355,
		0.801156, -0.569798, -0.182973,
		33.791969, 33.278751, 41.908413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.710789, 34.119289, 41.884743>,  <33.231159, 33.677612, 42.036495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.710789, 34.119289, 41.884743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.911880, 33.797047, 41.759354>,  <34.032536, 33.603703, 41.684120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.911880, 33.797047, 41.759354>,  <33.710789, 34.119289, 41.884743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911880, 33.797047, 41.759354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273456, 0.492212, -0.826407,
		0.820052, 0.329737, 0.467747,
		0.502728, -0.805606, -0.313471,
		34.062698, 33.555367, 41.665314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.401066, 34.342861, 41.748772>,  <33.710789, 34.119289, 41.884743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.401066, 34.342861, 41.748772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353855, 34.009586, 41.532677>,  <34.325527, 33.809620, 41.403019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.353855, 34.009586, 41.532677>,  <34.401066, 34.342861, 41.748772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353855, 34.009586, 41.532677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354128, 0.472956, -0.806788,
		0.927719, -0.286539, 0.239235,
		-0.118028, -0.833192, -0.540241,
		34.318447, 33.759628, 41.370605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.951481, 34.568623, 42.198544>,  <34.401066, 34.342861, 41.748772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.951481, 34.568623, 42.198544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.046852, 34.921841, 42.360229>,  <35.104073, 35.133770, 42.457241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.046852, 34.921841, 42.360229>,  <34.951481, 34.568623, 42.198544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046852, 34.921841, 42.360229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537283, -0.226779, 0.812341,
		0.809000, -0.410858, 0.420375,
		0.238425, 0.883044, 0.404211,
		35.118378, 35.186752, 42.481491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047832, 34.373638, 42.970684>,  <34.951481, 34.568623, 42.198544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047832, 34.373638, 42.970684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993881, 34.767517, 42.926540>,  <34.961510, 35.003845, 42.900055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993881, 34.767517, 42.926540>,  <35.047832, 34.373638, 42.970684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993881, 34.767517, 42.926540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499278, 0.028665, 0.865968,
		0.855880, 0.171896, 0.487772,
		-0.134874, 0.984698, -0.110358,
		34.953419, 35.062927, 42.893433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379452, 34.736984, 43.529984>,  <35.047832, 34.373638, 42.970684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379452, 34.736984, 43.529984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086308, 34.978970, 43.405445>,  <34.910423, 35.124161, 43.330723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.086308, 34.978970, 43.405445>,  <35.379452, 34.736984, 43.529984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086308, 34.978970, 43.405445> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354858, 0.050575, 0.933551,
		0.580514, 0.794643, 0.177614,
		-0.732857, 0.604967, -0.311345,
		34.866451, 35.160461, 43.312042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369045, 35.273308, 44.079334>,  <35.379452, 34.736984, 43.529984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369045, 35.273308, 44.079334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026825, 35.298641, 43.873802>,  <34.821491, 35.313839, 43.750484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.026825, 35.298641, 43.873802>,  <35.369045, 35.273308, 44.079334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026825, 35.298641, 43.873802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502388, 0.138165, 0.853532,
		0.125048, 0.988382, -0.086390,
		-0.855552, 0.063331, -0.513829,
		34.770161, 35.317642, 43.719654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040878, 35.825302, 44.349319>,  <35.369045, 35.273308, 44.079334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040878, 35.825302, 44.349319> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.750134, 35.618149, 44.168888>,  <34.575687, 35.493858, 44.060631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.750134, 35.618149, 44.168888>,  <35.040878, 35.825302, 44.349319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750134, 35.618149, 44.168888> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594923, 0.146654, 0.790291,
		-0.343123, 0.842789, -0.414696,
		-0.726866, -0.517879, -0.451074,
		34.532074, 35.462784, 44.033566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496677, 36.083881, 44.673847>,  <35.040878, 35.825302, 44.349319>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496677, 36.083881, 44.673847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358349, 35.750637, 44.501179>,  <34.275352, 35.550690, 44.397579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.358349, 35.750637, 44.501179>,  <34.496677, 36.083881, 44.673847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358349, 35.750637, 44.501179> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688687, -0.087091, 0.719810,
		-0.637273, 0.546211, -0.543632,
		-0.345823, -0.833108, -0.431669,
		34.254601, 35.500706, 44.371677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677185, 36.040733, 44.703182>,  <34.496677, 36.083881, 44.673847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677185, 36.040733, 44.703182> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814877, 35.668758, 44.651463>,  <33.897491, 35.445572, 44.620430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.814877, 35.668758, 44.651463>,  <33.677185, 36.040733, 44.703182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814877, 35.668758, 44.651463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497769, -0.297525, 0.814681,
		-0.796073, -0.216077, -0.565312,
		0.344229, -0.929941, -0.129295,
		33.918144, 35.389774, 44.612675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105637, 35.664494, 44.864716>,  <33.677185, 36.040733, 44.703182>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105637, 35.664494, 44.864716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412865, 35.409962, 44.893425>,  <33.597202, 35.257240, 44.910652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.412865, 35.409962, 44.893425>,  <33.105637, 35.664494, 44.864716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.412865, 35.409962, 44.893425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500653, -0.526817, 0.686885,
		-0.399274, -0.563510, -0.723213,
		0.768067, -0.636334, 0.071778,
		33.643284, 35.219063, 44.914959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.817440, 34.983707, 44.956905>,  <33.105637, 35.664494, 44.864716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.817440, 34.983707, 44.956905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195534, 34.948498, 45.082626>,  <33.422390, 34.927372, 45.158058>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195534, 34.948498, 45.082626>,  <32.817440, 34.983707, 44.956905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195534, 34.948498, 45.082626> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317030, -0.476596, 0.819968,
		0.077622, -0.874705, -0.478399,
		0.945234, -0.088020, 0.314302,
		33.479103, 34.922092, 45.176918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799450, 34.286652, 45.208603>,  <32.817440, 34.983707, 44.956905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799450, 34.286652, 45.208603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115269, 34.469658, 45.372211>,  <33.304760, 34.579460, 45.470375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.115269, 34.469658, 45.372211>,  <32.799450, 34.286652, 45.208603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115269, 34.469658, 45.372211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179939, -0.464610, 0.867041,
		0.586721, -0.758166, -0.284505,
		0.789545, 0.457517, 0.409020,
		33.352131, 34.606915, 45.494919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.259819, 33.778141, 45.516254>,  <32.799450, 34.286652, 45.208603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.259819, 33.778141, 45.516254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332237, 34.130306, 45.691566>,  <33.375687, 34.341606, 45.796753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.332237, 34.130306, 45.691566>,  <33.259819, 33.778141, 45.516254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.332237, 34.130306, 45.691566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001153, -0.445455, 0.895303,
		0.983475, -0.162593, -0.079631,
		0.181042, 0.880416, 0.438282,
		33.386551, 34.394432, 45.823051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742275, 33.551491, 46.076183>,  <33.259819, 33.778141, 45.516254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742275, 33.551491, 46.076183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581596, 33.899364, 46.190929>,  <33.485188, 34.108089, 46.259777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.581596, 33.899364, 46.190929>,  <33.742275, 33.551491, 46.076183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581596, 33.899364, 46.190929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059920, -0.337536, 0.939404,
		0.913810, 0.360167, 0.187699,
		-0.401698, 0.869683, 0.286863,
		33.461086, 34.160271, 46.276989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095543, 33.728642, 46.695591>,  <33.742275, 33.551491, 46.076183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095543, 33.728642, 46.695591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.755405, 33.939125, 46.697247>,  <33.551323, 34.065414, 46.698238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.755405, 33.939125, 46.697247>,  <34.095543, 33.728642, 46.695591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755405, 33.939125, 46.697247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236558, -0.389274, 0.890228,
		0.470059, 0.756021, 0.455496,
		-0.850344, 0.526211, 0.004139,
		33.500301, 34.096989, 46.698490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.118221, 34.261497, 47.200871>,  <34.095543, 33.728642, 46.695591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.118221, 34.261497, 47.200871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743755, 34.133671, 47.142250>,  <33.519077, 34.056976, 47.107079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.743755, 34.133671, 47.142250>,  <34.118221, 34.261497, 47.200871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743755, 34.133671, 47.142250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044053, -0.306942, 0.950708,
		-0.348793, 0.896474, 0.273271,
		-0.936164, -0.319562, -0.146551,
		33.462906, 34.037804, 47.098286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276413, 35.007050, 47.334003>,  <34.118221, 34.261497, 47.200871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276413, 35.007050, 47.334003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582176, 35.100815, 47.574245>,  <34.765636, 35.157074, 47.718391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.582176, 35.100815, 47.574245>,  <34.276413, 35.007050, 47.334003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582176, 35.100815, 47.574245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505298, 0.360766, -0.783914,
		-0.400437, 0.902718, 0.157325,
		0.764411, 0.234412, 0.600605,
		34.811501, 35.171139, 47.754429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336624, 35.735008, 47.258034>,  <34.276413, 35.007050, 47.334003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336624, 35.735008, 47.258034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691021, 35.586262, 47.368835>,  <34.903660, 35.497013, 47.435314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691021, 35.586262, 47.368835>,  <34.336624, 35.735008, 47.258034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691021, 35.586262, 47.368835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432174, 0.445730, -0.783933,
		0.168051, 0.814272, 0.555625,
		0.885994, -0.371867, 0.277002,
		34.956818, 35.474701, 47.451935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808510, 36.216953, 47.238995>,  <34.336624, 35.735008, 47.258034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808510, 36.216953, 47.238995> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041328, 35.896549, 47.182987>,  <35.181019, 35.704308, 47.149384>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.041328, 35.896549, 47.182987>,  <34.808510, 36.216953, 47.238995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041328, 35.896549, 47.182987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535562, 0.507191, -0.675226,
		0.611882, 0.318020, 0.724199,
		0.582042, -0.801012, -0.140022,
		35.215942, 35.656246, 47.140980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398922, 36.470467, 47.170567>,  <34.808510, 36.216953, 47.238995>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398922, 36.470467, 47.170567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.488487, 36.105820, 47.032692>,  <35.542225, 35.887032, 46.949966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.488487, 36.105820, 47.032692>,  <35.398922, 36.470467, 47.170567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488487, 36.105820, 47.032692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732393, 0.390728, -0.557613,
		0.643011, -0.127589, 0.755154,
		0.223915, -0.911621, -0.344688,
		35.555660, 35.832333, 46.929287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109402, 36.336853, 47.229683>,  <35.398922, 36.470467, 47.170567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109402, 36.336853, 47.229683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.987453, 36.079620, 46.948685>,  <35.914284, 35.925282, 46.780087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.987453, 36.079620, 46.948685>,  <36.109402, 36.336853, 47.229683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987453, 36.079620, 46.948685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751801, 0.290324, -0.592036,
		0.584680, -0.708630, 0.394960,
		-0.304868, -0.643083, -0.702495,
		35.895992, 35.886696, 46.737938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744537, 36.083763, 46.960125>,  <36.109402, 36.336853, 47.229683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744537, 36.083763, 46.960125> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.470470, 36.015228, 46.676945>,  <36.306030, 35.974106, 46.507038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.470470, 36.015228, 46.676945>,  <36.744537, 36.083763, 46.960125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.470470, 36.015228, 46.676945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691327, 0.153112, -0.706133,
		0.229386, -0.973241, 0.013546,
		-0.685163, -0.171342, -0.707950,
		36.264923, 35.963825, 46.464561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.136005, 35.712074, 46.566498>,  <36.744537, 36.083763, 46.960125>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.136005, 35.712074, 46.566498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813728, 35.819923, 46.355534>,  <36.620361, 35.884632, 46.228954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813728, 35.819923, 46.355534>,  <37.136005, 35.712074, 46.566498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813728, 35.819923, 46.355534> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553818, 0.027059, -0.832198,
		-0.210109, -0.962585, -0.171124,
		-0.805692, 0.269624, -0.527412,
		36.572021, 35.900810, 46.197311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083488, 35.238506, 46.048264>,  <37.136005, 35.712074, 46.566498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083488, 35.238506, 46.048264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.895519, 35.571438, 45.930683>,  <36.782738, 35.771194, 45.860134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.895519, 35.571438, 45.930683>,  <37.083488, 35.238506, 46.048264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895519, 35.571438, 45.930683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583646, 0.043156, -0.810861,
		-0.662214, -0.552606, -0.506063,
		-0.469926, 0.832325, -0.293948,
		36.754543, 35.821136, 45.842499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099586, 35.141731, 45.265575>,  <37.083488, 35.238506, 46.048264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099586, 35.141731, 45.265575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052410, 35.525150, 45.369328>,  <37.024105, 35.755199, 45.431580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052410, 35.525150, 45.369328>,  <37.099586, 35.141731, 45.265575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052410, 35.525150, 45.369328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499289, 0.283029, -0.818905,
		-0.858371, 0.032928, -0.511971,
		-0.117938, 0.958546, 0.259385,
		37.017029, 35.812714, 45.447144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856159, 35.508091, 44.706615>,  <37.099586, 35.141731, 45.265575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856159, 35.508091, 44.706615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048943, 35.771488, 44.937820>,  <37.164612, 35.929527, 45.076542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.048943, 35.771488, 44.937820>,  <36.856159, 35.508091, 44.706615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048943, 35.771488, 44.937820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419649, 0.405620, -0.812014,
		-0.769162, 0.633919, -0.080846,
		0.481958, 0.658497, 0.578011,
		37.193531, 35.969036, 45.111225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846783, 36.128410, 44.288296>,  <36.856159, 35.508091, 44.706615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846783, 36.128410, 44.288296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147079, 36.143154, 44.552124>,  <37.327255, 36.152000, 44.710423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.147079, 36.143154, 44.552124>,  <36.846783, 36.128410, 44.288296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147079, 36.143154, 44.552124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602835, 0.370088, -0.706841,
		-0.270152, 0.928265, 0.255620,
		0.750738, 0.036858, 0.659571,
		37.372299, 36.154213, 44.749996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.332150, 36.602695, 44.064480>,  <36.846783, 36.128410, 44.288296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.332150, 36.602695, 44.064480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557095, 36.391632, 44.319141>,  <37.692062, 36.264996, 44.471939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.557095, 36.391632, 44.319141>,  <37.332150, 36.602695, 44.064480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557095, 36.391632, 44.319141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755855, 0.015814, -0.654548,
		0.335308, 0.849311, 0.407725,
		0.562363, -0.527656, 0.636653,
		37.725803, 36.233334, 44.510136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960190, 36.968723, 44.062168>,  <37.332150, 36.602695, 44.064480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960190, 36.968723, 44.062168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034550, 36.594730, 44.183002>,  <38.079166, 36.370335, 44.255505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.034550, 36.594730, 44.183002>,  <37.960190, 36.968723, 44.062168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.034550, 36.594730, 44.183002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798187, -0.035590, -0.601357,
		0.573007, 0.352916, 0.739671,
		0.185904, -0.934978, 0.302086,
		38.090321, 36.314236, 44.273628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624805, 37.058846, 44.331005>,  <37.960190, 36.968723, 44.062168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624805, 37.058846, 44.331005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545040, 36.673878, 44.257263>,  <38.497181, 36.442898, 44.213017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.545040, 36.673878, 44.257263>,  <38.624805, 37.058846, 44.331005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545040, 36.673878, 44.257263> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788450, -0.045870, -0.613385,
		0.581876, -0.267676, 0.767965,
		-0.199416, -0.962416, -0.184358,
		38.485214, 36.385151, 44.201954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.536886, 33.609589, 42.861084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.187492, 33.627628, 42.667183>,  <24.977856, 33.638454, 42.550842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.187492, 33.627628, 42.667183>,  <25.536886, 33.609589, 42.861084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187492, 33.627628, 42.667183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486838, 0.074371, -0.870320,
		-0.003205, -0.996210, -0.086921,
		-0.873486, 0.045106, -0.484755,
		24.925446, 33.641159, 42.521755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698973, 33.295383, 42.241978>,  <25.536886, 33.609589, 42.861084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698973, 33.295383, 42.241978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.349781, 33.475773, 42.167645>,  <25.140266, 33.584007, 42.123043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.349781, 33.475773, 42.167645>,  <25.698973, 33.295383, 42.241978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349781, 33.475773, 42.167645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264045, 0.116592, -0.957437,
		-0.410108, -0.884891, -0.220859,
		-0.872979, 0.450969, -0.185836,
		25.087887, 33.611065, 42.111893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.440195, 32.945724, 41.623295>,  <25.698973, 33.295383, 42.241978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.440195, 32.945724, 41.623295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.257221, 33.300446, 41.649605>,  <25.147436, 33.513279, 41.665390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.257221, 33.300446, 41.649605>,  <25.440195, 32.945724, 41.623295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.257221, 33.300446, 41.649605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139681, 0.144701, -0.979567,
		-0.878204, -0.438902, -0.190061,
		-0.457436, 0.886807, 0.065771,
		25.119991, 33.566486, 41.669334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.763079, 33.019009, 41.254658>,  <25.440195, 32.945724, 41.623295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.763079, 33.019009, 41.254658> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.919931, 33.386108, 41.279877>,  <25.014044, 33.606369, 41.295010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.919931, 33.386108, 41.279877>,  <24.763079, 33.019009, 41.254658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.919931, 33.386108, 41.279877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101865, 0.024797, -0.994489,
		-0.914252, 0.396394, -0.083762,
		0.392132, 0.917746, 0.063049,
		25.037571, 33.661430, 41.298790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.405863, 33.503212, 40.735760>,  <24.763079, 33.019009, 41.254658>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.405863, 33.503212, 40.735760> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.750586, 33.691982, 40.810139>,  <24.957418, 33.805244, 40.854767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.750586, 33.691982, 40.810139>,  <24.405863, 33.503212, 40.735760>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.750586, 33.691982, 40.810139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144213, 0.123496, -0.981810,
		-0.486307, 0.872945, 0.038372,
		0.861805, 0.471928, 0.185947,
		25.009127, 33.833561, 40.865921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.430969, 34.124737, 40.463547>,  <24.405863, 33.503212, 40.735760>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.430969, 34.124737, 40.463547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.826696, 34.082340, 40.503582>,  <25.064133, 34.056900, 40.527603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.826696, 34.082340, 40.503582>,  <24.430969, 34.124737, 40.463547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.826696, 34.082340, 40.503582> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127849, 0.300882, -0.945053,
		0.070056, 0.947753, 0.311218,
		0.989316, -0.105996, 0.100090,
		25.123491, 34.050541, 40.533607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.821890, 34.660992, 40.004074>,  <24.430969, 34.124737, 40.463547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.821890, 34.660992, 40.004074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.128040, 34.415390, 40.081223>,  <25.311729, 34.268028, 40.127510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.128040, 34.415390, 40.081223>,  <24.821890, 34.660992, 40.004074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128040, 34.415390, 40.081223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392624, 0.208014, -0.895866,
		0.509948, 0.761398, 0.400283,
		0.765375, -0.614006, 0.192867,
		25.357653, 34.231190, 40.139084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546684, 34.960445, 39.776039>,  <24.821890, 34.660992, 40.004074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546684, 34.960445, 39.776039> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629307, 34.569107, 39.781277>,  <25.678881, 34.334305, 39.784420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.629307, 34.569107, 39.781277>,  <25.546684, 34.960445, 39.776039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.629307, 34.569107, 39.781277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231519, 0.035865, -0.972169,
		0.950649, 0.203841, 0.233914,
		0.206557, -0.978347, 0.013098,
		25.691275, 34.275604, 39.785206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.280193, 34.910862, 39.464710>,  <25.546684, 34.960445, 39.776039>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.280193, 34.910862, 39.464710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098513, 34.556015, 39.431919>,  <25.989504, 34.343105, 39.412243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.098513, 34.556015, 39.431919>,  <26.280193, 34.910862, 39.464710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.098513, 34.556015, 39.431919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278648, -0.054058, -0.958871,
		0.846200, -0.458366, 0.271747,
		-0.454204, -0.887118, -0.081979,
		25.962252, 34.289879, 39.407326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.773762, 34.461292, 39.022343>,  <26.280193, 34.910862, 39.464710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.773762, 34.461292, 39.022343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.422998, 34.269405, 39.010353>,  <26.212540, 34.154274, 39.003159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.422998, 34.269405, 39.010353>,  <26.773762, 34.461292, 39.022343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.422998, 34.269405, 39.010353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144005, -0.202723, -0.968590,
		0.458575, -0.853682, 0.246852,
		-0.876910, -0.479719, -0.029971,
		26.159925, 34.125488, 39.001362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.930950, 33.776909, 38.786434>,  <26.773762, 34.461292, 39.022343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.930950, 33.776909, 38.786434> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546286, 33.849365, 38.704079>,  <26.315487, 33.892841, 38.654667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.546286, 33.849365, 38.704079>,  <26.930950, 33.776909, 38.786434>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546286, 33.849365, 38.704079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197460, -0.063602, -0.978246,
		-0.190300, -0.981398, 0.025395,
		-0.961663, 0.181146, -0.205890,
		26.257786, 33.903709, 38.642311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.569580, 33.187794, 38.360954>,  <26.930950, 33.776909, 38.786434>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.569580, 33.187794, 38.360954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.385054, 33.537949, 38.303154>,  <26.274338, 33.748043, 38.268475>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.385054, 33.537949, 38.303154>,  <26.569580, 33.187794, 38.360954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385054, 33.537949, 38.303154> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039617, -0.142383, -0.989019,
		-0.886351, -0.461975, 0.031003,
		-0.461317, 0.875389, -0.144503,
		26.246658, 33.800564, 38.259804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.102980, 32.928062, 37.818748>,  <26.569580, 33.187794, 38.360954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.102980, 32.928062, 37.818748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075886, 33.326881, 37.833237>,  <26.059629, 33.566174, 37.841930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.075886, 33.326881, 37.833237>,  <26.102980, 32.928062, 37.818748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.075886, 33.326881, 37.833237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067564, 0.040806, -0.996880,
		-0.995413, -0.065075, -0.070129,
		-0.067734, 0.997046, 0.036222,
		26.055565, 33.625996, 37.844105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.529711, 33.020168, 37.360771>,  <26.102980, 32.928062, 37.818748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.529711, 33.020168, 37.360771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.718334, 33.370018, 37.405800>,  <25.831509, 33.579926, 37.432816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.718334, 33.370018, 37.405800>,  <25.529711, 33.020168, 37.360771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.718334, 33.370018, 37.405800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066504, 0.092019, -0.993534,
		-0.879323, 0.475997, -0.014773,
		0.471560, 0.874620, 0.112570,
		25.859802, 33.632404, 37.439571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.224884, 33.472275, 36.971764>,  <25.529711, 33.020168, 37.360771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.224884, 33.472275, 36.971764> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.587975, 33.637936, 36.998634>,  <25.805828, 33.737331, 37.014755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.587975, 33.637936, 36.998634>,  <25.224884, 33.472275, 36.971764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.587975, 33.637936, 36.998634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061625, 0.026767, -0.997740,
		-0.415012, 0.909815, -0.001225,
		0.907727, 0.414150, 0.067176,
		25.860292, 33.762180, 37.018787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.245993, 33.979767, 36.496685>,  <25.224884, 33.472275, 36.971764>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.245993, 33.979767, 36.496685> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.634357, 33.923328, 36.574066>,  <25.867376, 33.889465, 36.620495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.634357, 33.923328, 36.574066>,  <25.245993, 33.979767, 36.496685>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.634357, 33.923328, 36.574066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218625, 0.192892, -0.956554,
		0.097646, 0.971023, 0.218127,
		0.970911, -0.141092, 0.193454,
		25.925631, 33.881001, 36.632103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.521282, 34.507332, 36.015247>,  <25.245993, 33.979767, 36.496685>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.521282, 34.507332, 36.015247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.814247, 34.264420, 36.138393>,  <25.990026, 34.118671, 36.212280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.814247, 34.264420, 36.138393>,  <25.521282, 34.507332, 36.015247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.814247, 34.264420, 36.138393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379978, -0.010629, -0.924934,
		0.564970, 0.794414, 0.222969,
		0.732411, -0.607284, 0.307865,
		26.033970, 34.082233, 36.230755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135857, 34.835121, 35.964809>,  <25.521282, 34.507332, 36.015247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135857, 34.835121, 35.964809> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.243452, 34.450134, 35.950344>,  <26.308008, 34.219143, 35.941666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.243452, 34.450134, 35.950344>,  <26.135857, 34.835121, 35.964809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243452, 34.450134, 35.950344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336729, 0.129150, -0.932703,
		0.902364, 0.238708, 0.358829,
		0.268987, -0.962465, -0.036161,
		26.324148, 34.161396, 35.939495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786663, 34.881088, 35.781986>,  <26.135857, 34.835121, 35.964809>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786663, 34.881088, 35.781986> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676474, 34.514568, 35.665707>,  <26.610359, 34.294655, 35.595940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.676474, 34.514568, 35.665707>,  <26.786663, 34.881088, 35.781986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676474, 34.514568, 35.665707> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322982, 0.196598, -0.925760,
		0.905426, -0.348914, 0.241792,
		-0.275475, -0.916301, -0.290698,
		26.593832, 34.239677, 35.578499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.301720, 34.698669, 35.435215>,  <26.786663, 34.881088, 35.781986>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.301720, 34.698669, 35.435215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011877, 34.442993, 35.332157>,  <26.837973, 34.289585, 35.270321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.011877, 34.442993, 35.332157>,  <27.301720, 34.698669, 35.435215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.011877, 34.442993, 35.332157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406675, -0.094764, -0.908645,
		0.556384, -0.763186, 0.328610,
		-0.724605, -0.639193, -0.257643,
		26.794495, 34.251236, 35.254864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608572, 34.033298, 35.195210>,  <27.301720, 34.698669, 35.435215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608572, 34.033298, 35.195210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239204, 34.061405, 35.044289>,  <27.017584, 34.078270, 34.953735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.239204, 34.061405, 35.044289>,  <27.608572, 34.033298, 35.195210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.239204, 34.061405, 35.044289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380189, 0.033144, -0.924315,
		-0.052447, -0.996977, -0.057322,
		-0.923420, 0.070270, -0.377302,
		26.962179, 34.082485, 34.931099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298876, 33.887341, 35.369102>,  <27.608572, 34.033298, 35.195210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298876, 33.887341, 35.369102> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572866, 34.173721, 35.423096>,  <28.737261, 34.345551, 35.455490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.572866, 34.173721, 35.423096>,  <28.298876, 33.887341, 35.369102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572866, 34.173721, 35.423096> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293369, -0.440631, 0.848398,
		0.666888, -0.541534, -0.511861,
		0.684978, 0.715951, 0.134982,
		28.778360, 34.388508, 35.463589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.036270, 33.530685, 35.443066>,  <28.298876, 33.887341, 35.369102>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.036270, 33.530685, 35.443066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048595, 33.883247, 35.631607>,  <29.055990, 34.094784, 35.744732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048595, 33.883247, 35.631607>,  <29.036270, 33.530685, 35.443066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048595, 33.883247, 35.631607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312515, -0.456428, 0.833071,
		0.949413, 0.121634, -0.289518,
		0.030814, 0.881407, 0.471351,
		29.057840, 34.147671, 35.773014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731054, 33.502110, 35.823528>,  <29.036270, 33.530685, 35.443066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731054, 33.502110, 35.823528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534811, 33.800850, 36.003094>,  <29.417065, 33.980095, 36.110832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534811, 33.800850, 36.003094>,  <29.731054, 33.502110, 35.823528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534811, 33.800850, 36.003094> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389502, -0.272881, 0.879673,
		0.779482, 0.606426, -0.157021,
		-0.490608, 0.746849, 0.448910,
		29.387629, 34.024906, 36.137768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.186148, 33.673038, 36.377823>,  <29.731054, 33.502110, 35.823528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.186148, 33.673038, 36.377823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832951, 33.812218, 36.503841>,  <29.621033, 33.895725, 36.579453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832951, 33.812218, 36.503841>,  <30.186148, 33.673038, 36.377823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832951, 33.812218, 36.503841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192840, -0.343012, 0.919323,
		0.427945, 0.872509, 0.235778,
		-0.882993, 0.347952, 0.315045,
		29.568052, 33.916603, 36.598354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366428, 33.904896, 37.023674>,  <30.186148, 33.673038, 36.377823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366428, 33.904896, 37.023674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968836, 33.862442, 37.012791>,  <29.730280, 33.836967, 37.006260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.968836, 33.862442, 37.012791>,  <30.366428, 33.904896, 37.023674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968836, 33.862442, 37.012791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014292, -0.371789, 0.928207,
		-0.108634, 0.922230, 0.371068,
		-0.993979, -0.106138, -0.027208,
		29.670643, 33.830601, 37.004627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084091, 34.127792, 37.655479>,  <30.366428, 33.904896, 37.023674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084091, 34.127792, 37.655479> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794987, 33.888992, 37.516216>,  <29.621525, 33.745712, 37.432659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.794987, 33.888992, 37.516216>,  <30.084091, 34.127792, 37.655479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.794987, 33.888992, 37.516216> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130334, -0.376988, 0.917002,
		-0.678698, 0.708149, 0.194663,
		-0.722760, -0.596996, -0.348156,
		29.578159, 33.709892, 37.411770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683977, 34.252808, 38.193817>,  <30.084091, 34.127792, 37.655479>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683977, 34.252808, 38.193817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548321, 33.924095, 38.010662>,  <29.466927, 33.726868, 37.900768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.548321, 33.924095, 38.010662>,  <29.683977, 34.252808, 38.193817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548321, 33.924095, 38.010662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213789, -0.406667, 0.888209,
		-0.916121, 0.399118, -0.037771,
		-0.339140, -0.821783, -0.457884,
		29.446579, 33.677559, 37.873299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051369, 34.213619, 38.426441>,  <29.683977, 34.252808, 38.193817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051369, 34.213619, 38.426441> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150576, 33.843475, 38.311760>,  <29.210100, 33.621387, 38.242950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.150576, 33.843475, 38.311760>,  <29.051369, 34.213619, 38.426441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150576, 33.843475, 38.311760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243729, -0.346035, 0.906011,
		-0.937595, -0.154827, -0.311358,
		0.248016, -0.925359, -0.286705,
		29.224981, 33.565868, 38.225750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.515444, 33.734871, 38.672752>,  <29.051369, 34.213619, 38.426441>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.515444, 33.734871, 38.672752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814764, 33.482101, 38.592041>,  <28.994356, 33.330441, 38.543613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.814764, 33.482101, 38.592041>,  <28.515444, 33.734871, 38.672752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.814764, 33.482101, 38.592041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291699, -0.586652, 0.755481,
		-0.595800, -0.506453, -0.623320,
		0.748287, -0.631937, -0.201796,
		29.039253, 33.292522, 38.531506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188143, 33.171177, 38.616962>,  <28.515444, 33.734871, 38.672752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188143, 33.171177, 38.616962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569525, 33.060757, 38.665489>,  <28.798353, 32.994503, 38.694607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.569525, 33.060757, 38.665489>,  <28.188143, 33.171177, 38.616962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569525, 33.060757, 38.665489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283985, -0.686810, 0.669063,
		-0.101372, -0.672374, -0.733237,
		0.953455, -0.276053, 0.121320,
		28.855560, 32.977940, 38.701885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124224, 32.443562, 38.809422>,  <28.188143, 33.171177, 38.616962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124224, 32.443562, 38.809422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501909, 32.521687, 38.915489>,  <28.728521, 32.568562, 38.979130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.501909, 32.521687, 38.915489>,  <28.124224, 32.443562, 38.809422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501909, 32.521687, 38.915489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009566, -0.821091, 0.570717,
		0.329191, -0.536343, -0.777155,
		0.944215, 0.195309, 0.265165,
		28.785173, 32.580280, 38.995037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395849, 31.872456, 38.820953>,  <28.124224, 32.443562, 38.809422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.395849, 31.872456, 38.820953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643923, 32.084293, 39.052437>,  <28.792767, 32.211395, 39.191326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.643923, 32.084293, 39.052437>,  <28.395849, 31.872456, 38.820953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.643923, 32.084293, 39.052437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119255, -0.665489, 0.736819,
		0.775338, -0.525978, -0.349570,
		0.620186, 0.529596, 0.578704,
		28.829979, 32.243172, 39.226048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.004665, 31.479746, 39.086464>,  <28.395849, 31.872456, 38.820953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.004665, 31.479746, 39.086464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928265, 31.778496, 39.341240>,  <28.882423, 31.957747, 39.494106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.928265, 31.778496, 39.341240>,  <29.004665, 31.479746, 39.086464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.928265, 31.778496, 39.341240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218949, -0.664955, 0.714070,
		0.956859, -0.003067, 0.290537,
		-0.191004, 0.746877, 0.636940,
		28.870964, 32.002560, 39.532322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.434507, 31.279718, 39.638302>,  <29.004665, 31.479746, 39.086464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.434507, 31.279718, 39.638302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184076, 31.550581, 39.792953>,  <29.033817, 31.713099, 39.885746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184076, 31.550581, 39.792953>,  <29.434507, 31.279718, 39.638302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184076, 31.550581, 39.792953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032140, -0.473002, 0.880475,
		0.779098, 0.563673, 0.274372,
		-0.626078, 0.677158, 0.386631,
		28.996252, 31.753729, 39.908943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.497772, 31.224968, 40.365673>,  <29.434507, 31.279718, 39.638302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.497772, 31.224968, 40.365673> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172686, 31.457876, 40.357170>,  <28.977634, 31.597622, 40.352066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172686, 31.457876, 40.357170>,  <29.497772, 31.224968, 40.365673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172686, 31.457876, 40.357170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236905, -0.296886, 0.925059,
		0.532324, 0.756847, 0.379227,
		-0.812716, 0.582272, -0.021261,
		28.928871, 31.632559, 40.350792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350557, 31.485325, 41.083900>,  <29.497772, 31.224968, 40.365673>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350557, 31.485325, 41.083900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006327, 31.529297, 40.884975>,  <28.799788, 31.555679, 40.765621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.006327, 31.529297, 40.884975>,  <29.350557, 31.485325, 41.083900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.006327, 31.529297, 40.884975> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504616, -0.316446, 0.803259,
		-0.069071, 0.942219, 0.327799,
		-0.860577, 0.109931, -0.497316,
		28.748154, 31.562277, 40.735779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.854481, 31.806280, 41.557919>,  <29.350557, 31.485325, 41.083900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.854481, 31.806280, 41.557919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623789, 31.636602, 41.278652>,  <28.485373, 31.534796, 41.111092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623789, 31.636602, 41.278652>,  <28.854481, 31.806280, 41.557919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623789, 31.636602, 41.278652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693376, -0.197736, 0.692914,
		-0.431985, 0.883718, -0.180087,
		-0.576731, -0.424197, -0.698168,
		28.450769, 31.509344, 41.069202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105974, 32.166676, 41.598873>,  <28.854481, 31.806280, 41.557919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105974, 32.166676, 41.598873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108305, 31.806017, 41.425896>,  <28.109703, 31.589622, 41.322109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.108305, 31.806017, 41.425896>,  <28.105974, 32.166676, 41.598873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108305, 31.806017, 41.425896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694600, -0.314746, 0.646890,
		-0.719373, 0.296603, -0.628116,
		0.005828, -0.901644, -0.432440,
		28.110054, 31.535524, 41.296165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.491951, 32.014721, 41.680401>,  <28.105974, 32.166676, 41.598873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.491951, 32.014721, 41.680401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664434, 31.660088, 41.613441>,  <27.767925, 31.447306, 41.573265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.664434, 31.660088, 41.613441>,  <27.491951, 32.014721, 41.680401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664434, 31.660088, 41.613441> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561286, -0.408858, 0.719578,
		-0.706411, -0.216329, -0.673932,
		0.431208, -0.886587, -0.167399,
		27.793797, 31.394112, 41.563221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.017138, 31.616037, 41.782818>,  <27.491951, 32.014721, 41.680401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.017138, 31.616037, 41.782818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.330994, 31.368200, 41.791225>,  <27.519308, 31.219498, 41.796272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.330994, 31.368200, 41.791225>,  <27.017138, 31.616037, 41.782818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.330994, 31.368200, 41.791225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493715, -0.604003, 0.625640,
		-0.374943, -0.501283, -0.779829,
		0.784642, -0.619592, 0.021024,
		27.566385, 31.182322, 41.797531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.700769, 31.029991, 41.674191>,  <27.017138, 31.616037, 41.782818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.700769, 31.029991, 41.674191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037737, 30.961010, 41.878384>,  <27.239918, 30.919621, 42.000900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.037737, 30.961010, 41.878384>,  <26.700769, 31.029991, 41.674191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037737, 30.961010, 41.878384> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516331, -0.529240, 0.673281,
		0.154056, -0.830761, -0.534885,
		0.842419, -0.172455, 0.510481,
		27.290462, 30.909273, 42.031528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.753902, 33.754269, 49.670193> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540180, 33.456387, 49.510223>,  <38.411949, 33.277657, 49.414242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.540180, 33.456387, 49.510223>,  <38.753902, 33.754269, 49.670193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540180, 33.456387, 49.510223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650060, 0.059582, 0.757543,
		-0.540318, 0.664729, -0.515938,
		-0.534301, -0.744705, -0.399921,
		38.379890, 33.232975, 49.390247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052494, 34.011398, 49.833027>,  <38.753902, 33.754269, 49.670193>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052494, 34.011398, 49.833027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005062, 33.626770, 49.733967>,  <37.976604, 33.395992, 49.674530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.005062, 33.626770, 49.733967>,  <38.052494, 34.011398, 49.833027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.005062, 33.626770, 49.733967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689785, -0.099633, 0.717126,
		-0.714239, 0.255858, -0.651460,
		-0.118575, -0.961567, -0.247649,
		37.969490, 33.338299, 49.659672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358166, 33.929699, 49.828979>,  <38.052494, 34.011398, 49.833027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358166, 33.929699, 49.828979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529755, 33.571476, 49.876240>,  <37.632710, 33.356541, 49.904594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.529755, 33.571476, 49.876240>,  <37.358166, 33.929699, 49.828979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529755, 33.571476, 49.876240> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581593, -0.173743, 0.794709,
		-0.691180, -0.409622, -0.595381,
		0.428974, -0.895557, 0.118146,
		37.658447, 33.302811, 49.911682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865273, 33.438725, 50.027107>,  <37.358166, 33.929699, 49.828979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865273, 33.438725, 50.027107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178696, 33.230694, 50.163086>,  <37.366749, 33.105877, 50.244671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178696, 33.230694, 50.163086>,  <36.865273, 33.438725, 50.027107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178696, 33.230694, 50.163086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535867, -0.288755, 0.793389,
		-0.314469, -0.803825, -0.504950,
		0.783553, -0.520082, 0.339939,
		37.413761, 33.074673, 50.265068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.652573, 32.935497, 50.369373>,  <36.865273, 33.438725, 50.027107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.652573, 32.935497, 50.369373> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023426, 32.905502, 50.516232>,  <37.245937, 32.887505, 50.604347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.023426, 32.905502, 50.516232>,  <36.652573, 32.935497, 50.369373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.023426, 32.905502, 50.516232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347986, -0.535783, 0.769313,
		0.139019, -0.841019, -0.522839,
		0.927135, -0.074992, 0.367147,
		37.301567, 32.883003, 50.626377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739479, 32.288063, 50.407288>,  <36.652573, 32.935497, 50.369373>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739479, 32.288063, 50.407288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000114, 32.454636, 50.660908>,  <37.156494, 32.554577, 50.813080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.000114, 32.454636, 50.660908>,  <36.739479, 32.288063, 50.407288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000114, 32.454636, 50.660908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500488, -0.392105, 0.771858,
		0.570038, -0.820269, -0.047074,
		0.651590, 0.416428, 0.634050,
		37.195591, 32.579563, 50.851124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080906, 31.745049, 50.952065>,  <36.739479, 32.288063, 50.407288>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080906, 31.745049, 50.952065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094154, 32.106934, 51.121956>,  <37.102104, 32.324066, 51.223892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094154, 32.106934, 51.121956>,  <37.080906, 31.745049, 50.952065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094154, 32.106934, 51.121956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280061, -0.399535, 0.872891,
		0.959411, -0.147862, 0.240142,
		0.033122, 0.904715, 0.424728,
		37.104092, 32.378349, 51.249374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578232, 31.747267, 51.539650>,  <37.080906, 31.745049, 50.952065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578232, 31.747267, 51.539650> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289639, 32.018169, 51.597324>,  <37.116482, 32.180710, 51.631931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.289639, 32.018169, 51.597324>,  <37.578232, 31.747267, 51.539650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289639, 32.018169, 51.597324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036808, -0.245452, 0.968710,
		0.691458, 0.693596, 0.202017,
		-0.721478, 0.677258, 0.144190,
		37.073196, 32.221348, 51.640583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810394, 31.961664, 52.197212>,  <37.578232, 31.747267, 51.539650>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810394, 31.961664, 52.197212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.437714, 32.088451, 52.126251>,  <37.214108, 32.164524, 52.083675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.437714, 32.088451, 52.126251>,  <37.810394, 31.961664, 52.197212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437714, 32.088451, 52.126251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228037, -0.130266, 0.964899,
		0.282732, 0.939448, 0.193648,
		-0.931698, 0.316966, -0.177398,
		37.158203, 32.183540, 52.073032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655521, 32.491985, 52.638222>,  <37.810394, 31.961664, 52.197212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655521, 32.491985, 52.638222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296249, 32.340809, 52.548393>,  <37.080685, 32.250103, 52.494495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.296249, 32.340809, 52.548393>,  <37.655521, 32.491985, 52.638222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296249, 32.340809, 52.548393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245726, 0.008014, 0.969306,
		-0.364542, 0.925795, -0.100068,
		-0.898180, -0.377942, -0.224570,
		37.026794, 32.227425, 52.481022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.180298, 32.953072, 52.942230>,  <37.655521, 32.491985, 52.638222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.180298, 32.953072, 52.942230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961212, 32.624397, 52.879185>,  <36.829762, 32.427193, 52.841358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.961212, 32.624397, 52.879185>,  <37.180298, 32.953072, 52.942230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961212, 32.624397, 52.879185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489685, 0.162084, 0.856701,
		-0.678392, 0.546409, -0.491142,
		-0.547716, -0.821684, -0.157612,
		36.796898, 32.377892, 52.831902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.529156, 33.097584, 53.332611>,  <37.180298, 32.953072, 52.942230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.529156, 33.097584, 53.332611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506660, 32.702950, 53.271317>,  <36.493164, 32.466167, 53.234539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506660, 32.702950, 53.271317>,  <36.529156, 33.097584, 53.332611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506660, 32.702950, 53.271317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469756, -0.109285, 0.876006,
		-0.881003, 0.121247, -0.457310,
		-0.056236, -0.986588, -0.153237,
		36.489788, 32.406975, 53.225346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877342, 32.701656, 53.571960>,  <36.529156, 33.097584, 53.332611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.877342, 32.701656, 53.571960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181927, 32.442509, 53.580399>,  <36.364677, 32.287018, 53.585461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.181927, 32.442509, 53.580399>,  <35.877342, 32.701656, 53.571960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181927, 32.442509, 53.580399> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268087, -0.285127, 0.920235,
		-0.590181, -0.706373, -0.390798,
		0.761456, -0.647872, 0.021093,
		36.410362, 32.248146, 53.586727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152367, 33.020363, 53.523087>,  <35.877342, 32.701656, 53.571960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152367, 33.020363, 53.523087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807056, 32.872993, 53.385094>,  <34.599869, 32.784573, 53.302296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.807056, 32.872993, 53.385094>,  <35.152367, 33.020363, 53.523087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807056, 32.872993, 53.385094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311286, 0.149399, -0.938499,
		0.397305, -0.917575, -0.014288,
		-0.863279, -0.368423, -0.344985,
		34.548073, 32.762466, 53.281597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361031, 32.705074, 52.939980>,  <35.152367, 33.020363, 53.523087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361031, 32.705074, 52.939980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970840, 32.757351, 52.869144>,  <34.736725, 32.788715, 52.826645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.970840, 32.757351, 52.869144>,  <35.361031, 32.705074, 52.939980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970840, 32.757351, 52.869144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215823, 0.410288, -0.886050,
		-0.043141, -0.902543, -0.428434,
		-0.975479, 0.130691, -0.177089,
		34.678196, 32.796558, 52.816017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286213, 32.393250, 52.269295>,  <35.361031, 32.705074, 52.939980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286213, 32.393250, 52.269295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991451, 32.656761, 52.329929>,  <34.814594, 32.814869, 52.366310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991451, 32.656761, 52.329929>,  <35.286213, 32.393250, 52.269295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991451, 32.656761, 52.329929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102298, 0.330337, -0.938303,
		-0.668209, -0.675935, -0.310819,
		-0.736907, 0.658779, 0.151588,
		34.770378, 32.854393, 52.375404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722340, 32.227200, 51.726692>,  <35.286213, 32.393250, 52.269295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722340, 32.227200, 51.726692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697807, 32.608536, 51.844929>,  <34.683090, 32.837337, 51.915871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.697807, 32.608536, 51.844929>,  <34.722340, 32.227200, 51.726692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697807, 32.608536, 51.844929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021555, 0.297347, -0.954526,
		-0.997885, -0.052167, -0.038785,
		-0.061327, 0.953343, 0.295594,
		34.679409, 32.894539, 51.933605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.219830, 32.542957, 51.246048>,  <34.722340, 32.227200, 51.726692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.219830, 32.542957, 51.246048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410473, 32.852283, 51.413296>,  <34.524860, 33.037880, 51.513645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.410473, 32.852283, 51.413296>,  <34.219830, 32.542957, 51.246048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410473, 32.852283, 51.413296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079784, 0.511698, -0.855453,
		-0.875488, 0.374357, 0.305577,
		0.476608, 0.773319, 0.418118,
		34.553455, 33.084278, 51.538731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766487, 33.057251, 51.053810>,  <34.219830, 32.542957, 51.246048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766487, 33.057251, 51.053810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101025, 33.231312, 51.187176>,  <34.301746, 33.335751, 51.267197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.101025, 33.231312, 51.187176>,  <33.766487, 33.057251, 51.053810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101025, 33.231312, 51.187176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009120, 0.619153, -0.785217,
		-0.548126, 0.653672, 0.521795,
		0.836346, 0.435157, 0.333413,
		34.351929, 33.361858, 51.287201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.627724, 33.780704, 51.204163>,  <33.766487, 33.057251, 51.053810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.627724, 33.780704, 51.204163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021305, 33.736584, 51.148075>,  <34.257454, 33.710110, 51.114422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021305, 33.736584, 51.148075>,  <33.627724, 33.780704, 51.204163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021305, 33.736584, 51.148075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001534, 0.791161, -0.611606,
		0.178394, 0.601580, 0.778638,
		0.983958, -0.110301, -0.140216,
		34.316494, 33.703495, 51.106010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898327, 34.544220, 50.958649>,  <33.627724, 33.780704, 51.204163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898327, 34.544220, 50.958649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219368, 34.323605, 50.867748>,  <34.411991, 34.191235, 50.813210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.219368, 34.323605, 50.867748>,  <33.898327, 34.544220, 50.958649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219368, 34.323605, 50.867748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203888, 0.611653, -0.764402,
		0.560591, 0.567177, 0.603364,
		0.802600, -0.551536, -0.227247,
		34.460148, 34.158142, 50.799576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474995, 34.966934, 50.858017>,  <33.898327, 34.544220, 50.958649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474995, 34.966934, 50.858017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539890, 34.631878, 50.649387>,  <34.578827, 34.430843, 50.524208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.539890, 34.631878, 50.649387>,  <34.474995, 34.966934, 50.858017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539890, 34.631878, 50.649387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241257, 0.546209, -0.802153,
		0.956803, 0.004310, 0.290705,
		0.162244, -0.837638, -0.521575,
		34.588562, 34.380585, 50.492916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012634, 35.018017, 50.509609>,  <34.474995, 34.966934, 50.858017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012634, 35.018017, 50.509609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848595, 34.725574, 50.291508>,  <34.750172, 34.550110, 50.160648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.848595, 34.725574, 50.291508>,  <35.012634, 35.018017, 50.509609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.848595, 34.725574, 50.291508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245521, 0.487269, -0.838026,
		0.878373, -0.477543, -0.020324,
		-0.410097, -0.731110, -0.545251,
		34.725567, 34.506241, 50.127934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.540676, 34.978981, 49.948139>,  <35.012634, 35.018017, 50.509609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.540676, 34.978981, 49.948139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186150, 34.815304, 49.861412>,  <34.973434, 34.717098, 49.809376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.186150, 34.815304, 49.861412>,  <35.540676, 34.978981, 49.948139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.186150, 34.815304, 49.861412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080769, 0.324438, -0.942452,
		0.455987, -0.852821, -0.254504,
		-0.886314, -0.409190, -0.216821,
		34.920254, 34.692547, 49.796368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680897, 34.648811, 49.341129>,  <35.540676, 34.978981, 49.948139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680897, 34.648811, 49.341129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.282925, 34.687595, 49.330517>,  <35.044140, 34.710865, 49.324150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.282925, 34.687595, 49.330517>,  <35.680897, 34.648811, 49.341129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.282925, 34.687595, 49.330517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028602, 0.020011, -0.999391,
		-0.096373, -0.995087, -0.022683,
		-0.994935, 0.096963, -0.026533,
		34.984444, 34.716682, 49.322556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484234, 34.201862, 48.851643>,  <35.680897, 34.648811, 49.341129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484234, 34.201862, 48.851643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191193, 34.472580, 48.880604>,  <35.015366, 34.635010, 48.897980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.191193, 34.472580, 48.880604>,  <35.484234, 34.201862, 48.851643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191193, 34.472580, 48.880604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147366, 0.261558, -0.953871,
		-0.664509, -0.688143, -0.291355,
		-0.732606, 0.676792, 0.072398,
		34.971413, 34.675617, 48.902325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934151, 34.005848, 48.358295>,  <35.484234, 34.201862, 48.851643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934151, 34.005848, 48.358295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889252, 34.393127, 48.447727>,  <34.862312, 34.625496, 48.501385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889252, 34.393127, 48.447727>,  <34.934151, 34.005848, 48.358295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889252, 34.393127, 48.447727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172729, 0.240585, -0.955135,
		-0.978553, -0.068590, -0.194241,
		-0.112244, 0.968201, 0.223578,
		34.855579, 34.683586, 48.514801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549152, 34.365028, 47.751923>,  <34.934151, 34.005848, 48.358295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549152, 34.365028, 47.751923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713085, 34.683048, 47.930779>,  <34.811443, 34.873859, 48.038090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.713085, 34.683048, 47.930779>,  <34.549152, 34.365028, 47.751923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.713085, 34.683048, 47.930779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204121, 0.397825, -0.894466,
		-0.889028, 0.457851, 0.000755,
		0.409833, 0.795052, 0.447135,
		34.836037, 34.921562, 48.064919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889168, 34.040882, 47.833546>,  <34.549152, 34.365028, 47.751923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889168, 34.040882, 47.833546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572998, 33.950886, 47.605648>,  <33.383297, 33.896889, 47.468910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.572998, 33.950886, 47.605648>,  <33.889168, 34.040882, 47.833546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572998, 33.950886, 47.605648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444472, -0.429364, 0.786188,
		-0.421509, 0.874658, 0.239380,
		-0.790427, -0.224988, -0.569742,
		33.335869, 33.883389, 47.434727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.277691, 34.326046, 48.160492>,  <33.889168, 34.040882, 47.833546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.277691, 34.326046, 48.160492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177891, 34.006031, 47.942249>,  <33.118011, 33.814022, 47.811302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177891, 34.006031, 47.942249>,  <33.277691, 34.326046, 48.160492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177891, 34.006031, 47.942249> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378987, -0.437813, 0.815284,
		-0.891134, 0.410190, -0.193971,
		-0.249498, -0.800040, -0.545607,
		33.103043, 33.766018, 47.778568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535767, 34.151592, 48.383335>,  <33.277691, 34.326046, 48.160492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535767, 34.151592, 48.383335> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706577, 33.829529, 48.218712>,  <32.809063, 33.636292, 48.119938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.706577, 33.829529, 48.218712>,  <32.535767, 34.151592, 48.383335>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706577, 33.829529, 48.218712> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300277, -0.555576, 0.775351,
		-0.852927, -0.207513, -0.479013,
		0.427023, -0.805155, -0.411554,
		32.834686, 33.587982, 48.095245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004620, 33.660084, 48.452175>,  <32.535767, 34.151592, 48.383335>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004620, 33.660084, 48.452175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334812, 33.446472, 48.379086>,  <32.532928, 33.318306, 48.335232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.334812, 33.446472, 48.379086>,  <32.004620, 33.660084, 48.452175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334812, 33.446472, 48.379086> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304934, -0.694383, 0.651803,
		-0.474962, -0.482335, -0.736046,
		0.825485, -0.534028, -0.182725,
		32.582458, 33.286263, 48.324268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795584, 32.952633, 48.419884>,  <32.004620, 33.660084, 48.452175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795584, 32.952633, 48.419884> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187679, 32.907112, 48.484608>,  <32.422935, 32.879799, 48.523441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.187679, 32.907112, 48.484608>,  <31.795584, 32.952633, 48.419884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187679, 32.907112, 48.484608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197458, -0.612521, 0.765394,
		0.012013, -0.782220, -0.622886,
		0.980238, -0.113799, 0.161814,
		32.481750, 32.872971, 48.533154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990894, 32.232628, 48.433727>,  <31.795584, 32.952633, 48.419884>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990894, 32.232628, 48.433727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279732, 32.401131, 48.653225>,  <32.453033, 32.502232, 48.784924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279732, 32.401131, 48.653225>,  <31.990894, 32.232628, 48.433727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279732, 32.401131, 48.653225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147132, -0.681550, 0.716827,
		0.675967, -0.598355, -0.430163,
		0.722095, 0.421261, 0.548742,
		32.496361, 32.527508, 48.817848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382710, 31.671261, 48.782097>,  <31.990894, 32.232628, 48.433727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382710, 31.671261, 48.782097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434513, 32.004086, 48.997837>,  <32.465595, 32.203781, 49.127281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.434513, 32.004086, 48.997837>,  <32.382710, 31.671261, 48.782097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434513, 32.004086, 48.997837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091033, -0.531662, 0.842050,
		0.987391, -0.158152, 0.006890,
		0.129509, 0.832060, 0.539355,
		32.473366, 32.253704, 49.159645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663750, 31.077383, 48.498814>,  <32.382710, 31.671261, 48.782097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663750, 31.077383, 48.498814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366375, 30.835779, 48.383938>,  <32.187950, 30.690817, 48.315010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.366375, 30.835779, 48.383938>,  <32.663750, 31.077383, 48.498814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366375, 30.835779, 48.383938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220222, 0.184385, -0.957865,
		0.631513, -0.775355, -0.004062,
		-0.743434, -0.604010, -0.287191,
		32.143345, 30.654577, 48.297779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.901913, 30.688086, 48.023273>,  <32.663750, 31.077383, 48.498814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.901913, 30.688086, 48.023273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510033, 30.650459, 47.952454>,  <32.274906, 30.627884, 47.909962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.510033, 30.650459, 47.952454>,  <32.901913, 30.688086, 48.023273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510033, 30.650459, 47.952454> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170211, 0.076422, -0.982440,
		0.105951, -0.992628, -0.058858,
		-0.979695, -0.094072, -0.177053,
		32.216125, 30.622240, 47.899338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.914997, 30.236681, 47.443588>,  <32.901913, 30.688086, 48.023273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.914997, 30.236681, 47.443588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548096, 30.395588, 47.455021>,  <32.327953, 30.490932, 47.461880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548096, 30.395588, 47.455021>,  <32.914997, 30.236681, 47.443588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548096, 30.395588, 47.455021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040525, -0.021695, -0.998943,
		-0.396230, -0.917445, 0.035999,
		-0.917257, 0.397270, 0.028584,
		32.272919, 30.514769, 47.463596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.552670, 29.916523, 46.903778>,  <32.914997, 30.236681, 47.443588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.552670, 29.916523, 46.903778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336029, 30.243677, 46.981483>,  <32.206047, 30.439970, 47.028107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.336029, 30.243677, 46.981483>,  <32.552670, 29.916523, 46.903778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336029, 30.243677, 46.981483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112824, 0.158275, -0.980928,
		-0.833033, -0.553185, 0.006555,
		-0.541597, 0.817885, 0.194261,
		32.173550, 30.489042, 47.039761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035572, 29.948687, 46.412064>,  <32.552670, 29.916523, 46.903778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035572, 29.948687, 46.412064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073414, 30.326595, 46.537575>,  <32.096119, 30.553341, 46.612881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.073414, 30.326595, 46.537575>,  <32.035572, 29.948687, 46.412064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073414, 30.326595, 46.537575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041501, 0.311175, -0.949446,
		-0.994650, 0.102845, -0.009770,
		0.094606, 0.944772, 0.313778,
		32.101795, 30.610027, 46.631710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.474289, 30.354065, 46.121792>,  <32.035572, 29.948687, 46.412064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.474289, 30.354065, 46.121792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789057, 30.586452, 46.204964>,  <31.977917, 30.725885, 46.254868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.789057, 30.586452, 46.204964>,  <31.474289, 30.354065, 46.121792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.789057, 30.586452, 46.204964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028043, 0.302954, -0.952592,
		-0.616419, 0.755444, 0.222108,
		0.786919, 0.580967, 0.207931,
		32.025131, 30.760742, 46.267342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334846, 31.035410, 45.739929>,  <31.474289, 30.354065, 46.121792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334846, 31.035410, 45.739929> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724138, 31.044779, 45.831383>,  <31.957714, 31.050400, 45.886253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.724138, 31.044779, 45.831383>,  <31.334846, 31.035410, 45.739929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724138, 31.044779, 45.831383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187548, 0.494051, -0.848964,
		-0.132841, 0.869117, 0.476433,
		0.973231, 0.023423, 0.228631,
		32.016109, 31.051805, 45.899971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.968102, 29.124527, 52.184612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.217991, 29.396116, 52.338863>,  <35.367924, 29.559071, 52.431416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.217991, 29.396116, 52.338863>,  <34.968102, 29.124527, 52.184612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217991, 29.396116, 52.338863> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315295, 0.232462, -0.920082,
		-0.714357, 0.696386, -0.068853,
		0.624727, 0.678976, 0.385628,
		35.405411, 29.599810, 52.454552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795490, 29.773254, 51.935505>,  <34.968102, 29.124527, 52.184612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795490, 29.773254, 51.935505> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.185982, 29.765596, 52.021866>,  <35.420277, 29.761002, 52.073681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.185982, 29.765596, 52.021866>,  <34.795490, 29.773254, 51.935505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185982, 29.765596, 52.021866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216573, 0.125979, -0.968104,
		-0.008667, 0.991848, 0.127130,
		0.976228, -0.019143, 0.215899,
		35.478851, 29.759853, 52.086636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977230, 30.325594, 51.575432>,  <34.795490, 29.773254, 51.935505>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977230, 30.325594, 51.575432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.341530, 30.178112, 51.649834>,  <35.560108, 30.089622, 51.694477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.341530, 30.178112, 51.649834>,  <34.977230, 30.325594, 51.575432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341530, 30.178112, 51.649834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309409, 0.310905, -0.898668,
		0.273514, 0.876010, 0.397237,
		0.910745, -0.368707, 0.186008,
		35.614754, 30.067499, 51.705635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584118, 30.884649, 51.419254>,  <34.977230, 30.325594, 51.575432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584118, 30.884649, 51.419254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.725056, 30.510971, 51.396858>,  <35.809620, 30.286764, 51.383419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.725056, 30.510971, 51.396858>,  <35.584118, 30.884649, 51.419254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.725056, 30.510971, 51.396858> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432462, 0.215581, -0.875501,
		0.829959, 0.284263, 0.479962,
		0.352343, -0.934194, -0.055990,
		35.830757, 30.230713, 51.380062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397034, 30.951920, 51.279095>,  <35.584118, 30.884649, 51.419254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397034, 30.951920, 51.279095> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282413, 30.580332, 51.185364>,  <36.213642, 30.357380, 51.129124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.282413, 30.580332, 51.185364>,  <36.397034, 30.951920, 51.279095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.282413, 30.580332, 51.185364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565196, 0.033582, -0.824273,
		0.773592, -0.368636, 0.515425,
		-0.286548, -0.928967, -0.234330,
		36.196449, 30.301641, 51.115067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935673, 30.537916, 51.189171>,  <36.397034, 30.951920, 51.279095>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935673, 30.537916, 51.189171> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.660385, 30.373171, 50.950264>,  <36.495213, 30.274324, 50.806919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.660385, 30.373171, 50.950264>,  <36.935673, 30.537916, 51.189171>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660385, 30.373171, 50.950264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683132, -0.090662, -0.724645,
		0.244305, -0.906725, 0.343752,
		-0.688219, -0.411862, -0.597264,
		36.453918, 30.249613, 50.771084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374611, 30.302679, 50.710579>,  <36.935673, 30.537916, 51.189171>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374611, 30.302679, 50.710579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.024105, 30.180719, 50.561340>,  <36.813801, 30.107544, 50.471798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.024105, 30.180719, 50.561340>,  <37.374611, 30.302679, 50.710579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024105, 30.180719, 50.561340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452155, -0.252765, -0.855375,
		0.166499, -0.918229, 0.359351,
		-0.876261, -0.304901, -0.373096,
		36.761227, 30.089249, 50.449409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.529629, 29.668409, 50.550751>,  <37.374611, 30.302679, 50.710579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.529629, 29.668409, 50.550751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.210381, 29.756290, 50.326347>,  <37.018833, 29.809019, 50.191704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.210381, 29.756290, 50.326347>,  <37.529629, 29.668409, 50.550751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210381, 29.756290, 50.326347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549228, -0.117492, -0.827372,
		-0.247692, -0.968465, -0.026896,
		-0.798121, 0.219706, -0.561010,
		36.970943, 29.822201, 50.158043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359768, 29.065357, 50.019108>,  <37.529629, 29.668409, 50.550751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359768, 29.065357, 50.019108> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.201336, 29.399717, 49.867111>,  <37.106277, 29.600332, 49.775913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.201336, 29.399717, 49.867111>,  <37.359768, 29.065357, 50.019108>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201336, 29.399717, 49.867111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529090, -0.130459, -0.838477,
		-0.750456, -0.533154, -0.390593,
		-0.396081, 0.835899, -0.379990,
		37.082512, 29.650488, 49.753113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205982, 28.898638, 49.375423>,  <37.359768, 29.065357, 50.019108>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205982, 28.898638, 49.375423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.195652, 29.298492, 49.372234>,  <37.189453, 29.538404, 49.370319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.195652, 29.298492, 49.372234>,  <37.205982, 28.898638, 49.375423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.195652, 29.298492, 49.372234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510549, 0.006335, -0.859826,
		-0.859461, -0.026277, -0.510526,
		-0.025828, 0.999635, -0.007971,
		37.187904, 29.598383, 49.369843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920155, 29.077196, 48.734299>,  <37.205982, 28.898638, 49.375423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920155, 29.077196, 48.734299> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.121975, 29.403042, 48.848721>,  <37.243069, 29.598549, 48.917374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.121975, 29.403042, 48.848721>,  <36.920155, 29.077196, 48.734299>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121975, 29.403042, 48.848721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421862, 0.056473, -0.904900,
		-0.753301, 0.577244, -0.315162,
		0.504550, 0.814617, 0.286058,
		37.273338, 29.647427, 48.934540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.741974, 29.577122, 48.191544>,  <36.920155, 29.077196, 48.734299>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.741974, 29.577122, 48.191544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.091446, 29.665516, 48.364906>,  <37.301128, 29.718554, 48.468925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.091446, 29.665516, 48.364906>,  <36.741974, 29.577122, 48.191544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091446, 29.665516, 48.364906> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382288, 0.239125, -0.892566,
		-0.300884, 0.945507, 0.124439,
		0.873684, 0.220988, 0.433405,
		37.353550, 29.731812, 48.494926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175392, 30.033754, 47.880627>,  <36.741974, 29.577122, 48.191544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175392, 30.033754, 47.880627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840916, 30.051357, 47.661961>,  <35.640228, 30.061918, 47.530762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.840916, 30.051357, 47.661961>,  <36.175392, 30.033754, 47.880627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840916, 30.051357, 47.661961> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547567, -0.123124, 0.827654,
		-0.030885, 0.991415, 0.127052,
		-0.836191, 0.044007, -0.546669,
		35.590057, 30.064560, 47.497959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728764, 30.366924, 48.302864>,  <36.175392, 30.033754, 47.880627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728764, 30.366924, 48.302864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.481998, 30.179916, 48.049614>,  <35.333939, 30.067711, 47.897663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.481998, 30.179916, 48.049614>,  <35.728764, 30.366924, 48.302864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481998, 30.179916, 48.049614> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625629, -0.196751, 0.754902,
		-0.477500, 0.861808, -0.171116,
		-0.616914, -0.467520, -0.633121,
		35.296925, 30.039660, 47.859676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003048, 30.612381, 48.512657>,  <35.728764, 30.366924, 48.302864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003048, 30.612381, 48.512657> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978485, 30.273239, 48.301994>,  <34.963749, 30.069754, 48.175594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.978485, 30.273239, 48.301994>,  <35.003048, 30.612381, 48.512657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978485, 30.273239, 48.301994> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346925, -0.476627, 0.807756,
		-0.935880, 0.232313, -0.264874,
		-0.061406, -0.847854, -0.526661,
		34.960064, 30.018883, 48.143997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.366306, 30.374350, 48.716835>,  <35.003048, 30.612381, 48.512657>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.366306, 30.374350, 48.716835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534840, 30.050865, 48.552658>,  <34.635960, 29.856775, 48.454151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.534840, 30.050865, 48.552658>,  <34.366306, 30.374350, 48.716835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534840, 30.050865, 48.552658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424150, -0.575745, 0.699009,
		-0.801607, -0.120428, -0.585596,
		0.421335, -0.808712, -0.410442,
		34.661240, 29.808252, 48.429527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822906, 29.885641, 48.644482>,  <34.366306, 30.374350, 48.716835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822906, 29.885641, 48.644482> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.148827, 29.655533, 48.615730>,  <34.344379, 29.517467, 48.598480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.148827, 29.655533, 48.615730>,  <33.822906, 29.885641, 48.644482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148827, 29.655533, 48.615730> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411471, -0.661184, 0.627317,
		-0.408403, -0.481561, -0.775440,
		0.814800, -0.575269, -0.071881,
		34.393265, 29.482952, 48.594166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534851, 29.288708, 48.709515>,  <33.822906, 29.885641, 48.644482>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534851, 29.288708, 48.709515> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921589, 29.206047, 48.769520>,  <34.153633, 29.156450, 48.805523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921589, 29.206047, 48.769520>,  <33.534851, 29.288708, 48.709515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921589, 29.206047, 48.769520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253943, -0.839934, 0.479609,
		0.026893, -0.501803, -0.864564,
		0.966845, -0.206652, 0.150018,
		34.211643, 29.144051, 48.814526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624825, 28.590405, 48.471989>,  <33.534851, 29.288708, 48.709515>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624825, 28.590405, 48.471989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895622, 28.697748, 48.746117>,  <34.058102, 28.762154, 48.910595>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.895622, 28.697748, 48.746117>,  <33.624825, 28.590405, 48.471989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895622, 28.697748, 48.746117> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194858, -0.832573, 0.518510,
		0.709726, -0.484568, -0.511354,
		0.676993, 0.268358, 0.685320,
		34.098721, 28.778255, 48.951714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882656, 27.966909, 48.566662>,  <33.624825, 28.590405, 48.471989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882656, 27.966909, 48.566662> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.968586, 28.209656, 48.872753>,  <34.020142, 28.355303, 49.056408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.968586, 28.209656, 48.872753>,  <33.882656, 27.966909, 48.566662>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968586, 28.209656, 48.872753> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316383, -0.698024, 0.642390,
		0.923988, -0.380102, 0.042052,
		0.214820, 0.606865, 0.765224,
		34.033031, 28.391716, 49.102322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230343, 27.519791, 49.186981>,  <33.882656, 27.966909, 48.566662>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230343, 27.519791, 49.186981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078861, 27.862841, 49.326160>,  <33.987972, 28.068670, 49.409668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.078861, 27.862841, 49.326160>,  <34.230343, 27.519791, 49.186981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078861, 27.862841, 49.326160> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460388, -0.500692, 0.733042,
		0.802888, 0.117414, 0.584453,
		-0.378700, 0.857626, 0.347943,
		33.965252, 28.120129, 49.430542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290005, 27.491310, 49.923370>,  <34.230343, 27.519791, 49.186981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290005, 27.491310, 49.923370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.009060, 27.758587, 49.825222>,  <33.840492, 27.918953, 49.766335>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.009060, 27.758587, 49.825222>,  <34.290005, 27.491310, 49.923370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009060, 27.758587, 49.825222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675042, -0.515880, 0.527433,
		0.225847, 0.536083, 0.813393,
		-0.702361, 0.668194, -0.245369,
		33.798351, 27.959045, 49.751610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901131, 27.702225, 50.571438>,  <34.290005, 27.491310, 49.923370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901131, 27.702225, 50.571438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.685783, 27.789173, 50.245762>,  <33.556576, 27.841343, 50.050358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.685783, 27.789173, 50.245762>,  <33.901131, 27.702225, 50.571438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685783, 27.789173, 50.245762> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796335, -0.447311, 0.407142,
		-0.275695, 0.867561, 0.413921,
		-0.538371, 0.217373, -0.814190,
		33.524273, 27.854385, 50.001503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254368, 27.728907, 50.839954>,  <33.901131, 27.702225, 50.571438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254368, 27.728907, 50.839954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.174110, 27.729183, 50.448090>,  <33.125957, 27.729349, 50.212971>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.174110, 27.729183, 50.448090>,  <33.254368, 27.728907, 50.839954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174110, 27.729183, 50.448090> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703929, -0.695587, 0.143678,
		-0.681342, 0.718442, 0.140053,
		-0.200643, 0.000693, -0.979664,
		33.113918, 27.729391, 50.154190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513241, 28.036198, 50.781792>,  <33.254368, 27.728907, 50.839954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513241, 28.036198, 50.781792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.643784, 27.791794, 50.493301>,  <32.722107, 27.645151, 50.320210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.643784, 27.791794, 50.493301>,  <32.513241, 28.036198, 50.781792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643784, 27.791794, 50.493301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829921, -0.550443, 0.090788,
		-0.452465, 0.568930, -0.686727,
		0.326353, -0.611008, -0.721223,
		32.741688, 27.608492, 50.276936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957111, 27.701200, 50.709389>,  <32.513241, 28.036198, 50.781792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957111, 27.701200, 50.709389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.181293, 27.486483, 50.457123>,  <32.315804, 27.357653, 50.305763>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.181293, 27.486483, 50.457123>,  <31.957111, 27.701200, 50.709389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181293, 27.486483, 50.457123> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670268, -0.741280, 0.035295,
		-0.486448, 0.402936, -0.775249,
		0.560455, -0.536793, -0.630669,
		32.349430, 27.325445, 50.267921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844801, 28.301718, 50.372513>,  <31.957111, 27.701200, 50.709389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844801, 28.301718, 50.372513> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.713501, 28.665707, 50.473866>,  <31.634722, 28.884100, 50.534676>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.713501, 28.665707, 50.473866>,  <31.844801, 28.301718, 50.372513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713501, 28.665707, 50.473866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146113, 0.313926, -0.938137,
		-0.933222, -0.270921, -0.236005,
		-0.328249, 0.909974, 0.253378,
		31.615026, 28.938698, 50.549877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566608, 28.591236, 49.745068>,  <31.844801, 28.301718, 50.372513>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566608, 28.591236, 49.745068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604166, 28.919556, 49.970448>,  <31.626701, 29.116547, 50.105675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.604166, 28.919556, 49.970448>,  <31.566608, 28.591236, 49.745068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.604166, 28.919556, 49.970448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052754, 0.561053, -0.826097,
		-0.994183, 0.107292, 0.009380,
		0.093896, 0.820797, 0.563450,
		31.632336, 29.165794, 50.139481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050463, 29.111914, 49.660484>,  <31.566608, 28.591236, 49.745068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050463, 29.111914, 49.660484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.365072, 29.313595, 49.803120>,  <31.553839, 29.434603, 49.888702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.365072, 29.313595, 49.803120>,  <31.050463, 29.111914, 49.660484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365072, 29.313595, 49.803120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111417, 0.683802, -0.721111,
		-0.607424, 0.527442, 0.594005,
		0.786526, 0.504202, 0.356592,
		31.601030, 29.464855, 49.910099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848463, 29.821480, 49.739632>,  <31.050463, 29.111914, 49.660484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848463, 29.821480, 49.739632> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.240944, 29.788321, 49.669918>,  <31.476433, 29.768425, 49.628090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.240944, 29.788321, 49.669918>,  <30.848463, 29.821480, 49.739632>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.240944, 29.788321, 49.669918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096712, 0.570272, -0.815743,
		0.167010, 0.817263, 0.551534,
		0.981200, -0.082898, -0.174280,
		31.535305, 29.763451, 49.617634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875669, 30.464653, 49.398315>,  <30.848463, 29.821480, 49.739632>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875669, 30.464653, 49.398315> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227766, 30.276579, 49.372692>,  <31.439024, 30.163734, 49.357319>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227766, 30.276579, 49.372692>,  <30.875669, 30.464653, 49.398315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227766, 30.276579, 49.372692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177350, 0.451181, -0.874633,
		0.440142, 0.758525, 0.480535,
		0.880239, -0.470186, -0.064059,
		31.491838, 30.135523, 49.353474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.385572, 30.921196, 49.391762>,  <30.875669, 30.464653, 49.398315>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.385572, 30.921196, 49.391762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557871, 30.612782, 49.204159>,  <31.661249, 30.427732, 49.091599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557871, 30.612782, 49.204159>,  <31.385572, 30.921196, 49.391762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557871, 30.612782, 49.204159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102606, 0.558158, -0.823366,
		0.896622, 0.306538, 0.319537,
		0.430745, -0.771034, -0.469004,
		31.687094, 30.381472, 49.063457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100403, 31.093061, 49.075211>,  <31.385572, 30.921196, 49.391762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100403, 31.093061, 49.075211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.982264, 30.777164, 48.860146>,  <31.911381, 30.587626, 48.731106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.982264, 30.777164, 48.860146>,  <32.100403, 31.093061, 49.075211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982264, 30.777164, 48.860146> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253637, 0.477755, -0.841082,
		0.921108, -0.384779, 0.059206,
		-0.295344, -0.789744, -0.537658,
		31.893660, 30.540241, 48.698849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748783, 31.375462, 49.487026>,  <32.100403, 31.093061, 49.075211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748783, 31.375462, 49.487026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623089, 31.749453, 49.552837>,  <32.547672, 31.973848, 49.592323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.623089, 31.749453, 49.552837>,  <32.748783, 31.375462, 49.487026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.623089, 31.749453, 49.552837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457794, -0.301063, 0.836532,
		0.831674, 0.187546, 0.522632,
		-0.314233, 0.934980, 0.164529,
		32.528820, 32.029945, 49.602196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.146694, 31.609146, 50.103970>,  <32.748783, 31.375462, 49.487026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.146694, 31.609146, 50.103970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.837509, 31.862919, 50.105881>,  <32.651997, 32.015182, 50.107029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.837509, 31.862919, 50.105881>,  <33.146694, 31.609146, 50.103970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837509, 31.862919, 50.105881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182285, -0.229291, 0.956137,
		0.607697, 0.738190, 0.292881,
		-0.772966, 0.634430, 0.004778,
		32.605618, 32.053249, 50.107315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178917, 31.983938, 50.740753>,  <33.146694, 31.609146, 50.103970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178917, 31.983938, 50.740753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.795528, 32.040874, 50.641907>,  <32.565495, 32.075035, 50.582600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.795528, 32.040874, 50.641907>,  <33.178917, 31.983938, 50.740753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795528, 32.040874, 50.641907> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273925, -0.218433, 0.936617,
		0.079340, 0.965415, 0.248354,
		-0.958473, 0.142342, -0.247121,
		32.507988, 32.083576, 50.567772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900551, 32.498936, 51.125217>,  <33.178917, 31.983938, 50.740753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900551, 32.498936, 51.125217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.583385, 32.284657, 51.009064>,  <32.393085, 32.156090, 50.939373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.583385, 32.284657, 51.009064>,  <32.900551, 32.498936, 51.125217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.583385, 32.284657, 51.009064> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340974, -0.004887, 0.940060,
		-0.505007, 0.844396, -0.178785,
		-0.792909, -0.535698, -0.290385,
		32.345512, 32.123947, 50.921947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431751, 32.763618, 51.507923>,  <32.900551, 32.498936, 51.125217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431751, 32.763618, 51.507923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.256355, 32.423992, 51.390072>,  <32.151119, 32.220215, 51.319359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.256355, 32.423992, 51.390072>,  <32.431751, 32.763618, 51.507923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256355, 32.423992, 51.390072> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341602, -0.145769, 0.928472,
		-0.831285, 0.507772, -0.226126,
		-0.438490, -0.849070, -0.294631,
		32.124809, 32.169270, 51.301682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746960, 32.739254, 51.737545>,  <32.431751, 32.763618, 51.507923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746960, 32.739254, 51.737545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.814327, 32.348930, 51.681782>,  <31.854748, 32.114735, 51.648323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.814327, 32.348930, 51.681782>,  <31.746960, 32.739254, 51.737545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814327, 32.348930, 51.681782> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364848, -0.193093, 0.910824,
		-0.915708, -0.102540, -0.388542,
		0.168421, -0.975808, -0.139405,
		31.864853, 32.056187, 51.639961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.137899, 32.508427, 52.121269>,  <31.746960, 32.739254, 51.737545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.137899, 32.508427, 52.121269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.419203, 32.225510, 52.092545>,  <31.587986, 32.055759, 52.075310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.419203, 32.225510, 52.092545>,  <31.137899, 32.508427, 52.121269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.419203, 32.225510, 52.092545> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316268, -0.401717, 0.859417,
		-0.636710, -0.581683, -0.506207,
		0.703260, -0.707297, -0.071809,
		31.630180, 32.013321, 52.071003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817142, 31.861652, 52.108059>,  <31.137899, 32.508427, 52.121269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817142, 31.861652, 52.108059> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.174610, 31.777534, 52.266617>,  <31.389091, 31.727064, 52.361752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.174610, 31.777534, 52.266617>,  <30.817142, 31.861652, 52.108059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.174610, 31.777534, 52.266617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444689, -0.533259, 0.719643,
		0.060046, -0.819397, -0.570073,
		0.893670, -0.210293, 0.396397,
		31.442711, 31.714447, 52.385536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646513, 31.193813, 52.414352>,  <30.817142, 31.861652, 52.108059>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646513, 31.193813, 52.414352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.009239, 31.279940, 52.559307>,  <31.226875, 31.331615, 52.646278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.009239, 31.279940, 52.559307>,  <30.646513, 31.193813, 52.414352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009239, 31.279940, 52.559307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320190, -0.207301, 0.924394,
		0.274162, -0.954287, -0.119041,
		0.906815, 0.215318, 0.362387,
		31.281284, 31.344536, 52.668022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.641056, 36.313583, 38.564468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954563, 36.413597, 38.791866>,  <38.142670, 36.473606, 38.928303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954563, 36.413597, 38.791866>,  <37.641056, 36.313583, 38.564468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954563, 36.413597, 38.791866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438066, -0.426285, 0.791442,
		0.440227, -0.869347, -0.224579,
		0.783772, 0.250034, 0.568493,
		38.189693, 36.488605, 38.962414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803585, 35.780830, 38.991516>,  <37.641056, 36.313583, 38.564468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803585, 35.780830, 38.991516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962921, 36.094078, 39.182533>,  <38.058521, 36.282028, 39.297142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.962921, 36.094078, 39.182533>,  <37.803585, 35.780830, 38.991516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962921, 36.094078, 39.182533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604873, -0.167104, 0.778591,
		0.689531, -0.598995, 0.407126,
		0.398340, 0.783123, 0.477540,
		38.082424, 36.329014, 39.325794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069141, 35.516407, 39.692261>,  <37.803585, 35.780830, 38.991516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069141, 35.516407, 39.692261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010334, 35.911057, 39.720436>,  <37.975052, 36.147846, 39.737343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010334, 35.911057, 39.720436>,  <38.069141, 35.516407, 39.692261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010334, 35.911057, 39.720436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571528, -0.142852, 0.808053,
		0.807305, 0.078541, 0.584884,
		-0.147017, 0.986623, 0.070437,
		37.966228, 36.207043, 39.741566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193619, 35.645977, 40.387718>,  <38.069141, 35.516407, 39.692261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193619, 35.645977, 40.387718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960171, 35.936916, 40.243301>,  <37.820103, 36.111481, 40.156651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.960171, 35.936916, 40.243301>,  <38.193619, 35.645977, 40.387718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960171, 35.936916, 40.243301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637990, -0.135664, 0.758000,
		0.502347, 0.672730, 0.543215,
		-0.583624, 0.727345, -0.361044,
		37.785084, 36.155121, 40.134987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093857, 36.205658, 40.929817>,  <38.193619, 35.645977, 40.387718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093857, 36.205658, 40.929817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791515, 36.214138, 40.668056>,  <37.610111, 36.219227, 40.511002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791515, 36.214138, 40.668056>,  <38.093857, 36.205658, 40.929817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791515, 36.214138, 40.668056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645555, -0.190967, 0.739453,
		-0.109289, 0.981368, 0.158031,
		-0.755854, 0.021204, -0.654397,
		37.564758, 36.220501, 40.471737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675789, 36.516159, 41.347870>,  <38.093857, 36.205658, 40.929817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675789, 36.516159, 41.347870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423370, 36.426849, 41.050701>,  <37.271919, 36.373264, 40.872398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.423370, 36.426849, 41.050701>,  <37.675789, 36.516159, 41.347870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.423370, 36.426849, 41.050701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737408, -0.124699, 0.663837,
		-0.240862, 0.966745, -0.085957,
		-0.631043, -0.223279, -0.742921,
		37.234058, 36.359867, 40.827824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031860, 36.994583, 41.274181>,  <37.675789, 36.516159, 41.347870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031860, 36.994583, 41.274181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907776, 36.645603, 41.123127>,  <36.833324, 36.436214, 41.032494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.907776, 36.645603, 41.123127>,  <37.031860, 36.994583, 41.274181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907776, 36.645603, 41.123127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714332, -0.048199, 0.698145,
		-0.627295, 0.486329, -0.608264,
		-0.310211, -0.872445, -0.377635,
		36.814713, 36.383869, 41.009838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409645, 36.969559, 41.637703>,  <37.031860, 36.994583, 41.274181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409645, 36.969559, 41.637703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448547, 36.612541, 41.461559>,  <36.471889, 36.398331, 41.355873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448547, 36.612541, 41.461559>,  <36.409645, 36.969559, 41.637703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448547, 36.612541, 41.461559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727248, -0.365788, 0.580784,
		-0.679450, 0.263768, -0.684671,
		0.097252, -0.892539, -0.440359,
		36.477722, 36.344780, 41.329453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801617, 36.826874, 41.430897>,  <36.409645, 36.969559, 41.637703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801617, 36.826874, 41.430897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964977, 36.461853, 41.439476>,  <36.062996, 36.242840, 41.444622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964977, 36.461853, 41.439476>,  <35.801617, 36.826874, 41.430897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964977, 36.461853, 41.439476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814023, -0.353480, 0.460888,
		-0.413004, -0.205681, -0.887199,
		0.408403, -0.912550, 0.021440,
		36.087498, 36.188087, 41.445908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350227, 36.347038, 41.276718>,  <35.801617, 36.826874, 41.430897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350227, 36.347038, 41.276718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593033, 36.090527, 41.464462>,  <35.738716, 35.936619, 41.577106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.593033, 36.090527, 41.464462>,  <35.350227, 36.347038, 41.276718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593033, 36.090527, 41.464462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761490, -0.300432, 0.574347,
		-0.227307, -0.706046, -0.670694,
		0.607013, -0.641280, 0.469357,
		35.775135, 35.898144, 41.605270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049385, 35.685253, 41.276901>,  <35.350227, 36.347038, 41.276718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049385, 35.685253, 41.276901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308475, 35.656067, 41.580250>,  <35.463928, 35.638554, 41.762260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308475, 35.656067, 41.580250>,  <35.049385, 35.685253, 41.276901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308475, 35.656067, 41.580250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704523, -0.436257, 0.559757,
		0.290003, -0.896859, -0.333981,
		0.647724, -0.072966, 0.758373,
		35.502792, 35.634178, 41.807762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889496, 35.059498, 41.573669>,  <35.049385, 35.685253, 41.276901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889496, 35.059498, 41.573669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111412, 35.242332, 41.851742>,  <35.244560, 35.352036, 42.018585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.111412, 35.242332, 41.851742>,  <34.889496, 35.059498, 41.573669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.111412, 35.242332, 41.851742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677165, -0.237379, 0.696491,
		0.483380, -0.857158, 0.177830,
		0.554789, 0.457090, 0.695182,
		35.277847, 35.379459, 42.060295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047558, 34.418106, 41.301270>,  <34.889496, 35.059498, 41.573669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047558, 34.418106, 41.301270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820770, 34.133461, 41.135307>,  <34.684696, 33.962673, 41.035728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820770, 34.133461, 41.135307>,  <35.047558, 34.418106, 41.301270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820770, 34.133461, 41.135307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141683, 0.411938, -0.900129,
		0.811463, -0.569131, -0.132732,
		-0.566969, -0.711616, -0.414909,
		34.650681, 33.919975, 41.010834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382927, 34.099968, 40.736313>,  <35.047558, 34.418106, 41.301270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382927, 34.099968, 40.736313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991512, 34.042439, 40.677288>,  <34.756664, 34.007923, 40.641872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.991512, 34.042439, 40.677288>,  <35.382927, 34.099968, 40.736313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991512, 34.042439, 40.677288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117641, 0.198005, -0.973116,
		0.169171, -0.969593, -0.176837,
		-0.978541, -0.143819, -0.147560,
		34.697948, 33.999290, 40.633018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.351788, 33.705227, 40.090393>,  <35.382927, 34.099968, 40.736313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.351788, 33.705227, 40.090393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005913, 33.894630, 40.157463>,  <34.798389, 34.008270, 40.197704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005913, 33.894630, 40.157463>,  <35.351788, 33.705227, 40.090393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005913, 33.894630, 40.157463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022970, 0.370734, -0.928455,
		-0.501792, -0.798968, -0.331444,
		-0.864683, 0.473505, 0.167679,
		34.746510, 34.036682, 40.207767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949482, 33.631214, 39.422054>,  <35.351788, 33.705227, 40.090393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949482, 33.631214, 39.422054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739662, 33.914295, 39.611370>,  <34.613770, 34.084145, 39.724960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.739662, 33.914295, 39.611370>,  <34.949482, 33.631214, 39.422054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739662, 33.914295, 39.611370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086705, 0.508613, -0.856618,
		-0.846951, -0.490378, -0.205433,
		-0.524553, 0.707702, 0.473288,
		34.582294, 34.126606, 39.753357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317188, 33.744175, 39.049343>,  <34.949482, 33.631214, 39.422054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317188, 33.744175, 39.049343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385281, 34.081673, 39.252953>,  <34.426136, 34.284172, 39.375118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385281, 34.081673, 39.252953>,  <34.317188, 33.744175, 39.049343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385281, 34.081673, 39.252953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016386, 0.514071, -0.857591,
		-0.985267, 0.154333, 0.073687,
		0.170235, 0.843749, 0.509026,
		34.436352, 34.334797, 39.405659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731380, 34.200516, 38.874130>,  <34.317188, 33.744175, 39.049343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731380, 34.200516, 38.874130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017937, 34.436016, 39.023880>,  <34.189873, 34.577316, 39.113731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.017937, 34.436016, 39.023880>,  <33.731380, 34.200516, 38.874130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017937, 34.436016, 39.023880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010569, 0.527368, -0.849571,
		-0.697617, 0.612583, 0.371581,
		0.716393, 0.588748, 0.374375,
		34.232853, 34.612640, 39.136192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504795, 34.865505, 38.810047>,  <33.731380, 34.200516, 38.874130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504795, 34.865505, 38.810047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890785, 34.955807, 38.863506>,  <34.122379, 35.009987, 38.895580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.890785, 34.955807, 38.863506>,  <33.504795, 34.865505, 38.810047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.890785, 34.955807, 38.863506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048695, 0.654710, -0.754310,
		-0.257788, 0.721381, 0.642771,
		0.964974, 0.225752, 0.133649,
		34.180279, 35.023533, 38.903603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.520687, 35.551487, 38.597618>,  <33.504795, 34.865505, 38.810047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.520687, 35.551487, 38.597618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913322, 35.475117, 38.595638>,  <34.148903, 35.429295, 38.594448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913322, 35.475117, 38.595638>,  <33.520687, 35.551487, 38.597618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913322, 35.475117, 38.595638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127552, 0.674621, -0.727061,
		0.142158, 0.713045, 0.686555,
		0.981591, -0.190929, -0.004953,
		34.207798, 35.417839, 38.594151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.842857, 36.252449, 38.505627>,  <33.520687, 35.551487, 38.597618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.842857, 36.252449, 38.505627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107288, 35.975742, 38.389393>,  <34.265945, 35.809719, 38.319653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.107288, 35.975742, 38.389393>,  <33.842857, 36.252449, 38.505627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107288, 35.975742, 38.389393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243505, 0.564116, -0.788973,
		0.709705, 0.450815, 0.541373,
		0.661078, -0.691765, -0.290581,
		34.305611, 35.768211, 38.302219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.427441, 36.712616, 38.190468>,  <33.842857, 36.252449, 38.505627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.427441, 36.712616, 38.190468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471886, 36.344444, 38.040558>,  <34.498550, 36.123539, 37.950611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471886, 36.344444, 38.040558>,  <34.427441, 36.712616, 38.190468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471886, 36.344444, 38.040558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134359, 0.387564, -0.911999,
		0.984684, 0.050977, 0.166730,
		0.111109, -0.920433, -0.374778,
		34.505219, 36.068314, 37.928123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007675, 36.811718, 37.677330>,  <34.427441, 36.712616, 38.190468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007675, 36.811718, 37.677330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827454, 36.470650, 37.571529>,  <34.719322, 36.266010, 37.508049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827454, 36.470650, 37.571529>,  <35.007675, 36.811718, 37.677330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827454, 36.470650, 37.571529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182474, 0.202071, -0.962221,
		0.873903, -0.481796, 0.064546,
		-0.450552, -0.852666, -0.264506,
		34.692287, 36.214851, 37.492176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549599, 36.430424, 37.256775>,  <35.007675, 36.811718, 37.677330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549599, 36.430424, 37.256775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175564, 36.316765, 37.172047>,  <34.951141, 36.248569, 37.121208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175564, 36.316765, 37.172047>,  <35.549599, 36.430424, 37.256775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175564, 36.316765, 37.172047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227287, -0.022200, -0.973575,
		0.271936, -0.958523, 0.085342,
		-0.935089, -0.284148, -0.211823,
		34.895039, 36.231522, 37.108501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565437, 35.774258, 36.811077>,  <35.549599, 36.430424, 37.256775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565437, 35.774258, 36.811077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190075, 35.899750, 36.753147>,  <34.964859, 35.975044, 36.718388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.190075, 35.899750, 36.753147>,  <35.565437, 35.774258, 36.811077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190075, 35.899750, 36.753147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135509, -0.051423, -0.989441,
		-0.317867, -0.948118, 0.005742,
		-0.938402, 0.313732, -0.144824,
		34.908554, 35.993870, 36.709702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226246, 35.563831, 36.858208>,  <35.565437, 35.774258, 36.811077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226246, 35.563831, 36.858208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037453, 35.230694, 36.742546>,  <35.924179, 35.030811, 36.673149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037453, 35.230694, 36.742546>,  <36.226246, 35.563831, 36.858208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037453, 35.230694, 36.742546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881458, -0.451867, -0.137290,
		-0.016319, -0.319676, 0.947386,
		-0.471981, -0.832841, -0.289155,
		35.895859, 34.980843, 36.655800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404385, 35.057652, 37.369797>,  <36.226246, 35.563831, 36.858208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404385, 35.057652, 37.369797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299927, 34.833652, 37.055294>,  <36.237251, 34.699253, 36.866592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299927, 34.833652, 37.055294>,  <36.404385, 35.057652, 37.369797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299927, 34.833652, 37.055294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822976, -0.554854, 0.121850,
		-0.504496, -0.615254, 0.605760,
		-0.261140, -0.559999, -0.786261,
		36.221584, 34.665653, 36.819416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024467, 34.675724, 37.784809>,  <36.404385, 35.057652, 37.369797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024467, 34.675724, 37.784809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401237, 34.557739, 37.849030>,  <37.627300, 34.486950, 37.887562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401237, 34.557739, 37.849030>,  <37.024467, 34.675724, 37.784809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401237, 34.557739, 37.849030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278493, 0.953237, 0.117389,
		-0.187668, -0.065859, 0.980022,
		0.941925, -0.294959, 0.160551,
		37.683815, 34.469250, 37.897194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.246254, 34.845158, 38.459507>,  <37.024467, 34.675724, 37.784809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.246254, 34.845158, 38.459507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499195, 34.844505, 38.149635>,  <37.650959, 34.844116, 37.963711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.499195, 34.844505, 38.149635>,  <37.246254, 34.845158, 38.459507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499195, 34.844505, 38.149635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224402, 0.957510, 0.181160,
		0.741469, -0.288397, 0.605848,
		0.632351, -0.001629, -0.774681,
		37.688900, 34.844017, 37.917233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123798, 34.050533, 38.364483>,  <37.246254, 34.845158, 38.459507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123798, 34.050533, 38.364483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496365, 33.934052, 38.451809>,  <37.719906, 33.864162, 38.504204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496365, 33.934052, 38.451809>,  <37.123798, 34.050533, 38.364483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496365, 33.934052, 38.451809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300742, -0.277961, 0.912300,
		-0.204981, -0.915390, -0.346475,
		0.931417, -0.291204, 0.218320,
		37.775791, 33.846687, 38.517303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241516, 33.295902, 38.448872>,  <37.123798, 34.050533, 38.364483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241516, 33.295902, 38.448872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489742, 33.515514, 38.672825>,  <37.638676, 33.647282, 38.807198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.489742, 33.515514, 38.672825>,  <37.241516, 33.295902, 38.448872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489742, 33.515514, 38.672825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433568, -0.354699, 0.828376,
		0.653393, -0.756806, 0.017929,
		0.620561, 0.549029, 0.559885,
		37.675911, 33.680222, 38.840790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586933, 32.875008, 39.024563>,  <37.241516, 33.295902, 38.448872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.586933, 32.875008, 39.024563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618587, 33.251675, 39.155411>,  <37.637581, 33.477673, 39.233921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.618587, 33.251675, 39.155411>,  <37.586933, 32.875008, 39.024563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.618587, 33.251675, 39.155411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354516, -0.280114, 0.892107,
		0.931695, -0.186564, 0.311669,
		0.079132, 0.941663, 0.327121,
		37.642326, 33.534172, 39.253548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811115, 32.706814, 39.643860>,  <37.586933, 32.875008, 39.024563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811115, 32.706814, 39.643860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705975, 33.088844, 39.698601>,  <37.642891, 33.318062, 39.731445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.705975, 33.088844, 39.698601>,  <37.811115, 32.706814, 39.643860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.705975, 33.088844, 39.698601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379936, -0.232845, 0.895227,
		0.886880, 0.183319, 0.424074,
		-0.262856, 0.955080, 0.136856,
		37.627117, 33.375370, 39.739658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132484, 32.977592, 40.219028>,  <37.811115, 32.706814, 39.643860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132484, 32.977592, 40.219028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790775, 33.178616, 40.165890>,  <37.585751, 33.299229, 40.134007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.790775, 33.178616, 40.165890>,  <38.132484, 32.977592, 40.219028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.790775, 33.178616, 40.165890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353644, -0.374572, 0.857107,
		0.380981, 0.779188, 0.497714,
		-0.854277, 0.502554, -0.132850,
		37.534492, 33.329380, 40.126034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007828, 33.171177, 40.853405>,  <38.132484, 32.977592, 40.219028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007828, 33.171177, 40.853405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660366, 33.239025, 40.667217>,  <37.451889, 33.279736, 40.555504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660366, 33.239025, 40.667217>,  <38.007828, 33.171177, 40.853405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660366, 33.239025, 40.667217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494271, -0.360496, 0.791036,
		-0.033624, 0.917208, 0.396987,
		-0.868657, 0.169621, -0.465471,
		37.399769, 33.289913, 40.527576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617283, 33.461823, 41.339550>,  <38.007828, 33.171177, 40.853405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617283, 33.461823, 41.339550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336452, 33.322205, 41.091270>,  <37.167953, 33.238434, 40.942303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336452, 33.322205, 41.091270>,  <37.617283, 33.461823, 41.339550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336452, 33.322205, 41.091270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500964, -0.377376, 0.778860,
		-0.506090, 0.857763, 0.090089,
		-0.702074, -0.349042, -0.620695,
		37.125832, 33.217491, 40.905064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903053, 33.688721, 41.524403>,  <37.617283, 33.461823, 41.339550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903053, 33.688721, 41.524403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856400, 33.340740, 41.332745>,  <36.828407, 33.131954, 41.217751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.856400, 33.340740, 41.332745>,  <36.903053, 33.688721, 41.524403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.856400, 33.340740, 41.332745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456946, -0.381344, 0.803603,
		-0.881815, 0.312674, -0.353041,
		-0.116636, -0.869949, -0.479150,
		36.821407, 33.079754, 41.188999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.098732, 33.480034, 41.623764>,  <36.903053, 33.688721, 41.524403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.098732, 33.480034, 41.623764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337486, 33.175930, 41.521217>,  <36.480740, 32.993465, 41.459690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.337486, 33.175930, 41.521217>,  <36.098732, 33.480034, 41.623764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337486, 33.175930, 41.521217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322441, -0.519895, 0.791038,
		-0.734683, -0.389497, -0.555458,
		0.596887, -0.760264, -0.256368,
		36.516552, 32.947849, 41.444305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729321, 32.790527, 41.613220>,  <36.098732, 33.480034, 41.623764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729321, 32.790527, 41.613220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113022, 32.687580, 41.659847>,  <36.343243, 32.625813, 41.687824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113022, 32.687580, 41.659847>,  <35.729321, 32.790527, 41.613220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113022, 32.687580, 41.659847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257774, -0.628319, 0.734008,
		-0.115672, -0.734149, -0.669063,
		0.959256, -0.257371, 0.116566,
		36.400799, 32.610371, 41.694817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739792, 31.986410, 41.704910>,  <35.729321, 32.790527, 41.613220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739792, 31.986410, 41.704910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089703, 32.120876, 41.844486>,  <36.299648, 32.201557, 41.928234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.089703, 32.120876, 41.844486>,  <35.739792, 31.986410, 41.704910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.089703, 32.120876, 41.844486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041909, -0.664976, 0.745688,
		0.482714, -0.666933, -0.567616,
		0.874775, 0.336165, 0.348944,
		36.352135, 32.221725, 41.949169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073101, 31.369934, 41.848988>,  <35.739792, 31.986410, 41.704910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073101, 31.369934, 41.848988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236340, 31.665457, 42.063511>,  <36.334282, 31.842770, 42.192223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236340, 31.665457, 42.063511>,  <36.073101, 31.369934, 41.848988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236340, 31.665457, 42.063511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046530, -0.603518, 0.795991,
		0.911751, -0.299889, -0.280671,
		0.408099, 0.738805, 0.536305,
		36.358768, 31.887098, 42.224403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538811, 31.088816, 42.138176>,  <36.073101, 31.369934, 41.848988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538811, 31.088816, 42.138176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505531, 31.414066, 42.368622>,  <36.485565, 31.609217, 42.506889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.505531, 31.414066, 42.368622>,  <36.538811, 31.088816, 42.138176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505531, 31.414066, 42.368622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218491, -0.549166, 0.806646,
		0.972286, 0.192984, -0.131972,
		-0.083196, 0.813126, 0.576112,
		36.480572, 31.658005, 42.541454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106735, 31.087395, 42.573845>,  <36.538811, 31.088816, 42.138176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106735, 31.087395, 42.573845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867264, 31.345884, 42.763149>,  <36.723579, 31.500978, 42.876732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867264, 31.345884, 42.763149>,  <37.106735, 31.087395, 42.573845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867264, 31.345884, 42.763149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100317, -0.525699, 0.844735,
		0.794679, 0.553204, 0.249900,
		-0.598683, 0.646224, 0.473258,
		36.687660, 31.539751, 42.905128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443600, 31.371742, 43.254871>,  <37.106735, 31.087395, 42.573845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443600, 31.371742, 43.254871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044888, 31.391901, 43.279808>,  <36.805660, 31.403997, 43.294769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.044888, 31.391901, 43.279808>,  <37.443600, 31.371742, 43.254871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.044888, 31.391901, 43.279808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020708, -0.589363, 0.807603,
		0.077442, 0.806295, 0.586422,
		-0.996782, 0.050399, 0.062338,
		36.745853, 31.407021, 43.298508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372414, 31.805214, 43.776993>,  <37.443600, 31.371742, 43.254871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372414, 31.805214, 43.776993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000202, 31.658861, 43.770794>,  <36.776875, 31.571049, 43.767075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000202, 31.658861, 43.770794>,  <37.372414, 31.805214, 43.776993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000202, 31.658861, 43.770794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020683, -0.094763, 0.995285,
		-0.365625, 0.925825, 0.095747,
		-0.930533, -0.365881, -0.015499,
		36.721043, 31.549097, 43.766144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073936, 32.017620, 44.436241>,  <37.372414, 31.805214, 43.776993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073936, 32.017620, 44.436241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820084, 31.727930, 44.328362>,  <36.667770, 31.554115, 44.263634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820084, 31.727930, 44.328362>,  <37.073936, 32.017620, 44.436241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820084, 31.727930, 44.328362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158975, -0.219174, 0.962647,
		-0.756284, 0.653804, 0.023961,
		-0.634635, -0.724226, -0.269696,
		36.629692, 31.510662, 44.247452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513535, 32.075939, 44.878887>,  <37.073936, 32.017620, 44.436241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513535, 32.075939, 44.878887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486073, 31.705055, 44.731606>,  <36.469597, 31.482525, 44.643238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486073, 31.705055, 44.731606>,  <36.513535, 32.075939, 44.878887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486073, 31.705055, 44.731606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323132, -0.328513, 0.887504,
		-0.943860, 0.179907, -0.277058,
		-0.068652, -0.927207, -0.368204,
		36.465477, 31.426893, 44.621143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920479, 31.818628, 45.188484>,  <36.513535, 32.075939, 44.878887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920479, 31.818628, 45.188484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109596, 31.483723, 45.078606>,  <36.223068, 31.282780, 45.012680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109596, 31.483723, 45.078606>,  <35.920479, 31.818628, 45.188484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109596, 31.483723, 45.078606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273256, -0.435681, 0.857621,
		-0.837734, -0.330415, -0.434773,
		0.472793, -0.837262, -0.274697,
		36.251434, 31.232544, 44.996197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454796, 31.344290, 45.292477>,  <35.920479, 31.818628, 45.188484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454796, 31.344290, 45.292477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801945, 31.145575, 45.292290>,  <36.010235, 31.026344, 45.292175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801945, 31.145575, 45.292290>,  <35.454796, 31.344290, 45.292477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801945, 31.145575, 45.292290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323314, -0.565533, 0.758710,
		-0.377185, -0.658310, -0.651429,
		0.867871, -0.496790, -0.000470,
		36.062305, 30.996538, 45.292149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329460, 30.671391, 45.447113>,  <35.454796, 31.344290, 45.292477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329460, 30.671391, 45.447113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715427, 30.679319, 45.551834>,  <35.947006, 30.684076, 45.614666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715427, 30.679319, 45.551834>,  <35.329460, 30.671391, 45.447113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715427, 30.679319, 45.551834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230692, -0.412110, 0.881445,
		0.125367, -0.910918, -0.393079,
		0.964917, 0.019824, 0.261807,
		36.004902, 30.685266, 45.630375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523754, 29.978743, 45.649368>,  <35.329460, 30.671391, 45.447113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523754, 29.978743, 45.649368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761341, 30.242029, 45.834389>,  <35.903893, 30.400002, 45.945400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.761341, 30.242029, 45.834389>,  <35.523754, 29.978743, 45.649368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761341, 30.242029, 45.834389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129571, -0.489186, 0.862501,
		0.793986, -0.572231, -0.205275,
		0.593968, 0.658216, 0.462551,
		35.939533, 30.439493, 45.973156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926216, 29.528875, 46.041660>,  <35.523754, 29.978743, 45.649368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926216, 29.528875, 46.041660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951889, 29.904858, 46.175739>,  <35.967293, 30.130447, 46.256187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.951889, 29.904858, 46.175739>,  <35.926216, 29.528875, 46.041660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951889, 29.904858, 46.175739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205766, -0.316212, 0.926105,
		0.976494, -0.128410, 0.173117,
		0.064179, 0.939958, 0.335202,
		35.971142, 30.186846, 46.276299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235401, 29.424797, 46.621307>,  <35.926216, 29.528875, 46.041660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235401, 29.424797, 46.621307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049923, 29.777916, 46.651394>,  <35.938637, 29.989788, 46.669445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.049923, 29.777916, 46.651394>,  <36.235401, 29.424797, 46.621307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049923, 29.777916, 46.651394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330323, -0.251024, 0.909875,
		0.822116, 0.397058, 0.408007,
		-0.463693, 0.882798, 0.075213,
		35.910816, 30.042755, 46.673958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380688, 29.713835, 47.238228>,  <36.235401, 29.424797, 46.621307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380688, 29.713835, 47.238228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039516, 29.896357, 47.136791>,  <35.834816, 30.005869, 47.075932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.039516, 29.896357, 47.136791>,  <36.380688, 29.713835, 47.238228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039516, 29.896357, 47.136791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420021, -0.311373, 0.852425,
		0.310006, 0.833566, 0.457235,
		-0.852924, 0.456305, -0.253588,
		35.783638, 30.033249, 47.060715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981369, 30.127338, 47.617126>,  <36.380688, 29.713835, 47.238228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981369, 30.127338, 47.617126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294590, 30.048325, 47.853031>,  <37.482521, 30.000916, 47.994572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.294590, 30.048325, 47.853031>,  <36.981369, 30.127338, 47.617126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294590, 30.048325, 47.853031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590147, 0.535356, -0.604252,
		-0.196369, 0.821202, 0.535785,
		0.783049, -0.197536, 0.589757,
		37.529503, 29.989063, 48.029957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328468, 30.774660, 47.727631>,  <36.981369, 30.127338, 47.617126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328468, 30.774660, 47.727631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604763, 30.499866, 47.817902>,  <37.770542, 30.334990, 47.872063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.604763, 30.499866, 47.817902>,  <37.328468, 30.774660, 47.727631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604763, 30.499866, 47.817902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664723, 0.480406, -0.572148,
		0.284642, 0.545217, 0.788490,
		0.690740, -0.686985, 0.225675,
		37.811985, 30.293772, 47.885605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011883, 31.174622, 47.752071>,  <37.328468, 30.774660, 47.727631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011883, 31.174622, 47.752071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065067, 30.784763, 47.680084>,  <38.096977, 30.550848, 47.636890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065067, 30.784763, 47.680084>,  <38.011883, 31.174622, 47.752071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065067, 30.784763, 47.680084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730926, 0.219063, -0.646342,
		0.669378, -0.045602, 0.741521,
		0.132965, -0.974644, -0.179968,
		38.104958, 30.492371, 47.626095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705532, 31.145773, 47.812935>,  <38.011883, 31.174622, 47.752071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705532, 31.145773, 47.812935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559200, 30.848316, 47.589088>,  <38.471401, 30.669842, 47.454781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559200, 30.848316, 47.589088>,  <38.705532, 31.145773, 47.812935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559200, 30.848316, 47.589088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620922, 0.252890, -0.741958,
		0.693272, -0.618906, 0.369229,
		-0.365828, -0.743641, -0.559614,
		38.449451, 30.625223, 47.421204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278252, 30.882807, 47.496178>,  <38.705532, 31.145773, 47.812935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278252, 30.882807, 47.496178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996178, 30.697865, 47.281166>,  <38.826931, 30.586899, 47.152161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.996178, 30.697865, 47.281166>,  <39.278252, 30.882807, 47.496178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.996178, 30.697865, 47.281166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466835, 0.267820, -0.842815,
		0.533641, -0.845281, 0.026980,
		-0.705190, -0.462356, -0.537526,
		38.784622, 30.559158, 47.119907>
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
