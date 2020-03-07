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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.471455, 53.433983, 50.208344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650833, 53.080482, 50.261833>,  <36.758461, 52.868382, 50.293926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.650833, 53.080482, 50.261833>,  <36.471455, 53.433983, 50.208344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650833, 53.080482, 50.261833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512290, 0.131537, -0.848680,
		0.732432, 0.449090, 0.511724,
		0.448444, -0.883751, 0.133722,
		36.785366, 52.815357, 50.301949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232258, 53.375805, 50.125618>,  <36.471455, 53.433983, 50.208344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232258, 53.375805, 50.125618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069401, 53.021126, 50.037971>,  <36.971687, 52.808319, 49.985382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069401, 53.021126, 50.037971>,  <37.232258, 53.375805, 50.125618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069401, 53.021126, 50.037971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334365, 0.078555, -0.939164,
		0.849963, -0.455635, 0.264497,
		-0.407139, -0.886693, -0.219118,
		36.947258, 52.755119, 49.972237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610954, 53.503918, 50.812374>,  <37.232258, 53.375805, 50.125618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610954, 53.503918, 50.812374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964817, 53.318726, 50.834419>,  <38.177135, 53.207611, 50.847645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.964817, 53.318726, 50.834419>,  <37.610954, 53.503918, 50.812374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964817, 53.318726, 50.834419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449990, 0.878765, 0.159003,
		-0.122042, -0.115865, 0.985739,
		0.884655, -0.462977, 0.055109,
		38.230213, 53.179832, 50.850952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995815, 53.754585, 51.348240>,  <37.610954, 53.503918, 50.812374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995815, 53.754585, 51.348240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246700, 53.607601, 51.073555>,  <38.397232, 53.519413, 50.908745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.246700, 53.607601, 51.073555>,  <37.995815, 53.754585, 51.348240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246700, 53.607601, 51.073555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582849, 0.806292, 0.100903,
		0.516616, -0.463539, 0.719889,
		0.627212, -0.367458, -0.686716,
		38.434864, 53.497364, 50.867538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313057, 53.472713, 51.791901>,  <37.995815, 53.754585, 51.348240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313057, 53.472713, 51.791901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389366, 53.863873, 51.757679>,  <38.435150, 54.098568, 51.737144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389366, 53.863873, 51.757679>,  <38.313057, 53.472713, 51.791901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389366, 53.863873, 51.757679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901727, -0.140129, 0.408965,
		0.387937, -0.155167, -0.908531,
		0.190769, 0.977899, -0.085557,
		38.446598, 54.157242, 51.732010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005924, 53.550774, 51.456951>,  <38.313057, 53.472713, 51.791901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005924, 53.550774, 51.456951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923817, 53.862923, 51.693214>,  <38.874554, 54.050213, 51.834972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.923817, 53.862923, 51.693214>,  <39.005924, 53.550774, 51.456951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923817, 53.862923, 51.693214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970750, 0.085544, 0.224336,
		0.124538, 0.619435, -0.775107,
		-0.205267, 0.780374, 0.590663,
		38.862236, 54.097034, 51.870415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531471, 54.014713, 51.251194>,  <39.005924, 53.550774, 51.456951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531471, 54.014713, 51.251194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397507, 54.077553, 51.622818>,  <39.317127, 54.115257, 51.845791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.397507, 54.077553, 51.622818>,  <39.531471, 54.014713, 51.251194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.397507, 54.077553, 51.622818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941405, 0.097505, 0.322876,
		-0.039864, 0.982757, -0.180552,
		-0.334914, 0.157101, 0.929060,
		39.297031, 54.124683, 51.901535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816898, 54.621101, 51.483379>,  <39.531471, 54.014713, 51.251194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816898, 54.621101, 51.483379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743755, 54.392879, 51.803635>,  <39.699867, 54.255947, 51.995789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.743755, 54.392879, 51.803635>,  <39.816898, 54.621101, 51.483379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743755, 54.392879, 51.803635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970433, 0.025753, 0.239994,
		-0.157549, 0.820853, 0.548980,
		-0.182862, -0.570559, 0.800640,
		39.688896, 54.221710, 52.043827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053795, 54.939434, 52.153942>,  <39.816898, 54.621101, 51.483379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053795, 54.939434, 52.153942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078617, 54.540695, 52.134186>,  <40.093510, 54.301453, 52.122334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078617, 54.540695, 52.134186>,  <40.053795, 54.939434, 52.153942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078617, 54.540695, 52.134186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966942, 0.047787, 0.250479,
		-0.247330, -0.063298, 0.966861,
		0.062058, -0.996850, -0.049387,
		40.097233, 54.241642, 52.119370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668236, 54.830616, 52.362991>,  <40.053795, 54.939434, 52.153942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668236, 54.830616, 52.362991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580006, 54.450768, 52.273937>,  <40.527069, 54.222858, 52.220505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580006, 54.450768, 52.273937>,  <40.668236, 54.830616, 52.362991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580006, 54.450768, 52.273937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925776, -0.275693, 0.258712,
		-0.307058, -0.149046, 0.939947,
		-0.220577, -0.949620, -0.222637,
		40.513832, 54.165882, 52.207146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606449, 54.430740, 52.989941>,  <40.668236, 54.830616, 52.362991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606449, 54.430740, 52.989941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787209, 54.264542, 52.674179>,  <40.895664, 54.164822, 52.484722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.787209, 54.264542, 52.674179>,  <40.606449, 54.430740, 52.989941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787209, 54.264542, 52.674179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864322, -0.015056, 0.502713,
		-0.220759, -0.909472, 0.352316,
		0.451899, -0.415493, -0.789400,
		40.922779, 54.139893, 52.437359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.979275, 53.861904, 53.345818>,  <40.606449, 54.430740, 52.989941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.979275, 53.861904, 53.345818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154408, 54.004364, 53.015617>,  <41.259487, 54.089840, 52.817497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.154408, 54.004364, 53.015617>,  <40.979275, 53.861904, 53.345818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.154408, 54.004364, 53.015617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850842, 0.132506, 0.508439,
		0.290465, -0.924986, -0.245013,
		0.437834, 0.356151, -0.825505,
		41.285759, 54.111210, 52.767967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.497513, 53.416855, 53.236450>,  <40.979275, 53.861904, 53.345818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.497513, 53.416855, 53.236450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543900, 53.790989, 53.102760>,  <41.571732, 54.015469, 53.022545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.543900, 53.790989, 53.102760>,  <41.497513, 53.416855, 53.236450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.543900, 53.790989, 53.102760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791207, 0.116434, 0.600362,
		0.600453, -0.334062, -0.726539,
		0.115965, 0.935332, -0.334226,
		41.578690, 54.071587, 53.002491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.091988, 53.621040, 52.822151>,  <41.497513, 53.416855, 53.236450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.091988, 53.621040, 52.822151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954597, 53.901695, 53.071865>,  <41.872162, 54.070087, 53.221691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.954597, 53.901695, 53.071865>,  <42.091988, 53.621040, 52.822151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.954597, 53.901695, 53.071865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838920, -0.069590, 0.539787,
		0.422179, 0.709128, -0.564715,
		-0.343480, 0.701637, 0.624281,
		41.851555, 54.112186, 53.259148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666046, 54.118286, 52.979195>,  <42.091988, 53.621040, 52.822151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666046, 54.118286, 52.979195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403214, 54.151855, 53.278847>,  <42.245514, 54.171997, 53.458637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.403214, 54.151855, 53.278847>,  <42.666046, 54.118286, 52.979195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.403214, 54.151855, 53.278847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751455, 0.151537, 0.642146,
		-0.059627, 0.984882, -0.162640,
		-0.657084, 0.083927, 0.749131,
		42.206089, 54.177032, 53.503586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705860, 54.787209, 53.442398>,  <42.666046, 54.118286, 52.979195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705860, 54.787209, 53.442398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576447, 54.472408, 53.652527>,  <42.498798, 54.283527, 53.778603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.576447, 54.472408, 53.652527>,  <42.705860, 54.787209, 53.442398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576447, 54.472408, 53.652527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799814, 0.069196, 0.596247,
		-0.505595, 0.613062, 0.607065,
		-0.323530, -0.786999, 0.525320,
		42.479389, 54.236309, 53.810123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913197, 54.598240, 54.093636>,  <42.705860, 54.787209, 53.442398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913197, 54.598240, 54.093636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869022, 54.200687, 54.093544>,  <42.842518, 53.962154, 54.093491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.869022, 54.200687, 54.093544>,  <42.913197, 54.598240, 54.093636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869022, 54.200687, 54.093544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949669, -0.105586, 0.294924,
		-0.293144, 0.032352, 0.955521,
		-0.110432, -0.993884, -0.000228,
		42.835892, 53.902523, 54.093475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.111454, 54.335274, 54.713688>,  <42.913197, 54.598240, 54.093636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.111454, 54.335274, 54.713688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195950, 54.063797, 54.432335>,  <43.246647, 53.900909, 54.263523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.195950, 54.063797, 54.432335>,  <43.111454, 54.335274, 54.713688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.195950, 54.063797, 54.432335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887417, -0.168479, 0.429075,
		-0.409717, -0.714834, 0.566696,
		0.211241, -0.678695, -0.703385,
		43.259323, 53.860188, 54.221321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624413, 53.810249, 54.728836>,  <43.111454, 54.335274, 54.713688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.624413, 53.810249, 54.728836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408138, 53.608757, 54.998329>,  <43.278374, 53.487862, 55.160027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.408138, 53.608757, 54.998329>,  <43.624413, 53.810249, 54.728836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408138, 53.608757, 54.998329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658841, 0.751550, 0.033174,
		-0.523057, -0.425948, -0.738227,
		-0.540685, -0.503727, 0.673736,
		43.245934, 53.457638, 55.200451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.264584, 53.884357, 54.300930>,  <43.624413, 53.810249, 54.728836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.264584, 53.884357, 54.300930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450050, 53.533585, 54.250332>,  <44.561333, 53.323120, 54.219971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.450050, 53.533585, 54.250332>,  <44.264584, 53.884357, 54.300930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.450050, 53.533585, 54.250332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885945, -0.460592, -0.054377,
		-0.010579, 0.137283, -0.990475,
		0.463670, -0.876931, -0.126497,
		44.589149, 53.270504, 54.212383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986820, 54.040653, 54.237949>,  <44.264584, 53.884357, 54.300930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986820, 54.040653, 54.237949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920483, 54.111900, 54.625923>,  <44.880680, 54.154648, 54.858707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920483, 54.111900, 54.625923>,  <44.986820, 54.040653, 54.237949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920483, 54.111900, 54.625923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948359, -0.240873, 0.206388,
		0.270393, 0.954072, -0.128976,
		-0.165842, 0.178122, 0.969933,
		44.870731, 54.165337, 54.916904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314678, 54.720043, 54.538609>,  <44.986820, 54.040653, 54.237949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314678, 54.720043, 54.538609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274483, 54.415787, 54.795147>,  <45.250366, 54.233234, 54.949070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.274483, 54.415787, 54.795147>,  <45.314678, 54.720043, 54.538609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274483, 54.415787, 54.795147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986246, -0.161177, -0.036626,
		0.131230, 0.628849, 0.766373,
		-0.100489, -0.760639, 0.641351,
		45.244335, 54.187595, 54.987553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.798973, 54.787140, 55.132114>,  <45.314678, 54.720043, 54.538609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.798973, 54.787140, 55.132114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701416, 54.406609, 55.056755>,  <45.642883, 54.178291, 55.011539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701416, 54.406609, 55.056755>,  <45.798973, 54.787140, 55.132114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701416, 54.406609, 55.056755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964899, -0.218525, -0.145661,
		0.097401, -0.217311, 0.971231,
		-0.243892, -0.951327, -0.188398,
		45.628250, 54.121212, 55.000237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252346, 54.586594, 55.534809>,  <45.798973, 54.787140, 55.132114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252346, 54.586594, 55.534809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134243, 54.295406, 55.287300>,  <46.063381, 54.120693, 55.138794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134243, 54.295406, 55.287300>,  <46.252346, 54.586594, 55.534809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134243, 54.295406, 55.287300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953107, -0.269432, -0.137813,
		-0.066394, -0.630450, 0.773385,
		-0.295259, -0.727969, -0.618776,
		46.045666, 54.077015, 55.101665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.418213, 53.994595, 55.866661>,  <46.252346, 54.586594, 55.534809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.418213, 53.994595, 55.866661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425259, 53.996559, 55.466728>,  <46.429485, 53.997738, 55.226768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.425259, 53.996559, 55.466728>,  <46.418213, 53.994595, 55.866661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.425259, 53.996559, 55.466728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985151, -0.170896, 0.016514,
		-0.170786, -0.985277, -0.007853,
		0.017612, 0.004916, -0.999833,
		46.430542, 53.998035, 55.166779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.676090, 53.299057, 55.597874>,  <46.418213, 53.994595, 55.866661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.676090, 53.299057, 55.597874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763969, 53.623951, 55.381721>,  <46.816696, 53.818886, 55.252029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.763969, 53.623951, 55.381721>,  <46.676090, 53.299057, 55.597874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.763969, 53.623951, 55.381721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975327, -0.170528, 0.140206,
		0.021729, -0.557852, -0.829656,
		0.219694, 0.812232, -0.540383,
		46.829876, 53.867622, 55.219608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.262127, 53.140984, 55.148682>,  <46.676090, 53.299057, 55.597874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.262127, 53.140984, 55.148682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255432, 53.540924, 55.146851>,  <47.251415, 53.780888, 55.145752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.255432, 53.540924, 55.146851>,  <47.262127, 53.140984, 55.148682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.255432, 53.540924, 55.146851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999552, 0.016847, 0.024738,
		0.024811, -0.004158, -0.999683,
		-0.016739, 0.999849, -0.004574,
		47.250412, 53.840878, 55.145477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.638790, 53.505547, 54.581802>,  <47.262127, 53.140984, 55.148682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.638790, 53.505547, 54.581802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632458, 53.769379, 54.882389>,  <47.628658, 53.927677, 55.062740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632458, 53.769379, 54.882389>,  <47.638790, 53.505547, 54.581802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632458, 53.769379, 54.882389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988034, 0.125637, -0.089466,
		-0.153422, 0.741059, -0.653676,
		-0.015827, 0.659580, 0.751467,
		47.627708, 53.967255, 55.107830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.901440, 54.162041, 54.473919>,  <47.638790, 53.505547, 54.581802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.901440, 54.162041, 54.473919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.940521, 54.171734, 54.871887>,  <47.963970, 54.177551, 55.110668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.940521, 54.171734, 54.871887>,  <47.901440, 54.162041, 54.473919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.940521, 54.171734, 54.871887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976845, 0.188863, -0.100526,
		-0.190340, 0.981704, -0.005224,
		0.097700, 0.024237, 0.994921,
		47.969830, 54.179005, 55.170364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.318645, 54.748478, 54.698242>,  <47.901440, 54.162041, 54.473919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.318645, 54.748478, 54.698242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.368717, 54.444908, 54.953857>,  <48.398762, 54.262768, 55.107227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.368717, 54.444908, 54.953857>,  <48.318645, 54.748478, 54.698242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.368717, 54.444908, 54.953857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990956, 0.064274, -0.117788,
		0.048318, 0.648001, 0.760105,
		0.125182, -0.758922, 0.639035,
		48.406273, 54.217232, 55.145569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.777203, 55.033909, 55.250481>,  <48.318645, 54.748478, 54.698242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.777203, 55.033909, 55.250481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.792290, 54.645664, 55.155403>,  <48.801342, 54.412720, 55.098358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.792290, 54.645664, 55.155403>,  <48.777203, 55.033909, 55.250481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.792290, 54.645664, 55.155403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938761, 0.115941, -0.324477,
		0.342498, -0.210898, 0.915542,
		0.037717, -0.970608, -0.237692,
		48.803604, 54.354481, 55.084095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.333321, 54.687145, 55.616734>,  <48.777203, 55.033909, 55.250481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.333321, 54.687145, 55.616734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.257664, 54.492424, 55.275620>,  <49.212269, 54.375591, 55.070950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.257664, 54.492424, 55.275620>,  <49.333321, 54.687145, 55.616734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.257664, 54.492424, 55.275620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898236, 0.265107, -0.350559,
		0.396733, -0.832311, 0.387120,
		-0.189146, -0.486803, -0.852788,
		49.200920, 54.346382, 55.019783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.805450, 54.128963, 55.434864>,  <49.333321, 54.687145, 55.616734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.805450, 54.128963, 55.434864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.659130, 54.294479, 55.101402>,  <49.571339, 54.393787, 54.901325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.659130, 54.294479, 55.101402>,  <49.805450, 54.128963, 55.434864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.659130, 54.294479, 55.101402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930585, 0.148857, -0.334445,
		-0.014294, -0.898122, -0.439514,
		-0.365797, 0.413785, -0.833651,
		49.549393, 54.418613, 54.851307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.118988, 53.801964, 54.818989>,  <49.805450, 54.128963, 55.434864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.118988, 53.801964, 54.818989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.992706, 54.169781, 54.725380>,  <49.916939, 54.390472, 54.669212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.992706, 54.169781, 54.725380>,  <50.118988, 53.801964, 54.818989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.992706, 54.169781, 54.725380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933705, 0.257166, -0.249119,
		-0.168892, -0.297160, -0.939772,
		-0.315705, 0.919544, -0.234026,
		49.897995, 54.445644, 54.655170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.567863, 54.047054, 54.378593>,  <50.118988, 53.801964, 54.818989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.567863, 54.047054, 54.378593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.394241, 54.395550, 54.470276>,  <50.290070, 54.604649, 54.525284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.394241, 54.395550, 54.470276>,  <50.567863, 54.047054, 54.378593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.394241, 54.395550, 54.470276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787657, 0.490498, -0.372837,
		-0.437256, 0.018704, -0.899143,
		-0.434054, 0.871241, 0.229206,
		50.264027, 54.656921, 54.539036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.619041, 54.474918, 53.729519>,  <50.567863, 54.047054, 54.378593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.619041, 54.474918, 53.729519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.604366, 54.669216, 54.078850>,  <50.595562, 54.785797, 54.288448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.604366, 54.669216, 54.078850>,  <50.619041, 54.474918, 53.729519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.604366, 54.669216, 54.078850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772623, 0.568053, -0.283493,
		-0.633804, 0.664353, -0.396141,
		-0.036690, 0.485747, 0.873329,
		50.593361, 54.814941, 54.340847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.571358, 55.192898, 53.606861>,  <50.619041, 54.474918, 53.729519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.571358, 55.192898, 53.606861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.751976, 55.148724, 53.961014>,  <50.860348, 55.122219, 54.173508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.751976, 55.148724, 53.961014>,  <50.571358, 55.192898, 53.606861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.751976, 55.148724, 53.961014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725420, 0.623190, -0.292235,
		-0.519490, 0.774234, 0.361514,
		0.451550, -0.110436, 0.885385,
		50.887440, 55.115593, 54.226631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.450153, 55.800510, 53.944172>,  <50.571358, 55.192898, 53.606861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.450153, 55.800510, 53.944172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.773479, 55.602341, 54.071404>,  <50.967476, 55.483437, 54.147743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.773479, 55.602341, 54.071404>,  <50.450153, 55.800510, 53.944172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.773479, 55.602341, 54.071404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588543, 0.665811, -0.458599,
		0.015425, 0.557895, 0.829768,
		0.808319, -0.495428, 0.318075,
		51.015976, 55.453712, 54.166824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.907467, 56.149036, 54.342381>,  <50.450153, 55.800510, 53.944172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.907467, 56.149036, 54.342381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.138229, 55.884453, 54.150692>,  <51.276688, 55.725704, 54.035679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.138229, 55.884453, 54.150692>,  <50.907467, 56.149036, 54.342381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.138229, 55.884453, 54.150692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641174, 0.730201, -0.236014,
		0.506043, -0.171109, 0.845365,
		0.576903, -0.661459, -0.479224,
		51.311298, 55.686016, 54.006924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.587704, 56.158329, 54.636089>,  <50.907467, 56.149036, 54.342381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.587704, 56.158329, 54.636089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.551369, 56.063988, 54.249077>,  <51.529568, 56.007381, 54.016869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.551369, 56.063988, 54.249077>,  <51.587704, 56.158329, 54.636089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.551369, 56.063988, 54.249077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525991, 0.813615, -0.247718,
		0.845625, -0.531415, 0.050154,
		-0.090835, -0.235857, -0.967533,
		51.524117, 55.993229, 53.958817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.313782, 56.081467, 54.365227>,  <51.587704, 56.158329, 54.636089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.313782, 56.081467, 54.365227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.041237, 56.165874, 54.084877>,  <51.877712, 56.216518, 53.916668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.041237, 56.165874, 54.084877>,  <52.313782, 56.081467, 54.365227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.041237, 56.165874, 54.084877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551301, 0.777819, -0.301770,
		0.481473, -0.592005, -0.646307,
		-0.681359, 0.211016, -0.700872,
		51.836830, 56.229179, 53.874615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.637417, 56.167274, 53.720913>,  <52.313782, 56.081467, 54.365227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.637417, 56.167274, 53.720913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.301903, 56.384487, 53.705109>,  <52.100594, 56.514816, 53.695625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.301903, 56.384487, 53.705109>,  <52.637417, 56.167274, 53.720913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.301903, 56.384487, 53.705109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489808, 0.720896, -0.490302,
		-0.237769, -0.430607, -0.870657,
		-0.838781, 0.543034, -0.039508,
		52.050270, 56.547398, 53.693256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.075745, 55.506935, 53.599049>,  <52.637417, 56.167274, 53.720913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.075745, 55.506935, 53.599049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.059574, 55.141819, 53.436478>,  <53.049870, 54.922749, 53.338936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.059574, 55.141819, 53.436478>,  <53.075745, 55.506935, 53.599049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.059574, 55.141819, 53.436478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870026, -0.232185, 0.434909,
		-0.491346, -0.336023, 0.803535,
		-0.040430, -0.912786, -0.406432,
		53.047443, 54.867985, 53.314548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.163261, 54.899044, 54.062752>,  <53.075745, 55.506935, 53.599049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.163261, 54.899044, 54.062752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.303890, 54.825836, 53.695511>,  <53.388268, 54.781910, 53.475166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.303890, 54.825836, 53.695511>,  <53.163261, 54.899044, 54.062752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.303890, 54.825836, 53.695511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888749, -0.242897, 0.388749,
		-0.294152, -0.952631, 0.077264,
		0.351567, -0.183019, -0.918098,
		53.409359, 54.770931, 53.420082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.584209, 54.214279, 54.066128>,  <53.163261, 54.899044, 54.062752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.584209, 54.214279, 54.066128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.686108, 54.484417, 53.789284>,  <53.747246, 54.646500, 53.623177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.686108, 54.484417, 53.789284>,  <53.584209, 54.214279, 54.066128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.686108, 54.484417, 53.789284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967005, -0.179527, 0.180753,
		-0.002181, -0.715318, -0.698795,
		0.254749, 0.675344, -0.692108,
		53.762531, 54.687019, 53.581650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.988529, 53.877712, 53.632744>,  <53.584209, 54.214279, 54.066128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.988529, 53.877712, 53.632744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.088982, 54.262486, 53.589634>,  <54.149254, 54.493351, 53.563770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.088982, 54.262486, 53.589634>,  <53.988529, 53.877712, 53.632744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.088982, 54.262486, 53.589634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963408, -0.259175, -0.068360,
		-0.093690, -0.086662, -0.991822,
		0.251132, 0.961935, -0.107773,
		54.164322, 54.551067, 53.557301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.592152, 53.875919, 53.297726>,  <53.988529, 53.877712, 53.632744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.592152, 53.875919, 53.297726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.610168, 54.263939, 53.393211>,  <54.620979, 54.496750, 53.450500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.610168, 54.263939, 53.393211>,  <54.592152, 53.875919, 53.297726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.610168, 54.263939, 53.393211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997404, -0.030231, -0.065348,
		-0.056174, 0.241034, -0.968890,
		0.045042, 0.970046, 0.238710,
		54.623680, 54.554955, 53.464825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.031002, 54.280167, 52.788170>,  <54.592152, 53.875919, 53.297726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.031002, 54.280167, 52.788170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.039574, 54.456921, 53.146896>,  <55.044716, 54.562973, 53.362133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.039574, 54.456921, 53.146896>,  <55.031002, 54.280167, 52.788170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.039574, 54.456921, 53.146896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998926, 0.027390, -0.037360,
		-0.041073, 0.896655, -0.440821,
		0.021425, 0.441882, 0.896817,
		55.046001, 54.589485, 53.415943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.472691, 54.955360, 52.762913>,  <55.031002, 54.280167, 52.788170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.472691, 54.955360, 52.762913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.459526, 54.760941, 53.112236>,  <55.451630, 54.644287, 53.321831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.459526, 54.760941, 53.112236>,  <55.472691, 54.955360, 52.762913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.459526, 54.760941, 53.112236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999318, -0.001360, 0.036901,
		-0.016748, 0.873929, 0.485766,
		-0.032909, -0.486052, 0.873310,
		55.449654, 54.615124, 53.374229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.812618, 55.253914, 53.315155>,  <55.472691, 54.955360, 52.762913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.812618, 55.253914, 53.315155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.834953, 54.856041, 53.349789>,  <55.848354, 54.617317, 53.370567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.834953, 54.856041, 53.349789>,  <55.812618, 55.253914, 53.315155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.834953, 54.856041, 53.349789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989113, 0.043281, -0.140652,
		0.136156, 0.093494, 0.986266,
		0.055837, -0.994679, 0.086583,
		55.851704, 54.557636, 53.375763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.348122, 55.246635, 53.613438>,  <55.812618, 55.253914, 53.315155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.348122, 55.246635, 53.613438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.322586, 54.862999, 53.503120>,  <56.307266, 54.632816, 53.436932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.322586, 54.862999, 53.503120>,  <56.348122, 55.246635, 53.613438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.322586, 54.862999, 53.503120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997848, -0.065497, -0.003210,
		-0.014985, -0.275401, 0.961213,
		-0.063840, -0.959096, -0.275790,
		56.303432, 54.575272, 53.420383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.782112, 54.876053, 54.025085>,  <56.348122, 55.246635, 53.613438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.782112, 54.876053, 54.025085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.746292, 54.659462, 53.690712>,  <56.724800, 54.529507, 53.490089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.746292, 54.659462, 53.690712>,  <56.782112, 54.876053, 54.025085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.746292, 54.659462, 53.690712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995787, -0.032045, -0.085914,
		0.019733, -0.840106, 0.542063,
		-0.089547, -0.541474, -0.835935,
		56.719429, 54.497021, 53.439930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.318863, 54.303837, 54.077290>,  <56.782112, 54.876053, 54.025085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.318863, 54.303837, 54.077290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.200119, 54.385201, 53.704086>,  <57.128872, 54.434017, 53.480164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.200119, 54.385201, 53.704086>,  <57.318863, 54.303837, 54.077290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.200119, 54.385201, 53.704086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929591, -0.161994, -0.331088,
		-0.218487, -0.965600, -0.140995,
		-0.296858, 0.203406, -0.933007,
		57.111061, 54.446220, 53.424183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.627739, 53.842686, 53.628246>,  <57.318863, 54.303837, 54.077290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.627739, 53.842686, 53.628246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.855217, 53.658379, 53.355694>,  <57.991703, 53.547794, 53.192162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.855217, 53.658379, 53.355694>,  <57.627739, 53.842686, 53.628246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.855217, 53.658379, 53.355694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821611, 0.357767, 0.443800,
		0.039285, -0.812216, 0.582034,
		0.568694, -0.460770, -0.681380,
		58.025826, 53.520149, 53.151279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.053116, 53.242096, 53.894985>,  <57.627739, 53.842686, 53.628246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.053116, 53.242096, 53.894985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.205803, 53.453354, 53.591576>,  <58.297413, 53.580109, 53.409531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.205803, 53.453354, 53.591576>,  <58.053116, 53.242096, 53.894985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.205803, 53.453354, 53.591576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823023, 0.179255, 0.538981,
		0.420628, -0.830020, -0.366248,
		0.381714, 0.528141, -0.758526,
		58.320316, 53.611797, 53.364017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.684097, 52.988411, 53.636967>,  <58.053116, 53.242096, 53.894985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.684097, 52.988411, 53.636967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.629738, 53.384674, 53.641369>,  <58.597122, 53.622433, 53.644009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.629738, 53.384674, 53.641369>,  <58.684097, 52.988411, 53.636967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.629738, 53.384674, 53.641369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697724, 0.087816, 0.710964,
		0.703358, 0.104299, -0.703142,
		-0.135901, 0.990661, 0.011006,
		58.588966, 53.681873, 53.644672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.524727, 53.052914, 54.453861>,  <58.684097, 52.988411, 53.636967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.524727, 53.052914, 54.453861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.773430, 53.302124, 54.264019>,  <58.922653, 53.451653, 54.150116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.773430, 53.302124, 54.264019>,  <58.524727, 53.052914, 54.453861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.773430, 53.302124, 54.264019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582335, 0.772969, 0.251804,
		0.523734, 0.119816, 0.843414,
		0.621762, 0.623028, -0.474603,
		58.959957, 53.489033, 54.121639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.319847, 53.696579, 54.802280>,  <58.524727, 53.052914, 54.453861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.319847, 53.696579, 54.802280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.565636, 53.787968, 54.500225>,  <58.713108, 53.842800, 54.318993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.565636, 53.787968, 54.500225>,  <58.319847, 53.696579, 54.802280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.565636, 53.787968, 54.500225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410268, 0.910087, -0.058492,
		0.673877, 0.345750, 0.652953,
		0.614468, 0.228470, -0.755137,
		58.749977, 53.856510, 54.273685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.701870, 54.222649, 55.076519>,  <58.319847, 53.696579, 54.802280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.701870, 54.222649, 55.076519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.658997, 54.226219, 54.678841>,  <58.633270, 54.228363, 54.440231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.658997, 54.226219, 54.678841>,  <58.701870, 54.222649, 55.076519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.658997, 54.226219, 54.678841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668035, 0.739960, 0.078667,
		0.736370, 0.672592, -0.073348,
		-0.107185, 0.008929, -0.994199,
		58.626842, 54.228897, 54.380581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.815216, 54.871151, 54.778484>,  <58.701870, 54.222649, 55.076519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.815216, 54.871151, 54.778484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.541267, 54.671844, 54.565811>,  <58.376900, 54.552261, 54.438206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.541267, 54.671844, 54.565811>,  <58.815216, 54.871151, 54.778484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.541267, 54.671844, 54.565811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644933, 0.754106, 0.124037,
		0.339143, 0.427850, -0.837811,
		-0.684867, -0.498266, -0.531684,
		58.335808, 54.522366, 54.406307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.496815, 54.645351, 54.913441>,  <58.815216, 54.871151, 54.778484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.496815, 54.645351, 54.913441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.648315, 54.317116, 54.742241>,  <59.739216, 54.120174, 54.639523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.648315, 54.317116, 54.742241>,  <59.496815, 54.645351, 54.913441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.648315, 54.317116, 54.742241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604727, -0.130651, 0.785644,
		-0.700608, -0.556387, 0.446747,
		0.378754, -0.820588, -0.427997,
		59.761940, 54.070938, 54.613842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.491497, 54.499344, 55.624447>,  <59.496815, 54.645351, 54.913441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.491497, 54.499344, 55.624447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.744286, 54.385979, 55.335922>,  <59.895958, 54.317959, 55.162807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.744286, 54.385979, 55.335922>,  <59.491497, 54.499344, 55.624447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.744286, 54.385979, 55.335922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774800, 0.251610, 0.579981,
		0.017114, -0.925402, 0.378600,
		0.631975, -0.283413, -0.721308,
		59.933880, 54.300957, 55.119530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.106056, 54.325649, 55.967278>,  <59.491497, 54.499344, 55.624447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.106056, 54.325649, 55.967278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.795990, 54.457817, 56.182663>,  <59.609951, 54.537117, 56.311893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.795990, 54.457817, 56.182663>,  <60.106056, 54.325649, 55.967278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.795990, 54.457817, 56.182663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226331, -0.940994, 0.251606,
		0.589830, 0.073164, 0.804206,
		-0.775161, 0.330421, 0.538467,
		59.563442, 54.556942, 56.344204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.096725, 53.936188, 56.678585>,  <60.106056, 54.325649, 55.967278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.096725, 53.936188, 56.678585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.715965, 54.013634, 56.583588>,  <59.487511, 54.060101, 56.526588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.715965, 54.013634, 56.583588>,  <60.096725, 53.936188, 56.678585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.715965, 54.013634, 56.583588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228379, -0.965038, 0.128627,
		-0.204285, 0.176678, 0.962835,
		-0.951898, 0.193615, -0.237493,
		59.430397, 54.071716, 56.512341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.817608, 53.314953, 56.944401>,  <60.096725, 53.936188, 56.678585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.817608, 53.314953, 56.944401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.888588, 53.016769, 57.201401>,  <59.931175, 52.837860, 57.355602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.888588, 53.016769, 57.201401>,  <59.817608, 53.314953, 56.944401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.888588, 53.016769, 57.201401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951926, 0.295660, 0.080133,
		-0.249698, 0.597396, 0.762082,
		0.177446, -0.745455, 0.642503,
		59.941822, 52.793133, 57.394150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.012230, 53.540501, 57.625973>,  <59.817608, 53.314953, 56.944401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.012230, 53.540501, 57.625973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.167084, 53.195183, 57.496452>,  <60.259995, 52.987991, 57.418739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.167084, 53.195183, 57.496452>,  <60.012230, 53.540501, 57.625973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.167084, 53.195183, 57.496452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920439, 0.382432, 0.080855,
		0.054030, -0.329341, 0.942664,
		0.387134, -0.863296, -0.323801,
		60.283222, 52.936195, 57.399311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.635761, 53.229965, 58.094368>,  <60.012230, 53.540501, 57.625973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.635761, 53.229965, 58.094368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.667030, 53.091866, 57.720268>,  <60.685791, 53.009007, 57.495808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.667030, 53.091866, 57.720268>,  <60.635761, 53.229965, 58.094368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.667030, 53.091866, 57.720268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960328, 0.277975, -0.022345,
		0.267691, -0.896401, 0.353279,
		0.078172, -0.345245, -0.935251,
		60.690483, 52.988293, 57.439693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.102306, 52.716850, 58.087479>,  <60.635761, 53.229965, 58.094368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.102306, 52.716850, 58.087479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.067078, 52.974007, 57.783127>,  <61.045940, 53.128300, 57.600517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.067078, 52.974007, 57.783127>,  <61.102306, 52.716850, 58.087479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.067078, 52.974007, 57.783127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892483, 0.390171, 0.226364,
		0.442400, -0.659137, -0.608128,
		-0.088069, 0.642888, -0.760881,
		61.040657, 53.166874, 57.554863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.634277, 52.634796, 57.464699>,  <61.102306, 52.716850, 58.087479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.634277, 52.634796, 57.464699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.500824, 53.011551, 57.480354>,  <61.420753, 53.237606, 57.489746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.500824, 53.011551, 57.480354>,  <61.634277, 52.634796, 57.464699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.500824, 53.011551, 57.480354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942344, 0.334364, -0.013734,
		-0.026023, 0.032301, -0.999139,
		-0.333632, 0.941890, 0.039140,
		61.400734, 53.294117, 57.492096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.050293, 52.939907, 56.975048>,  <61.634277, 52.634796, 57.464699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.050293, 52.939907, 56.975048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.891747, 53.177879, 57.254745>,  <61.796619, 53.320663, 57.422565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.891747, 53.177879, 57.254745>,  <62.050293, 52.939907, 56.975048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.891747, 53.177879, 57.254745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890747, 0.433699, 0.135923,
		-0.222399, 0.676729, -0.701838,
		-0.396370, 0.594931, 0.699248,
		61.772835, 53.356358, 57.464520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.310986, 53.602570, 56.784172>,  <62.050293, 52.939907, 56.975048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.310986, 53.602570, 56.784172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.222404, 53.573097, 57.173126>,  <62.169254, 53.555416, 57.406498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.222404, 53.573097, 57.173126>,  <62.310986, 53.602570, 56.784172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.222404, 53.573097, 57.173126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775229, 0.591618, 0.221377,
		-0.591590, 0.802845, -0.073898,
		-0.221451, -0.073676, 0.972384,
		62.155968, 53.550995, 57.464840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.290710, 54.372719, 57.219589>,  <62.310986, 53.602570, 56.784172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.290710, 54.372719, 57.219589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.430511, 54.040802, 57.393616>,  <62.514393, 53.841652, 57.498032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.430511, 54.040802, 57.393616>,  <62.290710, 54.372719, 57.219589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.430511, 54.040802, 57.393616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877285, 0.452870, 0.158994,
		-0.328963, 0.326111, 0.886248,
		0.349505, -0.829795, 0.435070,
		62.535362, 53.791862, 57.524136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.659622, 54.463715, 57.844196>,  <62.290710, 54.372719, 57.219589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.659622, 54.463715, 57.844196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.852829, 54.148567, 57.691376>,  <62.968754, 53.959480, 57.599686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.852829, 54.148567, 57.691376>,  <62.659622, 54.463715, 57.844196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.852829, 54.148567, 57.691376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875330, 0.445513, 0.187924,
		0.022149, -0.425190, 0.904833,
		0.483018, -0.787865, -0.382049,
		62.997734, 53.912209, 57.576759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.083691, 54.030338, 58.427361>,  <62.659622, 54.463715, 57.844196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.083691, 54.030338, 58.427361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.197159, 54.034096, 58.043808>,  <63.265240, 54.036350, 57.813679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.197159, 54.034096, 58.043808>,  <63.083691, 54.030338, 58.427361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.197159, 54.034096, 58.043808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819189, 0.517415, 0.247410,
		0.498460, -0.855683, 0.139082,
		0.283667, 0.009390, -0.958876,
		63.282261, 54.036911, 57.756145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.701626, 53.673054, 58.333557>,  <63.083691, 54.030338, 58.427361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.701626, 53.673054, 58.333557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.660721, 53.984894, 58.086411>,  <63.636177, 54.171997, 57.938122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.660721, 53.984894, 58.086411>,  <63.701626, 53.673054, 58.333557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.660721, 53.984894, 58.086411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822391, 0.415708, 0.388407,
		0.559656, -0.468409, -0.683650,
		-0.102265, 0.779602, -0.617869,
		63.630043, 54.218773, 57.901051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.164780, 53.738411, 57.742413>,  <63.701626, 53.673054, 58.333557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.164780, 53.738411, 57.742413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.076981, 54.108059, 57.867516>,  <64.024300, 54.329849, 57.942577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.076981, 54.108059, 57.867516>,  <64.164780, 53.738411, 57.742413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.076981, 54.108059, 57.867516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949417, 0.128541, 0.286504,
		0.224562, 0.359829, -0.905591,
		-0.219498, 0.924121, 0.312762,
		64.011131, 54.385296, 57.961346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.689232, 54.167530, 57.562057>,  <64.164780, 53.738411, 57.742413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.689232, 54.167530, 57.562057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.520409, 54.316002, 57.892899>,  <64.419113, 54.405083, 58.091404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.520409, 54.316002, 57.892899>,  <64.689232, 54.167530, 57.562057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.520409, 54.316002, 57.892899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906286, 0.149833, 0.395217,
		0.022768, 0.916394, -0.399629,
		-0.422052, 0.371176, 0.827103,
		64.393791, 54.427353, 58.141029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.920242, 54.920471, 57.707470>,  <64.689232, 54.167530, 57.562057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.920242, 54.920471, 57.707470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.815033, 54.720348, 58.037445>,  <64.751907, 54.600273, 58.235428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.815033, 54.720348, 58.037445>,  <64.920242, 54.920471, 57.707470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.815033, 54.720348, 58.037445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933944, 0.082453, 0.347780,
		-0.242014, 0.861914, 0.445571,
		-0.263018, -0.500306, 0.824934,
		64.736130, 54.570255, 58.284924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.320908, 55.291996, 58.362560>,  <64.920242, 54.920471, 57.707470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.320908, 55.291996, 58.362560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.276001, 54.894791, 58.377144>,  <65.249062, 54.656467, 58.385895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.276001, 54.894791, 58.377144>,  <65.320908, 55.291996, 58.362560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.276001, 54.894791, 58.377144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962678, -0.099589, 0.251663,
		-0.246273, 0.063348, 0.967128,
		-0.112257, -0.993010, 0.036458,
		65.242325, 54.596889, 58.388081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.799980, 54.848763, 58.495708>,  <65.320908, 55.291996, 58.362560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.799980, 54.848763, 58.495708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.753120, 54.538254, 58.247940>,  <65.725006, 54.351948, 58.099277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.753120, 54.538254, 58.247940>,  <65.799980, 54.848763, 58.495708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.753120, 54.538254, 58.247940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717351, 0.365188, -0.593333,
		0.686791, -0.513854, 0.514073,
		-0.117153, -0.776267, -0.619422,
		65.717972, 54.305374, 58.062115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.371643, 55.234444, 58.139702>,  <65.799980, 54.848763, 58.495708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.371643, 55.234444, 58.139702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.363609, 55.501907, 57.842384>,  <66.358788, 55.662384, 57.663994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.363609, 55.501907, 57.842384>,  <66.371643, 55.234444, 58.139702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.363609, 55.501907, 57.842384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856565, -0.371923, -0.357730,
		-0.515648, -0.643871, -0.565276,
		-0.020092, 0.668658, -0.743298,
		66.357582, 55.702503, 57.619396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.360886, 54.886127, 57.542023>,  <66.371643, 55.234444, 58.139702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.360886, 54.886127, 57.542023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.574829, 55.224056, 57.536377>,  <66.703194, 55.426815, 57.532990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.574829, 55.224056, 57.536377>,  <66.360886, 54.886127, 57.542023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.574829, 55.224056, 57.536377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820993, -0.523580, -0.227671,
		-0.199730, 0.110188, -0.973636,
		0.534863, 0.844821, -0.014111,
		66.735291, 55.477501, 57.532143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.791397, 54.902279, 56.893829>,  <66.360886, 54.886127, 57.542023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.791397, 54.902279, 56.893829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.934990, 55.092216, 57.215240>,  <67.021141, 55.206181, 57.408089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.934990, 55.092216, 57.215240>,  <66.791397, 54.902279, 56.893829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.934990, 55.092216, 57.215240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849731, -0.522428, -0.070890,
		0.386124, 0.708232, -0.591029,
		0.358977, 0.474844, 0.803529,
		67.042686, 55.234669, 57.456299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.410370, 55.362659, 56.794827>,  <66.791397, 54.902279, 56.893829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.410370, 55.362659, 56.794827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.424751, 55.149033, 57.132698>,  <67.433380, 55.020859, 57.335423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.424751, 55.149033, 57.132698>,  <67.410370, 55.362659, 56.794827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.424751, 55.149033, 57.132698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875800, -0.390259, -0.284028,
		0.481333, 0.749983, 0.453700,
		0.035956, -0.534063, 0.844680,
		67.435539, 54.988815, 57.386101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.100670, 55.495697, 57.060829>,  <67.410370, 55.362659, 56.794827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.100670, 55.495697, 57.060829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.966454, 55.128101, 57.143661>,  <67.885925, 54.907543, 57.193359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.966454, 55.128101, 57.143661>,  <68.100670, 55.495697, 57.060829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.966454, 55.128101, 57.143661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864568, -0.387706, -0.319697,
		0.374084, 0.071767, 0.924614,
		-0.335534, -0.918985, 0.207082,
		67.865791, 54.852406, 57.205788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.678421, 55.102909, 57.201752>,  <68.100670, 55.495697, 57.060829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.678421, 55.102909, 57.201752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.402870, 54.818848, 57.143608>,  <68.237541, 54.648411, 57.108723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.402870, 54.818848, 57.143608>,  <68.678421, 55.102909, 57.201752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.402870, 54.818848, 57.143608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722594, -0.656869, -0.215362,
		0.057456, -0.253395, 0.965655,
		-0.688880, -0.710150, -0.145361,
		68.196205, 54.605801, 57.099998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.444878, 54.877979, 57.318619>,  <68.678421, 55.102909, 57.201752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.444878, 54.877979, 57.318619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.603691, 55.098427, 57.612183>,  <69.698982, 55.230694, 57.788322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.603691, 55.098427, 57.612183>,  <69.444878, 54.877979, 57.318619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.603691, 55.098427, 57.612183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813774, 0.158388, -0.559183,
		-0.424419, 0.819256, -0.385601,
		0.397040, 0.551120, 0.733912,
		69.722801, 55.263763, 57.832355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.570854, 55.576305, 57.172359>,  <69.444878, 54.877979, 57.318619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.570854, 55.576305, 57.172359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.832260, 55.520206, 57.469879>,  <69.989105, 55.486546, 57.648392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.832260, 55.520206, 57.469879>,  <69.570854, 55.576305, 57.172359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.832260, 55.520206, 57.469879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731446, 0.369762, -0.572942,
		-0.194675, 0.918480, 0.344231,
		0.653520, -0.140249, 0.743803,
		70.028313, 55.478130, 57.693020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.874443, 56.275051, 57.308670>,  <69.570854, 55.576305, 57.172359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.874443, 56.275051, 57.308670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.113716, 55.989792, 57.454880>,  <70.257278, 55.818638, 57.542606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.113716, 55.989792, 57.454880>,  <69.874443, 56.275051, 57.308670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.113716, 55.989792, 57.454880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772212, 0.391046, -0.500771,
		0.214186, 0.581811, 0.784614,
		0.598175, -0.713147, 0.365526,
		70.293167, 55.775848, 57.564537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.616631, 55.921341, 57.849617>,  <69.874443, 56.275051, 57.308670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.616631, 55.921341, 57.849617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.648033, 56.282970, 58.017662>,  <69.666878, 56.499947, 58.118488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.648033, 56.282970, 58.017662>,  <69.616631, 55.921341, 57.849617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.648033, 56.282970, 58.017662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556734, -0.309814, 0.770754,
		0.826972, -0.294403, 0.479003,
		0.078510, 0.904070, 0.420112,
		69.671585, 56.554192, 58.143696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.854591, 55.885788, 58.544579>,  <69.616631, 55.921341, 57.849617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.854591, 55.885788, 58.544579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.605217, 56.195957, 58.504486>,  <69.455589, 56.382057, 58.480431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.605217, 56.195957, 58.504486>,  <69.854591, 55.885788, 58.544579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.605217, 56.195957, 58.504486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578580, -0.371305, 0.726208,
		0.525900, 0.510738, 0.680129,
		-0.623438, 0.775422, -0.100233,
		69.418182, 56.428585, 58.474415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.415985, 56.274746, 58.845589>,  <69.854591, 55.885788, 58.544579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.415985, 56.274746, 58.845589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.323662, 55.961739, 59.076897>,  <70.268272, 55.773933, 59.215683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.323662, 55.961739, 59.076897>,  <70.415985, 56.274746, 58.845589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.323662, 55.961739, 59.076897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314811, -0.502296, -0.805353,
		0.920665, -0.367926, -0.130412,
		-0.230805, -0.782515, 0.578273,
		70.254417, 55.726986, 59.250378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.062340, 56.718475, 59.183563>,  <70.415985, 56.274746, 58.845589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.062340, 56.718475, 59.183563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.201088, 57.045963, 59.000534>,  <70.284340, 57.242455, 58.890717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.201088, 57.045963, 59.000534>,  <70.062340, 56.718475, 59.183563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.201088, 57.045963, 59.000534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699595, 0.099090, 0.707635,
		0.624697, -0.565578, -0.538401,
		0.346872, 0.818720, -0.457577,
		70.305153, 57.291580, 58.863262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.907501, 57.279884, 59.473721>,  <70.062340, 56.718475, 59.183563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.907501, 57.279884, 59.473721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.301941, 57.322556, 59.422775>,  <70.538605, 57.348160, 59.392208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.301941, 57.322556, 59.422775>,  <69.907501, 57.279884, 59.473721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.301941, 57.322556, 59.422775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164774, 0.529830, -0.831943,
		-0.021271, 0.841367, 0.540045,
		0.986102, 0.106682, -0.127365,
		70.597771, 57.354561, 59.384567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.166504, 57.957214, 59.749569>,  <69.907501, 57.279884, 59.473721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.166504, 57.957214, 59.749569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.922943, 58.193016, 59.961876>,  <69.776802, 58.334499, 60.089260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.922943, 58.193016, 59.961876>,  <70.166504, 57.957214, 59.749569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.922943, 58.193016, 59.961876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679963, -0.043306, -0.731967,
		-0.408514, -0.806602, 0.427212,
		-0.608906, 0.589507, 0.530768,
		69.740273, 58.369869, 60.121105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.726875, 57.523983, 59.917507>,  <70.166504, 57.957214, 59.749569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.726875, 57.523983, 59.917507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.831589, 57.903694, 59.847832>,  <70.894417, 58.131523, 59.806026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.831589, 57.903694, 59.847832>,  <70.726875, 57.523983, 59.917507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.831589, 57.903694, 59.847832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527596, 0.010376, 0.849432,
		0.808156, -0.314262, -0.498120,
		0.261775, 0.949280, -0.174188,
		70.910118, 58.188477, 59.795574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.444328, 57.517685, 59.702087>,  <70.726875, 57.523983, 59.917507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.444328, 57.517685, 59.702087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.323975, 57.855476, 59.879326>,  <71.251762, 58.058151, 59.985668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.323975, 57.855476, 59.879326>,  <71.444328, 57.517685, 59.702087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.323975, 57.855476, 59.879326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688343, -0.129265, 0.713775,
		0.660041, 0.519763, -0.542395,
		-0.300881, 0.844474, 0.443095,
		71.233711, 58.108818, 60.012253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.979912, 57.968609, 59.972813>,  <71.444328, 57.517685, 59.702087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.979912, 57.968609, 59.972813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.339294, 57.884872, 59.818428>,  <72.554924, 57.834629, 59.725800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.339294, 57.884872, 59.818428>,  <71.979912, 57.968609, 59.972813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.339294, 57.884872, 59.818428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404609, 0.736122, 0.542601,
		0.170523, -0.643662, 0.746071,
		0.898451, -0.209341, -0.385957,
		72.608833, 57.822071, 59.702641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.438049, 57.775181, 60.421307>,  <71.979912, 57.968609, 59.972813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.438049, 57.775181, 60.421307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.688156, 57.892006, 60.131828>,  <72.838219, 57.962101, 59.958141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.688156, 57.892006, 60.131828>,  <72.438049, 57.775181, 60.421307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.688156, 57.892006, 60.131828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450127, 0.622565, 0.640155,
		0.637521, -0.726022, 0.257798,
		0.625263, 0.292070, -0.723700,
		72.875740, 57.979622, 59.914719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.151627, 57.804173, 60.648922>,  <72.438049, 57.775181, 60.421307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.151627, 57.804173, 60.648922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.134483, 58.083366, 60.362991>,  <73.124199, 58.250885, 60.191433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.134483, 58.083366, 60.362991>,  <73.151627, 57.804173, 60.648922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.134483, 58.083366, 60.362991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570462, 0.604475, 0.556042,
		0.820206, -0.383954, -0.424078,
		-0.042850, 0.697989, -0.714825,
		73.121628, 58.292763, 60.148544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
