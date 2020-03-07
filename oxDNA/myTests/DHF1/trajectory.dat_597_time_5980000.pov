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
	<1.451264, -0.349586, 3.373205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.543148, -0.028721, 3.152744>,  <1.598278, 0.163798, 3.020468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.543148, -0.028721, 3.152744>,  <1.451264, -0.349586, 3.373205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.543148, -0.028721, 3.152744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608797, 0.560255, 0.561677,
		0.759342, 0.206517, 0.617050,
		0.229709, 0.802163, -0.551152,
		1.612061, 0.211928, 2.987399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.799341, 0.205736, 3.767395>,  <1.451264, -0.349586, 3.373205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.799341, 0.205736, 3.767395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.552898, 0.301784, 3.467326>,  <1.405033, 0.359412, 3.287285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.552898, 0.301784, 3.467326>,  <1.799341, 0.205736, 3.767395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.552898, 0.301784, 3.467326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655017, 0.372756, 0.657271,
		0.437454, 0.896324, -0.072376,
		-0.616106, 0.240119, -0.750171,
		1.368067, 0.373819, 3.242275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.602112, 1.009843, 3.653534>,  <1.799341, 0.205736, 3.767395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.602112, 1.009843, 3.653534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.318050, 0.746471, 3.553811>,  <1.147614, 0.588449, 3.493977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.318050, 0.746471, 3.553811>,  <1.602112, 1.009843, 3.653534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.318050, 0.746471, 3.553811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638435, 0.452972, 0.622267,
		-0.296789, 0.601072, -0.742043,
		-0.710153, -0.658429, -0.249309,
		1.105005, 0.548943, 3.479018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.010607, 1.350101, 3.433904>,  <1.602112, 1.009843, 3.653534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.010607, 1.350101, 3.433904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.910545, 0.991251, 3.579555>,  <0.850508, 0.775941, 3.666945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.910545, 0.991251, 3.579555>,  <1.010607, 1.350101, 3.433904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.910545, 0.991251, 3.579555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580391, 0.439968, 0.685254,
		-0.774964, -0.039917, -0.630744,
		-0.250154, -0.897126, 0.364127,
		0.835499, 0.722113, 3.688793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.271183, 1.261870, 3.485189>,  <1.010607, 1.350101, 3.433904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.271183, 1.261870, 3.485189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.420490, 0.987633, 3.735192>,  <0.510074, 0.823091, 3.885194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.420490, 0.987633, 3.735192>,  <0.271183, 1.261870, 3.485189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.420490, 0.987633, 3.735192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565787, 0.365681, 0.739028,
		-0.735225, -0.629476, -0.251403,
		0.373267, -0.685592, 0.625008,
		0.532470, 0.781955, 3.922695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.231583, 1.052276, 3.830695>,  <0.271183, 1.261870, 3.485189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.231583, 1.052276, 3.830695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.059948, 0.900248, 4.058504>,  <0.234867, 0.809030, 4.195189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.059948, 0.900248, 4.058504>,  <-0.231583, 1.052276, 3.830695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.059948, 0.900248, 4.058504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554028, 0.161392, 0.816704,
		-0.402322, -0.910768, -0.092944,
		0.728828, -0.380072, 0.569522,
		0.278596, 0.786226, 4.229361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.563798, 0.613034, 4.288720>,  <-0.231583, 1.052276, 3.830695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.563798, 0.613034, 4.288720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.221313, 0.723124, 4.463604>,  <-0.015823, 0.789178, 4.568534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.221313, 0.723124, 4.463604>,  <-0.563798, 0.613034, 4.288720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.221313, 0.723124, 4.463604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482393, 0.122986, 0.867278,
		0.184921, -0.953482, 0.238066,
		0.856214, 0.275220, 0.437211,
		0.035550, 0.805691, 4.594767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.593992, 0.232011, 4.911553>,  <-0.563798, 0.613034, 4.288720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.593992, 0.232011, 4.911553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.326984, 0.523973, 4.970415>,  <-0.166780, 0.699151, 5.005733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.326984, 0.523973, 4.970415>,  <-0.593992, 0.232011, 4.911553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.326984, 0.523973, 4.970415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379374, 0.163340, 0.910711,
		0.640698, -0.663744, 0.385940,
		0.667518, 0.729907, 0.147156,
		-0.126729, 0.742945, 5.014562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<-1.048498, 1.745133, 1.063468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.653099, 1.710930, 1.113367>,  <-0.415860, 1.690408, 1.143307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.653099, 1.710930, 1.113367>,  <-1.048498, 1.745133, 1.063468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.653099, 1.710930, 1.113367> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064375, -0.508500, -0.858652,
		0.136857, 0.856806, -0.497146,
		0.988497, -0.085508, 0.124748,
		-0.356550, 1.685277, 1.150792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.770280, 1.737891, 0.289918>,  <-1.048498, 1.745133, 1.063468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.770280, 1.737891, 0.289918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.491676, 1.565123, 0.519115>,  <-0.324514, 1.461462, 0.656634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.491676, 1.565123, 0.519115>,  <-0.770280, 1.737891, 0.289918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.491676, 1.565123, 0.519115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378127, -0.457733, -0.804675,
		0.609833, 0.777126, -0.155494,
		0.696508, -0.431921, 0.572993,
		-0.282724, 1.435546, 0.691013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.070346, 1.976295, 0.096819>,  <-0.770280, 1.737891, 0.289918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.070346, 1.976295, 0.096819> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.033569, 1.615941, 0.266502>,  <-0.011504, 1.399729, 0.368313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.033569, 1.615941, 0.266502>,  <-0.070346, 1.976295, 0.096819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.033569, 1.615941, 0.266502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613390, -0.284352, -0.736816,
		0.784410, 0.327949, 0.526450,
		0.091941, -0.900885, 0.424209,
		-0.005987, 1.345676, 0.393765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.686400, 1.762268, 0.245691>,  <-0.070346, 1.976295, 0.096819>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.686400, 1.762268, 0.245691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.433044, 1.463979, 0.163021>,  <0.281031, 1.285005, 0.113419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.433044, 1.463979, 0.163021>,  <0.686400, 1.762268, 0.245691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.433044, 1.463979, 0.163021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660375, -0.381663, -0.646714,
		0.403390, -0.546104, 0.734198,
		-0.633389, -0.745724, -0.206674,
		0.243028, 1.240262, 0.101019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.081763, 1.234341, 0.167396>,  <0.686400, 1.762268, 0.245691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.081763, 1.234341, 0.167396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757698, 1.131870, -0.043510>,  <0.563259, 1.070388, -0.170054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.757698, 1.131870, -0.043510>,  <1.081763, 1.234341, 0.167396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.757698, 1.131870, -0.043510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585710, -0.390684, -0.710148,
		-0.024071, -0.884161, 0.466563,
		-0.810163, -0.256177, -0.527266,
		0.514649, 1.055017, -0.201690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.195020, 0.540944, 0.089702>,  <1.081763, 1.234341, 0.167396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.195020, 0.540944, 0.089702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.926460, 0.630383, -0.192923>,  <0.765324, 0.684046, -0.362497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.926460, 0.630383, -0.192923>,  <1.195020, 0.540944, 0.089702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.926460, 0.630383, -0.192923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433995, -0.654191, -0.619421,
		-0.600726, -0.722523, 0.342183,
		-0.671399, 0.223596, -0.706561,
		0.725041, 0.697461, -0.404891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.820202, -0.106765, -0.121713>,  <1.195020, 0.540944, 0.089702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.820202, -0.106765, -0.121713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.765091, 0.152221, -0.421528>,  <0.732024, 0.307612, -0.601417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.765091, 0.152221, -0.421528>,  <0.820202, -0.106765, -0.121713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.765091, 0.152221, -0.421528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472967, -0.621892, -0.624141,
		-0.870241, -0.440500, -0.220546,
		-0.137779, 0.647465, -0.749538,
		0.723757, 0.346460, -0.646389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.724535, -0.447546, -0.774607>,  <0.820202, -0.106765, -0.121713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.724535, -0.447546, -0.774607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.786499, -0.086905, -0.936159>,  <0.823678, 0.129479, -1.033090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.786499, -0.086905, -0.936159>,  <0.724535, -0.447546, -0.774607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.786499, -0.086905, -0.936159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539158, -0.419721, -0.730166,
		-0.827835, -0.104645, -0.551125,
		0.154910, 0.901600, -0.403880,
		0.832972, 0.183575, -1.057323>
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
