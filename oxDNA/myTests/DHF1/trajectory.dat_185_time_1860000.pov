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
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.155104, 0.278499, 0.140992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.522568, 0.135590, 0.208427>,  <1.743046, 0.049844, 0.248888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.522568, 0.135590, 0.208427>,  <1.155104, 0.278499, 0.140992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.522568, 0.135590, 0.208427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387563, 0.732361, -0.559859,
		0.076555, 0.579658, 0.811256,
		0.918659, -0.357273, 0.168588,
		1.798165, 0.028408, 0.259004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.665340, 0.901814, 0.367964>,  <1.155104, 0.278499, 0.140992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.665340, 0.901814, 0.367964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.833313, 0.583893, 0.192719>,  <1.934097, 0.393140, 0.087571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.833313, 0.583893, 0.192719>,  <1.665340, 0.901814, 0.367964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.833313, 0.583893, 0.192719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476063, 0.603905, -0.639267,
		0.772671, 0.059880, 0.631976,
		0.419933, -0.794804, -0.438113,
		1.959293, 0.345452, 0.061285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.197690, 1.290202, 0.199667>,  <1.665340, 0.901814, 0.367964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.197690, 1.290202, 0.199667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.238068, 0.932999, 0.024239>,  <2.262295, 0.718676, -0.081018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.238068, 0.932999, 0.024239>,  <2.197690, 1.290202, 0.199667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.238068, 0.932999, 0.024239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452448, 0.433806, -0.779168,
		0.886059, -0.119777, 0.447831,
		0.100945, -0.893009, -0.438571,
		2.268351, 0.665096, -0.107333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.463810, 1.586633, 0.849549>,  <2.197690, 1.290202, 0.199667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.463810, 1.586633, 0.849549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.145348, 1.439514, 1.041740>,  <1.954270, 1.351243, 1.157055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.145348, 1.439514, 1.041740>,  <2.463810, 1.586633, 0.849549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.145348, 1.439514, 1.041740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355412, 0.926897, 0.120602,
		-0.489712, -0.074750, -0.868674,
		-0.796156, -0.367798, 0.480479,
		1.906501, 1.329175, 1.185884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.891062, 1.830639, 0.581609>,  <2.463810, 1.586633, 0.849549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.891062, 1.830639, 0.581609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.783279, 1.732727, 0.954163>,  <1.718610, 1.673980, 1.177695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.783279, 1.732727, 0.954163>,  <1.891062, 1.830639, 0.581609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.783279, 1.732727, 0.954163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491123, 0.866861, 0.085736,
		-0.828367, -0.434322, -0.353798,
		-0.269457, -0.244780, 0.931384,
		1.702442, 1.659293, 1.233578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.264503, 2.054822, 0.493606>,  <1.891062, 1.830639, 0.581609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.264503, 2.054822, 0.493606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.346092, 2.003052, 0.881760>,  <1.395046, 1.971990, 1.114652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.346092, 2.003052, 0.881760>,  <1.264503, 2.054822, 0.493606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.346092, 2.003052, 0.881760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612313, 0.756539, 0.229612,
		-0.763850, -0.641013, 0.075065,
		0.203974, -0.129426, 0.970383,
		1.407284, 1.964224, 1.172875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.646110, 2.003382, 0.871446>,  <1.264503, 2.054822, 0.493606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.646110, 2.003382, 0.871446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.924049, 2.101639, 1.141808>,  <1.090813, 2.160593, 1.304024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.924049, 2.101639, 1.141808>,  <0.646110, 2.003382, 0.871446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.924049, 2.101639, 1.141808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556757, 0.778639, 0.289384,
		-0.455200, -0.577392, 0.677799,
		0.694848, 0.245642, 0.675903,
		1.132504, 2.175331, 1.344579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.244092, 2.305091, 1.463127>,  <0.646110, 2.003382, 0.871446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.244092, 2.305091, 1.463127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.618866, 2.443283, 1.484276>,  <0.843730, 2.526198, 1.496965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.618866, 2.443283, 1.484276>,  <0.244092, 2.305091, 1.463127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.618866, 2.443283, 1.484276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349269, 0.919998, 0.177807,
		0.012786, -0.185060, 0.982644,
		0.936935, 0.345481, 0.052873,
		0.899947, 2.546927, 1.500138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-0.035046, 3.851683, 1.362920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.333824, 3.989899, 1.293411>,  <0.555146, 4.072828, 1.251706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.333824, 3.989899, 1.293411>,  <-0.035046, 3.851683, 1.362920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.333824, 3.989899, 1.293411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383962, -0.871948, 0.303775,
		-0.046554, -0.346856, -0.936762,
		0.922174, 0.345539, -0.173772,
		0.610476, 4.093560, 1.241279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.435238, 3.285084, 1.041314>,  <-0.035046, 3.851683, 1.362920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.435238, 3.285084, 1.041314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.688114, 3.561432, 1.181618>,  <0.839840, 3.727241, 1.265800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.688114, 3.561432, 1.181618>,  <0.435238, 3.285084, 1.041314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.688114, 3.561432, 1.181618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592330, -0.722772, 0.356015,
		0.499480, -0.017304, -0.866153,
		0.632191, 0.690870, 0.350760,
		0.877771, 3.768693, 1.286846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.081607, 3.184852, 0.758346>,  <0.435238, 3.285084, 1.041314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.081607, 3.184852, 0.758346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.111023, 3.357391, 1.118019>,  <1.128673, 3.460915, 1.333823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.111023, 3.357391, 1.118019>,  <1.081607, 3.184852, 0.758346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.111023, 3.357391, 1.118019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616472, -0.728396, 0.299001,
		0.783935, 0.532332, -0.319481,
		0.073541, 0.431349, 0.899183,
		1.133085, 3.486796, 1.387774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.770231, 3.232129, 1.017023>,  <1.081607, 3.184852, 0.758346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.770231, 3.232129, 1.017023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.506901, 3.183685, 1.314194>,  <1.348902, 3.154619, 1.492496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.506901, 3.183685, 1.314194>,  <1.770231, 3.232129, 1.017023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.506901, 3.183685, 1.314194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456396, -0.849083, 0.266009,
		0.598590, 0.514189, 0.614248,
		-0.658326, -0.121110, 0.742926,
		1.309403, 3.147352, 1.537072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.079980, 3.053028, 1.722360>,  <1.770231, 3.232129, 1.017023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.079980, 3.053028, 1.722360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.712753, 2.902267, 1.673210>,  <1.492417, 2.811811, 1.643720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.712753, 2.902267, 1.673210>,  <2.079980, 3.053028, 1.722360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.712753, 2.902267, 1.673210> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373137, -0.926249, 0.053209,
		-0.133868, 0.003001, 0.990995,
		-0.918068, -0.376900, -0.122875,
		1.437333, 2.789197, 1.636348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.026995, 2.545939, 2.194310>,  <2.079980, 3.053028, 1.722360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.026995, 2.545939, 2.194310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.738621, 2.431168, 1.941986>,  <1.565596, 2.362304, 1.790591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.738621, 2.431168, 1.941986>,  <2.026995, 2.545939, 2.194310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.738621, 2.431168, 1.941986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270469, -0.954568, 0.125082,
		-0.638042, -0.080438, 0.765789,
		-0.720936, -0.286930, -0.630811,
		1.522340, 2.345089, 1.752743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.752006, 1.888239, 2.491413>,  <2.026995, 2.545939, 2.194310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.752006, 1.888239, 2.491413> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656540, 1.902054, 2.103218>,  <1.599260, 1.910343, 1.870301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.656540, 1.902054, 2.103218>,  <1.752006, 1.888239, 2.491413>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.656540, 1.902054, 2.103218> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206763, -0.974645, -0.085534,
		-0.948835, -0.221075, 0.225474,
		-0.238667, 0.034538, -0.970487,
		1.584940, 1.912415, 1.812072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.174043, 1.374132, 2.377435>,  <1.752006, 1.888239, 2.491413>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.174043, 1.374132, 2.377435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.370266, 1.449051, 2.037018>,  <1.488000, 1.494002, 1.832768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.370266, 1.449051, 2.037018>,  <1.174043, 1.374132, 2.377435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.370266, 1.449051, 2.037018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298534, -0.953650, -0.037797,
		-0.818676, -0.235524, -0.523735,
		0.490558, 0.187296, -0.851042,
		1.517433, 1.505240, 1.781705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
