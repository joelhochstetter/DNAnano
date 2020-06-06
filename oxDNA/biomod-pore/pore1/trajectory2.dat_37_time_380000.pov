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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.593842, 43.237431, 42.882694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773804, 43.297394, 43.234856>,  <40.881779, 43.333370, 43.446152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.773804, 43.297394, 43.234856>,  <40.593842, 43.237431, 42.882694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.773804, 43.297394, 43.234856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831261, -0.290095, 0.474183,
		0.326486, -0.945184, -0.005901,
		0.449902, 0.149909, 0.880407,
		40.908775, 43.342365, 43.498978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.444717, 42.641201, 43.292068>,  <40.593842, 43.237431, 42.882694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.444717, 42.641201, 43.292068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555889, 42.915794, 43.560841>,  <40.622593, 43.080551, 43.722107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555889, 42.915794, 43.560841>,  <40.444717, 42.641201, 43.292068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555889, 42.915794, 43.560841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786889, -0.238500, 0.569143,
		0.550963, -0.686921, 0.473899,
		0.277931, 0.686482, 0.671935,
		40.639267, 43.121738, 43.762421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507095, 42.254368, 43.911930>,  <40.444717, 42.641201, 43.292068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507095, 42.254368, 43.911930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440971, 42.634041, 44.019054>,  <40.401299, 42.861843, 44.083328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440971, 42.634041, 44.019054>,  <40.507095, 42.254368, 43.911930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440971, 42.634041, 44.019054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732610, -0.299978, 0.610980,
		0.660270, -0.095201, 0.744970,
		-0.165309, 0.949184, 0.267812,
		40.391380, 42.918797, 44.099400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.284939, 42.090195, 44.429058>,  <40.507095, 42.254368, 43.911930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.284939, 42.090195, 44.429058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174141, 42.474525, 44.425373>,  <40.107662, 42.705124, 44.423164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.174141, 42.474525, 44.425373>,  <40.284939, 42.090195, 44.429058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.174141, 42.474525, 44.425373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779208, -0.219006, 0.587257,
		0.562236, 0.169842, 0.809348,
		-0.276994, 0.960828, -0.009209,
		40.091042, 42.762775, 44.422611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357109, 42.414867, 45.066265>,  <40.284939, 42.090195, 44.429058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357109, 42.414867, 45.066265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056870, 42.587509, 44.866135>,  <39.876728, 42.691093, 44.746056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.056870, 42.587509, 44.866135>,  <40.357109, 42.414867, 45.066265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056870, 42.587509, 44.866135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597639, -0.120469, 0.792663,
		0.281840, 0.893984, 0.348365,
		-0.750596, 0.431600, -0.500327,
		39.831692, 42.716988, 44.716038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899117, 42.820187, 45.626949>,  <40.357109, 42.414867, 45.066265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899117, 42.820187, 45.626949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657082, 42.827942, 45.308578>,  <39.511860, 42.832596, 45.117558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.657082, 42.827942, 45.308578>,  <39.899117, 42.820187, 45.626949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657082, 42.827942, 45.308578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792976, -0.104032, 0.600306,
		-0.071165, 0.994385, 0.078319,
		-0.605083, 0.019384, -0.795927,
		39.475555, 42.833755, 45.069801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.319809, 43.205418, 45.877811>,  <39.899117, 42.820187, 45.626949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.319809, 43.205418, 45.877811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198410, 42.999596, 45.557030>,  <39.125572, 42.876102, 45.364563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.198410, 42.999596, 45.557030>,  <39.319809, 43.205418, 45.877811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198410, 42.999596, 45.557030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914230, -0.079883, 0.397242,
		-0.268465, 0.853729, -0.446176,
		-0.303496, -0.514553, -0.801951,
		39.107361, 42.845230, 45.316444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628593, 43.520931, 45.597652>,  <39.319809, 43.205418, 45.877811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628593, 43.520931, 45.597652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667099, 43.141281, 45.477726>,  <38.690201, 42.913490, 45.405769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667099, 43.141281, 45.477726>,  <38.628593, 43.520931, 45.597652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667099, 43.141281, 45.477726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925466, -0.196225, 0.324051,
		-0.366397, 0.246277, -0.897274,
		0.096261, -0.949128, -0.299818,
		38.695976, 42.856544, 45.387779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905449, 43.289200, 45.194675>,  <38.628593, 43.520931, 45.597652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905449, 43.289200, 45.194675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085270, 42.951096, 45.310219>,  <38.193161, 42.748234, 45.379547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085270, 42.951096, 45.310219>,  <37.905449, 43.289200, 45.194675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085270, 42.951096, 45.310219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891698, -0.443736, 0.089293,
		0.052703, -0.297719, -0.953198,
		0.449552, -0.845258, 0.288862,
		38.220135, 42.697517, 45.396877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455227, 42.722641, 45.085094>,  <37.905449, 43.289200, 45.194675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455227, 42.722641, 45.085094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706696, 42.529648, 45.329056>,  <37.857578, 42.413853, 45.475433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.706696, 42.529648, 45.329056>,  <37.455227, 42.722641, 45.085094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706696, 42.529648, 45.329056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757839, -0.556080, 0.341255,
		0.174504, -0.676745, -0.715238,
		0.628672, -0.482485, 0.609902,
		37.895298, 42.384903, 45.512028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403130, 41.968575, 44.936607>,  <37.455227, 42.722641, 45.085094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403130, 41.968575, 44.936607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546532, 41.982262, 45.309769>,  <37.632572, 41.990475, 45.533665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546532, 41.982262, 45.309769>,  <37.403130, 41.968575, 44.936607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546532, 41.982262, 45.309769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611020, -0.746930, 0.262204,
		0.705782, -0.664022, -0.246874,
		0.358507, 0.034214, 0.932900,
		37.654083, 41.992527, 45.589638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486851, 41.260689, 45.148849>,  <37.403130, 41.968575, 44.936607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486851, 41.260689, 45.148849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459183, 41.466705, 45.490597>,  <37.442581, 41.590317, 45.695644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459183, 41.466705, 45.490597>,  <37.486851, 41.260689, 45.148849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459183, 41.466705, 45.490597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617292, -0.694874, 0.368919,
		0.783688, -0.501878, 0.365994,
		-0.069168, 0.515042, 0.854369,
		37.438431, 41.621220, 45.746906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468842, 40.760101, 45.693127>,  <37.486851, 41.260689, 45.148849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468842, 40.760101, 45.693127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336746, 41.078674, 45.895763>,  <37.257488, 41.269817, 46.017345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336746, 41.078674, 45.895763>,  <37.468842, 40.760101, 45.693127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336746, 41.078674, 45.895763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696362, -0.567885, 0.438848,
		0.637198, -0.207844, 0.742145,
		-0.330241, 0.796434, 0.506590,
		37.237675, 41.317604, 46.047741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497780, 40.589577, 46.392849>,  <37.468842, 40.760101, 45.693127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497780, 40.589577, 46.392849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223068, 40.878204, 46.357830>,  <37.058239, 41.051380, 46.336819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.223068, 40.878204, 46.357830>,  <37.497780, 40.589577, 46.392849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223068, 40.878204, 46.357830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568919, -0.458673, 0.682606,
		0.452396, 0.518606, 0.725525,
		-0.686782, 0.721573, -0.087543,
		37.017033, 41.094677, 46.331566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282276, 40.562172, 46.990654>,  <37.497780, 40.589577, 46.392849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282276, 40.562172, 46.990654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986320, 40.739426, 46.788189>,  <36.808746, 40.845776, 46.666710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986320, 40.739426, 46.788189>,  <37.282276, 40.562172, 46.990654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986320, 40.739426, 46.788189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669751, -0.414474, 0.616153,
		0.063244, 0.794888, 0.603451,
		-0.739888, 0.443130, -0.506164,
		36.764355, 40.872364, 46.636341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849800, 40.836109, 47.532913>,  <37.282276, 40.562172, 46.990654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849800, 40.836109, 47.532913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626030, 40.814171, 47.202087>,  <36.491768, 40.801006, 47.003593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.626030, 40.814171, 47.202087>,  <36.849800, 40.836109, 47.532913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626030, 40.814171, 47.202087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783624, -0.290193, 0.549292,
		-0.270135, 0.955395, 0.119362,
		-0.559429, -0.054848, -0.827062,
		36.458202, 40.797718, 46.953968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167206, 40.990498, 47.783169>,  <36.849800, 40.836109, 47.532913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167206, 40.990498, 47.783169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113594, 40.800598, 47.435226>,  <36.081429, 40.686661, 47.226460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.113594, 40.800598, 47.435226>,  <36.167206, 40.990498, 47.783169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.113594, 40.800598, 47.435226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824689, -0.433277, 0.363538,
		-0.549477, 0.766087, -0.333445,
		-0.134028, -0.474744, -0.869859,
		36.073387, 40.658176, 47.174271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445782, 41.078323, 47.661236>,  <36.167206, 40.990498, 47.783169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445782, 41.078323, 47.661236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583183, 40.770195, 47.446342>,  <35.665627, 40.585320, 47.317406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583183, 40.770195, 47.446342>,  <35.445782, 41.078323, 47.661236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583183, 40.770195, 47.446342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825220, -0.520662, 0.218915,
		-0.448349, 0.368133, -0.814531,
		0.343506, -0.770317, -0.537229,
		35.686234, 40.539101, 47.285175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917572, 40.710243, 47.324726>,  <35.445782, 41.078323, 47.661236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917572, 40.710243, 47.324726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187782, 40.417542, 47.288513>,  <35.349907, 40.241920, 47.266785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187782, 40.417542, 47.288513>,  <34.917572, 40.710243, 47.324726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187782, 40.417542, 47.288513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726996, -0.681504, 0.083844,
		-0.123052, 0.009178, -0.992358,
		0.675526, -0.731757, -0.090533,
		35.390442, 40.198013, 47.261353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654419, 40.067192, 46.937031>,  <34.917572, 40.710243, 47.324726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654419, 40.067192, 46.937031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947338, 39.924408, 47.169003>,  <35.123089, 39.838737, 47.308186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947338, 39.924408, 47.169003>,  <34.654419, 40.067192, 46.937031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947338, 39.924408, 47.169003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561713, -0.798075, 0.218070,
		0.384987, -0.485447, -0.784937,
		0.732300, -0.356955, 0.579931,
		35.167027, 39.817322, 47.342983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593403, 39.345478, 46.892044>,  <34.654419, 40.067192, 46.937031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593403, 39.345478, 46.892044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808479, 39.395096, 47.225632>,  <34.937527, 39.424866, 47.425785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.808479, 39.395096, 47.225632>,  <34.593403, 39.345478, 46.892044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.808479, 39.395096, 47.225632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634307, -0.592125, 0.497034,
		0.555465, -0.796243, -0.239700,
		0.537692, 0.124041, 0.833967,
		34.969788, 39.432308, 47.475822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506405, 38.664532, 47.191471>,  <34.593403, 39.345478, 46.892044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506405, 38.664532, 47.191471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651375, 38.875305, 47.498974>,  <34.738358, 39.001770, 47.683475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651375, 38.875305, 47.498974>,  <34.506405, 38.664532, 47.191471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651375, 38.875305, 47.498974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591893, -0.507021, 0.626572,
		0.719940, -0.682106, 0.128134,
		0.362422, 0.526935, 0.768758,
		34.760101, 39.033386, 47.729603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739056, 38.133862, 47.631111>,  <34.506405, 38.664532, 47.191471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739056, 38.133862, 47.631111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685688, 38.466209, 47.847202>,  <34.653667, 38.665619, 47.976856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.685688, 38.466209, 47.847202>,  <34.739056, 38.133862, 47.631111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685688, 38.466209, 47.847202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441871, -0.537797, 0.718000,
		0.887101, -0.142914, 0.438894,
		-0.133424, 0.830873, 0.540230,
		34.645660, 38.715473, 48.009270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949604, 37.961002, 48.267601>,  <34.739056, 38.133862, 47.631111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949604, 37.961002, 48.267601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722343, 38.279900, 48.349197>,  <34.585987, 38.471237, 48.398155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722343, 38.279900, 48.349197>,  <34.949604, 37.961002, 48.267601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722343, 38.279900, 48.349197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459467, -0.512966, 0.725091,
		0.682713, 0.318232, 0.657747,
		-0.568148, 0.797242, 0.203991,
		34.551899, 38.519073, 48.410397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863583, 38.097908, 49.027485>,  <34.949604, 37.961002, 48.267601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863583, 38.097908, 49.027485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555683, 38.307381, 48.881474>,  <34.370945, 38.433064, 48.793865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555683, 38.307381, 48.881474>,  <34.863583, 38.097908, 49.027485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555683, 38.307381, 48.881474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573599, -0.316479, 0.755530,
		0.280136, 0.790946, 0.543994,
		-0.769745, 0.523685, -0.365029,
		34.324760, 38.464485, 48.771965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709362, 38.497017, 49.521065>,  <34.863583, 38.097908, 49.027485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709362, 38.497017, 49.521065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381157, 38.458939, 49.295605>,  <34.184235, 38.436092, 49.160328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381157, 38.458939, 49.295605>,  <34.709362, 38.497017, 49.521065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381157, 38.458939, 49.295605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487823, -0.397401, 0.777239,
		-0.297983, 0.912694, 0.279634,
		-0.820509, -0.095192, -0.563652,
		34.135006, 38.430382, 49.126511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150299, 38.658180, 50.023415>,  <34.709362, 38.497017, 49.521065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150299, 38.658180, 50.023415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970352, 38.499397, 49.703403>,  <33.862385, 38.404125, 49.511398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970352, 38.499397, 49.703403>,  <34.150299, 38.658180, 50.023415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970352, 38.499397, 49.703403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645040, -0.475133, 0.598475,
		-0.617688, 0.785284, -0.042306,
		-0.449872, -0.396960, -0.800024,
		33.835392, 38.380310, 49.463398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395073, 38.704624, 50.087818>,  <34.150299, 38.658180, 50.023415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395073, 38.704624, 50.087818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479362, 38.404404, 49.837296>,  <33.529938, 38.224270, 49.686981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479362, 38.404404, 49.837296>,  <33.395073, 38.704624, 50.087818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479362, 38.404404, 49.837296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614140, -0.600117, 0.512534,
		-0.760544, 0.276640, -0.587404,
		0.210724, -0.750553, -0.626311,
		33.542580, 38.179237, 49.649403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790890, 38.474403, 49.844925>,  <33.395073, 38.704624, 50.087818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790890, 38.474403, 49.844925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050743, 38.172813, 49.805939>,  <33.206654, 37.991859, 49.782547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050743, 38.172813, 49.805939>,  <32.790890, 38.474403, 49.844925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050743, 38.172813, 49.805939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632160, -0.606945, 0.481656,
		-0.422313, -0.251285, -0.870924,
		0.649635, -0.753972, -0.097469,
		33.245632, 37.946621, 49.776699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394573, 37.961208, 49.704380>,  <32.790890, 38.474403, 49.844925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394573, 37.961208, 49.704380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733189, 37.781723, 49.818947>,  <32.936356, 37.674030, 49.887688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.733189, 37.781723, 49.818947>,  <32.394573, 37.961208, 49.704380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.733189, 37.781723, 49.818947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516530, -0.562249, 0.645811,
		-0.128752, -0.694642, -0.707739,
		0.846534, -0.448718, 0.286413,
		32.987148, 37.647106, 49.904869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.256008, 37.218685, 49.804680>,  <32.394573, 37.961208, 49.704380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.256008, 37.218685, 49.804680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594696, 37.261612, 50.013123>,  <32.797909, 37.287369, 50.138187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594696, 37.261612, 50.013123>,  <32.256008, 37.218685, 49.804680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594696, 37.261612, 50.013123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351202, -0.622997, 0.698951,
		0.399659, -0.774828, -0.489811,
		0.846717, 0.107319, 0.521107,
		32.848713, 37.293808, 50.169456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445557, 36.534721, 50.064175>,  <32.256008, 37.218685, 49.804680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445557, 36.534721, 50.064175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662411, 36.771469, 50.302765>,  <32.792522, 36.913517, 50.445919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662411, 36.771469, 50.302765>,  <32.445557, 36.534721, 50.064175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662411, 36.771469, 50.302765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299001, -0.527504, 0.795197,
		0.785293, -0.609452, -0.109011,
		0.542138, 0.591868, 0.596472,
		32.825050, 36.949028, 50.481705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531029, 36.061729, 50.613640>,  <32.445557, 36.534721, 50.064175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531029, 36.061729, 50.613640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643047, 36.421013, 50.749168>,  <32.710258, 36.636581, 50.830486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643047, 36.421013, 50.749168>,  <32.531029, 36.061729, 50.613640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643047, 36.421013, 50.749168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253299, -0.271300, 0.928567,
		0.925965, -0.345869, 0.151536,
		0.280051, 0.898204, 0.338822,
		32.727062, 36.690475, 50.850815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941425, 35.911255, 51.262520>,  <32.531029, 36.061729, 50.613640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941425, 35.911255, 51.262520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786568, 36.280029, 51.257515>,  <32.693653, 36.501293, 51.254513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786568, 36.280029, 51.257515>,  <32.941425, 35.911255, 51.262520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786568, 36.280029, 51.257515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215728, -0.077381, 0.973383,
		0.896427, 0.379538, 0.228845,
		-0.387144, 0.921935, -0.012510,
		32.670425, 36.556610, 51.253761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220722, 36.216145, 51.790398>,  <32.941425, 35.911255, 51.262520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220722, 36.216145, 51.790398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903435, 36.454407, 51.739799>,  <32.713062, 36.597366, 51.709442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.903435, 36.454407, 51.739799>,  <33.220722, 36.216145, 51.790398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.903435, 36.454407, 51.739799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205913, -0.066886, 0.976282,
		0.573070, 0.800448, 0.175709,
		-0.793215, 0.595659, -0.126493,
		32.665470, 36.633106, 51.701851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233967, 36.632896, 52.257210>,  <33.220722, 36.216145, 51.790398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233967, 36.632896, 52.257210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846340, 36.679863, 52.170387>,  <32.613762, 36.708042, 52.118294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.846340, 36.679863, 52.170387>,  <33.233967, 36.632896, 52.257210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.846340, 36.679863, 52.170387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215334, 0.027345, 0.976157,
		0.120552, 0.992706, -0.001216,
		-0.969071, 0.117416, -0.217060,
		32.555618, 36.715088, 52.105270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013096, 36.990307, 52.875633>,  <33.233967, 36.632896, 52.257210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013096, 36.990307, 52.875633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676235, 36.881783, 52.689224>,  <32.474121, 36.816666, 52.577377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676235, 36.881783, 52.689224>,  <33.013096, 36.990307, 52.875633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676235, 36.881783, 52.689224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461309, -0.085065, 0.883152,
		-0.279253, 0.958725, -0.053522,
		-0.842147, -0.271313, -0.466023,
		32.423592, 36.800388, 52.549416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557400, 37.454979, 52.966564>,  <33.013096, 36.990307, 52.875633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557400, 37.454979, 52.966564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350006, 37.122429, 52.886570>,  <32.225571, 36.922901, 52.838573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350006, 37.122429, 52.886570>,  <32.557400, 37.454979, 52.966564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350006, 37.122429, 52.886570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487102, 0.094946, 0.868169,
		-0.702784, 0.547544, -0.454191,
		-0.518485, -0.831373, -0.199983,
		32.194462, 36.873016, 52.826576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886749, 37.605869, 53.231464>,  <32.557400, 37.454979, 52.966564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886749, 37.605869, 53.231464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956335, 37.213150, 53.200970>,  <31.998087, 36.977520, 53.182674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956335, 37.213150, 53.200970>,  <31.886749, 37.605869, 53.231464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956335, 37.213150, 53.200970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557684, -0.162029, 0.814085,
		-0.811619, -0.099104, -0.575720,
		0.173962, -0.981797, -0.076237,
		32.008522, 36.918610, 53.178097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258682, 37.261421, 53.448990>,  <31.886749, 37.605869, 53.231464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258682, 37.261421, 53.448990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488497, 36.934029, 53.448982>,  <31.626385, 36.737595, 53.448978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.488497, 36.934029, 53.448982>,  <31.258682, 37.261421, 53.448990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.488497, 36.934029, 53.448982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468534, -0.328912, 0.819935,
		-0.671108, -0.471070, -0.572457,
		0.574535, -0.818480, -0.000023,
		31.660858, 36.688484, 53.448975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831312, 36.625175, 53.581108>,  <31.258682, 37.261421, 53.448990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831312, 36.625175, 53.581108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207516, 36.537621, 53.685059>,  <31.433237, 36.485088, 53.747429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.207516, 36.537621, 53.685059>,  <30.831312, 36.625175, 53.581108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207516, 36.537621, 53.685059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328069, -0.385985, 0.862198,
		-0.088417, -0.896161, -0.434832,
		0.940507, -0.218888, 0.259875,
		31.489668, 36.471954, 53.763020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830742, 35.823349, 53.750004>,  <30.831312, 36.625175, 53.581108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830742, 35.823349, 53.750004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141716, 36.004692, 53.924389>,  <31.328300, 36.113499, 54.029022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.141716, 36.004692, 53.924389>,  <30.830742, 35.823349, 53.750004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141716, 36.004692, 53.924389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268480, -0.387626, 0.881853,
		0.568784, -0.802630, -0.179637,
		0.777434, 0.453355, 0.435966,
		31.374947, 36.140697, 54.055180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.286991, 35.283142, 54.245495>,  <30.830742, 35.823349, 53.750004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.286991, 35.283142, 54.245495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290367, 35.674828, 54.326550>,  <31.292393, 35.909840, 54.375183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290367, 35.674828, 54.326550>,  <31.286991, 35.283142, 54.245495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290367, 35.674828, 54.326550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565056, -0.162521, 0.808888,
		0.825010, -0.121331, 0.551941,
		0.008441, 0.979217, 0.202640,
		31.292900, 35.968594, 54.387341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591637, 35.490105, 54.879814>,  <31.286991, 35.283142, 54.245495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591637, 35.490105, 54.879814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289257, 35.739563, 54.800209>,  <31.107830, 35.889236, 54.752445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289257, 35.739563, 54.800209>,  <31.591637, 35.490105, 54.879814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289257, 35.739563, 54.800209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527885, -0.400943, 0.748721,
		0.387141, 0.671053, 0.632305,
		-0.755949, 0.623645, -0.199017,
		31.062471, 35.926655, 54.740505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296705, 35.909569, 55.539577>,  <31.591637, 35.490105, 54.879814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296705, 35.909569, 55.539577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028566, 35.836906, 55.251789>,  <30.867683, 35.793308, 55.079117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.028566, 35.836906, 55.251789>,  <31.296705, 35.909569, 55.539577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028566, 35.836906, 55.251789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594152, -0.449449, 0.667067,
		-0.444539, 0.874642, 0.193358,
		-0.670349, -0.181653, -0.719468,
		30.827461, 35.782410, 55.035950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.734629, 36.004539, 56.035049>,  <31.296705, 35.909569, 55.539577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.734629, 36.004539, 56.035049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380533, 36.179863, 56.097317>,  <30.168076, 36.285057, 56.134678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.380533, 36.179863, 56.097317>,  <30.734629, 36.004539, 56.035049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380533, 36.179863, 56.097317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233770, -0.708588, 0.665773,
		0.402123, 0.552978, 0.729735,
		-0.885239, 0.438313, 0.155670,
		30.114962, 36.311356, 56.144016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656338, 36.056812, 56.816212>,  <30.734629, 36.004539, 56.035049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656338, 36.056812, 56.816212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315994, 36.048286, 56.606224>,  <30.111788, 36.043171, 56.480232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315994, 36.048286, 56.606224>,  <30.656338, 36.056812, 56.816212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315994, 36.048286, 56.606224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355000, -0.713269, 0.604336,
		-0.387320, 0.700566, 0.599325,
		-0.850857, -0.021311, -0.524965,
		30.060738, 36.041893, 56.448734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877651, 36.867649, 56.725136>,  <30.656338, 36.056812, 56.816212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877651, 36.867649, 56.725136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089546, 37.129242, 56.941170>,  <31.216682, 37.286198, 57.070789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.089546, 37.129242, 56.941170>,  <30.877651, 36.867649, 56.725136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089546, 37.129242, 56.941170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674144, 0.061765, -0.736013,
		-0.514695, 0.753988, -0.408156,
		0.529735, 0.653978, 0.540086,
		31.248466, 37.325436, 57.103195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024076, 37.494312, 56.276222>,  <30.877651, 36.867649, 56.725136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024076, 37.494312, 56.276222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298767, 37.435715, 56.561024>,  <31.463581, 37.400558, 56.731903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298767, 37.435715, 56.561024>,  <31.024076, 37.494312, 56.276222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298767, 37.435715, 56.561024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709565, -0.077644, -0.700350,
		0.157877, 0.986160, 0.050624,
		0.686726, -0.146490, 0.712003,
		31.504786, 37.391769, 56.774624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.507875, 37.793022, 56.011745>,  <31.024076, 37.494312, 56.276222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.507875, 37.793022, 56.011745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643013, 37.538101, 56.288788>,  <31.724096, 37.385147, 56.455013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643013, 37.538101, 56.288788>,  <31.507875, 37.793022, 56.011745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643013, 37.538101, 56.288788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843991, -0.120568, -0.522630,
		0.416581, 0.761121, 0.497147,
		0.337845, -0.637306, 0.692605,
		31.744366, 37.346909, 56.496571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.160114, 37.969845, 56.239712>,  <31.507875, 37.793022, 56.011745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.160114, 37.969845, 56.239712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120960, 37.572807, 56.268478>,  <32.097466, 37.334583, 56.285740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.120960, 37.572807, 56.268478>,  <32.160114, 37.969845, 56.239712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120960, 37.572807, 56.268478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765878, -0.121283, -0.631444,
		0.635491, -0.006728, 0.772079,
		-0.097888, -0.992595, 0.071921,
		32.091595, 37.275028, 56.290054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778656, 37.724007, 56.641193>,  <32.160114, 37.969845, 56.239712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778656, 37.724007, 56.641193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612373, 37.484451, 56.367401>,  <32.512604, 37.340717, 56.203125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.612373, 37.484451, 56.367401>,  <32.778656, 37.724007, 56.641193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.612373, 37.484451, 56.367401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798236, 0.120446, -0.590180,
		0.435897, -0.791721, 0.427986,
		-0.415708, -0.598891, -0.684482,
		32.487659, 37.304783, 56.162056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367092, 37.544823, 56.361698>,  <32.778656, 37.724007, 56.641193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367092, 37.544823, 56.361698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079880, 37.461586, 56.096024>,  <32.907555, 37.411644, 55.936619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079880, 37.461586, 56.096024>,  <33.367092, 37.544823, 56.361698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079880, 37.461586, 56.096024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672573, 0.038143, -0.739047,
		0.179119, -0.977366, 0.112566,
		-0.718026, -0.208086, -0.664182,
		32.864471, 37.399158, 55.896770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549107, 36.959389, 56.047150>,  <33.367092, 37.544823, 56.361698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549107, 36.959389, 56.047150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275932, 37.114288, 55.799397>,  <33.112026, 37.207230, 55.650745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.275932, 37.114288, 55.799397>,  <33.549107, 36.959389, 56.047150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275932, 37.114288, 55.799397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671041, -0.002427, -0.741416,
		-0.288617, -0.921971, -0.258203,
		-0.682938, 0.387250, -0.619382,
		33.071053, 37.230465, 55.613583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.755814, 36.576054, 55.412491>,  <33.549107, 36.959389, 56.047150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.755814, 36.576054, 55.412491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539940, 36.903862, 55.335419>,  <33.410416, 37.100548, 55.289173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.539940, 36.903862, 55.335419>,  <33.755814, 36.576054, 55.412491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539940, 36.903862, 55.335419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469093, 0.102683, -0.877159,
		-0.699063, -0.563778, -0.439847,
		-0.539688, 0.819518, -0.192683,
		33.378033, 37.149719, 55.277615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655754, 36.409878, 54.699814>,  <33.755814, 36.576054, 55.412491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655754, 36.409878, 54.699814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538151, 36.791283, 54.726292>,  <33.467590, 37.020126, 54.742180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538151, 36.791283, 54.726292>,  <33.655754, 36.409878, 54.699814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538151, 36.791283, 54.726292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503922, 0.213483, -0.836951,
		-0.812171, -0.212714, -0.543260,
		-0.294008, 0.953508, 0.066193,
		33.449947, 37.077335, 54.746151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411953, 36.674236, 54.105679>,  <33.655754, 36.409878, 54.699814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411953, 36.674236, 54.105679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536301, 36.994827, 54.310028>,  <33.610909, 37.187183, 54.432640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536301, 36.994827, 54.310028>,  <33.411953, 36.674236, 54.105679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536301, 36.994827, 54.310028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531786, 0.298828, -0.792405,
		-0.787758, 0.518012, -0.333317,
		0.310871, 0.801477, 0.510876,
		33.629562, 37.235271, 54.463291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495731, 37.191959, 53.609901>,  <33.411953, 36.674236, 54.105679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495731, 37.191959, 53.609901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688736, 37.326332, 53.933464>,  <33.804539, 37.406956, 54.127602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688736, 37.326332, 53.933464>,  <33.495731, 37.191959, 53.609901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688736, 37.326332, 53.933464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653703, 0.476566, -0.587841,
		-0.582971, 0.812427, 0.010352,
		0.482511, 0.335927, 0.808910,
		33.833488, 37.427109, 54.176136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475018, 37.948475, 53.657890>,  <33.495731, 37.191959, 53.609901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475018, 37.948475, 53.657890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789024, 37.845421, 53.883232>,  <33.977428, 37.783588, 54.018436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.789024, 37.845421, 53.883232>,  <33.475018, 37.948475, 53.657890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789024, 37.845421, 53.883232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569004, 0.659424, -0.491319,
		-0.244911, 0.706247, 0.664254,
		0.785018, -0.257634, 0.563357,
		34.024529, 37.768131, 54.052238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871902, 38.666805, 53.879459>,  <33.475018, 37.948475, 53.657890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871902, 38.666805, 53.879459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147087, 38.390533, 53.968609>,  <34.312199, 38.224770, 54.022099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.147087, 38.390533, 53.968609>,  <33.871902, 38.666805, 53.879459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147087, 38.390533, 53.968609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724864, 0.638762, -0.257983,
		0.035818, 0.339037, 0.940091,
		0.687960, -0.690678, 0.222876,
		34.353474, 38.183331, 54.035473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338257, 38.915730, 54.279835>,  <33.871902, 38.666805, 53.879459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338257, 38.915730, 54.279835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531273, 38.624809, 54.084618>,  <34.647083, 38.450256, 53.967487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531273, 38.624809, 54.084618>,  <34.338257, 38.915730, 54.279835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531273, 38.624809, 54.084618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611258, 0.678715, -0.407073,
		0.627308, -0.101892, 0.772076,
		0.482542, -0.727299, -0.488046,
		34.676037, 38.406620, 53.938202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974243, 39.138905, 54.369568>,  <34.338257, 38.915730, 54.279835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974243, 39.138905, 54.369568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994392, 38.863197, 54.080467>,  <35.006481, 38.697773, 53.907005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.994392, 38.863197, 54.080467>,  <34.974243, 39.138905, 54.369568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994392, 38.863197, 54.080467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732733, 0.517251, -0.442215,
		0.678650, -0.507308, 0.531105,
		0.050376, -0.689267, -0.722754,
		35.009506, 38.656418, 53.863640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.703571, 39.102634, 54.086601>,  <34.974243, 39.138905, 54.369568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.703571, 39.102634, 54.086601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518982, 38.905815, 53.791325>,  <35.408230, 38.787724, 53.614159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518982, 38.905815, 53.791325>,  <35.703571, 39.102634, 54.086601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518982, 38.905815, 53.791325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547797, 0.496472, -0.673376,
		0.697827, -0.715124, 0.040435,
		-0.461472, -0.492050, -0.738194,
		35.380539, 38.758202, 53.569866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244289, 39.032864, 53.625278>,  <35.703571, 39.102634, 54.086601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244289, 39.032864, 53.625278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913048, 38.966286, 53.411163>,  <35.714302, 38.926338, 53.282696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913048, 38.966286, 53.411163>,  <36.244289, 39.032864, 53.625278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913048, 38.966286, 53.411163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440481, 0.397406, -0.805012,
		0.346714, -0.902422, -0.255781,
		-0.828110, -0.166443, -0.535286,
		35.664616, 38.916351, 53.250576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453308, 38.761658, 53.014606>,  <36.244289, 39.032864, 53.625278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453308, 38.761658, 53.014606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088089, 38.897881, 52.924839>,  <35.868958, 38.979614, 52.870979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088089, 38.897881, 52.924839>,  <36.453308, 38.761658, 53.014606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088089, 38.897881, 52.924839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316090, 0.243121, -0.917049,
		-0.257751, -0.908245, -0.329629,
		-0.913045, 0.340562, -0.224423,
		35.814175, 39.000050, 52.857513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186146, 38.439518, 52.326305>,  <36.453308, 38.761658, 53.014606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186146, 38.439518, 52.326305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006302, 38.789482, 52.398289>,  <35.898396, 38.999462, 52.441479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.006302, 38.789482, 52.398289>,  <36.186146, 38.439518, 52.326305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006302, 38.789482, 52.398289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194198, 0.292398, -0.936371,
		-0.871859, -0.386053, -0.301370,
		-0.449609, 0.874909, 0.179959,
		35.871418, 39.051956, 52.452278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792408, 38.657909, 51.812744>,  <36.186146, 38.439518, 52.326305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792408, 38.657909, 51.812744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812920, 39.013824, 51.994141>,  <35.825226, 39.227371, 52.102978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812920, 39.013824, 51.994141>,  <35.792408, 38.657909, 51.812744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812920, 39.013824, 51.994141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164648, 0.440343, -0.882603,
		-0.985018, 0.119929, -0.123918,
		0.051283, 0.889784, 0.453493,
		35.828304, 39.280758, 52.130188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346119, 39.083664, 51.475510>,  <35.792408, 38.657909, 51.812744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346119, 39.083664, 51.475510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588593, 39.336655, 51.668388>,  <35.734077, 39.488449, 51.784115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.588593, 39.336655, 51.668388>,  <35.346119, 39.083664, 51.475510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588593, 39.336655, 51.668388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081221, 0.553892, -0.828617,
		-0.791168, 0.541458, 0.284389,
		0.606182, 0.632477, 0.482200,
		35.770447, 39.526398, 51.813049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185860, 39.783787, 51.209408>,  <35.346119, 39.083664, 51.475510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185860, 39.783787, 51.209408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541801, 39.838890, 51.383385>,  <35.755367, 39.871952, 51.487770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.541801, 39.838890, 51.383385>,  <35.185860, 39.783787, 51.209408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541801, 39.838890, 51.383385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265215, 0.619518, -0.738822,
		-0.371234, 0.772800, 0.514748,
		0.889858, 0.137757, 0.434944,
		35.808758, 39.880219, 51.513866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376373, 40.509144, 51.024940>,  <35.185860, 39.783787, 51.209408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376373, 40.509144, 51.024940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705368, 40.330261, 51.165520>,  <35.902767, 40.222931, 51.249866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.705368, 40.330261, 51.165520>,  <35.376373, 40.509144, 51.024940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705368, 40.330261, 51.165520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541262, 0.425533, -0.725229,
		0.174773, 0.786720, 0.592052,
		0.822490, -0.447206, 0.351450,
		35.952114, 40.196098, 51.270954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803738, 41.020290, 51.282398>,  <35.376373, 40.509144, 51.024940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803738, 41.020290, 51.282398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026772, 40.709785, 51.164742>,  <36.160591, 40.523483, 51.094147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.026772, 40.709785, 51.164742>,  <35.803738, 41.020290, 51.282398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026772, 40.709785, 51.164742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514894, 0.601345, -0.610956,
		0.651143, 0.189207, 0.734993,
		0.557581, -0.776263, -0.294140,
		36.194046, 40.476906, 51.076500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483284, 41.306499, 51.221279>,  <35.803738, 41.020290, 51.282398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483284, 41.306499, 51.221279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503677, 40.970230, 51.005627>,  <36.515915, 40.768467, 50.876236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.503677, 40.970230, 51.005627>,  <36.483284, 41.306499, 51.221279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.503677, 40.970230, 51.005627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605177, 0.455443, -0.652942,
		0.794457, -0.292981, 0.531978,
		0.050986, -0.840675, -0.539135,
		36.518974, 40.718029, 50.843887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137905, 41.379723, 50.994759>,  <36.483284, 41.306499, 51.221279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137905, 41.379723, 50.994759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976601, 41.103264, 50.754860>,  <36.879818, 40.937389, 50.610920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.976601, 41.103264, 50.754860>,  <37.137905, 41.379723, 50.994759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976601, 41.103264, 50.754860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645108, 0.250119, -0.721994,
		0.649011, -0.678057, 0.344999,
		-0.403262, -0.691143, -0.599750,
		36.855621, 40.895920, 50.574936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671181, 41.100246, 50.771263>,  <37.137905, 41.379723, 50.994759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671181, 41.100246, 50.771263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377380, 41.024254, 50.510674>,  <37.201099, 40.978657, 50.354321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.377380, 41.024254, 50.510674>,  <37.671181, 41.100246, 50.771263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377380, 41.024254, 50.510674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558791, 0.375404, -0.739476,
		0.385064, -0.907179, -0.169564,
		-0.734492, -0.189995, -0.651478,
		37.157032, 40.967258, 50.315231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.959381, 40.687611, 50.266914>,  <37.671181, 41.100246, 50.771263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.959381, 40.687611, 50.266914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638840, 40.834312, 50.077888>,  <37.446514, 40.922333, 49.964474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.638840, 40.834312, 50.077888>,  <37.959381, 40.687611, 50.266914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.638840, 40.834312, 50.077888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589289, 0.348273, -0.729003,
		-0.102785, -0.862668, -0.495217,
		-0.801358, 0.366756, -0.472563,
		37.398434, 40.944340, 49.936119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123802, 40.655540, 49.557766>,  <37.959381, 40.687611, 50.266914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123802, 40.655540, 49.557766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800316, 40.890434, 49.544319>,  <37.606224, 41.031372, 49.536251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.800316, 40.890434, 49.544319>,  <38.123802, 40.655540, 49.557766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800316, 40.890434, 49.544319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335365, 0.413397, -0.846542,
		-0.483224, -0.695886, -0.531260,
		-0.808718, 0.587236, -0.033613,
		37.557701, 41.066605, 49.534237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828903, 40.557713, 48.935596>,  <38.123802, 40.655540, 49.557766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828903, 40.557713, 48.935596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734375, 40.920647, 49.074677>,  <37.677658, 41.138409, 49.158123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.734375, 40.920647, 49.074677>,  <37.828903, 40.557713, 48.935596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734375, 40.920647, 49.074677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551600, 0.419860, -0.720732,
		-0.799930, 0.021463, -0.599710,
		-0.236325, 0.907335, 0.347698,
		37.663479, 41.192848, 49.178986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685379, 40.920296, 48.356434>,  <37.828903, 40.557713, 48.935596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685379, 40.920296, 48.356434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775146, 41.171051, 48.654869>,  <37.829006, 41.321503, 48.833931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.775146, 41.171051, 48.654869>,  <37.685379, 40.920296, 48.356434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775146, 41.171051, 48.654869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609907, 0.506770, -0.609260,
		-0.760033, 0.591775, -0.268613,
		0.224419, 0.626886, 0.746090,
		37.842472, 41.359116, 48.878696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734779, 41.630180, 48.063717>,  <37.685379, 40.920296, 48.356434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.734779, 41.630180, 48.063717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934746, 41.664139, 48.408478>,  <38.054726, 41.684513, 48.615334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934746, 41.664139, 48.408478>,  <37.734779, 41.630180, 48.063717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934746, 41.664139, 48.408478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674349, 0.586310, -0.448880,
		-0.543449, 0.805626, 0.235859,
		0.499917, 0.084892, 0.861903,
		38.084721, 41.689606, 48.667049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807175, 42.340565, 48.142296>,  <37.734779, 41.630180, 48.063717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807175, 42.340565, 48.142296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088440, 42.183701, 48.379539>,  <38.257198, 42.089581, 48.521885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088440, 42.183701, 48.379539>,  <37.807175, 42.340565, 48.142296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088440, 42.183701, 48.379539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695642, 0.552031, -0.459721,
		-0.147130, 0.735848, 0.660969,
		0.703161, -0.392159, 0.593107,
		38.299389, 42.066051, 48.557472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147720, 42.923409, 48.185841>,  <37.807175, 42.340565, 48.142296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147720, 42.923409, 48.185841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385193, 42.622063, 48.298962>,  <38.527676, 42.441254, 48.366837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385193, 42.622063, 48.298962>,  <38.147720, 42.923409, 48.185841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385193, 42.622063, 48.298962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771966, 0.433991, -0.464457,
		0.227171, 0.494057, 0.839226,
		0.593685, -0.753366, 0.282805,
		38.563297, 42.396053, 48.383804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636654, 43.127872, 48.635231>,  <38.147720, 42.923409, 48.185841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.636654, 43.127872, 48.635231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817551, 42.792725, 48.512951>,  <38.926086, 42.591637, 48.439583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817551, 42.792725, 48.512951>,  <38.636654, 43.127872, 48.635231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817551, 42.792725, 48.512951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795694, 0.533864, -0.286112,
		0.402929, -0.113854, 0.908122,
		0.452239, -0.837870, -0.305702,
		38.953224, 42.541363, 48.421242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271561, 43.181522, 48.860844>,  <38.636654, 43.127872, 48.635231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271561, 43.181522, 48.860844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307480, 42.910622, 48.568745>,  <39.329029, 42.748081, 48.393486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.307480, 42.910622, 48.568745>,  <39.271561, 43.181522, 48.860844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307480, 42.910622, 48.568745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844748, 0.440184, -0.304368,
		0.527578, -0.589544, 0.611637,
		0.089795, -0.677256, -0.730247,
		39.334419, 42.707443, 48.349670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916695, 42.935993, 49.007187>,  <39.271561, 43.181522, 48.860844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916695, 42.935993, 49.007187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819729, 42.871742, 48.624474>,  <39.761551, 42.833191, 48.394844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819729, 42.871742, 48.624474>,  <39.916695, 42.935993, 49.007187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819729, 42.871742, 48.624474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863179, 0.414502, -0.288287,
		0.442896, -0.895760, 0.038171,
		-0.242414, -0.160630, -0.956783,
		39.747005, 42.823555, 48.337440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592976, 42.750801, 48.731102>,  <39.916695, 42.935993, 49.007187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592976, 42.750801, 48.731102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369240, 42.815025, 48.405807>,  <40.234997, 42.853561, 48.210632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.369240, 42.815025, 48.405807>,  <40.592976, 42.750801, 48.731102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369240, 42.815025, 48.405807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800905, 0.357650, -0.480248,
		0.213743, -0.919949, -0.328645,
		-0.559344, 0.160563, -0.813237,
		40.201435, 42.863194, 48.161835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.980141, 42.468262, 48.135082>,  <40.592976, 42.750801, 48.731102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.980141, 42.468262, 48.135082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698509, 42.719193, 48.001976>,  <40.529530, 42.869751, 47.922112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.698509, 42.719193, 48.001976>,  <40.980141, 42.468262, 48.135082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698509, 42.719193, 48.001976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683445, 0.471406, -0.557386,
		-0.192795, -0.619872, -0.760650,
		-0.704083, 0.627324, -0.332764,
		40.487286, 42.907391, 47.902145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.025517, 42.426613, 47.430965>,  <40.980141, 42.468262, 48.135082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.025517, 42.426613, 47.430965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877998, 42.780632, 47.544579>,  <40.789490, 42.993046, 47.612747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877998, 42.780632, 47.544579>,  <41.025517, 42.426613, 47.430965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877998, 42.780632, 47.544579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694863, 0.465469, -0.548182,
		-0.617379, -0.004801, -0.786651,
		-0.368794, 0.885051, 0.284035,
		40.767361, 43.046146, 47.629787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.067173, 42.665340, 46.873436>,  <41.025517, 42.426613, 47.430965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.067173, 42.665340, 46.873436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031963, 42.956802, 47.145115>,  <41.010838, 43.131680, 47.308121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.031963, 42.956802, 47.145115>,  <41.067173, 42.665340, 46.873436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031963, 42.956802, 47.145115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583865, 0.590177, -0.557488,
		-0.807064, 0.347486, -0.477389,
		-0.088024, 0.728659, 0.679196,
		41.005554, 43.175400, 47.348873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.987473, 43.270809, 46.442661>,  <41.067173, 42.665340, 46.873436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.987473, 43.270809, 46.442661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064720, 43.434387, 46.799416>,  <41.111069, 43.532536, 47.013470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064720, 43.434387, 46.799416>,  <40.987473, 43.270809, 46.442661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064720, 43.434387, 46.799416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526482, 0.723866, -0.445909,
		-0.827961, 0.555678, -0.075509,
		0.193124, 0.408949, 0.891888,
		41.122658, 43.557072, 47.066982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858337, 43.951199, 46.331856>,  <40.987473, 43.270809, 46.442661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858337, 43.951199, 46.331856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079803, 43.954674, 46.664932>,  <41.212685, 43.956757, 46.864777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.079803, 43.954674, 46.664932>,  <40.858337, 43.951199, 46.331856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.079803, 43.954674, 46.664932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535203, 0.762362, -0.363816,
		-0.637973, 0.647092, 0.417448,
		0.553669, 0.008685, 0.832692,
		41.245903, 43.957279, 46.914742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921436, 44.623310, 46.559483>,  <40.858337, 43.951199, 46.331856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921436, 44.623310, 46.559483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238190, 44.413284, 46.684204>,  <41.428242, 44.287270, 46.759037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.238190, 44.413284, 46.684204>,  <40.921436, 44.623310, 46.559483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238190, 44.413284, 46.684204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607332, 0.730467, -0.312354,
		-0.063758, 0.436719, 0.897336,
		0.791885, -0.525066, 0.311806,
		41.475754, 44.255764, 46.777744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360733, 45.156029, 46.817947>,  <40.921436, 44.623310, 46.559483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360733, 45.156029, 46.817947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595440, 44.837517, 46.759109>,  <41.736263, 44.646408, 46.723808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.595440, 44.837517, 46.759109>,  <41.360733, 45.156029, 46.817947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595440, 44.837517, 46.759109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768627, 0.604855, -0.208236,
		0.254784, 0.009127, 0.966955,
		0.586768, -0.796283, -0.147092,
		41.771469, 44.598633, 46.714981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.836399, 45.072155, 47.183578>,  <41.360733, 45.156029, 46.817947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.836399, 45.072155, 47.183578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850033, 45.400475, 47.411655>,  <40.858212, 45.597466, 47.548504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850033, 45.400475, 47.411655>,  <40.836399, 45.072155, 47.183578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850033, 45.400475, 47.411655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409524, -0.508960, 0.757132,
		0.911662, -0.259315, 0.318791,
		0.034084, 0.820802, 0.570196,
		40.860256, 45.646713, 47.582714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147854, 44.842266, 47.836803>,  <40.836399, 45.072155, 47.183578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147854, 44.842266, 47.836803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937035, 45.172455, 47.917606>,  <40.810543, 45.370567, 47.966087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937035, 45.172455, 47.917606>,  <41.147854, 44.842266, 47.836803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937035, 45.172455, 47.917606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334690, -0.420114, 0.843497,
		0.781152, 0.376956, 0.497700,
		-0.527051, 0.825475, 0.202009,
		40.778919, 45.420097, 47.978210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162102, 45.072056, 48.516693>,  <41.147854, 44.842266, 47.836803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162102, 45.072056, 48.516693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816963, 45.238052, 48.401264>,  <40.609879, 45.337650, 48.332008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.816963, 45.238052, 48.401264>,  <41.162102, 45.072056, 48.516693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816963, 45.238052, 48.401264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462807, -0.419098, 0.781132,
		0.203222, 0.807552, 0.553679,
		-0.862850, 0.414990, -0.288571,
		40.558109, 45.362549, 48.314693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842571, 45.285320, 49.150799>,  <41.162102, 45.072056, 48.516693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842571, 45.285320, 49.150799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533363, 45.312454, 48.898499>,  <40.347839, 45.328735, 48.747120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.533363, 45.312454, 48.898499>,  <40.842571, 45.285320, 49.150799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533363, 45.312454, 48.898499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610080, -0.352070, 0.709823,
		-0.173921, 0.933512, 0.313538,
		-0.773016, 0.067830, -0.630750,
		40.301460, 45.332802, 48.709274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277554, 45.729889, 49.510731>,  <40.842571, 45.285320, 49.150799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277554, 45.729889, 49.510731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105652, 45.515411, 49.220127>,  <40.002510, 45.386726, 49.045765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105652, 45.515411, 49.220127>,  <40.277554, 45.729889, 49.510731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105652, 45.515411, 49.220127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751029, -0.234406, 0.617259,
		-0.501265, 0.810897, -0.301958,
		-0.429753, -0.536190, -0.726507,
		39.976727, 45.354553, 49.002174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580540, 45.911743, 49.577011>,  <40.277554, 45.729889, 49.510731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580540, 45.911743, 49.577011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574821, 45.561714, 49.383499>,  <39.571388, 45.351696, 49.267391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.574821, 45.561714, 49.383499>,  <39.580540, 45.911743, 49.577011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.574821, 45.561714, 49.383499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748663, -0.311342, 0.585295,
		-0.662796, 0.370556, -0.650684,
		-0.014300, -0.875074, -0.483778,
		39.570530, 45.299191, 49.238365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892105, 45.765923, 49.372429>,  <39.580540, 45.911743, 49.577011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.892105, 45.765923, 49.372429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080307, 45.413124, 49.383022>,  <39.193230, 45.201443, 49.389378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080307, 45.413124, 49.383022>,  <38.892105, 45.765923, 49.372429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080307, 45.413124, 49.383022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668108, -0.336473, 0.663639,
		-0.576418, -0.329941, -0.747584,
		0.470504, -0.882001, 0.026487,
		39.221458, 45.148525, 49.390968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277836, 45.307903, 49.251865>,  <38.892105, 45.765923, 49.372429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277836, 45.307903, 49.251865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567863, 45.066551, 49.384651>,  <38.741882, 44.921738, 49.464321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567863, 45.066551, 49.384651>,  <38.277836, 45.307903, 49.251865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567863, 45.066551, 49.384651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559323, -0.234733, 0.795021,
		-0.401782, -0.762120, -0.507685,
		0.725072, -0.603385, 0.331960,
		38.785385, 44.885536, 49.484238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923470, 44.702522, 49.416115>,  <38.277836, 45.307903, 49.251865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923470, 44.702522, 49.416115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282707, 44.664352, 49.587841>,  <38.498249, 44.641449, 49.690876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.282707, 44.664352, 49.587841>,  <37.923470, 44.702522, 49.416115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282707, 44.664352, 49.587841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432914, -0.363857, 0.824739,
		0.077509, -0.926554, -0.368091,
		0.898097, -0.095427, 0.429320,
		38.552135, 44.635723, 49.716637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034607, 43.911015, 49.619671>,  <37.923470, 44.702522, 49.416115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034607, 43.911015, 49.619671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220825, 44.158356, 49.872940>,  <38.332558, 44.306759, 50.024902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220825, 44.158356, 49.872940>,  <38.034607, 43.911015, 49.619671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220825, 44.158356, 49.872940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330557, -0.542162, 0.772524,
		0.820973, -0.568945, -0.048001,
		0.465548, 0.618354, 0.633169,
		38.360489, 44.343861, 50.062889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024300, 43.523731, 50.152779>,  <38.034607, 43.911015, 49.619671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024300, 43.523731, 50.152779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122314, 43.875557, 50.315907>,  <38.181122, 44.086655, 50.413784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.122314, 43.875557, 50.315907>,  <38.024300, 43.523731, 50.152779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.122314, 43.875557, 50.315907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448216, -0.270221, 0.852105,
		0.859685, -0.391589, 0.328022,
		0.245037, 0.879567, 0.407821,
		38.195824, 44.139427, 50.438251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.282101, 43.450653, 50.811050>,  <38.024300, 43.523731, 50.152779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.282101, 43.450653, 50.811050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181335, 43.835617, 50.851662>,  <38.120876, 44.066597, 50.876030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.181335, 43.835617, 50.851662>,  <38.282101, 43.450653, 50.811050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181335, 43.835617, 50.851662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327575, -0.183518, 0.926831,
		0.910623, 0.200224, 0.361492,
		-0.251915, 0.962409, 0.101528,
		38.105762, 44.124340, 50.882118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474220, 43.581398, 51.446487>,  <38.282101, 43.450653, 50.811050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.474220, 43.581398, 51.446487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215782, 43.875221, 51.363564>,  <38.060719, 44.051514, 51.313808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215782, 43.875221, 51.363564>,  <38.474220, 43.581398, 51.446487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215782, 43.875221, 51.363564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554278, -0.264828, 0.789076,
		0.524721, 0.624731, 0.578256,
		-0.646098, 0.734559, -0.207314,
		38.021954, 44.095589, 51.301369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483116, 44.024181, 51.978405>,  <38.474220, 43.581398, 51.446487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483116, 44.024181, 51.978405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128601, 44.029694, 51.793236>,  <37.915890, 44.033001, 51.682133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128601, 44.029694, 51.793236>,  <38.483116, 44.024181, 51.978405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128601, 44.029694, 51.793236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446919, -0.287594, 0.847085,
		-0.121464, 0.957653, 0.261049,
		-0.886290, 0.013777, -0.462926,
		37.862713, 44.033825, 51.654358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061607, 44.412922, 52.419544>,  <38.483116, 44.024181, 51.978405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061607, 44.412922, 52.419544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795074, 44.203156, 52.207512>,  <37.635155, 44.077297, 52.080292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.795074, 44.203156, 52.207512>,  <38.061607, 44.412922, 52.419544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795074, 44.203156, 52.207512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511252, -0.196176, 0.836741,
		-0.542787, 0.828557, -0.137387,
		-0.666336, -0.524412, -0.530083,
		37.595173, 44.045834, 52.048489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458122, 44.560379, 52.899998>,  <38.061607, 44.412922, 52.419544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458122, 44.560379, 52.899998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393131, 44.274597, 52.627777>,  <37.354137, 44.103127, 52.464443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393131, 44.274597, 52.627777>,  <37.458122, 44.560379, 52.899998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393131, 44.274597, 52.627777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619937, -0.462674, 0.633728,
		-0.767646, 0.524864, -0.367746,
		-0.162474, -0.714458, -0.680552,
		37.344387, 44.060261, 52.423611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714294, 44.420807, 52.921471>,  <37.458122, 44.560379, 52.899998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714294, 44.420807, 52.921471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873077, 44.099220, 52.744354>,  <36.968346, 43.906269, 52.638084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.873077, 44.099220, 52.744354>,  <36.714294, 44.420807, 52.921471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873077, 44.099220, 52.744354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570195, -0.594048, 0.567438,
		-0.719240, 0.027229, -0.694228,
		0.396954, -0.803969, -0.442788,
		36.992165, 43.858028, 52.611519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228748, 44.021427, 52.594845>,  <36.714294, 44.420807, 52.921471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228748, 44.021427, 52.594845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530396, 43.766495, 52.658234>,  <36.711384, 43.613537, 52.696266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530396, 43.766495, 52.658234>,  <36.228748, 44.021427, 52.594845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530396, 43.766495, 52.658234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630984, -0.636226, 0.443932,
		-0.182107, -0.434771, -0.881936,
		0.754119, -0.637331, 0.158472,
		36.756630, 43.575294, 52.705776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934521, 43.469997, 52.409748>,  <36.228748, 44.021427, 52.594845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934521, 43.469997, 52.409748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255272, 43.357170, 52.620434>,  <36.447723, 43.289474, 52.746845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255272, 43.357170, 52.620434>,  <35.934521, 43.469997, 52.409748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255272, 43.357170, 52.620434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559690, -0.663182, 0.496927,
		0.209137, -0.693271, -0.689664,
		0.801879, -0.282073, 0.526713,
		36.495834, 43.272549, 52.778446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826767, 42.712418, 52.393562>,  <35.934521, 43.469997, 52.409748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826767, 42.712418, 52.393562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092537, 42.771263, 52.686653>,  <36.251999, 42.806572, 52.862507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092537, 42.771263, 52.686653>,  <35.826767, 42.712418, 52.393562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092537, 42.771263, 52.686653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463184, -0.688370, 0.558218,
		0.586512, -0.710284, -0.389231,
		0.664428, 0.147116, 0.732730,
		36.291866, 42.815399, 52.906471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188297, 41.984764, 52.541489>,  <35.826767, 42.712418, 52.393562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188297, 41.984764, 52.541489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210724, 42.227974, 52.858261>,  <36.224182, 42.373901, 53.048325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210724, 42.227974, 52.858261>,  <36.188297, 41.984764, 52.541489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210724, 42.227974, 52.858261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323892, -0.739208, 0.590479,
		0.944431, -0.289609, 0.155488,
		0.056070, 0.608028, 0.791933,
		36.227547, 42.410381, 53.095840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486942, 41.583748, 53.048218>,  <36.188297, 41.984764, 52.541489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486942, 41.583748, 53.048218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313004, 41.884857, 53.245903>,  <36.208641, 42.065521, 53.364513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.313004, 41.884857, 53.245903>,  <36.486942, 41.583748, 53.048218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313004, 41.884857, 53.245903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473289, -0.657955, 0.585741,
		0.766097, 0.020803, 0.642388,
		-0.434848, 0.752769, 0.494212,
		36.182549, 42.110687, 53.394165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516960, 41.483803, 53.796745>,  <36.486942, 41.583748, 53.048218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516960, 41.483803, 53.796745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214935, 41.745995, 53.790688>,  <36.033722, 41.903309, 53.787052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214935, 41.745995, 53.790688>,  <36.516960, 41.483803, 53.796745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214935, 41.745995, 53.790688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601737, -0.683607, 0.413032,
		0.260380, 0.320978, 0.910591,
		-0.755060, 0.655481, -0.015146,
		35.988419, 41.942638, 53.786144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151379, 41.350750, 54.462219>,  <36.516960, 41.483803, 53.796745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151379, 41.350750, 54.462219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913040, 41.537338, 54.200726>,  <35.770035, 41.649292, 54.043831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913040, 41.537338, 54.200726>,  <36.151379, 41.350750, 54.462219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913040, 41.537338, 54.200726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770196, -0.562524, 0.300608,
		-0.227514, 0.682618, 0.694456,
		-0.595849, 0.466474, -0.653732,
		35.734287, 41.677280, 54.004604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551556, 41.524727, 54.912006>,  <36.151379, 41.350750, 54.462219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551556, 41.524727, 54.912006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437801, 41.510979, 54.528770>,  <35.369549, 41.502731, 54.298828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.437801, 41.510979, 54.528770>,  <35.551556, 41.524727, 54.912006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437801, 41.510979, 54.528770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857639, -0.437504, 0.270268,
		-0.428459, 0.898559, 0.094943,
		-0.284390, -0.034372, -0.958092,
		35.352486, 41.500668, 54.241344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841572, 41.626362, 54.939247>,  <35.551556, 41.524727, 54.912006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841572, 41.626362, 54.939247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883904, 41.489922, 54.565628>,  <34.909302, 41.408058, 54.341457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.883904, 41.489922, 54.565628>,  <34.841572, 41.626362, 54.939247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883904, 41.489922, 54.565628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922863, -0.383490, 0.035480,
		-0.370301, 0.858246, -0.355373,
		0.105832, -0.341099, -0.934051,
		34.915653, 41.387592, 54.285412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.266026, 41.880947, 54.607372>,  <34.841572, 41.626362, 54.939247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.266026, 41.880947, 54.607372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396545, 41.576691, 54.382889>,  <34.474857, 41.394138, 54.248199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396545, 41.576691, 54.382889>,  <34.266026, 41.880947, 54.607372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396545, 41.576691, 54.382889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850618, -0.495224, 0.176643,
		-0.412286, 0.419737, -0.808605,
		0.326297, -0.760641, -0.561209,
		34.494434, 41.348499, 54.214527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854191, 41.804649, 53.910404>,  <34.266026, 41.880947, 54.607372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854191, 41.804649, 53.910404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010773, 41.458275, 54.034927>,  <34.104721, 41.250450, 54.109642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010773, 41.458275, 54.034927>,  <33.854191, 41.804649, 53.910404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010773, 41.458275, 54.034927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913192, -0.407234, 0.015529,
		0.113328, -0.290361, -0.950183,
		0.391456, -0.865939, 0.311306,
		34.128208, 41.198494, 54.128319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406837, 41.327053, 53.666309>,  <33.854191, 41.804649, 53.910404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406837, 41.327053, 53.666309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644188, 41.094810, 53.889309>,  <33.786598, 40.955467, 54.023109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.644188, 41.094810, 53.889309>,  <33.406837, 41.327053, 53.666309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.644188, 41.094810, 53.889309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736278, -0.671388, 0.084450,
		0.325265, -0.460585, -0.825872,
		0.593377, -0.580603, 0.557498,
		33.822201, 40.920631, 54.056557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228527, 40.586418, 53.496761>,  <33.406837, 41.327053, 53.666309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228527, 40.586418, 53.496761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392986, 40.591385, 53.861355>,  <33.491661, 40.594364, 54.080112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392986, 40.591385, 53.861355>,  <33.228527, 40.586418, 53.496761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392986, 40.591385, 53.861355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737863, -0.582611, 0.340768,
		0.535271, -0.812657, -0.230380,
		0.411149, 0.012414, 0.911484,
		33.516331, 40.595108, 54.134800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275482, 39.892002, 53.650402>,  <33.228527, 40.586418, 53.496761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275482, 39.892002, 53.650402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310432, 40.079659, 54.001919>,  <33.331402, 40.192253, 54.212830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310432, 40.079659, 54.001919>,  <33.275482, 39.892002, 53.650402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310432, 40.079659, 54.001919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758035, -0.541049, 0.364210,
		0.646334, -0.697977, 0.308351,
		0.087378, 0.469142, 0.878789,
		33.336647, 40.220402, 54.265556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229237, 39.394573, 54.165180>,  <33.275482, 39.892002, 53.650402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229237, 39.394573, 54.165180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126328, 39.708633, 54.390518>,  <33.064583, 39.897068, 54.525719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126328, 39.708633, 54.390518>,  <33.229237, 39.394573, 54.165180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126328, 39.708633, 54.390518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756952, -0.526123, 0.387579,
		0.600694, -0.326710, 0.729676,
		-0.257273, 0.785147, 0.563343,
		33.049145, 39.944176, 54.559521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873943, 39.035225, 54.643707>,  <33.229237, 39.394573, 54.165180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873943, 39.035225, 54.643707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785595, 39.414856, 54.733574>,  <32.732586, 39.642635, 54.787495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785595, 39.414856, 54.733574>,  <32.873943, 39.035225, 54.643707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785595, 39.414856, 54.733574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795899, -0.308534, 0.520915,
		0.563704, -0.063760, 0.823512,
		-0.220868, 0.949074, 0.224668,
		32.719334, 39.699577, 54.800976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757065, 39.157410, 55.481441>,  <32.873943, 39.035225, 54.643707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757065, 39.157410, 55.481441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552330, 39.428703, 55.270531>,  <32.429489, 39.591480, 55.143986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552330, 39.428703, 55.270531>,  <32.757065, 39.157410, 55.481441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552330, 39.428703, 55.270531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818530, -0.198659, 0.539020,
		0.260835, 0.707482, 0.656837,
		-0.511833, 0.678236, -0.527278,
		32.398781, 39.632175, 55.112347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381115, 39.545815, 55.945107>,  <32.757065, 39.157410, 55.481441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381115, 39.545815, 55.945107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157120, 39.665779, 55.636181>,  <32.022720, 39.737759, 55.450825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157120, 39.665779, 55.636181>,  <32.381115, 39.545815, 55.945107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157120, 39.665779, 55.636181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826937, -0.145103, 0.543250,
		0.050864, 0.942866, 0.329266,
		-0.559990, 0.299914, -0.772310,
		31.989122, 39.755753, 55.404488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990881, 40.032585, 56.148434>,  <32.381115, 39.545815, 55.945107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990881, 40.032585, 56.148434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780117, 39.895012, 55.837543>,  <31.653658, 39.812469, 55.651009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780117, 39.895012, 55.837543>,  <31.990881, 40.032585, 56.148434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780117, 39.895012, 55.837543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.795960, -0.120966, 0.593140,
		-0.298016, 0.931171, -0.210017,
		-0.526910, -0.343931, -0.777225,
		31.622044, 39.791832, 55.604378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.353777, 40.389706, 56.140812>,  <31.990881, 40.032585, 56.148434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.353777, 40.389706, 56.140812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310772, 40.039200, 55.952942>,  <31.284969, 39.828896, 55.840218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.310772, 40.039200, 55.952942>,  <31.353777, 40.389706, 56.140812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.310772, 40.039200, 55.952942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728735, -0.251901, 0.636782,
		-0.676303, 0.410733, -0.611484,
		-0.107514, -0.876267, -0.469677,
		31.278519, 39.776321, 55.812038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661730, 40.422493, 56.035954>,  <31.353777, 40.389706, 56.140812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661730, 40.422493, 56.035954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741243, 40.036926, 55.965126>,  <30.788952, 39.805588, 55.922630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.741243, 40.036926, 55.965126>,  <30.661730, 40.422493, 56.035954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741243, 40.036926, 55.965126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799933, -0.263967, 0.538914,
		-0.566208, 0.034518, -0.823539,
		0.198785, -0.963914, -0.177073,
		30.800879, 39.747753, 55.912003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849138, 40.389885, 56.109585>,  <30.661730, 40.422493, 56.035954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849138, 40.389885, 56.109585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554102, 40.654175, 56.053871>,  <29.377081, 40.812748, 56.020443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.554102, 40.654175, 56.053871>,  <29.849138, 40.389885, 56.109585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.554102, 40.654175, 56.053871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534720, 0.445559, -0.718019,
		-0.412356, -0.604082, -0.681944,
		-0.737589, 0.660729, -0.139285,
		29.332825, 40.852394, 56.012085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888453, 40.453529, 55.446106>,  <29.849138, 40.389885, 56.109585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888453, 40.453529, 55.446106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693848, 40.780830, 55.568596>,  <29.577084, 40.977211, 55.642090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.693848, 40.780830, 55.568596>,  <29.888453, 40.453529, 55.446106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693848, 40.780830, 55.568596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584506, 0.565348, -0.582009,
		-0.649352, -0.104165, -0.753320,
		-0.486513, 0.818249, 0.306225,
		29.547894, 41.026306, 55.660465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.688354, 40.858292, 54.817719>,  <29.888453, 40.453529, 55.446106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.688354, 40.858292, 54.817719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711971, 41.119125, 55.120056>,  <29.726141, 41.275627, 55.301460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.711971, 41.119125, 55.120056>,  <29.688354, 40.858292, 54.817719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.711971, 41.119125, 55.120056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692067, 0.518929, -0.501753,
		-0.719414, 0.552719, -0.420648,
		0.059042, 0.652085, 0.755843,
		29.729685, 41.314751, 55.346809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793653, 41.490372, 54.517372>,  <29.688354, 40.858292, 54.817719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793653, 41.490372, 54.517372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903677, 41.565697, 54.894493>,  <29.969692, 41.610889, 55.120766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903677, 41.565697, 54.894493>,  <29.793653, 41.490372, 54.517372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903677, 41.565697, 54.894493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653568, 0.682578, -0.327009,
		-0.705118, 0.706135, 0.064677,
		0.275060, 0.188309, 0.942805,
		29.986195, 41.622189, 55.177334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.767347, 42.173794, 54.583939>,  <29.793653, 41.490372, 54.517372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.767347, 42.173794, 54.583939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030317, 42.051208, 54.859291>,  <30.188099, 41.977657, 55.024502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.030317, 42.051208, 54.859291>,  <29.767347, 42.173794, 54.583939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.030317, 42.051208, 54.859291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654472, 0.684993, -0.320080,
		-0.373445, 0.660957, 0.650903,
		0.657423, -0.306465, 0.688385,
		30.227545, 41.959270, 55.065807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060032, 42.778580, 54.923164>,  <29.767347, 42.173794, 54.583939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060032, 42.778580, 54.923164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322887, 42.482964, 54.982475>,  <30.480600, 42.305595, 55.018063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322887, 42.482964, 54.982475>,  <30.060032, 42.778580, 54.923164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322887, 42.482964, 54.982475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750623, 0.623658, -0.218207,
		0.068792, 0.254691, 0.964572,
		0.657139, -0.739042, 0.148274,
		30.520029, 42.261250, 55.026958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.639349, 43.066807, 55.206669>,  <30.060032, 42.778580, 54.923164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.639349, 43.066807, 55.206669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782022, 42.714149, 55.083073>,  <30.867626, 42.502556, 55.008915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782022, 42.714149, 55.083073>,  <30.639349, 43.066807, 55.206669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782022, 42.714149, 55.083073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767614, 0.465097, -0.440970,
		0.532491, -0.079900, 0.842656,
		0.356683, -0.881647, -0.308992,
		30.889027, 42.449654, 54.990376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426662, 43.053024, 55.383873>,  <30.639349, 43.066807, 55.206669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426662, 43.053024, 55.383873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345953, 42.805946, 55.079838>,  <31.297527, 42.657700, 54.897415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345953, 42.805946, 55.079838>,  <31.426662, 43.053024, 55.383873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345953, 42.805946, 55.079838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781744, 0.365963, -0.504923,
		0.590054, -0.696076, 0.409040,
		-0.201771, -0.617697, -0.760091,
		31.285421, 42.620636, 54.851810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100506, 43.036556, 54.959751>,  <31.426662, 43.053024, 55.383873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100506, 43.036556, 54.959751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887096, 42.791214, 54.726807>,  <31.759052, 42.644009, 54.587040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887096, 42.791214, 54.726807>,  <32.100506, 43.036556, 54.959751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887096, 42.791214, 54.726807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593949, 0.218498, -0.774263,
		0.602147, -0.758979, 0.247731,
		-0.533520, -0.613360, -0.582363,
		31.727041, 42.607204, 54.552097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449703, 42.544922, 54.667027>,  <32.100506, 43.036556, 54.959751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449703, 42.544922, 54.667027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146217, 42.614136, 54.415817>,  <31.964127, 42.655666, 54.265091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.146217, 42.614136, 54.415817>,  <32.449703, 42.544922, 54.667027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146217, 42.614136, 54.415817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597603, 0.568598, -0.565302,
		0.259272, -0.804210, -0.534812,
		-0.758715, 0.173038, -0.628020,
		31.918602, 42.666046, 54.227409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643166, 42.525059, 53.918079>,  <32.449703, 42.544922, 54.667027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643166, 42.525059, 53.918079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299660, 42.727890, 53.888710>,  <32.093555, 42.849590, 53.871090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299660, 42.727890, 53.888710>,  <32.643166, 42.525059, 53.918079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299660, 42.727890, 53.888710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434841, 0.645522, -0.627865,
		-0.270981, -0.571116, -0.774851,
		-0.858768, 0.507077, -0.073420,
		32.042030, 42.880013, 53.866684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518368, 42.636627, 53.189228>,  <32.643166, 42.525059, 53.918079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518368, 42.636627, 53.189228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325020, 42.918213, 53.397377>,  <32.209011, 43.087162, 53.522266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.325020, 42.918213, 53.397377>,  <32.518368, 42.636627, 53.189228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325020, 42.918213, 53.397377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353512, 0.700775, -0.619632,
		-0.800863, -0.115554, -0.587593,
		-0.483372, 0.703962, 0.520375,
		32.180008, 43.129402, 53.553490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200600, 43.026073, 52.675884>,  <32.518368, 42.636627, 53.189228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200600, 43.026073, 52.675884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215816, 43.252548, 53.005245>,  <32.224945, 43.388432, 53.202862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215816, 43.252548, 53.005245>,  <32.200600, 43.026073, 52.675884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215816, 43.252548, 53.005245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439800, 0.730414, -0.522563,
		-0.897290, 0.382009, -0.221224,
		0.038039, 0.566184, 0.823401,
		32.227230, 43.422405, 53.252266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.847647, 43.639927, 52.567341>,  <32.200600, 43.026073, 52.675884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.847647, 43.639927, 52.567341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110970, 43.709930, 52.860188>,  <32.268963, 43.751934, 53.035896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110970, 43.709930, 52.860188>,  <31.847647, 43.639927, 52.567341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110970, 43.709930, 52.860188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291181, 0.837678, -0.462070,
		-0.694150, 0.517364, 0.500490,
		0.658308, 0.175013, 0.732121,
		32.308460, 43.762436, 53.079823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919151, 44.439774, 52.654133>,  <31.847647, 43.639927, 52.567341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919151, 44.439774, 52.654133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261681, 44.316849, 52.820156>,  <32.467197, 44.243092, 52.919769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.261681, 44.316849, 52.820156>,  <31.919151, 44.439774, 52.654133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261681, 44.316849, 52.820156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455087, 0.828966, -0.325133,
		-0.244147, 0.467304, 0.849717,
		0.856322, -0.307315, 0.415054,
		32.518578, 44.224655, 52.944672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304493, 45.085533, 52.809834>,  <31.919151, 44.439774, 52.654133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304493, 45.085533, 52.809834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576103, 44.793938, 52.844498>,  <32.739067, 44.618980, 52.865295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.576103, 44.793938, 52.844498>,  <32.304493, 45.085533, 52.809834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576103, 44.793938, 52.844498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698479, 0.605203, -0.381911,
		0.225958, 0.319859, 0.920127,
		0.679021, -0.728985, 0.086664,
		32.779808, 44.575241, 52.870499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923290, 45.336826, 53.125366>,  <32.304493, 45.085533, 52.809834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923290, 45.336826, 53.125366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081936, 45.005615, 52.966843>,  <33.177124, 44.806889, 52.871727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.081936, 45.005615, 52.966843>,  <32.923290, 45.336826, 53.125366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081936, 45.005615, 52.966843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774916, 0.533440, -0.339037,
		0.492143, -0.172644, 0.853223,
		0.396611, -0.828031, -0.396313,
		33.200920, 44.757206, 52.847950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601818, 45.408989, 53.288666>,  <32.923290, 45.336826, 53.125366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601818, 45.408989, 53.288666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601116, 45.148232, 52.985340>,  <33.600693, 44.991779, 52.803345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.601116, 45.148232, 52.985340>,  <33.601818, 45.408989, 53.288666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601116, 45.148232, 52.985340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844453, 0.405205, -0.350297,
		0.535627, -0.640973, 0.549779,
		-0.001758, -0.651891, -0.758310,
		33.600590, 44.952663, 52.757847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246525, 45.231152, 53.147045>,  <33.601818, 45.408989, 53.288666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246525, 45.231152, 53.147045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102848, 45.104240, 52.795975>,  <34.016644, 45.028095, 52.585331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102848, 45.104240, 52.795975>,  <34.246525, 45.231152, 53.147045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102848, 45.104240, 52.795975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818627, 0.344474, -0.459551,
		0.448141, -0.883558, 0.135998,
		-0.359192, -0.317275, -0.877678,
		33.995090, 45.009056, 52.532673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797134, 44.780117, 52.803860>,  <34.246525, 45.231152, 53.147045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797134, 44.780117, 52.803860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553432, 44.937508, 52.528473>,  <34.407211, 45.031944, 52.363239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553432, 44.937508, 52.528473>,  <34.797134, 44.780117, 52.803860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553432, 44.937508, 52.528473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784759, 0.174508, -0.594727,
		-0.113870, -0.902619, -0.415106,
		-0.609251, 0.393480, -0.688467,
		34.370659, 45.055550, 52.321934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.885735, 44.395222, 52.168934>,  <34.797134, 44.780117, 52.803860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.885735, 44.395222, 52.168934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745667, 44.756142, 52.068348>,  <34.661625, 44.972694, 52.007996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745667, 44.756142, 52.068348>,  <34.885735, 44.395222, 52.168934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745667, 44.756142, 52.068348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844980, 0.188439, -0.500499,
		-0.404213, -0.387745, -0.828411,
		-0.350171, 0.902299, -0.251467,
		34.640614, 45.026833, 51.992908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119282, 44.384422, 51.480824>,  <34.885735, 44.395222, 52.168934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119282, 44.384422, 51.480824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005371, 44.758438, 51.565300>,  <34.937023, 44.982849, 51.615986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005371, 44.758438, 51.565300>,  <35.119282, 44.384422, 51.480824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005371, 44.758438, 51.565300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809149, 0.352604, -0.470051,
		-0.513983, 0.037023, -0.857001,
		-0.284780, 0.935040, 0.211190,
		34.919937, 45.038952, 51.628658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201439, 44.738289, 50.836174>,  <35.119282, 44.384422, 51.480824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201439, 44.738289, 50.836174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189804, 45.038910, 51.099785>,  <35.182823, 45.219284, 51.257954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189804, 45.038910, 51.099785>,  <35.201439, 44.738289, 50.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189804, 45.038910, 51.099785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884390, 0.326614, -0.333434,
		-0.465842, 0.573143, -0.674165,
		-0.029087, 0.751552, 0.659032,
		35.181080, 45.264374, 51.297493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538681, 45.207420, 50.482464>,  <35.201439, 44.738289, 50.836174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538681, 45.207420, 50.482464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538734, 45.406601, 50.829346>,  <35.538765, 45.526108, 51.037476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538734, 45.406601, 50.829346>,  <35.538681, 45.207420, 50.482464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538734, 45.406601, 50.829346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792812, 0.528481, -0.303573,
		-0.609466, 0.687572, -0.394710,
		0.000131, 0.497948, 0.867207,
		35.538773, 45.555984, 51.089508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483799, 45.971970, 50.349190>,  <35.538681, 45.207420, 50.482464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483799, 45.971970, 50.349190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651543, 45.934799, 50.710411>,  <35.752190, 45.912498, 50.927143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651543, 45.934799, 50.710411>,  <35.483799, 45.971970, 50.349190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651543, 45.934799, 50.710411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720252, 0.639577, -0.268659,
		-0.552608, 0.763090, 0.335139,
		0.419359, -0.092921, 0.903052,
		35.777351, 45.906921, 50.981327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605801, 46.601505, 50.537178>,  <35.483799, 45.971970, 50.349190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605801, 46.601505, 50.537178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848270, 46.363571, 50.748352>,  <35.993752, 46.220810, 50.875057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.848270, 46.363571, 50.748352>,  <35.605801, 46.601505, 50.537178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848270, 46.363571, 50.748352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771275, 0.601675, -0.207660,
		-0.194120, 0.533061, 0.823507,
		0.606179, -0.594839, 0.527933,
		36.030125, 46.185120, 50.906731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984699, 47.006237, 51.058487>,  <35.605801, 46.601505, 50.537178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984699, 47.006237, 51.058487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201420, 46.686859, 50.953461>,  <36.331451, 46.495232, 50.890446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.201420, 46.686859, 50.953461>,  <35.984699, 47.006237, 51.058487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201420, 46.686859, 50.953461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727070, 0.601951, -0.330187,
		0.421689, -0.012011, 0.906661,
		0.541800, -0.798442, -0.262569,
		36.363960, 46.447327, 50.874691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672390, 47.102428, 51.269875>,  <35.984699, 47.006237, 51.058487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672390, 47.102428, 51.269875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728626, 46.826813, 50.985493>,  <36.762367, 46.661442, 50.814865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728626, 46.826813, 50.985493>,  <36.672390, 47.102428, 51.269875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728626, 46.826813, 50.985493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778748, 0.520387, -0.350356,
		0.611381, -0.504397, 0.609752,
		0.140588, -0.689044, -0.710953,
		36.770802, 46.620098, 50.772205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402409, 47.033260, 51.176147>,  <36.672390, 47.102428, 51.269875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402409, 47.033260, 51.176147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271149, 46.869553, 50.835602>,  <37.192394, 46.771328, 50.631275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271149, 46.869553, 50.835602>,  <37.402409, 47.033260, 51.176147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271149, 46.869553, 50.835602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698630, 0.501463, -0.510344,
		0.635795, -0.762255, 0.121376,
		-0.328147, -0.409271, -0.851362,
		37.172703, 46.746773, 50.580193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021702, 46.759293, 50.731033>,  <37.402409, 47.033260, 51.176147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021702, 46.759293, 50.731033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710289, 46.828163, 50.489624>,  <37.523441, 46.869488, 50.344776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.710289, 46.828163, 50.489624>,  <38.021702, 46.759293, 50.731033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.710289, 46.828163, 50.489624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613632, 0.410630, -0.674417,
		0.131705, -0.895398, -0.425343,
		-0.778530, 0.172180, -0.603527,
		37.476730, 46.879818, 50.308567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225689, 46.461628, 50.028175>,  <38.021702, 46.759293, 50.731033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225689, 46.461628, 50.028175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924183, 46.718491, 49.972351>,  <37.743279, 46.872608, 49.938858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.924183, 46.718491, 49.972351>,  <38.225689, 46.461628, 50.028175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.924183, 46.718491, 49.972351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508765, 0.435838, -0.742430,
		-0.415928, -0.630622, -0.655225,
		-0.753765, 0.642153, -0.139561,
		37.698051, 46.911137, 49.930481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145737, 46.428925, 49.388924>,  <38.225689, 46.461628, 50.028175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145737, 46.428925, 49.388924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992657, 46.777718, 49.511024>,  <37.900806, 46.986996, 49.584286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992657, 46.777718, 49.511024>,  <38.145737, 46.428925, 49.388924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992657, 46.777718, 49.511024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425183, 0.459570, -0.779753,
		-0.820218, -0.168628, -0.546633,
		-0.382704, 0.871987, 0.305250,
		37.877846, 47.039314, 49.602600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961990, 46.771065, 48.820011>,  <38.145737, 46.428925, 49.388924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961990, 46.771065, 48.820011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934280, 47.094292, 49.054012>,  <37.917656, 47.288227, 49.194412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934280, 47.094292, 49.054012>,  <37.961990, 46.771065, 48.820011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934280, 47.094292, 49.054012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273151, 0.579367, -0.767934,
		-0.959474, 0.106600, -0.260857,
		-0.069271, 0.808066, 0.585005,
		37.913498, 47.336712, 49.229515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766785, 47.260967, 48.380306>,  <37.961990, 46.771065, 48.820011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766785, 47.260967, 48.380306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921913, 47.454330, 48.694225>,  <38.014992, 47.570347, 48.882576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.921913, 47.454330, 48.694225>,  <37.766785, 47.260967, 48.380306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.921913, 47.454330, 48.694225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354072, 0.707981, -0.611062,
		-0.851015, 0.514859, 0.103409,
		0.387823, 0.483409, 0.784799,
		38.038261, 47.599354, 48.929665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503407, 47.905861, 48.411678>,  <37.766785, 47.260967, 48.380306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503407, 47.905861, 48.411678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862740, 47.925476, 48.586304>,  <38.078339, 47.937244, 48.691078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862740, 47.925476, 48.586304>,  <37.503407, 47.905861, 48.411678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862740, 47.925476, 48.586304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346230, 0.532645, -0.772279,
		-0.270403, 0.844917, 0.461517,
		0.898336, 0.049035, 0.436564,
		38.132240, 47.940186, 48.717274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655010, 48.666279, 48.353184>,  <37.503407, 47.905861, 48.411678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655010, 48.666279, 48.353184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997532, 48.472946, 48.426003>,  <38.203045, 48.356945, 48.469692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.997532, 48.472946, 48.426003>,  <37.655010, 48.666279, 48.353184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997532, 48.472946, 48.426003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455535, 0.540692, -0.707205,
		0.243385, 0.688507, 0.683170,
		0.856301, -0.483331, 0.182043,
		38.254421, 48.327946, 48.480614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187889, 49.152390, 48.375118>,  <37.655010, 48.666279, 48.353184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187889, 49.152390, 48.375118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367798, 48.804237, 48.294971>,  <38.475742, 48.595345, 48.246883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367798, 48.804237, 48.294971>,  <38.187889, 49.152390, 48.375118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367798, 48.804237, 48.294971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497146, 0.430341, -0.753426,
		0.741992, 0.239259, 0.626261,
		0.449770, -0.870380, -0.200363,
		38.502728, 48.543125, 48.234863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.879154, 49.292908, 48.408848>,  <38.187889, 49.152390, 48.375118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.879154, 49.292908, 48.408848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908028, 48.943260, 48.216724>,  <38.925354, 48.733471, 48.101448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908028, 48.943260, 48.216724>,  <38.879154, 49.292908, 48.408848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908028, 48.943260, 48.216724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719641, 0.379079, -0.581735,
		0.690584, -0.303658, 0.656419,
		0.072186, -0.874123, -0.480311,
		38.929684, 48.681023, 48.072632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628185, 49.112488, 48.323200>,  <38.879154, 49.292908, 48.408848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628185, 49.112488, 48.323200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409588, 48.928268, 48.043415>,  <39.278431, 48.817738, 47.875546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.409588, 48.928268, 48.043415>,  <39.628185, 49.112488, 48.323200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409588, 48.928268, 48.043415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616428, 0.344156, -0.708218,
		0.566891, -0.818202, 0.095815,
		-0.546490, -0.460546, -0.699461,
		39.245640, 48.790104, 47.833576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079109, 49.095142, 47.868557>,  <39.628185, 49.112488, 48.323200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079109, 49.095142, 47.868557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763420, 49.005760, 47.639751>,  <39.574005, 48.952133, 47.502468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.763420, 49.005760, 47.639751>,  <40.079109, 49.095142, 47.868557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.763420, 49.005760, 47.639751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481616, 0.352693, -0.802280,
		0.381020, -0.908666, -0.170732,
		-0.789221, -0.223458, -0.572011,
		39.526653, 48.938725, 47.468147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.561474, 41.967846, 49.121117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595703, 41.620522, 48.925682>,  <32.616241, 41.412128, 48.808422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.595703, 41.620522, 48.925682>,  <32.561474, 41.967846, 49.121117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595703, 41.620522, 48.925682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688581, 0.405965, -0.600873,
		0.720092, -0.285011, 0.632642,
		0.085575, -0.868309, -0.488586,
		32.621376, 41.360027, 48.779106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266605, 41.793781, 49.073299>,  <32.561474, 41.967846, 49.121117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266605, 41.793781, 49.073299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.091194, 41.564217, 48.796658>,  <32.985947, 41.426476, 48.630672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.091194, 41.564217, 48.796658>,  <33.266605, 41.793781, 49.073299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091194, 41.564217, 48.796658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758593, 0.176254, -0.627272,
		0.481899, -0.799721, 0.358076,
		-0.438531, -0.573916, -0.691600,
		32.959637, 41.392040, 48.589176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839619, 41.314541, 48.757656>,  <33.266605, 41.793781, 49.073299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839619, 41.314541, 48.757656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535015, 41.347740, 48.500526>,  <33.352253, 41.367661, 48.346249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535015, 41.347740, 48.500526>,  <33.839619, 41.314541, 48.757656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535015, 41.347740, 48.500526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628271, 0.338310, -0.700587,
		0.159327, -0.937367, -0.309769,
		-0.761505, 0.082997, -0.642822,
		33.306564, 41.372639, 48.307678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107601, 41.132530, 48.122925>,  <33.839619, 41.314541, 48.757656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107601, 41.132530, 48.122925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780209, 41.336021, 48.016132>,  <33.583771, 41.458118, 47.952057>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.780209, 41.336021, 48.016132>,  <34.107601, 41.132530, 48.122925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780209, 41.336021, 48.016132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499005, 0.399170, -0.769192,
		-0.284744, -0.762794, -0.580574,
		-0.818483, 0.508733, -0.266977,
		33.534664, 41.488640, 47.936039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236546, 41.137897, 47.485394>,  <34.107601, 41.132530, 48.122925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236546, 41.137897, 47.485394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.952408, 41.413872, 47.541107>,  <33.781925, 41.579456, 47.574535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.952408, 41.413872, 47.541107>,  <34.236546, 41.137897, 47.485394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.952408, 41.413872, 47.541107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387408, 0.548465, -0.741014,
		-0.587645, -0.472414, -0.656885,
		-0.710344, 0.689935, 0.139286,
		33.739304, 41.620853, 47.582893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829308, 41.280846, 46.840820>,  <34.236546, 41.137897, 47.485394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829308, 41.280846, 46.840820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.785915, 41.605125, 47.070950>,  <33.759880, 41.799694, 47.209026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.785915, 41.605125, 47.070950>,  <33.829308, 41.280846, 46.840820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785915, 41.605125, 47.070950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336517, 0.574515, -0.746116,
		-0.935408, 0.112663, -0.335141,
		-0.108484, 0.810703, 0.575319,
		33.753368, 41.848335, 47.243546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.539406, 41.886372, 46.387096>,  <33.829308, 41.280846, 46.840820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.539406, 41.886372, 46.387096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742363, 42.038994, 46.696152>,  <33.864136, 42.130566, 46.881584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.742363, 42.038994, 46.696152>,  <33.539406, 41.886372, 46.387096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742363, 42.038994, 46.696152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557597, 0.538239, -0.631969,
		-0.656994, 0.751477, 0.060345,
		0.507390, 0.381552, 0.772641,
		33.894581, 42.153458, 46.927944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.713600, 42.565273, 46.166470>,  <33.539406, 41.886372, 46.387096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.713600, 42.565273, 46.166470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.953812, 42.502335, 46.480057>,  <34.097939, 42.464573, 46.668209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.953812, 42.502335, 46.480057>,  <33.713600, 42.565273, 46.166470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953812, 42.502335, 46.480057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707537, 0.561316, -0.429321,
		-0.372505, 0.812507, 0.448411,
		0.600526, -0.157343, 0.783972,
		34.133968, 42.455132, 46.715248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170124, 43.162216, 46.106979>,  <33.713600, 42.565273, 46.166470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170124, 43.162216, 46.106979> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.349514, 42.954826, 46.398201>,  <34.457150, 42.830391, 46.572933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.349514, 42.954826, 46.398201>,  <34.170124, 43.162216, 46.106979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349514, 42.954826, 46.398201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863453, 0.461759, -0.203047,
		-0.230909, 0.719698, 0.654764,
		0.448475, -0.518473, 0.728049,
		34.484058, 42.799286, 46.616615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434769, 43.626553, 46.546352>,  <34.170124, 43.162216, 46.106979>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434769, 43.626553, 46.546352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648014, 43.289253, 46.573822>,  <34.775963, 43.086872, 46.590302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.648014, 43.289253, 46.573822>,  <34.434769, 43.626553, 46.546352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648014, 43.289253, 46.573822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845808, 0.529305, -0.066675,
		0.019876, 0.093628, 0.995409,
		0.533117, -0.843250, 0.068671,
		34.807949, 43.036278, 46.594421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970856, 43.765194, 47.058399>,  <34.434769, 43.626553, 46.546352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.970856, 43.765194, 47.058399> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101456, 43.480186, 46.809975>,  <35.179813, 43.309181, 46.660919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.101456, 43.480186, 46.809975>,  <34.970856, 43.765194, 47.058399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101456, 43.480186, 46.809975> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850108, 0.508589, -0.136576,
		0.413176, -0.483374, 0.771774,
		0.326498, -0.712521, -0.621057,
		35.199406, 43.266430, 46.623657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628101, 43.610588, 47.251110>,  <34.970856, 43.765194, 47.058399>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628101, 43.610588, 47.251110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611794, 43.491898, 46.869473>,  <35.602009, 43.420685, 46.640491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.611794, 43.491898, 46.869473>,  <35.628101, 43.610588, 47.251110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611794, 43.491898, 46.869473> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862962, 0.470844, -0.183308,
		0.503620, -0.830820, 0.236864,
		-0.040770, -0.296723, -0.954093,
		35.599564, 43.402882, 46.583244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.293842, 43.390915, 47.123234>,  <35.628101, 43.610588, 47.251110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.293842, 43.390915, 47.123234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120182, 43.466293, 46.770870>,  <36.015987, 43.511520, 46.559452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.120182, 43.466293, 46.770870>,  <36.293842, 43.390915, 47.123234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.120182, 43.466293, 46.770870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837914, 0.443540, -0.318075,
		0.330781, -0.876220, -0.350461,
		-0.434147, 0.188444, -0.880912,
		35.989937, 43.522827, 46.506596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879555, 43.299320, 46.616474>,  <36.293842, 43.390915, 47.123234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879555, 43.299320, 46.616474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585213, 43.513741, 46.450989>,  <36.408607, 43.642395, 46.351696>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.585213, 43.513741, 46.450989>,  <36.879555, 43.299320, 46.616474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.585213, 43.513741, 46.450989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676938, 0.597138, -0.430328,
		0.016366, -0.596719, -0.802283,
		-0.735859, 0.536053, -0.413715,
		36.364456, 43.674557, 46.326874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110016, 43.407230, 45.877930>,  <36.879555, 43.299320, 46.616474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110016, 43.407230, 45.877930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822792, 43.680527, 45.930954>,  <36.650455, 43.844505, 45.962769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.822792, 43.680527, 45.930954>,  <37.110016, 43.407230, 45.877930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822792, 43.680527, 45.930954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482181, 0.625727, -0.613162,
		-0.501883, -0.376370, -0.778755,
		-0.718063, 0.683236, 0.132563,
		36.607372, 43.885498, 45.970722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997280, 43.540512, 45.287518>,  <37.110016, 43.407230, 45.877930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997280, 43.540512, 45.287518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.885185, 43.871513, 45.482124>,  <36.817928, 44.070114, 45.598888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.885185, 43.871513, 45.482124>,  <36.997280, 43.540512, 45.287518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885185, 43.871513, 45.482124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595791, 0.547330, -0.587761,
		-0.752662, 0.125150, -0.646404,
		-0.280238, 0.827507, 0.486518,
		36.801113, 44.119766, 45.628078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782692, 44.005314, 44.767406>,  <36.997280, 43.540512, 45.287518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782692, 44.005314, 44.767406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871868, 44.222954, 45.090950>,  <36.925373, 44.353539, 45.285076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.871868, 44.222954, 45.090950>,  <36.782692, 44.005314, 44.767406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871868, 44.222954, 45.090950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579810, 0.593008, -0.558715,
		-0.783656, 0.593545, -0.183267,
		0.222944, 0.544101, 0.808858,
		36.938751, 44.386185, 45.333607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.708733, 44.736897, 44.581440>,  <36.782692, 44.005314, 44.767406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.708733, 44.736897, 44.581440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927078, 44.785622, 44.913029>,  <37.058086, 44.814857, 45.111980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.927078, 44.785622, 44.913029>,  <36.708733, 44.736897, 44.581440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927078, 44.785622, 44.913029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577946, 0.661588, -0.477787,
		-0.606638, 0.739907, 0.290736,
		0.545865, 0.121814, 0.828971,
		37.090839, 44.822166, 45.161720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737335, 45.416824, 44.848034>,  <36.708733, 44.736897, 44.581440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737335, 45.416824, 44.848034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063770, 45.272820, 45.028870>,  <37.259632, 45.186417, 45.137371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.063770, 45.272820, 45.028870>,  <36.737335, 45.416824, 44.848034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063770, 45.272820, 45.028870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543367, 0.744428, -0.388045,
		-0.196846, 0.562331, 0.803141,
		0.816091, -0.360016, 0.452090,
		37.308598, 45.164814, 45.164497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.076752, 46.078571, 45.111393>,  <36.737335, 45.416824, 44.848034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.076752, 46.078571, 45.111393> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376896, 45.816010, 45.142639>,  <37.556980, 45.658474, 45.161388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.376896, 45.816010, 45.142639>,  <37.076752, 46.078571, 45.111393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376896, 45.816010, 45.142639> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645799, 0.702701, -0.298588,
		0.141100, 0.274496, 0.951180,
		0.750356, -0.656401, 0.078118,
		37.602001, 45.619087, 45.166073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582329, 46.377228, 45.533504>,  <37.076752, 46.078571, 45.111393>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582329, 46.377228, 45.533504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.773407, 46.097107, 45.321323>,  <37.888054, 45.929035, 45.194016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.773407, 46.097107, 45.321323>,  <37.582329, 46.377228, 45.533504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773407, 46.097107, 45.321323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640382, 0.690924, -0.335463,
		0.601428, -0.179442, 0.778515,
		0.477699, -0.700303, -0.530452,
		37.916718, 45.887016, 45.162189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.244442, 46.346722, 45.819828>,  <37.582329, 46.377228, 45.533504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.244442, 46.346722, 45.819828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265282, 46.190193, 45.452316>,  <38.277786, 46.096275, 45.231808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.265282, 46.190193, 45.452316>,  <38.244442, 46.346722, 45.819828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265282, 46.190193, 45.452316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643808, 0.716478, -0.268648,
		0.763412, -0.577520, 0.289264,
		0.052102, -0.391319, -0.918779,
		38.280910, 46.072796, 45.176682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138638, 47.067326, 45.964710>,  <38.244442, 46.346722, 45.819828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138638, 47.067326, 45.964710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961884, 47.418449, 46.038673>,  <37.855831, 47.629124, 46.083054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.961884, 47.418449, 46.038673>,  <38.138638, 47.067326, 45.964710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961884, 47.418449, 46.038673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669528, -0.459908, 0.583281,
		0.597050, 0.133941, 0.790943,
		-0.441886, 0.877807, 0.184910,
		37.829319, 47.681793, 46.094147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984367, 47.195549, 46.744034>,  <38.138638, 47.067326, 45.964710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984367, 47.195549, 46.744034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730782, 47.447182, 46.564102>,  <37.578629, 47.598160, 46.456142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.730782, 47.447182, 46.564102>,  <37.984367, 47.195549, 46.744034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.730782, 47.447182, 46.564102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746241, -0.344911, 0.569351,
		0.203015, 0.696632, 0.688106,
		-0.633963, 0.629079, -0.449833,
		37.540592, 47.635906, 46.429153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542908, 47.367638, 47.287636>,  <37.984367, 47.195549, 46.744034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.542908, 47.367638, 47.287636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364891, 47.516472, 46.961815>,  <37.258083, 47.605774, 46.766323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364891, 47.516472, 46.961815>,  <37.542908, 47.367638, 47.287636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364891, 47.516472, 46.961815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873038, -0.382772, 0.302143,
		-0.199362, 0.845597, 0.495198,
		-0.445040, 0.372090, -0.814548,
		37.231380, 47.628098, 46.717449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947277, 47.781612, 47.549332>,  <37.542908, 47.367638, 47.287636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947277, 47.781612, 47.549332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884945, 47.695724, 47.163666>,  <36.847546, 47.644192, 46.932266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.884945, 47.695724, 47.163666>,  <36.947277, 47.781612, 47.549332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884945, 47.695724, 47.163666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893042, -0.386504, 0.230412,
		-0.422127, 0.896945, -0.131523,
		-0.155832, -0.214718, -0.964164,
		36.838196, 47.631310, 46.874416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177124, 47.939865, 47.384956>,  <36.947277, 47.781612, 47.549332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177124, 47.939865, 47.384956> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286430, 47.674965, 47.105885>,  <36.352013, 47.516026, 46.938442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.286430, 47.674965, 47.105885>,  <36.177124, 47.939865, 47.384956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286430, 47.674965, 47.105885> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719039, -0.622411, 0.309172,
		-0.638992, 0.417173, -0.646263,
		0.273263, -0.662247, -0.697680,
		36.368412, 47.476292, 46.896584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566525, 47.871807, 46.984047>,  <36.177124, 47.939865, 47.384956>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566525, 47.871807, 46.984047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811821, 47.556236, 46.968391>,  <35.959000, 47.366894, 46.959000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.811821, 47.556236, 46.968391>,  <35.566525, 47.871807, 46.984047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811821, 47.556236, 46.968391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687466, -0.557460, 0.465434,
		-0.389010, -0.258519, -0.884217,
		0.613239, -0.788927, -0.039134,
		35.995792, 47.319557, 46.956650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270245, 47.376102, 46.588322>,  <35.566525, 47.871807, 46.984047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270245, 47.376102, 46.588322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516193, 47.185280, 46.839512>,  <35.663761, 47.070786, 46.990227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.516193, 47.185280, 46.839512>,  <35.270245, 47.376102, 46.588322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516193, 47.185280, 46.839512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779041, -0.491217, 0.389618,
		0.122599, -0.728779, -0.673684,
		0.614871, -0.477060, 0.627971,
		35.700653, 47.042160, 47.027905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955566, 46.737244, 46.616459>,  <35.270245, 47.376102, 46.588322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955566, 46.737244, 46.616459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222683, 46.737526, 46.914200>,  <35.382954, 46.737698, 47.092846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222683, 46.737526, 46.914200>,  <34.955566, 46.737244, 46.616459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222683, 46.737526, 46.914200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647329, -0.493109, 0.581213,
		0.367458, -0.869967, -0.328834,
		0.667787, 0.000708, 0.744352,
		35.423019, 46.737740, 47.137505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911476, 46.112713, 46.839119>,  <34.955566, 46.737244, 46.616459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911476, 46.112713, 46.839119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100113, 46.290421, 47.143810>,  <35.213295, 46.397045, 47.326626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.100113, 46.290421, 47.143810>,  <34.911476, 46.112713, 46.839119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100113, 46.290421, 47.143810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477294, -0.597748, 0.644118,
		0.741481, -0.667328, -0.069846,
		0.471588, 0.444264, 0.761731,
		35.241589, 46.423698, 47.372330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147858, 45.619877, 47.188053>,  <34.911476, 46.112713, 46.839119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147858, 45.619877, 47.188053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139954, 45.917252, 47.455460>,  <35.135212, 46.095676, 47.615906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139954, 45.917252, 47.455460>,  <35.147858, 45.619877, 47.188053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139954, 45.917252, 47.455460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477941, -0.594324, 0.646801,
		0.878170, -0.306734, 0.367059,
		-0.019756, 0.743433, 0.668518,
		35.134026, 46.140282, 47.656013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424294, 45.365135, 47.903439>,  <35.147858, 45.619877, 47.188053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424294, 45.365135, 47.903439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194992, 45.685585, 47.972233>,  <35.057411, 45.877853, 48.013512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.194992, 45.685585, 47.972233>,  <35.424294, 45.365135, 47.903439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194992, 45.685585, 47.972233> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527719, -0.521551, 0.670445,
		0.626811, 0.293573, 0.721750,
		-0.573254, 0.801123, 0.171990,
		35.023014, 45.925922, 48.023830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303596, 45.354172, 48.672298>,  <35.424294, 45.365135, 47.903439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303596, 45.354172, 48.672298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025517, 45.594109, 48.513866>,  <34.858669, 45.738071, 48.418808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.025517, 45.594109, 48.513866>,  <35.303596, 45.354172, 48.672298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025517, 45.594109, 48.513866> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701953, -0.447896, 0.553760,
		0.154768, 0.663005, 0.732442,
		-0.695204, 0.599844, -0.396079,
		34.816956, 45.774063, 48.395042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959503, 45.531509, 49.292206>,  <35.303596, 45.354172, 48.672298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959503, 45.531509, 49.292206> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694771, 45.590630, 48.998230>,  <34.535931, 45.626102, 48.821846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.694771, 45.590630, 48.998230>,  <34.959503, 45.531509, 49.292206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694771, 45.590630, 48.998230> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727658, -0.362402, 0.582390,
		-0.180263, 0.920228, 0.347399,
		-0.661829, 0.147804, -0.734939,
		34.496223, 45.634972, 48.777748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445480, 45.738861, 49.708580>,  <34.959503, 45.531509, 49.292206>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445480, 45.738861, 49.708580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283115, 45.665924, 49.350365>,  <34.185696, 45.622162, 49.135437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.283115, 45.665924, 49.350365>,  <34.445480, 45.738861, 49.708580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283115, 45.665924, 49.350365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748520, -0.495889, 0.440242,
		-0.524360, 0.849027, 0.064803,
		-0.405913, -0.182339, -0.895538,
		34.161343, 45.611221, 49.081703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.785904, 46.080032, 49.758362>,  <34.445480, 45.738861, 49.708580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.785904, 46.080032, 49.758362> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.763542, 45.781860, 49.492664>,  <33.750126, 45.602959, 49.333248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.763542, 45.781860, 49.492664>,  <33.785904, 46.080032, 49.758362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763542, 45.781860, 49.492664> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720901, -0.430144, 0.543395,
		-0.690780, 0.509230, -0.513330,
		-0.055907, -0.745426, -0.664239,
		33.746769, 45.558231, 49.293392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073044, 45.855312, 49.699738>,  <33.785904, 46.080032, 49.758362>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073044, 45.855312, 49.699738> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.260361, 45.567856, 49.494114>,  <33.372753, 45.395382, 49.370739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.260361, 45.567856, 49.494114>,  <33.073044, 45.855312, 49.699738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260361, 45.567856, 49.494114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634303, -0.678452, 0.370625,
		-0.615110, 0.152507, -0.773551,
		0.468295, -0.718641, -0.514058,
		33.400848, 45.352264, 49.339897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525528, 45.437729, 49.370205>,  <33.073044, 45.855312, 49.699738>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525528, 45.437729, 49.370205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.847092, 45.200867, 49.392395>,  <33.040031, 45.058746, 49.405708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.847092, 45.200867, 49.392395>,  <32.525528, 45.437729, 49.370205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847092, 45.200867, 49.392395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566326, -0.733659, 0.375525,
		-0.181674, -0.333303, -0.925151,
		0.803909, -0.592160, 0.055472,
		33.088264, 45.023220, 49.409035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279465, 44.855923, 49.059719>,  <32.525528, 45.437729, 49.370205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.279465, 44.855923, 49.059719> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603577, 44.764709, 49.275661>,  <32.798042, 44.709980, 49.405228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.603577, 44.764709, 49.275661>,  <32.279465, 44.855923, 49.059719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603577, 44.764709, 49.275661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466587, -0.808417, 0.358829,
		0.354604, -0.542643, -0.761443,
		0.810279, -0.228037, 0.539858,
		32.846661, 44.696297, 49.437618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.221642, 44.140045, 49.029339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463448, 44.247002, 49.329487>,  <32.608532, 44.311176, 49.509575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.463448, 44.247002, 49.329487>,  <32.221642, 44.140045, 49.029339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463448, 44.247002, 49.329487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248483, -0.831681, 0.496550,
		0.756845, -0.486629, -0.436324,
		0.604518, 0.267392, 0.750373,
		32.644802, 44.327221, 49.554600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685188, 43.569267, 49.186066>,  <32.221642, 44.140045, 49.029339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685188, 43.569267, 49.186066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667229, 43.785454, 49.522133>,  <32.656452, 43.915165, 49.723774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.667229, 43.785454, 49.522133>,  <32.685188, 43.569267, 49.186066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667229, 43.785454, 49.522133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207124, -0.827774, 0.521431,
		0.977284, -0.150608, 0.149108,
		-0.044897, 0.540470, 0.840164,
		32.653759, 43.947594, 49.774181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.080589, 43.150951, 49.680851>,  <32.685188, 43.569267, 49.186066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.080589, 43.150951, 49.680851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873863, 43.407196, 49.908012>,  <32.749828, 43.560944, 50.044312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.873863, 43.407196, 49.908012>,  <33.080589, 43.150951, 49.680851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.873863, 43.407196, 49.908012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234989, -0.744042, 0.625445,
		0.823212, 0.189790, 0.535072,
		-0.516820, 0.640610, 0.567906,
		32.718819, 43.599380, 50.078384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228718, 42.997482, 50.393223>,  <33.080589, 43.150951, 49.680851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228718, 42.997482, 50.393223> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.887566, 43.205940, 50.405926>,  <32.682877, 43.331013, 50.413548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.887566, 43.205940, 50.405926>,  <33.228718, 42.997482, 50.393223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887566, 43.205940, 50.405926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359387, -0.630098, 0.688344,
		0.378735, 0.575662, 0.724689,
		-0.852878, 0.521143, 0.031755,
		32.631702, 43.362282, 50.415451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931374, 42.674870, 50.936207>,  <33.228718, 42.997482, 50.393223>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931374, 42.674870, 50.936207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633911, 42.900658, 50.792908>,  <32.455433, 43.036133, 50.706928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.633911, 42.900658, 50.792908>,  <32.931374, 42.674870, 50.936207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633911, 42.900658, 50.792908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649110, -0.481287, 0.589084,
		0.160101, 0.670620, 0.724318,
		-0.743656, 0.564475, -0.358252,
		32.410816, 43.070000, 50.685432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530922, 43.015385, 51.519650>,  <32.931374, 42.674870, 50.936207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530922, 43.015385, 51.519650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306641, 42.985611, 51.189785>,  <32.172070, 42.967747, 50.991867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.306641, 42.985611, 51.189785>,  <32.530922, 43.015385, 51.519650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306641, 42.985611, 51.189785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738407, -0.405687, 0.538677,
		-0.374651, 0.910976, 0.172508,
		-0.560706, -0.074435, -0.824662,
		32.138428, 42.963280, 50.942387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817213, 43.287029, 51.725666>,  <32.530922, 43.015385, 51.519650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817213, 43.287029, 51.725666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755196, 43.064308, 51.399246>,  <31.717985, 42.930676, 51.203396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.755196, 43.064308, 51.399246>,  <31.817213, 43.287029, 51.725666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755196, 43.064308, 51.399246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713049, -0.508647, 0.482534,
		-0.683756, 0.656694, -0.318167,
		-0.155042, -0.556804, -0.816046,
		31.708683, 42.897266, 51.154434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.088413, 43.083385, 51.744442>,  <31.817213, 43.287029, 51.725666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.088413, 43.083385, 51.744442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226864, 42.815094, 51.482048>,  <31.309935, 42.654118, 51.324612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.226864, 42.815094, 51.482048>,  <31.088413, 43.083385, 51.744442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226864, 42.815094, 51.482048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651752, -0.674845, 0.346126,
		-0.674845, 0.307736, -0.670733,
		-0.346126, 0.670733, 0.655983,
		31.330702, 42.613873, 51.285252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.491907, 42.871532, 51.377872>,  <31.088413, 43.083385, 51.744442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.491907, 42.871532, 51.377872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.773510, 42.587463, 51.375637>,  <30.942472, 42.417023, 51.374294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.773510, 42.587463, 51.375637>,  <30.491907, 42.871532, 51.377872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.773510, 42.587463, 51.375637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677877, -0.674301, 0.292919,
		-0.211794, -0.202426, -0.956121,
		0.704007, -0.710170, -0.005593,
		30.984713, 42.374413, 51.373959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.217869, 42.334667, 51.088264>,  <30.491907, 42.871532, 51.377872>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.217869, 42.334667, 51.088264> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545988, 42.154419, 51.229149>,  <30.742859, 42.046268, 51.313679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.545988, 42.154419, 51.229149>,  <30.217869, 42.334667, 51.088264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.545988, 42.154419, 51.229149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562498, -0.747057, 0.354263,
		0.103481, -0.488718, -0.866283,
		0.820298, -0.450623, 0.352208,
		30.792078, 42.019234, 51.334812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208160, 41.662094, 50.828022>,  <30.217869, 42.334667, 51.088264>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208160, 41.662094, 50.828022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.415796, 41.668243, 51.169857>,  <30.540377, 41.671932, 51.374958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.415796, 41.668243, 51.169857>,  <30.208160, 41.662094, 50.828022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415796, 41.668243, 51.169857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576594, -0.731765, 0.363400,
		0.630942, -0.681383, -0.370984,
		0.519087, 0.015377, 0.854583,
		30.571522, 41.672855, 51.426231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.311407, 40.960480, 51.050282>,  <30.208160, 41.662094, 50.828022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.311407, 40.960480, 51.050282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.385691, 41.177559, 51.377937>,  <30.430260, 41.307804, 51.574532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.385691, 41.177559, 51.377937>,  <30.311407, 40.960480, 51.050282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385691, 41.177559, 51.377937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503036, -0.663610, 0.553694,
		0.844078, -0.514883, 0.149758,
		0.185707, 0.542695, 0.819143,
		30.441402, 41.340366, 51.623680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.475273, 40.493210, 51.649586>,  <30.311407, 40.960480, 51.050282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.475273, 40.493210, 51.649586> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335575, 40.828888, 51.816330>,  <30.251757, 41.030296, 51.916374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.335575, 40.828888, 51.816330>,  <30.475273, 40.493210, 51.649586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335575, 40.828888, 51.816330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486595, -0.542611, 0.684688,
		0.800782, 0.036283, 0.597856,
		-0.349246, 0.839200, 0.416858,
		30.230801, 41.080647, 51.941387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.422955, 40.399284, 52.370552>,  <30.475273, 40.493210, 51.649586>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.422955, 40.399284, 52.370552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180899, 40.710480, 52.302967>,  <30.035666, 40.897198, 52.262417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.180899, 40.710480, 52.302967>,  <30.422955, 40.399284, 52.370552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180899, 40.710480, 52.302967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578884, -0.284299, 0.764243,
		0.546534, 0.560281, 0.622403,
		-0.605139, 0.777985, -0.168958,
		29.999357, 40.943874, 52.252281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.264124, 40.603134, 53.087475>,  <30.422955, 40.399284, 52.370552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.264124, 40.603134, 53.087475> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993164, 40.773659, 52.847679>,  <29.830587, 40.875973, 52.703800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.993164, 40.773659, 52.847679>,  <30.264124, 40.603134, 53.087475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993164, 40.773659, 52.847679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707706, -0.155330, 0.689220,
		0.200704, 0.891140, 0.406925,
		-0.677399, 0.426312, -0.599490,
		29.789944, 40.901554, 52.667831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844551, 40.998905, 53.515400>,  <30.264124, 40.603134, 53.087475>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844551, 40.998905, 53.515400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617653, 40.931473, 53.192955>,  <29.481514, 40.891014, 52.999489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.617653, 40.931473, 53.192955>,  <29.844551, 40.998905, 53.515400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617653, 40.931473, 53.192955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765775, -0.252190, 0.591599,
		-0.303025, 0.952880, 0.013958,
		-0.567243, -0.168581, -0.806111,
		29.447479, 40.880898, 52.951122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141226, 41.423107, 53.528236>,  <29.844551, 40.998905, 53.515400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141226, 41.423107, 53.528236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.117374, 41.100708, 53.292675>,  <29.103064, 40.907269, 53.151337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.117374, 41.100708, 53.292675>,  <29.141226, 41.423107, 53.528236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117374, 41.100708, 53.292675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797834, -0.316077, 0.513377,
		-0.599921, 0.500460, -0.624207,
		-0.059627, -0.806000, -0.588905,
		29.099485, 40.858910, 53.116005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482458, 41.281994, 53.642731>,  <29.141226, 41.423107, 53.528236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482458, 41.281994, 53.642731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621231, 40.939796, 53.488972>,  <28.704494, 40.734478, 53.396717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.621231, 40.939796, 53.488972>,  <28.482458, 41.281994, 53.642731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.621231, 40.939796, 53.488972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674253, -0.512396, 0.531820,
		-0.651935, 0.074677, -0.754589,
		0.346934, -0.855496, -0.384400,
		28.725311, 40.683147, 53.373653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848202, 41.004387, 53.653591>,  <28.482458, 41.281994, 53.642731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848202, 41.004387, 53.653591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.097206, 40.696793, 53.595428>,  <28.246609, 40.512238, 53.560532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.097206, 40.696793, 53.595428>,  <27.848202, 41.004387, 53.653591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.097206, 40.696793, 53.595428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654294, -0.613321, 0.442421,
		-0.429392, -0.180277, -0.884942,
		0.622512, -0.768985, -0.145401,
		28.283960, 40.466099, 53.551807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.452909, 40.405079, 53.341434>,  <27.848202, 41.004387, 53.653591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.452909, 40.405079, 53.341434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.782215, 40.221466, 53.475014>,  <27.979799, 40.111298, 53.555161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.782215, 40.221466, 53.475014>,  <27.452909, 40.405079, 53.341434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782215, 40.221466, 53.475014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566069, -0.707836, 0.422534,
		0.042422, -0.536895, -0.842582,
		0.823266, -0.459034, 0.333947,
		28.029196, 40.083755, 53.575199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.290806, 39.714020, 53.379219>,  <27.452909, 40.405079, 53.341434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.290806, 39.714020, 53.379219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.613714, 39.744492, 53.613316>,  <27.807459, 39.762775, 53.753773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.613714, 39.744492, 53.613316>,  <27.290806, 39.714020, 53.379219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.613714, 39.744492, 53.613316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312616, -0.785891, 0.533522,
		0.500582, -0.613653, -0.610612,
		0.807273, 0.076184, 0.585241,
		27.855896, 39.767345, 53.788887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520477, 39.061855, 53.473656>,  <27.290806, 39.714020, 53.379219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520477, 39.061855, 53.473656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.663818, 39.274323, 53.780758>,  <27.749823, 39.401802, 53.965019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.663818, 39.274323, 53.780758>,  <27.520477, 39.061855, 53.473656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.663818, 39.274323, 53.780758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462410, -0.613427, 0.640223,
		0.811025, -0.584442, 0.025794,
		0.358351, 0.531164, 0.767756,
		27.771324, 39.433670, 54.011086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419565, 38.647427, 53.982990>,  <27.520477, 39.061855, 53.473656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419565, 38.647427, 53.982990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.478516, 38.994873, 54.172218>,  <27.513885, 39.203339, 54.285755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.478516, 38.994873, 54.172218>,  <27.419565, 38.647427, 53.982990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478516, 38.994873, 54.172218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302030, -0.415924, 0.857779,
		0.941837, -0.269298, 0.201049,
		0.147378, 0.868612, 0.473069,
		27.522730, 39.255455, 54.314140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.679432, 37.970070, 54.188297>,  <27.419565, 38.647427, 53.982990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.679432, 37.970070, 54.188297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.863102, 37.617638, 54.233639>,  <27.973303, 37.406178, 54.260845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.863102, 37.617638, 54.233639>,  <27.679432, 37.970070, 54.188297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.863102, 37.617638, 54.233639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655307, 0.249798, -0.712863,
		0.599776, 0.401611, 0.692082,
		0.459174, -0.881084, 0.113356,
		28.000854, 37.353313, 54.267647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.526163, 38.027958, 54.313942>,  <27.679432, 37.970070, 54.188297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.526163, 38.027958, 54.313942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.425980, 37.683167, 54.137638>,  <28.365870, 37.476292, 54.031857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.425980, 37.683167, 54.137638>,  <28.526163, 38.027958, 54.313942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.425980, 37.683167, 54.137638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724723, 0.134934, -0.675700,
		0.641910, -0.488663, 0.590898,
		-0.250457, -0.861975, -0.440760,
		28.350843, 37.424576, 54.005409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058596, 37.660305, 54.310177>,  <28.526163, 38.027958, 54.313942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058596, 37.660305, 54.310177> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.841526, 37.509895, 54.009747>,  <28.711285, 37.419651, 53.829487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.841526, 37.509895, 54.009747>,  <29.058596, 37.660305, 54.310177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841526, 37.509895, 54.009747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730461, 0.230158, -0.643004,
		0.414649, -0.897573, 0.149767,
		-0.542673, -0.376020, -0.751076,
		28.678724, 37.397091, 53.784424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603741, 37.287983, 53.821838>,  <29.058596, 37.660305, 54.310177>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603741, 37.287983, 53.821838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.277056, 37.371384, 53.606613>,  <29.081045, 37.421425, 53.477478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.277056, 37.371384, 53.606613>,  <29.603741, 37.287983, 53.821838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.277056, 37.371384, 53.606613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577044, 0.292046, -0.762712,
		-0.001886, -0.933401, -0.358830,
		-0.816711, 0.208499, -0.538062,
		29.032042, 37.433933, 53.445194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603844, 36.885273, 53.173782>,  <29.603741, 37.287983, 53.821838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603844, 36.885273, 53.173782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359394, 37.195335, 53.109703>,  <29.212725, 37.381371, 53.071255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.359394, 37.195335, 53.109703>,  <29.603844, 36.885273, 53.173782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359394, 37.195335, 53.109703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525786, 0.246265, -0.814188,
		-0.591671, -0.581799, -0.558064,
		-0.611125, 0.775154, -0.160194,
		29.176056, 37.427883, 53.061646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336409, 36.832523, 52.568241>,  <29.603844, 36.885273, 53.173782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336409, 36.832523, 52.568241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307486, 37.225937, 52.634483>,  <29.290133, 37.461987, 52.674229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.307486, 37.225937, 52.634483>,  <29.336409, 36.832523, 52.568241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.307486, 37.225937, 52.634483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589729, 0.176064, -0.788176,
		-0.804358, 0.040670, -0.592752,
		-0.072307, 0.983538, 0.165603,
		29.285793, 37.521000, 52.684166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.216623, 37.295982, 51.999508>,  <29.336409, 36.832523, 52.568241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.216623, 37.295982, 51.999508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.368296, 37.590683, 52.223446>,  <29.459299, 37.767502, 52.357807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.368296, 37.590683, 52.223446>,  <29.216623, 37.295982, 51.999508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.368296, 37.590683, 52.223446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658403, 0.210301, -0.722688,
		-0.650174, 0.642633, -0.405335,
		0.379181, 0.736747, 0.559844,
		29.482050, 37.811707, 52.391399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.183598, 37.907284, 51.572243>,  <29.216623, 37.295982, 51.999508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.183598, 37.907284, 51.572243> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460920, 37.955582, 51.856422>,  <29.627314, 37.984562, 52.026932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.460920, 37.955582, 51.856422>,  <29.183598, 37.907284, 51.572243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460920, 37.955582, 51.856422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613814, 0.417578, -0.669971,
		-0.377564, 0.900583, 0.215397,
		0.693309, 0.120743, 0.710453,
		29.668913, 37.991806, 52.069557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440815, 38.516647, 51.365948>,  <29.183598, 37.907284, 51.572243>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440815, 38.516647, 51.365948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721527, 38.416138, 51.632591>,  <29.889954, 38.355831, 51.792576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.721527, 38.416138, 51.632591>,  <29.440815, 38.516647, 51.365948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721527, 38.416138, 51.632591> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683008, 0.503297, -0.529332,
		-0.202497, 0.826774, 0.524823,
		0.701779, -0.251270, 0.666610,
		29.932060, 38.340755, 51.832573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757931, 39.092422, 51.705261>,  <29.440815, 38.516647, 51.365948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757931, 39.092422, 51.705261> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016870, 38.788147, 51.724419>,  <30.172234, 38.605583, 51.735912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.016870, 38.788147, 51.724419>,  <29.757931, 39.092422, 51.705261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016870, 38.788147, 51.724419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698352, 0.566779, -0.437112,
		0.305362, 0.316409, 0.898131,
		0.647348, -0.760689, 0.047892,
		30.211075, 38.559940, 51.738785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.286547, 39.382233, 51.997761>,  <29.757931, 39.092422, 51.705261>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.286547, 39.382233, 51.997761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.453142, 39.056396, 51.836281>,  <30.553099, 38.860893, 51.739391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.453142, 39.056396, 51.836281>,  <30.286547, 39.382233, 51.997761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453142, 39.056396, 51.836281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645469, 0.577654, -0.499686,
		0.640240, -0.052463, 0.766381,
		0.416488, -0.814594, -0.403700,
		30.578089, 38.812019, 51.715172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.012880, 39.331593, 52.208115>,  <30.286547, 39.382233, 51.997761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.012880, 39.331593, 52.208115> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961195, 39.129166, 51.867008>,  <30.930183, 39.007710, 51.662346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961195, 39.129166, 51.867008>,  <31.012880, 39.331593, 52.208115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961195, 39.129166, 51.867008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725334, 0.538161, -0.429270,
		0.676162, -0.674005, 0.297527,
		-0.129213, -0.506063, -0.852763,
		30.922432, 38.977348, 51.611179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602726, 39.413128, 51.848171>,  <31.012880, 39.331593, 52.208115>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602726, 39.413128, 51.848171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369017, 39.302368, 51.543030>,  <31.228792, 39.235912, 51.359943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.369017, 39.302368, 51.543030>,  <31.602726, 39.413128, 51.848171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369017, 39.302368, 51.543030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511129, 0.604581, -0.610925,
		0.630376, -0.746865, -0.211705,
		-0.584271, -0.276904, -0.762857,
		31.193735, 39.219296, 51.314171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031044, 39.258427, 51.319107>,  <31.602726, 39.413128, 51.848171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031044, 39.258427, 51.319107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.687483, 39.314407, 51.122047>,  <31.481346, 39.347996, 51.003811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.687483, 39.314407, 51.122047>,  <32.031044, 39.258427, 51.319107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687483, 39.314407, 51.122047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463906, 0.620145, -0.632622,
		0.216978, -0.771903, -0.597567,
		-0.858901, 0.139949, -0.492648,
		31.429813, 39.356392, 50.974255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219868, 39.305004, 50.656376>,  <32.031044, 39.258427, 51.319107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219868, 39.305004, 50.656376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842884, 39.433807, 50.620407>,  <31.616695, 39.511089, 50.598824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.842884, 39.433807, 50.620407>,  <32.219868, 39.305004, 50.656376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842884, 39.433807, 50.620407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258951, 0.532932, -0.805561,
		-0.211476, -0.782491, -0.585650,
		-0.942455, 0.322011, -0.089925,
		31.560148, 39.530411, 50.593430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031528, 39.218716, 50.006790>,  <32.219868, 39.305004, 50.656376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031528, 39.218716, 50.006790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.791639, 39.516396, 50.124435>,  <31.647707, 39.695004, 50.195023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.791639, 39.516396, 50.124435>,  <32.031528, 39.218716, 50.006790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791639, 39.516396, 50.124435> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309058, 0.554441, -0.772708,
		-0.738120, -0.372509, -0.562509,
		-0.599719, 0.744199, 0.294117,
		31.611723, 39.739655, 50.212669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744421, 39.462795, 49.425095>,  <32.031528, 39.218716, 50.006790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744421, 39.462795, 49.425095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675379, 39.758911, 49.684998>,  <31.633953, 39.936581, 49.840939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.675379, 39.758911, 49.684998>,  <31.744421, 39.462795, 49.425095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675379, 39.758911, 49.684998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152411, 0.671784, -0.724899,
		-0.973128, -0.026091, -0.228781,
		-0.172604, 0.740288, 0.649755,
		31.623598, 39.980999, 49.879925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.110189, 39.907970, 49.265339>,  <31.744421, 39.462795, 49.425095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.110189, 39.907970, 49.265339> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386177, 40.102768, 49.479546>,  <31.551769, 40.219646, 49.608070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.386177, 40.102768, 49.479546>,  <31.110189, 39.907970, 49.265339>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386177, 40.102768, 49.479546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239958, 0.544106, -0.803971,
		-0.682906, 0.683218, 0.258560,
		0.689971, 0.486993, 0.535517,
		31.593168, 40.248867, 49.640202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206026, 40.476768, 48.797482>,  <31.110189, 39.907970, 49.265339>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206026, 40.476768, 48.797482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490709, 40.521591, 49.074875>,  <31.661518, 40.548485, 49.241310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.490709, 40.521591, 49.074875>,  <31.206026, 40.476768, 48.797482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490709, 40.521591, 49.074875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543323, 0.537944, -0.644527,
		-0.445279, 0.835499, 0.321975,
		0.711707, 0.112058, 0.693482,
		31.704222, 40.555210, 49.282921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.430576, 41.138065, 48.695660>,  <31.206026, 40.476768, 48.797482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.430576, 41.138065, 48.695660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733549, 40.970200, 48.895733>,  <31.915333, 40.869480, 49.015778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.733549, 40.970200, 48.895733>,  <31.430576, 41.138065, 48.695660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733549, 40.970200, 48.895733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652031, 0.446305, -0.612917,
		0.033982, 0.790378, 0.611676,
		0.757430, -0.419660, 0.500185,
		31.960779, 40.844303, 49.045788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887362, 41.755268, 48.942417>,  <31.430576, 41.138065, 48.695660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887362, 41.755268, 48.942417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088989, 41.410141, 48.927143>,  <32.209965, 41.203064, 48.917976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088989, 41.410141, 48.927143>,  <31.887362, 41.755268, 48.942417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088989, 41.410141, 48.927143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671128, 0.419145, -0.611478,
		0.543602, 0.282596, 0.790340,
		0.504068, -0.862819, -0.038190,
		32.240211, 41.151295, 48.915688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<33.958767, 46.615421, 47.901894> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.214710, 46.364128, 48.078938>,  <34.368279, 46.213352, 48.185165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.214710, 46.364128, 48.078938>,  <33.958767, 46.615421, 47.901894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214710, 46.364128, 48.078938> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754938, 0.406164, -0.514878,
		0.143690, 0.663594, 0.734164,
		0.639861, -0.628231, 0.442611,
		34.406670, 46.175659, 48.211720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440769, 47.016598, 48.341003>,  <33.958767, 46.615421, 47.901894>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440769, 47.016598, 48.341003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.617973, 46.670326, 48.247757>,  <34.724297, 46.462563, 48.191807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.617973, 46.670326, 48.247757>,  <34.440769, 47.016598, 48.341003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617973, 46.670326, 48.247757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687534, 0.494931, -0.531357,
		0.575363, 0.075118, 0.814442,
		0.443007, -0.865679, -0.233119,
		34.750874, 46.410622, 48.177822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110104, 47.147976, 48.448788>,  <34.440769, 47.016598, 48.341003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110104, 47.147976, 48.448788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105499, 46.824677, 48.213295>,  <35.102737, 46.630699, 48.071999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.105499, 46.824677, 48.213295>,  <35.110104, 47.147976, 48.448788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105499, 46.824677, 48.213295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705320, 0.410783, -0.577738,
		0.708796, -0.421894, 0.565344,
		-0.011510, -0.808247, -0.588732,
		35.102047, 46.582203, 48.036674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754337, 47.157963, 48.332500>,  <35.110104, 47.147976, 48.448788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754337, 47.157963, 48.332500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.594852, 46.926483, 48.047928>,  <35.499161, 46.787594, 47.877186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.594852, 46.926483, 48.047928>,  <35.754337, 47.157963, 48.332500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594852, 46.926483, 48.047928> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734363, 0.263189, -0.625653,
		0.549305, -0.771907, 0.320037,
		-0.398716, -0.578698, -0.711431,
		35.475239, 46.752872, 47.834499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252266, 46.579517, 48.136475>,  <35.754337, 47.157963, 48.332500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252266, 46.579517, 48.136475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.993160, 46.654373, 47.841072>,  <35.837696, 46.699287, 47.663830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.993160, 46.654373, 47.841072>,  <36.252266, 46.579517, 48.136475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993160, 46.654373, 47.841072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761765, 0.145031, -0.631412,
		-0.011054, -0.971569, -0.236500,
		-0.647760, 0.187137, -0.738504,
		35.798832, 46.710514, 47.619522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690548, 46.471317, 47.588284>,  <36.252266, 46.579517, 48.136475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690548, 46.471317, 47.588284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.358803, 46.618607, 47.420204>,  <36.159756, 46.706978, 47.319359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.358803, 46.618607, 47.420204>,  <36.690548, 46.471317, 47.588284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358803, 46.618607, 47.420204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536630, 0.315696, -0.782537,
		-0.155494, -0.874499, -0.459426,
		-0.829368, 0.368222, -0.420194,
		36.109993, 46.729073, 47.294147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737904, 46.233696, 46.907684>,  <36.690548, 46.471317, 47.588284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737904, 46.233696, 46.907684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.508331, 46.561218, 46.912590>,  <36.370586, 46.757732, 46.915535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.508331, 46.561218, 46.912590>,  <36.737904, 46.233696, 46.907684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508331, 46.561218, 46.912590> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570829, 0.410762, -0.710935,
		-0.587158, -0.401029, -0.703150,
		-0.573933, 0.818810, 0.012263,
		36.336151, 46.806862, 46.916267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791420, 46.524181, 46.192478>,  <36.737904, 46.233696, 46.907684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791420, 46.524181, 46.192478> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.648880, 46.834282, 46.401093>,  <36.563358, 47.020344, 46.526260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.648880, 46.834282, 46.401093>,  <36.791420, 46.524181, 46.192478>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648880, 46.834282, 46.401093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678566, 0.598442, -0.425929,
		-0.642313, 0.202121, -0.739311,
		-0.356346, 0.775251, 0.521540,
		36.541977, 47.066856, 46.557556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665237, 47.112568, 45.654739>,  <36.791420, 46.524181, 46.192478>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665237, 47.112568, 45.654739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.718849, 47.257622, 46.023636>,  <36.751015, 47.344654, 46.244976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.718849, 47.257622, 46.023636>,  <36.665237, 47.112568, 45.654739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718849, 47.257622, 46.023636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585373, 0.721953, -0.368948,
		-0.799610, 0.589304, -0.115517,
		0.134025, 0.362635, 0.922243,
		36.759056, 47.366413, 46.300308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539490, 47.848293, 45.639893>,  <36.665237, 47.112568, 45.654739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539490, 47.848293, 45.639893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749989, 47.798256, 45.976326>,  <36.876286, 47.768234, 46.178185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.749989, 47.798256, 45.976326>,  <36.539490, 47.848293, 45.639893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749989, 47.798256, 45.976326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672683, 0.666299, -0.321781,
		-0.520159, 0.735117, 0.434784,
		0.526243, -0.125094, 0.841083,
		36.907860, 47.760727, 46.228649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764053, 48.498730, 45.766842>,  <36.539490, 47.848293, 45.639893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764053, 48.498730, 45.766842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.998035, 48.232796, 45.952667>,  <37.138424, 48.073235, 46.064163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.998035, 48.232796, 45.952667>,  <36.764053, 48.498730, 45.766842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998035, 48.232796, 45.952667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810189, 0.452332, -0.372814,
		0.037721, 0.594467, 0.803235,
		0.584954, -0.664835, 0.464568,
		37.173523, 48.033344, 46.092037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178688, 48.835739, 46.310635>,  <36.764053, 48.498730, 45.766842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178688, 48.835739, 46.310635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363323, 48.497520, 46.203312>,  <37.474102, 48.294590, 46.138920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.363323, 48.497520, 46.203312>,  <37.178688, 48.835739, 46.310635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363323, 48.497520, 46.203312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669324, 0.530456, -0.520214,
		0.582191, 0.060537, 0.810795,
		0.461583, -0.845548, -0.268308,
		37.501797, 48.243855, 46.122818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836216, 48.925869, 46.379143>,  <37.178688, 48.835739, 46.310635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836216, 48.925869, 46.379143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.825165, 48.610283, 46.133617>,  <37.818535, 48.420929, 45.986301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.825165, 48.610283, 46.133617>,  <37.836216, 48.925869, 46.379143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825165, 48.610283, 46.133617> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644628, 0.455248, -0.614170,
		0.763997, -0.412650, 0.496013,
		-0.027628, -0.788968, -0.613814,
		37.816875, 48.373592, 45.949474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484222, 48.619080, 46.294800>,  <37.836216, 48.925869, 46.379143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484222, 48.619080, 46.294800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.265785, 48.560799, 45.964817>,  <38.134724, 48.525829, 45.766827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.265785, 48.560799, 45.964817>,  <38.484222, 48.619080, 46.294800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265785, 48.560799, 45.964817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723334, 0.414727, -0.552077,
		0.422570, -0.898205, -0.121090,
		-0.546098, -0.145703, -0.824953,
		38.101955, 48.517086, 45.717331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383606, 48.813778, 47.007427>,  <38.484222, 48.619080, 46.294800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383606, 48.813778, 47.007427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.761482, 48.828209, 47.137817>,  <38.988209, 48.836868, 47.216053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.761482, 48.828209, 47.137817>,  <38.383606, 48.813778, 47.007427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761482, 48.828209, 47.137817> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256709, -0.537253, 0.803405,
		0.204119, -0.842649, -0.498275,
		0.944688, 0.036078, 0.325979,
		39.044888, 48.839031, 47.235611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550369, 48.100563, 46.997757>,  <38.383606, 48.813778, 47.007427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550369, 48.100563, 46.997757> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772835, 48.314781, 47.251961>,  <38.906315, 48.443314, 47.404484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.772835, 48.314781, 47.251961>,  <38.550369, 48.100563, 46.997757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.772835, 48.314781, 47.251961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386028, -0.510718, 0.768212,
		0.735978, -0.672577, -0.077308,
		0.556164, 0.535544, 0.635511,
		38.939686, 48.475445, 47.442616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893406, 47.571312, 47.405006>,  <38.550369, 48.100563, 46.997757>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893406, 47.571312, 47.405006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900013, 47.913490, 47.612061>,  <38.903976, 48.118797, 47.736294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.900013, 47.913490, 47.612061>,  <38.893406, 47.571312, 47.405006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900013, 47.913490, 47.612061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147116, -0.509993, 0.847505,
		0.988981, -0.090150, 0.117426,
		0.016516, 0.855441, 0.517636,
		38.904968, 48.170124, 47.767353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.141884, 47.448074, 48.027203>,  <38.893406, 47.571312, 47.405006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.141884, 47.448074, 48.027203> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.956524, 47.793198, 48.108017>,  <38.845306, 48.000271, 48.156506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.956524, 47.793198, 48.108017>,  <39.141884, 47.448074, 48.027203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956524, 47.793198, 48.108017> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377325, -0.398413, 0.835998,
		0.801802, 0.311169, 0.510184,
		-0.463401, 0.862810, 0.202036,
		38.817505, 48.052040, 48.168629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381119, 47.705482, 48.753761>,  <39.141884, 47.448074, 48.027203>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381119, 47.705482, 48.753761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042282, 47.896767, 48.661022>,  <38.838982, 48.011536, 48.605377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.042282, 47.896767, 48.661022>,  <39.381119, 47.705482, 48.753761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042282, 47.896767, 48.661022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381337, -0.243074, 0.891907,
		0.370159, 0.843940, 0.388263,
		-0.847092, 0.478206, -0.231849,
		38.788155, 48.040230, 48.591469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239723, 48.042160, 49.367226>,  <39.381119, 47.705482, 48.753761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239723, 48.042160, 49.367226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890572, 48.036057, 49.172146>,  <38.681080, 48.032394, 49.055099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.890572, 48.036057, 49.172146>,  <39.239723, 48.042160, 49.367226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890572, 48.036057, 49.172146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475031, -0.201765, 0.856526,
		-0.111467, 0.979315, 0.168869,
		-0.872881, -0.015256, -0.487695,
		38.628708, 48.031479, 49.025837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702866, 48.226898, 49.826488>,  <39.239723, 48.042160, 49.367226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702866, 48.226898, 49.826488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507782, 48.028603, 49.539047>,  <38.390732, 47.909626, 49.366585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.507782, 48.028603, 49.539047>,  <38.702866, 48.226898, 49.826488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507782, 48.028603, 49.539047> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595051, -0.413529, 0.689136,
		-0.638793, 0.763700, -0.093308,
		-0.487707, -0.495738, -0.718600,
		38.361469, 47.879883, 49.323467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973183, 48.316429, 50.096611>,  <38.702866, 48.226898, 49.826488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973183, 48.316429, 50.096611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949394, 48.025986, 49.822609>,  <37.935123, 47.851719, 49.658207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949394, 48.025986, 49.822609>,  <37.973183, 48.316429, 50.096611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949394, 48.025986, 49.822609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691134, -0.465194, 0.553107,
		-0.720276, 0.506322, -0.474174,
		-0.059468, -0.726107, -0.685005,
		37.931553, 47.808155, 49.617107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240993, 48.141228, 49.889091>,  <37.973183, 48.316429, 50.096611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240993, 48.141228, 49.889091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463570, 47.815903, 49.821095>,  <37.597115, 47.620708, 49.780296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463570, 47.815903, 49.821095>,  <37.240993, 48.141228, 49.889091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463570, 47.815903, 49.821095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641509, -0.550548, 0.534194,
		-0.528053, -0.188199, -0.828095,
		0.556441, -0.813313, -0.169987,
		37.630501, 47.571907, 49.770096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699715, 47.711361, 49.705017>,  <37.240993, 48.141228, 49.889091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699715, 47.711361, 49.705017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.997238, 47.451416, 49.767529>,  <37.175755, 47.295448, 49.805035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.997238, 47.451416, 49.767529>,  <36.699715, 47.711361, 49.705017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997238, 47.451416, 49.767529> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652339, -0.654900, 0.381523,
		-0.145591, -0.385727, -0.911053,
		0.743812, -0.649862, 0.156277,
		37.220383, 47.256458, 49.814411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528503, 47.016323, 49.446198>,  <36.699715, 47.711361, 49.705017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528503, 47.016323, 49.446198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814629, 46.989464, 49.724426>,  <36.986301, 46.973347, 49.891365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.814629, 46.989464, 49.724426>,  <36.528503, 47.016323, 49.446198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814629, 46.989464, 49.724426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499663, -0.745014, 0.441917,
		0.488540, -0.663660, -0.566466,
		0.715308, -0.067148, 0.695576,
		37.029221, 46.969318, 49.933098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689686, 46.288925, 49.455540>,  <36.528503, 47.016323, 49.446198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689686, 46.288925, 49.455540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.816093, 46.439064, 49.804077>,  <36.891937, 46.529148, 50.013199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.816093, 46.439064, 49.804077>,  <36.689686, 46.288925, 49.455540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816093, 46.439064, 49.804077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454114, -0.746532, 0.486282,
		0.833013, -0.549366, -0.065469,
		0.316021, 0.375349, 0.871346,
		36.910900, 46.551670, 50.065479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858257, 45.693855, 49.840107>,  <36.689686, 46.288925, 49.455540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858257, 45.693855, 49.840107> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.820942, 45.980141, 50.116962>,  <36.798553, 46.151913, 50.283073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.820942, 45.980141, 50.116962>,  <36.858257, 45.693855, 49.840107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820942, 45.980141, 50.116962> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454366, -0.649159, 0.610036,
		0.885917, -0.257573, 0.385754,
		-0.093287, 0.715715, 0.692134,
		36.792957, 46.194855, 50.324604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.024654, 45.414307, 50.463356>,  <36.858257, 45.693855, 49.840107>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.024654, 45.414307, 50.463356> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.803589, 45.729492, 50.571934>,  <36.670952, 45.918602, 50.637081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.803589, 45.729492, 50.571934>,  <37.024654, 45.414307, 50.463356>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.803589, 45.729492, 50.571934> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459401, -0.559786, 0.689631,
		0.695352, 0.256431, 0.671363,
		-0.552662, 0.787961, 0.271443,
		36.637791, 45.965881, 50.653366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.670841, 45.306343, 50.948811>,  <37.024654, 45.414307, 50.463356>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.670841, 45.306343, 50.948811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.818527, 44.934921, 50.933479>,  <37.907139, 44.712067, 50.924282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.818527, 44.934921, 50.933479>,  <37.670841, 45.306343, 50.948811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.818527, 44.934921, 50.933479> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435449, 0.209280, -0.875549,
		0.821015, 0.306576, 0.481607,
		0.369213, -0.928554, -0.038324,
		37.929291, 44.656357, 50.921982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425468, 45.274174, 50.931961>,  <37.670841, 45.306343, 50.948811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425468, 45.274174, 50.931961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.348724, 44.925056, 50.752441>,  <38.302677, 44.715588, 50.644730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.348724, 44.925056, 50.752441>,  <38.425468, 45.274174, 50.931961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348724, 44.925056, 50.752441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703056, 0.196836, -0.683351,
		0.684764, -0.446641, 0.575856,
		-0.191863, -0.872793, -0.448800,
		38.291164, 44.663219, 50.617802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.078880, 44.960793, 50.885864>,  <38.425468, 45.274174, 50.931961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.078880, 44.960793, 50.885864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.852489, 44.784142, 50.607399>,  <38.716656, 44.678150, 50.440319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.852489, 44.784142, 50.607399>,  <39.078880, 44.960793, 50.885864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852489, 44.784142, 50.607399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710671, 0.166660, -0.683499,
		0.417872, -0.881585, 0.219524,
		-0.565977, -0.441624, -0.696160,
		38.682697, 44.651653, 50.398552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.544567, 44.521149, 50.577911>,  <39.078880, 44.960793, 50.885864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.544567, 44.521149, 50.577911> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244839, 44.562027, 50.316204>,  <39.065002, 44.586555, 50.159180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.244839, 44.562027, 50.316204>,  <39.544567, 44.521149, 50.577911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244839, 44.562027, 50.316204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660772, 0.180294, -0.728611,
		0.043499, -0.978289, -0.202628,
		-0.749325, 0.102197, -0.654269,
		39.020042, 44.592686, 50.119923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.705292, 44.032440, 49.935913>,  <39.544567, 44.521149, 50.577911>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.705292, 44.032440, 49.935913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.439911, 44.295959, 49.794029>,  <39.280682, 44.454071, 49.708900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.439911, 44.295959, 49.794029>,  <39.705292, 44.032440, 49.935913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439911, 44.295959, 49.794029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595211, 0.177439, -0.783734,
		-0.453384, -0.731095, -0.509846,
		-0.663450, 0.658799, -0.354708,
		39.240875, 44.493599, 49.687618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.683762, 43.924606, 49.167206>,  <39.705292, 44.032440, 49.935913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.683762, 43.924606, 49.167206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529854, 44.286522, 49.240200>,  <39.437508, 44.503674, 49.283997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.529854, 44.286522, 49.240200>,  <39.683762, 43.924606, 49.167206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529854, 44.286522, 49.240200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497475, 0.369819, -0.784699,
		-0.777476, -0.211148, -0.592408,
		-0.384771, 0.904793, 0.182485,
		39.414421, 44.557961, 49.294945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616978, 44.195541, 48.557781>,  <39.683762, 43.924606, 49.167206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616978, 44.195541, 48.557781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.597961, 44.533592, 48.770760>,  <39.586552, 44.736423, 48.898548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.597961, 44.533592, 48.770760>,  <39.616978, 44.195541, 48.557781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597961, 44.533592, 48.770760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454628, 0.492945, -0.741834,
		-0.889412, 0.206797, -0.407654,
		-0.047542, 0.845127, 0.532447,
		39.583698, 44.787132, 48.930492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380917, 44.700237, 48.075241>,  <39.616978, 44.195541, 48.557781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380917, 44.700237, 48.075241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550793, 44.921440, 48.361965>,  <39.652718, 45.054161, 48.534000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.550793, 44.921440, 48.361965>,  <39.380917, 44.700237, 48.075241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550793, 44.921440, 48.361965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467926, 0.543728, -0.696710,
		-0.775038, 0.631301, -0.027851,
		0.424691, 0.553009, 0.716812,
		39.678200, 45.087341, 48.577007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347218, 45.340115, 47.815807>,  <39.380917, 44.700237, 48.075241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347218, 45.340115, 47.815807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628967, 45.346222, 48.099674>,  <39.798016, 45.349888, 48.269993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.628967, 45.346222, 48.099674>,  <39.347218, 45.340115, 47.815807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628967, 45.346222, 48.099674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585009, 0.553744, -0.592564,
		-0.402019, 0.832547, 0.381111,
		0.704376, 0.015269, 0.709663,
		39.840279, 45.350803, 48.312572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518356, 46.066792, 48.001991>,  <39.347218, 45.340115, 47.815807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518356, 46.066792, 48.001991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.834023, 45.845978, 48.109680>,  <40.023422, 45.713490, 48.174294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.834023, 45.845978, 48.109680>,  <39.518356, 46.066792, 48.001991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.834023, 45.845978, 48.109680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614160, 0.705602, -0.353459,
		0.005157, 0.444282, 0.895872,
		0.789164, -0.552032, 0.269222,
		40.070770, 45.680367, 48.190445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103539, 46.522926, 48.153374>,  <39.518356, 46.066792, 48.001991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103539, 46.522926, 48.153374> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311424, 46.181450, 48.140038>,  <40.436157, 45.976562, 48.132034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.311424, 46.181450, 48.140038>,  <40.103539, 46.522926, 48.153374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311424, 46.181450, 48.140038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773443, 0.486718, -0.406069,
		0.362884, 0.185254, 0.913234,
		0.519713, -0.853690, -0.033339,
		40.467339, 45.925343, 48.130035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728374, 46.569111, 48.565231>,  <40.103539, 46.522926, 48.153374>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728374, 46.569111, 48.565231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.755138, 46.335823, 48.241409>,  <40.771194, 46.195850, 48.047115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.755138, 46.335823, 48.241409>,  <40.728374, 46.569111, 48.565231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755138, 46.335823, 48.241409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847227, 0.461762, -0.262645,
		0.527001, -0.668303, 0.525015,
		0.066905, -0.583221, -0.809553,
		40.775211, 46.160858, 47.998543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.500141, 43.048332, 54.188911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386986, 42.879478, 53.844406>,  <36.319092, 42.778164, 53.637703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386986, 42.879478, 53.844406>,  <36.500141, 43.048332, 54.188911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386986, 42.879478, 53.844406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654070, 0.571875, -0.495128,
		0.701548, -0.703391, 0.114332,
		-0.282885, -0.422136, -0.861265,
		36.302120, 42.752838, 53.586025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159168, 42.919502, 53.829842>,  <36.500141, 43.048332, 54.188911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159168, 42.919502, 53.829842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888569, 42.894890, 53.536293>,  <36.726208, 42.880123, 53.360165>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888569, 42.894890, 53.536293>,  <37.159168, 42.919502, 53.829842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888569, 42.894890, 53.536293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633908, 0.458566, -0.622799,
		0.374848, -0.886528, -0.271215,
		-0.676498, -0.061529, -0.733869,
		36.685619, 42.876431, 53.316132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552357, 42.693424, 53.360619>,  <37.159168, 42.919502, 53.829842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552357, 42.693424, 53.360619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234879, 42.865364, 53.188446>,  <37.044392, 42.968529, 53.085140>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234879, 42.865364, 53.188446>,  <37.552357, 42.693424, 53.360619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234879, 42.865364, 53.188446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595138, 0.402216, -0.695724,
		-0.125931, -0.808362, -0.575059,
		-0.793695, 0.429853, -0.430436,
		36.996769, 42.994320, 53.059315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762562, 42.763069, 52.718258>,  <37.552357, 42.693424, 53.360619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762562, 42.763069, 52.718258> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434837, 42.988739, 52.677391>,  <37.238201, 43.124142, 52.652870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434837, 42.988739, 52.677391>,  <37.762562, 42.763069, 52.718258>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434837, 42.988739, 52.677391> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426342, 0.480350, -0.766483,
		-0.383354, -0.671546, -0.634087,
		-0.819312, 0.564172, -0.102164,
		37.189045, 43.157990, 52.646740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492676, 42.855179, 51.986431>,  <37.762562, 42.763069, 52.718258>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492676, 42.855179, 51.986431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335659, 43.161003, 52.190926>,  <37.241451, 43.344498, 52.313622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335659, 43.161003, 52.190926>,  <37.492676, 42.855179, 51.986431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335659, 43.161003, 52.190926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185123, 0.610153, -0.770353,
		-0.900913, -0.207751, -0.381045,
		-0.392537, 0.764561, 0.511235,
		37.217899, 43.390373, 52.344296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993252, 43.002293, 51.589329>,  <37.492676, 42.855179, 51.986431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993252, 43.002293, 51.589329> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094036, 43.325180, 51.802837>,  <37.154507, 43.518913, 51.930943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094036, 43.325180, 51.802837>,  <36.993252, 43.002293, 51.589329>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094036, 43.325180, 51.802837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046904, 0.540735, -0.839885,
		-0.966600, 0.236654, 0.098382,
		0.251961, 0.807218, 0.533774,
		37.169624, 43.567345, 51.962971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714596, 43.524178, 51.233406>,  <36.993252, 43.002293, 51.589329>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714596, 43.524178, 51.233406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985733, 43.693283, 51.474003>,  <37.148415, 43.794746, 51.618362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985733, 43.693283, 51.474003>,  <36.714596, 43.524178, 51.233406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985733, 43.693283, 51.474003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412139, 0.458994, -0.787062,
		-0.608826, 0.781404, 0.136888,
		0.677844, 0.422766, 0.601494,
		37.189087, 43.820114, 51.654449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766850, 44.241455, 51.044266>,  <36.714596, 43.524178, 51.233406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766850, 44.241455, 51.044266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105606, 44.204964, 51.253822>,  <37.308861, 44.183067, 51.379555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105606, 44.204964, 51.253822>,  <36.766850, 44.241455, 51.044266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105606, 44.204964, 51.253822> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520984, 0.339778, -0.783024,
		-0.106568, 0.936070, 0.335284,
		0.846888, -0.091232, 0.523887,
		37.359673, 44.177593, 51.410988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041519, 44.866859, 51.049370>,  <36.766850, 44.241455, 51.044266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041519, 44.866859, 51.049370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349434, 44.625061, 51.131363>,  <37.534184, 44.479980, 51.180561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349434, 44.625061, 51.131363>,  <37.041519, 44.866859, 51.049370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349434, 44.625061, 51.131363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533086, 0.432205, -0.727337,
		0.351077, 0.669166, 0.654952,
		0.769782, -0.604496, 0.204986,
		37.580368, 44.443710, 51.192860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835091, 45.479172, 51.606346>,  <37.041519, 44.866859, 51.049370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835091, 45.479172, 51.606346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598915, 45.735817, 51.410507>,  <36.457211, 45.889805, 51.293003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.598915, 45.735817, 51.410507>,  <36.835091, 45.479172, 51.606346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.598915, 45.735817, 51.410507> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780651, -0.300051, 0.548227,
		0.204847, 0.705902, 0.678041,
		-0.590442, 0.641617, -0.489598,
		36.421783, 45.928303, 51.263626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.464657, 45.779388, 52.098476>,  <36.835091, 45.479172, 51.606346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.464657, 45.779388, 52.098476> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257793, 45.807373, 51.757267>,  <36.133675, 45.824162, 51.552540>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257793, 45.807373, 51.757267>,  <36.464657, 45.779388, 52.098476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257793, 45.807373, 51.757267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845486, -0.196688, 0.496455,
		-0.133050, 0.977967, 0.160866,
		-0.517157, 0.069957, -0.853027,
		36.102646, 45.828362, 51.501358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809555, 45.783459, 52.298645>,  <36.464657, 45.779388, 52.098476>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809555, 45.783459, 52.298645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731705, 45.730873, 51.909832>,  <35.684994, 45.699322, 51.676544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731705, 45.730873, 51.909832>,  <35.809555, 45.783459, 52.298645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731705, 45.730873, 51.909832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925177, -0.304586, 0.226438,
		-0.325833, 0.943370, -0.062343,
		-0.194626, -0.131459, -0.972028,
		35.673317, 45.691437, 51.618225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142971, 46.037937, 52.310501>,  <35.809555, 45.783459, 52.298645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142971, 46.037937, 52.310501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154739, 45.816643, 51.977501>,  <35.161800, 45.683865, 51.777699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154739, 45.816643, 51.977501>,  <35.142971, 46.037937, 52.310501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154739, 45.816643, 51.977501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.944985, -0.286850, 0.157225,
		-0.325786, 0.782078, -0.531241,
		0.029424, -0.553237, -0.832505,
		35.163567, 45.650673, 51.727749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606129, 46.276604, 51.815643>,  <35.142971, 46.037937, 52.310501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606129, 46.276604, 51.815643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694645, 45.888084, 51.780739>,  <34.747753, 45.654972, 51.759796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694645, 45.888084, 51.780739>,  <34.606129, 46.276604, 51.815643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.694645, 45.888084, 51.780739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970893, -0.227835, 0.073875,
		-0.091635, 0.068370, -0.993443,
		0.221290, -0.971296, -0.087258,
		34.761032, 45.596695, 51.754562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036903, 46.024067, 51.440693>,  <34.606129, 46.276604, 51.815643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036903, 46.024067, 51.440693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233875, 45.733902, 51.633068>,  <34.352058, 45.559803, 51.748493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233875, 45.733902, 51.633068>,  <34.036903, 46.024067, 51.440693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233875, 45.733902, 51.633068> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867819, -0.367086, 0.334869,
		-0.066372, -0.582263, -0.810287,
		0.492427, -0.725409, 0.480935,
		34.381603, 45.516281, 51.777348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605267, 45.406860, 51.369328>,  <34.036903, 46.024067, 51.440693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605267, 45.406860, 51.369328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858467, 45.306786, 51.662369>,  <34.010387, 45.246742, 51.838196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.858467, 45.306786, 51.662369>,  <33.605267, 45.406860, 51.369328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858467, 45.306786, 51.662369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706071, -0.574630, 0.413841,
		0.317440, -0.779235, -0.540392,
		0.633005, -0.250185, 0.732606,
		34.048370, 45.231731, 51.882149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446587, 44.733402, 51.412338>,  <33.605267, 45.406860, 51.369328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446587, 44.733402, 51.412338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618340, 44.837883, 51.758148>,  <33.721394, 44.900570, 51.965633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618340, 44.837883, 51.758148>,  <33.446587, 44.733402, 51.412338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618340, 44.837883, 51.758148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631024, -0.598053, 0.494106,
		0.646092, -0.757698, -0.091971,
		0.429387, 0.261203, 0.864523,
		33.747154, 44.916245, 52.017506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556122, 44.163589, 51.764977>,  <33.446587, 44.733402, 51.412338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556122, 44.163589, 51.764977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601318, 44.413620, 52.073914>,  <33.628437, 44.563637, 52.259277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601318, 44.413620, 52.073914>,  <33.556122, 44.163589, 51.764977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601318, 44.413620, 52.073914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492394, -0.639932, 0.589945,
		0.863007, -0.446957, 0.235475,
		0.112993, 0.625073, 0.772345,
		33.635216, 44.601143, 52.305618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814575, 43.744473, 52.287876>,  <33.556122, 44.163589, 51.764977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814575, 43.744473, 52.287876> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624840, 44.049843, 52.463226>,  <33.510998, 44.233067, 52.568436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624840, 44.049843, 52.463226>,  <33.814575, 43.744473, 52.287876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624840, 44.049843, 52.463226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547565, -0.645775, 0.532116,
		0.689327, 0.012364, 0.724345,
		-0.474343, 0.763428, 0.438380,
		33.482536, 44.278870, 52.594742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.665802, 43.604591, 52.992546>,  <33.814575, 43.744473, 52.287876>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.665802, 43.604591, 52.992546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407280, 43.898438, 52.909966>,  <33.252167, 44.074745, 52.860416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407280, 43.898438, 52.909966>,  <33.665802, 43.604591, 52.992546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407280, 43.898438, 52.909966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714191, -0.487056, 0.502701,
		0.268739, 0.472345, 0.839446,
		-0.646305, 0.734620, -0.206453,
		33.213387, 44.118824, 52.848030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489536, 43.760094, 53.656071>,  <33.665802, 43.604591, 52.992546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489536, 43.760094, 53.656071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204639, 43.919937, 53.425236>,  <33.033703, 44.015842, 53.286736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204639, 43.919937, 53.425236>,  <33.489536, 43.760094, 53.656071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204639, 43.919937, 53.425236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685799, -0.571419, 0.450733,
		-0.149643, 0.716795, 0.681037,
		-0.712241, 0.399606, -0.577086,
		32.990967, 44.039818, 53.252110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986794, 44.024715, 54.165745>,  <33.489536, 43.760094, 53.656071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986794, 44.024715, 54.165745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782944, 43.957001, 53.828312>,  <32.660633, 43.916370, 53.625854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782944, 43.957001, 53.828312>,  <32.986794, 44.024715, 54.165745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782944, 43.957001, 53.828312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676496, -0.526978, 0.514439,
		-0.531635, 0.832848, 0.154041,
		-0.509626, -0.169285, -0.843578,
		32.630054, 43.906216, 53.575237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315067, 44.225288, 54.292038>,  <32.986794, 44.024715, 54.165745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315067, 44.225288, 54.292038> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307831, 43.955261, 53.997025>,  <32.303490, 43.793243, 53.820019>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307831, 43.955261, 53.997025>,  <32.315067, 44.225288, 54.292038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307831, 43.955261, 53.997025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670065, -0.539304, 0.510063,
		-0.742082, 0.503419, -0.442586,
		-0.018087, -0.675070, -0.737532,
		32.302406, 43.752739, 53.775764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.850723, 37.268497, 48.761356> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737198, 37.543053, 49.029182>,  <33.669083, 37.707787, 49.189877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.737198, 37.543053, 49.029182>,  <33.850723, 37.268497, 48.761356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.737198, 37.543053, 49.029182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339904, 0.724954, -0.599089,
		-0.896613, 0.057558, -0.439059,
		-0.283815, 0.686389, 0.669567,
		33.652054, 37.748970, 49.230053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378963, 37.727451, 48.417660>,  <33.850723, 37.268497, 48.761356>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378963, 37.727451, 48.417660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.501480, 37.922043, 48.744957>,  <33.574989, 38.038799, 48.941334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.501480, 37.922043, 48.744957>,  <33.378963, 37.727451, 48.417660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501480, 37.922043, 48.744957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378686, 0.726349, -0.573597,
		-0.873375, 0.485544, 0.038247,
		0.306288, 0.486482, 0.818244,
		33.593365, 38.067989, 48.990429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135376, 38.467506, 48.374405>,  <33.378963, 37.727451, 48.417660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135376, 38.467506, 48.374405> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456261, 38.441521, 48.611801>,  <33.648792, 38.425930, 48.754238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.456261, 38.441521, 48.611801>,  <33.135376, 38.467506, 48.374405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456261, 38.441521, 48.611801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481819, 0.657467, -0.579299,
		-0.352564, 0.750677, 0.558733,
		0.802215, -0.064968, 0.593489,
		33.696926, 38.422031, 48.789848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330482, 39.165581, 48.320480>,  <33.135376, 38.467506, 48.374405>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330482, 39.165581, 48.320480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640324, 38.966660, 48.476776>,  <33.826229, 38.847305, 48.570553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.640324, 38.966660, 48.476776>,  <33.330482, 39.165581, 48.320480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640324, 38.966660, 48.476776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620223, 0.476453, -0.623150,
		0.123728, 0.725039, 0.677503,
		0.774606, -0.497304, 0.390735,
		33.872707, 38.817467, 48.593998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788643, 39.590076, 48.391254>,  <33.330482, 39.165581, 48.320480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788643, 39.590076, 48.391254> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016037, 39.261154, 48.401352>,  <34.152473, 39.063801, 48.407410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.016037, 39.261154, 48.401352>,  <33.788643, 39.590076, 48.391254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016037, 39.261154, 48.401352> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695546, 0.464007, -0.548556,
		0.439367, 0.329405, 0.835733,
		0.568483, -0.822308, 0.025247,
		34.186581, 39.014462, 48.408924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398510, 39.756229, 48.741085>,  <33.788643, 39.590076, 48.391254>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398510, 39.756229, 48.741085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.476143, 39.438034, 48.511463>,  <34.522724, 39.247116, 48.373692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.476143, 39.438034, 48.511463>,  <34.398510, 39.756229, 48.741085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.476143, 39.438034, 48.511463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662851, 0.537724, -0.521039,
		0.723160, -0.279385, 0.631651,
		0.194083, -0.795485, -0.574052,
		34.534367, 39.199390, 48.339249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158344, 39.816509, 48.652908>,  <34.398510, 39.756229, 48.741085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158344, 39.816509, 48.652908> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.034504, 39.571388, 48.362083>,  <34.960201, 39.424316, 48.187588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.034504, 39.571388, 48.362083>,  <35.158344, 39.816509, 48.652908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034504, 39.571388, 48.362083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675958, 0.395928, -0.621548,
		0.668752, -0.683893, 0.291652,
		-0.309599, -0.612806, -0.727060,
		34.941624, 39.387547, 48.143967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768280, 39.545959, 48.455643>,  <35.158344, 39.816509, 48.652908>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768280, 39.545959, 48.455643> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500702, 39.506058, 48.161007>,  <35.340157, 39.482117, 47.984226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.500702, 39.506058, 48.161007>,  <35.768280, 39.545959, 48.455643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500702, 39.506058, 48.161007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647214, 0.409172, -0.643189,
		0.365554, -0.906988, -0.209149,
		-0.668943, -0.099756, -0.736590,
		35.300018, 39.476131, 47.940029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135971, 39.293007, 47.966408>,  <35.768280, 39.545959, 48.455643>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135971, 39.293007, 47.966408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826443, 39.483521, 47.799385>,  <35.640724, 39.597828, 47.699173>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.826443, 39.483521, 47.799385>,  <36.135971, 39.293007, 47.966408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826443, 39.483521, 47.799385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633175, 0.599354, -0.489760,
		0.016997, -0.643372, -0.765365,
		-0.773822, 0.476285, -0.417554,
		35.594296, 39.626408, 47.674118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301937, 39.280598, 47.213970>,  <36.135971, 39.293007, 47.966408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301937, 39.280598, 47.213970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020592, 39.564903, 47.209953>,  <35.851784, 39.735485, 47.207542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.020592, 39.564903, 47.209953>,  <36.301937, 39.280598, 47.213970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020592, 39.564903, 47.209953> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566777, 0.552232, -0.611395,
		-0.429009, -0.435725, -0.791262,
		-0.703360, 0.710763, -0.010046,
		35.809586, 39.778133, 47.206940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991329, 39.487915, 46.573196>,  <36.301937, 39.280598, 47.213970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991329, 39.487915, 46.573196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.913258, 39.812065, 46.794170>,  <35.866413, 40.006557, 46.926754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.913258, 39.812065, 46.794170>,  <35.991329, 39.487915, 46.573196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913258, 39.812065, 46.794170> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499496, 0.566884, -0.655092,
		-0.844043, 0.148080, -0.515427,
		-0.195181, 0.810379, 0.552440,
		35.854702, 40.055180, 46.959904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733902, 40.058445, 46.084927>,  <35.991329, 39.487915, 46.573196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733902, 40.058445, 46.084927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.871826, 40.242310, 46.412296>,  <35.954582, 40.352631, 46.608719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.871826, 40.242310, 46.412296>,  <35.733902, 40.058445, 46.084927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871826, 40.242310, 46.412296> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415356, 0.707172, -0.572177,
		-0.841775, 0.537229, 0.052916,
		0.344811, 0.459665, 0.818421,
		35.975269, 40.380211, 46.657822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642254, 40.709599, 45.949112>,  <35.733902, 40.058445, 46.084927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642254, 40.709599, 45.949112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.893925, 40.757675, 46.256279>,  <36.044926, 40.786522, 46.440578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.893925, 40.757675, 46.256279>,  <35.642254, 40.709599, 45.949112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893925, 40.757675, 46.256279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524267, 0.663766, -0.533440,
		-0.573829, 0.738220, 0.354614,
		0.629177, 0.120191, 0.767913,
		36.082680, 40.793732, 46.486652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687187, 41.466194, 46.046406>,  <35.642254, 40.709599, 45.949112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687187, 41.466194, 46.046406> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005463, 41.288513, 46.211113>,  <36.196430, 41.181904, 46.309937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.005463, 41.288513, 46.211113>,  <35.687187, 41.466194, 46.046406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005463, 41.288513, 46.211113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600591, 0.666729, -0.441320,
		-0.078505, 0.598462, 0.797296,
		0.795693, -0.444203, 0.411772,
		36.244171, 41.155251, 46.334644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338081, 41.908005, 46.543221>,  <35.687187, 41.466194, 46.046406>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338081, 41.908005, 46.543221> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.192978, 42.280159, 46.564362>,  <35.105915, 42.503452, 46.577045>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.192978, 42.280159, 46.564362>,  <35.338081, 41.908005, 46.543221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192978, 42.280159, 46.564362> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848233, -0.353151, 0.394696,
		0.385882, 0.098351, 0.917291,
		-0.362761, 0.930382, 0.052850,
		35.084148, 42.559273, 46.580215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171520, 41.973656, 47.270454>,  <35.338081, 41.908005, 46.543221>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171520, 41.973656, 47.270454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.953625, 42.241249, 47.068180>,  <34.822887, 42.401806, 46.946815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.953625, 42.241249, 47.068180>,  <35.171520, 41.973656, 47.270454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953625, 42.241249, 47.068180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810836, -0.266283, 0.521190,
		0.214014, 0.693938, 0.687494,
		-0.544741, 0.668986, -0.505682,
		34.790203, 42.441944, 46.916477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840298, 42.315487, 47.801910>,  <35.171520, 41.973656, 47.270454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840298, 42.315487, 47.801910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.612549, 42.367599, 47.477234>,  <34.475899, 42.398869, 47.282429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.612549, 42.367599, 47.477234>,  <34.840298, 42.315487, 47.801910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612549, 42.367599, 47.477234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802903, -0.300153, 0.515029,
		-0.176530, 0.944952, 0.275506,
		-0.569371, 0.130286, -0.811691,
		34.441738, 42.406685, 47.233727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402287, 42.788654, 47.904083>,  <34.840298, 42.315487, 47.801910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402287, 42.788654, 47.904083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238052, 42.579811, 47.605064>,  <34.139511, 42.454506, 47.425655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.238052, 42.579811, 47.605064>,  <34.402287, 42.788654, 47.904083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.238052, 42.579811, 47.605064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791986, -0.202070, 0.576129,
		-0.451857, 0.828597, -0.330534,
		-0.410588, -0.522107, -0.747544,
		34.114876, 42.423180, 47.380802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620663, 42.888638, 47.989288>,  <34.402287, 42.788654, 47.904083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620663, 42.888638, 47.989288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666260, 42.551506, 47.778900>,  <33.693619, 42.349228, 47.652668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.666260, 42.551506, 47.778900>,  <33.620663, 42.888638, 47.989288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.666260, 42.551506, 47.778900> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748156, -0.421163, 0.512723,
		-0.653657, 0.335062, -0.678576,
		0.113997, -0.842825, -0.525975,
		33.700459, 42.298660, 47.621109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954781, 42.619251, 47.862514>,  <33.620663, 42.888638, 47.989288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954781, 42.619251, 47.862514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.186806, 42.301682, 47.789631>,  <33.326023, 42.111137, 47.745899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.186806, 42.301682, 47.789631>,  <32.954781, 42.619251, 47.862514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186806, 42.301682, 47.789631> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611627, -0.572249, 0.546300,
		-0.537993, -0.205446, -0.817530,
		0.580066, -0.793929, -0.182209,
		33.360825, 42.063503, 47.734970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442139, 42.085918, 47.655037>,  <32.954781, 42.619251, 47.862514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442139, 42.085918, 47.655037> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.785835, 41.892296, 47.721241>,  <32.992054, 41.776123, 47.760963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.785835, 41.892296, 47.721241>,  <32.442139, 42.085918, 47.655037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785835, 41.892296, 47.721241> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497011, -0.713260, 0.494207,
		-0.121169, -0.506905, -0.853443,
		0.859243, -0.484053, 0.165512,
		33.043610, 41.747078, 47.770893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332726, 41.415077, 47.502285>,  <32.442139, 42.085918, 47.655037>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332726, 41.415077, 47.502285> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.650242, 41.403801, 47.745300>,  <32.840752, 41.397038, 47.891109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.650242, 41.403801, 47.745300>,  <32.332726, 41.415077, 47.502285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650242, 41.403801, 47.745300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515876, -0.560287, 0.648036,
		0.322129, -0.827819, -0.459291,
		0.793791, -0.028186, 0.607536,
		32.888378, 41.395344, 47.927563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411430, 40.716518, 47.644863>,  <32.332726, 41.415077, 47.502285>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411430, 40.716518, 47.644863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601799, 40.916100, 47.934563>,  <32.716022, 41.035851, 48.108383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601799, 40.916100, 47.934563>,  <32.411430, 40.716518, 47.644863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601799, 40.916100, 47.934563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398213, -0.611991, 0.683296,
		0.784170, -0.613603, -0.092570,
		0.475925, 0.498958, 0.724249,
		32.744576, 41.065788, 48.151836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662277, 40.201782, 48.150967>,  <32.411430, 40.716518, 47.644863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662277, 40.201782, 48.150967> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.631058, 40.556427, 48.333321>,  <32.612328, 40.769215, 48.442734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.631058, 40.556427, 48.333321>,  <32.662277, 40.201782, 48.150967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.631058, 40.556427, 48.333321> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558507, -0.417675, 0.716671,
		0.825819, -0.198682, 0.527776,
		-0.078049, 0.886608, 0.455889,
		32.607643, 40.822411, 48.470089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902031, 40.033806, 48.879192>,  <32.662277, 40.201782, 48.150967>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902031, 40.033806, 48.879192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.700012, 40.378502, 48.898491>,  <32.578800, 40.585320, 48.910072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.700012, 40.378502, 48.898491>,  <32.902031, 40.033806, 48.879192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700012, 40.378502, 48.898491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535628, -0.356773, 0.765386,
		0.676779, 0.360712, 0.641760,
		-0.505047, 0.861742, 0.048249,
		32.548500, 40.637024, 48.912964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998386, 40.158371, 49.601269>,  <32.902031, 40.033806, 48.879192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998386, 40.158371, 49.601269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.686356, 40.349564, 49.439770>,  <32.499138, 40.464279, 49.342869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.686356, 40.349564, 49.439770>,  <32.998386, 40.158371, 49.601269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686356, 40.349564, 49.439770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554359, -0.228787, 0.800214,
		0.290113, 0.848052, 0.443443,
		-0.780077, 0.477980, -0.403751,
		32.452332, 40.492958, 49.318645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741821, 40.715183, 50.029186>,  <32.998386, 40.158371, 49.601269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741821, 40.715183, 50.029186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.417206, 40.636009, 49.809288>,  <32.222435, 40.588505, 49.677349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.417206, 40.636009, 49.809288>,  <32.741821, 40.715183, 50.029186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417206, 40.636009, 49.809288> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522009, -0.177098, 0.834352,
		-0.262507, 0.964084, 0.040399,
		-0.811540, -0.197934, -0.549750,
		32.173744, 40.576630, 49.644363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179058, 41.131649, 50.386772>,  <32.741821, 40.715183, 50.029186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179058, 41.131649, 50.386772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009392, 40.850655, 50.158176>,  <31.907591, 40.682056, 50.021019>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.009392, 40.850655, 50.158176>,  <32.179058, 41.131649, 50.386772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009392, 40.850655, 50.158176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485041, -0.356678, 0.798446,
		-0.764733, 0.615869, -0.189443,
		-0.424168, -0.702486, -0.571485,
		31.882141, 40.639908, 49.986732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850929, 41.736675, 50.511425>,  <32.179058, 41.131649, 50.386772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850929, 41.736675, 50.511425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.684721, 42.011787, 50.749516>,  <31.584995, 42.176857, 50.892372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.684721, 42.011787, 50.749516>,  <31.850929, 41.736675, 50.511425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684721, 42.011787, 50.749516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500960, 0.719249, -0.481373,
		-0.759198, 0.098166, -0.643414,
		-0.415520, 0.687782, 0.595230,
		31.560064, 42.218121, 50.928085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.486795, 42.219925, 50.056690>,  <31.850929, 41.736675, 50.511425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.486795, 42.219925, 50.056690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.558199, 42.410851, 50.400852>,  <31.601042, 42.525406, 50.607349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.558199, 42.410851, 50.400852>,  <31.486795, 42.219925, 50.056690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.558199, 42.410851, 50.400852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443616, 0.741491, -0.503384,
		-0.878260, 0.471549, -0.079383,
		0.178508, 0.477317, 0.860409,
		31.611752, 42.554047, 50.658974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.448996, 42.906776, 49.875824>,  <31.486795, 42.219925, 50.056690>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.448996, 42.906776, 49.875824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.661421, 42.911766, 50.214718>,  <31.788876, 42.914761, 50.418056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.661421, 42.911766, 50.214718>,  <31.448996, 42.906776, 49.875824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661421, 42.911766, 50.214718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510270, 0.793545, -0.331529,
		-0.676457, 0.608384, 0.415059,
		0.531065, 0.012473, 0.847239,
		31.820740, 42.915508, 50.468891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418190, 43.581860, 50.087933>,  <31.448996, 42.906776, 49.875824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418190, 43.581860, 50.087933> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.727661, 43.407814, 50.272148>,  <31.913343, 43.303387, 50.382679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.727661, 43.407814, 50.272148>,  <31.418190, 43.581860, 50.087933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727661, 43.407814, 50.272148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557238, 0.813221, -0.167800,
		-0.301508, 0.386453, 0.871635,
		0.773679, -0.435115, 0.460539,
		31.959764, 43.277279, 50.410309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596203, 44.102512, 50.532696>,  <31.418190, 43.581860, 50.087933>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596203, 44.102512, 50.532696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.905390, 43.855499, 50.474487>,  <32.090900, 43.707291, 50.439560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.905390, 43.855499, 50.474487>,  <31.596203, 44.102512, 50.532696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.905390, 43.855499, 50.474487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586826, 0.783073, -0.205989,
		0.241159, 0.073826, 0.967673,
		0.772966, -0.617532, -0.145523,
		32.137280, 43.670238, 50.430832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109985, 44.460701, 50.827255>,  <31.596203, 44.102512, 50.532696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109985, 44.460701, 50.827255> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.279037, 44.201874, 50.573425>,  <32.380470, 44.046577, 50.421127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.279037, 44.201874, 50.573425>,  <32.109985, 44.460701, 50.827255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279037, 44.201874, 50.573425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538340, 0.742510, -0.398582,
		0.729090, -0.173165, 0.662150,
		0.422632, -0.647064, -0.634579,
		32.405827, 44.007755, 50.383053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.744503, 44.606892, 50.878315>,  <32.109985, 44.460701, 50.827255>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.744503, 44.606892, 50.878315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714737, 44.410263, 50.531254>,  <32.696877, 44.292286, 50.323017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.714737, 44.410263, 50.531254>,  <32.744503, 44.606892, 50.878315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714737, 44.410263, 50.531254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562146, 0.697972, -0.443650,
		0.823683, -0.520764, 0.224391,
		-0.074418, -0.491568, -0.867654,
		32.692413, 44.262794, 50.270958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373444, 44.780037, 50.600288>,  <32.744503, 44.606892, 50.878315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373444, 44.780037, 50.600288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.148346, 44.637253, 50.302055>,  <33.013287, 44.551582, 50.123116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.148346, 44.637253, 50.302055>,  <33.373444, 44.780037, 50.600288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148346, 44.637253, 50.302055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367099, 0.700217, -0.612319,
		0.740646, -0.618282, -0.263003,
		-0.562745, -0.356963, -0.745584,
		32.979523, 44.530163, 50.078381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847248, 44.329956, 50.172325>,  <33.373444, 44.780037, 50.600288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847248, 44.329956, 50.172325> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543221, 44.446709, 49.940083>,  <33.360806, 44.516762, 49.800735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.543221, 44.446709, 49.940083>,  <33.847248, 44.329956, 50.172325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543221, 44.446709, 49.940083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609701, 0.629456, -0.481716,
		0.224861, -0.720132, -0.656390,
		-0.760068, 0.291882, -0.580605,
		33.315201, 44.534275, 49.765900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202969, 44.351128, 49.499432>,  <33.847248, 44.329956, 50.172325>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202969, 44.351128, 49.499432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861027, 44.558479, 49.490406>,  <33.655861, 44.682892, 49.484989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.861027, 44.558479, 49.490406>,  <34.202969, 44.351128, 49.499432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861027, 44.558479, 49.490406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367714, 0.574550, -0.731217,
		-0.366085, -0.633380, -0.681771,
		-0.854850, 0.518384, -0.022568,
		33.604572, 44.713993, 49.483635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929844, 44.321606, 48.813358>,  <34.202969, 44.351128, 49.499432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929844, 44.321606, 48.813358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.791885, 44.657661, 48.980797>,  <33.709110, 44.859295, 49.081261>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.791885, 44.657661, 48.980797>,  <33.929844, 44.321606, 48.813358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.791885, 44.657661, 48.980797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570797, 0.541747, -0.617010,
		-0.745144, 0.026131, -0.666391,
		-0.344893, 0.840135, 0.418595,
		33.688419, 44.909702, 49.106377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749664, 44.668621, 48.270996>,  <33.929844, 44.321606, 48.813358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749664, 44.668621, 48.270996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.736649, 44.937798, 48.566589>,  <33.728840, 45.099304, 48.743946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.736649, 44.937798, 48.566589>,  <33.749664, 44.668621, 48.270996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736649, 44.937798, 48.566589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419813, 0.680189, -0.600916,
		-0.907027, 0.290678, -0.304644,
		-0.032543, 0.672941, 0.738980,
		33.726887, 45.139679, 48.788284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497799, 45.368221, 48.047626>,  <33.749664, 44.668621, 48.270996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497799, 45.368221, 48.047626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.744011, 45.424896, 48.357735>,  <33.891739, 45.458900, 48.543800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.744011, 45.424896, 48.357735>,  <33.497799, 45.368221, 48.047626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.744011, 45.424896, 48.357735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513934, 0.673615, -0.531145,
		-0.597491, 0.725375, 0.341813,
		0.615529, 0.141685, 0.775273,
		33.928669, 45.467403, 48.590317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595085, 46.011227, 47.928730>,  <33.497799, 45.368221, 48.047626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595085, 46.011227, 47.928730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.883419, 45.890877, 48.178490>,  <34.056419, 45.818668, 48.328346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.883419, 45.890877, 48.178490>,  <33.595085, 46.011227, 47.928730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883419, 45.890877, 48.178490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656675, 0.584698, -0.476346,
		-0.221765, 0.753394, 0.619046,
		0.720831, -0.300875, 0.624401,
		34.099667, 45.800613, 48.365810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.462215, 44.041576, 54.097836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714655, 43.762047, 53.963158>,  <31.866119, 43.594330, 53.882351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.714655, 43.762047, 53.963158>,  <31.462215, 44.041576, 54.097836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714655, 43.762047, 53.963158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584444, -0.713764, 0.385961,
		-0.510039, -0.046799, -0.858877,
		0.631099, -0.698821, -0.336696,
		31.903984, 43.552399, 53.862148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001894, 43.593380, 53.719398>,  <31.462215, 44.041576, 54.097836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001894, 43.593380, 53.719398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.345364, 43.407997, 53.806927>,  <31.551445, 43.296768, 53.859444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.345364, 43.407997, 53.806927>,  <31.001894, 43.593380, 53.719398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345364, 43.407997, 53.806927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511700, -0.799363, 0.314930,
		0.028961, -0.382393, -0.923546,
		0.858676, -0.463458, 0.218821,
		31.602966, 43.268959, 53.872574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.801805, 42.945225, 53.604889>,  <31.001894, 43.593380, 53.719398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.801805, 42.945225, 53.604889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.131351, 42.883316, 53.822987>,  <31.329079, 42.846172, 53.953846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.131351, 42.883316, 53.822987>,  <30.801805, 42.945225, 53.604889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131351, 42.883316, 53.822987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427873, -0.800738, 0.419218,
		0.371715, -0.578675, -0.725922,
		0.823864, -0.154773, 0.545246,
		31.378511, 42.836884, 53.986561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821964, 42.223850, 53.702728>,  <30.801805, 42.945225, 53.604889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821964, 42.223850, 53.702728> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.076347, 42.370712, 53.974243>,  <31.228977, 42.458828, 54.137154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.076347, 42.370712, 53.974243>,  <30.821964, 42.223850, 53.702728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.076347, 42.370712, 53.974243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343352, -0.653108, 0.674951,
		0.691133, -0.662305, -0.289287,
		0.635960, 0.367154, 0.678788,
		31.267136, 42.480858, 54.177879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085840, 41.655342, 54.042923>,  <30.821964, 42.223850, 53.702728>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085840, 41.655342, 54.042923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144154, 41.953339, 54.303303>,  <31.179142, 42.132137, 54.459530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.144154, 41.953339, 54.303303>,  <31.085840, 41.655342, 54.042923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.144154, 41.953339, 54.303303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410023, -0.553306, 0.725075,
		0.900349, -0.372607, 0.224802,
		0.145784, 0.744994, 0.650946,
		31.187889, 42.176838, 54.498589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392975, 41.332775, 54.557537>,  <31.085840, 41.655342, 54.042923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392975, 41.332775, 54.557537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.232130, 41.674568, 54.689091>,  <31.135622, 41.879642, 54.768024>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.232130, 41.674568, 54.689091>,  <31.392975, 41.332775, 54.557537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232130, 41.674568, 54.689091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546330, -0.512179, 0.662719,
		0.734729, 0.086808, 0.672783,
		-0.402114, 0.854481, 0.328887,
		31.111496, 41.930912, 54.787758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339136, 41.333698, 55.404724>,  <31.392975, 41.332775, 54.557537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339136, 41.333698, 55.404724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.081888, 41.608360, 55.269135>,  <30.927540, 41.773155, 55.187778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.081888, 41.608360, 55.269135>,  <31.339136, 41.333698, 55.404724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081888, 41.608360, 55.269135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684581, -0.317180, 0.656312,
		0.343142, 0.654144, 0.674054,
		-0.643119, 0.686653, -0.338977,
		30.888952, 41.814358, 55.167442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004999, 41.508224, 55.993122>,  <31.339136, 41.333698, 55.404724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004999, 41.508224, 55.993122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776497, 41.630241, 55.688328>,  <30.639395, 41.703449, 55.505451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.776497, 41.630241, 55.688328>,  <31.004999, 41.508224, 55.993122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776497, 41.630241, 55.688328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816690, -0.118775, 0.564721,
		0.081757, 0.944904, 0.316973,
		-0.571255, 0.305039, -0.761983,
		30.605120, 41.721752, 55.459732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.443972, 41.847637, 56.367893>,  <31.004999, 41.508224, 55.993122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.443972, 41.847637, 56.367893> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.276937, 41.815742, 56.005840>,  <30.176718, 41.796604, 55.788609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.276937, 41.815742, 56.005840>,  <30.443972, 41.847637, 56.367893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276937, 41.815742, 56.005840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.880468, -0.210607, 0.424760,
		-0.224497, 0.974313, 0.017738,
		-0.417585, -0.079739, -0.905132,
		30.151663, 41.791821, 55.734299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763306, 42.151463, 56.341702>,  <30.443972, 41.847637, 56.367893>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763306, 42.151463, 56.341702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.736149, 41.919014, 56.017311>,  <29.719854, 41.779545, 55.822678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.736149, 41.919014, 56.017311>,  <29.763306, 42.151463, 56.341702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.736149, 41.919014, 56.017311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886909, -0.337122, 0.315818,
		-0.456927, 0.740708, -0.492514,
		-0.067892, -0.581121, -0.810981,
		29.715782, 41.744678, 55.774017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000885, 42.047081, 56.148216>,  <29.763306, 42.151463, 56.341702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000885, 42.047081, 56.148216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.171160, 41.723114, 55.986805>,  <29.273325, 41.528736, 55.889957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.171160, 41.723114, 55.986805>,  <29.000885, 42.047081, 56.148216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.171160, 41.723114, 55.986805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746973, -0.566220, 0.348463,
		-0.510707, 0.153084, -0.846016,
		0.425687, -0.809914, -0.403523,
		29.298866, 41.480141, 55.865749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482027, 41.735859, 55.737225>,  <29.000885, 42.047081, 56.148216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482027, 41.735859, 55.737225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.746761, 41.458359, 55.850845>,  <28.905602, 41.291859, 55.919018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.746761, 41.458359, 55.850845>,  <28.482027, 41.735859, 55.737225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.746761, 41.458359, 55.850845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746097, -0.572727, 0.339592,
		-0.072907, -0.436685, -0.896655,
		0.661833, -0.693751, 0.284053,
		28.945311, 41.250233, 55.936062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285704, 41.183826, 55.404221>,  <28.482027, 41.735859, 55.737225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285704, 41.183826, 55.404221> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.469067, 41.097153, 55.748989>,  <28.579084, 41.045151, 55.955849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.469067, 41.097153, 55.748989>,  <28.285704, 41.183826, 55.404221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469067, 41.097153, 55.748989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759820, -0.598625, 0.253617,
		0.461014, -0.771167, -0.439054,
		0.458409, -0.216681, 0.861923,
		28.606590, 41.032150, 56.007565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895245, 40.582794, 55.586735>,  <28.285704, 41.183826, 55.404221>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.895245, 40.582794, 55.586735> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.125072, 40.574661, 55.914017>,  <28.262968, 40.569782, 56.110386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.125072, 40.574661, 55.914017>,  <27.895245, 40.582794, 55.586735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125072, 40.574661, 55.914017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489397, -0.809820, 0.323546,
		0.656020, -0.586326, -0.475246,
		0.574568, -0.020331, 0.818204,
		28.297443, 40.568562, 56.159477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240208, 39.987812, 55.085148>,  <27.895245, 40.582794, 55.586735>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240208, 39.987812, 55.085148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.109150, 39.831413, 54.741108>,  <28.030516, 39.737576, 54.534683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.109150, 39.831413, 54.741108>,  <28.240208, 39.987812, 55.085148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109150, 39.831413, 54.741108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624164, 0.593836, -0.507719,
		0.709274, -0.703194, 0.049478,
		-0.327643, -0.390995, -0.860101,
		28.010857, 39.714115, 54.483078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.844130, 39.811375, 54.678993>,  <28.240208, 39.987812, 55.085148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.844130, 39.811375, 54.678993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.545235, 39.813011, 54.413174>,  <28.365898, 39.813992, 54.253681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.545235, 39.813011, 54.413174>,  <28.844130, 39.811375, 54.678993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545235, 39.813011, 54.413174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562565, 0.536231, -0.629267,
		0.353776, -0.844061, -0.402993,
		-0.747237, 0.004090, -0.664545,
		28.321064, 39.814240, 54.213810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167938, 39.752708, 54.001823>,  <28.844130, 39.811375, 54.678993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167938, 39.752708, 54.001823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.809906, 39.863289, 53.861877>,  <28.595087, 39.929638, 53.777908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.809906, 39.863289, 53.861877>,  <29.167938, 39.752708, 54.001823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809906, 39.863289, 53.861877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445899, 0.551842, -0.704730,
		-0.001753, -0.786795, -0.617212,
		-0.895081, 0.276450, -0.349863,
		28.541382, 39.946224, 53.756920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.120869, 39.497005, 53.319275>,  <29.167938, 39.752708, 54.001823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.120869, 39.497005, 53.319275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.871021, 39.801743, 53.387913>,  <28.721113, 39.984585, 53.429096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.871021, 39.801743, 53.387913>,  <29.120869, 39.497005, 53.319275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871021, 39.801743, 53.387913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391930, 0.495872, -0.774920,
		-0.675459, -0.416775, -0.608320,
		-0.624616, 0.761846, 0.171595,
		28.683636, 40.030296, 53.439392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772442, 39.541016, 52.701736>,  <29.120869, 39.497005, 53.319275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772442, 39.541016, 52.701736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.735292, 39.891663, 52.890594>,  <28.713003, 40.102051, 53.003910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.735292, 39.891663, 52.890594>,  <28.772442, 39.541016, 52.701736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.735292, 39.891663, 52.890594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465668, 0.457377, -0.757601,
		-0.880072, 0.149499, -0.450691,
		-0.092875, 0.876616, 0.472142,
		28.707430, 40.154648, 53.032238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.842045, 39.972534, 52.135075>,  <28.772442, 39.541016, 52.701736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.842045, 39.972534, 52.135075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.893398, 40.230263, 52.436634>,  <28.924210, 40.384899, 52.617569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.893398, 40.230263, 52.436634>,  <28.842045, 39.972534, 52.135075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893398, 40.230263, 52.436634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508112, 0.610100, -0.607948,
		-0.851669, 0.461116, -0.249062,
		0.128381, 0.644322, 0.753902,
		28.931913, 40.423561, 52.662804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684315, 40.722588, 51.887012>,  <28.842045, 39.972534, 52.135075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684315, 40.722588, 51.887012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.917309, 40.787254, 52.205654>,  <29.057106, 40.826054, 52.396839>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.917309, 40.787254, 52.205654>,  <28.684315, 40.722588, 51.887012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917309, 40.787254, 52.205654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647195, 0.500684, -0.574852,
		-0.491782, 0.850399, 0.187009,
		0.582486, 0.161671, 0.796601,
		29.092054, 40.835754, 52.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.773539, 41.461014, 51.991524>,  <28.684315, 40.722588, 51.887012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.773539, 41.461014, 51.991524> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.082298, 41.290077, 52.179802>,  <29.267553, 41.187515, 52.292767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.082298, 41.290077, 52.179802>,  <28.773539, 41.461014, 51.991524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082298, 41.290077, 52.179802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635591, 0.502346, -0.586236,
		0.014075, 0.751681, 0.659376,
		0.771897, -0.427345, 0.470692,
		29.313868, 41.161873, 52.321011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333773, 42.014828, 52.155273>,  <28.773539, 41.461014, 51.991524>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333773, 42.014828, 52.155273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.549536, 41.679863, 52.190559>,  <29.678993, 41.478886, 52.211731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.549536, 41.679863, 52.190559>,  <29.333773, 42.014828, 52.155273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.549536, 41.679863, 52.190559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816517, 0.494575, -0.297818,
		0.205767, 0.232675, 0.950538,
		0.539407, -0.837411, 0.088215,
		29.711357, 41.428638, 52.217026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.912008, 42.098587, 52.623108>,  <29.333773, 42.014828, 52.155273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.912008, 42.098587, 52.623108> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016447, 41.779518, 52.405655>,  <30.079111, 41.588078, 52.275181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.016447, 41.779518, 52.405655>,  <29.912008, 42.098587, 52.623108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.016447, 41.779518, 52.405655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837582, 0.467172, -0.283208,
		0.479880, -0.381394, 0.790097,
		0.261097, -0.797677, -0.543636,
		30.094776, 41.540215, 52.242565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682487, 42.076290, 52.686806>,  <29.912008, 42.098587, 52.623108>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682487, 42.076290, 52.686806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599014, 41.835648, 52.378384>,  <30.548931, 41.691261, 52.193329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.599014, 41.835648, 52.378384>,  <30.682487, 42.076290, 52.686806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599014, 41.835648, 52.378384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847479, 0.282238, -0.449579,
		0.488089, -0.747271, 0.450948,
		-0.208683, -0.601604, -0.771054,
		30.536409, 41.655167, 52.147068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.298775, 41.775925, 52.543987>,  <30.682487, 42.076290, 52.686806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.298775, 41.775925, 52.543987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078533, 41.761620, 52.210388>,  <30.946388, 41.753036, 52.010227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.078533, 41.761620, 52.210388>,  <31.298775, 41.775925, 52.543987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.078533, 41.761620, 52.210388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756520, 0.400946, -0.516643,
		0.352867, -0.915403, -0.193706,
		-0.550602, -0.035764, -0.834001,
		30.913353, 41.750889, 51.960186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799786, 41.572556, 51.943466>,  <31.298775, 41.775925, 52.543987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799786, 41.572556, 51.943466> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.486088, 41.727287, 51.749428>,  <31.297869, 41.820126, 51.633003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.486088, 41.727287, 51.749428>,  <31.799786, 41.572556, 51.943466>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486088, 41.727287, 51.749428> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613403, 0.365898, -0.699897,
		-0.093248, -0.846451, -0.524239,
		-0.784246, 0.386834, -0.485096,
		31.250814, 41.843338, 51.603901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.818428, 41.372776, 51.238571>,  <31.799786, 41.572556, 51.943466>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.818428, 41.372776, 51.238571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590942, 41.701210, 51.258110>,  <31.454451, 41.898270, 51.269833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.590942, 41.701210, 51.258110>,  <31.818428, 41.372776, 51.238571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.590942, 41.701210, 51.258110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591959, 0.449801, -0.668778,
		-0.571095, -0.351427, -0.741856,
		-0.568714, 0.821084, 0.048849,
		31.420328, 41.947536, 51.272766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508009, 40.980892, 50.677097>,  <31.818428, 41.372776, 51.238571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508009, 40.980892, 50.677097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530334, 40.667976, 50.428936>,  <31.543730, 40.480225, 50.280037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.530334, 40.667976, 50.428936>,  <31.508009, 40.980892, 50.677097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530334, 40.667976, 50.428936> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557059, -0.540069, 0.630881,
		-0.828596, 0.310391, -0.465926,
		0.055812, -0.782293, -0.620405,
		31.547079, 40.433289, 50.242813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890909, 40.652840, 50.771046>,  <31.508009, 40.980892, 50.677097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890909, 40.652840, 50.771046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.082043, 40.372749, 50.558872>,  <31.196724, 40.204697, 50.431568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.082043, 40.372749, 50.558872>,  <30.890909, 40.652840, 50.771046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082043, 40.372749, 50.558872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513752, -0.712554, 0.477835,
		-0.712554, 0.044185, -0.700224,
		-0.477835, 0.700224, 0.530434,
		31.225393, 40.162682, 50.399742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439651, 40.184769, 50.525478>,  <30.890909, 40.652840, 50.771046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439651, 40.184769, 50.525478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.772278, 39.962799, 50.534950>,  <30.971853, 39.829617, 50.540634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.772278, 39.962799, 50.534950>,  <30.439651, 40.184769, 50.525478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772278, 39.962799, 50.534950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502380, -0.733274, 0.458175,
		-0.236889, -0.392898, -0.888547,
		0.831563, -0.554924, 0.023679,
		31.021748, 39.796322, 50.542053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316792, 39.525925, 50.387325>,  <30.439651, 40.184769, 50.525478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316792, 39.525925, 50.387325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.666784, 39.445709, 50.563591>,  <30.876780, 39.397579, 50.669350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.666784, 39.445709, 50.563591>,  <30.316792, 39.525925, 50.387325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666784, 39.445709, 50.563591> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429019, -0.742975, 0.513742,
		0.224379, -0.638570, -0.736126,
		0.874984, -0.200539, 0.440667,
		30.929279, 39.385548, 50.695789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.400349, 38.845341, 50.392262>,  <30.316792, 39.525925, 50.387325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.400349, 38.845341, 50.392262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.668545, 38.946808, 50.671143>,  <30.829462, 39.007690, 50.838470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.668545, 38.946808, 50.671143>,  <30.400349, 38.845341, 50.392262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668545, 38.946808, 50.671143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351893, -0.718570, 0.599857,
		0.653156, -0.647539, -0.392529,
		0.670491, 0.253672, 0.697203,
		30.869692, 39.022911, 50.880302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646099, 38.255711, 50.624020>,  <30.400349, 38.845341, 50.392262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646099, 38.255711, 50.624020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.747318, 38.494072, 50.928879>,  <30.808050, 38.637089, 51.111794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.747318, 38.494072, 50.928879>,  <30.646099, 38.255711, 50.624020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747318, 38.494072, 50.928879> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336088, -0.684573, 0.646843,
		0.907200, -0.419829, 0.027048,
		0.253047, 0.595906, 0.762144,
		30.823233, 38.672844, 51.157520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.189451, 37.869736, 51.069672>,  <30.646099, 38.255711, 50.624020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.189451, 37.869736, 51.069672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.949612, 38.137032, 51.245827>,  <30.805708, 38.297409, 51.351521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.949612, 38.137032, 51.245827>,  <31.189451, 37.869736, 51.069672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949612, 38.137032, 51.245827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470643, -0.739492, 0.481298,
		0.647283, 0.081322, 0.757900,
		-0.599601, 0.668236, 0.440387,
		30.769732, 38.337502, 51.377941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706497, 37.473843, 51.566242>,  <31.189451, 37.869736, 51.069672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706497, 37.473843, 51.566242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989386, 37.192444, 51.594341>,  <32.159119, 37.023605, 51.611202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.989386, 37.192444, 51.594341>,  <31.706497, 37.473843, 51.566242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989386, 37.192444, 51.594341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398311, 0.314372, -0.861695,
		0.584114, 0.637389, 0.502540,
		0.707219, -0.703495, 0.070249,
		32.201550, 36.981396, 51.615417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140259, 37.734589, 51.214790>,  <31.706497, 37.473843, 51.566242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140259, 37.734589, 51.214790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.305763, 37.371933, 51.247780>,  <32.405067, 37.154339, 51.267574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.305763, 37.371933, 51.247780>,  <32.140259, 37.734589, 51.214790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305763, 37.371933, 51.247780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656226, 0.234233, -0.717289,
		0.631005, 0.350910, 0.691878,
		0.413764, -0.906641, 0.082474,
		32.429893, 37.099941, 51.272522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838993, 37.908569, 51.315563>,  <32.140259, 37.734589, 51.214790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838993, 37.908569, 51.315563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814766, 37.529999, 51.188690>,  <32.800228, 37.302856, 51.112568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.814766, 37.529999, 51.188690>,  <32.838993, 37.908569, 51.315563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814766, 37.529999, 51.188690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560226, 0.230763, -0.795547,
		0.826122, -0.225880, 0.516237,
		-0.060570, -0.946428, -0.317182,
		32.796597, 37.246071, 51.093536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541302, 37.716305, 51.203247>,  <32.838993, 37.908569, 51.315563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541302, 37.716305, 51.203247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301575, 37.486427, 50.980339>,  <33.157738, 37.348503, 50.846592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.301575, 37.486427, 50.980339>,  <33.541302, 37.716305, 51.203247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301575, 37.486427, 50.980339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488744, 0.288652, -0.823292,
		0.633995, -0.765775, 0.107883,
		-0.599315, -0.574690, -0.557271,
		33.121780, 37.314022, 50.813156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013191, 37.325336, 50.735321>,  <33.541302, 37.716305, 51.203247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013191, 37.325336, 50.735321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.661377, 37.324516, 50.544991>,  <33.450287, 37.324024, 50.430794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.661377, 37.324516, 50.544991>,  <34.013191, 37.325336, 50.735321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661377, 37.324516, 50.544991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432677, 0.412667, -0.801558,
		0.197998, -0.910879, -0.362071,
		-0.879538, -0.002048, -0.475824,
		33.397514, 37.323902, 50.402245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183720, 37.206718, 50.150368>,  <34.013191, 37.325336, 50.735321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183720, 37.206718, 50.150368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.812401, 37.338921, 50.082211>,  <33.589611, 37.418243, 50.041317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.812401, 37.338921, 50.082211>,  <34.183720, 37.206718, 50.150368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812401, 37.338921, 50.082211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280677, 0.322242, -0.904091,
		-0.243904, -0.887087, -0.391901,
		-0.928295, 0.330509, -0.170389,
		33.533913, 37.438072, 50.031094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042057, 36.938461, 49.494789>,  <34.183720, 37.206718, 50.150368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042057, 36.938461, 49.494789> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818779, 37.256981, 49.588020>,  <33.684811, 37.448093, 49.643959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.818779, 37.256981, 49.588020>,  <34.042057, 36.938461, 49.494789>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818779, 37.256981, 49.588020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301851, 0.456564, -0.836920,
		-0.772853, -0.396811, -0.495216,
		-0.558197, 0.796298, 0.233079,
		33.651321, 37.495869, 49.657944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.979801, 38.469414, 55.651123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938751, 38.860954, 55.721916>,  <30.914122, 39.095879, 55.764393>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.938751, 38.860954, 55.721916>,  <30.979801, 38.469414, 55.651123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938751, 38.860954, 55.721916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639469, 0.201209, -0.742021,
		-0.761937, 0.037029, -0.646592,
		-0.102623, 0.978848, 0.176987,
		30.907965, 39.154610, 55.775013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982065, 38.801548, 55.011223>,  <30.979801, 38.469414, 55.651123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982065, 38.801548, 55.011223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.074919, 39.089645, 55.272713>,  <31.130630, 39.262505, 55.429607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.074919, 39.089645, 55.272713>,  <30.982065, 38.801548, 55.011223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.074919, 39.089645, 55.272713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633314, 0.398192, -0.663594,
		-0.738259, 0.568060, -0.363705,
		0.232136, 0.720244, 0.653729,
		31.144560, 39.305717, 55.468830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933598, 39.385399, 54.579739>,  <30.982065, 38.801548, 55.011223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933598, 39.385399, 54.579739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140562, 39.517776, 54.895401>,  <31.264740, 39.597202, 55.084797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.140562, 39.517776, 54.895401>,  <30.933598, 39.385399, 54.579739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140562, 39.517776, 54.895401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673717, 0.411068, -0.614108,
		-0.527630, 0.849412, -0.010271,
		0.517409, 0.330942, 0.789155,
		31.295784, 39.617058, 55.132149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271973, 39.973774, 54.415264>,  <30.933598, 39.385399, 54.579739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271973, 39.973774, 54.415264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526291, 39.909019, 54.717140>,  <31.678881, 39.870167, 54.898266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.526291, 39.909019, 54.717140>,  <31.271973, 39.973774, 54.415264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526291, 39.909019, 54.717140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755985, 0.327889, -0.566548,
		-0.155737, 0.930742, 0.330855,
		0.635793, -0.161889, 0.754691,
		31.717030, 39.860455, 54.943546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748676, 40.466633, 54.403244>,  <31.271973, 39.973774, 54.415264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748676, 40.466633, 54.403244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.940893, 40.202698, 54.634308>,  <32.056225, 40.044338, 54.772945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.940893, 40.202698, 54.634308>,  <31.748676, 40.466633, 54.403244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940893, 40.202698, 54.634308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876043, 0.330879, -0.350810,
		0.040342, 0.674635, 0.737048,
		0.480542, -0.659838, 0.577661,
		32.085056, 40.004745, 54.807606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201466, 40.888306, 54.797565>,  <31.748676, 40.466633, 54.403244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201466, 40.888306, 54.797565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.371094, 40.530678, 54.855255>,  <32.472870, 40.316101, 54.889870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.371094, 40.530678, 54.855255>,  <32.201466, 40.888306, 54.797565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371094, 40.530678, 54.855255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889944, 0.381899, -0.249305,
		0.167815, 0.234079, 0.957625,
		0.424073, -0.894069, 0.144228,
		32.498314, 40.262459, 54.898525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740921, 40.997967, 55.311554>,  <32.201466, 40.888306, 54.797565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740921, 40.997967, 55.311554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.837128, 40.678116, 55.091465>,  <32.894852, 40.486206, 54.959412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.837128, 40.678116, 55.091465>,  <32.740921, 40.997967, 55.311554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837128, 40.678116, 55.091465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878361, 0.420541, -0.227216,
		0.413079, -0.428642, 0.803512,
		0.240515, -0.799632, -0.550219,
		32.909283, 40.438225, 54.926399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447914, 40.737991, 55.476345>,  <32.740921, 40.997967, 55.311554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447914, 40.737991, 55.476345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.374577, 40.605888, 55.105980>,  <33.330574, 40.526627, 54.883762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.374577, 40.605888, 55.105980>,  <33.447914, 40.737991, 55.476345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.374577, 40.605888, 55.105980> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900484, 0.321416, -0.292951,
		0.394353, -0.887481, 0.238462,
		-0.183343, -0.330257, -0.925913,
		33.319572, 40.506813, 54.828205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058746, 40.475925, 55.312080>,  <33.447914, 40.737991, 55.476345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058746, 40.475925, 55.312080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.887848, 40.548172, 54.957714>,  <33.785309, 40.591518, 54.745094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.887848, 40.548172, 54.957714>,  <34.058746, 40.475925, 55.312080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887848, 40.548172, 54.957714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897739, 0.201110, -0.391944,
		0.107374, -0.962773, -0.248070,
		-0.427242, 0.180618, -0.885913,
		33.759674, 40.602356, 54.691940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324471, 39.970226, 54.833767>,  <34.058746, 40.475925, 55.312080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324471, 39.970226, 54.833767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.199081, 40.280670, 54.614902>,  <34.123848, 40.466934, 54.483582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.199081, 40.280670, 54.614902>,  <34.324471, 39.970226, 54.833767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.199081, 40.280670, 54.614902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891583, 0.042241, -0.450883,
		-0.326821, -0.629184, -0.705206,
		-0.313477, 0.776107, -0.547165,
		34.105038, 40.513504, 54.450752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620777, 39.979992, 54.199757>,  <34.324471, 39.970226, 54.833767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620777, 39.979992, 54.199757> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.489475, 40.357521, 54.215008>,  <34.410694, 40.584038, 54.224159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.489475, 40.357521, 54.215008>,  <34.620777, 39.979992, 54.199757>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489475, 40.357521, 54.215008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860520, 0.315440, -0.400003,
		-0.389559, -0.098489, -0.915720,
		-0.328250, 0.943821, 0.038131,
		34.390999, 40.640667, 54.226448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940788, 40.300491, 53.556156>,  <34.620777, 39.979992, 54.199757>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940788, 40.300491, 53.556156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.789471, 40.611977, 53.756355>,  <34.698681, 40.798866, 53.876476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.789471, 40.611977, 53.756355>,  <34.940788, 40.300491, 53.556156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789471, 40.611977, 53.756355> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669222, 0.603620, -0.433342,
		-0.639562, 0.171017, -0.749475,
		-0.378289, 0.778714, 0.500501,
		34.675983, 40.845592, 53.906506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121704, 40.104004, 52.805611>,  <34.940788, 40.300491, 53.556156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121704, 40.104004, 52.805611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.349915, 39.797539, 52.687294>,  <35.486839, 39.613659, 52.616302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.349915, 39.797539, 52.687294>,  <35.121704, 40.104004, 52.805611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349915, 39.797539, 52.687294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585230, -0.631946, 0.508085,
		-0.576201, -0.116770, -0.808923,
		0.570525, -0.766165, -0.295791,
		35.521072, 39.567688, 52.598557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668537, 39.473495, 52.574245>,  <35.121704, 40.104004, 52.805611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668537, 39.473495, 52.574245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.028900, 39.317078, 52.649563>,  <35.245117, 39.223228, 52.694752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.028900, 39.317078, 52.649563>,  <34.668537, 39.473495, 52.574245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028900, 39.317078, 52.649563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431990, -0.766060, 0.475959,
		-0.041880, -0.510133, -0.859075,
		0.900906, -0.391045, 0.188290,
		35.299171, 39.199764, 52.706051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.502392, 38.785458, 52.579540>,  <34.668537, 39.473495, 52.574245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.502392, 38.785458, 52.579540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.858124, 38.794594, 52.762218>,  <35.071564, 38.800076, 52.871826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.858124, 38.794594, 52.762218>,  <34.502392, 38.785458, 52.579540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858124, 38.794594, 52.762218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367327, -0.559140, 0.743259,
		0.272337, -0.828759, -0.488867,
		0.889327, 0.022843, 0.456700,
		35.124924, 38.801445, 52.899227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729286, 38.184723, 52.651470>,  <34.502392, 38.785458, 52.579540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729286, 38.184723, 52.651470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.945911, 38.350349, 52.944115>,  <35.075886, 38.449726, 53.119701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.945911, 38.350349, 52.944115>,  <34.729286, 38.184723, 52.651470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.945911, 38.350349, 52.944115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223925, -0.767791, 0.600295,
		0.810288, -0.488925, -0.323089,
		0.541564, 0.414064, 0.731614,
		35.108379, 38.474567, 53.163597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256390, 37.661442, 52.896370>,  <34.729286, 38.184723, 52.651470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256390, 37.661442, 52.896370> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.170662, 37.927505, 53.182484>,  <35.119225, 38.087143, 53.354153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.170662, 37.927505, 53.182484>,  <35.256390, 37.661442, 52.896370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170662, 37.927505, 53.182484> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357644, -0.734886, 0.576224,
		0.908933, -0.132325, 0.395386,
		-0.214315, 0.665156, 0.715288,
		35.106369, 38.127052, 53.397072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194874, 37.272163, 53.447418>,  <35.256390, 37.661442, 52.896370>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194874, 37.272163, 53.447418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.056267, 37.624489, 53.576469>,  <34.973103, 37.835884, 53.653900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.056267, 37.624489, 53.576469>,  <35.194874, 37.272163, 53.447418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056267, 37.624489, 53.576469> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447342, -0.457481, 0.768502,
		0.824505, 0.121975, 0.552552,
		-0.346520, 0.880814, 0.322631,
		34.952312, 37.888733, 53.673260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.271599, 37.307816, 54.110077>,  <35.194874, 37.272163, 53.447418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.271599, 37.307816, 54.110077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967415, 37.561310, 54.053398>,  <34.784904, 37.713406, 54.019390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.967415, 37.561310, 54.053398>,  <35.271599, 37.307816, 54.110077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967415, 37.561310, 54.053398> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595706, -0.593930, 0.540724,
		0.258516, 0.495610, 0.829180,
		-0.760463, 0.633734, -0.141697,
		34.739277, 37.751431, 54.010887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029102, 37.426285, 54.783897>,  <35.271599, 37.307816, 54.110077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.029102, 37.426285, 54.783897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.726059, 37.527145, 54.543083>,  <34.544235, 37.587662, 54.398594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.726059, 37.527145, 54.543083>,  <35.029102, 37.426285, 54.783897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726059, 37.527145, 54.543083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649292, -0.196836, 0.734626,
		0.066735, 0.947457, 0.312845,
		-0.757606, 0.252153, -0.602040,
		34.498775, 37.602791, 54.362473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576118, 37.903217, 55.136536>,  <35.029102, 37.426285, 54.783897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576118, 37.903217, 55.136536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.345203, 37.727249, 54.861374>,  <34.206654, 37.621666, 54.696278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.345203, 37.727249, 54.861374>,  <34.576118, 37.903217, 55.136536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345203, 37.727249, 54.861374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762950, -0.009572, 0.646387,
		-0.290945, 0.897985, -0.330113,
		-0.577286, -0.439923, -0.687902,
		34.172016, 37.595272, 54.655003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927444, 38.198242, 55.235954>,  <34.576118, 37.903217, 55.136536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927444, 38.198242, 55.235954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.845901, 37.894119, 54.989258>,  <33.796974, 37.711643, 54.841240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.845901, 37.894119, 54.989258>,  <33.927444, 38.198242, 55.235954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845901, 37.894119, 54.989258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909985, -0.085179, 0.405798,
		-0.361066, 0.643951, -0.674507,
		-0.203860, -0.760311, -0.616741,
		33.784744, 37.666027, 54.804237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232441, 38.390263, 54.973171>,  <33.927444, 38.198242, 55.235954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232441, 38.390263, 54.973171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.315346, 38.001099, 54.932209>,  <33.365089, 37.767601, 54.907631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.315346, 38.001099, 54.932209>,  <33.232441, 38.390263, 54.973171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315346, 38.001099, 54.932209> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729837, -0.223477, 0.646061,
		-0.651445, -0.059166, -0.756385,
		0.207260, -0.972912, -0.102402,
		33.377525, 37.709225, 54.901489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628181, 38.156231, 54.892563>,  <33.232441, 38.390263, 54.973171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628181, 38.156231, 54.892563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.844017, 37.837265, 55.000626>,  <32.973518, 37.645885, 55.065464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.844017, 37.837265, 55.000626>,  <32.628181, 38.156231, 54.892563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844017, 37.837265, 55.000626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758668, -0.321385, 0.566687,
		-0.365060, -0.510732, -0.778386,
		0.539587, -0.797411, 0.270151,
		33.005894, 37.598042, 55.081673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183392, 37.557938, 54.743687>,  <32.628181, 38.156231, 54.892563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183392, 37.557938, 54.743687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.464554, 37.461525, 55.011364>,  <32.633251, 37.403675, 55.171970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.464554, 37.461525, 55.011364>,  <32.183392, 37.557938, 54.743687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464554, 37.461525, 55.011364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710740, -0.201262, 0.674049,
		-0.027785, -0.949419, -0.312781,
		0.702906, -0.241035, 0.669198,
		32.675426, 37.389214, 55.212124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.898399, 37.036415, 55.029564>,  <32.183392, 37.557938, 54.743687>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.898399, 37.036415, 55.029564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.188545, 37.138901, 55.285126>,  <32.362633, 37.200394, 55.438461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.188545, 37.138901, 55.285126>,  <31.898399, 37.036415, 55.029564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188545, 37.138901, 55.285126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597051, -0.227764, 0.769190,
		0.342598, -0.939402, -0.012238,
		0.725366, 0.256216, 0.638903,
		32.406155, 37.215767, 55.476795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371902, 36.726681, 54.589493>,  <31.898399, 37.036415, 55.029564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371902, 36.726681, 54.589493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064693, 36.527061, 54.428947>,  <31.880367, 36.407291, 54.332619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.064693, 36.527061, 54.428947>,  <32.371902, 36.726681, 54.589493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.064693, 36.527061, 54.428947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317428, 0.247674, -0.915367,
		0.556217, -0.830428, -0.031808,
		-0.768024, -0.499046, -0.401362,
		31.834286, 36.377346, 54.308540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.718330, 36.287746, 54.084995>,  <32.371902, 36.726681, 54.589493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.718330, 36.287746, 54.084995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331741, 36.339821, 53.996475>,  <32.099785, 36.371067, 53.943363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.331741, 36.339821, 53.996475>,  <32.718330, 36.287746, 54.084995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331741, 36.339821, 53.996475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235791, 0.108942, -0.965678,
		-0.101609, -0.985486, -0.135987,
		-0.966477, 0.130186, -0.221299,
		32.041798, 36.378876, 53.930084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541069, 35.793919, 53.660526>,  <32.718330, 36.287746, 54.084995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541069, 35.793919, 53.660526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.259308, 36.065323, 53.577156>,  <32.090252, 36.228165, 53.527134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.259308, 36.065323, 53.577156>,  <32.541069, 35.793919, 53.660526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259308, 36.065323, 53.577156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186082, -0.106838, -0.976708,
		-0.684978, -0.726777, -0.051003,
		-0.704400, 0.678514, -0.208422,
		32.047989, 36.268879, 53.514629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049370, 35.594177, 53.033257>,  <32.541069, 35.793919, 53.660526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049370, 35.594177, 53.033257> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.027061, 35.992432, 53.063213>,  <32.013676, 36.231384, 53.081188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.027061, 35.992432, 53.063213>,  <32.049370, 35.594177, 53.033257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027061, 35.992432, 53.063213> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077009, 0.070493, -0.994535,
		-0.995470, -0.061231, 0.072741,
		-0.055768, 0.995631, 0.074889,
		32.010330, 36.291122, 53.085682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454763, 35.863388, 52.524696>,  <32.049370, 35.594177, 53.033257>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454763, 35.863388, 52.524696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672535, 36.183784, 52.624302>,  <31.803198, 36.376022, 52.684063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.672535, 36.183784, 52.624302>,  <31.454763, 35.863388, 52.524696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.672535, 36.183784, 52.624302> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023387, 0.282252, -0.959055,
		-0.838481, 0.527960, 0.134933,
		0.544428, 0.800994, 0.249011,
		31.835863, 36.424084, 52.699005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235312, 36.368355, 52.134899>,  <31.454763, 35.863388, 52.524696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235312, 36.368355, 52.134899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.595877, 36.507835, 52.237553>,  <31.812216, 36.591522, 52.299145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.595877, 36.507835, 52.237553>,  <31.235312, 36.368355, 52.134899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595877, 36.507835, 52.237553> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216248, 0.150913, -0.964604,
		-0.375086, 0.925005, 0.060630,
		0.901414, 0.348699, 0.256636,
		31.866301, 36.612446, 52.314545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328644, 36.895267, 51.754120>,  <31.235312, 36.368355, 52.134899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328644, 36.895267, 51.754120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.703222, 36.816956, 51.870560>,  <31.927969, 36.769970, 51.940426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.703222, 36.816956, 51.870560>,  <31.328644, 36.895267, 51.754120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703222, 36.816956, 51.870560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319147, 0.130905, -0.938621,
		0.145656, 0.971871, 0.185068,
		0.936445, -0.195779, 0.291103,
		31.984156, 36.758221, 51.957890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072893, 37.604782, 51.938087>,  <31.328644, 36.895267, 51.754120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072893, 37.604782, 51.938087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.810192, 37.899994, 51.876129>,  <30.652571, 38.077122, 51.838955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.810192, 37.899994, 51.876129>,  <31.072893, 37.604782, 51.938087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810192, 37.899994, 51.876129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670183, -0.477051, 0.568575,
		0.345733, 0.477219, 0.807918,
		-0.656752, 0.738028, -0.154892,
		30.613167, 38.121403, 51.829662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921280, 37.924179, 52.606758>,  <31.072893, 37.604782, 51.938087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921280, 37.924179, 52.606758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.617044, 38.041916, 52.375286>,  <30.434504, 38.112556, 52.236404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.617044, 38.041916, 52.375286>,  <30.921280, 37.924179, 52.606758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617044, 38.041916, 52.375286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644491, -0.449862, 0.618269,
		-0.078347, 0.843202, 0.531857,
		-0.760588, 0.294338, -0.578681,
		30.388868, 38.130219, 52.201683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479923, 38.212955, 53.060951>,  <30.921280, 37.924179, 52.606758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.479923, 38.212955, 53.060951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.246756, 38.123917, 52.748371>,  <30.106855, 38.070496, 52.560825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.246756, 38.123917, 52.748371>,  <30.479923, 38.212955, 53.060951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246756, 38.123917, 52.748371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774725, -0.137690, 0.617124,
		-0.244965, 0.965140, -0.092187,
		-0.582918, -0.222593, -0.781447,
		30.071880, 38.057140, 52.513939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860073, 38.682823, 53.244259>,  <30.479923, 38.212955, 53.060951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860073, 38.682823, 53.244259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.734983, 38.417778, 52.972038>,  <29.659929, 38.258751, 52.808704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.734983, 38.417778, 52.972038>,  <29.860073, 38.682823, 53.244259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.734983, 38.417778, 52.972038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855838, -0.114216, 0.504477,
		-0.412002, 0.740202, -0.531371,
		-0.312724, -0.662613, -0.680550,
		29.641167, 38.218994, 52.767872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.092918, 38.735607, 53.197247>,  <29.860073, 38.682823, 53.244259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.092918, 38.735607, 53.197247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169498, 38.380714, 53.029358>,  <29.215446, 38.167778, 52.928623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.169498, 38.380714, 53.029358>,  <29.092918, 38.735607, 53.197247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.169498, 38.380714, 53.029358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820205, -0.379494, 0.428075,
		-0.539083, 0.262302, -0.800367,
		0.191449, -0.887233, -0.419720,
		29.226933, 38.114544, 52.903442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.416397, 38.520348, 52.850712>,  <29.092918, 38.735607, 53.197247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.416397, 38.520348, 52.850712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664993, 38.221924, 52.946335>,  <28.814152, 38.042870, 53.003708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.664993, 38.221924, 52.946335>,  <28.416397, 38.520348, 52.850712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.664993, 38.221924, 52.946335> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718014, -0.420376, 0.554743,
		-0.313375, -0.516416, -0.796938,
		0.621492, -0.746056, 0.239059,
		28.851440, 37.998108, 53.018051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998167, 37.884312, 52.821293>,  <28.416397, 38.520348, 52.850712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998167, 37.884312, 52.821293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.313526, 37.729927, 53.012905>,  <28.502741, 37.637299, 53.127872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.313526, 37.729927, 53.012905>,  <27.998167, 37.884312, 52.821293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313526, 37.729927, 53.012905> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610700, -0.584725, 0.533987,
		0.074004, -0.713536, -0.696699,
		0.788397, -0.385957, 0.479028,
		28.550045, 37.614140, 53.156612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.899935, 37.163048, 52.824615>,  <27.998167, 37.884312, 52.821293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.899935, 37.163048, 52.824615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125027, 37.267609, 53.138306>,  <28.260082, 37.330345, 53.326519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125027, 37.267609, 53.138306>,  <27.899935, 37.163048, 52.824615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125027, 37.267609, 53.138306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500057, -0.647778, 0.574740,
		0.658240, -0.715579, -0.233808,
		0.562728, 0.261400, 0.784224,
		28.293846, 37.346027, 53.373573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.963596, 36.529583, 53.164154>,  <27.899935, 37.163048, 52.824615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.963596, 36.529583, 53.164154> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049961, 36.816895, 53.428715>,  <28.101780, 36.989281, 53.587452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.049961, 36.816895, 53.428715>,  <27.963596, 36.529583, 53.164154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049961, 36.816895, 53.428715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580695, -0.450106, 0.678378,
		0.784968, -0.530544, 0.319918,
		0.215913, 0.718280, 0.661404,
		28.114735, 37.032379, 53.627136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.461632, 45.483330, 44.012821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.394295, 45.661629, 44.364494>,  <38.353893, 45.768608, 44.575500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.394295, 45.661629, 44.364494>,  <38.461632, 45.483330, 44.012821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394295, 45.661629, 44.364494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362646, -0.857368, 0.365250,
		0.916597, -0.257348, 0.305977,
		-0.168339, 0.445748, 0.879187,
		38.343792, 45.795353, 44.628250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.512939, 44.970196, 44.502468>,  <38.461632, 45.483330, 44.012821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.512939, 44.970196, 44.502468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341721, 45.261620, 44.716373>,  <38.238991, 45.436474, 44.844715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.341721, 45.261620, 44.716373>,  <38.512939, 44.970196, 44.502468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341721, 45.261620, 44.716373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443066, -0.684895, 0.578456,
		0.787697, 0.010673, 0.615970,
		-0.428048, 0.728564, 0.534761,
		38.213306, 45.480190, 44.876801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.559807, 44.746777, 45.152756>,  <38.512939, 44.970196, 44.502468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.559807, 44.746777, 45.152756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.253269, 45.003662, 45.146015>,  <38.069347, 45.157791, 45.141972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.253269, 45.003662, 45.146015>,  <38.559807, 44.746777, 45.152756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.253269, 45.003662, 45.146015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512204, -0.594951, 0.619419,
		0.387769, 0.483322, 0.784879,
		-0.766343, 0.642210, -0.016856,
		38.023365, 45.196323, 45.140957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.328674, 44.733932, 45.816509>,  <38.559807, 44.746777, 45.152756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.328674, 44.733932, 45.816509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026661, 44.881592, 45.599751>,  <37.845451, 44.970188, 45.469696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.026661, 44.881592, 45.599751>,  <38.328674, 44.733932, 45.816509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.026661, 44.881592, 45.599751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654698, -0.469815, 0.592152,
		-0.035999, 0.801874, 0.596408,
		-0.755033, 0.369150, -0.541898,
		37.800152, 44.992336, 45.437180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743820, 44.839218, 46.237732>,  <38.328674, 44.733932, 45.816509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743820, 44.839218, 46.237732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.540871, 44.862770, 45.893848>,  <37.419102, 44.876900, 45.687519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.540871, 44.862770, 45.893848>,  <37.743820, 44.839218, 46.237732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540871, 44.862770, 45.893848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808990, -0.376192, 0.451680,
		-0.296823, 0.924669, 0.238500,
		-0.507376, 0.058875, -0.859711,
		37.388657, 44.880432, 45.635937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.114754, 45.158176, 46.389416>,  <37.743820, 44.839218, 46.237732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.114754, 45.158176, 46.389416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084694, 44.945152, 46.052197>,  <37.066658, 44.817337, 45.849865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.084694, 44.945152, 46.052197>,  <37.114754, 45.158176, 46.389416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084694, 44.945152, 46.052197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831910, -0.432658, 0.347467,
		-0.549799, 0.727455, -0.410524,
		-0.075151, -0.532556, -0.843052,
		37.062149, 44.785385, 45.799282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405994, 45.218689, 46.271946>,  <37.114754, 45.158176, 46.389416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405994, 45.218689, 46.271946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516174, 44.892029, 46.069084>,  <36.582283, 44.696033, 45.947365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.516174, 44.892029, 46.069084>,  <36.405994, 45.218689, 46.271946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516174, 44.892029, 46.069084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723457, -0.523507, 0.450057,
		-0.633041, 0.242941, -0.735009,
		0.275445, -0.816651, -0.507159,
		36.598808, 44.647034, 45.916935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764629, 44.923702, 46.076164>,  <36.405994, 45.218689, 46.271946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764629, 44.923702, 46.076164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011253, 44.608833, 46.070358>,  <36.159229, 44.419914, 46.066875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.011253, 44.608833, 46.070358>,  <35.764629, 44.923702, 46.076164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011253, 44.608833, 46.070358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753914, -0.595627, 0.277204,
		-0.226852, -0.159971, -0.960702,
		0.616565, -0.787170, -0.014514,
		36.196224, 44.372681, 46.066002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374557, 44.312481, 45.762875>,  <35.764629, 44.923702, 46.076164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374557, 44.312481, 45.762875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679874, 44.120705, 45.936089>,  <35.863064, 44.005638, 46.040016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.679874, 44.120705, 45.936089>,  <35.374557, 44.312481, 45.762875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679874, 44.120705, 45.936089> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586203, -0.795723, 0.152284,
		0.271567, -0.370085, -0.888419,
		0.763294, -0.479439, 0.433037,
		35.908863, 43.976871, 46.065998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451305, 43.732697, 45.298431>,  <35.374557, 44.312481, 45.762875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451305, 43.732697, 45.298431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611656, 43.668694, 45.659252>,  <35.707867, 43.630291, 45.875744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.611656, 43.668694, 45.659252>,  <35.451305, 43.732697, 45.298431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611656, 43.668694, 45.659252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585441, -0.802096, 0.117900,
		0.704665, -0.575360, -0.415220,
		0.400881, -0.160007, 0.902049,
		35.731922, 43.620693, 45.929867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525642, 42.968395, 45.359390>,  <35.451305, 43.732697, 45.298431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525642, 42.968395, 45.359390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552311, 43.124107, 45.726871>,  <35.568310, 43.217537, 45.947361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.552311, 43.124107, 45.726871>,  <35.525642, 42.968395, 45.359390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552311, 43.124107, 45.726871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629430, -0.698019, 0.341450,
		0.774192, -0.601023, 0.198490,
		0.066669, 0.389283, 0.918702,
		35.572311, 43.240891, 46.002483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701588, 42.464664, 45.813026>,  <35.525642, 42.968395, 45.359390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.701588, 42.464664, 45.813026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505978, 42.720451, 46.050323>,  <35.388611, 42.873924, 46.192703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.505978, 42.720451, 46.050323>,  <35.701588, 42.464664, 45.813026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.505978, 42.720451, 46.050323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482918, -0.764856, 0.426363,
		0.726392, -0.077988, 0.682842,
		-0.489025, 0.639463, 0.593247,
		35.359272, 42.912289, 46.228298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130081, 41.991009, 46.373348>,  <35.701588, 42.464664, 45.813026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130081, 41.991009, 46.373348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393139, 41.694214, 46.321239>,  <36.550972, 41.516136, 46.289974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.393139, 41.694214, 46.321239>,  <36.130081, 41.991009, 46.373348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393139, 41.694214, 46.321239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668158, 0.654371, -0.354067,
		0.347956, 0.145809, 0.926103,
		0.657641, -0.741983, -0.130269,
		36.590431, 41.471619, 46.282158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752098, 42.413677, 46.569107>,  <36.130081, 41.991009, 46.373348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752098, 42.413677, 46.569107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.892273, 42.064468, 46.433445>,  <36.976379, 41.854942, 46.352047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.892273, 42.064468, 46.433445>,  <36.752098, 42.413677, 46.569107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892273, 42.064468, 46.433445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873120, 0.435552, -0.218990,
		0.338901, -0.219376, 0.914888,
		0.350440, -0.873023, -0.339150,
		36.997406, 41.802563, 46.331699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440189, 42.300167, 46.813919>,  <36.752098, 42.413677, 46.569107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440189, 42.300167, 46.813919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461494, 42.068954, 46.488209>,  <37.474277, 41.930229, 46.292782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.461494, 42.068954, 46.488209>,  <37.440189, 42.300167, 46.813919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461494, 42.068954, 46.488209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909996, 0.363864, -0.198772,
		0.411182, -0.730401, 0.545384,
		0.053262, -0.578029, -0.814276,
		37.477474, 41.895546, 46.243927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182789, 42.147308, 46.774433>,  <37.440189, 42.300167, 46.813919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182789, 42.147308, 46.774433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010330, 42.101608, 46.416428>,  <37.906853, 42.074188, 46.201622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.010330, 42.101608, 46.416428>,  <38.182789, 42.147308, 46.774433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010330, 42.101608, 46.416428> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856940, 0.258639, -0.445824,
		0.282422, -0.959194, -0.013606,
		-0.431151, -0.114252, -0.895017,
		37.880985, 42.067333, 46.147923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688660, 41.700500, 46.293140>,  <38.182789, 42.147308, 46.774433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688660, 41.700500, 46.293140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449158, 41.906204, 46.047531>,  <38.305458, 42.029625, 45.900166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.449158, 41.906204, 46.047531>,  <38.688660, 41.700500, 46.293140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.449158, 41.906204, 46.047531> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795106, 0.289343, -0.532998,
		-0.096435, -0.807352, -0.582137,
		-0.598754, 0.514260, -0.614028,
		38.269531, 42.060482, 45.863323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918228, 41.571812, 45.582394>,  <38.688660, 41.700500, 46.293140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918228, 41.571812, 45.582394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702171, 41.905067, 45.534859>,  <38.572536, 42.105022, 45.506340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702171, 41.905067, 45.534859>,  <38.918228, 41.571812, 45.582394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702171, 41.905067, 45.534859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683691, 0.352075, -0.639226,
		-0.490728, -0.426517, -0.759782,
		-0.540141, 0.833143, -0.118833,
		38.540131, 42.155010, 45.499210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772919, 41.664661, 44.857220>,  <38.918228, 41.571812, 45.582394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772919, 41.664661, 44.857220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770798, 42.029167, 45.021935>,  <38.769524, 42.247871, 45.120766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.770798, 42.029167, 45.021935>,  <38.772919, 41.664661, 44.857220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770798, 42.029167, 45.021935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656819, 0.313688, -0.685703,
		-0.754030, 0.266834, -0.600199,
		-0.005307, 0.911263, 0.411792,
		38.769207, 42.302547, 45.145473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655476, 42.124256, 44.320259>,  <38.772919, 41.664661, 44.857220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655476, 42.124256, 44.320259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800507, 42.353722, 44.614048>,  <38.887527, 42.491402, 44.790321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.800507, 42.353722, 44.614048>,  <38.655476, 42.124256, 44.320259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.800507, 42.353722, 44.614048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649370, 0.409775, -0.640627,
		-0.668471, 0.709222, -0.223943,
		0.362581, 0.573662, 0.734470,
		38.909283, 42.525822, 44.834389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690441, 42.854427, 44.039871>,  <38.655476, 42.124256, 44.320259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690441, 42.854427, 44.039871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936340, 42.845741, 44.355244>,  <39.083878, 42.840530, 44.544468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.936340, 42.845741, 44.355244>,  <38.690441, 42.854427, 44.039871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936340, 42.845741, 44.355244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776089, 0.194872, -0.599759,
		-0.140620, 0.980588, 0.136648,
		0.614745, -0.021714, 0.788427,
		39.120766, 42.839226, 44.591770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.124813, 43.452084, 43.957241>,  <38.690441, 42.854427, 44.039871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.124813, 43.452084, 43.957241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.331348, 43.224396, 44.213173>,  <39.455269, 43.087784, 44.366730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.331348, 43.224396, 44.213173>,  <39.124813, 43.452084, 43.957241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.331348, 43.224396, 44.213173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848984, 0.242230, -0.469629,
		0.112337, 0.785692, 0.608333,
		0.516340, -0.569222, 0.639828,
		39.486252, 43.053631, 44.405121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667053, 43.937809, 44.177849>,  <39.124813, 43.452084, 43.957241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667053, 43.937809, 44.177849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.805740, 43.573303, 44.266739>,  <39.888950, 43.354599, 44.320072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.805740, 43.573303, 44.266739>,  <39.667053, 43.937809, 44.177849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.805740, 43.573303, 44.266739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916963, 0.279439, -0.284768,
		0.197401, 0.302504, 0.932483,
		0.346715, -0.911266, 0.222224,
		39.909756, 43.299923, 44.333405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255508, 44.177715, 44.500038>,  <39.667053, 43.937809, 44.177849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255508, 44.177715, 44.500038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.300499, 43.796059, 44.389076>,  <40.327492, 43.567062, 44.322498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.300499, 43.796059, 44.389076>,  <40.255508, 44.177715, 44.500038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.300499, 43.796059, 44.389076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926964, 0.201308, -0.316563,
		0.357892, -0.221540, 0.907102,
		0.112475, -0.954146, -0.277406,
		40.334240, 43.509815, 44.305855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.957897, 44.064301, 44.616623>,  <40.255508, 44.177715, 44.500038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.957897, 44.064301, 44.616623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.853535, 43.768509, 44.368397>,  <40.790916, 43.591034, 44.219460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.853535, 43.768509, 44.368397>,  <40.957897, 44.064301, 44.616623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853535, 43.768509, 44.368397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858870, 0.115697, -0.498956,
		0.440765, -0.663165, 0.604929,
		-0.260902, -0.739477, -0.620567,
		40.775265, 43.546665, 44.182228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516304, 43.467770, 44.630356>,  <40.957897, 44.064301, 44.616623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516304, 43.467770, 44.630356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.324566, 43.440697, 44.280350>,  <41.209522, 43.424454, 44.070347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.324566, 43.440697, 44.280350>,  <41.516304, 43.467770, 44.630356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324566, 43.440697, 44.280350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877265, -0.008258, -0.479935,
		0.025259, -0.997673, 0.063336,
		-0.479341, -0.067685, -0.875015,
		41.180763, 43.420391, 44.017845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766541, 43.764435, 45.322632>,  <41.516304, 43.467770, 44.630356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766541, 43.764435, 45.322632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.765182, 44.136391, 45.175499>,  <41.764366, 44.359562, 45.087219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.765182, 44.136391, 45.175499>,  <41.766541, 43.764435, 45.322632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765182, 44.136391, 45.175499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289947, 0.351115, 0.890308,
		0.957037, 0.109675, 0.268426,
		-0.003396, 0.929887, -0.367830,
		41.764164, 44.415356, 45.065151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.050472, 43.800285, 45.940853>,  <41.766541, 43.764435, 45.322632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.050472, 43.800285, 45.940853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.197598, 44.118561, 46.133347>,  <42.285873, 44.309525, 46.248844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.197598, 44.118561, 46.133347>,  <42.050472, 43.800285, 45.940853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.197598, 44.118561, 46.133347> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498464, -0.268172, 0.824389,
		0.785012, -0.543103, 0.297985,
		0.367817, 0.795690, 0.481236,
		42.307941, 44.357269, 46.277718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510067, 43.599560, 46.460068>,  <42.050472, 43.800285, 45.940853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510067, 43.599560, 46.460068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.290268, 43.921906, 46.548275>,  <42.158390, 44.115314, 46.601200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.290268, 43.921906, 46.548275>,  <42.510067, 43.599560, 46.460068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.290268, 43.921906, 46.548275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574198, -0.555984, 0.600981,
		0.606918, 0.203614, 0.768239,
		-0.549497, 0.805868, 0.220522,
		42.125420, 44.163666, 46.614433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.505913, 43.705418, 47.304817>,  <42.510067, 43.599560, 46.460068>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.505913, 43.705418, 47.304817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.188301, 43.894501, 47.151939>,  <41.997734, 44.007950, 47.060211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.188301, 43.894501, 47.151939>,  <42.505913, 43.705418, 47.304817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.188301, 43.894501, 47.151939> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597605, -0.491875, 0.633188,
		0.111318, 0.731170, 0.673051,
		-0.794026, 0.472704, -0.382197,
		41.950092, 44.036312, 47.037281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141754, 43.900448, 47.873138>,  <42.505913, 43.705418, 47.304817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141754, 43.900448, 47.873138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.872871, 43.910347, 47.577156>,  <41.711544, 43.916286, 47.399567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.872871, 43.910347, 47.577156>,  <42.141754, 43.900448, 47.873138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.872871, 43.910347, 47.577156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677855, -0.422509, 0.601664,
		-0.297747, 0.906021, 0.300788,
		-0.672205, 0.024747, -0.739951,
		41.671211, 43.917770, 47.355171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.545773, 44.191319, 48.159771>,  <42.141754, 43.900448, 47.873138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.545773, 44.191319, 48.159771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.409546, 43.998482, 47.836884>,  <41.327808, 43.882782, 47.643150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.409546, 43.998482, 47.836884>,  <41.545773, 44.191319, 48.159771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.409546, 43.998482, 47.836884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683545, -0.462548, 0.564637,
		-0.645583, 0.744069, -0.172000,
		-0.340571, -0.482090, -0.807218,
		41.307373, 43.853855, 47.594719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.787613, 44.218880, 48.151249>,  <41.545773, 44.191319, 48.159771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.787613, 44.218880, 48.151249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852901, 43.907799, 47.908421>,  <40.892075, 43.721149, 47.762726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.852901, 43.907799, 47.908421>,  <40.787613, 44.218880, 48.151249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852901, 43.907799, 47.908421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908832, -0.357959, 0.214218,
		-0.383905, 0.516760, -0.765230,
		0.163222, -0.777705, -0.607071,
		40.901867, 43.674488, 47.726299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.179424, 44.161491, 47.754585>,  <40.787613, 44.218880, 48.151249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.179424, 44.161491, 47.754585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377419, 43.814026, 47.746479>,  <40.496216, 43.605545, 47.741615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377419, 43.814026, 47.746479>,  <40.179424, 44.161491, 47.754585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377419, 43.814026, 47.746479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850211, -0.489022, 0.194931,
		-0.179238, -0.079262, -0.980608,
		0.494989, -0.868663, -0.020262,
		40.525917, 43.553429, 47.740402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630894, 43.790989, 47.458698>,  <40.179424, 44.161491, 47.754585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630894, 43.790989, 47.458698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.896084, 43.526512, 47.599152>,  <40.055199, 43.367828, 47.683422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.896084, 43.526512, 47.599152>,  <39.630894, 43.790989, 47.458698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896084, 43.526512, 47.599152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738448, -0.654692, 0.161471,
		0.123122, -0.366346, -0.922297,
		0.662975, -0.661187, 0.351134,
		40.094975, 43.328156, 47.704491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397179, 43.215294, 47.166740>,  <39.630894, 43.790989, 47.458698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397179, 43.215294, 47.166740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638386, 43.093796, 47.461796>,  <39.783108, 43.020897, 47.638828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.638386, 43.093796, 47.461796>,  <39.397179, 43.215294, 47.166740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638386, 43.093796, 47.461796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703676, -0.638119, 0.312482,
		0.375784, -0.707489, -0.598536,
		0.603015, -0.303750, 0.737637,
		39.819290, 43.002670, 47.683086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446552, 42.474514, 47.137180>,  <39.397179, 43.215294, 47.166740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446552, 42.474514, 47.137180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.550972, 42.568245, 47.511761>,  <39.613625, 42.624481, 47.736511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.550972, 42.568245, 47.511761>,  <39.446552, 42.474514, 47.137180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.550972, 42.568245, 47.511761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702600, -0.619119, 0.350777,
		0.661972, -0.749522, 0.003016,
		0.261048, 0.234324, 0.936454,
		39.629288, 42.638542, 47.792698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527958, 41.831417, 47.428143>,  <39.446552, 42.474514, 47.137180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527958, 41.831417, 47.428143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.474220, 42.086243, 47.731747>,  <39.441978, 42.239140, 47.913910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.474220, 42.086243, 47.731747>,  <39.527958, 41.831417, 47.428143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474220, 42.086243, 47.731747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691643, -0.608803, 0.388573,
		0.709635, -0.472762, 0.522411,
		-0.134343, 0.637067, 0.759011,
		39.433918, 42.277363, 47.959450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486950, 41.446686, 47.989521>,  <39.527958, 41.831417, 47.428143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486950, 41.446686, 47.989521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.322655, 41.791878, 48.107204>,  <39.224075, 41.998993, 48.177814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.322655, 41.791878, 48.107204>,  <39.486950, 41.446686, 47.989521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322655, 41.791878, 48.107204> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660457, -0.504074, 0.556513,
		0.628561, 0.034272, 0.777005,
		-0.410741, 0.862980, 0.294206,
		39.199432, 42.050774, 48.195465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292191, 41.315765, 48.707153>,  <39.486950, 41.446686, 47.989521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292191, 41.315765, 48.707153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.088310, 41.646439, 48.611824>,  <38.965984, 41.844845, 48.554626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.088310, 41.646439, 48.611824>,  <39.292191, 41.315765, 48.707153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088310, 41.646439, 48.611824> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672181, -0.209734, 0.710059,
		0.537011, 0.522114, 0.662583,
		-0.509698, 0.826685, -0.238326,
		38.935402, 41.894444, 48.540325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213535, 41.674751, 49.364243>,  <39.292191, 41.315765, 48.707153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213535, 41.674751, 49.364243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.923851, 41.820381, 49.129990>,  <38.750042, 41.907761, 48.989437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.923851, 41.820381, 49.129990>,  <39.213535, 41.674751, 49.364243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923851, 41.820381, 49.129990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681703, -0.249994, 0.687593,
		0.103930, 0.897191, 0.429239,
		-0.724210, 0.364075, -0.585636,
		38.706589, 41.929604, 48.954300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.637646, 41.957691, 49.780045>,  <39.213535, 41.674751, 49.364243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.637646, 41.957691, 49.780045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474350, 41.856049, 49.429325>,  <38.376373, 41.795063, 49.218895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.474350, 41.856049, 49.429325>,  <38.637646, 41.957691, 49.780045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474350, 41.856049, 49.429325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857850, -0.221640, 0.463647,
		-0.312149, 0.941438, -0.127505,
		-0.408235, -0.254107, -0.876797,
		38.351879, 41.779816, 49.166286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075096, 42.262512, 49.819683>,  <38.637646, 41.957691, 49.780045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075096, 42.262512, 49.819683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998440, 42.008560, 49.520298>,  <37.952446, 41.856190, 49.340668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.998440, 42.008560, 49.520298>,  <38.075096, 42.262512, 49.819683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998440, 42.008560, 49.520298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836439, -0.293313, 0.462965,
		-0.513463, 0.714766, -0.474832,
		-0.191637, -0.634884, -0.748463,
		37.940948, 41.818096, 49.295757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.351284, 42.306454, 49.758625>,  <38.075096, 42.262512, 49.819683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.351284, 42.306454, 49.758625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432564, 41.967781, 49.561916>,  <37.481331, 41.764576, 49.443890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.432564, 41.967781, 49.561916>,  <37.351284, 42.306454, 49.758625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432564, 41.967781, 49.561916> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687760, -0.480909, 0.543796,
		-0.696920, 0.227724, -0.680033,
		0.203198, -0.846681, -0.491774,
		37.493523, 41.713776, 49.414383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.687878, 41.983421, 49.727657>,  <37.351284, 42.306454, 49.758625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.687878, 41.983421, 49.727657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945724, 41.696632, 49.621513>,  <37.100433, 41.524559, 49.557827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.945724, 41.696632, 49.621513>,  <36.687878, 41.983421, 49.727657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945724, 41.696632, 49.621513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589029, -0.687049, 0.425450,
		-0.487351, -0.117950, -0.865204,
		0.644619, -0.716974, -0.265358,
		37.139111, 41.481541, 49.541904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326557, 41.355930, 49.420174>,  <36.687878, 41.983421, 49.727657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326557, 41.355930, 49.420174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676109, 41.263771, 49.591400>,  <36.885841, 41.208477, 49.694138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.676109, 41.263771, 49.591400>,  <36.326557, 41.355930, 49.420174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676109, 41.263771, 49.591400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455863, -0.694253, 0.556957,
		0.168866, -0.681857, -0.711727,
		0.873884, -0.230399, 0.428069,
		36.938274, 41.194653, 49.719822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245186, 40.687973, 49.420025>,  <36.326557, 41.355930, 49.420174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245186, 40.687973, 49.420025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505516, 40.777771, 49.710136>,  <36.661713, 40.831650, 49.884205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.505516, 40.777771, 49.710136>,  <36.245186, 40.687973, 49.420025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505516, 40.777771, 49.710136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484470, -0.612720, 0.624390,
		0.584565, -0.757745, -0.290012,
		0.650825, 0.224494, 0.725279,
		36.700764, 40.845119, 49.927719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199268, 40.056480, 49.800209>,  <36.245186, 40.687973, 49.420025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199268, 40.056480, 49.800209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415363, 40.313934, 50.017048>,  <36.545021, 40.468407, 50.147152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.415363, 40.313934, 50.017048>,  <36.199268, 40.056480, 49.800209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.415363, 40.313934, 50.017048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092321, -0.594975, 0.798425,
		0.836432, -0.481387, -0.262007,
		0.540238, 0.643640, 0.542098,
		36.577435, 40.507027, 50.179676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579144, 39.594536, 50.212234>,  <36.199268, 40.056480, 49.800209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579144, 39.594536, 50.212234> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611313, 39.937042, 50.416328>,  <36.630615, 40.142548, 50.538784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.611313, 39.937042, 50.416328>,  <36.579144, 39.594536, 50.212234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611313, 39.937042, 50.416328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262986, -0.475531, 0.839469,
		0.961442, -0.201696, 0.186944,
		0.080420, 0.856264, 0.510239,
		36.635441, 40.193920, 50.569401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796307, 39.369297, 50.803070>,  <36.579144, 39.594536, 50.212234>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796307, 39.369297, 50.803070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651138, 39.729599, 50.898506>,  <36.564037, 39.945782, 50.955769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.651138, 39.729599, 50.898506>,  <36.796307, 39.369297, 50.803070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651138, 39.729599, 50.898506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272690, -0.347508, 0.897150,
		0.891026, 0.260534, 0.371745,
		-0.362923, 0.900755, 0.238594,
		36.542263, 39.999825, 50.970085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073380, 39.578426, 51.529053>,  <36.796307, 39.369297, 50.803070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073380, 39.578426, 51.529053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727356, 39.767761, 51.462570>,  <36.519741, 39.881363, 51.422680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.727356, 39.767761, 51.462570>,  <37.073380, 39.578426, 51.529053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.727356, 39.767761, 51.462570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311045, -0.246126, 0.917972,
		0.393601, 0.845799, 0.360143,
		-0.865060, 0.473335, -0.166205,
		36.467838, 39.909763, 51.412708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962399, 40.142338, 52.108608>,  <37.073380, 39.578426, 51.529053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962399, 40.142338, 52.108608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606964, 40.051125, 51.949398>,  <36.393703, 39.996395, 51.853874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.606964, 40.051125, 51.949398>,  <36.962399, 40.142338, 52.108608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606964, 40.051125, 51.949398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375192, -0.137917, 0.916629,
		-0.263915, 0.963836, 0.036995,
		-0.888583, -0.228032, -0.398022,
		36.340389, 39.982716, 51.829990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442974, 40.341915, 52.555428>,  <36.962399, 40.142338, 52.108608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442974, 40.341915, 52.555428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.271202, 40.071480, 52.315929>,  <36.168140, 39.909218, 52.172230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.271202, 40.071480, 52.315929>,  <36.442974, 40.341915, 52.555428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271202, 40.071480, 52.315929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466553, -0.401583, 0.788074,
		-0.773254, 0.617767, -0.142981,
		-0.429427, -0.676089, -0.598746,
		36.142372, 39.868652, 52.136307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760223, 40.411572, 52.758625>,  <36.442974, 40.341915, 52.555428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760223, 40.411572, 52.758625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806229, 40.067787, 52.559387>,  <35.833832, 39.861515, 52.439842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.806229, 40.067787, 52.559387>,  <35.760223, 40.411572, 52.758625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806229, 40.067787, 52.559387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452565, -0.491698, 0.743921,
		-0.884284, 0.139863, -0.445512,
		0.115011, -0.859460, -0.498098,
		35.840733, 39.809948, 52.409958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192402, 40.845268, 53.135174>,  <35.760223, 40.411572, 52.758625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192402, 40.845268, 53.135174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062202, 41.026016, 53.467407>,  <34.984081, 41.134464, 53.666748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.062202, 41.026016, 53.467407>,  <35.192402, 40.845268, 53.135174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062202, 41.026016, 53.467407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632727, 0.756854, -0.163797,
		-0.702644, 0.472216, -0.532263,
		-0.325498, 0.451868, 0.830582,
		34.964554, 41.161575, 53.716583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001209, 41.594536, 52.969242>,  <35.192402, 40.845268, 53.135174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001209, 41.594536, 52.969242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094303, 41.557884, 53.356529>,  <35.150162, 41.535892, 53.588902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.094303, 41.557884, 53.356529>,  <35.001209, 41.594536, 52.969242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094303, 41.557884, 53.356529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715978, 0.689902, -0.106818,
		-0.658185, 0.718081, 0.226169,
		0.232739, -0.091626, 0.968213,
		35.164124, 41.530396, 53.646992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860809, 42.358753, 53.220978>,  <35.001209, 41.594536, 52.969242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860809, 42.358753, 53.220978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100090, 42.170769, 53.480606>,  <35.243660, 42.057980, 53.636383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100090, 42.170769, 53.480606>,  <34.860809, 42.358753, 53.220978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100090, 42.170769, 53.480606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635073, 0.772003, -0.026336,
		-0.488708, 0.427962, 0.760271,
		0.598202, -0.469958, 0.649072,
		35.279552, 42.029781, 53.675327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060642, 42.833519, 53.708759>,  <34.860809, 42.358753, 53.220978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060642, 42.833519, 53.708759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339134, 42.546394, 53.710033>,  <35.506229, 42.374119, 53.710796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.339134, 42.546394, 53.710033>,  <35.060642, 42.833519, 53.708759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339134, 42.546394, 53.710033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698321, 0.676285, -0.234494,
		0.166171, 0.165484, 0.972112,
		0.696230, -0.717812, 0.003182,
		35.548004, 42.331051, 53.710987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596542, 42.985023, 54.105583>,  <35.060642, 42.833519, 53.708759>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596542, 42.985023, 54.105583> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774345, 42.725281, 53.858765>,  <35.881027, 42.569435, 53.710674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.774345, 42.725281, 53.858765>,  <35.596542, 42.985023, 54.105583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774345, 42.725281, 53.858765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707449, 0.677030, -0.202843,
		0.549477, -0.346363, 0.760334,
		0.444511, -0.649356, -0.617047,
		35.907700, 42.530476, 53.673649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
