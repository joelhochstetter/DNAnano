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
	<35.928722, 53.285664, 49.116119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299507, 53.432030, 49.149223>,  <36.521976, 53.519852, 49.169086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299507, 53.432030, 49.149223>,  <35.928722, 53.285664, 49.116119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299507, 53.432030, 49.149223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311148, 0.626607, 0.714528,
		0.209600, -0.688090, 0.694694,
		0.926960, 0.365918, 0.082762,
		36.577595, 53.541805, 49.174053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.137314, 53.186787, 49.807869>,  <35.928722, 53.285664, 49.116119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.137314, 53.186787, 49.807869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351921, 53.494030, 49.668068>,  <36.480686, 53.678375, 49.584187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351921, 53.494030, 49.668068>,  <36.137314, 53.186787, 49.807869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351921, 53.494030, 49.668068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345763, 0.577885, 0.739254,
		0.769799, -0.275782, 0.575633,
		0.536522, 0.768110, -0.349501,
		36.512878, 53.724464, 49.563217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587734, 53.437721, 50.390339>,  <36.137314, 53.186787, 49.807869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587734, 53.437721, 50.390339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465187, 53.745041, 50.165535>,  <36.391659, 53.929432, 50.030651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465187, 53.745041, 50.165535>,  <36.587734, 53.437721, 50.390339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465187, 53.745041, 50.165535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317685, 0.474027, 0.821203,
		0.897337, 0.430134, 0.098850,
		-0.306369, 0.768299, -0.562009,
		36.373276, 53.975533, 49.996933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.694027, 52.612907, 50.579639>,  <36.587734, 53.437721, 50.390339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.694027, 52.612907, 50.579639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721386, 52.279617, 50.360165>,  <36.737801, 52.079643, 50.228481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721386, 52.279617, 50.360165>,  <36.694027, 52.612907, 50.579639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721386, 52.279617, 50.360165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784005, -0.385007, 0.486934,
		-0.616974, 0.396869, -0.679587,
		0.068396, -0.833226, -0.548687,
		36.741905, 52.029648, 50.195560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048573, 53.191025, 50.862980>,  <36.694027, 52.612907, 50.579639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048573, 53.191025, 50.862980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754608, 52.943363, 50.973656>,  <36.578232, 52.794765, 51.040062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.754608, 52.943363, 50.973656>,  <37.048573, 53.191025, 50.862980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.754608, 52.943363, 50.973656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579127, 0.785268, 0.219012,
		-0.352876, 0.000717, -0.935670,
		-0.734908, -0.619156, 0.276687,
		36.534134, 52.757618, 51.056664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733833, 53.089226, 51.185158>,  <37.048573, 53.191025, 50.862980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733833, 53.089226, 51.185158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565067, 53.001213, 51.536968>,  <37.463806, 52.948406, 51.748055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565067, 53.001213, 51.536968>,  <37.733833, 53.089226, 51.185158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565067, 53.001213, 51.536968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563354, 0.696470, 0.444479,
		-0.710365, 0.683020, -0.169900,
		-0.421918, -0.220029, 0.879530,
		37.438492, 52.935204, 51.800827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616341, 53.679295, 51.538239>,  <37.733833, 53.089226, 51.185158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616341, 53.679295, 51.538239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637928, 53.384041, 51.807236>,  <37.650879, 53.206890, 51.968632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.637928, 53.384041, 51.807236>,  <37.616341, 53.679295, 51.538239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637928, 53.384041, 51.807236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679622, 0.520565, 0.516842,
		-0.731575, 0.429147, 0.529746,
		0.053966, -0.738136, 0.672491,
		37.654118, 53.162601, 52.008984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544945, 53.956078, 52.154510>,  <37.616341, 53.679295, 51.538239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544945, 53.956078, 52.154510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741467, 53.611294, 52.204529>,  <37.859379, 53.404423, 52.234539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741467, 53.611294, 52.204529>,  <37.544945, 53.956078, 52.154510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741467, 53.611294, 52.204529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747973, 0.491106, 0.446487,
		-0.446265, -0.125835, 0.886010,
		0.491309, -0.861963, 0.125042,
		37.888859, 53.352703, 52.242043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522041, 53.867622, 52.852169>,  <37.544945, 53.956078, 52.154510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522041, 53.867622, 52.852169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841892, 53.706882, 52.673679>,  <38.033802, 53.610439, 52.566586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.841892, 53.706882, 52.673679>,  <37.522041, 53.867622, 52.852169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.841892, 53.706882, 52.673679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583172, 0.342433, 0.736648,
		-0.143216, -0.849270, 0.508163,
		0.799625, -0.401847, -0.446228,
		38.081779, 53.586330, 52.539810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966801, 53.510590, 53.363247>,  <37.522041, 53.867622, 52.852169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966801, 53.510590, 53.363247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206112, 53.579185, 53.050159>,  <38.349701, 53.620342, 52.862309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.206112, 53.579185, 53.050159>,  <37.966801, 53.510590, 53.363247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.206112, 53.579185, 53.050159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749304, 0.226367, 0.622336,
		0.283906, -0.958827, 0.006932,
		0.598282, 0.171491, -0.782720,
		38.385597, 53.630630, 52.815342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707169, 53.280548, 53.577293>,  <37.966801, 53.510590, 53.363247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707169, 53.280548, 53.577293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700191, 53.571514, 53.302902>,  <38.696007, 53.746094, 53.138268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700191, 53.571514, 53.302902>,  <38.707169, 53.280548, 53.577293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700191, 53.571514, 53.302902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875091, 0.342977, 0.341443,
		0.483645, -0.594337, -0.642535,
		-0.017442, 0.727413, -0.685978,
		38.694958, 53.789738, 53.097107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.145588, 53.150368, 52.987755>,  <38.707169, 53.280548, 53.577293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.145588, 53.150368, 52.987755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118355, 53.536694, 53.087811>,  <39.102016, 53.768490, 53.147842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118355, 53.536694, 53.087811>,  <39.145588, 53.150368, 52.987755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118355, 53.536694, 53.087811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964532, -0.000372, 0.263967,
		0.255036, 0.259235, -0.931533,
		-0.068083, 0.965814, 0.250135,
		39.097931, 53.826439, 53.162849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662804, 53.654739, 52.626110>,  <39.145588, 53.150368, 52.987755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662804, 53.654739, 52.626110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570827, 53.793015, 52.990005>,  <39.515640, 53.875980, 53.208344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570827, 53.793015, 52.990005>,  <39.662804, 53.654739, 52.626110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570827, 53.793015, 52.990005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973134, 0.092914, 0.210659,
		-0.011704, 0.933737, -0.357769,
		-0.229942, 0.345692, 0.909738,
		39.501846, 53.896721, 53.262928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032192, 54.261238, 52.880108>,  <39.662804, 53.654739, 52.626110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032192, 54.261238, 52.880108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923447, 54.037964, 53.193672>,  <39.858200, 53.903999, 53.381809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923447, 54.037964, 53.193672>,  <40.032192, 54.261238, 52.880108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923447, 54.037964, 53.193672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947455, -0.012552, 0.319641,
		-0.168581, 0.829618, 0.532273,
		-0.271861, -0.558190, 0.783910,
		39.841888, 53.870506, 53.428844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218117, 54.426910, 53.612595>,  <40.032192, 54.261238, 52.880108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218117, 54.426910, 53.612595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192215, 54.031082, 53.664062>,  <40.176674, 53.793587, 53.694942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.192215, 54.031082, 53.664062>,  <40.218117, 54.426910, 53.612595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192215, 54.031082, 53.664062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815816, 0.021756, 0.577901,
		-0.574674, 0.142392, 0.805900,
		-0.064755, -0.989571, 0.128668,
		40.172787, 53.734211, 53.702663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349411, 54.351551, 54.333305>,  <40.218117, 54.426910, 53.612595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349411, 54.351551, 54.333305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425308, 54.013039, 54.134186>,  <40.470844, 53.809933, 54.014713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.425308, 54.013039, 54.134186>,  <40.349411, 54.351551, 54.333305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.425308, 54.013039, 54.134186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907641, -0.042159, 0.417625,
		-0.374415, -0.531065, 0.760121,
		0.189740, -0.846282, -0.497801,
		40.482231, 53.759155, 53.984844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545132, 53.738605, 54.737396>,  <40.349411, 54.351551, 54.333305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545132, 53.738605, 54.737396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720104, 53.724846, 54.377960>,  <40.825089, 53.716591, 54.162296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.720104, 53.724846, 54.377960>,  <40.545132, 53.738605, 54.737396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.720104, 53.724846, 54.377960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890238, 0.157691, 0.427329,
		0.126998, -0.986889, 0.099608,
		0.437433, -0.034405, -0.898593,
		40.851334, 53.714523, 54.108383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017803, 53.135010, 54.626255>,  <40.545132, 53.738605, 54.737396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017803, 53.135010, 54.626255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090897, 53.487663, 54.452209>,  <41.134750, 53.699257, 54.347782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.090897, 53.487663, 54.452209>,  <41.017803, 53.135010, 54.626255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.090897, 53.487663, 54.452209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747146, 0.163140, 0.644328,
		0.639048, -0.442834, -0.628900,
		0.182731, 0.881637, -0.435116,
		41.145718, 53.752155, 54.321674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733307, 53.392097, 54.780270>,  <41.017803, 53.135010, 54.626255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733307, 53.392097, 54.780270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617126, 53.732811, 54.605865>,  <41.547417, 53.937237, 54.501221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.617126, 53.732811, 54.605865>,  <41.733307, 53.392097, 54.780270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.617126, 53.732811, 54.605865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846774, 0.441009, 0.297462,
		0.445658, -0.282806, -0.849358,
		-0.290451, 0.851781, -0.436012,
		41.529991, 53.988346, 54.475063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078388, 53.655659, 54.133373>,  <41.733307, 53.392097, 54.780270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078388, 53.655659, 54.133373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962193, 53.956245, 54.370323>,  <41.892475, 54.136597, 54.512493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962193, 53.956245, 54.370323>,  <42.078388, 53.655659, 54.133373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962193, 53.956245, 54.370323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956491, 0.245649, 0.157422,
		-0.027219, 0.612334, -0.790131,
		-0.290489, 0.751468, 0.592378,
		41.875046, 54.181686, 54.548038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.350182, 54.214439, 53.931023>,  <42.078388, 53.655659, 54.133373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.350182, 54.214439, 53.931023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306953, 54.211323, 54.328667>,  <42.281017, 54.209454, 54.567253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306953, 54.211323, 54.328667>,  <42.350182, 54.214439, 53.931023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306953, 54.211323, 54.328667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983721, 0.143580, 0.108064,
		-0.143576, 0.989608, -0.007852,
		-0.108069, -0.007791, 0.994113,
		42.274532, 54.208984, 54.626900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.595337, 54.903111, 54.324673>,  <42.350182, 54.214439, 53.931023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.595337, 54.903111, 54.324673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619186, 54.570179, 54.545097>,  <42.633495, 54.370419, 54.677353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.619186, 54.570179, 54.545097>,  <42.595337, 54.903111, 54.324673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.619186, 54.570179, 54.545097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955491, 0.207372, 0.209842,
		-0.288933, 0.514024, 0.807650,
		0.059621, -0.832332, 0.551062,
		42.637074, 54.320480, 54.710415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638931, 54.987564, 55.086704>,  <42.595337, 54.903111, 54.324673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638931, 54.987564, 55.086704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805847, 54.631176, 55.015106>,  <42.905998, 54.417343, 54.972145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.805847, 54.631176, 55.015106>,  <42.638931, 54.987564, 55.086704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805847, 54.631176, 55.015106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875167, 0.340924, 0.343299,
		-0.244844, -0.299910, 0.922012,
		0.417294, -0.890969, -0.178998,
		42.931034, 54.363884, 54.961407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.071732, 54.746986, 55.702774>,  <42.638931, 54.987564, 55.086704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.071732, 54.746986, 55.702774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215855, 54.609917, 55.355728>,  <43.302330, 54.527676, 55.147499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215855, 54.609917, 55.355728>,  <43.071732, 54.746986, 55.702774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215855, 54.609917, 55.355728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865846, 0.468945, 0.174360,
		0.347115, -0.814043, 0.465667,
		0.360309, -0.342673, -0.867613,
		43.323948, 54.507114, 55.095444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857807, 54.641190, 55.746017>,  <43.071732, 54.746986, 55.702774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857807, 54.641190, 55.746017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803421, 54.619095, 55.350349>,  <43.770790, 54.605839, 55.112949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.803421, 54.619095, 55.350349>,  <43.857807, 54.641190, 55.746017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.803421, 54.619095, 55.350349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844154, 0.516160, -0.144856,
		0.518573, -0.854709, -0.023545,
		-0.135963, -0.055243, -0.989172,
		43.762630, 54.602524, 55.053596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665913, 54.673679, 55.551430>,  <43.857807, 54.641190, 55.746017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665913, 54.673679, 55.551430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442734, 54.768822, 55.233406>,  <44.308826, 54.825909, 55.042591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442734, 54.768822, 55.233406>,  <44.665913, 54.673679, 55.551430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442734, 54.768822, 55.233406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738341, 0.579665, -0.344733,
		0.378870, -0.779367, -0.499044,
		-0.557952, 0.237855, -0.795056,
		44.275349, 54.840179, 54.994888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088520, 54.486351, 54.941673>,  <44.665913, 54.673679, 55.551430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088520, 54.486351, 54.941673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871864, 54.821663, 54.916618>,  <44.741871, 55.022850, 54.901585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871864, 54.821663, 54.916618>,  <45.088520, 54.486351, 54.941673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871864, 54.821663, 54.916618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828516, 0.519764, -0.208341,
		-0.142092, -0.164740, -0.976048,
		-0.541637, 0.838276, -0.062636,
		44.709373, 55.073147, 54.897827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.276619, 54.773144, 54.324314>,  <45.088520, 54.486351, 54.941673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.276619, 54.773144, 54.324314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127228, 55.074646, 54.540596>,  <45.037594, 55.255547, 54.670364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.127228, 55.074646, 54.540596>,  <45.276619, 54.773144, 54.324314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.127228, 55.074646, 54.540596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806679, 0.551697, -0.211894,
		-0.458023, 0.357037, -0.814088,
		-0.373476, 0.753760, 0.540704,
		45.015186, 55.300774, 54.702808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.763195, 55.255432, 53.936161>,  <45.276619, 54.773144, 54.324314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.763195, 55.255432, 53.936161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903275, 55.618500, 53.843636>,  <45.987324, 55.836338, 53.788120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903275, 55.618500, 53.843636>,  <45.763195, 55.255432, 53.936161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903275, 55.618500, 53.843636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045206, 0.263041, 0.963725,
		0.935584, -0.327038, 0.133148,
		0.350198, 0.907665, -0.231312,
		46.008335, 55.890800, 53.774242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.461987, 55.469547, 54.241959>,  <45.763195, 55.255432, 53.936161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.461987, 55.469547, 54.241959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233654, 55.795219, 54.199509>,  <46.096657, 55.990623, 54.174038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233654, 55.795219, 54.199509>,  <46.461987, 55.469547, 54.241959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233654, 55.795219, 54.199509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007732, 0.123918, 0.992263,
		0.821034, 0.567232, -0.064440,
		-0.570828, 0.814182, -0.106127,
		46.062405, 56.039474, 54.167671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.405830, 54.712067, 54.038761>,  <46.461987, 55.469547, 54.241959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.405830, 54.712067, 54.038761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648022, 54.705212, 54.357033>,  <46.793335, 54.701099, 54.547997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.648022, 54.705212, 54.357033>,  <46.405830, 54.712067, 54.038761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.648022, 54.705212, 54.357033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776349, 0.207317, 0.595233,
		-0.175159, -0.978124, 0.112221,
		0.605477, -0.017138, 0.795679,
		46.829666, 54.700069, 54.595737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.246716, 54.166622, 54.503429>,  <46.405830, 54.712067, 54.038761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.246716, 54.166622, 54.503429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386261, 54.491196, 54.690994>,  <46.469990, 54.685940, 54.803532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.386261, 54.491196, 54.690994>,  <46.246716, 54.166622, 54.503429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.386261, 54.491196, 54.690994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770840, -0.036119, 0.636005,
		0.533009, -0.583333, 0.612882,
		0.348866, 0.811430, 0.468907,
		46.490921, 54.734623, 54.831665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.417767, 53.908672, 55.219017>,  <46.246716, 54.166622, 54.503429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.417767, 53.908672, 55.219017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314541, 54.295109, 55.215767>,  <46.252605, 54.526970, 55.213818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314541, 54.295109, 55.215767>,  <46.417767, 53.908672, 55.219017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314541, 54.295109, 55.215767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568397, -0.145020, 0.809873,
		0.781236, 0.213612, 0.586550,
		-0.258060, 0.966095, -0.008121,
		46.237122, 54.584938, 55.213329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.581509, 54.180943, 55.926018>,  <46.417767, 53.908672, 55.219017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.581509, 54.180943, 55.926018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304600, 54.435059, 55.789101>,  <46.138454, 54.587528, 55.706951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304600, 54.435059, 55.789101>,  <46.581509, 54.180943, 55.926018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304600, 54.435059, 55.789101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467641, -0.033684, 0.883276,
		0.549607, 0.771538, 0.320407,
		-0.692274, 0.635291, -0.342290,
		46.096916, 54.625645, 55.686413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.693935, 54.008514, 56.609470>,  <46.581509, 54.180943, 55.926018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.693935, 54.008514, 56.609470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408588, 54.045090, 56.887390>,  <46.237381, 54.067036, 57.054142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.408588, 54.045090, 56.887390>,  <46.693935, 54.008514, 56.609470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.408588, 54.045090, 56.887390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361607, -0.801234, 0.476723,
		0.600286, 0.591323, 0.538512,
		-0.713371, 0.091440, 0.694795,
		46.194576, 54.072521, 57.095829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.414017, 54.024178, 56.505959>,  <46.693935, 54.008514, 56.609470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.414017, 54.024178, 56.505959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475231, 53.631680, 56.552849>,  <47.511959, 53.396183, 56.580982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.475231, 53.631680, 56.552849>,  <47.414017, 54.024178, 56.505959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.475231, 53.631680, 56.552849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192916, 0.086677, 0.977379,
		-0.969207, -0.172191, -0.176032,
		0.153038, -0.981243, 0.117226,
		47.521141, 53.337307, 56.588017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.052330, 54.109058, 56.183540>,  <47.414017, 54.024178, 56.505959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.052330, 54.109058, 56.183540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.218922, 54.345333, 56.459984>,  <48.318874, 54.487099, 56.625851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.218922, 54.345333, 56.459984>,  <48.052330, 54.109058, 56.183540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.218922, 54.345333, 56.459984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563292, 0.429033, -0.706140,
		-0.713618, 0.683387, -0.154048,
		0.416476, 0.590688, 0.691112,
		48.343864, 54.522541, 56.667316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.981602, 54.911861, 56.036465>,  <48.052330, 54.109058, 56.183540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.981602, 54.911861, 56.036465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.305248, 54.785908, 56.234932>,  <48.499435, 54.710335, 56.354012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.305248, 54.785908, 56.234932>,  <47.981602, 54.911861, 56.036465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.305248, 54.785908, 56.234932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585861, 0.498116, -0.639255,
		-0.045859, 0.807916, 0.587510,
		0.809113, -0.314884, 0.496170,
		48.547981, 54.691441, 56.383781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.419590, 55.526585, 56.030998>,  <47.981602, 54.911861, 56.036465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.419590, 55.526585, 56.030998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.620384, 55.183460, 56.075111>,  <48.740860, 54.977585, 56.101578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.620384, 55.183460, 56.075111>,  <48.419590, 55.526585, 56.030998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.620384, 55.183460, 56.075111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691591, 0.321568, -0.646758,
		0.519335, 0.400934, 0.754680,
		0.501988, -0.857815, 0.110281,
		48.770981, 54.926117, 56.108196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.001541, 55.695087, 56.166264>,  <48.419590, 55.526585, 56.030998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.001541, 55.695087, 56.166264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.085190, 55.310814, 56.093216>,  <49.135380, 55.080250, 56.049385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.085190, 55.310814, 56.093216>,  <49.001541, 55.695087, 56.166264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.085190, 55.310814, 56.093216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815229, 0.274408, -0.510001,
		0.540064, -0.042226, 0.840564,
		0.209122, -0.960686, -0.182622,
		49.147926, 55.022610, 56.038429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.659340, 55.414238, 56.600494>,  <49.001541, 55.695087, 56.166264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.659340, 55.414238, 56.600494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.609074, 55.205658, 56.262901>,  <49.578915, 55.080509, 56.060345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.609074, 55.205658, 56.262901>,  <49.659340, 55.414238, 56.600494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.609074, 55.205658, 56.262901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964392, 0.135347, -0.227219,
		0.232713, -0.842481, 0.485871,
		-0.125666, -0.521447, -0.843979,
		49.571373, 55.049225, 56.009708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.959862, 55.858959, 56.017635>,  <49.659340, 55.414238, 56.600494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.959862, 55.858959, 56.017635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.078182, 55.620956, 55.718712>,  <50.149174, 55.478153, 55.539356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.078182, 55.620956, 55.718712>,  <49.959862, 55.858959, 56.017635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.078182, 55.620956, 55.718712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955001, 0.166347, 0.245565,
		-0.021801, -0.786319, 0.617436,
		0.295801, -0.595005, -0.747309,
		50.166924, 55.442455, 55.494518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.501358, 55.358994, 56.201378>,  <49.959862, 55.858959, 56.017635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.501358, 55.358994, 56.201378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.521320, 55.493889, 55.825340>,  <50.533298, 55.574825, 55.599716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.521320, 55.493889, 55.825340>,  <50.501358, 55.358994, 56.201378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.521320, 55.493889, 55.825340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906755, 0.379294, 0.184202,
		0.418693, -0.861629, -0.286864,
		0.049908, 0.337240, -0.940095,
		50.536293, 55.595062, 55.543312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.066956, 55.138145, 55.730595>,  <50.501358, 55.358994, 56.201378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.066956, 55.138145, 55.730595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.945621, 55.516663, 55.685852>,  <50.872822, 55.743774, 55.659008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.945621, 55.516663, 55.685852>,  <51.066956, 55.138145, 55.730595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.945621, 55.516663, 55.685852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898040, 0.323154, 0.298489,
		0.318606, -0.009909, -0.947836,
		-0.303339, 0.946294, -0.111857,
		50.854618, 55.800552, 55.652294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.439182, 55.470097, 55.320148>,  <51.066956, 55.138145, 55.730595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.439182, 55.470097, 55.320148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.282909, 55.773018, 55.529472>,  <51.189144, 55.954769, 55.655067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.282909, 55.773018, 55.529472>,  <51.439182, 55.470097, 55.320148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.282909, 55.773018, 55.529472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901387, 0.199413, 0.384364,
		0.186724, 0.621874, -0.760530,
		-0.390686, 0.757302, 0.523314,
		51.165703, 56.000210, 55.686466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.902405, 56.085342, 55.220627>,  <51.439182, 55.470097, 55.320148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.902405, 56.085342, 55.220627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.691223, 56.094582, 55.560211>,  <51.564514, 56.100124, 55.763962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.691223, 56.094582, 55.560211>,  <51.902405, 56.085342, 55.220627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.691223, 56.094582, 55.560211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849226, 0.024632, 0.527455,
		-0.008727, 0.999430, -0.032622,
		-0.527958, 0.023100, 0.848956,
		51.532837, 56.101513, 55.814899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.259670, 56.674370, 55.649311>,  <51.902405, 56.085342, 55.220627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.259670, 56.674370, 55.649311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.468014, 56.559784, 55.327652>,  <52.593021, 56.491032, 55.134659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.468014, 56.559784, 55.327652>,  <52.259670, 56.674370, 55.649311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.468014, 56.559784, 55.327652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731994, 0.634539, 0.248083,
		0.439195, -0.717845, 0.540191,
		0.520857, -0.286460, -0.804144,
		52.624271, 56.473846, 55.086411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.924099, 56.323780, 55.895462>,  <52.259670, 56.674370, 55.649311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.924099, 56.323780, 55.895462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.971310, 56.487026, 55.533356>,  <52.999638, 56.584972, 55.316090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.971310, 56.487026, 55.533356>,  <52.924099, 56.323780, 55.895462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.971310, 56.487026, 55.533356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767501, 0.540966, 0.343944,
		0.630089, -0.735389, -0.249383,
		0.118025, 0.408117, -0.905268,
		53.006718, 56.609463, 55.261776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.661179, 56.411167, 55.733555>,  <52.924099, 56.323780, 55.895462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.661179, 56.411167, 55.733555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.444897, 56.691437, 55.547356>,  <53.315128, 56.859600, 55.435635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.444897, 56.691437, 55.547356>,  <53.661179, 56.411167, 55.733555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.444897, 56.691437, 55.547356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640678, 0.701612, 0.311884,
		0.545131, -0.129600, -0.828273,
		-0.540707, 0.700674, -0.465503,
		53.282684, 56.901638, 55.407703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.079533, 56.885460, 55.351456>,  <53.661179, 56.411167, 55.733555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.079533, 56.885460, 55.351456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.749836, 57.086197, 55.456360>,  <53.552017, 57.206638, 55.519302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.749836, 57.086197, 55.456360>,  <54.079533, 56.885460, 55.351456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.749836, 57.086197, 55.456360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565772, 0.710998, 0.417592,
		0.023098, 0.492577, -0.869962,
		-0.824238, 0.501846, 0.262264,
		53.502563, 57.236752, 55.535038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.081757, 57.522720, 55.042080>,  <54.079533, 56.885460, 55.351456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.081757, 57.522720, 55.042080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.896442, 57.514149, 55.396461>,  <53.785255, 57.509007, 55.609089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.896442, 57.514149, 55.396461>,  <54.081757, 57.522720, 55.042080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.896442, 57.514149, 55.396461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602889, 0.725098, 0.332804,
		-0.649532, 0.688313, -0.323007,
		-0.463285, -0.021430, 0.885950,
		53.757458, 57.507721, 55.662247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.975620, 58.196915, 55.324284>,  <54.081757, 57.522720, 55.042080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.975620, 58.196915, 55.324284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.000481, 57.930328, 55.621460>,  <54.015396, 57.770378, 55.799767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.000481, 57.930328, 55.621460>,  <53.975620, 58.196915, 55.324284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.000481, 57.930328, 55.621460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725697, 0.541212, 0.424797,
		-0.685201, 0.512748, 0.517289,
		0.062149, -0.666467, 0.742939,
		54.019127, 57.730389, 55.844341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.018002, 58.581165, 55.922489>,  <53.975620, 58.196915, 55.324284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.018002, 58.581165, 55.922489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.169838, 58.219494, 56.000839>,  <54.260941, 58.002491, 56.047848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.169838, 58.219494, 56.000839>,  <54.018002, 58.581165, 55.922489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.169838, 58.219494, 56.000839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744710, 0.424247, 0.515190,
		-0.548923, -0.049695, 0.834394,
		0.379592, -0.904182, 0.195871,
		54.283714, 57.948238, 56.059601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.681149, 58.829067, 56.222713>,  <54.018002, 58.581165, 55.922489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.681149, 58.829067, 56.222713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.644012, 58.431343, 56.243584>,  <54.621731, 58.192707, 56.256104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.644012, 58.431343, 56.243584>,  <54.681149, 58.829067, 56.222713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.644012, 58.431343, 56.243584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768749, -0.038281, 0.638404,
		-0.632776, 0.099378, 0.767931,
		-0.092840, -0.994313, 0.052173,
		54.616161, 58.133049, 56.259235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.598530, 58.640800, 56.958397>,  <54.681149, 58.829067, 56.222713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.598530, 58.640800, 56.958397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.780067, 58.380711, 56.714684>,  <54.888992, 58.224655, 56.568455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.780067, 58.380711, 56.714684>,  <54.598530, 58.640800, 56.958397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.780067, 58.380711, 56.714684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737964, -0.108967, 0.665984,
		-0.499431, -0.751888, 0.430387,
		0.453848, -0.650224, -0.609288,
		54.916222, 58.185642, 56.531898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.627773, 57.975986, 57.260754>,  <54.598530, 58.640800, 56.958397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.627773, 57.975986, 57.260754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.945328, 58.007126, 57.019531>,  <55.135860, 58.025810, 56.874798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.945328, 58.007126, 57.019531>,  <54.627773, 57.975986, 57.260754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.945328, 58.007126, 57.019531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580172, -0.393900, 0.712912,
		-0.182043, -0.915851, -0.357881,
		0.793890, 0.077852, -0.603057,
		55.183495, 58.030483, 56.838615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.005043, 57.321644, 57.323673>,  <54.627773, 57.975986, 57.260754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.005043, 57.321644, 57.323673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.252647, 57.607040, 57.192368>,  <55.401211, 57.778278, 57.113583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.252647, 57.607040, 57.192368>,  <55.005043, 57.321644, 57.323673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.252647, 57.607040, 57.192368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733471, -0.375734, 0.566431,
		0.280803, -0.591400, -0.755908,
		0.619007, 0.713492, -0.328267,
		55.438351, 57.821087, 57.093887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.697006, 57.072735, 57.163059>,  <55.005043, 57.321644, 57.323673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.697006, 57.072735, 57.163059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.758965, 57.457745, 57.252098>,  <55.796139, 57.688751, 57.305523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.758965, 57.457745, 57.252098>,  <55.697006, 57.072735, 57.163059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.758965, 57.457745, 57.252098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672007, -0.267809, 0.690424,
		0.724166, 0.042645, -0.688306,
		0.154891, 0.962528, 0.222596,
		55.805431, 57.746502, 57.318878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.406597, 57.063267, 57.213863>,  <55.697006, 57.072735, 57.163059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.406597, 57.063267, 57.213863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.467331, 57.086380, 57.608551>,  <56.503769, 57.100250, 57.845364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.467331, 57.086380, 57.608551>,  <56.406597, 57.063267, 57.213863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.467331, 57.086380, 57.608551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797028, 0.583233, -0.156799,
		-0.584546, 0.810247, 0.042496,
		0.151831, 0.057786, 0.986716,
		56.512878, 57.103718, 57.904564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.651985, 57.811012, 57.252144>,  <56.406597, 57.063267, 57.213863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.651985, 57.811012, 57.252144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.758110, 57.550167, 57.536217>,  <56.821785, 57.393661, 57.706661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.758110, 57.550167, 57.536217>,  <56.651985, 57.811012, 57.252144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.758110, 57.550167, 57.536217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897826, 0.435592, 0.064564,
		-0.351452, 0.620489, 0.701052,
		0.265311, -0.652114, 0.710181,
		56.837704, 57.354534, 57.749271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.993275, 58.137955, 57.792126>,  <56.651985, 57.811012, 57.252144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.993275, 58.137955, 57.792126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.135872, 57.769375, 57.730362>,  <57.221432, 57.548225, 57.693302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.135872, 57.769375, 57.730362>,  <56.993275, 58.137955, 57.792126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.135872, 57.769375, 57.730362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909943, 0.379914, -0.166342,
		0.211938, -0.081204, 0.973904,
		0.356492, -0.921450, -0.154410,
		57.242821, 57.492939, 57.684040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.598511, 57.893394, 58.228783>,  <56.993275, 58.137955, 57.792126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.598511, 57.893394, 58.228783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.640610, 57.651535, 57.912979>,  <57.665871, 57.506420, 57.723495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.640610, 57.651535, 57.912979>,  <57.598511, 57.893394, 58.228783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.640610, 57.651535, 57.912979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989633, 0.141696, 0.023413,
		0.097713, -0.783787, 0.613294,
		0.105252, -0.604649, -0.789507,
		57.672184, 57.470139, 57.676128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.096924, 58.368382, 58.058517>,  <57.598511, 57.893394, 58.228783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.096924, 58.368382, 58.058517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.175484, 58.524971, 58.418114>,  <58.222618, 58.618923, 58.633869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.175484, 58.524971, 58.418114>,  <58.096924, 58.368382, 58.058517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.175484, 58.524971, 58.418114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095628, -0.920119, 0.379785,
		0.975851, 0.011381, -0.218143,
		0.196395, 0.391474, 0.898987,
		58.234402, 58.642414, 58.687809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.811440, 58.327530, 58.267368>,  <58.096924, 58.368382, 58.058517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.811440, 58.327530, 58.267368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.593307, 58.332855, 58.602615>,  <58.462429, 58.336048, 58.803764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.593307, 58.332855, 58.602615>,  <58.811440, 58.327530, 58.267368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.593307, 58.332855, 58.602615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370877, -0.892846, 0.255494,
		0.751711, 0.450166, 0.481955,
		-0.545326, 0.013311, 0.838118,
		58.429710, 58.336849, 58.854050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.289253, 58.188511, 58.816792>,  <58.811440, 58.327530, 58.267368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.289253, 58.188511, 58.816792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.911591, 58.084351, 58.897545>,  <58.684994, 58.021854, 58.945999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.911591, 58.084351, 58.897545>,  <59.289253, 58.188511, 58.816792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.911591, 58.084351, 58.897545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300076, -0.932627, 0.200405,
		0.136097, 0.249794, 0.958687,
		-0.944157, -0.260404, 0.201885,
		58.628342, 58.006229, 58.958111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.253380, 57.956841, 59.503807>,  <59.289253, 58.188511, 58.816792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.253380, 57.956841, 59.503807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.011314, 57.765362, 59.249367>,  <58.866074, 57.650475, 59.096703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.011314, 57.765362, 59.249367>,  <59.253380, 57.956841, 59.503807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.011314, 57.765362, 59.249367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319036, -0.877884, 0.357123,
		-0.729378, 0.013178, 0.683984,
		-0.605165, -0.478693, -0.636105,
		58.829765, 57.621754, 59.058537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.795071, 57.435516, 59.776093>,  <59.253380, 57.956841, 59.503807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.795071, 57.435516, 59.776093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.901398, 57.374321, 59.395370>,  <58.965195, 57.337605, 59.166939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.901398, 57.374321, 59.395370>,  <58.795071, 57.435516, 59.776093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.901398, 57.374321, 59.395370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656968, -0.693808, 0.294998,
		-0.705501, -0.703723, -0.083922,
		0.265822, -0.152988, -0.951805,
		58.981144, 57.328426, 59.109829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.297737, 57.064053, 59.973640>,  <58.795071, 57.435516, 59.776093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.297737, 57.064053, 59.973640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.295494, 57.061874, 59.573654>,  <59.294147, 57.060570, 59.333660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.295494, 57.061874, 59.573654>,  <59.297737, 57.064053, 59.973640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.295494, 57.061874, 59.573654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653673, -0.756777, 0.000451,
		-0.756756, -0.653650, 0.007807,
		-0.005613, -0.005445, -0.999969,
		59.293812, 57.060242, 59.273663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.178986, 56.327297, 59.721901>,  <59.297737, 57.064053, 59.973640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.178986, 56.327297, 59.721901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.394608, 56.546173, 59.465775>,  <59.523979, 56.677498, 59.312099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.394608, 56.546173, 59.465775>,  <59.178986, 56.327297, 59.721901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.394608, 56.546173, 59.465775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685110, -0.727075, -0.044569,
		-0.489945, -0.414661, -0.766818,
		0.539053, 0.547191, -0.640315,
		59.556324, 56.710331, 59.273682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.279221, 55.988674, 58.968727>,  <59.178986, 56.327297, 59.721901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.279221, 55.988674, 58.968727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.566444, 56.207367, 59.140991>,  <59.738781, 56.338581, 59.244350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.566444, 56.207367, 59.140991>,  <59.279221, 55.988674, 58.968727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.566444, 56.207367, 59.140991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638556, -0.763662, -0.095216,
		0.276824, 0.343374, -0.897476,
		0.718063, 0.546731, 0.430663,
		59.781864, 56.371387, 59.270191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.991684, 55.975246, 58.594662>,  <59.279221, 55.988674, 58.968727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.991684, 55.975246, 58.594662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.075729, 56.086212, 58.969658>,  <60.126156, 56.152790, 59.194656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.075729, 56.086212, 58.969658>,  <59.991684, 55.975246, 58.594662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.075729, 56.086212, 58.969658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732049, -0.680235, 0.037217,
		0.648039, 0.678470, -0.346011,
		0.210118, 0.277415, 0.937492,
		60.138763, 56.169437, 59.250904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.722717, 56.278549, 58.729679>,  <59.991684, 55.975246, 58.594662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.722717, 56.278549, 58.729679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.558128, 56.079308, 59.034988>,  <60.459377, 55.959763, 59.218174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.558128, 56.079308, 59.034988>,  <60.722717, 56.278549, 58.729679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.558128, 56.079308, 59.034988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770064, -0.637966, -0.001200,
		0.487539, 0.587274, 0.646077,
		-0.411470, -0.498105, 0.763272,
		60.434689, 55.929874, 59.263969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.252964, 56.263611, 59.257896>,  <60.722717, 56.278549, 58.729679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.252964, 56.263611, 59.257896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.991783, 55.962303, 59.226280>,  <60.835075, 55.781521, 59.207310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.991783, 55.962303, 59.226280>,  <61.252964, 56.263611, 59.257896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.991783, 55.962303, 59.226280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757346, -0.650599, -0.056112,
		-0.009159, -0.096503, 0.995291,
		-0.652950, -0.753265, -0.079044,
		60.795898, 55.736324, 59.202568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.342289, 55.733467, 59.763222>,  <61.252964, 56.263611, 59.257896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.342289, 55.733467, 59.763222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.224625, 55.566952, 59.419090>,  <61.154026, 55.467041, 59.212612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.224625, 55.566952, 59.419090>,  <61.342289, 55.733467, 59.763222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.224625, 55.566952, 59.419090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818978, -0.573821, -0.002371,
		-0.492689, -0.705290, 0.509729,
		-0.294165, -0.416289, -0.860332,
		61.136375, 55.442066, 59.160992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.320541, 55.088943, 60.339073>,  <61.342289, 55.733467, 59.763222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.320541, 55.088943, 60.339073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.502213, 54.775558, 60.169411>,  <61.611217, 54.587528, 60.067616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.502213, 54.775558, 60.169411>,  <61.320541, 55.088943, 60.339073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.502213, 54.775558, 60.169411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776699, 0.581419, -0.242263,
		0.436415, -0.219408, 0.872584,
		0.454182, -0.783462, -0.424154,
		61.638466, 54.540520, 60.042164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.930645, 55.396496, 60.375229>,  <61.320541, 55.088943, 60.339073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.930645, 55.396496, 60.375229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.972557, 55.069195, 60.149139>,  <61.997704, 54.872814, 60.013485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.972557, 55.069195, 60.149139>,  <61.930645, 55.396496, 60.375229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.972557, 55.069195, 60.149139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897515, 0.322606, -0.300654,
		0.428356, -0.475796, 0.768199,
		0.104775, -0.818256, -0.565224,
		62.003990, 54.823719, 59.979572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.526634, 54.995121, 60.602287>,  <61.930645, 55.396496, 60.375229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.526634, 54.995121, 60.602287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.456642, 54.943703, 60.211830>,  <62.414646, 54.912849, 59.977554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.456642, 54.943703, 60.211830>,  <62.526634, 54.995121, 60.602287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.456642, 54.943703, 60.211830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902515, 0.375313, -0.211203,
		0.393509, -0.917941, 0.050346,
		-0.174976, -0.128548, -0.976145,
		62.404148, 54.905140, 59.918987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.275066, 55.111343, 60.582874>,  <62.526634, 54.995121, 60.602287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.275066, 55.111343, 60.582874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.554817, 55.359978, 60.724014>,  <63.722668, 55.509159, 60.808697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.554817, 55.359978, 60.724014>,  <63.275066, 55.111343, 60.582874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.554817, 55.359978, 60.724014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486817, -0.775715, 0.401592,
		0.523334, -0.109091, -0.845116,
		0.699379, 0.621583, 0.352850,
		63.764629, 55.546452, 60.829868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.985405, 54.874035, 60.538368>,  <63.275066, 55.111343, 60.582874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.985405, 54.874035, 60.538368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.012840, 55.117180, 60.854797>,  <64.029297, 55.263069, 61.044655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.012840, 55.117180, 60.854797>,  <63.985405, 54.874035, 60.538368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.012840, 55.117180, 60.854797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641501, -0.634145, 0.431666,
		0.764050, 0.477868, -0.433440,
		0.068585, 0.607867, 0.791071,
		64.033417, 55.299541, 61.092117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.210159, 54.425533, 59.946049>,  <63.985405, 54.874035, 60.538368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.210159, 54.425533, 59.946049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.517105, 54.382126, 60.198837>,  <64.701271, 54.356083, 60.350510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.517105, 54.382126, 60.198837>,  <64.210159, 54.425533, 59.946049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.517105, 54.382126, 60.198837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639150, 0.208581, -0.740258,
		-0.051486, 0.971966, 0.229416,
		0.767357, -0.108518, 0.631971,
		64.747314, 54.349571, 60.388428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.730247, 55.038654, 60.026577>,  <64.210159, 54.425533, 59.946049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.730247, 55.038654, 60.026577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.863197, 54.662315, 60.052902>,  <64.942963, 54.436512, 60.068699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.863197, 54.662315, 60.052902>,  <64.730247, 55.038654, 60.026577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.863197, 54.662315, 60.052902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535734, 0.130902, -0.834179,
		0.776222, 0.312515, 0.547553,
		0.332369, -0.940850, 0.065815,
		64.962906, 54.380062, 60.072647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.460976, 55.054695, 60.034782>,  <64.730247, 55.038654, 60.026577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.460976, 55.054695, 60.034782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.291817, 54.761944, 59.821053>,  <65.190323, 54.586292, 59.692814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.291817, 54.761944, 59.821053>,  <65.460976, 55.054695, 60.034782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.291817, 54.761944, 59.821053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582453, 0.232173, -0.779002,
		0.694192, -0.640663, 0.328099,
		-0.422902, -0.731879, -0.534329,
		65.164948, 54.542381, 59.660755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.108139, 55.341705, 60.369389>,  <65.460976, 55.054695, 60.034782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.108139, 55.341705, 60.369389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.444626, 55.135593, 60.303864>,  <66.646523, 55.011929, 60.264549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.444626, 55.135593, 60.303864>,  <66.108139, 55.341705, 60.369389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.444626, 55.135593, 60.303864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019060, 0.274527, -0.961391,
		0.540352, 0.811866, 0.221117,
		0.841223, -0.515275, -0.163815,
		66.696991, 54.981010, 60.254719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.413757, 55.630947, 59.852863>,  <66.108139, 55.341705, 60.369389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.413757, 55.630947, 59.852863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.641548, 55.303722, 59.820702>,  <66.778221, 55.107388, 59.801403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.641548, 55.303722, 59.820702>,  <66.413757, 55.630947, 59.852863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.641548, 55.303722, 59.820702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223195, 0.248033, -0.942690,
		0.791121, 0.518899, 0.323837,
		0.569483, -0.818061, -0.080408,
		66.812393, 55.058304, 59.796577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.062431, 55.820850, 59.777767>,  <66.413757, 55.630947, 59.852863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.062431, 55.820850, 59.777767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.943680, 55.497520, 59.574402>,  <66.872429, 55.303524, 59.452385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.943680, 55.497520, 59.574402>,  <67.062431, 55.820850, 59.777767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.943680, 55.497520, 59.574402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028636, 0.524637, -0.850844,
		0.954488, -0.267151, -0.132603,
		-0.296872, -0.808323, -0.508410,
		66.854614, 55.255024, 59.421879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.371231, 56.474197, 59.753391>,  <67.062431, 55.820850, 59.777767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.371231, 56.474197, 59.753391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.308258, 56.869080, 59.763512>,  <67.270477, 57.106010, 59.769585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.308258, 56.869080, 59.763512>,  <67.371231, 56.474197, 59.753391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.308258, 56.869080, 59.763512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980042, 0.159334, -0.118868,
		-0.121379, 0.006084, -0.992588,
		-0.157430, 0.987206, 0.025303,
		67.261032, 57.165241, 59.771103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.666565, 56.857876, 59.123486>,  <67.371231, 56.474197, 59.753391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.666565, 56.857876, 59.123486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.641762, 57.123436, 59.421585>,  <67.626877, 57.282772, 59.600445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.641762, 57.123436, 59.421585>,  <67.666565, 56.857876, 59.123486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.641762, 57.123436, 59.421585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971964, 0.209848, -0.106065,
		-0.226805, 0.717777, -0.658298,
		-0.062011, 0.663898, 0.745248,
		67.623161, 57.322605, 59.645161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.160912, 57.345459, 59.055614>,  <67.666565, 56.857876, 59.123486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.160912, 57.345459, 59.055614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.071350, 57.383144, 59.443634>,  <68.017609, 57.405754, 59.676445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.071350, 57.383144, 59.443634>,  <68.160912, 57.345459, 59.055614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.071350, 57.383144, 59.443634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974441, 0.040171, 0.221024,
		-0.018145, 0.994741, -0.100797,
		-0.223911, 0.094210, 0.970046,
		68.004173, 57.411407, 59.734646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.576180, 57.942360, 59.416264>,  <68.160912, 57.345459, 59.055614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.576180, 57.942360, 59.416264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.490700, 57.649914, 59.675430>,  <68.439407, 57.474445, 59.830929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.490700, 57.649914, 59.675430>,  <68.576180, 57.942360, 59.416264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.490700, 57.649914, 59.675430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973341, -0.102814, 0.205030,
		-0.083286, 0.674460, 0.733599,
		-0.213709, -0.731118, 0.647916,
		68.426590, 57.430580, 59.869804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.032516, 57.315105, 59.307716>,  <68.576180, 57.942360, 59.416264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.032516, 57.315105, 59.307716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.062401, 57.711288, 59.354050>,  <69.080330, 57.948997, 59.381851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.062401, 57.711288, 59.354050>,  <69.032516, 57.315105, 59.307716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.062401, 57.711288, 59.354050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633467, 0.136855, -0.761571,
		-0.770154, -0.016476, 0.637645,
		0.074718, 0.990454, 0.115837,
		69.084816, 58.008423, 59.388802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.640450, 56.936531, 59.490463>,  <69.032516, 57.315105, 59.307716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.640450, 56.936531, 59.490463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.872925, 57.219658, 59.329857>,  <70.012413, 57.389534, 59.233494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.872925, 57.219658, 59.329857>,  <69.640450, 56.936531, 59.490463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.872925, 57.219658, 59.329857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783519, -0.620003, 0.041157,
		-0.219813, -0.338519, -0.914925,
		0.581188, 0.707815, -0.401520,
		70.047279, 57.432003, 59.209400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.081451, 56.691738, 58.891720>,  <69.640450, 56.936531, 59.490463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.081451, 56.691738, 58.891720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.253082, 56.973251, 59.118202>,  <70.356056, 57.142159, 59.254093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.253082, 56.973251, 59.118202>,  <70.081451, 56.691738, 58.891720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.253082, 56.973251, 59.118202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834526, -0.548727, 0.049652,
		0.345639, 0.451212, -0.822765,
		0.429069, 0.703780, 0.566209,
		70.381805, 57.184387, 59.288067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.844574, 56.894634, 58.684185>,  <70.081451, 56.691738, 58.891720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.844574, 56.894634, 58.684185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.791794, 56.959389, 59.075363>,  <70.760124, 56.998241, 59.310070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.791794, 56.959389, 59.075363>,  <70.844574, 56.894634, 58.684185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.791794, 56.959389, 59.075363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827951, -0.524481, 0.198539,
		0.545055, 0.835890, -0.064826,
		-0.131957, 0.161887, 0.977947,
		70.752205, 57.007954, 59.368748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.466057, 56.964287, 58.896931>,  <70.844574, 56.894634, 58.684185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.466057, 56.964287, 58.896931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.282120, 56.911484, 59.248184>,  <71.171761, 56.879803, 59.458935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.282120, 56.911484, 59.248184>,  <71.466057, 56.964287, 58.896931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.282120, 56.911484, 59.248184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804879, -0.479696, 0.349373,
		0.375117, 0.867448, 0.326836,
		-0.459845, -0.132007, 0.878133,
		71.144165, 56.871883, 59.511623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.001869, 57.045765, 59.352642>,  <71.466057, 56.964287, 58.896931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.001869, 57.045765, 59.352642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.726799, 56.811626, 59.524437>,  <71.561752, 56.671143, 59.627514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.726799, 56.811626, 59.524437>,  <72.001869, 57.045765, 59.352642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.726799, 56.811626, 59.524437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723499, -0.601687, 0.338412,
		0.060332, 0.543457, 0.837266,
		-0.687684, -0.585344, 0.429491,
		71.520493, 56.636024, 59.653286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.512207, 57.570511, 59.380066>,  <72.001869, 57.045765, 59.352642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.512207, 57.570511, 59.380066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.468246, 57.575478, 58.982521>,  <71.441872, 57.578457, 58.743992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.468246, 57.575478, 58.982521>,  <71.512207, 57.570511, 59.380066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.468246, 57.575478, 58.982521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488385, 0.871562, -0.043118,
		0.865680, -0.490127, -0.101854,
		-0.109905, 0.012417, -0.993864,
		71.435272, 57.579205, 58.684361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.014320, 57.710979, 58.967110>,  <71.512207, 57.570511, 59.380066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.014320, 57.710979, 58.967110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.744164, 57.830292, 58.697334>,  <71.582069, 57.901878, 58.535469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.744164, 57.830292, 58.697334>,  <72.014320, 57.710979, 58.967110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.744164, 57.830292, 58.697334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576817, 0.783497, -0.231114,
		0.459487, -0.545123, -0.701222,
		-0.675391, 0.298283, -0.674443,
		71.541550, 57.919777, 58.495003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.322304, 58.176853, 59.520744>,  <72.014320, 57.710979, 58.967110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.322304, 58.176853, 59.520744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.271805, 58.208767, 59.916260>,  <72.241508, 58.227913, 60.153568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.271805, 58.208767, 59.916260>,  <72.322304, 58.176853, 59.520744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.271805, 58.208767, 59.916260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259289, -0.959455, 0.110520,
		0.957513, 0.270334, 0.100438,
		-0.126243, 0.079782, 0.988786,
		72.233932, 58.232700, 60.212894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.900772, 57.892567, 59.736355>,  <72.322304, 58.176853, 59.520744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.900772, 57.892567, 59.736355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.623344, 57.862991, 60.022987>,  <72.456886, 57.845245, 60.194965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.623344, 57.862991, 60.022987>,  <72.900772, 57.892567, 59.736355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.623344, 57.862991, 60.022987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133098, -0.990746, 0.026596,
		0.707984, 0.113822, 0.696996,
		-0.693573, -0.073939, 0.716582,
		72.415276, 57.840809, 60.237961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.264946, 57.491776, 60.275223>,  <72.900772, 57.892567, 59.736355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.264946, 57.491776, 60.275223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.866905, 57.472801, 60.240570>,  <72.628082, 57.461414, 60.219780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.866905, 57.472801, 60.240570>,  <73.264946, 57.491776, 60.275223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.866905, 57.472801, 60.240570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071340, -0.951809, -0.298278,
		-0.068306, -0.302999, 0.950540,
		-0.995111, -0.047438, -0.086630,
		72.568375, 57.458569, 60.214581>
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
