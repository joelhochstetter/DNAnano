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
	<23.996435, 34.710976, 34.901333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.074957, 34.827648, 35.275795>,  <24.122070, 34.897652, 35.500473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.074957, 34.827648, 35.275795>,  <23.996435, 34.710976, 34.901333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.074957, 34.827648, 35.275795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707307, -0.703349, 0.070830,
		0.679104, 0.648245, -0.344378,
		0.196303, 0.291682, 0.936155,
		24.133848, 34.915154, 35.556641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.724442, 35.033638, 35.022858>,  <23.996435, 34.710976, 34.901333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.724442, 35.033638, 35.022858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.592600, 34.839348, 35.346695>,  <24.513494, 34.722775, 35.540997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.592600, 34.839348, 35.346695>,  <24.724442, 35.033638, 35.022858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.592600, 34.839348, 35.346695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755197, -0.650263, -0.082674,
		0.566604, 0.584151, 0.581144,
		-0.329602, -0.485722, 0.809591,
		24.493719, 34.693630, 35.589573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.253502, 34.520859, 35.017788>,  <24.724442, 35.033638, 35.022858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.253502, 34.520859, 35.017788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051565, 34.475910, 35.360134>,  <24.930403, 34.448940, 35.565544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.051565, 34.475910, 35.360134>,  <25.253502, 34.520859, 35.017788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.051565, 34.475910, 35.360134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589000, -0.769661, 0.246375,
		0.631043, 0.628486, 0.454742,
		-0.504840, -0.112370, 0.855867,
		24.900112, 34.442200, 35.616894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.562214, 34.711315, 35.579659>,  <25.253502, 34.520859, 35.017788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.562214, 34.711315, 35.579659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371408, 34.374790, 35.681370>,  <25.256926, 34.172874, 35.742397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.371408, 34.374790, 35.681370>,  <25.562214, 34.711315, 35.579659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.371408, 34.374790, 35.681370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813043, -0.312524, 0.491213,
		-0.333796, 0.441050, 0.833100,
		-0.477013, -0.841311, 0.254274,
		25.228304, 34.122398, 35.757652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.472319, 35.501293, 35.834385>,  <25.562214, 34.711315, 35.579659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.472319, 35.501293, 35.834385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304274, 35.294163, 36.132477>,  <25.203447, 35.169884, 36.311333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.304274, 35.294163, 36.132477>,  <25.472319, 35.501293, 35.834385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.304274, 35.294163, 36.132477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906072, 0.193759, -0.376152,
		0.050387, -0.833255, -0.550588,
		-0.420112, -0.517826, 0.745227,
		25.178240, 35.138813, 36.356045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.948915, 35.505936, 36.483547>,  <25.472319, 35.501293, 35.834385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.948915, 35.505936, 36.483547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136976, 35.740784, 36.747139>,  <26.249813, 35.881691, 36.905293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136976, 35.740784, 36.747139>,  <25.948915, 35.505936, 36.483547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136976, 35.740784, 36.747139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594667, 0.340990, -0.728078,
		-0.652172, 0.734178, -0.188823,
		0.470152, 0.587119, 0.658975,
		26.278021, 35.916920, 36.944832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.925739, 36.246780, 36.216404>,  <25.948915, 35.505936, 36.483547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.925739, 36.246780, 36.216404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226379, 36.091873, 36.429989>,  <26.406763, 35.998928, 36.558140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226379, 36.091873, 36.429989>,  <25.925739, 36.246780, 36.216404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226379, 36.091873, 36.429989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601459, 0.070013, -0.795830,
		0.270815, 0.919305, 0.285548,
		0.751602, -0.387268, 0.533964,
		26.451860, 35.975693, 36.590179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607733, 36.212612, 36.026768>,  <25.925739, 36.246780, 36.216404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607733, 36.212612, 36.026768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920734, 36.267296, 35.783787>,  <27.108536, 36.300106, 35.637997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920734, 36.267296, 35.783787>,  <26.607733, 36.212612, 36.026768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920734, 36.267296, 35.783787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398203, 0.640130, 0.657014,
		0.478668, -0.756006, 0.446466,
		0.782503, 0.136707, -0.607454,
		27.155485, 36.308308, 35.601551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157862, 36.096214, 36.444157>,  <26.607733, 36.212612, 36.026768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157862, 36.096214, 36.444157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272146, 36.309479, 36.125633>,  <27.340717, 36.437439, 35.934521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.272146, 36.309479, 36.125633>,  <27.157862, 36.096214, 36.444157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.272146, 36.309479, 36.125633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468654, 0.647066, 0.601389,
		0.835902, -0.545017, -0.064994,
		0.285712, 0.533162, -0.796308,
		27.357861, 36.469429, 35.886742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.870728, 36.250656, 36.594696>,  <27.157862, 36.096214, 36.444157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.870728, 36.250656, 36.594696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772154, 36.526363, 36.322174>,  <27.713011, 36.691788, 36.158661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.772154, 36.526363, 36.322174>,  <27.870728, 36.250656, 36.594696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.772154, 36.526363, 36.322174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404498, 0.711979, 0.573992,
		0.880711, -0.134138, -0.454263,
		-0.246432, 0.689269, -0.681307,
		27.698225, 36.733143, 36.117783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.323370, 36.835892, 36.633965>,  <27.870728, 36.250656, 36.594696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.323370, 36.835892, 36.633965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025076, 37.010921, 36.433006>,  <27.846100, 37.115940, 36.312431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.025076, 37.010921, 36.433006>,  <28.323370, 36.835892, 36.633965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025076, 37.010921, 36.433006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153899, 0.846824, 0.509121,
		0.648222, 0.302351, -0.698850,
		-0.745737, 0.437575, -0.502399,
		27.801355, 37.142193, 36.282288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567656, 37.352551, 36.340122>,  <28.323370, 36.835892, 36.633965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567656, 37.352551, 36.340122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179630, 37.423687, 36.406273>,  <27.946815, 37.466370, 36.445965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.179630, 37.423687, 36.406273>,  <28.567656, 37.352551, 36.340122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.179630, 37.423687, 36.406273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239825, 0.808689, 0.537127,
		-0.038217, 0.560709, -0.827130,
		-0.970064, 0.177839, 0.165378,
		27.888611, 37.477039, 36.455887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453854, 37.864624, 36.897213>,  <28.567656, 37.352551, 36.340122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.453854, 37.864624, 36.897213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072466, 37.900631, 36.782116>,  <27.843634, 37.922234, 36.713058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.072466, 37.900631, 36.782116>,  <28.453854, 37.864624, 36.897213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072466, 37.900631, 36.782116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153137, 0.677523, 0.719383,
		0.259706, 0.729973, -0.632212,
		-0.953468, 0.090013, -0.287743,
		27.786425, 37.927635, 36.695793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662247, 37.865723, 37.221092>,  <28.453854, 37.864624, 36.897213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662247, 37.865723, 37.221092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586304, 38.146603, 36.946613>,  <27.540737, 38.315132, 36.781925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.586304, 38.146603, 36.946613>,  <27.662247, 37.865723, 37.221092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.586304, 38.146603, 36.946613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102747, -0.709281, -0.697398,
		-0.976420, -0.061902, 0.206812,
		-0.189858, 0.702203, -0.686196,
		27.529346, 38.357262, 36.740753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.011843, 37.670265, 36.983326>,  <27.662247, 37.865723, 37.221092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.011843, 37.670265, 36.983326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233444, 37.841728, 36.697857>,  <27.366405, 37.944607, 36.526573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233444, 37.841728, 36.697857>,  <27.011843, 37.670265, 36.983326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233444, 37.841728, 36.697857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115031, -0.809618, -0.575574,
		-0.824529, 0.400965, -0.399223,
		0.554004, 0.428654, -0.713677,
		27.399645, 37.970325, 36.483753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.640396, 37.629131, 36.329861>,  <27.011843, 37.670265, 36.983326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.640396, 37.629131, 36.329861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033129, 37.665047, 36.262993>,  <27.268768, 37.686596, 36.222874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.033129, 37.665047, 36.262993>,  <26.640396, 37.629131, 36.329861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033129, 37.665047, 36.262993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059254, -0.691842, -0.719614,
		-0.180269, 0.716444, -0.673951,
		0.981831, 0.089790, -0.167170,
		27.327679, 37.691982, 36.212841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.813881, 37.624916, 35.621544>,  <26.640396, 37.629131, 36.329861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.813881, 37.624916, 35.621544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137106, 37.487007, 35.812611>,  <27.331041, 37.404263, 35.927250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.137106, 37.487007, 35.812611>,  <26.813881, 37.624916, 35.621544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.137106, 37.487007, 35.812611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103475, -0.715171, -0.691248,
		0.579938, 0.607998, -0.542227,
		0.808062, -0.344774, 0.477668,
		27.379524, 37.383575, 35.955910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.334595, 37.476753, 35.088474>,  <26.813881, 37.624916, 35.621544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.334595, 37.476753, 35.088474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429527, 37.253185, 35.406288>,  <27.486486, 37.119045, 35.596977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.429527, 37.253185, 35.406288>,  <27.334595, 37.476753, 35.088474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.429527, 37.253185, 35.406288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010566, -0.819337, -0.573215,
		0.971371, 0.127648, -0.200362,
		0.237333, -0.558921, 0.794531,
		27.500727, 37.085510, 35.644646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.927446, 37.132862, 34.881901>,  <27.334595, 37.476753, 35.088474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.927446, 37.132862, 34.881901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737625, 36.940281, 35.176655>,  <27.623732, 36.824734, 35.353508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737625, 36.940281, 35.176655>,  <27.927446, 37.132862, 34.881901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737625, 36.940281, 35.176655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153515, -0.779059, -0.607865,
		0.866736, -0.401589, 0.295797,
		-0.474555, -0.481449, 0.736888,
		27.595259, 36.795845, 35.397720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.001320, 36.580673, 34.651012>,  <27.927446, 37.132862, 34.881901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.001320, 36.580673, 34.651012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780117, 36.490639, 34.971889>,  <27.647396, 36.436619, 35.164417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.780117, 36.490639, 34.971889>,  <28.001320, 36.580673, 34.651012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.780117, 36.490639, 34.971889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248283, -0.874553, -0.416548,
		0.795323, -0.429526, 0.427749,
		-0.553008, -0.225087, 0.802196,
		27.614214, 36.423111, 35.212547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272520, 35.893730, 35.068092>,  <28.001320, 36.580673, 34.651012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272520, 35.893730, 35.068092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884359, 35.984287, 35.034470>,  <27.651463, 36.038620, 35.014297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.884359, 35.984287, 35.034470>,  <28.272520, 35.893730, 35.068092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.884359, 35.984287, 35.034470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186656, -0.923998, -0.333746,
		-0.153220, -0.308179, 0.938908,
		-0.970403, 0.226389, -0.084052,
		27.593239, 36.052204, 35.009254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.821571, 35.413292, 35.526798>,  <28.272520, 35.893730, 35.068092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.821571, 35.413292, 35.526798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681822, 35.504448, 35.163258>,  <27.597973, 35.559143, 34.945133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.681822, 35.504448, 35.163258>,  <27.821571, 35.413292, 35.526798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.681822, 35.504448, 35.163258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101607, -0.973466, -0.205038,
		-0.931459, 0.020711, 0.363257,
		-0.349372, 0.227894, -0.908847,
		27.577009, 35.572815, 34.890602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000053, 35.304958, 35.404869>,  <27.821571, 35.413292, 35.526798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000053, 35.304958, 35.404869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248026, 35.225521, 35.101223>,  <27.396809, 35.177860, 34.919037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.248026, 35.225521, 35.101223>,  <27.000053, 35.304958, 35.404869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248026, 35.225521, 35.101223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340103, -0.939848, -0.031869,
		-0.707120, 0.277932, -0.650181,
		0.619929, -0.198593, -0.759111,
		27.434004, 35.165943, 34.873489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.611891, 35.047810, 34.790134>,  <27.000053, 35.304958, 35.404869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.611891, 35.047810, 34.790134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980185, 34.908321, 34.860157>,  <27.201160, 34.824627, 34.902168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.980185, 34.908321, 34.860157>,  <26.611891, 35.047810, 34.790134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.980185, 34.908321, 34.860157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358622, -0.933078, 0.027495,
		0.153749, -0.088093, -0.984175,
		0.920734, -0.348720, 0.175052,
		27.256405, 34.803707, 34.912674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.873617, 34.682491, 34.207565>,  <26.611891, 35.047810, 34.790134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.873617, 34.682491, 34.207565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970308, 34.565533, 34.577660>,  <27.028324, 34.495358, 34.799717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.970308, 34.565533, 34.577660>,  <26.873617, 34.682491, 34.207565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.970308, 34.565533, 34.577660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649905, -0.756841, -0.069388,
		0.720549, -0.584545, -0.372984,
		0.241729, -0.292401, 0.925240,
		27.042828, 34.477814, 34.855232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.205187, 33.958099, 34.125092>,  <26.873617, 34.682491, 34.207565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.205187, 33.958099, 34.125092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096334, 34.041866, 34.500771>,  <27.031023, 34.092125, 34.726177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096334, 34.041866, 34.500771>,  <27.205187, 33.958099, 34.125092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096334, 34.041866, 34.500771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523882, -0.850945, 0.037941,
		0.807150, -0.481703, 0.341278,
		-0.272132, 0.209414, 0.939196,
		27.014694, 34.104691, 34.782528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.226862, 33.306377, 34.558758>,  <27.205187, 33.958099, 34.125092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.226862, 33.306377, 34.558758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965862, 33.569229, 34.709717>,  <26.809263, 33.726940, 34.800293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.965862, 33.569229, 34.709717>,  <27.226862, 33.306377, 34.558758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.965862, 33.569229, 34.709717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614304, -0.750292, 0.244319,
		0.443709, -0.072421, 0.893240,
		-0.652497, 0.657127, 0.377400,
		26.770113, 33.766369, 34.822937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896627, 33.008606, 34.178368>,  <27.226862, 33.306377, 34.558758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896627, 33.008606, 34.178368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883341, 33.095524, 34.568584>,  <27.875370, 33.147675, 34.802715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.883341, 33.095524, 34.568584>,  <27.896627, 33.008606, 34.178368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.883341, 33.095524, 34.568584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158404, -0.964887, 0.209527,
		0.986816, -0.147570, 0.066470,
		-0.033216, 0.217293, 0.975541,
		27.873377, 33.160713, 34.861248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.490137, 32.712910, 34.559017>,  <27.896627, 33.008606, 34.178368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.490137, 32.712910, 34.559017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132231, 32.734680, 34.736298>,  <27.917486, 32.747742, 34.842667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.132231, 32.734680, 34.736298>,  <28.490137, 32.712910, 34.559017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.132231, 32.734680, 34.736298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006744, -0.990784, 0.135286,
		0.446484, 0.124038, 0.886153,
		-0.894766, 0.054426, 0.443206,
		27.863800, 32.751007, 34.869259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.531609, 32.166271, 35.087181>,  <28.490137, 32.712910, 34.559017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.531609, 32.166271, 35.087181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137640, 32.235474, 35.086636>,  <27.901258, 32.276997, 35.086308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.137640, 32.235474, 35.086636>,  <28.531609, 32.166271, 35.087181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137640, 32.235474, 35.086636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173007, -0.984818, 0.014196,
		0.001109, 0.014218, 0.999898,
		-0.984920, 0.173005, -0.001368,
		27.842163, 32.287376, 35.086224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319178, 31.925600, 35.689842>,  <28.531609, 32.166271, 35.087181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319178, 31.925600, 35.689842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991209, 31.908325, 35.461506>,  <27.794428, 31.897961, 35.324505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.991209, 31.908325, 35.461506>,  <28.319178, 31.925600, 35.689842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.991209, 31.908325, 35.461506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081217, -0.978290, 0.190665,
		-0.566683, 0.202693, 0.798614,
		-0.819923, -0.043186, -0.570843,
		27.745232, 31.895369, 35.290253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656160, 31.578100, 36.035931>,  <28.319178, 31.925600, 35.689842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656160, 31.578100, 36.035931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662645, 31.520805, 35.640110>,  <27.666536, 31.486429, 35.402618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.662645, 31.520805, 35.640110>,  <27.656160, 31.578100, 36.035931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.662645, 31.520805, 35.640110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149661, -0.978884, 0.139241,
		-0.988605, 0.145840, -0.037305,
		0.016210, -0.143237, -0.989556,
		27.667509, 31.477835, 35.343243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.119957, 31.265987, 35.953194>,  <27.656160, 31.578100, 36.035931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.119957, 31.265987, 35.953194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319220, 31.192377, 35.614262>,  <27.438778, 31.148211, 35.410900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319220, 31.192377, 35.614262>,  <27.119957, 31.265987, 35.953194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319220, 31.192377, 35.614262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229416, -0.970367, 0.075869,
		-0.836187, 0.156597, -0.525612,
		0.498156, -0.184024, -0.847334,
		27.468666, 31.137169, 35.360062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.760735, 30.954781, 35.419163>,  <27.119957, 31.265987, 35.953194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.760735, 30.954781, 35.419163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140228, 30.831402, 35.391552>,  <27.367924, 30.757374, 35.374985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.140228, 30.831402, 35.391552>,  <26.760735, 30.954781, 35.419163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.140228, 30.831402, 35.391552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305618, -0.950912, 0.048623,
		-0.080632, -0.025036, -0.996430,
		0.948734, -0.308447, -0.069022,
		27.424849, 30.738867, 35.370846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.035414, 30.585440, 34.865555>,  <26.760735, 30.954781, 35.419163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.035414, 30.585440, 34.865555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258499, 30.471399, 35.177368>,  <27.392349, 30.402975, 35.364456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258499, 30.471399, 35.177368>,  <27.035414, 30.585440, 34.865555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258499, 30.471399, 35.177368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365927, -0.927421, -0.077388,
		0.745021, -0.242092, -0.621559,
		0.557712, -0.285101, 0.779535,
		27.425812, 30.385868, 35.411228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.633257, 30.146467, 34.664623>,  <27.035414, 30.585440, 34.865555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.633257, 30.146467, 34.664623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490541, 30.094652, 35.034687>,  <27.404911, 30.063562, 35.256725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490541, 30.094652, 35.034687>,  <27.633257, 30.146467, 34.664623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490541, 30.094652, 35.034687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447879, -0.845382, -0.291092,
		0.819821, -0.518218, 0.243606,
		-0.356789, -0.129537, 0.925160,
		27.383505, 30.055792, 35.312237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.286821, 30.495577, 34.812347>,  <27.633257, 30.146467, 34.664623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.286821, 30.495577, 34.812347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909983, 30.611637, 34.879597>,  <27.683880, 30.681273, 34.919945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909983, 30.611637, 34.879597>,  <28.286821, 30.495577, 34.812347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909983, 30.611637, 34.879597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230683, 0.924626, -0.303072,
		-0.243386, -0.246740, -0.938021,
		-0.942098, 0.290149, 0.168122,
		27.627354, 30.698681, 34.930035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.111359, 30.911997, 34.242760>,  <28.286821, 30.495577, 34.812347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.111359, 30.911997, 34.242760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903135, 30.982189, 34.577000>,  <27.778202, 31.024303, 34.777542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.903135, 30.982189, 34.577000>,  <28.111359, 30.911997, 34.242760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.903135, 30.982189, 34.577000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028609, 0.981688, -0.188336,
		-0.853347, -0.074134, -0.516045,
		-0.520557, 0.175480, 0.835600,
		27.746967, 31.034834, 34.827679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525410, 31.271053, 34.092163>,  <28.111359, 30.911997, 34.242760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525410, 31.271053, 34.092163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593546, 31.342686, 34.479752>,  <27.634428, 31.385664, 34.712307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.593546, 31.342686, 34.479752>,  <27.525410, 31.271053, 34.092163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.593546, 31.342686, 34.479752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104505, 0.974518, -0.198475,
		-0.979828, 0.135072, 0.147287,
		0.170343, 0.179079, 0.968976,
		27.644650, 31.396410, 34.770443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951910, 31.467205, 34.315449>,  <27.525410, 31.271053, 34.092163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951910, 31.467205, 34.315449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087530, 31.538147, 34.685009>,  <27.168903, 31.580711, 34.906746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087530, 31.538147, 34.685009>,  <26.951910, 31.467205, 34.315449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087530, 31.538147, 34.685009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180987, 0.951427, -0.249058,
		-0.923194, 0.251657, 0.290484,
		0.339052, 0.177355, 0.923899,
		27.189245, 31.591352, 34.962177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.648535, 32.066742, 34.618580>,  <26.951910, 31.467205, 34.315449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.648535, 32.066742, 34.618580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981585, 32.006302, 34.831711>,  <27.181414, 31.970037, 34.959591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.981585, 32.006302, 34.831711>,  <26.648535, 32.066742, 34.618580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.981585, 32.006302, 34.831711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179257, 0.983801, -0.001128,
		-0.524027, 0.096453, 0.846222,
		0.832624, -0.151101, 0.532828,
		27.231371, 31.960972, 34.991558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596748, 32.529053, 35.092522>,  <26.648535, 32.066742, 34.618580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596748, 32.529053, 35.092522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990822, 32.463131, 35.111511>,  <27.227266, 32.423576, 35.122906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.990822, 32.463131, 35.111511>,  <26.596748, 32.529053, 35.092522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.990822, 32.463131, 35.111511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163579, 0.986114, 0.028667,
		-0.051536, -0.020477, 0.998461,
		0.985183, -0.164805, 0.047470,
		27.286377, 32.413689, 35.125751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903252, 32.844635, 35.692398>,  <26.596748, 32.529053, 35.092522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903252, 32.844635, 35.692398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174438, 32.841358, 35.398380>,  <27.337151, 32.839394, 35.221970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174438, 32.841358, 35.398380>,  <26.903252, 32.844635, 35.692398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174438, 32.841358, 35.398380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004938, 0.999865, -0.015697,
		0.735076, 0.014271, 0.677835,
		0.677967, -0.008191, -0.735047,
		27.377829, 32.838902, 35.177868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.488352, 33.379250, 35.882236>,  <26.903252, 32.844635, 35.692398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.488352, 33.379250, 35.882236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470633, 33.290844, 35.492531>,  <27.460001, 33.237801, 35.258709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.470633, 33.290844, 35.492531>,  <27.488352, 33.379250, 35.882236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.470633, 33.290844, 35.492531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168271, 0.959637, -0.225348,
		0.984745, -0.173923, -0.005319,
		-0.044298, -0.221015, -0.974264,
		27.457344, 33.224541, 35.200253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.146540, 33.476311, 35.435062>,  <27.488352, 33.379250, 35.882236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.146540, 33.476311, 35.435062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844810, 33.527222, 35.177444>,  <27.663773, 33.557770, 35.022873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.844810, 33.527222, 35.177444>,  <28.146540, 33.476311, 35.435062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.844810, 33.527222, 35.177444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268671, 0.954961, -0.125957,
		0.599007, -0.268049, -0.754546,
		-0.754325, 0.127276, -0.644046,
		27.618513, 33.565403, 34.984230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.415981, 34.057331, 34.978653>,  <28.146540, 33.476311, 35.435062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.415981, 34.057331, 34.978653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018110, 34.033009, 34.945385>,  <27.779387, 34.018417, 34.925426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.018110, 34.033009, 34.945385>,  <28.415981, 34.057331, 34.978653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018110, 34.033009, 34.945385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051911, 0.993097, -0.105182,
		0.088988, -0.100305, -0.990969,
		-0.994679, -0.060802, -0.083167,
		27.719707, 34.014767, 34.920433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.315413, 33.709816, 34.250534>,  <28.415981, 34.057331, 34.978653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.315413, 33.709816, 34.250534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008886, 33.882065, 34.059818>,  <27.824970, 33.985413, 33.945389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008886, 33.882065, 34.059818>,  <28.315413, 33.709816, 34.250534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008886, 33.882065, 34.059818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583458, 0.777133, -0.235882,
		0.268950, -0.458945, -0.846780,
		-0.766317, 0.430620, -0.476785,
		27.778992, 34.011250, 33.916782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.452641, 33.819561, 33.479103>,  <28.315413, 33.709816, 34.250534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.452641, 33.819561, 33.479103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200342, 34.079319, 33.649021>,  <28.048964, 34.235172, 33.750973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200342, 34.079319, 33.649021>,  <28.452641, 33.819561, 33.479103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200342, 34.079319, 33.649021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598143, 0.755611, -0.266979,
		-0.494354, 0.085692, -0.865027,
		-0.630745, 0.649392, 0.424795,
		28.011118, 34.274136, 33.776459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414879, 34.281013, 32.980534>,  <28.452641, 33.819561, 33.479103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414879, 34.281013, 32.980534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343821, 34.437725, 33.341633>,  <28.301186, 34.531754, 33.558292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343821, 34.437725, 33.341633>,  <28.414879, 34.281013, 32.980534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343821, 34.437725, 33.341633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609470, 0.764037, -0.211647,
		-0.772650, 0.512598, -0.374506,
		-0.177647, 0.391779, 0.902746,
		28.290527, 34.555260, 33.612457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.794628, 34.980869, 32.998226>,  <28.414879, 34.281013, 32.980534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.794628, 34.980869, 32.998226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996294, 35.070068, 33.331955>,  <29.117294, 35.123589, 33.532192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.996294, 35.070068, 33.331955>,  <28.794628, 34.980869, 32.998226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.996294, 35.070068, 33.331955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134236, -0.974580, 0.179375,
		0.853111, 0.021561, -0.521283,
		0.504164, 0.223002, 0.834319,
		29.147543, 35.136971, 33.582253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.511930, 34.679272, 32.970440>,  <28.794628, 34.980869, 32.998226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.511930, 34.679272, 32.970440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375885, 34.711990, 33.345169>,  <29.294258, 34.731621, 33.570007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.375885, 34.711990, 33.345169>,  <29.511930, 34.679272, 32.970440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.375885, 34.711990, 33.345169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105440, -0.986610, 0.124428,
		0.934455, 0.141098, 0.326933,
		-0.340112, 0.081801, 0.936820,
		29.273851, 34.736530, 33.626217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997515, 34.561825, 33.474422>,  <29.511930, 34.679272, 32.970440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997515, 34.561825, 33.474422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341509, 34.711712, 33.612995>,  <30.547905, 34.801643, 33.696140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.341509, 34.711712, 33.612995>,  <29.997515, 34.561825, 33.474422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341509, 34.711712, 33.612995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030641, -0.639716, 0.768000,
		0.509399, -0.671084, -0.538665,
		0.859985, 0.374714, 0.346433,
		30.599504, 34.824127, 33.716927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.432537, 34.380428, 34.039684>,  <29.997515, 34.561825, 33.474422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.432537, 34.380428, 34.039684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755291, 34.491165, 33.830956>,  <30.948942, 34.557610, 33.705719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755291, 34.491165, 33.830956>,  <30.432537, 34.380428, 34.039684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755291, 34.491165, 33.830956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020616, -0.869642, -0.493252,
		-0.590352, 0.408754, -0.695992,
		0.806883, 0.276844, -0.521822,
		30.997356, 34.574219, 33.674408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.176167, 34.190643, 34.112476>,  <30.432537, 34.380428, 34.039684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.176167, 34.190643, 34.112476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448111, 33.923553, 34.233761>,  <31.611277, 33.763302, 34.306530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.448111, 33.923553, 34.233761>,  <31.176167, 34.190643, 34.112476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.448111, 33.923553, 34.233761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542852, -0.180242, 0.820259,
		-0.493053, -0.722260, -0.485014,
		0.679860, -0.667722, 0.303211,
		31.652069, 33.723236, 34.324726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800217, 33.607475, 34.392727>,  <31.176167, 34.190643, 34.112476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800217, 33.607475, 34.392727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152016, 33.620636, 34.582634>,  <31.363094, 33.628532, 34.696579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152016, 33.620636, 34.582634>,  <30.800217, 33.607475, 34.392727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152016, 33.620636, 34.582634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448049, -0.279064, 0.849338,
		0.160437, -0.959709, -0.230693,
		0.879495, 0.032904, 0.474768,
		31.415865, 33.630508, 34.725063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876173, 32.909561, 34.729805>,  <30.800217, 33.607475, 34.392727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876173, 32.909561, 34.729805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063513, 33.210209, 34.915588>,  <31.175917, 33.390598, 35.027058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063513, 33.210209, 34.915588>,  <30.876173, 32.909561, 34.729805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063513, 33.210209, 34.915588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528868, -0.182615, 0.828825,
		0.707777, -0.633814, 0.311979,
		0.468349, 0.751619, 0.464455,
		31.204018, 33.435696, 35.054924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863670, 32.653927, 35.425304>,  <30.876173, 32.909561, 34.729805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863670, 32.653927, 35.425304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949551, 33.044579, 35.429363>,  <31.001078, 33.278969, 35.431801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949551, 33.044579, 35.429363>,  <30.863670, 32.653927, 35.425304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949551, 33.044579, 35.429363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643107, 0.133543, 0.754042,
		0.735063, -0.168419, 0.656747,
		0.214699, 0.976627, 0.010149,
		31.013960, 33.337566, 35.432407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121925, 32.844753, 36.097713>,  <30.863670, 32.653927, 35.425304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121925, 32.844753, 36.097713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950180, 33.164135, 35.928902>,  <30.847134, 33.355766, 35.827614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950180, 33.164135, 35.928902>,  <31.121925, 32.844753, 36.097713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950180, 33.164135, 35.928902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515821, 0.166773, 0.840307,
		0.741334, 0.578490, 0.340255,
		-0.429364, 0.798459, -0.422032,
		30.821371, 33.403671, 35.802292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337343, 33.503063, 36.403976>,  <31.121925, 32.844753, 36.097713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337343, 33.503063, 36.403976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975716, 33.362106, 36.307247>,  <30.758739, 33.277531, 36.249210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.975716, 33.362106, 36.307247>,  <31.337343, 33.503063, 36.403976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975716, 33.362106, 36.307247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371860, 0.369675, 0.851504,
		-0.210667, 0.859744, -0.465253,
		-0.904068, -0.352393, -0.241826,
		30.704494, 33.256390, 36.234699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.853628, 34.056156, 36.575733>,  <31.337343, 33.503063, 36.403976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.853628, 34.056156, 36.575733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671473, 33.700924, 36.600800>,  <30.562180, 33.487785, 36.615841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671473, 33.700924, 36.600800>,  <30.853628, 34.056156, 36.575733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671473, 33.700924, 36.600800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699276, 0.400362, 0.592218,
		-0.551028, 0.225870, -0.803337,
		-0.455390, -0.888084, 0.062666,
		30.534855, 33.434498, 36.619598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129726, 34.007370, 36.269485>,  <30.853628, 34.056156, 36.575733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129726, 34.007370, 36.269485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190985, 33.742180, 36.562607>,  <30.227739, 33.583065, 36.738480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190985, 33.742180, 36.562607>,  <30.129726, 34.007370, 36.269485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190985, 33.742180, 36.562607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565790, 0.549154, 0.615070,
		-0.810202, -0.508811, -0.291005,
		0.153148, -0.662979, 0.732806,
		30.236929, 33.543285, 36.782448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.998724, 34.319553, 35.537582>,  <30.129726, 34.007370, 36.269485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.998724, 34.319553, 35.537582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304111, 34.248032, 35.785820>,  <30.487345, 34.205116, 35.934765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304111, 34.248032, 35.785820>,  <29.998724, 34.319553, 35.537582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304111, 34.248032, 35.785820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619603, -0.068334, -0.781935,
		0.182224, 0.981508, 0.058620,
		0.763470, -0.178808, 0.620598,
		30.533152, 34.194389, 35.972000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588829, 34.665565, 35.446709>,  <29.998724, 34.319553, 35.537582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588829, 34.665565, 35.446709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738108, 34.329605, 35.604332>,  <30.827675, 34.128029, 35.698906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.738108, 34.329605, 35.604332>,  <30.588829, 34.665565, 35.446709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.738108, 34.329605, 35.604332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717271, -0.008190, -0.696746,
		0.588428, 0.542671, 0.599383,
		0.373195, -0.839906, 0.394061,
		30.850065, 34.077633, 35.722549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265450, 34.604893, 35.639870>,  <30.588829, 34.665565, 35.446709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265450, 34.604893, 35.639870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201321, 34.215652, 35.573704>,  <31.162844, 33.982109, 35.534004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201321, 34.215652, 35.573704>,  <31.265450, 34.604893, 35.639870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201321, 34.215652, 35.573704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770315, -0.018560, -0.637393,
		0.617180, -0.229612, 0.752573,
		-0.160321, -0.973105, -0.165419,
		31.153225, 33.923721, 35.524078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.961309, 34.313828, 35.648109>,  <31.265450, 34.604893, 35.639870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.961309, 34.313828, 35.648109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721388, 34.058704, 35.454845>,  <31.577435, 33.905632, 35.338886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721388, 34.058704, 35.454845>,  <31.961309, 34.313828, 35.648109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721388, 34.058704, 35.454845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713733, -0.153517, -0.683387,
		0.361694, -0.754743, 0.547302,
		-0.599802, -0.637805, -0.483159,
		31.541447, 33.867363, 35.309898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463615, 33.830677, 35.426720>,  <31.961309, 34.313828, 35.648109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463615, 33.830677, 35.426720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137581, 33.797440, 35.197384>,  <31.941959, 33.777496, 35.059780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.137581, 33.797440, 35.197384>,  <32.463615, 33.830677, 35.426720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.137581, 33.797440, 35.197384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578852, -0.076454, -0.811841,
		0.023625, -0.993604, 0.110417,
		-0.815090, -0.083094, -0.573343,
		31.893053, 33.772511, 35.025379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.613953, 33.386192, 34.906818>,  <32.463615, 33.830677, 35.426720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.613953, 33.386192, 34.906818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274979, 33.550701, 34.772533>,  <32.071594, 33.649406, 34.691963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274979, 33.550701, 34.772533>,  <32.613953, 33.386192, 34.906818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274979, 33.550701, 34.772533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318368, -0.112353, -0.941286,
		-0.424841, -0.904563, -0.035723,
		-0.847439, 0.411270, -0.335716,
		32.020748, 33.674080, 34.671818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302185, 32.925392, 34.425945>,  <32.613953, 33.386192, 34.906818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302185, 32.925392, 34.425945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207817, 33.304581, 34.340435>,  <32.151196, 33.532093, 34.289131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207817, 33.304581, 34.340435>,  <32.302185, 32.925392, 34.425945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207817, 33.304581, 34.340435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417848, -0.099651, -0.903036,
		-0.877352, -0.302365, -0.372598,
		-0.235916, 0.947969, -0.213771,
		32.137043, 33.588970, 34.276302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047462, 32.864124, 33.815472>,  <32.302185, 32.925392, 34.425945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047462, 32.864124, 33.815472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188522, 33.233490, 33.876060>,  <32.273159, 33.455109, 33.912415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188522, 33.233490, 33.876060>,  <32.047462, 32.864124, 33.815472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188522, 33.233490, 33.876060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568435, -0.082816, -0.818550,
		-0.743316, 0.374764, -0.554106,
		0.352652, 0.923414, 0.151471,
		32.294319, 33.510513, 33.921501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848558, 33.348763, 33.160488>,  <32.047462, 32.864124, 33.815472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848558, 33.348763, 33.160488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174202, 33.460758, 33.363991>,  <32.369587, 33.527954, 33.486092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174202, 33.460758, 33.363991>,  <31.848558, 33.348763, 33.160488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174202, 33.460758, 33.363991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495930, 0.120587, -0.859949,
		-0.302126, 0.952399, -0.040684,
		0.814109, 0.279990, 0.508756,
		32.418434, 33.544754, 33.516617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048912, 34.066406, 32.918415>,  <31.848558, 33.348763, 33.160488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048912, 34.066406, 32.918415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366325, 33.879757, 33.074657>,  <32.556774, 33.767769, 33.168404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366325, 33.879757, 33.074657>,  <32.048912, 34.066406, 32.918415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366325, 33.879757, 33.074657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540151, 0.244479, -0.805274,
		0.280264, 0.849996, 0.446048,
		0.793529, -0.466623, 0.390607,
		32.604385, 33.739769, 33.191841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578548, 34.554817, 32.811604>,  <32.048912, 34.066406, 32.918415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578548, 34.554817, 32.811604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761883, 34.204109, 32.869850>,  <32.871883, 33.993683, 32.904797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761883, 34.204109, 32.869850>,  <32.578548, 34.554817, 32.811604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761883, 34.204109, 32.869850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757467, 0.299631, -0.580056,
		0.464945, 0.376158, 0.801456,
		0.458334, -0.876770, 0.145615,
		32.899384, 33.941078, 32.913536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.299976, 34.697865, 32.963642>,  <32.578548, 34.554817, 32.811604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.299976, 34.697865, 32.963642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287842, 34.313232, 32.854500>,  <33.280560, 34.082455, 32.789017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287842, 34.313232, 32.854500>,  <33.299976, 34.697865, 32.963642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287842, 34.313232, 32.854500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764075, 0.153684, -0.626554,
		0.644413, -0.227487, 0.730056,
		-0.030335, -0.961577, -0.272853,
		33.278740, 34.024757, 32.772644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981937, 34.530609, 32.993889>,  <33.299976, 34.697865, 32.963642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981937, 34.530609, 32.993889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797031, 34.249889, 32.777077>,  <33.686089, 34.081459, 32.646992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.797031, 34.249889, 32.777077>,  <33.981937, 34.530609, 32.993889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797031, 34.249889, 32.777077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721859, 0.057186, -0.689673,
		0.515009, -0.710075, 0.480165,
		-0.462261, -0.701800, -0.542026,
		33.658352, 34.039349, 32.614468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549179, 34.157921, 32.909489>,  <33.981937, 34.530609, 32.993889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549179, 34.157921, 32.909489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282970, 34.063038, 32.626415>,  <34.123245, 34.006107, 32.456570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.282970, 34.063038, 32.626415>,  <34.549179, 34.157921, 32.909489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282970, 34.063038, 32.626415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719760, 0.047004, -0.692630,
		0.197561, -0.970321, 0.139450,
		-0.665519, -0.237207, -0.707685,
		34.083313, 33.991875, 32.414108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845695, 33.617779, 32.604282>,  <34.549179, 34.157921, 32.909489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845695, 33.617779, 32.604282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604385, 33.769981, 32.323921>,  <34.459599, 33.861301, 32.155704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604385, 33.769981, 32.323921>,  <34.845695, 33.617779, 32.604282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604385, 33.769981, 32.323921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789186, 0.158024, -0.593477,
		-0.115062, -0.911176, -0.395624,
		-0.603280, 0.380508, -0.700904,
		34.423401, 33.884132, 32.113651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070454, 33.234684, 32.070435>,  <34.845695, 33.617779, 32.604282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070454, 33.234684, 32.070435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864616, 33.545361, 31.925137>,  <34.741116, 33.731766, 31.837957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.864616, 33.545361, 31.925137>,  <35.070454, 33.234684, 32.070435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864616, 33.545361, 31.925137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659409, 0.087692, -0.746653,
		-0.548065, -0.623748, -0.557283,
		-0.514592, 0.776691, -0.363244,
		34.710239, 33.778366, 31.816164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148598, 33.135250, 31.387850>,  <35.070454, 33.234684, 32.070435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148598, 33.135250, 31.387850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046654, 33.521679, 31.404587>,  <34.985485, 33.753536, 31.414629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046654, 33.521679, 31.404587>,  <35.148598, 33.135250, 31.387850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046654, 33.521679, 31.404587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568223, 0.184637, -0.801892,
		-0.782411, -0.180596, -0.596001,
		-0.254863, 0.966071, 0.041843,
		34.970196, 33.811501, 31.417139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789742, 33.345921, 30.757347>,  <35.148598, 33.135250, 31.387850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789742, 33.345921, 30.757347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954670, 33.669510, 30.924948>,  <35.053627, 33.863663, 31.025507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954670, 33.669510, 30.924948>,  <34.789742, 33.345921, 30.757347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954670, 33.669510, 30.924948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398801, 0.253242, -0.881377,
		-0.819117, 0.530504, -0.218202,
		0.412317, 0.808971, 0.419001,
		35.078365, 33.912201, 31.050648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562027, 33.931274, 30.321003>,  <34.789742, 33.345921, 30.757347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562027, 33.931274, 30.321003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866749, 34.085896, 30.528936>,  <35.049583, 34.178669, 30.653696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866749, 34.085896, 30.528936>,  <34.562027, 33.931274, 30.321003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866749, 34.085896, 30.528936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240084, 0.576838, -0.780780,
		-0.601676, 0.719606, 0.346632,
		0.761804, 0.386556, 0.519836,
		35.095291, 34.201862, 30.684887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588070, 34.472729, 30.042063>,  <34.562027, 33.931274, 30.321003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588070, 34.472729, 30.042063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935078, 34.504406, 30.238487>,  <35.143284, 34.523411, 30.356342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.935078, 34.504406, 30.238487>,  <34.588070, 34.472729, 30.042063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935078, 34.504406, 30.238487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341904, 0.622102, -0.704337,
		-0.361268, 0.778921, 0.512609,
		0.867518, 0.079191, 0.491061,
		35.195332, 34.528164, 30.385805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617268, 35.139290, 30.281330>,  <34.588070, 34.472729, 30.042063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617268, 35.139290, 30.281330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989601, 35.003948, 30.226110>,  <35.213001, 34.922741, 30.192980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989601, 35.003948, 30.226110>,  <34.617268, 35.139290, 30.281330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989601, 35.003948, 30.226110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176029, 0.746209, -0.642018,
		0.320243, 0.573313, 0.754159,
		0.930837, -0.338356, -0.138048,
		35.268852, 34.902443, 30.184696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089836, 35.776199, 30.197847>,  <34.617268, 35.139290, 30.281330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089836, 35.776199, 30.197847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297401, 35.470047, 30.045572>,  <35.421940, 35.286358, 29.954206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297401, 35.470047, 30.045572>,  <35.089836, 35.776199, 30.197847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297401, 35.470047, 30.045572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423385, 0.616999, -0.663368,
		0.742612, 0.183053, 0.644219,
		0.518914, -0.765378, -0.380690,
		35.453075, 35.240433, 29.931366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900784, 36.004765, 30.112923>,  <35.089836, 35.776199, 30.197847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900784, 36.004765, 30.112923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818985, 35.700886, 29.866009>,  <35.769905, 35.518559, 29.717859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818985, 35.700886, 29.866009>,  <35.900784, 36.004765, 30.112923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818985, 35.700886, 29.866009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367677, 0.524822, -0.767707,
		0.907190, -0.383959, 0.171996,
		-0.204501, -0.759695, -0.617287,
		35.757633, 35.472977, 29.680822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500893, 35.945900, 29.626738>,  <35.900784, 36.004765, 30.112923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500893, 35.945900, 29.626738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212543, 35.733898, 29.448103>,  <36.039536, 35.606697, 29.340923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212543, 35.733898, 29.448103>,  <36.500893, 35.945900, 29.626738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212543, 35.733898, 29.448103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280386, 0.366255, -0.887266,
		0.633820, -0.764821, -0.115416,
		-0.720871, -0.530006, -0.446584,
		35.996281, 35.574898, 29.314127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740875, 35.715942, 29.006298>,  <36.500893, 35.945900, 29.626738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740875, 35.715942, 29.006298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354847, 35.636803, 28.937595>,  <36.123230, 35.589321, 28.896374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354847, 35.636803, 28.937595>,  <36.740875, 35.715942, 29.006298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354847, 35.636803, 28.937595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085531, 0.381739, -0.920304,
		0.247645, -0.902847, -0.351483,
		-0.965068, -0.197846, -0.171757,
		36.065327, 35.577450, 28.886068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736450, 35.495819, 28.310322>,  <36.740875, 35.715942, 29.006298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736450, 35.495819, 28.310322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350609, 35.584003, 28.368198>,  <36.119102, 35.636913, 28.402924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350609, 35.584003, 28.368198>,  <36.736450, 35.495819, 28.310322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350609, 35.584003, 28.368198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038936, 0.423600, -0.905012,
		-0.260815, -0.878611, -0.400022,
		-0.964603, 0.220465, 0.144690,
		36.061226, 35.650143, 28.411606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494473, 35.321064, 27.740993>,  <36.736450, 35.495819, 28.310322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494473, 35.321064, 27.740993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193035, 35.534344, 27.894770>,  <36.012173, 35.662312, 27.987036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193035, 35.534344, 27.894770>,  <36.494473, 35.321064, 27.740993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193035, 35.534344, 27.894770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120959, 0.462375, -0.878395,
		-0.646116, -0.708454, -0.283948,
		-0.753593, 0.533200, 0.384442,
		35.966957, 35.694305, 28.010101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948788, 35.208973, 27.185413>,  <36.494473, 35.321064, 27.740993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948788, 35.208973, 27.185413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876003, 35.535339, 27.404928>,  <35.832333, 35.731159, 27.536638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876003, 35.535339, 27.404928>,  <35.948788, 35.208973, 27.185413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876003, 35.535339, 27.404928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230842, 0.507062, -0.830422,
		-0.955824, -0.277791, 0.096080,
		-0.181965, 0.815917, 0.548788,
		35.821415, 35.780113, 27.569565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469101, 35.583927, 26.736849>,  <35.948788, 35.208973, 27.185413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469101, 35.583927, 26.736849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650265, 35.845814, 26.978912>,  <35.758965, 36.002945, 27.124149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.650265, 35.845814, 26.978912>,  <35.469101, 35.583927, 26.736849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650265, 35.845814, 26.978912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043196, 0.661853, -0.748388,
		-0.890510, 0.365091, 0.271478,
		0.452909, 0.654720, 0.605157,
		35.786137, 36.042229, 27.160460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142826, 36.222797, 26.652533>,  <35.469101, 35.583927, 26.736849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142826, 36.222797, 26.652533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501808, 36.312382, 26.804543>,  <35.717197, 36.366131, 26.895748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.501808, 36.312382, 26.804543>,  <35.142826, 36.222797, 26.652533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.501808, 36.312382, 26.804543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133697, 0.682896, -0.718176,
		-0.420359, 0.695338, 0.582925,
		0.897454, 0.223957, 0.380027,
		35.771046, 36.379570, 26.918550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.058525, 36.988380, 26.700895>,  <35.142826, 36.222797, 26.652533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.058525, 36.988380, 26.700895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438019, 36.862106, 26.707146>,  <35.665714, 36.786343, 26.710896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438019, 36.862106, 26.707146>,  <35.058525, 36.988380, 26.700895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438019, 36.862106, 26.707146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215960, 0.611353, -0.761321,
		0.230785, 0.725667, 0.648187,
		0.948736, -0.315683, 0.015624,
		35.722641, 36.767403, 26.711832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478458, 37.564877, 26.805235>,  <35.058525, 36.988380, 26.700895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478458, 37.564877, 26.805235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709545, 37.287636, 26.632790>,  <35.848198, 37.121292, 26.529322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.709545, 37.287636, 26.632790>,  <35.478458, 37.564877, 26.805235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709545, 37.287636, 26.632790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320135, 0.678252, -0.661429,
		0.750839, 0.244103, 0.613721,
		0.577714, -0.693100, -0.431113,
		35.882858, 37.079704, 26.503456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117325, 38.031105, 26.605261>,  <35.478458, 37.564877, 26.805235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117325, 38.031105, 26.605261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163921, 37.692417, 26.397606>,  <36.191879, 37.489204, 26.273014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163921, 37.692417, 26.397606>,  <36.117325, 38.031105, 26.605261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163921, 37.692417, 26.397606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391637, 0.519501, -0.759434,
		0.912717, -0.114849, 0.392120,
		0.116487, -0.846716, -0.519136,
		36.198868, 37.438404, 26.241865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782127, 38.103489, 26.449533>,  <36.117325, 38.031105, 26.605261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782127, 38.103489, 26.449533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584435, 37.878719, 26.184212>,  <36.465816, 37.743858, 26.025019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584435, 37.878719, 26.184212>,  <36.782127, 38.103489, 26.449533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584435, 37.878719, 26.184212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447602, 0.489607, -0.748290,
		0.745241, -0.666727, 0.009537,
		-0.494236, -0.561925, -0.663303,
		36.436165, 37.710140, 25.985220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286922, 37.973896, 25.967716>,  <36.782127, 38.103489, 26.449533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286922, 37.973896, 25.967716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961395, 37.846214, 25.773474>,  <36.766079, 37.769604, 25.656929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.961395, 37.846214, 25.773474>,  <37.286922, 37.973896, 25.967716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961395, 37.846214, 25.773474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356843, 0.385040, -0.851122,
		0.458658, -0.865941, -0.199446,
		-0.813816, -0.319203, -0.485606,
		36.717251, 37.750454, 25.627792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498520, 37.672127, 25.411030>,  <37.286922, 37.973896, 25.967716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498520, 37.672127, 25.411030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114491, 37.745373, 25.326443>,  <36.884071, 37.789322, 25.275690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.114491, 37.745373, 25.326443>,  <37.498520, 37.672127, 25.411030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.114491, 37.745373, 25.326443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270817, 0.419111, -0.866605,
		-0.070063, -0.889277, -0.451970,
		-0.960078, 0.183118, -0.211468,
		36.826466, 37.800308, 25.263002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403336, 37.526237, 24.631052>,  <37.498520, 37.672127, 25.411030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403336, 37.526237, 24.631052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098766, 37.763660, 24.735306>,  <36.916023, 37.906113, 24.797857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098766, 37.763660, 24.735306>,  <37.403336, 37.526237, 24.631052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098766, 37.763660, 24.735306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195474, 0.593562, -0.780688,
		-0.618082, -0.543487, -0.567976,
		-0.761423, 0.593553, 0.260632,
		36.870338, 37.941727, 24.813496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016579, 37.606655, 23.964790>,  <37.403336, 37.526237, 24.631052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016579, 37.606655, 23.964790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931129, 37.925262, 24.191036>,  <36.879860, 38.116428, 24.326784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.931129, 37.925262, 24.191036>,  <37.016579, 37.606655, 23.964790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931129, 37.925262, 24.191036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169136, 0.600395, -0.781613,
		-0.962162, -0.071308, -0.262981,
		-0.213628, 0.796518, 0.565617,
		36.867043, 38.164219, 24.360722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584423, 38.044693, 23.523846>,  <37.016579, 37.606655, 23.964790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584423, 38.044693, 23.523846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724888, 38.287575, 23.808939>,  <36.809166, 38.433304, 23.979996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.724888, 38.287575, 23.808939>,  <36.584423, 38.044693, 23.523846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724888, 38.287575, 23.808939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376663, 0.605292, -0.701247,
		-0.857212, 0.514710, -0.016157,
		0.351159, 0.607203, 0.712736,
		36.830235, 38.469734, 24.022760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265499, 38.653900, 23.319630>,  <36.584423, 38.044693, 23.523846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265499, 38.653900, 23.319630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592575, 38.747944, 23.529816>,  <36.788818, 38.804371, 23.655928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.592575, 38.747944, 23.529816>,  <36.265499, 38.653900, 23.319630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592575, 38.747944, 23.529816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255190, 0.670172, -0.696956,
		-0.516011, 0.703984, 0.487994,
		0.817686, 0.235106, 0.525466,
		36.837879, 38.818474, 23.687456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256695, 39.270912, 23.295210>,  <36.265499, 38.653900, 23.319630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256695, 39.270912, 23.295210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630703, 39.247158, 23.435043>,  <36.855106, 39.232906, 23.518944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630703, 39.247158, 23.435043>,  <36.256695, 39.270912, 23.295210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630703, 39.247158, 23.435043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265701, 0.770192, -0.579834,
		-0.234815, 0.635042, 0.735924,
		0.935022, -0.059382, 0.349583,
		36.911209, 39.229343, 23.539919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.480534, 39.890633, 23.453989>,  <36.256695, 39.270912, 23.295210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.480534, 39.890633, 23.453989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829967, 39.698639, 23.421846>,  <37.039627, 39.583443, 23.402561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.829967, 39.698639, 23.421846>,  <36.480534, 39.890633, 23.453989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829967, 39.698639, 23.421846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362344, 0.751725, -0.551014,
		0.324886, 0.452242, 0.830618,
		0.873588, -0.479986, -0.080357,
		37.092045, 39.554642, 23.397739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946018, 40.393414, 23.451071>,  <36.480534, 39.890633, 23.453989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946018, 40.393414, 23.451071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136166, 40.074425, 23.302441>,  <37.250256, 39.883034, 23.213263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136166, 40.074425, 23.302441>,  <36.946018, 40.393414, 23.451071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136166, 40.074425, 23.302441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492561, 0.591190, -0.638654,
		0.728978, 0.120572, 0.673835,
		0.475368, -0.797469, -0.371575,
		37.278774, 39.835182, 23.190968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.701187, 40.534904, 23.484819>,  <36.946018, 40.393414, 23.451071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.701187, 40.534904, 23.484819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616631, 40.279289, 23.188997>,  <37.565895, 40.125919, 23.011505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616631, 40.279289, 23.188997>,  <37.701187, 40.534904, 23.484819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616631, 40.279289, 23.188997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412942, 0.627414, -0.660175,
		0.885885, -0.444950, 0.131255,
		-0.211393, -0.639040, -0.739555,
		37.553211, 40.087578, 22.967131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339954, 40.370308, 23.070702>,  <37.701187, 40.534904, 23.484819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339954, 40.370308, 23.070702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018974, 40.298325, 22.843126>,  <37.826385, 40.255135, 22.706581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.018974, 40.298325, 22.843126>,  <38.339954, 40.370308, 23.070702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.018974, 40.298325, 22.843126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374114, 0.591065, -0.714620,
		0.464883, -0.786293, -0.406973,
		-0.802448, -0.179960, -0.568939,
		37.778240, 40.244335, 22.672445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599945, 40.607723, 22.378210>,  <38.339954, 40.370308, 23.070702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599945, 40.607723, 22.378210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210781, 40.553207, 22.303511>,  <37.977283, 40.520496, 22.258690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.210781, 40.553207, 22.303511>,  <38.599945, 40.607723, 22.378210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.210781, 40.553207, 22.303511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117919, 0.402269, -0.907896,
		0.198859, -0.905321, -0.375300,
		-0.972908, -0.136289, -0.186749,
		37.918907, 40.512321, 22.247486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592270, 40.136871, 21.802727>,  <38.599945, 40.607723, 22.378210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592270, 40.136871, 21.802727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256966, 40.353722, 21.779354>,  <38.055782, 40.483829, 21.765329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.256966, 40.353722, 21.779354>,  <38.592270, 40.136871, 21.802727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.256966, 40.353722, 21.779354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330150, 0.419348, -0.845665,
		-0.433951, -0.728183, -0.530507,
		-0.838265, 0.542123, -0.058433,
		38.005486, 40.516357, 21.761824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416737, 40.076153, 21.129946>,  <38.592270, 40.136871, 21.802727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416737, 40.076153, 21.129946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227562, 40.401852, 21.264610>,  <38.114059, 40.597271, 21.345409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.227562, 40.401852, 21.264610>,  <38.416737, 40.076153, 21.129946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.227562, 40.401852, 21.264610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422368, 0.544837, -0.724402,
		-0.773266, -0.200398, -0.601582,
		-0.472933, 0.814244, 0.336662,
		38.085682, 40.646126, 21.365608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977539, 40.403408, 20.561075>,  <38.416737, 40.076153, 21.129946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977539, 40.403408, 20.561075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022713, 40.687569, 20.838947>,  <38.049816, 40.858067, 21.005671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.022713, 40.687569, 20.838947>,  <37.977539, 40.403408, 20.561075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022713, 40.687569, 20.838947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382631, 0.614137, -0.690239,
		-0.916973, 0.343756, -0.202465,
		0.112932, 0.710400, 0.694679,
		38.056591, 40.900688, 21.047350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549561, 40.969360, 20.368002>,  <37.977539, 40.403408, 20.561075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549561, 40.969360, 20.368002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879360, 41.091709, 20.558430>,  <38.077240, 41.165119, 20.672688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879360, 41.091709, 20.558430>,  <37.549561, 40.969360, 20.368002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879360, 41.091709, 20.558430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183030, 0.651941, -0.735849,
		-0.535442, 0.693843, 0.481543,
		0.824501, 0.305868, 0.476071,
		38.126709, 41.183468, 20.701250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581894, 41.652287, 20.227154>,  <37.549561, 40.969360, 20.368002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581894, 41.652287, 20.227154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931820, 41.595375, 20.412390>,  <38.141777, 41.561230, 20.523533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931820, 41.595375, 20.412390>,  <37.581894, 41.652287, 20.227154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931820, 41.595375, 20.412390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359106, 0.832068, -0.422735,
		-0.325178, 0.536115, 0.779000,
		0.874815, -0.142280, 0.463092,
		38.194263, 41.552692, 20.551317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623669, 42.124283, 20.762007>,  <37.581894, 41.652287, 20.227154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623669, 42.124283, 20.762007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985912, 42.010761, 20.635942>,  <38.203259, 41.942650, 20.560305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.985912, 42.010761, 20.635942>,  <37.623669, 42.124283, 20.762007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985912, 42.010761, 20.635942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137244, 0.899229, -0.415393,
		0.401291, 0.332931, 0.853301,
		0.905610, -0.283804, -0.315160,
		38.257595, 41.925621, 20.541395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257378, 42.493160, 21.087183>,  <37.623669, 42.124283, 20.762007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257378, 42.493160, 21.087183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325844, 42.387123, 20.707619>,  <38.366924, 42.323502, 20.479881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.325844, 42.387123, 20.707619>,  <38.257378, 42.493160, 21.087183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.325844, 42.387123, 20.707619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205292, 0.951580, -0.228804,
		0.963616, -0.155639, 0.217302,
		0.171169, -0.265089, -0.948909,
		38.377193, 42.307598, 20.422945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445438, 43.108200, 20.793266>,  <38.257378, 42.493160, 21.087183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445438, 43.108200, 20.793266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426918, 42.908932, 20.446930>,  <38.415806, 42.789371, 20.239128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426918, 42.908932, 20.446930>,  <38.445438, 43.108200, 20.793266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426918, 42.908932, 20.446930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057716, 0.863990, -0.500190,
		0.997259, -0.073133, -0.011253,
		-0.046303, -0.498170, -0.865842,
		38.413029, 42.759480, 20.187178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671810, 43.590557, 20.420683>,  <38.445438, 43.108200, 20.793266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671810, 43.590557, 20.420683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854698, 43.923607, 20.545706>,  <38.964432, 44.123436, 20.620720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.854698, 43.923607, 20.545706>,  <38.671810, 43.590557, 20.420683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854698, 43.923607, 20.545706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297721, -0.187871, 0.935984,
		0.838041, -0.521005, 0.161991,
		0.457219, 0.832621, 0.312557,
		38.991863, 44.173393, 20.639473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120625, 43.314571, 20.926487>,  <38.671810, 43.590557, 20.420683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120625, 43.314571, 20.926487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000084, 43.694244, 20.962811>,  <38.927757, 43.922047, 20.984604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.000084, 43.694244, 20.962811>,  <39.120625, 43.314571, 20.926487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000084, 43.694244, 20.962811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334725, -0.194482, 0.922028,
		0.892829, 0.247462, 0.376322,
		-0.301355, 0.949178, 0.090808,
		38.909679, 43.978996, 20.990053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383526, 43.511871, 21.501554>,  <39.120625, 43.314571, 20.926487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383526, 43.511871, 21.501554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069008, 43.752335, 21.444492>,  <38.880295, 43.896610, 21.410255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.069008, 43.752335, 21.444492>,  <39.383526, 43.511871, 21.501554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.069008, 43.752335, 21.444492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374239, -0.279688, 0.884149,
		0.491611, 0.748591, 0.444894,
		-0.786297, 0.601154, -0.142654,
		38.833118, 43.932682, 21.401695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350582, 43.901474, 22.117062>,  <39.383526, 43.511871, 21.501554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.350582, 43.901474, 22.117062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999043, 43.888348, 21.926672>,  <38.788120, 43.880470, 21.812439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999043, 43.888348, 21.926672>,  <39.350582, 43.901474, 22.117062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999043, 43.888348, 21.926672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419870, -0.420568, 0.804258,
		-0.226573, 0.906667, 0.355837,
		-0.878848, -0.032818, -0.475972,
		38.735390, 43.878502, 21.783880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.849182, 44.290829, 22.447481>,  <39.350582, 43.901474, 22.117062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.849182, 44.290829, 22.447481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648354, 43.978703, 22.298334>,  <38.527855, 43.791428, 22.208845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.648354, 43.978703, 22.298334>,  <38.849182, 44.290829, 22.447481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648354, 43.978703, 22.298334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262570, -0.273258, 0.925412,
		-0.824000, 0.562531, -0.067690,
		-0.502076, -0.780313, -0.372869,
		38.497730, 43.744610, 22.186474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194050, 44.183792, 22.823549>,  <38.849182, 44.290829, 22.447481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194050, 44.183792, 22.823549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272655, 43.822006, 22.672117>,  <38.319817, 43.604935, 22.581257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.272655, 43.822006, 22.672117>,  <38.194050, 44.183792, 22.823549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.272655, 43.822006, 22.672117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215981, -0.416556, 0.883081,
		-0.956418, -0.091770, -0.277206,
		0.196512, -0.904466, -0.378581,
		38.331608, 43.550667, 22.558542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634174, 43.686768, 22.980034>,  <38.194050, 44.183792, 22.823549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634174, 43.686768, 22.980034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944286, 43.447456, 22.899033>,  <38.130352, 43.303871, 22.850431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.944286, 43.447456, 22.899033>,  <37.634174, 43.686768, 22.980034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.944286, 43.447456, 22.899033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180741, -0.517342, 0.836475,
		-0.605211, -0.611898, -0.509216,
		0.775276, -0.598280, -0.202506,
		38.176868, 43.267975, 22.838282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396778, 42.990204, 23.032352>,  <37.634174, 43.686768, 22.980034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396778, 42.990204, 23.032352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789585, 42.949776, 23.096138>,  <38.025269, 42.925518, 23.134409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789585, 42.949776, 23.096138>,  <37.396778, 42.990204, 23.032352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789585, 42.949776, 23.096138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188147, -0.593780, 0.782321,
		0.015621, -0.798255, -0.602117,
		0.982017, -0.101066, 0.159465,
		38.084190, 42.919456, 23.143978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530647, 42.287159, 23.346371>,  <37.396778, 42.990204, 23.032352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530647, 42.287159, 23.346371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855511, 42.497311, 23.447861>,  <38.050430, 42.623402, 23.508755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.855511, 42.497311, 23.447861>,  <37.530647, 42.287159, 23.346371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855511, 42.497311, 23.447861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006972, -0.426109, 0.904645,
		0.583396, -0.736484, -0.342405,
		0.812158, 0.525379, 0.253725,
		38.099159, 42.654922, 23.523977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.100834, 41.813744, 23.557100>,  <37.530647, 42.287159, 23.346371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.100834, 41.813744, 23.557100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237598, 42.145081, 23.734615>,  <38.319656, 42.343884, 23.841125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237598, 42.145081, 23.734615>,  <38.100834, 41.813744, 23.557100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237598, 42.145081, 23.734615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203379, -0.526285, 0.825627,
		0.917460, -0.192035, -0.348411,
		0.341913, 0.828340, 0.443790,
		38.340172, 42.393581, 23.867752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664021, 41.517822, 23.774687>,  <38.100834, 41.813744, 23.557100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664021, 41.517822, 23.774687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614048, 41.862053, 23.972189>,  <38.584064, 42.068592, 24.090691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.614048, 41.862053, 23.972189>,  <38.664021, 41.517822, 23.774687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614048, 41.862053, 23.972189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277730, -0.447428, 0.850102,
		0.952501, 0.243334, -0.183111,
		-0.124929, 0.860579, 0.493757,
		38.576569, 42.120228, 24.120316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.205620, 41.642830, 24.222883>,  <38.664021, 41.517822, 23.774687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.205620, 41.642830, 24.222883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904408, 41.855839, 24.377478>,  <38.723682, 41.983643, 24.470234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.904408, 41.855839, 24.377478>,  <39.205620, 41.642830, 24.222883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.904408, 41.855839, 24.377478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240260, -0.324288, 0.914939,
		0.612554, 0.781833, 0.116255,
		-0.753029, 0.532518, 0.386487,
		38.678497, 42.015594, 24.493423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.417210, 41.765484, 24.828789>,  <39.205620, 41.642830, 24.222883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.417210, 41.765484, 24.828789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028236, 41.839920, 24.884987>,  <38.794853, 41.884583, 24.918705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028236, 41.839920, 24.884987>,  <39.417210, 41.765484, 24.828789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028236, 41.839920, 24.884987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033462, -0.484927, 0.873914,
		0.230756, 0.854527, 0.465333,
		-0.972436, 0.186090, 0.140494,
		38.736507, 41.895748, 24.927135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354832, 41.824268, 25.644180>,  <39.417210, 41.765484, 24.828789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354832, 41.824268, 25.644180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967773, 41.822556, 25.543264>,  <38.735538, 41.821529, 25.482716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.967773, 41.822556, 25.543264>,  <39.354832, 41.824268, 25.644180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967773, 41.822556, 25.543264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237595, -0.321149, 0.916740,
		-0.084947, 0.947019, 0.309740,
		-0.967643, -0.004281, -0.252288,
		38.677479, 41.821270, 25.467579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908401, 42.100838, 26.203926>,  <39.354832, 41.824268, 25.644180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908401, 42.100838, 26.203926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676712, 41.855659, 25.988966>,  <38.537701, 41.708553, 25.859991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.676712, 41.855659, 25.988966>,  <38.908401, 42.100838, 26.203926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676712, 41.855659, 25.988966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436632, -0.323417, 0.839496,
		-0.688372, 0.720900, -0.080302,
		-0.579221, -0.612948, -0.537399,
		38.502945, 41.671776, 25.827745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296249, 42.153114, 26.551056>,  <38.908401, 42.100838, 26.203926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296249, 42.153114, 26.551056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270065, 41.813309, 26.341663>,  <38.254353, 41.609425, 26.216028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270065, 41.813309, 26.341663>,  <38.296249, 42.153114, 26.551056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270065, 41.813309, 26.341663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436790, -0.447282, 0.780483,
		-0.897178, 0.279744, -0.341780,
		-0.065463, -0.849518, -0.523482,
		38.250427, 41.558453, 26.184618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.659153, 41.893257, 26.604601>,  <38.296249, 42.153114, 26.551056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.659153, 41.893257, 26.604601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862289, 41.560181, 26.516308>,  <37.984173, 41.360336, 26.463333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.862289, 41.560181, 26.516308>,  <37.659153, 41.893257, 26.604601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862289, 41.560181, 26.516308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540227, -0.507428, 0.671321,
		-0.671008, -0.221680, -0.707535,
		0.507842, -0.832692, -0.220731,
		38.014641, 41.310371, 26.450089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.170734, 41.364296, 26.704967>,  <37.659153, 41.893257, 26.604601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.170734, 41.364296, 26.704967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523510, 41.176647, 26.686590>,  <37.735176, 41.064056, 26.675564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523510, 41.176647, 26.686590>,  <37.170734, 41.364296, 26.704967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523510, 41.176647, 26.686590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341252, -0.702680, 0.624329,
		-0.325171, -0.534941, -0.779809,
		0.881936, -0.469125, -0.045941,
		37.788090, 41.035908, 26.672808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043182, 40.677578, 26.509150>,  <37.170734, 41.364296, 26.704967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043182, 40.677578, 26.509150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381462, 40.686810, 26.722412>,  <37.584431, 40.692348, 26.850370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.381462, 40.686810, 26.722412>,  <37.043182, 40.677578, 26.509150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381462, 40.686810, 26.722412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430194, -0.561705, 0.706698,
		0.315789, -0.827016, -0.465104,
		0.845701, 0.023083, 0.533157,
		37.635174, 40.693733, 26.882359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138496, 39.990067, 26.876291>,  <37.043182, 40.677578, 26.509150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138496, 39.990067, 26.876291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357288, 40.247929, 27.089920>,  <37.488564, 40.402645, 27.218098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357288, 40.247929, 27.089920>,  <37.138496, 39.990067, 26.876291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357288, 40.247929, 27.089920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425226, -0.335587, 0.840574,
		0.721106, -0.686881, 0.090562,
		0.546983, 0.644652, 0.534073,
		37.521381, 40.441322, 27.250141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537014, 39.590656, 27.342793>,  <37.138496, 39.990067, 26.876291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537014, 39.590656, 27.342793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547401, 39.946587, 27.525017>,  <37.553635, 40.160145, 27.634352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547401, 39.946587, 27.525017>,  <37.537014, 39.590656, 27.342793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547401, 39.946587, 27.525017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455709, -0.395069, 0.797653,
		0.889750, -0.228316, 0.395242,
		0.025969, 0.889827, 0.455558,
		37.555191, 40.213535, 27.661684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773373, 39.482143, 28.020813>,  <37.537014, 39.590656, 27.342793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773373, 39.482143, 28.020813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601170, 39.842731, 28.038754>,  <37.497849, 40.059086, 28.049519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.601170, 39.842731, 28.038754>,  <37.773373, 39.482143, 28.020813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601170, 39.842731, 28.038754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574903, -0.312179, 0.756327,
		0.695810, 0.299818, 0.652654,
		-0.430505, 0.901473, 0.044851,
		37.472019, 40.113174, 28.052210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804886, 39.653164, 28.742062>,  <37.773373, 39.482143, 28.020813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804886, 39.653164, 28.742062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527065, 39.912281, 28.616861>,  <37.360374, 40.067749, 28.541740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527065, 39.912281, 28.616861>,  <37.804886, 39.653164, 28.742062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527065, 39.912281, 28.616861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488655, -0.105448, 0.866081,
		0.528034, 0.754485, 0.389785,
		-0.694548, 0.647791, -0.313003,
		37.318703, 40.106617, 28.522961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698189, 39.962967, 29.390940>,  <37.804886, 39.653164, 28.742062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698189, 39.962967, 29.390940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401447, 40.073620, 29.146603>,  <37.223400, 40.140011, 29.000000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.401447, 40.073620, 29.146603>,  <37.698189, 39.962967, 29.390940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401447, 40.073620, 29.146603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651603, -0.082322, 0.754080,
		0.158314, 0.957445, 0.241323,
		-0.741856, 0.276628, -0.610841,
		37.178890, 40.156609, 28.963350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311810, 40.534481, 29.700558>,  <37.698189, 39.962967, 29.390940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311810, 40.534481, 29.700558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057037, 40.344933, 29.457323>,  <36.904175, 40.231201, 29.311382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.057037, 40.344933, 29.457323>,  <37.311810, 40.534481, 29.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057037, 40.344933, 29.457323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648690, -0.096775, 0.754875,
		-0.416563, 0.875259, -0.245759,
		-0.636928, -0.473874, -0.608084,
		36.865959, 40.202770, 29.274899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646633, 40.664757, 29.941835>,  <37.311810, 40.534481, 29.700558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646633, 40.664757, 29.941835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568497, 40.357243, 29.698259>,  <36.521614, 40.172733, 29.552114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568497, 40.357243, 29.698259>,  <36.646633, 40.664757, 29.941835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568497, 40.357243, 29.698259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750830, -0.282221, 0.597166,
		-0.630948, 0.573865, -0.522096,
		-0.195346, -0.768785, -0.608941,
		36.509892, 40.126606, 29.515577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.885468, 40.578144, 30.032482>,  <36.646633, 40.664757, 29.941835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.885468, 40.578144, 30.032482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038162, 40.238762, 29.885836>,  <36.129780, 40.035133, 29.797848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.038162, 40.238762, 29.885836>,  <35.885468, 40.578144, 30.032482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.038162, 40.238762, 29.885836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533498, -0.526169, 0.662213,
		-0.754758, -0.057201, -0.653505,
		0.381733, -0.848454, -0.366614,
		36.152683, 39.984226, 29.775852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291462, 40.163303, 30.006580>,  <35.885468, 40.578144, 30.032482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291462, 40.163303, 30.006580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599583, 39.908241, 30.004210>,  <35.784454, 39.755203, 30.002787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.599583, 39.908241, 30.004210>,  <35.291462, 40.163303, 30.006580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599583, 39.908241, 30.004210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512612, -0.624724, 0.589024,
		-0.379294, -0.450689, -0.808094,
		0.770302, -0.637652, -0.005925,
		35.830673, 39.716946, 30.002432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137234, 39.464970, 29.800156>,  <35.291462, 40.163303, 30.006580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137234, 39.464970, 29.800156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458382, 39.432304, 30.036369>,  <35.651070, 39.412704, 30.178097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.458382, 39.432304, 30.036369>,  <35.137234, 39.464970, 29.800156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.458382, 39.432304, 30.036369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456081, -0.722051, 0.520225,
		0.383915, -0.687004, -0.616956,
		0.802870, -0.081660, 0.590535,
		35.699242, 39.407806, 30.213530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139042, 38.786427, 30.027948>,  <35.137234, 39.464970, 29.800156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139042, 38.786427, 30.027948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373047, 38.974495, 30.292278>,  <35.513451, 39.087337, 30.450876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373047, 38.974495, 30.292278>,  <35.139042, 38.786427, 30.027948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373047, 38.974495, 30.292278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210037, -0.699175, 0.683402,
		0.783352, -0.538599, -0.310275,
		0.585017, 0.470175, 0.660826,
		35.548553, 39.115547, 30.490526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416130, 38.174999, 30.456030>,  <35.139042, 38.786427, 30.027948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416130, 38.174999, 30.456030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477356, 38.517395, 30.653557>,  <35.514091, 38.722832, 30.772072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.477356, 38.517395, 30.653557>,  <35.416130, 38.174999, 30.456030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477356, 38.517395, 30.653557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344464, -0.422148, 0.838532,
		0.926237, -0.298454, 0.230240,
		0.153068, 0.855988, 0.493816,
		35.523277, 38.774193, 30.801702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788788, 38.068413, 31.034599>,  <35.416130, 38.174999, 30.456030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788788, 38.068413, 31.034599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633087, 38.421890, 31.138571>,  <35.539665, 38.633976, 31.200954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633087, 38.421890, 31.138571>,  <35.788788, 38.068413, 31.034599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633087, 38.421890, 31.138571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246235, -0.371744, 0.895084,
		0.887608, 0.284413, 0.362300,
		-0.389256, 0.883695, 0.259931,
		35.516312, 38.687000, 31.216551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873848, 38.143940, 31.821541>,  <35.788788, 38.068413, 31.034599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873848, 38.143940, 31.821541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596649, 38.410854, 31.712374>,  <35.430328, 38.571003, 31.646873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.596649, 38.410854, 31.712374>,  <35.873848, 38.143940, 31.821541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596649, 38.410854, 31.712374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486994, -0.154147, 0.859695,
		0.531594, 0.728675, 0.431788,
		-0.692997, 0.667287, -0.272916,
		35.388752, 38.611042, 31.630499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743202, 38.577194, 32.414173>,  <35.873848, 38.143940, 31.821541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743202, 38.577194, 32.414173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422462, 38.599796, 32.176235>,  <35.230019, 38.613358, 32.033470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.422462, 38.599796, 32.176235>,  <35.743202, 38.577194, 32.414173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.422462, 38.599796, 32.176235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592402, -0.205292, 0.779048,
		-0.078096, 0.977068, 0.198087,
		-0.801848, 0.056507, -0.594850,
		35.181908, 38.616749, 31.997780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257675, 38.841511, 32.800613>,  <35.743202, 38.577194, 32.414173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257675, 38.841511, 32.800613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021294, 38.706390, 32.507584>,  <34.879463, 38.625320, 32.331764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021294, 38.706390, 32.507584>,  <35.257675, 38.841511, 32.800613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021294, 38.706390, 32.507584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566013, -0.473437, 0.674898,
		-0.574807, 0.813480, 0.088582,
		-0.590954, -0.337798, -0.732575,
		34.844009, 38.605049, 32.287811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709660, 38.989525, 33.130726>,  <35.257675, 38.841511, 32.800613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709660, 38.989525, 33.130726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621658, 38.748112, 32.824173>,  <34.568859, 38.603264, 32.640240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621658, 38.748112, 32.824173>,  <34.709660, 38.989525, 33.130726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621658, 38.748112, 32.824173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478197, -0.618039, 0.623982,
		-0.850251, 0.503761, -0.152639,
		-0.220001, -0.603533, -0.766386,
		34.555656, 38.567051, 32.594257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947136, 38.910736, 33.180191>,  <34.709660, 38.989525, 33.130726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947136, 38.910736, 33.180191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143047, 38.616055, 32.993694>,  <34.260593, 38.439243, 32.881798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143047, 38.616055, 32.993694>,  <33.947136, 38.910736, 33.180191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143047, 38.616055, 32.993694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539700, -0.676183, 0.501498,
		-0.684719, 0.006004, -0.728783,
		0.489779, -0.736709, -0.466235,
		34.289982, 38.395042, 32.853821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.380306, 38.498680, 32.907501>,  <33.947136, 38.910736, 33.180191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.380306, 38.498680, 32.907501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705372, 38.267780, 32.939392>,  <33.900414, 38.129242, 32.958527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705372, 38.267780, 32.939392>,  <33.380306, 38.498680, 32.907501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705372, 38.267780, 32.939392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553870, -0.722631, 0.413560,
		-0.181110, -0.380247, -0.906979,
		0.812666, -0.577249, 0.079731,
		33.949173, 38.094604, 32.963310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160824, 37.866177, 32.638004>,  <33.380306, 38.498680, 32.907501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160824, 37.866177, 32.638004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496758, 37.786953, 32.840168>,  <33.698318, 37.739418, 32.961468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496758, 37.786953, 32.840168>,  <33.160824, 37.866177, 32.638004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496758, 37.786953, 32.840168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399347, -0.856076, 0.328109,
		0.367686, -0.477394, -0.798061,
		0.839839, -0.198062, 0.505413,
		33.748711, 37.727535, 32.991791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194679, 37.076454, 32.549274>,  <33.160824, 37.866177, 32.638004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194679, 37.076454, 32.549274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419598, 37.213848, 32.850166>,  <33.554550, 37.296284, 33.030701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419598, 37.213848, 32.850166>,  <33.194679, 37.076454, 32.549274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419598, 37.213848, 32.850166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345462, -0.728899, 0.591068,
		0.751319, -0.592220, -0.291196,
		0.562295, 0.343484, 0.752225,
		33.588287, 37.316895, 33.075832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489754, 36.547020, 32.867561>,  <33.194679, 37.076454, 32.549274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489754, 36.547020, 32.867561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521580, 36.814457, 33.163307>,  <33.540676, 36.974918, 33.340755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.521580, 36.814457, 33.163307>,  <33.489754, 36.547020, 32.867561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521580, 36.814457, 33.163307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202328, -0.715445, 0.668732,
		0.976080, -0.202803, 0.078349,
		0.079567, 0.668588, 0.739364,
		33.545448, 37.015034, 33.385117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.998482, 36.329086, 33.380608>,  <33.489754, 36.547020, 32.867561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.998482, 36.329086, 33.380608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752064, 36.580044, 33.571133>,  <33.604214, 36.730618, 33.685448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752064, 36.580044, 33.571133>,  <33.998482, 36.329086, 33.380608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752064, 36.580044, 33.571133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055505, -0.637746, 0.768244,
		0.785753, 0.446836, 0.427704,
		-0.616045, 0.627390, 0.476309,
		33.567249, 36.768261, 33.714024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.175224, 36.188717, 34.056850>,  <33.998482, 36.329086, 33.380608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.175224, 36.188717, 34.056850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813828, 36.358631, 34.079678>,  <33.596989, 36.460579, 34.093376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813828, 36.358631, 34.079678>,  <34.175224, 36.188717, 34.056850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813828, 36.358631, 34.079678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210932, -0.556599, 0.803558,
		0.373103, 0.713972, 0.592485,
		-0.903494, 0.424784, 0.057070,
		33.542778, 36.486065, 34.096798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134136, 36.340889, 34.788990>,  <34.175224, 36.188717, 34.056850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134136, 36.340889, 34.788990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760006, 36.361145, 34.648930>,  <33.535526, 36.373299, 34.564896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.760006, 36.361145, 34.648930>,  <34.134136, 36.340889, 34.788990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.760006, 36.361145, 34.648930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319458, -0.546185, 0.774356,
		-0.152032, 0.836132, 0.527038,
		-0.935325, 0.050639, -0.350147,
		33.479408, 36.376335, 34.543884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889584, 36.103394, 34.787365>,  <34.134136, 36.340889, 34.788990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889584, 36.103394, 34.787365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230892, 36.140846, 34.992561>,  <35.435677, 36.163319, 35.115677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.230892, 36.140846, 34.992561>,  <34.889584, 36.103394, 34.787365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230892, 36.140846, 34.992561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429343, 0.432172, -0.793027,
		-0.295953, 0.896917, 0.328560,
		0.853274, 0.093634, 0.512988,
		35.486874, 36.168938, 35.146458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146095, 36.850319, 34.782578>,  <34.889584, 36.103394, 34.787365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146095, 36.850319, 34.782578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483692, 36.644863, 34.844353>,  <35.686249, 36.521591, 34.881420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.483692, 36.644863, 34.844353>,  <35.146095, 36.850319, 34.782578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.483692, 36.644863, 34.844353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466706, 0.561389, -0.683394,
		0.264315, 0.648859, 0.713527,
		0.843992, -0.513639, 0.154443,
		35.736889, 36.490772, 34.890686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766945, 37.325684, 34.810390>,  <35.146095, 36.850319, 34.782578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766945, 37.325684, 34.810390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920578, 36.975502, 34.693047>,  <36.012756, 36.765392, 34.622639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.920578, 36.975502, 34.693047>,  <35.766945, 37.325684, 34.810390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.920578, 36.975502, 34.693047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624910, 0.480382, -0.615403,
		0.679682, 0.053043, 0.731587,
		0.384084, -0.875454, -0.293360,
		36.035805, 36.712868, 34.605038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497944, 37.438553, 34.704613>,  <35.766945, 37.325684, 34.810390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497944, 37.438553, 34.704613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481056, 37.069656, 34.550896>,  <36.470924, 36.848316, 34.458664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481056, 37.069656, 34.550896>,  <36.497944, 37.438553, 34.704613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481056, 37.069656, 34.550896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843911, 0.172977, -0.507832,
		0.534819, -0.345752, 0.770989,
		-0.042221, -0.922244, -0.384295,
		36.468391, 36.792984, 34.435608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113403, 37.151535, 34.750450>,  <36.497944, 37.438553, 34.704613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113403, 37.151535, 34.750450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930759, 36.971157, 34.443684>,  <36.821175, 36.862930, 34.259624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.930759, 36.971157, 34.443684>,  <37.113403, 37.151535, 34.750450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930759, 36.971157, 34.443684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737499, 0.290277, -0.609782,
		0.497595, -0.844030, 0.200028,
		-0.456611, -0.450946, -0.766913,
		36.793777, 36.835873, 34.213612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667221, 36.975533, 34.351082>,  <37.113403, 37.151535, 34.750450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667221, 36.975533, 34.351082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385891, 36.880489, 34.083088>,  <37.217094, 36.823463, 33.922291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.385891, 36.880489, 34.083088>,  <37.667221, 36.975533, 34.351082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.385891, 36.880489, 34.083088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653964, 0.153230, -0.740846,
		0.278690, -0.959200, 0.047615,
		-0.703323, -0.237604, -0.669986,
		37.174892, 36.809208, 33.882092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069195, 36.709484, 33.827404>,  <37.667221, 36.975533, 34.351082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069195, 36.709484, 33.827404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729111, 36.830799, 33.655281>,  <37.525063, 36.903587, 33.552006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.729111, 36.830799, 33.655281>,  <38.069195, 36.709484, 33.827404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729111, 36.830799, 33.655281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525928, 0.452984, -0.719864,
		-0.023400, -0.838346, -0.544636,
		-0.850207, 0.303285, -0.430310,
		37.474049, 36.921783, 33.526188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.068634, 36.582100, 33.121658>,  <38.069195, 36.709484, 33.827404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.068634, 36.582100, 33.121658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796257, 36.874950, 33.114685>,  <37.632832, 37.050659, 33.110500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796257, 36.874950, 33.114685>,  <38.068634, 36.582100, 33.121658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796257, 36.874950, 33.114685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399264, 0.351181, -0.846912,
		-0.613923, -0.583663, -0.531447,
		-0.680946, 0.732126, -0.017437,
		37.591972, 37.094589, 33.109455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995838, 36.719765, 32.407745>,  <38.068634, 36.582100, 33.121658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995838, 36.719765, 32.407745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832962, 37.044533, 32.575066>,  <37.735237, 37.239395, 32.675457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832962, 37.044533, 32.575066>,  <37.995838, 36.719765, 32.407745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832962, 37.044533, 32.575066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411375, 0.571940, -0.709686,
		-0.815453, -0.116900, -0.566895,
		-0.407193, 0.811923, 0.418301,
		37.710804, 37.288109, 32.700554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663513, 37.157795, 31.866533>,  <37.995838, 36.719765, 32.407745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663513, 37.157795, 31.866533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712482, 37.424519, 32.160576>,  <37.741863, 37.584553, 32.337002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712482, 37.424519, 32.160576>,  <37.663513, 37.157795, 31.866533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712482, 37.424519, 32.160576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315283, 0.676184, -0.665861,
		-0.941068, 0.313283, -0.127452,
		0.122422, 0.666805, 0.735108,
		37.749210, 37.624561, 32.381107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383457, 37.725906, 31.572739>,  <37.663513, 37.157795, 31.866533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383457, 37.725906, 31.572739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633972, 37.843243, 31.861660>,  <37.784279, 37.913643, 32.035011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.633972, 37.843243, 31.861660>,  <37.383457, 37.725906, 31.572739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.633972, 37.843243, 31.861660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265356, 0.790979, -0.551306,
		-0.733046, 0.536941, 0.417538,
		0.626283, 0.293336, 0.722305,
		37.821857, 37.931244, 32.078350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289150, 38.458096, 31.678644>,  <37.383457, 37.725906, 31.572739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289150, 38.458096, 31.678644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650734, 38.384102, 31.832859>,  <37.867683, 38.339706, 31.925388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650734, 38.384102, 31.832859>,  <37.289150, 38.458096, 31.678644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650734, 38.384102, 31.832859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362310, 0.810206, -0.460759,
		-0.227132, 0.556191, 0.799414,
		0.903959, -0.184982, 0.385537,
		37.921921, 38.328606, 31.948521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578793, 39.141720, 31.942961>,  <37.289150, 38.458096, 31.678644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578793, 39.141720, 31.942961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903706, 38.911819, 31.903252>,  <38.098652, 38.773880, 31.879427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903706, 38.911819, 31.903252>,  <37.578793, 39.141720, 31.942961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903706, 38.911819, 31.903252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424201, 0.698962, -0.575765,
		0.400311, 0.425573, 0.811566,
		0.812284, -0.574752, -0.099274,
		38.147392, 38.739395, 31.873470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138351, 39.516876, 32.189888>,  <37.578793, 39.141720, 31.942961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138351, 39.516876, 32.189888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327198, 39.231430, 31.982868>,  <38.440506, 39.060162, 31.858656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.327198, 39.231430, 31.982868>,  <38.138351, 39.516876, 32.189888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.327198, 39.231430, 31.982868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549722, 0.697294, -0.459985,
		0.689139, -0.067345, 0.721493,
		0.472115, -0.713614, -0.517554,
		38.468834, 39.017345, 31.827602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775089, 39.679558, 32.121647>,  <38.138351, 39.516876, 32.189888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775089, 39.679558, 32.121647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751724, 39.425335, 31.813711>,  <38.737705, 39.272800, 31.628950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751724, 39.425335, 31.813711>,  <38.775089, 39.679558, 32.121647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751724, 39.425335, 31.813711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333305, 0.714487, -0.615155,
		0.941008, -0.292525, 0.170098,
		-0.058416, -0.635560, -0.769838,
		38.734200, 39.234669, 31.582760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387989, 39.752853, 31.880514>,  <38.775089, 39.679558, 32.121647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387989, 39.752853, 31.880514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184566, 39.599072, 31.572340>,  <39.062511, 39.506802, 31.387436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184566, 39.599072, 31.572340>,  <39.387989, 39.752853, 31.880514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184566, 39.599072, 31.572340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409365, 0.679226, -0.609157,
		0.757490, -0.625179, -0.188044,
		-0.508556, -0.384452, -0.770433,
		39.031998, 39.483738, 31.341209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918251, 39.759937, 31.338291>,  <39.387989, 39.752853, 31.880514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918251, 39.759937, 31.338291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568016, 39.698215, 31.155193>,  <39.357876, 39.661182, 31.045334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.568016, 39.698215, 31.155193>,  <39.918251, 39.759937, 31.338291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568016, 39.698215, 31.155193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368473, 0.399411, -0.839463,
		0.312357, -0.903694, -0.292865,
		-0.875592, -0.154300, -0.457745,
		39.305340, 39.651924, 31.017870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113674, 39.420357, 30.734016>,  <39.918251, 39.759937, 31.338291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113674, 39.420357, 30.734016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769585, 39.614479, 30.671425>,  <39.563129, 39.730953, 30.633869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.769585, 39.614479, 30.671425>,  <40.113674, 39.420357, 30.734016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769585, 39.614479, 30.671425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422728, 0.507126, -0.751082,
		-0.285150, -0.712250, -0.641396,
		-0.860227, 0.485307, -0.156481,
		39.511517, 39.760071, 30.624481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875626, 39.211498, 30.013647>,  <40.113674, 39.420357, 30.734016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875626, 39.211498, 30.013647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719574, 39.565681, 30.114656>,  <39.625942, 39.778191, 30.175262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719574, 39.565681, 30.114656>,  <39.875626, 39.211498, 30.013647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719574, 39.565681, 30.114656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227873, 0.358571, -0.905263,
		-0.892119, -0.295623, -0.341659,
		-0.390126, 0.885457, 0.252524,
		39.602535, 39.831318, 30.190414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.729618, 39.470417, 29.329233>,  <39.875626, 39.211498, 30.013647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.729618, 39.470417, 29.329233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645180, 39.774620, 29.574858>,  <39.594517, 39.957142, 29.722233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.645180, 39.774620, 29.574858>,  <39.729618, 39.470417, 29.329233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645180, 39.774620, 29.574858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088315, 0.640486, -0.762875,
		-0.973469, -0.106805, -0.202365,
		-0.211091, 0.760507, 0.614061,
		39.581852, 40.002773, 29.759075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.032696, 39.727074, 29.098431>,  <39.729618, 39.470417, 29.329233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.032696, 39.727074, 29.098431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253826, 40.010319, 29.274139>,  <39.386505, 40.180264, 29.379564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.253826, 40.010319, 29.274139>,  <39.032696, 39.727074, 29.098431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253826, 40.010319, 29.274139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100959, 0.466353, -0.878819,
		-0.827156, 0.530185, 0.186324,
		0.552830, 0.708109, 0.439274,
		39.419674, 40.222752, 29.405922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778950, 40.320892, 28.840321>,  <39.032696, 39.727074, 29.098431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778950, 40.320892, 28.840321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141872, 40.417412, 28.978060>,  <39.359627, 40.475323, 29.060703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141872, 40.417412, 28.978060>,  <38.778950, 40.320892, 28.840321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141872, 40.417412, 28.978060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189800, 0.495739, -0.847478,
		-0.375200, 0.834277, 0.403988,
		0.907304, 0.241296, 0.344347,
		39.414062, 40.489799, 29.081364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838730, 40.995480, 28.848497>,  <38.778950, 40.320892, 28.840321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838730, 40.995480, 28.848497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216503, 40.864029, 28.851097>,  <39.443169, 40.785156, 28.852657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.216503, 40.864029, 28.851097>,  <38.838730, 40.995480, 28.848497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216503, 40.864029, 28.851097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198247, 0.553748, -0.808741,
		0.262177, 0.765093, 0.588129,
		0.944437, -0.328628, 0.006497,
		39.499836, 40.765442, 28.853046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.290966, 41.644268, 28.669296>,  <38.838730, 40.995480, 28.848497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.290966, 41.644268, 28.669296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502209, 41.312943, 28.594461>,  <39.628956, 41.114147, 28.549561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502209, 41.312943, 28.594461>,  <39.290966, 41.644268, 28.669296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502209, 41.312943, 28.594461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368844, 0.422196, -0.828073,
		0.764890, 0.368306, 0.528483,
		0.528107, -0.828312, -0.187086,
		39.660641, 41.064449, 28.538336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975983, 41.905144, 28.455402>,  <39.290966, 41.644268, 28.669296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975983, 41.905144, 28.455402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988159, 41.528069, 28.322487>,  <39.995464, 41.301823, 28.242737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.988159, 41.528069, 28.322487>,  <39.975983, 41.905144, 28.455402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.988159, 41.528069, 28.322487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503853, 0.301588, -0.809430,
		0.863253, -0.142788, 0.484155,
		0.030439, -0.942686, -0.332291,
		39.997292, 41.245262, 28.222799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703300, 41.817207, 28.171249>,  <39.975983, 41.905144, 28.455402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703300, 41.817207, 28.171249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466080, 41.521557, 28.043510>,  <40.323746, 41.344166, 27.966867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.466080, 41.521557, 28.043510>,  <40.703300, 41.817207, 28.171249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.466080, 41.521557, 28.043510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428692, 0.045875, -0.902285,
		0.681553, -0.672003, 0.289651,
		-0.593051, -0.739126, -0.319348,
		40.288166, 41.299820, 27.947706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147118, 41.316792, 27.847946>,  <40.703300, 41.817207, 28.171249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147118, 41.316792, 27.847946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774574, 41.280487, 27.706905>,  <40.551048, 41.258705, 27.622280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.774574, 41.280487, 27.706905>,  <41.147118, 41.316792, 27.847946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.774574, 41.280487, 27.706905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356602, -0.031888, -0.933712,
		0.073500, -0.995362, 0.062064,
		-0.931361, -0.090760, -0.352604,
		40.495167, 41.253258, 27.601124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204277, 40.809078, 27.280865>,  <41.147118, 41.316792, 27.847946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204277, 40.809078, 27.280865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868183, 41.011074, 27.201881>,  <40.666527, 41.132271, 27.154491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.868183, 41.011074, 27.201881>,  <41.204277, 40.809078, 27.280865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.868183, 41.011074, 27.201881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197613, -0.053926, -0.978796,
		-0.504929, -0.861440, -0.054482,
		-0.840236, 0.504989, -0.197460,
		40.616112, 41.162571, 27.142643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915615, 40.465759, 26.697292>,  <41.204277, 40.809078, 27.280865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915615, 40.465759, 26.697292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719757, 40.814194, 26.682001>,  <40.602242, 41.023254, 26.672827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.719757, 40.814194, 26.682001>,  <40.915615, 40.465759, 26.697292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719757, 40.814194, 26.682001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105312, 0.015559, -0.994317,
		-0.865539, -0.490889, -0.099354,
		-0.489645, 0.871083, -0.038230,
		40.572865, 41.075520, 26.670532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445591, 40.437168, 26.060163>,  <40.915615, 40.465759, 26.697292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445591, 40.437168, 26.060163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477512, 40.824509, 26.154760>,  <40.496666, 41.056911, 26.211519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.477512, 40.824509, 26.154760>,  <40.445591, 40.437168, 26.060163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477512, 40.824509, 26.154760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019182, 0.235714, -0.971633,
		-0.996626, 0.082075, 0.000235,
		0.079802, 0.968351, 0.236493,
		40.501453, 41.115013, 26.225708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111145, 40.741817, 25.522024>,  <40.445591, 40.437168, 26.060163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111145, 40.741817, 25.522024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329121, 41.031921, 25.690329>,  <40.459908, 41.205982, 25.791311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329121, 41.031921, 25.690329>,  <40.111145, 40.741817, 25.522024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329121, 41.031921, 25.690329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157892, 0.404077, -0.900995,
		-0.823475, 0.557423, 0.105684,
		0.544940, 0.725260, 0.420760,
		40.492603, 41.249500, 25.816557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.984753, 41.329723, 25.121449>,  <40.111145, 40.741817, 25.522024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.984753, 41.329723, 25.121449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323013, 41.426094, 25.311953>,  <40.525970, 41.483917, 25.426254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323013, 41.426094, 25.311953>,  <39.984753, 41.329723, 25.121449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323013, 41.426094, 25.311953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380481, 0.353661, -0.854493,
		-0.374303, 0.903814, 0.207408,
		0.845654, 0.240924, 0.476260,
		40.576710, 41.498371, 25.454830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.165325, 41.948288, 24.993967>,  <39.984753, 41.329723, 25.121449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.165325, 41.948288, 24.993967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529610, 41.810604, 25.085287>,  <40.748180, 41.727993, 25.140079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529610, 41.810604, 25.085287>,  <40.165325, 41.948288, 24.993967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529610, 41.810604, 25.085287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376599, 0.465006, -0.801214,
		0.169623, 0.815654, 0.553115,
		0.910715, -0.344207, 0.228298,
		40.802826, 41.707340, 25.153776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.590054, 42.432407, 24.576056>,  <40.165325, 41.948288, 24.993967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.590054, 42.432407, 24.576056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859375, 42.167519, 24.707582>,  <41.020969, 42.008583, 24.786499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859375, 42.167519, 24.707582>,  <40.590054, 42.432407, 24.576056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859375, 42.167519, 24.707582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494252, 0.072373, -0.866301,
		0.549888, 0.745802, 0.376034,
		0.673304, -0.662224, 0.328817,
		41.061367, 41.968853, 24.806227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150951, 42.755554, 24.380220>,  <40.590054, 42.432407, 24.576056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150951, 42.755554, 24.380220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227516, 42.366791, 24.435001>,  <41.273457, 42.133533, 24.467869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227516, 42.366791, 24.435001>,  <41.150951, 42.755554, 24.380220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227516, 42.366791, 24.435001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617015, 0.010640, -0.786879,
		0.763317, 0.235121, 0.601719,
		0.191414, -0.971908, 0.136951,
		41.284939, 42.075218, 24.476088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904675, 42.629375, 24.206324>,  <41.150951, 42.755554, 24.380220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904675, 42.629375, 24.206324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752689, 42.260056, 24.183907>,  <41.661499, 42.038464, 24.170456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.752689, 42.260056, 24.183907>,  <41.904675, 42.629375, 24.206324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.752689, 42.260056, 24.183907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519778, -0.162998, -0.838607,
		0.765154, -0.347767, 0.541846,
		-0.379960, -0.923304, -0.056044,
		41.638702, 41.983063, 24.167093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.468304, 42.298672, 23.893372>,  <41.904675, 42.629375, 24.206324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.468304, 42.298672, 23.893372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162319, 42.049568, 23.827648>,  <41.978729, 41.900105, 23.788214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162319, 42.049568, 23.827648>,  <42.468304, 42.298672, 23.893372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162319, 42.049568, 23.827648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395262, -0.252504, -0.883181,
		0.508523, -0.740547, 0.439311,
		-0.764965, -0.622761, -0.164306,
		41.932831, 41.862740, 23.778357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779602, 41.706253, 23.568514>,  <42.468304, 42.298672, 23.893372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779602, 41.706253, 23.568514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389645, 41.710495, 23.479553>,  <42.155670, 41.713039, 23.426178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.389645, 41.710495, 23.479553>,  <42.779602, 41.706253, 23.568514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389645, 41.710495, 23.479553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210099, -0.286842, -0.934655,
		-0.073704, -0.957919, 0.277413,
		-0.974898, 0.010604, -0.222399,
		42.097176, 41.713676, 23.412834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252426, 41.064774, 23.571352>,  <42.779602, 41.706253, 23.568514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252426, 41.064774, 23.571352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566711, 40.837860, 23.670015>,  <43.755283, 40.701710, 23.729214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566711, 40.837860, 23.670015>,  <43.252426, 41.064774, 23.571352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566711, 40.837860, 23.670015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562562, -0.489463, 0.666296,
		-0.257250, -0.662279, -0.703711,
		0.785715, -0.567285, 0.246659,
		43.802425, 40.667675, 23.744013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.988831, 40.384163, 23.638700>,  <43.252426, 41.064774, 23.571352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.988831, 40.384163, 23.638700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344658, 40.366135, 23.820532>,  <43.558155, 40.355316, 23.929630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344658, 40.366135, 23.820532>,  <42.988831, 40.384163, 23.638700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344658, 40.366135, 23.820532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375817, -0.637914, 0.672181,
		0.259685, -0.768787, -0.584406,
		0.889565, -0.045074, 0.454580,
		43.611526, 40.352612, 23.956905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.097080, 39.648468, 23.874029>,  <42.988831, 40.384163, 23.638700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.097080, 39.648468, 23.874029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340996, 39.869022, 24.101757>,  <43.487347, 40.001354, 24.238394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.340996, 39.869022, 24.101757>,  <43.097080, 39.648468, 23.874029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.340996, 39.869022, 24.101757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160164, -0.617781, 0.769866,
		0.776208, -0.560644, -0.288406,
		0.609793, 0.551384, 0.569322,
		43.523933, 40.034439, 24.272554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.452877, 39.189804, 24.256861>,  <43.097080, 39.648468, 23.874029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.452877, 39.189804, 24.256861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518566, 39.534023, 24.449728>,  <43.557980, 39.740555, 24.565449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518566, 39.534023, 24.449728>,  <43.452877, 39.189804, 24.256861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518566, 39.534023, 24.449728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032122, -0.483880, 0.874544,
		0.985901, -0.159105, -0.051820,
		0.164219, 0.860549, 0.482168,
		43.567833, 39.792187, 24.594379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.929123, 39.016434, 24.779760>,  <43.452877, 39.189804, 24.256861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.929123, 39.016434, 24.779760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754406, 39.355476, 24.900276>,  <43.649574, 39.558903, 24.972586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.754406, 39.355476, 24.900276>,  <43.929123, 39.016434, 24.779760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.754406, 39.355476, 24.900276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082527, -0.371273, 0.924849,
		0.895769, 0.379102, 0.232120,
		-0.436792, 0.847607, 0.301289,
		43.623367, 39.609760, 24.990664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190491, 39.056084, 25.461632>,  <43.929123, 39.016434, 24.779760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190491, 39.056084, 25.461632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858845, 39.276833, 25.425833>,  <43.659859, 39.409283, 25.404354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.858845, 39.276833, 25.425833>,  <44.190491, 39.056084, 25.461632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.858845, 39.276833, 25.425833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257898, -0.235497, 0.937032,
		0.496046, 0.799986, 0.337580,
		-0.829112, 0.551872, -0.089498,
		43.610111, 39.442394, 25.398983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194672, 39.578667, 26.118303>,  <44.190491, 39.056084, 25.461632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194672, 39.578667, 26.118303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839043, 39.504787, 25.950764>,  <43.625664, 39.460461, 25.850241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.839043, 39.504787, 25.950764>,  <44.194672, 39.578667, 26.118303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.839043, 39.504787, 25.950764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411361, -0.079042, 0.908039,
		-0.200818, 0.979612, -0.005703,
		-0.889075, -0.184696, -0.418848,
		43.572319, 39.449379, 25.825109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.791862, 39.711502, 26.694826>,  <44.194672, 39.578667, 26.118303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.791862, 39.711502, 26.694826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528172, 39.542976, 26.445698>,  <43.369957, 39.441860, 26.296221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.528172, 39.542976, 26.445698>,  <43.791862, 39.711502, 26.694826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.528172, 39.542976, 26.445698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514864, -0.350752, 0.782233,
		-0.548023, 0.836341, 0.014307,
		-0.659231, -0.421315, -0.622822,
		43.330402, 39.416580, 26.258852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079853, 39.974731, 26.809563>,  <43.791862, 39.711502, 26.694826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079853, 39.974731, 26.809563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.013752, 39.631634, 26.614845>,  <42.974091, 39.425774, 26.498014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.013752, 39.631634, 26.614845>,  <43.079853, 39.974731, 26.809563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.013752, 39.631634, 26.614845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666577, -0.266642, 0.696115,
		-0.726888, 0.439520, -0.527689,
		-0.165252, -0.857744, -0.486793,
		42.964176, 39.374310, 26.468807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406895, 39.957203, 26.670029>,  <43.079853, 39.974731, 26.809563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406895, 39.957203, 26.670029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530666, 39.576874, 26.675451>,  <42.604931, 39.348675, 26.678705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.530666, 39.576874, 26.675451>,  <42.406895, 39.957203, 26.670029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.530666, 39.576874, 26.675451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675975, -0.209913, 0.706395,
		-0.668813, -0.227745, -0.707688,
		0.309431, -0.950825, 0.013558,
		42.623497, 39.291626, 26.679518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825954, 39.585361, 26.722826>,  <42.406895, 39.957203, 26.670029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825954, 39.585361, 26.722826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120083, 39.347546, 26.852947>,  <42.296562, 39.204857, 26.931021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.120083, 39.347546, 26.852947>,  <41.825954, 39.585361, 26.722826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.120083, 39.347546, 26.852947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600459, -0.348977, 0.719488,
		-0.314232, -0.724395, -0.613604,
		0.735328, -0.594531, 0.325310,
		42.340679, 39.169186, 26.950539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.453140, 39.207771, 27.257013>,  <41.825954, 39.585361, 26.722826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.453140, 39.207771, 27.257013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830288, 39.087093, 27.313547>,  <42.056576, 39.014687, 27.347467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.830288, 39.087093, 27.313547>,  <41.453140, 39.207771, 27.257013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.830288, 39.087093, 27.313547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293470, -0.551281, 0.781002,
		-0.157709, -0.777861, -0.608325,
		0.942870, -0.301697, 0.141337,
		42.113148, 38.996586, 27.355947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510666, 38.424534, 27.387812>,  <41.453140, 39.207771, 27.257013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510666, 38.424534, 27.387812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831608, 38.605145, 27.543940>,  <42.024174, 38.713509, 27.637615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831608, 38.605145, 27.543940>,  <41.510666, 38.424534, 27.387812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831608, 38.605145, 27.543940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120432, -0.518038, 0.846837,
		0.584567, -0.726473, -0.361273,
		0.802357, 0.451524, 0.390319,
		42.072315, 38.740601, 27.661036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.846924, 37.896095, 27.748569>,  <41.510666, 38.424534, 27.387812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.846924, 37.896095, 27.748569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992054, 38.236450, 27.900539>,  <42.079132, 38.440662, 27.991720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992054, 38.236450, 27.900539>,  <41.846924, 37.896095, 27.748569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992054, 38.236450, 27.900539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221239, -0.317392, 0.922126,
		0.905212, -0.418627, 0.073091,
		0.362829, 0.850890, 0.379924,
		42.100903, 38.491718, 28.014517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378365, 37.693092, 28.192562>,  <41.846924, 37.896095, 27.748569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378365, 37.693092, 28.192562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261452, 38.056602, 28.311689>,  <42.191303, 38.274708, 28.383165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.261452, 38.056602, 28.311689>,  <42.378365, 37.693092, 28.192562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.261452, 38.056602, 28.311689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238467, -0.370839, 0.897559,
		0.926124, 0.191317, 0.325102,
		-0.292279, 0.908777, 0.297820,
		42.173767, 38.329235, 28.401035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.709969, 37.759617, 28.815594>,  <42.378365, 37.693092, 28.192562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.709969, 37.759617, 28.815594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438541, 38.053192, 28.827448>,  <42.275684, 38.229340, 28.834560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.438541, 38.053192, 28.827448>,  <42.709969, 37.759617, 28.815594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.438541, 38.053192, 28.827448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289520, -0.304317, 0.907507,
		0.675077, 0.607222, 0.418990,
		-0.678564, 0.733943, 0.029634,
		42.234974, 38.273376, 28.836338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761745, 38.110981, 29.445208>,  <42.709969, 37.759617, 28.815594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761745, 38.110981, 29.445208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402237, 38.212742, 29.302385>,  <42.186531, 38.273796, 29.216692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.402237, 38.212742, 29.302385>,  <42.761745, 38.110981, 29.445208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.402237, 38.212742, 29.302385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395418, -0.118645, 0.910806,
		0.189344, 0.959794, 0.207229,
		-0.898774, 0.254398, -0.357055,
		42.132607, 38.289062, 29.195269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.570793, 38.757423, 29.783014>,  <42.761745, 38.110981, 29.445208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.570793, 38.757423, 29.783014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294853, 38.494747, 29.661121>,  <42.129288, 38.337143, 29.587986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.294853, 38.494747, 29.661121>,  <42.570793, 38.757423, 29.783014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.294853, 38.494747, 29.661121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247040, -0.182133, 0.951735,
		-0.680495, 0.731839, -0.036584,
		-0.689853, -0.656689, -0.304734,
		42.087898, 38.297741, 29.569702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096893, 38.914963, 30.254667>,  <42.570793, 38.757423, 29.783014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096893, 38.914963, 30.254667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971611, 38.569275, 30.097170>,  <41.896442, 38.361862, 30.002672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971611, 38.569275, 30.097170>,  <42.096893, 38.914963, 30.254667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971611, 38.569275, 30.097170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340741, -0.284737, 0.896002,
		-0.886453, 0.414795, -0.205294,
		-0.313203, -0.864216, -0.393744,
		41.877651, 38.310009, 29.979046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391762, 38.928093, 30.447552>,  <42.096893, 38.914963, 30.254667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391762, 38.928093, 30.447552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505123, 38.562683, 30.330830>,  <41.573139, 38.343437, 30.260796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505123, 38.562683, 30.330830>,  <41.391762, 38.928093, 30.447552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505123, 38.562683, 30.330830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669582, -0.406324, 0.621741,
		-0.686546, 0.019187, -0.726834,
		0.283400, -0.913528, -0.291807,
		41.590145, 38.288624, 30.243288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714302, 38.525890, 30.404497>,  <41.391762, 38.928093, 30.447552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714302, 38.525890, 30.404497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988605, 38.234985, 30.415976>,  <41.153187, 38.060440, 30.422863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.988605, 38.234985, 30.415976>,  <40.714302, 38.525890, 30.404497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988605, 38.234985, 30.415976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605307, -0.547978, 0.577341,
		-0.404152, -0.413289, -0.815998,
		0.685758, -0.727264, 0.028700,
		41.194332, 38.016808, 30.424585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298748, 38.005245, 30.461094>,  <40.714302, 38.525890, 30.404497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298748, 38.005245, 30.461094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651196, 37.846199, 30.563488>,  <40.862663, 37.750771, 30.624926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651196, 37.846199, 30.563488>,  <40.298748, 38.005245, 30.461094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651196, 37.846199, 30.563488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458297, -0.584563, 0.669515,
		-0.116566, -0.707242, -0.697296,
		0.881122, -0.397612, 0.255986,
		40.915531, 37.726917, 30.640284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127621, 37.271191, 30.504019>,  <40.298748, 38.005245, 30.461094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127621, 37.271191, 30.504019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451202, 37.385353, 30.709597>,  <40.645351, 37.453850, 30.832943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.451202, 37.385353, 30.709597>,  <40.127621, 37.271191, 30.504019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.451202, 37.385353, 30.709597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378922, -0.415261, 0.827029,
		0.449461, -0.863772, -0.227780,
		0.808952, 0.285406, 0.513945,
		40.693890, 37.470974, 30.863781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287266, 36.665207, 30.912426>,  <40.127621, 37.271191, 30.504019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287266, 36.665207, 30.912426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481941, 36.956665, 31.105181>,  <40.598747, 37.131538, 31.220833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.481941, 36.956665, 31.105181>,  <40.287266, 36.665207, 30.912426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.481941, 36.956665, 31.105181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351392, -0.341740, 0.871629,
		0.799786, -0.593542, 0.089718,
		0.486688, 0.728643, 0.481885,
		40.627949, 37.175259, 31.249746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456963, 36.348270, 31.480698>,  <40.287266, 36.665207, 30.912426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456963, 36.348270, 31.480698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504578, 36.736507, 31.564386>,  <40.533146, 36.969452, 31.614599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.504578, 36.736507, 31.564386>,  <40.456963, 36.348270, 31.480698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504578, 36.736507, 31.564386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354471, -0.155290, 0.922082,
		0.927459, -0.183927, 0.325563,
		0.119039, 0.970596, 0.209222,
		40.540291, 37.027687, 31.627153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.031136, 36.468327, 31.992311>,  <40.456963, 36.348270, 31.480698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.031136, 36.468327, 31.992311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761215, 36.763443, 31.999380>,  <40.599262, 36.940514, 32.003620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761215, 36.763443, 31.999380>,  <41.031136, 36.468327, 31.992311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761215, 36.763443, 31.999380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201513, -0.207238, 0.957311,
		0.709956, 0.642433, 0.288518,
		-0.674800, 0.737789, 0.017672,
		40.558777, 36.984779, 32.004681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058853, 36.741451, 32.821026>,  <41.031136, 36.468327, 31.992311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058853, 36.741451, 32.821026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724865, 36.896816, 32.665096>,  <40.524471, 36.990036, 32.571537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.724865, 36.896816, 32.665096>,  <41.058853, 36.741451, 32.821026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.724865, 36.896816, 32.665096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417922, 0.013285, 0.908386,
		0.358010, 0.921389, 0.151234,
		-0.834967, 0.388415, -0.389825,
		40.474373, 37.013340, 32.548149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935390, 37.326588, 33.274220>,  <41.058853, 36.741451, 32.821026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935390, 37.326588, 33.274220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599712, 37.212444, 33.089039>,  <40.398304, 37.143959, 32.977932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.599712, 37.212444, 33.089039>,  <40.935390, 37.326588, 33.274220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599712, 37.212444, 33.089039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431355, -0.169153, 0.886183,
		-0.331190, 0.943376, 0.018861,
		-0.839194, -0.285359, -0.462951,
		40.347954, 37.126835, 32.950153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309902, 37.893051, 33.481499>,  <40.935390, 37.326588, 33.274220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309902, 37.893051, 33.481499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214607, 37.527786, 33.349213>,  <40.157429, 37.308628, 33.269840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.214607, 37.527786, 33.349213>,  <40.309902, 37.893051, 33.481499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214607, 37.527786, 33.349213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462532, -0.192747, 0.865398,
		-0.853995, 0.359136, -0.376449,
		-0.238236, -0.913165, -0.330717,
		40.143135, 37.253838, 33.249996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759045, 37.726517, 33.875317>,  <40.309902, 37.893051, 33.481499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759045, 37.726517, 33.875317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857628, 37.372528, 33.717289>,  <39.916779, 37.160133, 33.622471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.857628, 37.372528, 33.717289>,  <39.759045, 37.726517, 33.875317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857628, 37.372528, 33.717289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441570, -0.465412, 0.767077,
		-0.862714, -0.014601, -0.505482,
		0.246458, -0.884974, -0.395070,
		39.931564, 37.107037, 33.598766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225445, 37.325081, 34.085983>,  <39.759045, 37.726517, 33.875317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225445, 37.325081, 34.085983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493893, 37.068157, 33.937908>,  <39.654961, 36.914001, 33.849064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493893, 37.068157, 33.937908>,  <39.225445, 37.325081, 34.085983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493893, 37.068157, 33.937908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194000, -0.634104, 0.748516,
		-0.715518, -0.430525, -0.550166,
		0.671117, -0.642308, -0.370191,
		39.695229, 36.875465, 33.826851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812466, 36.682686, 34.032368>,  <39.225445, 37.325081, 34.085983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812466, 36.682686, 34.032368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207615, 36.659359, 34.089920>,  <39.444706, 36.645363, 34.124451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.207615, 36.659359, 34.089920>,  <38.812466, 36.682686, 34.032368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207615, 36.659359, 34.089920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149166, -0.613377, 0.775576,
		0.043023, -0.787634, -0.614639,
		0.987876, -0.058316, 0.143877,
		39.503979, 36.641865, 34.133083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002613, 35.969799, 34.337151>,  <38.812466, 36.682686, 34.032368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002613, 35.969799, 34.337151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341732, 36.166729, 34.415997>,  <39.545204, 36.284889, 34.463306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341732, 36.166729, 34.415997>,  <39.002613, 35.969799, 34.337151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341732, 36.166729, 34.415997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000794, -0.370513, 0.928827,
		0.530322, -0.787612, -0.313729,
		0.847796, 0.492328, 0.197117,
		39.596069, 36.314426, 34.475132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460117, 35.527363, 34.601536>,  <39.002613, 35.969799, 34.337151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460117, 35.527363, 34.601536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616055, 35.872715, 34.729660>,  <39.709618, 36.079926, 34.806534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616055, 35.872715, 34.729660>,  <39.460117, 35.527363, 34.601536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616055, 35.872715, 34.729660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091162, -0.382302, 0.919530,
		0.916358, -0.329272, -0.227745,
		0.389843, 0.863380, 0.320308,
		39.733006, 36.131729, 34.825752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148174, 35.436066, 34.863121>,  <39.460117, 35.527363, 34.601536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148174, 35.436066, 34.863121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025517, 35.778137, 35.030285>,  <39.951923, 35.983379, 35.130585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.025517, 35.778137, 35.030285>,  <40.148174, 35.436066, 34.863121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.025517, 35.778137, 35.030285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205006, -0.369417, 0.906369,
		0.929486, 0.363604, -0.062037,
		-0.306641, 0.855175, 0.417909,
		39.933525, 36.034691, 35.155659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.644482, 35.692780, 35.339249>,  <40.148174, 35.436066, 34.863121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.644482, 35.692780, 35.339249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313652, 35.888844, 35.449295>,  <40.115154, 36.006481, 35.515324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.313652, 35.888844, 35.449295>,  <40.644482, 35.692780, 35.339249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313652, 35.888844, 35.449295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148532, -0.281473, 0.948004,
		0.542115, 0.824932, 0.159994,
		-0.827073, 0.490163, 0.275120,
		40.065529, 36.035892, 35.531830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786964, 35.941257, 35.997807>,  <40.644482, 35.692780, 35.339249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786964, 35.941257, 35.997807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391750, 36.002640, 35.991718>,  <40.154621, 36.039471, 35.988064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.391750, 36.002640, 35.991718>,  <40.786964, 35.941257, 35.997807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.391750, 36.002640, 35.991718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057940, -0.277931, 0.958852,
		0.142910, 0.948264, 0.283498,
		-0.988038, 0.153456, -0.015223,
		40.095341, 36.048676, 35.987152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669720, 36.425983, 36.411144>,  <40.786964, 35.941257, 35.997807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669720, 36.425983, 36.411144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327305, 36.219967, 36.393559>,  <40.121857, 36.096355, 36.383007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.327305, 36.219967, 36.393559>,  <40.669720, 36.425983, 36.411144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327305, 36.219967, 36.393559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144217, -0.319630, 0.936503,
		-0.496390, 0.795341, 0.347893,
		-0.856037, -0.515043, -0.043960,
		40.070496, 36.065453, 36.380371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.287773, 36.616154, 36.996803>,  <40.669720, 36.425983, 36.411144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.287773, 36.616154, 36.996803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171398, 36.246704, 36.896984>,  <40.101574, 36.025036, 36.837093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171398, 36.246704, 36.896984>,  <40.287773, 36.616154, 36.996803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171398, 36.246704, 36.896984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233743, -0.321546, 0.917591,
		-0.927749, 0.208635, 0.309441,
		-0.290941, -0.923623, -0.249547,
		40.084114, 35.969616, 36.822121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442791, 37.091022, 37.451057>,  <40.287773, 36.616154, 36.996803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442791, 37.091022, 37.451057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748665, 37.123367, 37.195332>,  <40.932190, 37.142776, 37.041897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748665, 37.123367, 37.195332>,  <40.442791, 37.091022, 37.451057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748665, 37.123367, 37.195332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267414, 0.942461, -0.200641,
		0.586303, 0.324388, 0.742308,
		0.764682, 0.080867, -0.639314,
		40.978069, 37.147629, 37.003536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.776085, 36.866634, 38.056835>,  <40.442791, 37.091022, 37.451057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.776085, 36.866634, 38.056835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087772, 37.106125, 38.130970>,  <41.274784, 37.249821, 38.175449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087772, 37.106125, 38.130970>,  <40.776085, 36.866634, 38.056835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087772, 37.106125, 38.130970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540024, 0.491281, 0.683386,
		0.318109, -0.632591, 0.706141,
		0.779218, 0.598725, 0.185333,
		41.321537, 37.285744, 38.186569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863987, 36.904587, 38.777428>,  <40.776085, 36.866634, 38.056835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863987, 36.904587, 38.777428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057034, 37.234791, 38.660385>,  <41.172859, 37.432911, 38.590160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.057034, 37.234791, 38.660385>,  <40.863987, 36.904587, 38.777428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.057034, 37.234791, 38.660385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500525, 0.534119, 0.681316,
		0.718720, -0.182354, 0.670961,
		0.482614, 0.825508, -0.292609,
		41.201817, 37.482445, 38.572601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962845, 37.217621, 39.393589>,  <40.863987, 36.904587, 38.777428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962845, 37.217621, 39.393589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015450, 37.534695, 39.155479>,  <41.047012, 37.724937, 39.012611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.015450, 37.534695, 39.155479>,  <40.962845, 37.217621, 39.393589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.015450, 37.534695, 39.155479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381386, 0.594731, 0.707700,
		0.915014, 0.133962, 0.380532,
		0.131509, 0.792685, -0.595278,
		41.054901, 37.772499, 38.976894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114571, 37.721386, 39.849785>,  <40.962845, 37.217621, 39.393589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114571, 37.721386, 39.849785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998470, 37.888916, 39.505611>,  <40.928810, 37.989433, 39.299107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.998470, 37.888916, 39.505611>,  <41.114571, 37.721386, 39.849785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998470, 37.888916, 39.505611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610863, 0.611020, 0.503488,
		0.736614, 0.671743, 0.078496,
		-0.290252, 0.418827, -0.860429,
		40.911396, 38.014565, 39.247482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398354, 38.356136, 39.817024>,  <41.114571, 37.721386, 39.849785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398354, 38.356136, 39.817024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076401, 38.412800, 39.586510>,  <40.883228, 38.446796, 39.448200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.076401, 38.412800, 39.586510>,  <41.398354, 38.356136, 39.817024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076401, 38.412800, 39.586510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275439, 0.770984, 0.574210,
		0.525647, 0.620900, -0.581531,
		-0.804878, 0.141656, -0.576286,
		40.834938, 38.455296, 39.413624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214005, 39.034634, 39.712227>,  <41.398354, 38.356136, 39.817024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214005, 39.034634, 39.712227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859360, 38.898552, 39.586895>,  <40.646572, 38.816902, 39.511696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.859360, 38.898552, 39.586895>,  <41.214005, 39.034634, 39.712227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859360, 38.898552, 39.586895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461415, 0.603981, 0.649849,
		-0.031834, 0.720742, -0.692473,
		-0.886613, -0.340204, -0.313334,
		40.593376, 38.796490, 39.492893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830090, 39.660133, 39.433563>,  <41.214005, 39.034634, 39.712227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830090, 39.660133, 39.433563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572830, 39.374531, 39.544235>,  <40.418476, 39.203171, 39.610638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.572830, 39.374531, 39.544235>,  <40.830090, 39.660133, 39.433563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.572830, 39.374531, 39.544235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402534, 0.622623, 0.671049,
		-0.651404, 0.320209, -0.687851,
		-0.643148, -0.714007, 0.276684,
		40.379887, 39.160328, 39.627239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162743, 39.934406, 39.411823>,  <40.830090, 39.660133, 39.433563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162743, 39.934406, 39.411823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161514, 39.635208, 39.677299>,  <40.160778, 39.455688, 39.836586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161514, 39.635208, 39.677299>,  <40.162743, 39.934406, 39.411823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161514, 39.635208, 39.677299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529201, 0.564356, 0.633600,
		-0.848491, -0.349283, -0.397573,
		-0.003067, -0.748000, 0.663692,
		40.160595, 39.410809, 39.876408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519844, 39.988331, 39.660961>,  <40.162743, 39.934406, 39.411823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519844, 39.988331, 39.660961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680431, 39.766460, 39.952484>,  <39.776783, 39.633339, 40.127399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.680431, 39.766460, 39.952484>,  <39.519844, 39.988331, 39.660961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.680431, 39.766460, 39.952484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366846, 0.631742, 0.682881,
		-0.839193, -0.541517, 0.050147,
		0.401472, -0.554673, 0.728807,
		39.800873, 39.600060, 40.171127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014233, 39.775848, 40.169518>,  <39.519844, 39.988331, 39.660961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014233, 39.775848, 40.169518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376209, 39.800243, 40.337978>,  <39.593395, 39.814880, 40.439056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.376209, 39.800243, 40.337978>,  <39.014233, 39.775848, 40.169518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.376209, 39.800243, 40.337978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377417, 0.572209, 0.728102,
		-0.196581, -0.817837, 0.540832,
		0.904938, 0.060988, 0.421151,
		39.647690, 39.818539, 40.464325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999271, 39.712444, 40.975368>,  <39.014233, 39.775848, 40.169518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999271, 39.712444, 40.975368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316753, 39.927738, 40.861992>,  <39.507244, 40.056915, 40.793964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.316753, 39.927738, 40.861992>,  <38.999271, 39.712444, 40.975368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316753, 39.927738, 40.861992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316357, 0.763211, 0.563406,
		0.519569, -0.357509, 0.776038,
		0.793704, 0.538234, -0.283441,
		39.554863, 40.089207, 40.776958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189011, 39.824493, 41.621628>,  <38.999271, 39.712444, 40.975368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189011, 39.824493, 41.621628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288128, 40.075630, 41.326492>,  <39.347599, 40.226315, 41.149410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288128, 40.075630, 41.326492>,  <39.189011, 39.824493, 41.621628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288128, 40.075630, 41.326492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399574, 0.760031, 0.512536,
		0.882574, 0.167817, 0.439204,
		0.247797, 0.627845, -0.737839,
		39.362469, 40.263985, 41.105141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824036, 40.388214, 41.732128>,  <39.189011, 39.824493, 41.621628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824036, 40.388214, 41.732128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037899, 40.569988, 41.447132>,  <39.166218, 40.679050, 41.276134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.037899, 40.569988, 41.447132>,  <38.824036, 40.388214, 41.732128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.037899, 40.569988, 41.447132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452636, 0.865965, 0.212662,
		0.713628, 0.208796, 0.668685,
		0.534654, 0.454432, -0.712486,
		39.198296, 40.706318, 41.233387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938591, 41.104851, 42.005543>,  <38.824036, 40.388214, 41.732128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938591, 41.104851, 42.005543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993164, 41.118179, 41.609509>,  <39.025909, 41.126175, 41.371887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.993164, 41.118179, 41.609509>,  <38.938591, 41.104851, 42.005543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.993164, 41.118179, 41.609509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574471, 0.816892, -0.051668,
		0.807074, 0.575827, 0.130594,
		0.136433, 0.033323, -0.990089,
		39.034096, 41.128178, 41.312481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103500, 41.735859, 41.868698>,  <38.938591, 41.104851, 42.005543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103500, 41.735859, 41.868698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968208, 41.625504, 41.508812>,  <38.887032, 41.559292, 41.292881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.968208, 41.625504, 41.508812>,  <39.103500, 41.735859, 41.868698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.968208, 41.625504, 41.508812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665392, 0.746189, 0.021331,
		0.665471, 0.605877, -0.435960,
		-0.338232, -0.275889, -0.899714,
		38.866737, 41.542736, 41.238899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030323, 42.243214, 41.526596>,  <39.103500, 41.735859, 41.868698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030323, 42.243214, 41.526596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811337, 42.028122, 41.270119>,  <38.679943, 41.899067, 41.116234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.811337, 42.028122, 41.270119>,  <39.030323, 42.243214, 41.526596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.811337, 42.028122, 41.270119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420787, 0.839197, -0.344508,
		0.723337, 0.081196, -0.685705,
		-0.547469, -0.537731, -0.641189,
		38.647095, 41.866802, 41.077763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.069771, 42.537128, 40.821579>,  <39.030323, 42.243214, 41.526596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.069771, 42.537128, 40.821579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733242, 42.324055, 40.858303>,  <38.531326, 42.196209, 40.880337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733242, 42.324055, 40.858303>,  <39.069771, 42.537128, 40.821579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733242, 42.324055, 40.858303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517659, 0.745103, -0.420537,
		0.155607, -0.401331, -0.902618,
		-0.841318, -0.532687, 0.091810,
		38.480846, 42.164249, 40.885845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681442, 42.785667, 40.311157>,  <39.069771, 42.537128, 40.821579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681442, 42.785667, 40.311157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389885, 42.612377, 40.523209>,  <38.214951, 42.508404, 40.650440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.389885, 42.612377, 40.523209>,  <38.681442, 42.785667, 40.311157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389885, 42.612377, 40.523209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668722, 0.616469, -0.415664,
		-0.146733, -0.657482, -0.739045,
		-0.728890, -0.433224, 0.530129,
		38.171219, 42.482410, 40.682247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145931, 42.690605, 39.848866>,  <38.681442, 42.785667, 40.311157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145931, 42.690605, 39.848866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978615, 42.686852, 40.212170>,  <37.878223, 42.684597, 40.430153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.978615, 42.686852, 40.212170>,  <38.145931, 42.690605, 39.848866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.978615, 42.686852, 40.212170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627091, 0.726381, -0.281295,
		-0.657105, -0.687228, -0.309726,
		-0.418293, -0.009386, 0.908264,
		37.853127, 42.684036, 40.484650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.377300, 42.537785, 39.845203>,  <38.145931, 42.690605, 39.848866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.377300, 42.537785, 39.845203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505550, 42.777168, 40.138882>,  <37.582500, 42.920799, 40.315090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.505550, 42.777168, 40.138882>,  <37.377300, 42.537785, 39.845203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505550, 42.777168, 40.138882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720976, 0.656907, -0.220605,
		-0.614324, -0.458609, 0.642094,
		0.320624, 0.598457, 0.734200,
		37.601738, 42.956707, 40.359142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736225, 42.641415, 40.370857>,  <37.377300, 42.537785, 39.845203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736225, 42.641415, 40.370857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998905, 42.925789, 40.270199>,  <37.156513, 43.096413, 40.209805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998905, 42.925789, 40.270199>,  <36.736225, 42.641415, 40.370857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998905, 42.925789, 40.270199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717224, 0.485608, -0.499775,
		-0.233106, 0.508685, 0.828795,
		0.656698, 0.710932, -0.251643,
		37.195915, 43.139069, 40.194706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433552, 43.380638, 40.477760>,  <36.736225, 42.641415, 40.370857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433552, 43.380638, 40.477760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698841, 43.328449, 40.182976>,  <36.858017, 43.297138, 40.006107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.698841, 43.328449, 40.182976>,  <36.433552, 43.380638, 40.477760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698841, 43.328449, 40.182976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655210, 0.374673, -0.655988,
		0.361704, 0.917931, 0.163008,
		0.663227, -0.130469, -0.736958,
		36.897808, 43.289307, 39.961887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906967, 44.102238, 40.337341>,  <36.433552, 43.380638, 40.477760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906967, 44.102238, 40.337341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072285, 44.189896, 40.690876>,  <37.171474, 44.242489, 40.902996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.072285, 44.189896, 40.690876>,  <36.906967, 44.102238, 40.337341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072285, 44.189896, 40.690876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242016, -0.962136, 0.125385,
		0.877849, 0.162083, -0.450678,
		0.413291, 0.219140, 0.883837,
		37.196274, 44.255638, 40.956028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.635044, 43.873611, 40.399288>,  <36.906967, 44.102238, 40.337341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.635044, 43.873611, 40.399288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442478, 43.885323, 40.749691>,  <37.326939, 43.892349, 40.959930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.442478, 43.885323, 40.749691>,  <37.635044, 43.873611, 40.399288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442478, 43.885323, 40.749691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281495, -0.941331, 0.186162,
		0.830061, 0.336212, 0.444927,
		-0.481413, 0.029281, 0.876004,
		37.298054, 43.894108, 41.012493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004608, 43.602364, 40.992886>,  <37.635044, 43.873611, 40.399288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004608, 43.602364, 40.992886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616093, 43.508209, 41.006721>,  <37.382984, 43.451717, 41.015022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616093, 43.508209, 41.006721>,  <38.004608, 43.602364, 40.992886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616093, 43.508209, 41.006721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236593, -0.970929, 0.036352,
		0.025029, 0.043492, 0.998740,
		-0.971286, -0.235385, 0.034592,
		37.324707, 43.437595, 41.017097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850552, 43.251736, 41.560894>,  <38.004608, 43.602364, 40.992886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850552, 43.251736, 41.560894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641376, 43.156078, 41.233639>,  <37.515873, 43.098686, 41.037285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641376, 43.156078, 41.233639>,  <37.850552, 43.251736, 41.560894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641376, 43.156078, 41.233639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359178, -0.932282, 0.042926,
		-0.773001, -0.271409, 0.573416,
		-0.522935, -0.239140, -0.818139,
		37.484497, 43.084335, 40.988197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.315243, 42.650146, 41.642933>,  <37.850552, 43.251736, 41.560894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.315243, 42.650146, 41.642933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511593, 42.696384, 41.297520>,  <37.629402, 42.724129, 41.090271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.511593, 42.696384, 41.297520>,  <37.315243, 42.650146, 41.642933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511593, 42.696384, 41.297520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508760, -0.842642, 0.176401,
		-0.707254, -0.525919, -0.472442,
		0.490872, 0.115600, -0.863529,
		37.658855, 42.731064, 41.038460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218506, 42.017071, 41.375294>,  <37.315243, 42.650146, 41.642933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218506, 42.017071, 41.375294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524414, 42.149696, 41.154316>,  <37.707958, 42.229271, 41.021729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.524414, 42.149696, 41.154316>,  <37.218506, 42.017071, 41.375294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.524414, 42.149696, 41.154316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486956, -0.858900, 0.158631,
		-0.421895, -0.390331, -0.818319,
		0.764773, 0.331560, -0.552440,
		37.753845, 42.249165, 40.988583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400997, 41.408669, 40.938469>,  <37.218506, 42.017071, 41.375294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400997, 41.408669, 40.938469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717976, 41.651665, 40.916607>,  <37.908161, 41.797462, 40.903488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.717976, 41.651665, 40.916607>,  <37.400997, 41.408669, 40.938469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.717976, 41.651665, 40.916607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608586, -0.793475, 0.004502,
		-0.040632, -0.036830, -0.998495,
		0.792447, 0.607487, -0.054654,
		37.955711, 41.833912, 40.900211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851089, 41.033810, 40.571159>,  <37.400997, 41.408669, 40.938469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851089, 41.033810, 40.571159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109020, 41.312160, 40.697628>,  <38.263779, 41.479172, 40.773510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.109020, 41.312160, 40.697628>,  <37.851089, 41.033810, 40.571159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.109020, 41.312160, 40.697628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753481, -0.648188, -0.110086,
		0.128330, 0.309213, -0.942294,
		0.644823, 0.695874, 0.316169,
		38.302467, 41.520924, 40.792480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389347, 41.133850, 40.050365>,  <37.851089, 41.033810, 40.571159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389347, 41.133850, 40.050365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531807, 41.231266, 40.411217>,  <38.617283, 41.289715, 40.627728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531807, 41.231266, 40.411217>,  <38.389347, 41.133850, 40.050365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531807, 41.231266, 40.411217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806139, -0.568304, -0.164837,
		0.472541, 0.785951, -0.398730,
		0.356154, 0.243539, 0.902133,
		38.638653, 41.304329, 40.681858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082310, 41.152950, 39.938499>,  <38.389347, 41.133850, 40.050365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082310, 41.152950, 39.938499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063580, 41.129128, 40.337349>,  <39.052341, 41.114834, 40.576660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.063580, 41.129128, 40.337349>,  <39.082310, 41.152950, 39.938499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063580, 41.129128, 40.337349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830515, -0.556967, 0.005736,
		0.555025, 0.828396, 0.075548,
		-0.046830, -0.059560, 0.997126,
		39.049530, 41.111259, 40.636486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777573, 41.316856, 40.322353>,  <39.082310, 41.152950, 39.938499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777573, 41.316856, 40.322353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521309, 41.043388, 40.462154>,  <39.367550, 40.879307, 40.546036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521309, 41.043388, 40.462154>,  <39.777573, 41.316856, 40.322353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521309, 41.043388, 40.462154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668949, -0.720423, -0.183023,
		0.376919, 0.116546, 0.918885,
		-0.640655, -0.683672, 0.349505,
		39.329113, 40.838287, 40.567005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969612, 40.998711, 41.017052>,  <39.777573, 41.316856, 40.322353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969612, 40.998711, 41.017052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889309, 40.633808, 41.159878>,  <39.841129, 40.414867, 41.245571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889309, 40.633808, 41.159878>,  <39.969612, 40.998711, 41.017052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889309, 40.633808, 41.159878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502281, -0.408781, -0.761979,
		0.841077, 0.026374, 0.540272,
		-0.200756, -0.912252, 0.357063,
		39.829082, 40.360134, 41.266998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.581448, 40.519653, 40.926655>,  <39.969612, 40.998711, 41.017052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.581448, 40.519653, 40.926655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252758, 40.292480, 40.945564>,  <40.055546, 40.156178, 40.956909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.252758, 40.292480, 40.945564>,  <40.581448, 40.519653, 40.926655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252758, 40.292480, 40.945564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370294, -0.595131, -0.713233,
		0.433196, -0.568574, 0.699332,
		-0.821720, -0.567928, 0.047269,
		40.006241, 40.122101, 40.959743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.755024, 39.778690, 41.079002>,  <40.581448, 40.519653, 40.926655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.755024, 39.778690, 41.079002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411255, 39.805302, 40.876232>,  <40.204994, 39.821266, 40.754570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411255, 39.805302, 40.876232>,  <40.755024, 39.778690, 41.079002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411255, 39.805302, 40.876232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327160, -0.690373, -0.645253,
		-0.392891, -0.720388, 0.571557,
		-0.859420, 0.066523, -0.506924,
		40.153427, 39.825260, 40.724155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.552544, 39.024437, 41.052395>,  <40.755024, 39.778690, 41.079002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.552544, 39.024437, 41.052395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333530, 39.218796, 40.779892>,  <40.202122, 39.335411, 40.616390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333530, 39.218796, 40.779892>,  <40.552544, 39.024437, 41.052395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333530, 39.218796, 40.779892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193714, -0.718419, -0.668094,
		-0.814053, -0.497772, 0.299234,
		-0.547534, 0.485898, -0.681256,
		40.169270, 39.364567, 40.575516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770992, 38.420731, 40.761417>,  <40.552544, 39.024437, 41.052395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770992, 38.420731, 40.761417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850906, 38.104290, 40.992672>,  <40.898853, 37.914425, 41.131424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850906, 38.104290, 40.992672>,  <40.770992, 38.420731, 40.761417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850906, 38.104290, 40.992672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096013, 0.571386, 0.815046,
		-0.975125, -0.218339, 0.038195,
		0.199780, -0.791104, 0.578137,
		40.910839, 37.866959, 41.166115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036858, 38.470013, 40.781208>,  <40.770992, 38.420731, 40.761417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036858, 38.470013, 40.781208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068470, 38.746269, 40.493660>,  <40.087437, 38.912022, 40.321133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068470, 38.746269, 40.493660>,  <40.036858, 38.470013, 40.781208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068470, 38.746269, 40.493660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250849, -0.711695, -0.656174,
		-0.964795, -0.128469, -0.229493,
		0.079031, 0.690641, -0.718866,
		40.092178, 38.953461, 40.278000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625996, 38.241680, 40.124184>,  <40.036858, 38.470013, 40.781208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625996, 38.241680, 40.124184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873817, 38.513222, 39.966545>,  <40.022511, 38.676147, 39.871964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.873817, 38.513222, 39.966545>,  <39.625996, 38.241680, 40.124184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873817, 38.513222, 39.966545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155257, -0.598118, -0.786225,
		-0.769448, 0.425923, -0.475962,
		0.619553, 0.678856, -0.394093,
		40.059685, 38.716877, 39.848316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505795, 38.294880, 39.318592>,  <39.625996, 38.241680, 40.124184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505795, 38.294880, 39.318592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862186, 38.446884, 39.417984>,  <40.076023, 38.538086, 39.477619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.862186, 38.446884, 39.417984>,  <39.505795, 38.294880, 39.318592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862186, 38.446884, 39.417984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425933, -0.510007, -0.747311,
		-0.157263, 0.771676, -0.616267,
		0.890982, 0.380013, 0.248477,
		40.129482, 38.560886, 39.492527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848190, 38.530750, 38.647511>,  <39.505795, 38.294880, 39.318592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848190, 38.530750, 38.647511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149769, 38.493298, 38.907600>,  <40.330715, 38.470825, 39.063656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.149769, 38.493298, 38.907600>,  <39.848190, 38.530750, 38.647511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.149769, 38.493298, 38.907600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554514, -0.440003, -0.706336,
		0.352239, 0.893101, -0.279819,
		0.753951, -0.093636, 0.650223,
		40.375954, 38.465206, 39.102669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.372482, 38.683144, 38.300465>,  <39.848190, 38.530750, 38.647511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.372482, 38.683144, 38.300465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583374, 38.514709, 38.595684>,  <40.709908, 38.413647, 38.772816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.583374, 38.514709, 38.595684>,  <40.372482, 38.683144, 38.300465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583374, 38.514709, 38.595684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708402, -0.261839, -0.655444,
		0.469249, 0.868403, 0.160251,
		0.527230, -0.421089, 0.738047,
		40.741543, 38.388382, 38.817097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.027718, 38.825569, 38.154644>,  <40.372482, 38.683144, 38.300465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.027718, 38.825569, 38.154644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040672, 38.507206, 38.396465>,  <41.048447, 38.316189, 38.541557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.040672, 38.507206, 38.396465>,  <41.027718, 38.825569, 38.154644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.040672, 38.507206, 38.396465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773671, -0.362974, -0.519310,
		0.632759, 0.484544, 0.604014,
		0.032387, -0.795906, 0.604553,
		41.050388, 38.268433, 38.577831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731140, 38.607243, 38.079643>,  <41.027718, 38.825569, 38.154644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731140, 38.607243, 38.079643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594936, 38.270306, 38.246746>,  <41.513214, 38.068146, 38.347008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.594936, 38.270306, 38.246746>,  <41.731140, 38.607243, 38.079643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.594936, 38.270306, 38.246746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674685, -0.528351, -0.515407,
		0.654871, 0.106357, 0.748220,
		-0.340506, -0.842338, 0.417759,
		41.492786, 38.017605, 38.372074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257126, 38.144119, 38.471172>,  <41.731140, 38.607243, 38.079643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257126, 38.144119, 38.471172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975731, 37.881611, 38.362057>,  <41.806892, 37.724106, 38.296589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.975731, 37.881611, 38.362057>,  <42.257126, 38.144119, 38.471172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.975731, 37.881611, 38.362057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699349, -0.570880, -0.430124,
		0.126550, -0.493360, 0.860570,
		-0.703489, -0.656271, -0.272786,
		41.764683, 37.684731, 38.280220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420353, 37.423481, 38.737411>,  <42.257126, 38.144119, 38.471172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420353, 37.423481, 38.737411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194099, 37.404865, 38.408077>,  <42.058346, 37.393696, 38.210476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194099, 37.404865, 38.408077>,  <42.420353, 37.423481, 38.737411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194099, 37.404865, 38.408077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695998, -0.562450, -0.446360,
		-0.442314, -0.825521, 0.350534,
		-0.565637, -0.046539, -0.823340,
		42.024410, 37.390903, 38.161076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443165, 36.678993, 38.514549>,  <42.420353, 37.423481, 38.737411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443165, 36.678993, 38.514549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391300, 36.973797, 38.249218>,  <42.360184, 37.150681, 38.090019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391300, 36.973797, 38.249218>,  <42.443165, 36.678993, 38.514549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391300, 36.973797, 38.249218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822964, -0.293171, -0.486601,
		-0.553099, -0.608987, -0.568522,
		-0.129660, 0.737012, -0.663327,
		42.352402, 37.194901, 38.050220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253620, 36.488354, 37.804764>,  <42.443165, 36.678993, 38.514549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253620, 36.488354, 37.804764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450645, 36.836445, 37.801079>,  <42.568859, 37.045300, 37.798870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.450645, 36.836445, 37.801079>,  <42.253620, 36.488354, 37.804764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.450645, 36.836445, 37.801079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747024, -0.428206, -0.508522,
		-0.446474, 0.243599, -0.861000,
		0.492561, 0.870230, -0.009208,
		42.598415, 37.097515, 37.798317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691925, 36.514332, 37.227303>,  <42.253620, 36.488354, 37.804764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691925, 36.514332, 37.227303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848652, 36.772156, 37.489910>,  <42.942688, 36.926849, 37.647476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848652, 36.772156, 37.489910>,  <42.691925, 36.514332, 37.227303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848652, 36.772156, 37.489910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919050, -0.241061, -0.311827,
		-0.042730, 0.725556, -0.686835,
		0.391817, 0.644560, 0.656522,
		42.966198, 36.965523, 37.686867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.028488, 37.093674, 36.938580>,  <42.691925, 36.514332, 37.227303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.028488, 37.093674, 36.938580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192783, 36.962688, 37.278946>,  <43.291359, 36.884098, 37.483166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.192783, 36.962688, 37.278946>,  <43.028488, 37.093674, 36.938580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.192783, 36.962688, 37.278946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817465, -0.281056, -0.502752,
		0.403789, 0.902094, 0.152251,
		0.410739, -0.327465, 0.850917,
		43.316006, 36.864449, 37.534222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.757061, 37.111015, 36.703751>,  <43.028488, 37.093674, 36.938580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.757061, 37.111015, 36.703751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723240, 36.900818, 37.042385>,  <43.702946, 36.774700, 37.245564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.723240, 36.900818, 37.042385>,  <43.757061, 37.111015, 36.703751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.723240, 36.900818, 37.042385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866955, -0.457604, -0.197455,
		0.491162, 0.717255, 0.494273,
		-0.084556, -0.525495, 0.846584,
		43.697872, 36.743168, 37.296360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.389217, 37.238281, 37.286018>,  <43.757061, 37.111015, 36.703751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.389217, 37.238281, 37.286018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210220, 36.882648, 37.247486>,  <44.102821, 36.669270, 37.224365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210220, 36.882648, 37.247486>,  <44.389217, 37.238281, 37.286018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210220, 36.882648, 37.247486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892810, -0.437966, -0.105241,
		0.051378, -0.133102, 0.989770,
		-0.447493, -0.889084, -0.096333,
		44.075974, 36.615925, 37.218586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707867, 36.881466, 37.836578>,  <44.389217, 37.238281, 37.286018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707867, 36.881466, 37.836578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574921, 36.618439, 37.566132>,  <44.495152, 36.460621, 37.403862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.574921, 36.618439, 37.566132>,  <44.707867, 36.881466, 37.836578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.574921, 36.618439, 37.566132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898540, -0.438630, -0.015112,
		-0.286628, -0.612542, 0.736639,
		-0.332369, -0.657568, -0.676117,
		44.475208, 36.421169, 37.363297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.936512, 36.253624, 38.004559>,  <44.707867, 36.881466, 37.836578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.936512, 36.253624, 38.004559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875893, 36.247639, 37.609222>,  <44.839520, 36.244049, 37.372021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875893, 36.247639, 37.609222>,  <44.936512, 36.253624, 38.004559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875893, 36.247639, 37.609222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875049, -0.467046, -0.127109,
		-0.459697, -0.884107, 0.083873,
		-0.151551, -0.014962, -0.988336,
		44.830429, 36.243149, 37.312721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.238270, 35.588245, 37.738575>,  <44.936512, 36.253624, 38.004559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.238270, 35.588245, 37.738575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175117, 35.798378, 37.404125>,  <45.137226, 35.924458, 37.203457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.175117, 35.798378, 37.404125>,  <45.238270, 35.588245, 37.738575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.175117, 35.798378, 37.404125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766785, -0.468298, -0.439019,
		-0.622186, -0.710436, -0.328885,
		-0.157878, 0.525335, -0.836120,
		45.127754, 35.955978, 37.153290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005917, 35.177040, 37.138584>,  <45.238270, 35.588245, 37.738575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005917, 35.177040, 37.138584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249470, 35.491226, 37.094208>,  <45.395603, 35.679737, 37.067581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249470, 35.491226, 37.094208>,  <45.005917, 35.177040, 37.138584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249470, 35.491226, 37.094208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785104, -0.616706, -0.057318,
		-0.113437, -0.052197, -0.992173,
		0.608888, 0.785461, -0.110937,
		45.432137, 35.726864, 37.060928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507450, 35.023655, 36.697205>,  <45.005917, 35.177040, 37.138584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507450, 35.023655, 36.697205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659393, 35.323784, 36.913624>,  <45.750561, 35.503860, 37.043476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.659393, 35.323784, 36.913624>,  <45.507450, 35.023655, 36.697205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659393, 35.323784, 36.913624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883206, -0.468085, 0.029049,
		0.275051, 0.466818, -0.840493,
		0.379862, 0.750318, 0.541044,
		45.773354, 35.548878, 37.075935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.207924, 35.126087, 36.438919>,  <45.507450, 35.023655, 36.697205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.207924, 35.126087, 36.438919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206242, 35.290749, 36.803452>,  <46.205231, 35.389545, 37.022171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206242, 35.290749, 36.803452>,  <46.207924, 35.126087, 36.438919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206242, 35.290749, 36.803452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981557, -0.172481, 0.082439,
		0.191124, 0.894871, -0.403333,
		-0.004205, 0.411651, 0.911332,
		46.204979, 35.414246, 37.076851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.260899, 35.352242, 35.724430>,  <46.207924, 35.126087, 36.438919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.260899, 35.352242, 35.724430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971947, 35.464462, 35.471622>,  <45.798576, 35.531796, 35.319939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.971947, 35.464462, 35.471622>,  <46.260899, 35.352242, 35.724430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.971947, 35.464462, 35.471622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676953, 0.473371, -0.563609,
		0.141060, -0.834991, -0.531875,
		-0.722383, 0.280552, -0.632023,
		45.755230, 35.548626, 35.282017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.358387, 35.137318, 34.996876>,  <46.260899, 35.352242, 35.724430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.358387, 35.137318, 34.996876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203876, 35.491478, 35.100300>,  <46.111172, 35.703976, 35.162354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203876, 35.491478, 35.100300>,  <46.358387, 35.137318, 34.996876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203876, 35.491478, 35.100300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793443, 0.461896, -0.396359,
		-0.470365, 0.052047, -0.880936,
		-0.386272, 0.885405, 0.258556,
		46.087994, 35.757099, 35.177868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.366661, 35.632996, 34.371170>,  <46.358387, 35.137318, 34.996876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.366661, 35.632996, 34.371170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391460, 35.824810, 34.721302>,  <46.406342, 35.939899, 34.931381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.391460, 35.824810, 34.721302>,  <46.366661, 35.632996, 34.371170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.391460, 35.824810, 34.721302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627439, 0.663322, -0.407828,
		-0.776194, 0.574501, -0.259753,
		0.061998, 0.479533, 0.875331,
		46.410061, 35.968670, 34.983902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.754059, 35.321308, 33.842213>,  <46.366661, 35.632996, 34.371170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.754059, 35.321308, 33.842213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990803, 35.009644, 33.759640>,  <47.132851, 34.822647, 33.710094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.990803, 35.009644, 33.759640>,  <46.754059, 35.321308, 33.842213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.990803, 35.009644, 33.759640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033797, -0.279869, 0.959443,
		-0.805332, -0.560879, -0.191976,
		0.591860, -0.779159, -0.206431,
		47.168362, 34.775894, 33.697712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.446110, 34.656960, 34.050282>,  <46.754059, 35.321308, 33.842213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.446110, 34.656960, 34.050282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842949, 34.697838, 34.079388>,  <47.081051, 34.722366, 34.096851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.842949, 34.697838, 34.079388>,  <46.446110, 34.656960, 34.050282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.842949, 34.697838, 34.079388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062958, -0.096099, 0.993379,
		0.108515, -0.990111, -0.088905,
		0.992099, 0.102199, 0.072763,
		47.140579, 34.728497, 34.101215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.810532, 34.080143, 34.606178>,  <46.446110, 34.656960, 34.050282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.810532, 34.080143, 34.606178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.987900, 34.436554, 34.567295>,  <47.094318, 34.650402, 34.543964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.987900, 34.436554, 34.567295>,  <46.810532, 34.080143, 34.606178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.987900, 34.436554, 34.567295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076639, 0.070364, 0.994573,
		0.893033, -0.448460, -0.037087,
		0.443416, 0.891029, -0.097207,
		47.120926, 34.703861, 34.538132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.463448, 34.209496, 34.920448>,  <46.810532, 34.080143, 34.606178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.463448, 34.209496, 34.920448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275505, 34.561661, 34.894798>,  <47.162739, 34.772961, 34.879406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.275505, 34.561661, 34.894798>,  <47.463448, 34.209496, 34.920448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.275505, 34.561661, 34.894798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137747, 0.144882, 0.979814,
		0.871930, 0.451537, -0.189347,
		-0.469856, 0.880411, -0.064129,
		47.134548, 34.825783, 34.875561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.974941, 34.768730, 35.049782>,  <47.463448, 34.209496, 34.920448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.974941, 34.768730, 35.049782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601204, 34.829414, 35.178764>,  <47.376961, 34.865826, 35.256153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.601204, 34.829414, 35.178764>,  <47.974941, 34.768730, 35.049782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.601204, 34.829414, 35.178764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354943, 0.315454, 0.880059,
		0.031790, 0.936736, -0.348591,
		-0.934347, 0.151707, 0.322459,
		47.320900, 34.874928, 35.275501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.634846, 36.197777, 27.777555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285801, 36.122009, 27.597481>,  <39.076374, 36.076550, 27.489437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.285801, 36.122009, 27.597481>,  <39.634846, 36.197777, 27.777555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.285801, 36.122009, 27.597481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357786, -0.379526, 0.853199,
		-0.332466, 0.905584, 0.263410,
		-0.872614, -0.189415, -0.450184,
		39.024017, 36.065186, 27.462425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030537, 36.523540, 28.216805>,  <39.634846, 36.197777, 27.777555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030537, 36.523540, 28.216805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895000, 36.219402, 27.995152>,  <38.813679, 36.036919, 27.862160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.895000, 36.219402, 27.995152>,  <39.030537, 36.523540, 28.216805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895000, 36.219402, 27.995152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309737, -0.465990, 0.828804,
		-0.888397, 0.452468, -0.077611,
		-0.338842, -0.760346, -0.554130,
		38.793346, 35.991299, 27.828913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439758, 36.328533, 28.561972>,  <39.030537, 36.523540, 28.216805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439758, 36.328533, 28.561972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505348, 36.005394, 28.335522>,  <38.544704, 35.811512, 28.199652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.505348, 36.005394, 28.335522>,  <38.439758, 36.328533, 28.561972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.505348, 36.005394, 28.335522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435091, -0.574284, 0.693465,
		-0.885329, 0.132602, -0.445657,
		0.163979, -0.807846, -0.566124,
		38.554543, 35.763039, 28.165684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859898, 36.028244, 28.587591>,  <38.439758, 36.328533, 28.561972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859898, 36.028244, 28.587591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132210, 35.751163, 28.492342>,  <38.295597, 35.584915, 28.435192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.132210, 35.751163, 28.492342>,  <37.859898, 36.028244, 28.587591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132210, 35.751163, 28.492342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457658, -0.656075, 0.600096,
		-0.571912, -0.299556, -0.763664,
		0.680784, -0.692699, -0.238123,
		38.336445, 35.543354, 28.420904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480103, 35.427319, 28.696045>,  <37.859898, 36.028244, 28.587591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480103, 35.427319, 28.696045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.859142, 35.299767, 28.688341>,  <38.086567, 35.223236, 28.683718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.859142, 35.299767, 28.688341>,  <37.480103, 35.427319, 28.696045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859142, 35.299767, 28.688341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239144, -0.748037, 0.619072,
		-0.211819, -0.582026, -0.785098,
		0.947598, -0.318883, -0.019260,
		38.143421, 35.204102, 28.682564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449474, 34.691448, 28.536718>,  <37.480103, 35.427319, 28.696045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.449474, 34.691448, 28.536718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787685, 34.780174, 28.730991>,  <37.990612, 34.833408, 28.847555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787685, 34.780174, 28.730991>,  <37.449474, 34.691448, 28.536718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787685, 34.780174, 28.730991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290196, -0.572634, 0.766731,
		0.448187, -0.789233, -0.419808,
		0.845526, 0.221812, 0.485680,
		38.041344, 34.846718, 28.876696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610508, 34.004490, 28.918270>,  <37.449474, 34.691448, 28.536718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610508, 34.004490, 28.918270> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.831001, 34.300911, 29.071623>,  <37.963299, 34.478764, 29.163635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.831001, 34.300911, 29.071623>,  <37.610508, 34.004490, 28.918270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.831001, 34.300911, 29.071623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071809, -0.415658, 0.906682,
		0.831253, -0.527327, -0.175912,
		0.551236, 0.741050, 0.383384,
		37.996372, 34.523228, 29.186638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.153164, 33.678818, 29.286022>,  <37.610508, 34.004490, 28.918270>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.153164, 33.678818, 29.286022> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139111, 34.042480, 29.452007>,  <38.130680, 34.260677, 29.551598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.139111, 34.042480, 29.452007>,  <38.153164, 33.678818, 29.286022>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139111, 34.042480, 29.452007> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024810, -0.415883, 0.909080,
		0.999075, 0.021643, 0.037168,
		-0.035133, 0.909161, 0.414961,
		38.128571, 34.315228, 29.576496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504005, 33.575008, 29.910500>,  <38.153164, 33.678818, 29.286022>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504005, 33.575008, 29.910500> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326321, 33.926796, 29.978867>,  <38.219711, 34.137867, 30.019888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.326321, 33.926796, 29.978867>,  <38.504005, 33.575008, 29.910500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326321, 33.926796, 29.978867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160656, -0.265874, 0.950526,
		0.881401, 0.394773, 0.259396,
		-0.444209, 0.879469, 0.170919,
		38.193058, 34.190636, 30.030142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658070, 33.901436, 30.602375>,  <38.504005, 33.575008, 29.910500>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658070, 33.901436, 30.602375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333076, 34.126324, 30.540678>,  <38.138081, 34.261257, 30.503660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.333076, 34.126324, 30.540678>,  <38.658070, 33.901436, 30.602375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333076, 34.126324, 30.540678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232902, -0.070479, 0.969943,
		0.534446, 0.823982, 0.188204,
		-0.812480, 0.562215, -0.154240,
		38.089333, 34.294987, 30.494406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.735706, 34.424995, 31.070736>,  <38.658070, 33.901436, 30.602375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.735706, 34.424995, 31.070736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351112, 34.407551, 30.962183>,  <38.120358, 34.397083, 30.897051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.351112, 34.407551, 30.962183>,  <38.735706, 34.424995, 31.070736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351112, 34.407551, 30.962183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265353, -0.110214, 0.957831,
		-0.071679, 0.992951, 0.094398,
		-0.961483, -0.043607, -0.271383,
		38.062668, 34.394470, 30.880768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362232, 34.917889, 31.464533>,  <38.735706, 34.424995, 31.070736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.362232, 34.917889, 31.464533> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102379, 34.630985, 31.363731>,  <37.946465, 34.458843, 31.303251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.102379, 34.630985, 31.363731>,  <38.362232, 34.917889, 31.464533>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102379, 34.630985, 31.363731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135450, -0.216972, 0.966735,
		-0.748080, 0.662161, 0.043800,
		-0.649638, -0.717263, -0.252002,
		37.907486, 34.415806, 31.288130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828167, 34.925789, 32.024933>,  <38.362232, 34.917889, 31.464533>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828167, 34.925789, 32.024933> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767132, 34.568359, 31.856056>,  <37.730511, 34.353901, 31.754730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.767132, 34.568359, 31.856056>,  <37.828167, 34.925789, 32.024933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.767132, 34.568359, 31.856056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151457, -0.401003, 0.903470,
		-0.976616, 0.201799, -0.074151,
		-0.152584, -0.893574, -0.422190,
		37.721355, 34.300289, 31.729399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.205162, 34.800262, 32.338562>,  <37.828167, 34.925789, 32.024933>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.205162, 34.800262, 32.338562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338863, 34.454380, 32.188599>,  <37.419083, 34.246849, 32.098621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.338863, 34.454380, 32.188599>,  <37.205162, 34.800262, 32.338562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338863, 34.454380, 32.188599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224993, -0.459493, 0.859211,
		-0.915233, -0.202844, -0.348141,
		0.334254, -0.864708, -0.374906,
		37.439140, 34.194969, 32.076126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740707, 34.369640, 32.640232>,  <37.205162, 34.800262, 32.338562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740707, 34.369640, 32.640232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068687, 34.164761, 32.537998>,  <37.265476, 34.041832, 32.476658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.068687, 34.164761, 32.537998>,  <36.740707, 34.369640, 32.640232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068687, 34.164761, 32.537998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090378, -0.556734, 0.825759,
		-0.565265, -0.653976, -0.502784,
		0.819944, -0.512213, -0.255597,
		37.314674, 34.011101, 32.461323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533688, 33.690117, 32.679317>,  <36.740707, 34.369640, 32.640232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533688, 33.690117, 32.679317> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930389, 33.710697, 32.726254>,  <37.168411, 33.723045, 32.754414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930389, 33.710697, 32.726254>,  <36.533688, 33.690117, 32.679317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930389, 33.710697, 32.726254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062740, -0.603466, 0.794916,
		0.111712, -0.795727, -0.595264,
		0.991758, 0.051455, 0.117339,
		37.227917, 33.726135, 32.761456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760929, 33.064247, 32.768921>,  <36.533688, 33.690117, 32.679317>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760929, 33.064247, 32.768921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074902, 33.263184, 32.916721>,  <37.263287, 33.382545, 33.005402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.074902, 33.263184, 32.916721>,  <36.760929, 33.064247, 32.768921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.074902, 33.263184, 32.916721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084031, -0.676319, 0.731800,
		0.613858, -0.543363, -0.572656,
		0.784931, 0.497343, 0.369505,
		37.310379, 33.412388, 33.027573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.303726, 32.486629, 32.984573>,  <36.760929, 33.064247, 32.768921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.303726, 32.486629, 32.984573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431900, 32.809021, 33.183659>,  <37.508804, 33.002457, 33.303108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431900, 32.809021, 33.183659>,  <37.303726, 32.486629, 32.984573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431900, 32.809021, 33.183659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179103, -0.567489, 0.803666,
		0.930184, -0.168383, -0.326198,
		0.320438, 0.805980, 0.497711,
		37.528030, 33.050816, 33.332973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915676, 32.180187, 33.459183>,  <37.303726, 32.486629, 32.984573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915676, 32.180187, 33.459183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799889, 32.529385, 33.616196>,  <37.730415, 32.738903, 33.710403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.799889, 32.529385, 33.616196>,  <37.915676, 32.180187, 33.459183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799889, 32.529385, 33.616196> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122025, -0.373090, 0.919736,
		0.949378, 0.314133, 0.001470,
		-0.289467, 0.872997, 0.392535,
		37.713047, 32.791283, 33.733955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482727, 32.325645, 34.004791>,  <37.915676, 32.180187, 33.459183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482727, 32.325645, 34.004791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151497, 32.536339, 34.081566>,  <37.952759, 32.662754, 34.127632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.151497, 32.536339, 34.081566>,  <38.482727, 32.325645, 34.004791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151497, 32.536339, 34.081566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033353, -0.295475, 0.954768,
		0.559622, 0.797023, 0.227107,
		-0.828077, 0.526735, 0.191937,
		37.903072, 32.694359, 34.139149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653427, 32.835751, 34.497898>,  <38.482727, 32.325645, 34.004791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653427, 32.835751, 34.497898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267925, 32.730297, 34.514248>,  <38.036625, 32.667027, 34.524055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267925, 32.730297, 34.514248>,  <38.653427, 32.835751, 34.497898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267925, 32.730297, 34.514248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105541, -0.236069, 0.965988,
		-0.245017, 0.935291, 0.255337,
		-0.963757, -0.263632, 0.040871,
		37.978798, 32.651207, 34.526508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.020477, 32.879177, 35.180656>,  <38.653427, 32.835751, 34.497898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.020477, 32.879177, 35.180656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314552, 33.037743, 35.400604>,  <39.490997, 33.132881, 35.532574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.314552, 33.037743, 35.400604>,  <39.020477, 32.879177, 35.180656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314552, 33.037743, 35.400604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561170, 0.099106, -0.821746,
		-0.380243, 0.912709, -0.149592,
		0.735189, 0.396409, 0.549869,
		39.535110, 33.156666, 35.565563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304600, 33.404762, 34.801529>,  <39.020477, 32.879177, 35.180656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304600, 33.404762, 34.801529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597324, 33.312943, 35.058205>,  <39.772957, 33.257851, 35.212208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.597324, 33.312943, 35.058205>,  <39.304600, 33.404762, 34.801529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597324, 33.312943, 35.058205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681488, 0.238795, -0.691774,
		0.005568, 0.943548, 0.331190,
		0.731808, -0.229553, 0.641687,
		39.816868, 33.244076, 35.250710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.723766, 33.968979, 34.905315>,  <39.304600, 33.404762, 34.801529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.723766, 33.968979, 34.905315> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954391, 33.651627, 34.983402>,  <40.092766, 33.461216, 35.030254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.954391, 33.651627, 34.983402>,  <39.723766, 33.968979, 34.905315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954391, 33.651627, 34.983402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648479, 0.299009, -0.700049,
		0.497036, 0.530221, 0.686892,
		0.576567, -0.793385, 0.195219,
		40.127361, 33.413612, 35.041969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.356083, 34.301498, 34.827969>,  <39.723766, 33.968979, 34.905315>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.356083, 34.301498, 34.827969> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445965, 33.912006, 34.813194>,  <40.499893, 33.678310, 34.804329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.445965, 33.912006, 34.813194>,  <40.356083, 34.301498, 34.827969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445965, 33.912006, 34.813194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566232, 0.161330, -0.808303,
		0.793026, 0.160710, 0.587606,
		0.224701, -0.973727, -0.036940,
		40.513374, 33.619888, 34.802113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996471, 34.265335, 34.499340>,  <40.356083, 34.301498, 34.827969>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996471, 34.265335, 34.499340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.839767, 33.901855, 34.441669>,  <40.745747, 33.683769, 34.407066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.839767, 33.901855, 34.441669>,  <40.996471, 34.265335, 34.499340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839767, 33.901855, 34.441669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362646, -0.008486, -0.931888,
		0.845584, -0.417363, 0.332861,
		-0.391760, -0.908700, -0.144179,
		40.722240, 33.629246, 34.398415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549999, 33.842129, 34.227341>,  <40.996471, 34.265335, 34.499340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549999, 33.842129, 34.227341> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.217674, 33.643162, 34.127480>,  <41.018280, 33.523781, 34.067562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.217674, 33.643162, 34.127480>,  <41.549999, 33.842129, 34.227341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217674, 33.643162, 34.127480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335516, -0.089742, -0.937750,
		0.444045, -0.862859, 0.241449,
		-0.830814, -0.497414, -0.249654,
		40.968430, 33.493938, 34.052582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.720013, 33.256878, 33.895283>,  <41.549999, 33.842129, 34.227341>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.720013, 33.256878, 33.895283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.340576, 33.313370, 33.781982>,  <41.112915, 33.347267, 33.714001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.340576, 33.313370, 33.781982>,  <41.720013, 33.256878, 33.895283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.340576, 33.313370, 33.781982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270151, -0.105001, -0.957075,
		-0.164916, -0.984392, 0.061447,
		-0.948589, 0.141237, -0.283251,
		41.056000, 33.355740, 33.697006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572128, 32.696442, 33.445023>,  <41.720013, 33.256878, 33.895283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572128, 32.696442, 33.445023> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.283672, 32.965881, 33.380241>,  <41.110600, 33.127544, 33.341373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.283672, 32.965881, 33.380241>,  <41.572128, 32.696442, 33.445023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.283672, 32.965881, 33.380241> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109863, -0.119626, -0.986722,
		-0.684026, -0.729354, 0.012263,
		-0.721137, 0.673597, -0.161956,
		41.067329, 33.167961, 33.331654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.289436, 32.503551, 32.794426>,  <41.572128, 32.696442, 33.445023>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.289436, 32.503551, 32.794426> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.175156, 32.884171, 32.839909>,  <41.106586, 33.112541, 32.867199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.175156, 32.884171, 32.839909>,  <41.289436, 32.503551, 32.794426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175156, 32.884171, 32.839909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062342, 0.136852, -0.988628,
		-0.956290, -0.275361, -0.098420,
		-0.285698, 0.951550, 0.113704,
		41.089447, 33.169636, 32.874020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726665, 32.673538, 32.258705>,  <41.289436, 32.503551, 32.794426>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726665, 32.673538, 32.258705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886559, 33.024227, 32.365711>,  <40.982494, 33.234642, 32.429916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.886559, 33.024227, 32.365711>,  <40.726665, 32.673538, 32.258705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886559, 33.024227, 32.365711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186370, 0.363489, -0.912766,
		-0.897485, 0.315007, 0.308694,
		0.399735, 0.876725, 0.267518,
		41.006477, 33.287243, 32.445965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283867, 33.228687, 32.032944>,  <40.726665, 32.673538, 32.258705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283867, 33.228687, 32.032944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.644939, 33.391468, 32.088867>,  <40.861584, 33.489136, 32.122421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.644939, 33.391468, 32.088867>,  <40.283867, 33.228687, 32.032944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.644939, 33.391468, 32.088867> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134838, 0.576062, -0.806208,
		-0.408631, 0.708900, 0.574876,
		0.902685, 0.406956, 0.139810,
		40.915745, 33.513554, 32.130810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185760, 33.965477, 31.833136>,  <40.283867, 33.228687, 32.032944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185760, 33.965477, 31.833136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.581635, 33.908234, 31.835674>,  <40.819160, 33.873886, 31.837196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.581635, 33.908234, 31.835674>,  <40.185760, 33.965477, 31.833136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581635, 33.908234, 31.835674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092524, 0.604776, -0.791003,
		0.109365, 0.783432, 0.611780,
		0.989686, -0.143112, 0.006345,
		40.878540, 33.865299, 31.837578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409924, 34.646278, 31.558691>,  <40.185760, 33.965477, 31.833136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409924, 34.646278, 31.558691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706730, 34.384266, 31.501635>,  <40.884815, 34.227058, 31.467400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.706730, 34.384266, 31.501635>,  <40.409924, 34.646278, 31.558691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706730, 34.384266, 31.501635> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167715, 0.387398, -0.906529,
		0.649064, 0.648735, 0.397314,
		0.742016, -0.655031, -0.142643,
		40.929333, 34.187756, 31.458841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998863, 35.027229, 31.388165>,  <40.409924, 34.646278, 31.558691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998863, 35.027229, 31.388165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044403, 34.656303, 31.245544>,  <41.071728, 34.433750, 31.159971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.044403, 34.656303, 31.245544>,  <40.998863, 35.027229, 31.388165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044403, 34.656303, 31.245544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159445, 0.371288, -0.914725,
		0.980620, 0.047294, 0.190128,
		0.113853, -0.927312, -0.356552,
		41.078560, 34.378109, 31.138578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673515, 35.082485, 30.949432>,  <40.998863, 35.027229, 31.388165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673515, 35.082485, 30.949432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.439537, 34.778286, 30.836668>,  <41.299149, 34.595764, 30.769009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.439537, 34.778286, 30.836668>,  <41.673515, 35.082485, 30.949432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439537, 34.778286, 30.836668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125922, 0.258211, -0.957847,
		0.801235, -0.595791, -0.055276,
		-0.584950, -0.760500, -0.281911,
		41.264053, 34.550137, 30.752094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.042194, 34.741924, 30.620237>,  <41.673515, 35.082485, 30.949432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.042194, 34.741924, 30.620237> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.671921, 34.649311, 30.500574>,  <41.449757, 34.593742, 30.428776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.671921, 34.649311, 30.500574>,  <42.042194, 34.741924, 30.620237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.671921, 34.649311, 30.500574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283720, 0.098129, -0.953873,
		0.250210, -0.967865, -0.025146,
		-0.925688, -0.231535, -0.299156,
		41.394215, 34.579849, 30.410828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188480, 34.351814, 30.008625>,  <42.042194, 34.741924, 30.620237>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188480, 34.351814, 30.008625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.803082, 34.454239, 29.977371>,  <41.571842, 34.515694, 29.958618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.803082, 34.454239, 29.977371>,  <42.188480, 34.351814, 30.008625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803082, 34.454239, 29.977371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104968, 0.092834, -0.990133,
		-0.246281, -0.962193, -0.116324,
		-0.963498, 0.256061, -0.078136,
		41.514030, 34.531055, 29.953930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.906307, 33.987885, 29.431307>,  <42.188480, 34.351814, 30.008625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.906307, 33.987885, 29.431307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.661076, 34.299511, 29.483740>,  <41.513935, 34.486488, 29.515200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.661076, 34.299511, 29.483740>,  <41.906307, 33.987885, 29.431307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.661076, 34.299511, 29.483740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116642, 0.074841, -0.990350,
		-0.781363, -0.622453, 0.044988,
		-0.613079, 0.779071, 0.131082,
		41.477150, 34.533234, 29.523064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445152, 33.955990, 28.940660>,  <41.906307, 33.987885, 29.431307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445152, 33.955990, 28.940660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393105, 34.340828, 29.036522>,  <41.361874, 34.571732, 29.094040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.393105, 34.340828, 29.036522>,  <41.445152, 33.955990, 28.940660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.393105, 34.340828, 29.036522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061040, 0.233479, -0.970444,
		-0.989617, -0.140906, 0.028345,
		-0.130123, 0.962098, 0.239656,
		41.354069, 34.629456, 29.108419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.773056, 34.293835, 28.478870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.003677, 34.596756, 28.601559>,  <41.142048, 34.778511, 28.675171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.003677, 34.596756, 28.601559>,  <40.773056, 34.293835, 28.478870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003677, 34.596756, 28.601559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101099, 0.438632, -0.892962,
		-0.810783, 0.483828, 0.329457,
		0.576550, 0.757306, 0.306720,
		41.176643, 34.823948, 28.693575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.415325, 34.837498, 28.234352>,  <40.773056, 34.293835, 28.478870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.415325, 34.837498, 28.234352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.787106, 34.964554, 28.309433>,  <41.010174, 35.040787, 28.354481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.787106, 34.964554, 28.309433>,  <40.415325, 34.837498, 28.234352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.787106, 34.964554, 28.309433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069001, 0.649413, -0.757299,
		-0.362445, 0.690918, 0.625512,
		0.929448, 0.317640, 0.187702,
		41.065941, 35.059845, 28.365744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319454, 35.570164, 28.215639>,  <40.415325, 34.837498, 28.234352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319454, 35.570164, 28.215639> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706787, 35.492813, 28.152470>,  <40.939186, 35.446404, 28.114567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.706787, 35.492813, 28.152470>,  <40.319454, 35.570164, 28.215639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.706787, 35.492813, 28.152470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035378, 0.519870, -0.853512,
		0.247154, 0.832069, 0.496565,
		0.968330, -0.193381, -0.157925,
		40.997288, 35.434799, 28.105093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.671494, 36.196396, 28.082478>,  <40.319454, 35.570164, 28.215639>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.671494, 36.196396, 28.082478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.922520, 35.933666, 27.915272>,  <41.073135, 35.776028, 27.814949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.922520, 35.933666, 27.915272>,  <40.671494, 36.196396, 28.082478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.922520, 35.933666, 27.915272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102700, 0.602052, -0.791825,
		0.771759, 0.453993, 0.445284,
		0.627567, -0.656829, -0.418014,
		41.110790, 35.736618, 27.789867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135731, 36.682735, 27.810282>,  <40.671494, 36.196396, 28.082478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135731, 36.682735, 27.810282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.211754, 36.334797, 27.628183>,  <41.257370, 36.126034, 27.518925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.211754, 36.334797, 27.628183>,  <41.135731, 36.682735, 27.810282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211754, 36.334797, 27.628183> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226003, 0.490007, -0.841912,
		0.955406, 0.057127, 0.289718,
		0.190060, -0.869845, -0.455244,
		41.268772, 36.073845, 27.491610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.853886, 36.645306, 27.464533>,  <41.135731, 36.682735, 27.810282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.853886, 36.645306, 27.464533> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627296, 36.374428, 27.276693>,  <41.491344, 36.211903, 27.163990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.627296, 36.374428, 27.276693>,  <41.853886, 36.645306, 27.464533>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.627296, 36.374428, 27.276693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118149, 0.497215, -0.859545,
		0.815569, -0.542388, -0.201647,
		-0.566469, -0.677194, -0.469596,
		41.457355, 36.171268, 27.135815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.285564, 36.442318, 26.866253>,  <41.853886, 36.645306, 27.464533>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.285564, 36.442318, 26.866253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.917240, 36.303261, 26.795546>,  <41.696243, 36.219826, 26.753120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.917240, 36.303261, 26.795546>,  <42.285564, 36.442318, 26.866253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.917240, 36.303261, 26.795546> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094784, 0.240178, -0.966090,
		0.378313, -0.906343, -0.188208,
		-0.920812, -0.347646, -0.176770,
		41.640995, 36.198967, 26.742516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357136, 36.074718, 26.301725>,  <42.285564, 36.442318, 26.866253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357136, 36.074718, 26.301725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965401, 36.155216, 26.293711>,  <41.730358, 36.203514, 26.288902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.965401, 36.155216, 26.293711>,  <42.357136, 36.074718, 26.301725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965401, 36.155216, 26.293711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061175, 0.200344, -0.977814,
		-0.192764, -0.958834, -0.208516,
		-0.979336, 0.201244, -0.020038,
		41.671600, 36.215588, 26.287699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027908, 35.731716, 25.816587>,  <42.357136, 36.074718, 26.301725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027908, 35.731716, 25.816587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731247, 35.995678, 25.864712>,  <41.553249, 36.154057, 25.893587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.731247, 35.995678, 25.864712>,  <42.027908, 35.731716, 25.816587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.731247, 35.995678, 25.864712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175108, 0.363609, -0.914946,
		-0.647526, -0.657504, -0.385226,
		-0.741652, 0.659907, 0.120312,
		41.508751, 36.193649, 25.900805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577507, 35.688118, 25.254845>,  <42.027908, 35.731716, 25.816587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577507, 35.688118, 25.254845> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.507927, 36.057697, 25.391109>,  <41.466179, 36.279446, 25.472868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.507927, 36.057697, 25.391109>,  <41.577507, 35.688118, 25.254845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507927, 36.057697, 25.391109> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292053, 0.378779, -0.878198,
		-0.940449, -0.053274, -0.335733,
		-0.173954, 0.923953, 0.340664,
		41.455742, 36.334885, 25.493309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.602432, 36.053028, 24.614508>,  <41.577507, 35.688118, 25.254845>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.602432, 36.053028, 24.614508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.612087, 36.316280, 24.915512>,  <41.617882, 36.474232, 25.096115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.612087, 36.316280, 24.915512>,  <41.602432, 36.053028, 24.614508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612087, 36.316280, 24.915512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478408, 0.653341, -0.586747,
		-0.877806, 0.374171, -0.299086,
		0.024139, 0.658135, 0.752513,
		41.619328, 36.513721, 25.141266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292545, 36.638000, 24.261456>,  <41.602432, 36.053028, 24.614508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292545, 36.638000, 24.261456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.500469, 36.753006, 24.583235>,  <41.625225, 36.822010, 24.776302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.500469, 36.753006, 24.583235>,  <41.292545, 36.638000, 24.261456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500469, 36.753006, 24.583235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496601, 0.664521, -0.558390,
		-0.695116, 0.689745, 0.202646,
		0.519809, 0.287511, 0.804447,
		41.656410, 36.839260, 24.824570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312328, 37.326424, 24.168585>,  <41.292545, 36.638000, 24.261456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312328, 37.326424, 24.168585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.618862, 37.275566, 24.420479>,  <41.802780, 37.245052, 24.571615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.618862, 37.275566, 24.420479>,  <41.312328, 37.326424, 24.168585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.618862, 37.275566, 24.420479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572506, 0.579915, -0.579599,
		-0.291499, 0.804694, 0.517200,
		0.766332, -0.127148, 0.629737,
		41.848763, 37.237423, 24.609400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607658, 38.036503, 24.421959>,  <41.312328, 37.326424, 24.168585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607658, 38.036503, 24.421959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894073, 37.761665, 24.471251>,  <42.065922, 37.596764, 24.500826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.894073, 37.761665, 24.471251>,  <41.607658, 38.036503, 24.421959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.894073, 37.761665, 24.471251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632063, 0.563240, -0.532219,
		0.296278, 0.458979, 0.837591,
		0.716042, -0.687095, 0.123228,
		42.108887, 37.555538, 24.508219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102684, 38.455444, 24.437366>,  <41.607658, 38.036503, 24.421959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102684, 38.455444, 24.437366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.271229, 38.096760, 24.383148>,  <42.372356, 37.881550, 24.350616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.271229, 38.096760, 24.383148>,  <42.102684, 38.455444, 24.437366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271229, 38.096760, 24.383148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583374, 0.382437, -0.716531,
		0.694357, 0.222841, 0.684258,
		0.421358, -0.896707, -0.135548,
		42.397636, 37.827747, 24.342484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778755, 38.629807, 24.488434>,  <42.102684, 38.455444, 24.437366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778755, 38.629807, 24.488434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.757786, 38.269718, 24.315529>,  <42.745205, 38.053665, 24.211786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.757786, 38.269718, 24.315529>,  <42.778755, 38.629807, 24.488434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.757786, 38.269718, 24.315529> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604486, 0.315941, -0.731285,
		0.794889, -0.299631, 0.527610,
		-0.052422, -0.900224, -0.432261,
		42.742058, 37.999653, 24.185850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492630, 38.364697, 24.275505>,  <42.778755, 38.629807, 24.488434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492630, 38.364697, 24.275505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.220226, 38.210030, 24.026758>,  <43.056786, 38.117229, 23.877510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.220226, 38.210030, 24.026758>,  <43.492630, 38.364697, 24.275505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.220226, 38.210030, 24.026758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549242, 0.291953, -0.783005,
		0.484318, -0.874787, 0.013552,
		-0.681006, -0.386666, -0.621868,
		43.015923, 38.094028, 23.840199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.872528, 38.003159, 23.641569>,  <43.492630, 38.364697, 24.275505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.872528, 38.003159, 23.641569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.499859, 38.077034, 23.516422>,  <43.276257, 38.121357, 23.441334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.499859, 38.077034, 23.516422>,  <43.872528, 38.003159, 23.641569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499859, 38.077034, 23.516422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357946, 0.319183, -0.877495,
		-0.062199, -0.929524, -0.363480,
		-0.931668, 0.184685, -0.312867,
		43.220360, 38.132439, 23.422562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912491, 37.996506, 22.982430>,  <43.872528, 38.003159, 23.641569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912491, 37.996506, 22.982430> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.540604, 38.141552, 23.008181>,  <43.317471, 38.228580, 23.023632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.540604, 38.141552, 23.008181>,  <43.912491, 37.996506, 22.982430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540604, 38.141552, 23.008181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105921, 0.430693, -0.896261,
		-0.352723, -0.826447, -0.438830,
		-0.929714, 0.362613, 0.064377,
		43.261688, 38.250336, 23.027494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438644, 37.822926, 22.349297>,  <43.912491, 37.996506, 22.982430>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438644, 37.822926, 22.349297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.290844, 38.160385, 22.505104>,  <43.202164, 38.362862, 22.598589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.290844, 38.160385, 22.505104>,  <43.438644, 37.822926, 22.349297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.290844, 38.160385, 22.505104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014112, 0.424229, -0.905445,
		-0.929124, -0.329064, -0.168657,
		-0.369498, 0.843651, 0.389518,
		43.179993, 38.413479, 22.621960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129848, 38.196747, 21.854628>,  <43.438644, 37.822926, 22.349297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129848, 38.196747, 21.854628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149670, 38.502979, 22.111198>,  <43.161564, 38.686718, 22.265141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.149670, 38.502979, 22.111198>,  <43.129848, 38.196747, 21.854628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.149670, 38.502979, 22.111198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022198, 0.641215, -0.767040,
		-0.998525, 0.052250, 0.014783,
		0.049557, 0.765580, 0.641429,
		43.164536, 38.732655, 22.303627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535801, 38.742855, 21.686277>,  <43.129848, 38.196747, 21.854628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535801, 38.742855, 21.686277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.843258, 38.924561, 21.866428>,  <43.027733, 39.033585, 21.974518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.843258, 38.924561, 21.866428>,  <42.535801, 38.742855, 21.686277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.843258, 38.924561, 21.866428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138490, 0.569191, -0.810458,
		-0.624512, 0.685322, 0.374591,
		0.768639, 0.454263, 0.450377,
		43.073849, 39.060841, 22.001541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.529488, 39.461567, 21.438194>,  <42.535801, 38.742855, 21.686277>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.529488, 39.461567, 21.438194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.896580, 39.392342, 21.581198>,  <43.116837, 39.350807, 21.667000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.896580, 39.392342, 21.581198>,  <42.529488, 39.461567, 21.438194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896580, 39.392342, 21.581198> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384113, 0.615804, -0.687926,
		-0.101096, 0.768657, 0.631622,
		0.917734, -0.173068, 0.357507,
		43.171902, 39.340420, 21.688450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942959, 39.562988, 20.917215>,  <42.529488, 39.461567, 21.438194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942959, 39.562988, 20.917215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.690342, 39.374706, 21.163660>,  <41.538773, 39.261738, 21.311527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.690342, 39.374706, 21.163660>,  <41.942959, 39.562988, 20.917215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.690342, 39.374706, 21.163660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767770, 0.490448, -0.412298,
		-0.108102, -0.733416, -0.671129,
		-0.631540, -0.470703, 0.616113,
		41.500881, 39.233494, 21.348494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219265, 39.776623, 21.026081>,  <41.942959, 39.562988, 20.917215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219265, 39.776623, 21.026081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.921909, 39.647163, 20.791945>,  <40.743496, 39.569489, 20.651463>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.921909, 39.647163, 20.791945>,  <41.219265, 39.776623, 21.026081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921909, 39.647163, 20.791945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519444, -0.271956, 0.810073,
		-0.421365, 0.906252, 0.034053,
		-0.743391, -0.323647, -0.585340,
		40.698891, 39.550068, 20.616343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653015, 40.063725, 21.194038>,  <41.219265, 39.776623, 21.026081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653015, 40.063725, 21.194038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.487137, 39.747284, 21.014181>,  <40.387611, 39.557419, 20.906267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.487137, 39.747284, 21.014181>,  <40.653015, 40.063725, 21.194038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487137, 39.747284, 21.014181> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380930, -0.297826, 0.875324,
		-0.826389, 0.534276, -0.177848,
		-0.414697, -0.791106, -0.449642,
		40.362728, 39.509953, 20.879288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.974056, 40.058216, 21.553974>,  <40.653015, 40.063725, 21.194038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.974056, 40.058216, 21.553974> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.044720, 39.709030, 21.372108>,  <40.087116, 39.499519, 21.262989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.044720, 39.709030, 21.372108>,  <39.974056, 40.058216, 21.553974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044720, 39.709030, 21.372108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482509, -0.479427, 0.733031,
		-0.857891, 0.089885, -0.505909,
		0.176658, -0.872966, -0.454667,
		40.097717, 39.447140, 21.235708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.357555, 39.571754, 21.610569>,  <39.974056, 40.058216, 21.553974>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.357555, 39.571754, 21.610569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661903, 39.321579, 21.541409>,  <39.844513, 39.171474, 21.499912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.661903, 39.321579, 21.541409>,  <39.357555, 39.571754, 21.610569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661903, 39.321579, 21.541409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369122, -0.636312, 0.677389,
		-0.533686, -0.451587, -0.715017,
		0.760873, -0.625442, -0.172900,
		39.890163, 39.133945, 21.489538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101955, 38.858967, 21.617323>,  <39.357555, 39.571754, 21.610569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101955, 38.858967, 21.617323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.496189, 38.824593, 21.675615>,  <39.732731, 38.803967, 21.710590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.496189, 38.824593, 21.675615>,  <39.101955, 38.858967, 21.617323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496189, 38.824593, 21.675615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165906, -0.659641, 0.733041,
		0.033135, -0.746651, -0.664390,
		0.985585, -0.085937, 0.145731,
		39.791866, 38.798813, 21.719334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.076138, 38.153271, 21.632378>,  <39.101955, 38.858967, 21.617323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.076138, 38.153271, 21.632378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.409416, 38.302200, 21.795921>,  <39.609383, 38.391560, 21.894047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.409416, 38.302200, 21.795921>,  <39.076138, 38.153271, 21.632378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.409416, 38.302200, 21.795921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100830, -0.624686, 0.774339,
		0.543713, -0.686399, -0.482942,
		0.833193, 0.372323, 0.408859,
		39.659374, 38.413898, 21.918579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447250, 37.567249, 21.857855>,  <39.076138, 38.153271, 21.632378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447250, 37.567249, 21.857855> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555130, 37.881256, 22.080927>,  <39.619858, 38.069660, 22.214769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.555130, 37.881256, 22.080927>,  <39.447250, 37.567249, 21.857855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.555130, 37.881256, 22.080927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065309, -0.562894, 0.823945,
		0.960729, -0.258635, -0.100541,
		0.269695, 0.785021, 0.557679,
		39.636040, 38.116764, 22.248230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875500, 37.311260, 22.355085>,  <39.447250, 37.567249, 21.857855>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875500, 37.311260, 22.355085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.780540, 37.665894, 22.513887>,  <39.723564, 37.878674, 22.609169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.780540, 37.665894, 22.513887>,  <39.875500, 37.311260, 22.355085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780540, 37.665894, 22.513887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024300, -0.403141, 0.914816,
		0.971109, 0.226821, 0.074160,
		-0.237396, 0.886583, 0.397005,
		39.709320, 37.931870, 22.632990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145672, 37.252186, 22.941195>,  <39.875500, 37.311260, 22.355085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145672, 37.252186, 22.941195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.901611, 37.560493, 23.014551>,  <39.755177, 37.745480, 23.058565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.901611, 37.560493, 23.014551>,  <40.145672, 37.252186, 22.941195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.901611, 37.560493, 23.014551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195122, -0.370529, 0.908094,
		0.767883, 0.518290, 0.376473,
		-0.610151, 0.770768, 0.183393,
		39.718567, 37.791725, 23.069569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.301685, 37.445446, 23.535070>,  <40.145672, 37.252186, 22.941195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.301685, 37.445446, 23.535070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.939915, 37.616039, 23.539675>,  <39.722855, 37.718395, 23.542437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.939915, 37.616039, 23.539675>,  <40.301685, 37.445446, 23.535070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939915, 37.616039, 23.539675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168434, -0.381718, 0.908802,
		0.391978, 0.820004, 0.417069,
		-0.904424, 0.426479, 0.011509,
		39.668587, 37.743984, 23.543127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.286655, 37.857132, 24.109810>,  <40.301685, 37.445446, 23.535070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.286655, 37.857132, 24.109810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903782, 37.786041, 24.018410>,  <39.674057, 37.743385, 23.963570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903782, 37.786041, 24.018410>,  <40.286655, 37.857132, 24.109810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903782, 37.786041, 24.018410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160718, -0.330246, 0.930111,
		-0.240771, 0.927011, 0.287541,
		-0.957183, -0.177731, -0.228501,
		39.616627, 37.732723, 23.949860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800144, 38.181976, 24.633471>,  <40.286655, 37.857132, 24.109810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800144, 38.181976, 24.633471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.596233, 37.892094, 24.448030>,  <39.473888, 37.718163, 24.336765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.596233, 37.892094, 24.448030>,  <39.800144, 38.181976, 24.633471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.596233, 37.892094, 24.448030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156645, -0.451680, 0.878320,
		-0.845928, 0.520365, 0.116732,
		-0.509773, -0.724711, -0.463602,
		39.443302, 37.674679, 24.308950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388206, 37.966358, 25.116085>,  <39.800144, 38.181976, 24.633471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388206, 37.966358, 25.116085> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337006, 37.664700, 24.858442>,  <39.306286, 37.483704, 24.703857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337006, 37.664700, 24.858442>,  <39.388206, 37.966358, 25.116085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337006, 37.664700, 24.858442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289163, -0.592854, 0.751604,
		-0.948684, 0.282457, -0.142187,
		-0.127999, -0.754150, -0.644107,
		39.298607, 37.438454, 24.665211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.779736, 37.658272, 25.352694>,  <39.388206, 37.966358, 25.116085>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.779736, 37.658272, 25.352694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000019, 37.396965, 25.144865>,  <39.132191, 37.240181, 25.020168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.000019, 37.396965, 25.144865>,  <38.779736, 37.658272, 25.352694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.000019, 37.396965, 25.144865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070390, -0.656599, 0.750948,
		-0.831724, -0.376982, -0.407579,
		0.550710, -0.653271, -0.519573,
		39.165234, 37.200985, 24.988993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411484, 36.999924, 25.334366>,  <38.779736, 37.658272, 25.352694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411484, 36.999924, 25.334366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803078, 36.942142, 25.276773>,  <39.038033, 36.907475, 25.242218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.803078, 36.942142, 25.276773>,  <38.411484, 36.999924, 25.334366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.803078, 36.942142, 25.276773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006059, -0.726234, 0.687421,
		-0.203862, -0.672100, -0.711844,
		0.978981, -0.144452, -0.143980,
		39.096771, 36.898808, 25.233580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519966, 36.325733, 25.428303>,  <38.411484, 36.999924, 25.334366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519966, 36.325733, 25.428303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891872, 36.468327, 25.465075>,  <39.115017, 36.553883, 25.487137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.891872, 36.468327, 25.465075>,  <38.519966, 36.325733, 25.428303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891872, 36.468327, 25.465075> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150586, -0.596119, 0.788648,
		0.335944, -0.719415, -0.607933,
		0.929766, 0.356488, 0.091928,
		39.170803, 36.575272, 25.492653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982342, 35.801270, 25.362843>,  <38.519966, 36.325733, 25.428303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982342, 35.801270, 25.362843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140938, 36.096016, 25.581867>,  <39.236095, 36.272865, 25.713282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140938, 36.096016, 25.581867>,  <38.982342, 35.801270, 25.362843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140938, 36.096016, 25.581867> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040069, -0.581989, 0.812209,
		0.917163, -0.343976, -0.201229,
		0.396493, 0.736865, 0.547561,
		39.259888, 36.317074, 25.746136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326427, 35.416008, 25.925594>,  <38.982342, 35.801270, 25.362843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326427, 35.416008, 25.925594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.318642, 35.792107, 26.061571>,  <39.313969, 36.017765, 26.143156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.318642, 35.792107, 26.061571>,  <39.326427, 35.416008, 25.925594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318642, 35.792107, 26.061571> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237860, -0.334598, 0.911848,
		0.971104, -0.063106, 0.230161,
		-0.019468, 0.940246, 0.339940,
		39.312801, 36.074181, 26.163553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.613201, 35.331787, 26.511084>,  <39.326427, 35.416008, 25.925594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.613201, 35.331787, 26.511084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404209, 35.669895, 26.555874>,  <39.278816, 35.872761, 26.582748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.404209, 35.669895, 26.555874>,  <39.613201, 35.331787, 26.511084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404209, 35.669895, 26.555874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255011, -0.280223, 0.925443,
		0.813626, 0.454968, 0.361962,
		-0.522477, 0.845269, 0.111975,
		39.247467, 35.923477, 26.589466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795891, 35.690578, 27.162064>,  <39.613201, 35.331787, 26.511084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795891, 35.690578, 27.162064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.451118, 35.877468, 27.083307>,  <39.244255, 35.989601, 27.036053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.451118, 35.877468, 27.083307>,  <39.795891, 35.690578, 27.162064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.451118, 35.877468, 27.083307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325130, -0.211366, 0.921745,
		0.389049, 0.858500, 0.334094,
		-0.861935, 0.467228, -0.196892,
		39.192539, 36.017635, 27.024240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.943810, 33.428692, 31.186687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630653, 33.655495, 31.289133>,  <41.442760, 33.791576, 31.350601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.630653, 33.655495, 31.289133>,  <41.943810, 33.428692, 31.186687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.630653, 33.655495, 31.289133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025398, -0.382179, 0.923739,
		0.621647, 0.729687, 0.284802,
		-0.782886, 0.567006, 0.256113,
		41.395786, 33.825596, 31.365967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146996, 33.627045, 31.890562>,  <41.943810, 33.428692, 31.186687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146996, 33.627045, 31.890562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.760345, 33.728424, 31.875553>,  <41.528355, 33.789249, 31.866549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.760345, 33.728424, 31.875553>,  <42.146996, 33.627045, 31.890562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.760345, 33.728424, 31.875553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054773, -0.061355, 0.996612,
		0.250283, 0.965402, 0.073189,
		-0.966622, 0.253444, -0.037522,
		41.470360, 33.804459, 31.864296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.074757, 34.082439, 32.338608>,  <42.146996, 33.627045, 31.890562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.074757, 34.082439, 32.338608> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720932, 33.904881, 32.281330>,  <41.508636, 33.798344, 32.246964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.720932, 33.904881, 32.281330>,  <42.074757, 34.082439, 32.338608>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.720932, 33.904881, 32.281330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110604, -0.098611, 0.988960,
		-0.453117, 0.890635, 0.038131,
		-0.884563, -0.443898, -0.143190,
		41.455563, 33.771709, 32.238373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.635139, 34.303185, 32.928524>,  <42.074757, 34.082439, 32.338608>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.635139, 34.303185, 32.928524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433952, 33.998486, 32.765179>,  <41.313240, 33.815666, 32.667171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.433952, 33.998486, 32.765179>,  <41.635139, 34.303185, 32.928524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433952, 33.998486, 32.765179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437750, -0.182874, 0.880302,
		-0.745248, 0.621526, -0.241476,
		-0.502971, -0.761750, -0.408359,
		41.283062, 33.769962, 32.642670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837940, 34.395359, 32.922546>,  <41.635139, 34.303185, 32.928524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837940, 34.395359, 32.922546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951038, 34.011684, 32.923782>,  <41.018898, 33.781479, 32.924522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.951038, 34.011684, 32.923782>,  <40.837940, 34.395359, 32.922546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.951038, 34.011684, 32.923782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328003, -0.093660, 0.940022,
		-0.901371, -0.266799, -0.341099,
		0.282744, -0.959191, 0.003089,
		41.035862, 33.723927, 32.924709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.195335, 34.190540, 33.190533>,  <40.837940, 34.395359, 32.922546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.195335, 34.190540, 33.190533> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469280, 33.903156, 33.239151>,  <40.633648, 33.730724, 33.268322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.469280, 33.903156, 33.239151>,  <40.195335, 34.190540, 33.190533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469280, 33.903156, 33.239151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458726, -0.295511, 0.838000,
		-0.566153, -0.629673, -0.531962,
		0.684867, -0.718461, 0.121543,
		40.674740, 33.687618, 33.275616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812057, 33.591259, 33.469002>,  <40.195335, 34.190540, 33.190533>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812057, 33.591259, 33.469002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200733, 33.512653, 33.521465>,  <40.433937, 33.465488, 33.552944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.200733, 33.512653, 33.521465>,  <39.812057, 33.591259, 33.469002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.200733, 33.512653, 33.521465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196759, -0.365756, 0.909675,
		-0.130791, -0.909728, -0.394067,
		0.971689, -0.196513, 0.131160,
		40.492241, 33.453697, 33.560814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750725, 33.015972, 33.877190>,  <39.812057, 33.591259, 33.469002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750725, 33.015972, 33.877190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.134369, 33.123390, 33.912960>,  <40.364555, 33.187840, 33.934422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.134369, 33.123390, 33.912960>,  <39.750725, 33.015972, 33.877190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.134369, 33.123390, 33.912960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018996, -0.254155, 0.966977,
		0.282403, -0.929134, -0.238661,
		0.959108, 0.268544, 0.089424,
		40.422100, 33.203953, 33.939789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272961, 32.432762, 34.187904>,  <39.750725, 33.015972, 33.877190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272961, 32.432762, 34.187904> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414001, 32.802414, 34.246773>,  <40.498627, 33.024204, 34.282093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.414001, 32.802414, 34.246773>,  <40.272961, 32.432762, 34.187904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414001, 32.802414, 34.246773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056491, -0.178008, 0.982406,
		0.934066, -0.338086, -0.114971,
		0.352603, 0.924127, 0.147173,
		40.519783, 33.079651, 34.290924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.788517, 32.349228, 34.683781>,  <40.272961, 32.432762, 34.187904>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.788517, 32.349228, 34.683781> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.702763, 32.738708, 34.714600>,  <40.651310, 32.972397, 34.733093>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.702763, 32.738708, 34.714600>,  <40.788517, 32.349228, 34.683781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.702763, 32.738708, 34.714600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268602, -0.134614, 0.953799,
		0.939091, 0.183784, 0.290398,
		-0.214385, 0.973706, 0.077050,
		40.638447, 33.030819, 34.737713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.927631, 32.485882, 35.330372>,  <40.788517, 32.349228, 34.683781>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.927631, 32.485882, 35.330372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670250, 32.774807, 35.228992>,  <40.515823, 32.948162, 35.168163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.670250, 32.774807, 35.228992>,  <40.927631, 32.485882, 35.330372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.670250, 32.774807, 35.228992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510220, -0.157867, 0.845431,
		0.570654, 0.673308, 0.470118,
		-0.643451, 0.722312, -0.253448,
		40.477215, 32.991501, 35.152958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814262, 32.904888, 35.984581>,  <40.927631, 32.485882, 35.330372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814262, 32.904888, 35.984581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491962, 33.020649, 35.777885>,  <40.298584, 33.090107, 35.653870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.491962, 33.020649, 35.777885>,  <40.814262, 32.904888, 35.984581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491962, 33.020649, 35.777885> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475484, 0.204084, 0.855724,
		0.353107, 0.935198, -0.026833,
		-0.805748, 0.289404, -0.516736,
		40.250237, 33.107471, 35.622864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.528244, 33.488228, 36.367859>,  <40.814262, 32.904888, 35.984581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.528244, 33.488228, 36.367859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.235752, 33.410370, 36.106350>,  <40.060257, 33.363655, 35.949444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.235752, 33.410370, 36.106350>,  <40.528244, 33.488228, 36.367859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.235752, 33.410370, 36.106350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677327, 0.320750, 0.662079,
		0.080824, 0.926947, -0.366383,
		-0.731229, -0.194649, -0.653771,
		40.016384, 33.351974, 35.910217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104042, 34.049427, 36.146385>,  <40.528244, 33.488228, 36.367859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104042, 34.049427, 36.146385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.832253, 33.758148, 36.110497>,  <39.669178, 33.583382, 36.088963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.832253, 33.758148, 36.110497>,  <40.104042, 34.049427, 36.146385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.832253, 33.758148, 36.110497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659912, 0.553107, 0.508516,
		-0.320674, 0.404730, -0.856365,
		-0.679474, -0.728193, -0.089719,
		39.628410, 33.539692, 36.083580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.259663, 34.771336, 36.480564>,  <40.104042, 34.049427, 36.146385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.259663, 34.771336, 36.480564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151558, 35.078228, 36.713223>,  <40.086697, 35.262363, 36.852818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.151558, 35.078228, 36.713223>,  <40.259663, 34.771336, 36.480564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151558, 35.078228, 36.713223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495614, 0.407074, -0.767240,
		-0.825424, -0.495630, 0.270233,
		-0.270263, 0.767230, 0.581650,
		40.070480, 35.308395, 36.887718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596596, 34.849186, 36.373466>,  <40.259663, 34.771336, 36.480564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596596, 34.849186, 36.373466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.725910, 35.198277, 36.519802>,  <39.803501, 35.407730, 36.607601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.725910, 35.198277, 36.519802>,  <39.596596, 34.849186, 36.373466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725910, 35.198277, 36.519802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394855, 0.475740, -0.785977,
		-0.859985, 0.109645, 0.498401,
		0.323288, 0.872725, 0.365835,
		39.822895, 35.460094, 36.629551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026730, 35.335648, 36.289722>,  <39.596596, 34.849186, 36.373466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026730, 35.335648, 36.289722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357159, 35.559387, 36.317272>,  <39.555416, 35.693630, 36.333801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.357159, 35.559387, 36.317272>,  <39.026730, 35.335648, 36.289722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357159, 35.559387, 36.317272> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233999, 0.451597, -0.860991,
		-0.512694, 0.695121, 0.503936,
		0.826068, 0.559346, 0.068873,
		39.604980, 35.727192, 36.337933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834393, 36.050125, 36.142223>,  <39.026730, 35.335648, 36.289722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834393, 36.050125, 36.142223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228912, 36.025257, 36.081100>,  <39.465626, 36.010338, 36.044426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.228912, 36.025257, 36.081100>,  <38.834393, 36.050125, 36.142223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228912, 36.025257, 36.081100> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116733, 0.391476, -0.912754,
		0.116563, 0.918086, 0.378856,
		0.986299, -0.062168, -0.152803,
		39.524803, 36.006607, 36.035259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047531, 36.724663, 35.885803>,  <38.834393, 36.050125, 36.142223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047531, 36.724663, 35.885803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356735, 36.495220, 35.777416>,  <39.542259, 36.357555, 35.712383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356735, 36.495220, 35.777416>,  <39.047531, 36.724663, 35.885803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356735, 36.495220, 35.777416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038930, 0.469216, -0.882225,
		0.633196, 0.671422, 0.385040,
		0.773012, -0.573611, -0.270967,
		39.588638, 36.323135, 35.696125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.511833, 37.220093, 35.633118>,  <39.047531, 36.724663, 35.885803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.511833, 37.220093, 35.633118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.631111, 36.862213, 35.500095>,  <39.702679, 36.647488, 35.420280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.631111, 36.862213, 35.500095>,  <39.511833, 37.220093, 35.633118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631111, 36.862213, 35.500095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220030, 0.403460, -0.888148,
		0.928797, 0.191671, 0.317171,
		0.298199, -0.894696, -0.332559,
		39.720570, 36.593803, 35.400326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118610, 37.341270, 35.267960>,  <39.511833, 37.220093, 35.633118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118610, 37.341270, 35.267960> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.968338, 36.991920, 35.143970>,  <39.878174, 36.782310, 35.069576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.968338, 36.991920, 35.143970>,  <40.118610, 37.341270, 35.267960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968338, 36.991920, 35.143970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094438, 0.296654, -0.950304,
		0.921927, -0.386280, -0.028967,
		-0.375677, -0.873375, -0.309973,
		39.855637, 36.729908, 35.050980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617458, 37.045338, 34.812958>,  <40.118610, 37.341270, 35.267960>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617458, 37.045338, 34.812958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.303871, 36.833591, 34.683239>,  <40.115719, 36.706543, 34.605408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.303871, 36.833591, 34.683239>,  <40.617458, 37.045338, 34.812958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303871, 36.833591, 34.683239> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322581, 0.098953, -0.941355,
		0.530414, -0.842601, 0.093188,
		-0.783966, -0.529368, -0.324293,
		40.068680, 36.674782, 34.585953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858791, 36.573757, 34.248974>,  <40.617458, 37.045338, 34.812958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858791, 36.573757, 34.248974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460293, 36.551304, 34.222633>,  <40.221191, 36.537830, 34.206829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.460293, 36.551304, 34.222633>,  <40.858791, 36.573757, 34.248974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460293, 36.551304, 34.222633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062475, 0.059865, -0.996250,
		0.059865, -0.996627, -0.056134,
		0.996250, 0.056134, 0.065848,
		40.161419, 36.534462, 34.202881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709427, 36.030994, 33.707809>,  <40.858791, 36.573757, 34.248974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709427, 36.030994, 33.707809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409897, 36.292072, 33.753876>,  <40.230179, 36.448719, 33.781517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.409897, 36.292072, 33.753876>,  <40.709427, 36.030994, 33.707809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.409897, 36.292072, 33.753876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008838, 0.183582, -0.982965,
		-0.662714, -0.735046, -0.143238,
		-0.748820, 0.652690, 0.115166,
		40.185249, 36.487881, 33.788425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290138, 35.962349, 33.078827>,  <40.709427, 36.030994, 33.707809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290138, 35.962349, 33.078827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186119, 36.312759, 33.241283>,  <40.123707, 36.523006, 33.338757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.186119, 36.312759, 33.241283>,  <40.290138, 35.962349, 33.078827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186119, 36.312759, 33.241283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095266, 0.395284, -0.913605,
		-0.960886, -0.276270, -0.019336,
		-0.260045, 0.876028, 0.406142,
		40.108105, 36.575569, 33.363125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626850, 36.171551, 32.737503>,  <40.290138, 35.962349, 33.078827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626850, 36.171551, 32.737503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794235, 36.496284, 32.900383>,  <39.894669, 36.691124, 32.998112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794235, 36.496284, 32.900383>,  <39.626850, 36.171551, 32.737503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794235, 36.496284, 32.900383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004717, 0.446393, -0.894825,
		-0.908220, 0.376374, 0.182971,
		0.418466, 0.811835, 0.407198,
		39.919773, 36.739834, 33.022541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250660, 36.697712, 32.421558>,  <39.626850, 36.171551, 32.737503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250660, 36.697712, 32.421558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604092, 36.808189, 32.572819>,  <39.816151, 36.874477, 32.663574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.604092, 36.808189, 32.572819>,  <39.250660, 36.697712, 32.421558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604092, 36.808189, 32.572819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228444, 0.450684, -0.862958,
		-0.408773, 0.848881, 0.335121,
		0.883583, 0.276197, 0.378149,
		39.869167, 36.891048, 32.686264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307495, 37.383396, 32.133675>,  <39.250660, 36.697712, 32.421558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307495, 37.383396, 32.133675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.665012, 37.247540, 32.250824>,  <39.879524, 37.166027, 32.321114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.665012, 37.247540, 32.250824>,  <39.307495, 37.383396, 32.133675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665012, 37.247540, 32.250824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425973, 0.438670, -0.791275,
		0.140277, 0.831992, 0.536760,
		0.893795, -0.339642, 0.292871,
		39.933151, 37.145645, 32.338684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063717, 38.049519, 32.509407>,  <39.307495, 37.383396, 32.133675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063717, 38.049519, 32.509407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718918, 38.161766, 32.340542>,  <38.512039, 38.229115, 32.239223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.718918, 38.161766, 32.340542>,  <39.063717, 38.049519, 32.509407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.718918, 38.161766, 32.340542> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505439, -0.539395, 0.673487,
		-0.038721, 0.793919, 0.606789,
		-0.861993, 0.280617, -0.422163,
		38.460320, 38.245953, 32.213894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650082, 38.214138, 33.070286>,  <39.063717, 38.049519, 32.509407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650082, 38.214138, 33.070286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.385525, 38.162781, 32.774700>,  <38.226791, 38.131966, 32.597347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.385525, 38.162781, 32.774700>,  <38.650082, 38.214138, 33.070286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385525, 38.162781, 32.774700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594957, -0.510117, 0.621134,
		-0.456711, 0.850468, 0.260998,
		-0.661393, -0.128396, -0.738968,
		38.187107, 38.124264, 32.553009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054535, 38.325752, 33.422001>,  <38.650082, 38.214138, 33.070286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054535, 38.325752, 33.422001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949966, 38.132225, 33.087917>,  <37.887226, 38.016109, 32.887466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.949966, 38.132225, 33.087917>,  <38.054535, 38.325752, 33.422001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949966, 38.132225, 33.087917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560304, -0.628521, 0.539464,
		-0.785950, 0.609000, -0.106778,
		-0.261421, -0.483820, -0.835211,
		37.871540, 37.987080, 32.837353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310883, 38.350647, 33.390362>,  <38.054535, 38.325752, 33.422001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310883, 38.350647, 33.390362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.436508, 38.029045, 33.188393>,  <37.511883, 37.836082, 33.067211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.436508, 38.029045, 33.188393>,  <37.310883, 38.350647, 33.390362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436508, 38.029045, 33.188393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602792, -0.579745, 0.548212,
		-0.733490, 0.132191, -0.666722,
		0.314060, -0.804003, -0.504921,
		37.530727, 37.787846, 33.036915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.733280, 38.052208, 33.127148>,  <37.310883, 38.350647, 33.390362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.733280, 38.052208, 33.127148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.986732, 37.743488, 33.105831>,  <37.138805, 37.558258, 33.093040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.986732, 37.743488, 33.105831>,  <36.733280, 38.052208, 33.127148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986732, 37.743488, 33.105831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642468, -0.563323, 0.519521,
		-0.430983, -0.294949, -0.852794,
		0.633631, -0.771798, -0.053288,
		37.176823, 37.511948, 33.089844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346077, 37.416553, 33.032497>,  <36.733280, 38.052208, 33.127148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346077, 37.416553, 33.032497> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.679646, 37.246803, 33.173626>,  <36.879787, 37.144955, 33.258301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.679646, 37.246803, 33.173626>,  <36.346077, 37.416553, 33.032497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679646, 37.246803, 33.173626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546606, -0.546910, 0.634123,
		-0.076147, -0.721661, -0.688046,
		0.833921, -0.424376, 0.352818,
		36.929821, 37.119492, 33.279472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261795, 36.667431, 32.939419>,  <36.346077, 37.416553, 33.032497>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261795, 36.667431, 32.939419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.543282, 36.712852, 33.219959>,  <36.712173, 36.740105, 33.388283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.543282, 36.712852, 33.219959>,  <36.261795, 36.667431, 32.939419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543282, 36.712852, 33.219959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534653, -0.565469, 0.628005,
		0.467906, -0.816915, -0.337214,
		0.703711, 0.113555, 0.701353,
		36.754395, 36.746918, 33.430367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.277958, 36.085499, 33.306034>,  <36.261795, 36.667431, 32.939419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.277958, 36.085499, 33.306034> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443947, 36.334713, 33.571251>,  <36.543541, 36.484241, 33.730381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.443947, 36.334713, 33.571251>,  <36.277958, 36.085499, 33.306034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443947, 36.334713, 33.571251> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564043, -0.395646, 0.724790,
		0.713901, -0.674750, 0.187239,
		0.414971, 0.623039, 0.663040,
		36.568439, 36.521626, 33.770164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316299, 35.668400, 33.829220>,  <36.277958, 36.085499, 33.306034>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316299, 35.668400, 33.829220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.359440, 36.029819, 33.995098>,  <36.385323, 36.246670, 34.094627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.359440, 36.029819, 33.995098>,  <36.316299, 35.668400, 33.829220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.359440, 36.029819, 33.995098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478528, -0.318453, 0.818290,
		0.871424, -0.286695, 0.398028,
		0.107847, 0.903545, 0.414700,
		36.391792, 36.300884, 34.119507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518749, 35.469086, 34.556786>,  <36.316299, 35.668400, 33.829220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518749, 35.469086, 34.556786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.384865, 35.845871, 34.546398>,  <36.304535, 36.071941, 34.540165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.384865, 35.845871, 34.546398>,  <36.518749, 35.469086, 34.556786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384865, 35.845871, 34.546398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503297, -0.155404, 0.850025,
		0.796658, 0.297578, 0.526103,
		-0.334707, 0.941964, -0.025966,
		36.284454, 36.128460, 34.538609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740364, 35.792149, 35.142048>,  <36.518749, 35.469086, 34.556786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740364, 35.792149, 35.142048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411701, 35.997505, 35.043007>,  <36.214504, 36.120720, 34.983582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.411701, 35.997505, 35.043007>,  <36.740364, 35.792149, 35.142048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411701, 35.997505, 35.043007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411514, -0.233756, 0.880917,
		0.394380, 0.825702, 0.403337,
		-0.821657, 0.513395, -0.247599,
		36.165203, 36.151524, 34.968727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695755, 36.182049, 35.662678>,  <36.740364, 35.792149, 35.142048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695755, 36.182049, 35.662678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323895, 36.141430, 35.521015>,  <36.100777, 36.117058, 35.436016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.323895, 36.141430, 35.521015>,  <36.695755, 36.182049, 35.662678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323895, 36.141430, 35.521015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321027, -0.248421, 0.913908,
		-0.180784, 0.963315, 0.198347,
		-0.929655, -0.101545, -0.354161,
		36.044998, 36.110966, 35.414768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.074802, 41.100452, 30.109821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882401, 40.828377, 29.888559>,  <39.766960, 40.665131, 29.755802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882401, 40.828377, 29.888559>,  <40.074802, 41.100452, 30.109821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882401, 40.828377, 29.888559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427344, -0.369006, 0.825356,
		-0.765511, 0.633390, -0.113178,
		-0.481009, -0.680185, -0.553154,
		39.738098, 40.624321, 29.722612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.465847, 41.053761, 30.501743>,  <40.074802, 41.100452, 30.109821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.465847, 41.053761, 30.501743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490238, 40.728065, 30.270817>,  <39.504871, 40.532646, 30.132261>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490238, 40.728065, 30.270817>,  <39.465847, 41.053761, 30.501743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490238, 40.728065, 30.270817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537360, -0.514199, 0.668464,
		-0.841146, 0.269467, -0.468893,
		0.060975, -0.814240, -0.577317,
		39.508530, 40.483795, 30.097622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765549, 40.796890, 30.448265>,  <39.465847, 41.053761, 30.501743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765549, 40.796890, 30.448265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021191, 40.494808, 30.390011>,  <39.174576, 40.313557, 30.355059>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021191, 40.494808, 30.390011>,  <38.765549, 40.796890, 30.448265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021191, 40.494808, 30.390011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631014, -0.623116, 0.462111,
		-0.439739, -0.203437, -0.874782,
		0.639101, -0.755208, -0.145637,
		39.212921, 40.268246, 30.346319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276649, 40.366447, 30.423899>,  <38.765549, 40.796890, 30.448265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276649, 40.366447, 30.423899> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632534, 40.185688, 30.449804>,  <38.846066, 40.077232, 30.465347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.632534, 40.185688, 30.449804>,  <38.276649, 40.366447, 30.423899>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632534, 40.185688, 30.449804> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428349, -0.777312, 0.460764,
		-0.157878, -0.437690, -0.885156,
		0.889714, -0.451900, 0.064763,
		38.899448, 40.050117, 30.469233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176441, 39.623203, 30.313612>,  <38.276649, 40.366447, 30.423899>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176441, 39.623203, 30.313612> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495872, 39.642265, 30.553610>,  <38.687531, 39.653702, 30.697609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495872, 39.642265, 30.553610>,  <38.176441, 39.623203, 30.313612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495872, 39.642265, 30.553610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189940, -0.925970, 0.326346,
		0.571129, -0.374578, -0.730413,
		0.798583, 0.047651, 0.599996,
		38.735447, 39.656559, 30.733608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338875, 38.953384, 30.376453>,  <38.176441, 39.623203, 30.313612>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338875, 38.953384, 30.376453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561539, 39.112934, 30.667942>,  <38.695137, 39.208664, 30.842834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.561539, 39.112934, 30.667942>,  <38.338875, 38.953384, 30.376453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561539, 39.112934, 30.667942> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158648, -0.810008, 0.564552,
		0.815452, -0.429872, -0.387618,
		0.556659, 0.398870, 0.728721,
		38.728535, 39.232594, 30.886559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794781, 38.433109, 30.560575>,  <38.338875, 38.953384, 30.376453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794781, 38.433109, 30.560575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737041, 38.686600, 30.864565>,  <38.702396, 38.838692, 31.046959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737041, 38.686600, 30.864565>,  <38.794781, 38.433109, 30.560575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737041, 38.686600, 30.864565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102261, -0.773457, 0.625546,
		0.984229, 0.012582, 0.176454,
		-0.144350, 0.633724, 0.759972,
		38.693737, 38.876717, 31.092556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.034924, 38.079983, 31.048405>,  <38.794781, 38.433109, 30.560575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.034924, 38.079983, 31.048405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860374, 38.361046, 31.273207>,  <38.755646, 38.529682, 31.408089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860374, 38.361046, 31.273207>,  <39.034924, 38.079983, 31.048405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860374, 38.361046, 31.273207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206289, -0.686105, 0.697643,
		0.875799, 0.188497, 0.444348,
		-0.436373, 0.702659, 0.562005,
		38.729462, 38.571842, 31.441809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.203976, 37.954140, 31.723946>,  <39.034924, 38.079983, 31.048405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.203976, 37.954140, 31.723946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890232, 38.195362, 31.782049>,  <38.701984, 38.340096, 31.816912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890232, 38.195362, 31.782049>,  <39.203976, 37.954140, 31.723946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.890232, 38.195362, 31.782049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370125, -0.642915, 0.670573,
		0.497783, 0.472207, 0.727484,
		-0.784359, 0.603060, 0.145257,
		38.654922, 38.376282, 31.825626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900284, 38.092987, 32.075161>,  <39.203976, 37.954140, 31.723946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900284, 38.092987, 32.075161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081448, 37.737511, 32.046597>,  <40.190147, 37.524223, 32.029457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081448, 37.737511, 32.046597>,  <39.900284, 38.092987, 32.075161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.081448, 37.737511, 32.046597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541256, 0.337717, -0.770058,
		0.708461, 0.310116, 0.633965,
		0.452908, -0.888693, -0.071407,
		40.217319, 37.470901, 32.025173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.583469, 38.309639, 31.995565>,  <39.900284, 38.092987, 32.075161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.583469, 38.309639, 31.995565> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569351, 37.925636, 31.884462>,  <40.560879, 37.695236, 31.817801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569351, 37.925636, 31.884462>,  <40.583469, 38.309639, 31.995565>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569351, 37.925636, 31.884462> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739415, 0.161890, -0.653497,
		0.672325, -0.228444, 0.704126,
		-0.035297, -0.960003, -0.277757,
		40.558762, 37.637634, 31.801136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.290958, 38.114220, 31.866863>,  <40.583469, 38.309639, 31.995565>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.290958, 38.114220, 31.866863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065979, 37.828476, 31.700325>,  <40.930992, 37.657028, 31.600403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065979, 37.828476, 31.700325>,  <41.290958, 38.114220, 31.866863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065979, 37.828476, 31.700325> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648729, -0.069066, -0.757879,
		0.512642, -0.696364, 0.502270,
		-0.562450, -0.714358, -0.416345,
		40.897243, 37.614170, 31.575422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.776943, 37.589806, 31.582817>,  <41.290958, 38.114220, 31.866863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.776943, 37.589806, 31.582817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434277, 37.575241, 31.376982>,  <41.228676, 37.566502, 31.253481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434277, 37.575241, 31.376982>,  <41.776943, 37.589806, 31.582817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.434277, 37.575241, 31.376982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476676, 0.325538, -0.816581,
		0.197250, -0.944828, -0.261521,
		-0.856663, -0.036409, -0.514590,
		41.177277, 37.564320, 31.222605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992714, 37.179165, 31.168747>,  <41.776943, 37.589806, 31.582817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992714, 37.179165, 31.168747> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672455, 37.342842, 30.993696>,  <41.480297, 37.441048, 30.888666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.672455, 37.342842, 30.993696>,  <41.992714, 37.179165, 31.168747>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.672455, 37.342842, 30.993696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542481, 0.185091, -0.819424,
		-0.254304, -0.893476, -0.370175,
		-0.800652, 0.409196, -0.437625,
		41.432259, 37.465599, 30.862410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127934, 37.093964, 30.469690>,  <41.992714, 37.179165, 31.168747>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127934, 37.093964, 30.469690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838932, 37.370419, 30.462591>,  <41.665531, 37.536293, 30.458332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.838932, 37.370419, 30.462591>,  <42.127934, 37.093964, 30.469690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.838932, 37.370419, 30.462591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381820, 0.377484, -0.843635,
		-0.576369, -0.616306, -0.536624,
		-0.722504, 0.691139, -0.017748,
		41.622181, 37.577759, 30.457268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909260, 37.100006, 29.779320>,  <42.127934, 37.093964, 30.469690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909260, 37.100006, 29.779320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763546, 37.444099, 29.922037>,  <41.676117, 37.650555, 30.007668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763546, 37.444099, 29.922037>,  <41.909260, 37.100006, 29.779320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.763546, 37.444099, 29.922037> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130751, 0.426568, -0.894955,
		-0.922063, -0.279367, -0.267868,
		-0.364284, 0.860229, 0.356795,
		41.654259, 37.702168, 30.029076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.335281, 37.295338, 29.345755>,  <41.909260, 37.100006, 29.779320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.335281, 37.295338, 29.345755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489334, 37.607285, 29.543133>,  <41.581764, 37.794453, 29.661560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.489334, 37.607285, 29.543133>,  <41.335281, 37.295338, 29.345755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489334, 37.607285, 29.543133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199046, 0.451909, -0.869574,
		-0.901140, 0.433119, 0.018815,
		0.385132, 0.779863, 0.493444,
		41.604874, 37.841244, 29.691166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.948536, 37.836258, 29.112921>,  <41.335281, 37.295338, 29.345755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.948536, 37.836258, 29.112921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293716, 37.972622, 29.262104>,  <41.500824, 38.054440, 29.351614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.293716, 37.972622, 29.262104>,  <40.948536, 37.836258, 29.112921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293716, 37.972622, 29.262104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130243, 0.563096, -0.816064,
		-0.488214, 0.752798, 0.441523,
		0.862950, 0.340909, 0.372958,
		41.552601, 38.074894, 29.373991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.892582, 38.504086, 28.859898>,  <40.948536, 37.836258, 29.112921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.892582, 38.504086, 28.859898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273529, 38.458626, 28.973093>,  <41.502098, 38.431351, 29.041010>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273529, 38.458626, 28.973093>,  <40.892582, 38.504086, 28.859898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273529, 38.458626, 28.973093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301315, 0.493623, -0.815810,
		-0.046973, 0.862219, 0.504354,
		0.952367, -0.113648, 0.282987,
		41.559238, 38.424530, 29.057989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.206711, 39.155518, 28.858597>,  <40.892582, 38.504086, 28.859898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.206711, 39.155518, 28.858597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502167, 38.886539, 28.839708>,  <41.679440, 38.725151, 28.828375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502167, 38.886539, 28.839708>,  <41.206711, 39.155518, 28.858597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502167, 38.886539, 28.839708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372207, 0.465243, -0.803126,
		0.562029, 0.575643, 0.593935,
		0.738638, -0.672446, -0.047222,
		41.723759, 38.684807, 28.825542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787029, 39.524036, 28.758581>,  <41.206711, 39.155518, 28.858597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787029, 39.524036, 28.758581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864624, 39.153606, 28.629124>,  <41.911182, 38.931347, 28.551449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864624, 39.153606, 28.629124>,  <41.787029, 39.524036, 28.758581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864624, 39.153606, 28.629124> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497390, 0.377212, -0.781226,
		0.845560, -0.009428, 0.533797,
		0.193989, -0.926079, -0.323645,
		41.922821, 38.875782, 28.532030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.499271, 39.522411, 28.666670>,  <41.787029, 39.524036, 28.758581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.499271, 39.522411, 28.666670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410873, 39.197014, 28.451490>,  <42.357834, 39.001778, 28.322382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.410873, 39.197014, 28.451490>,  <42.499271, 39.522411, 28.666670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410873, 39.197014, 28.451490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430524, 0.413562, -0.802257,
		0.875105, -0.408897, 0.258831,
		-0.220998, -0.813492, -0.537950,
		42.344574, 38.952965, 28.290106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.103592, 39.229195, 28.318123>,  <42.499271, 39.522411, 28.666670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.103592, 39.229195, 28.318123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792370, 39.099388, 28.102966>,  <42.605637, 39.021503, 27.973873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792370, 39.099388, 28.102966>,  <43.103592, 39.229195, 28.318123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792370, 39.099388, 28.102966> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526469, 0.130312, -0.840148,
		0.342736, -0.936861, 0.069459,
		-0.778050, -0.324517, -0.537891,
		42.558956, 39.002033, 27.941599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.954762, 36.849186, 25.110847> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085178, 37.114422, 25.380369>,  <36.163429, 37.273563, 25.542082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085178, 37.114422, 25.380369>,  <35.954762, 36.849186, 25.110847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085178, 37.114422, 25.380369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163177, -0.662578, 0.731001,
		0.931167, -0.348284, -0.107826,
		0.326040, 0.663090, 0.673803,
		36.182991, 37.313347, 25.582510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438396, 36.411053, 25.522465>,  <35.954762, 36.849186, 25.110847>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438396, 36.411053, 25.522465> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347450, 36.736618, 25.736324>,  <36.292881, 36.931957, 25.864639>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347450, 36.736618, 25.736324>,  <36.438396, 36.411053, 25.522465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347450, 36.736618, 25.736324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155776, -0.572356, 0.805073,
		0.961269, 0.099761, 0.256922,
		-0.227366, 0.813914, 0.534648,
		36.279240, 36.980793, 25.896719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770988, 36.276340, 26.066784>,  <36.438396, 36.411053, 25.522465>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770988, 36.276340, 26.066784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.500637, 36.537472, 26.203604>,  <36.338425, 36.694149, 26.285696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.500637, 36.537472, 26.203604>,  <36.770988, 36.276340, 26.066784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500637, 36.537472, 26.203604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045220, -0.499963, 0.864865,
		0.735621, 0.569080, 0.367437,
		-0.675882, 0.652828, 0.342050,
		36.297871, 36.733322, 26.306219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036087, 36.550888, 26.694714>,  <36.770988, 36.276340, 26.066784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036087, 36.550888, 26.694714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.642006, 36.618755, 26.704449>,  <36.405560, 36.659477, 26.710289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.642006, 36.618755, 26.704449>,  <37.036087, 36.550888, 26.694714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642006, 36.618755, 26.704449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049716, -0.418747, 0.906741,
		0.164036, 0.892112, 0.420985,
		-0.985201, 0.169668, 0.024337,
		36.346447, 36.669655, 26.711750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905468, 36.761494, 27.416502>,  <37.036087, 36.550888, 26.694714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.905468, 36.761494, 27.416502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555767, 36.645706, 27.260611>,  <36.345947, 36.576233, 27.167076>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.555767, 36.645706, 27.260611>,  <36.905468, 36.761494, 27.416502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555767, 36.645706, 27.260611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246060, -0.427819, 0.869727,
		-0.418491, 0.856259, 0.302796,
		-0.874254, -0.289467, -0.389730,
		36.293491, 36.558865, 27.143692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335724, 36.964073, 27.951031>,  <36.905468, 36.761494, 27.416502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335724, 36.964073, 27.951031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151634, 36.696537, 27.717503>,  <36.041180, 36.536015, 27.577387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.151634, 36.696537, 27.717503>,  <36.335724, 36.964073, 27.951031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151634, 36.696537, 27.717503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393746, -0.435617, 0.809445,
		-0.795711, 0.602404, -0.062871,
		-0.460226, -0.668840, -0.583819,
		36.013565, 36.495884, 27.542356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.729408, 36.873329, 28.223696>,  <36.335724, 36.964073, 27.951031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.729408, 36.873329, 28.223696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730709, 36.524448, 28.028042>,  <35.731491, 36.315121, 27.910650>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.730709, 36.524448, 28.028042>,  <35.729408, 36.873329, 28.223696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730709, 36.524448, 28.028042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326627, -0.463236, 0.823850,
		-0.945148, 0.157086, -0.286391,
		0.003251, -0.872203, -0.489134,
		35.731686, 36.262787, 27.881302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.084370, 36.596718, 28.321417>,  <35.729408, 36.873329, 28.223696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.084370, 36.596718, 28.321417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356354, 36.315075, 28.239544>,  <35.519543, 36.146088, 28.190420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.356354, 36.315075, 28.239544>,  <35.084370, 36.596718, 28.321417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356354, 36.315075, 28.239544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309668, -0.528770, 0.790258,
		-0.664656, -0.473957, -0.577579,
		0.679955, -0.704108, -0.204681,
		35.560341, 36.103844, 28.178141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845085, 36.052776, 28.642025>,  <35.084370, 36.596718, 28.321417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845085, 36.052776, 28.642025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.213284, 35.912910, 28.572250>,  <35.434200, 35.828991, 28.530386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.213284, 35.912910, 28.572250>,  <34.845085, 36.052776, 28.642025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213284, 35.912910, 28.572250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133386, -0.700752, 0.700824,
		-0.367293, -0.621835, -0.691677,
		0.920491, -0.349668, -0.174437,
		35.489429, 35.808010, 28.519918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842796, 35.306854, 28.537458>,  <34.845085, 36.052776, 28.642025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842796, 35.306854, 28.537458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218647, 35.376701, 28.655176>,  <35.444157, 35.418610, 28.725807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218647, 35.376701, 28.655176>,  <34.842796, 35.306854, 28.537458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218647, 35.376701, 28.655176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099397, -0.683668, 0.722993,
		0.327445, -0.708596, -0.625037,
		0.939628, 0.174614, 0.294296,
		35.500534, 35.429085, 28.743465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147892, 34.725838, 28.667324>,  <34.842796, 35.306854, 28.537458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147892, 34.725838, 28.667324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387287, 34.975548, 28.868158>,  <35.530926, 35.125374, 28.988659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387287, 34.975548, 28.868158>,  <35.147892, 34.725838, 28.667324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387287, 34.975548, 28.868158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079134, -0.577588, 0.812484,
		0.797212, -0.525996, -0.296279,
		0.598490, 0.624276, 0.502084,
		35.566833, 35.162830, 29.018784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471798, 34.339123, 29.101879>,  <35.147892, 34.725838, 28.667324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471798, 34.339123, 29.101879> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.555019, 34.697556, 29.258726>,  <35.604950, 34.912613, 29.352835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.555019, 34.697556, 29.258726>,  <35.471798, 34.339123, 29.101879>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555019, 34.697556, 29.258726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171274, -0.428072, 0.887367,
		0.963006, -0.117457, -0.242535,
		0.208050, 0.896079, 0.392118,
		35.617435, 34.966381, 29.376362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074173, 34.154293, 29.495831>,  <35.471798, 34.339123, 29.101879>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074173, 34.154293, 29.495831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900307, 34.490513, 29.625160>,  <35.795986, 34.692245, 29.702759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.900307, 34.490513, 29.625160>,  <36.074173, 34.154293, 29.495831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900307, 34.490513, 29.625160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127494, -0.297968, 0.946023,
		0.891522, 0.452425, 0.022351,
		-0.434665, 0.840551, 0.323327,
		35.769909, 34.742680, 29.722158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448502, 34.438107, 30.075043>,  <36.074173, 34.154293, 29.495831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448502, 34.438107, 30.075043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078537, 34.583878, 30.118378>,  <35.856560, 34.671341, 30.144379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.078537, 34.583878, 30.118378>,  <36.448502, 34.438107, 30.075043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078537, 34.583878, 30.118378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000780, -0.286774, 0.957998,
		0.380191, 0.885975, 0.265524,
		-0.924908, 0.364429, 0.108337,
		35.801064, 34.693207, 30.150879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958080, 34.851448, 30.421125>,  <36.448502, 34.438107, 30.075043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958080, 34.851448, 30.421125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307991, 34.657646, 30.419689>,  <37.517937, 34.541367, 30.418827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.307991, 34.657646, 30.419689>,  <36.958080, 34.851448, 30.421125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.307991, 34.657646, 30.419689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267719, 0.489519, -0.829878,
		0.403837, 0.725000, 0.557933,
		0.874781, -0.484505, -0.003590,
		37.570427, 34.512295, 30.418612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386604, 35.212921, 29.994034>,  <36.958080, 34.851448, 30.421125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.386604, 35.212921, 29.994034> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632607, 34.899242, 30.027010>,  <37.780209, 34.711033, 30.046797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632607, 34.899242, 30.027010>,  <37.386604, 35.212921, 29.994034>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632607, 34.899242, 30.027010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501124, 0.307984, -0.808716,
		0.608805, 0.538678, 0.582394,
		0.615005, -0.784201, 0.082442,
		37.817108, 34.663982, 30.051743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111717, 35.480267, 30.073500>,  <37.386604, 35.212921, 29.994034>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111717, 35.480267, 30.073500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117901, 35.112381, 29.916588>,  <38.121613, 34.891647, 29.822441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.117901, 35.112381, 29.916588>,  <38.111717, 35.480267, 30.073500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.117901, 35.112381, 29.916588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451279, 0.356513, -0.818075,
		0.892249, -0.164382, 0.420559,
		0.015458, -0.919716, -0.392280,
		38.122540, 34.836468, 29.798904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.724442, 35.486149, 29.608604>,  <38.111717, 35.480267, 30.073500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.724442, 35.486149, 29.608604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508274, 35.171326, 29.489620>,  <38.378574, 34.982430, 29.418230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.508274, 35.171326, 29.489620>,  <38.724442, 35.486149, 29.608604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508274, 35.171326, 29.489620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299843, 0.150174, -0.942095,
		0.786156, -0.598317, 0.154838,
		-0.540419, -0.787061, -0.297461,
		38.346149, 34.935207, 29.400381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226109, 35.044201, 29.332426>,  <38.724442, 35.486149, 29.608604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226109, 35.044201, 29.332426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864574, 34.949966, 29.189548>,  <38.647655, 34.893425, 29.103823>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.864574, 34.949966, 29.189548>,  <39.226109, 35.044201, 29.332426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864574, 34.949966, 29.189548> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270852, 0.331251, -0.903832,
		0.331251, -0.913659, -0.235586,
		0.903832, 0.235586, 0.357194,
		38.593426, 34.879292, 29.082390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391529, 34.820648, 28.625021>,  <39.226109, 35.044201, 29.332426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391529, 34.820648, 28.625021> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008492, 34.935066, 28.638826>,  <38.778667, 35.003719, 28.647110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.008492, 34.935066, 28.638826>,  <39.391529, 34.820648, 28.625021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008492, 34.935066, 28.638826> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064284, 0.328874, -0.942183,
		-0.280860, -0.900010, -0.333315,
		-0.957594, 0.286048, 0.034511,
		38.721214, 35.020882, 28.649179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202366, 34.571606, 28.036877>,  <39.391529, 34.820648, 28.625021>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202366, 34.571606, 28.036877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936413, 34.841442, 28.165159>,  <38.776840, 35.003345, 28.242128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.936413, 34.841442, 28.165159>,  <39.202366, 34.571606, 28.036877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936413, 34.841442, 28.165159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045209, 0.392226, -0.918757,
		-0.745577, -0.625366, -0.230288,
		-0.664884, 0.674593, 0.320707,
		38.736946, 35.043819, 28.261372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.833473, 34.748138, 27.413193>,  <39.202366, 34.571606, 28.036877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.833473, 34.748138, 27.413193> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.760914, 35.062164, 27.650093>,  <38.717377, 35.250580, 27.792234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.760914, 35.062164, 27.650093>,  <38.833473, 34.748138, 27.413193>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760914, 35.062164, 27.650093> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032311, 0.606676, -0.794292,
		-0.982879, -0.124946, -0.135416,
		-0.181397, 0.785069, 0.592252,
		38.706493, 35.297684, 27.827768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.316036, 35.085182, 27.080870>,  <38.833473, 34.748138, 27.413193>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.316036, 35.085182, 27.080870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468132, 35.371941, 27.314611>,  <38.559391, 35.543995, 27.454857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.468132, 35.371941, 27.314611>,  <38.316036, 35.085182, 27.080870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.468132, 35.371941, 27.314611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015862, 0.626663, -0.779129,
		-0.924750, 0.305527, 0.226913,
		0.380243, 0.716900, 0.584354,
		38.582207, 35.587009, 27.489918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.973007, 35.727119, 26.887880>,  <38.316036, 35.085182, 27.080870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.973007, 35.727119, 26.887880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.297253, 35.861671, 27.079613>,  <38.491798, 35.942402, 27.194653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.297253, 35.861671, 27.079613>,  <37.973007, 35.727119, 26.887880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297253, 35.861671, 27.079613> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260737, 0.525598, -0.809792,
		-0.524333, 0.781406, 0.338349,
		0.810612, 0.336380, 0.479330,
		38.540436, 35.962585, 27.223412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002014, 36.369923, 26.670849>,  <37.973007, 35.727119, 26.887880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002014, 36.369923, 26.670849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364670, 36.257061, 26.796318>,  <38.582264, 36.189342, 26.871599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.364670, 36.257061, 26.796318>,  <38.002014, 36.369923, 26.670849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364670, 36.257061, 26.796318> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418739, 0.510888, -0.750767,
		0.051579, 0.812024, 0.581341,
		0.906641, -0.282154, 0.313674,
		38.636662, 36.172417, 26.890421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439240, 36.957417, 26.546440>,  <38.002014, 36.369923, 26.670849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439240, 36.957417, 26.546440> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.710701, 36.664463, 26.568483>,  <38.873577, 36.488689, 26.581709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.710701, 36.664463, 26.568483>,  <38.439240, 36.957417, 26.546440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710701, 36.664463, 26.568483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501785, 0.407566, -0.762956,
		0.536316, 0.545439, 0.644097,
		0.678658, -0.732384, 0.055109,
		38.914299, 36.444748, 26.585016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135174, 37.273022, 26.550552>,  <38.439240, 36.957417, 26.546440>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135174, 37.273022, 26.550552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198513, 36.892811, 26.443649>,  <39.236519, 36.664684, 26.379507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.198513, 36.892811, 26.443649>,  <39.135174, 37.273022, 26.550552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198513, 36.892811, 26.443649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540453, 0.309965, -0.782197,
		0.826338, -0.020580, 0.562798,
		0.158350, -0.950525, -0.267259,
		39.246017, 36.607655, 26.363472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967369, 37.098446, 26.530310>,  <39.135174, 37.273022, 26.550552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967369, 37.098446, 26.530310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746727, 36.872665, 26.284668>,  <39.614342, 36.737198, 26.137283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746727, 36.872665, 26.284668>,  <39.967369, 37.098446, 26.530310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746727, 36.872665, 26.284668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401588, 0.465573, -0.788650,
		0.731067, -0.681640, -0.030135,
		-0.551606, -0.564454, -0.614103,
		39.581245, 36.703331, 26.100437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316433, 36.433910, 26.334295>,  <39.967369, 37.098446, 26.530310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316433, 36.433910, 26.334295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.709980, 36.366165, 26.311239>,  <40.946110, 36.325516, 26.297405>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.709980, 36.366165, 26.311239>,  <40.316433, 36.433910, 26.334295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709980, 36.366165, 26.311239> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036686, -0.506330, 0.861559,
		-0.175103, -0.845545, -0.504374,
		0.983866, -0.169365, -0.057640,
		41.005138, 36.315357, 26.293947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.458332, 35.738064, 26.413189>,  <40.316433, 36.433910, 26.334295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.458332, 35.738064, 26.413189> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.818481, 35.885258, 26.506073>,  <41.034569, 35.973572, 26.561804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.818481, 35.885258, 26.506073>,  <40.458332, 35.738064, 26.413189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818481, 35.885258, 26.506073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020165, -0.497801, 0.867057,
		0.434656, -0.785355, -0.440785,
		0.900371, 0.367983, 0.232209,
		41.088593, 35.995651, 26.575735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746861, 35.238407, 26.658722>,  <40.458332, 35.738064, 26.413189>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746861, 35.238407, 26.658722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.996540, 35.525265, 26.782707>,  <41.146347, 35.697380, 26.857100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.996540, 35.525265, 26.782707>,  <40.746861, 35.238407, 26.658722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.996540, 35.525265, 26.782707> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144987, -0.496187, 0.856024,
		0.767694, -0.489389, -0.413696,
		0.624200, 0.717145, 0.309965,
		41.183800, 35.740410, 26.875696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.353230, 34.932083, 26.856283>,  <40.746861, 35.238407, 26.658722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.353230, 34.932083, 26.856283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317047, 35.275856, 27.057556>,  <41.295338, 35.482121, 27.178320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317047, 35.275856, 27.057556>,  <41.353230, 34.932083, 26.856283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317047, 35.275856, 27.057556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247269, -0.470051, 0.847296,
		0.964715, 0.201065, -0.169991,
		-0.090457, 0.859433, 0.503182,
		41.289909, 35.533688, 27.208511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962292, 34.902081, 27.243284>,  <41.353230, 34.932083, 26.856283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962292, 34.902081, 27.243284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.695526, 35.144547, 27.416622>,  <41.535465, 35.290028, 27.520626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.695526, 35.144547, 27.416622>,  <41.962292, 34.902081, 27.243284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695526, 35.144547, 27.416622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239920, -0.375910, 0.895059,
		0.705453, 0.700895, 0.105268,
		-0.666914, 0.606166, 0.433346,
		41.495453, 35.326397, 27.546625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.239250, 35.043446, 27.943150>,  <41.962292, 34.902081, 27.243284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.239250, 35.043446, 27.943150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.859749, 35.164078, 27.980909>,  <41.632046, 35.236458, 28.003565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.859749, 35.164078, 27.980909>,  <42.239250, 35.043446, 27.943150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859749, 35.164078, 27.980909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034801, -0.197189, 0.979748,
		0.314090, 0.932826, 0.176588,
		-0.948755, 0.301583, 0.094398,
		41.575123, 35.254551, 28.009230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311218, 35.339596, 28.611956>,  <42.239250, 35.043446, 27.943150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311218, 35.339596, 28.611956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.923832, 35.273567, 28.537315>,  <41.691399, 35.233948, 28.492531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.923832, 35.273567, 28.537315>,  <42.311218, 35.339596, 28.611956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.923832, 35.273567, 28.537315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134418, -0.284397, 0.949236,
		-0.209763, 0.944388, 0.253241,
		-0.968468, -0.165075, -0.186599,
		41.633293, 35.224045, 28.481337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982147, 35.713200, 29.198990>,  <42.311218, 35.339596, 28.611956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982147, 35.713200, 29.198990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.727253, 35.459682, 29.023611>,  <41.574318, 35.307571, 28.918383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.727253, 35.459682, 29.023611>,  <41.982147, 35.713200, 29.198990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727253, 35.459682, 29.023611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236069, -0.381043, 0.893911,
		-0.733626, 0.673133, 0.093193,
		-0.637231, -0.633797, -0.438449,
		41.536083, 35.269543, 28.892076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.164146, 35.898247, 29.383186>,  <41.982147, 35.713200, 29.198990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.164146, 35.898247, 29.383186> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.251431, 35.516251, 29.302816>,  <41.303802, 35.287052, 29.254595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.251431, 35.516251, 29.302816>,  <41.164146, 35.898247, 29.383186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251431, 35.516251, 29.302816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233706, -0.251031, 0.939343,
		-0.947505, -0.158017, -0.277965,
		0.218210, -0.954994, -0.200924,
		41.316895, 35.229752, 29.242538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.638206, 35.505051, 29.758696>,  <41.164146, 35.898247, 29.383186>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.638206, 35.505051, 29.758696> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.913227, 35.222237, 29.692516>,  <41.078239, 35.052547, 29.652809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.913227, 35.222237, 29.692516>,  <40.638206, 35.505051, 29.758696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913227, 35.222237, 29.692516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169893, -0.378161, 0.910017,
		-0.705977, -0.597579, -0.380127,
		0.687556, -0.707031, -0.165448,
		41.119495, 35.010128, 29.642881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298664, 34.872242, 29.899384>,  <40.638206, 35.505051, 29.758696>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298664, 34.872242, 29.899384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.689964, 34.791019, 29.916302>,  <40.924744, 34.742287, 29.926453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.689964, 34.791019, 29.916302>,  <40.298664, 34.872242, 29.899384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689964, 34.791019, 29.916302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137475, -0.482064, 0.865283,
		-0.155312, -0.852280, -0.499496,
		0.978253, -0.203057, 0.042297,
		40.983440, 34.730103, 29.928991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.238155, 34.158112, 30.052004>,  <40.298664, 34.872242, 29.899384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.238155, 34.158112, 30.052004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.600182, 34.286610, 30.163475>,  <40.817398, 34.363708, 30.230358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.600182, 34.286610, 30.163475>,  <40.238155, 34.158112, 30.052004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600182, 34.286610, 30.163475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037813, -0.591903, 0.805122,
		0.423591, -0.739224, -0.523562,
		0.905064, 0.321245, 0.278677,
		40.871700, 34.382984, 30.247078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580757, 33.543053, 30.274807>,  <40.238155, 34.158112, 30.052004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580757, 33.543053, 30.274807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.779057, 33.852287, 30.433079>,  <40.898037, 34.037830, 30.528042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.779057, 33.852287, 30.433079>,  <40.580757, 33.543053, 30.274807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779057, 33.852287, 30.433079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067704, -0.488628, 0.869862,
		0.865821, -0.404446, -0.294579,
		0.495752, 0.773089, 0.395682,
		40.927780, 34.084213, 30.551783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213531, 33.249142, 30.555998>,  <40.580757, 33.543053, 30.274807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213531, 33.249142, 30.555998> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.143513, 33.598408, 30.737963>,  <41.101501, 33.807968, 30.847141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.143513, 33.598408, 30.737963>,  <41.213531, 33.249142, 30.555998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143513, 33.598408, 30.737963> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133747, -0.436675, 0.889622,
		0.975434, 0.216565, -0.040347,
		-0.175042, 0.873164, 0.454912,
		41.091000, 33.860355, 30.874437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<43.381813, 38.822632, 27.723955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.002701, 38.838219, 27.597338>,  <42.775234, 38.847569, 27.521366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.002701, 38.838219, 27.597338>,  <43.381813, 38.822632, 27.723955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002701, 38.838219, 27.597338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308690, 0.361597, -0.879749,
		0.080182, -0.931520, -0.354741,
		-0.947777, 0.038965, -0.316545,
		42.718369, 38.849907, 27.502375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431038, 38.482525, 27.064512>,  <43.381813, 38.822632, 27.723955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431038, 38.482525, 27.064512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.077778, 38.669220, 27.045771>,  <42.865822, 38.781239, 27.034525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.077778, 38.669220, 27.045771>,  <43.431038, 38.482525, 27.064512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077778, 38.669220, 27.045771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133619, 0.154561, -0.978906,
		-0.449654, -0.870783, -0.198867,
		-0.883152, 0.466741, -0.046854,
		42.812832, 38.809242, 27.031713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.154247, 38.102211, 26.569101>,  <43.431038, 38.482525, 27.064512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.154247, 38.102211, 26.569101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.989376, 38.463726, 26.615198>,  <42.890453, 38.680634, 26.642857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.989376, 38.463726, 26.615198>,  <43.154247, 38.102211, 26.569101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989376, 38.463726, 26.615198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214496, 0.219187, -0.951813,
		-0.885493, -0.367600, -0.284203,
		-0.412180, 0.903785, 0.115240,
		42.865723, 38.734863, 26.649771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704510, 38.240166, 25.966270>,  <43.154247, 38.102211, 26.569101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704510, 38.240166, 25.966270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.776054, 38.605793, 26.111866>,  <42.818981, 38.825169, 26.199224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.776054, 38.605793, 26.111866>,  <42.704510, 38.240166, 25.966270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776054, 38.605793, 26.111866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414591, 0.265483, -0.870421,
		-0.892257, 0.306594, -0.331479,
		0.178864, 0.914067, 0.363991,
		42.829712, 38.880013, 26.221064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.469719, 38.708008, 25.513649>,  <42.704510, 38.240166, 25.966270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.469719, 38.708008, 25.513649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.717201, 38.939278, 25.726408>,  <42.865692, 39.078037, 25.854063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.717201, 38.939278, 25.726408>,  <42.469719, 38.708008, 25.513649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717201, 38.939278, 25.726408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257156, 0.490700, -0.832517,
		-0.742340, 0.651867, 0.154920,
		0.618710, 0.578172, 0.531898,
		42.902813, 39.112728, 25.885977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388760, 39.295635, 25.234709>,  <42.469719, 38.708008, 25.513649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388760, 39.295635, 25.234709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.729027, 39.367344, 25.432386>,  <42.933186, 39.410370, 25.550993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.729027, 39.367344, 25.432386>,  <42.388760, 39.295635, 25.234709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729027, 39.367344, 25.432386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338758, 0.531932, -0.776074,
		-0.402009, 0.827592, 0.391765,
		0.850665, 0.179275, 0.494195,
		42.984226, 39.421127, 25.580645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.441498, 40.065132, 25.365877>,  <42.388760, 39.295635, 25.234709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.441498, 40.065132, 25.365877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.785896, 39.861691, 25.364588>,  <42.992535, 39.739624, 25.363815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.785896, 39.861691, 25.364588>,  <42.441498, 40.065132, 25.365877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785896, 39.861691, 25.364588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322616, 0.551014, -0.769611,
		0.393205, 0.661590, 0.638504,
		0.860993, -0.508607, -0.003222,
		43.044193, 39.709106, 25.363621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975719, 40.625839, 25.398245>,  <42.441498, 40.065132, 25.365877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975719, 40.625839, 25.398245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.160027, 40.292316, 25.276623>,  <43.270611, 40.092201, 25.203650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.160027, 40.292316, 25.276623>,  <42.975719, 40.625839, 25.398245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160027, 40.292316, 25.276623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512630, 0.529698, -0.675745,
		0.724500, 0.155498, 0.671506,
		0.460772, -0.833811, -0.304053,
		43.298260, 40.042171, 25.185408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682705, 40.848328, 25.291445>,  <42.975719, 40.625839, 25.398245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682705, 40.848328, 25.291445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.610966, 40.529091, 25.061354>,  <43.567921, 40.337547, 24.923300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.610966, 40.529091, 25.061354>,  <43.682705, 40.848328, 25.291445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610966, 40.529091, 25.061354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604074, 0.372160, -0.704693,
		0.776485, -0.473864, 0.415360,
		-0.179349, -0.798091, -0.575225,
		43.557159, 40.289665, 24.888786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.348289, 40.778320, 24.959946>,  <43.682705, 40.848328, 25.291445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.348289, 40.778320, 24.959946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.097607, 40.541389, 24.757406>,  <43.947197, 40.399231, 24.635883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.097607, 40.541389, 24.757406>,  <44.348289, 40.778320, 24.959946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097607, 40.541389, 24.757406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537399, 0.142026, -0.831283,
		0.564304, -0.793083, 0.229305,
		-0.626709, -0.592325, -0.506348,
		43.909595, 40.363693, 24.605501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.758663, 40.358974, 24.623787>,  <44.348289, 40.778320, 24.959946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.758663, 40.358974, 24.623787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.427120, 40.328030, 24.402153>,  <44.228195, 40.309464, 24.269173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.427120, 40.328030, 24.402153>,  <44.758663, 40.358974, 24.623787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.427120, 40.328030, 24.402153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519471, 0.261282, -0.813561,
		0.207707, -0.962158, -0.176381,
		-0.828859, -0.077358, -0.554083,
		44.178463, 40.304821, 24.235928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972385, 40.144527, 24.052984>,  <44.758663, 40.358974, 24.623787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972385, 40.144527, 24.052984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.614853, 40.298477, 23.960957>,  <44.400333, 40.390846, 23.905739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.614853, 40.298477, 23.960957>,  <44.972385, 40.144527, 24.052984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.614853, 40.298477, 23.960957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363630, 0.321954, -0.874139,
		-0.262359, -0.864997, -0.427725,
		-0.893835, 0.384872, -0.230071,
		44.346703, 40.413940, 23.891935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643158, 39.829021, 23.459032>,  <44.972385, 40.144527, 24.052984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643158, 39.829021, 23.459032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.548195, 40.211994, 23.524704>,  <44.491219, 40.441780, 23.564106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.548195, 40.211994, 23.524704>,  <44.643158, 39.829021, 23.459032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.548195, 40.211994, 23.524704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559063, 0.272882, -0.782933,
		-0.794409, -0.094089, -0.600051,
		-0.237408, 0.957436, 0.164178,
		44.476971, 40.499226, 23.573957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.302864, 40.231300, 22.843393>,  <44.643158, 39.829021, 23.459032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.302864, 40.231300, 22.843393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.539982, 40.455048, 23.075153>,  <44.682251, 40.589294, 23.214211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.539982, 40.455048, 23.075153>,  <44.302864, 40.231300, 22.843393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539982, 40.455048, 23.075153> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647475, 0.096820, -0.755911,
		-0.478928, 0.823248, -0.304780,
		0.592793, 0.559365, 0.579402,
		44.717819, 40.622856, 23.248974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.983494, 39.583725, 22.747929>,  <44.302864, 40.231300, 22.843393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.983494, 39.583725, 22.747929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.700897, 39.438309, 22.505045>,  <43.531338, 39.351059, 22.359314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.700897, 39.438309, 22.505045>,  <43.983494, 39.583725, 22.747929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700897, 39.438309, 22.505045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524521, -0.307031, 0.794109,
		-0.475122, 0.879529, 0.026232,
		-0.706496, -0.363540, -0.607209,
		43.488949, 39.329247, 22.322882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481758, 39.591446, 23.236965>,  <43.983494, 39.583725, 22.747929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481758, 39.591446, 23.236965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.350113, 39.360527, 22.938059>,  <43.271126, 39.221973, 22.758715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.350113, 39.360527, 22.938059>,  <43.481758, 39.591446, 23.236965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350113, 39.360527, 22.938059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515221, -0.553399, 0.654444,
		-0.791348, 0.600393, -0.115307,
		-0.329113, -0.577302, -0.747266,
		43.251377, 39.187336, 22.713879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.754902, 39.459381, 23.225086>,  <43.481758, 39.591446, 23.236965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.754902, 39.459381, 23.225086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.909958, 39.130466, 23.058434>,  <43.002991, 38.933117, 22.958441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.909958, 39.130466, 23.058434>,  <42.754902, 39.459381, 23.225086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909958, 39.130466, 23.058434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472100, -0.565290, 0.676438,
		-0.791744, -0.065520, -0.607329,
		0.387637, -0.822286, -0.416634,
		43.026249, 38.883781, 22.933443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222679, 38.913414, 23.278452>,  <42.754902, 39.459381, 23.225086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222679, 38.913414, 23.278452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544636, 38.697765, 23.179249>,  <42.737808, 38.568378, 23.119728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.544636, 38.697765, 23.179249>,  <42.222679, 38.913414, 23.278452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.544636, 38.697765, 23.179249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301764, -0.731691, 0.611201,
		-0.510973, -0.417109, -0.751616,
		0.804888, -0.539118, -0.248006,
		42.786102, 38.536030, 23.104847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974621, 38.216312, 23.206841>,  <42.222679, 38.913414, 23.278452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974621, 38.216312, 23.206841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.367592, 38.190521, 23.276907>,  <42.603374, 38.175049, 23.318947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.367592, 38.190521, 23.276907>,  <41.974621, 38.216312, 23.206841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.367592, 38.190521, 23.276907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154325, -0.808453, 0.567967,
		0.104996, -0.585018, -0.804195,
		0.982426, -0.064473, 0.175167,
		42.662319, 38.171181, 23.329456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186890, 37.515812, 23.020851>,  <41.974621, 38.216312, 23.206841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186890, 37.515812, 23.020851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.442513, 37.688904, 23.275204>,  <42.595886, 37.792759, 23.427816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.442513, 37.688904, 23.275204>,  <42.186890, 37.515812, 23.020851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.442513, 37.688904, 23.275204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170622, -0.726374, 0.665784,
		0.749993, -0.533972, -0.390364,
		0.639061, 0.432728, 0.635883,
		42.634232, 37.818722, 23.465969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.651062, 36.930508, 23.395634>,  <42.186890, 37.515812, 23.020851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.651062, 36.930508, 23.395634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.675484, 37.249760, 23.635389>,  <42.690136, 37.441311, 23.779242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.675484, 37.249760, 23.635389>,  <42.651062, 36.930508, 23.395634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675484, 37.249760, 23.635389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237834, -0.571579, 0.785323,
		0.969385, -0.190499, 0.154927,
		0.061050, 0.798127, 0.599388,
		42.693798, 37.489197, 23.815207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846130, 36.609722, 24.065323>,  <42.651062, 36.930508, 23.395634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846130, 36.609722, 24.065323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.728161, 36.985008, 24.137735>,  <42.657379, 37.210178, 24.181183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.728161, 36.985008, 24.137735>,  <42.846130, 36.609722, 24.065323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.728161, 36.985008, 24.137735> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379664, -0.288923, 0.878851,
		0.876855, 0.190465, 0.441417,
		-0.294926, 0.938215, 0.181031,
		42.639683, 37.266472, 24.192045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.122349, 36.758240, 24.701387>,  <42.846130, 36.609722, 24.065323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.122349, 36.758240, 24.701387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.805557, 36.990097, 24.624664>,  <42.615482, 37.129211, 24.578630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.805557, 36.990097, 24.624664>,  <43.122349, 36.758240, 24.701387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.805557, 36.990097, 24.624664> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481916, -0.400574, 0.779293,
		0.374879, 0.709615, 0.596584,
		-0.791974, 0.579643, -0.191808,
		42.567966, 37.163990, 24.567122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903999, 37.003380, 25.403023>,  <43.122349, 36.758240, 24.701387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903999, 37.003380, 25.403023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.580814, 37.044109, 25.170876>,  <42.386902, 37.068546, 25.031588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.580814, 37.044109, 25.170876>,  <42.903999, 37.003380, 25.403023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.580814, 37.044109, 25.170876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554799, -0.463243, 0.691089,
		-0.198480, 0.880362, 0.430777,
		-0.807962, 0.101827, -0.580369,
		42.338425, 37.074657, 24.996765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354061, 37.332199, 25.819006>,  <42.903999, 37.003380, 25.403023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354061, 37.332199, 25.819006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.136345, 37.176357, 25.521832>,  <42.005714, 37.082851, 25.343527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.136345, 37.176357, 25.521832>,  <42.354061, 37.332199, 25.819006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.136345, 37.176357, 25.521832> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678297, -0.316718, 0.663025,
		-0.493620, 0.864810, -0.091882,
		-0.544291, -0.389606, -0.742937,
		41.973057, 37.059475, 25.298950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707623, 37.360619, 26.148247>,  <42.354061, 37.332199, 25.819006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707623, 37.360619, 26.148247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.659637, 37.119015, 25.833088>,  <41.630844, 36.974052, 25.643993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.659637, 37.119015, 25.833088>,  <41.707623, 37.360619, 26.148247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.659637, 37.119015, 25.833088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674514, -0.532733, 0.511103,
		-0.728449, 0.592763, -0.343503,
		-0.119967, -0.604010, -0.787896,
		41.623646, 36.937813, 25.596720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.083477, 37.478729, 25.803009>,  <41.707623, 37.360619, 26.148247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.083477, 37.478729, 25.803009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.179424, 37.104839, 25.698124>,  <41.236992, 36.880505, 25.635193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.179424, 37.104839, 25.698124>,  <41.083477, 37.478729, 25.803009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179424, 37.104839, 25.698124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228292, -0.316837, 0.920596,
		-0.943581, -0.160963, -0.289390,
		0.239871, -0.934722, -0.262215,
		41.251385, 36.824421, 25.619459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544388, 37.121033, 26.111748>,  <41.083477, 37.478729, 25.803009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544388, 37.121033, 26.111748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.842827, 36.859776, 26.059992>,  <41.021893, 36.703022, 26.028938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.842827, 36.859776, 26.059992>,  <40.544388, 37.121033, 26.111748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.842827, 36.859776, 26.059992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281955, -0.485966, 0.827248,
		-0.603188, -0.580728, -0.546735,
		0.746100, -0.653141, -0.129390,
		41.066658, 36.663834, 26.021175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345459, 36.988724, 25.357800>,  <40.544388, 37.121033, 26.111748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345459, 36.988724, 25.357800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981049, 36.826382, 25.386963>,  <39.762402, 36.728977, 25.404461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.981049, 36.826382, 25.386963>,  <40.345459, 36.988724, 25.357800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981049, 36.826382, 25.386963> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248831, 0.400095, -0.882047,
		0.328814, -0.821708, -0.465486,
		-0.911024, -0.405857, 0.072909,
		39.707741, 36.704624, 25.408834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227638, 36.510353, 24.777683>,  <40.345459, 36.988724, 25.357800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227638, 36.510353, 24.777683> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.870255, 36.632187, 24.909716>,  <39.655823, 36.705288, 24.988935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.870255, 36.632187, 24.909716>,  <40.227638, 36.510353, 24.777683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.870255, 36.632187, 24.909716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181129, 0.428157, -0.885367,
		-0.410998, -0.850828, -0.327372,
		-0.893461, 0.304587, 0.330081,
		39.602215, 36.723564, 25.008739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808422, 36.285145, 24.333252>,  <40.227638, 36.510353, 24.777683>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808422, 36.285145, 24.333252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.631229, 36.583584, 24.532095>,  <39.524914, 36.762646, 24.651400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.631229, 36.583584, 24.532095>,  <39.808422, 36.285145, 24.333252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631229, 36.583584, 24.532095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160241, 0.479658, -0.862700,
		-0.882096, -0.461813, -0.092923,
		-0.442977, 0.746094, 0.497106,
		39.498337, 36.807411, 24.681227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307598, 36.507637, 23.832222>,  <39.808422, 36.285145, 24.333252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307598, 36.507637, 23.832222> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261066, 36.794895, 24.106663>,  <39.233147, 36.967251, 24.271326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.261066, 36.794895, 24.106663>,  <39.307598, 36.507637, 23.832222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261066, 36.794895, 24.106663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032188, 0.687701, -0.725281,
		-0.992689, -0.106453, -0.056882,
		-0.116325, 0.718147, 0.686100,
		39.226170, 37.010338, 24.312492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696732, 36.880737, 23.587305>,  <39.307598, 36.507637, 23.832222>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696732, 36.880737, 23.587305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.950748, 37.103107, 23.801844>,  <39.103157, 37.236530, 23.930567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.950748, 37.103107, 23.801844>,  <38.696732, 36.880737, 23.587305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950748, 37.103107, 23.801844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036582, 0.715182, -0.697980,
		-0.771614, 0.423623, 0.474505,
		0.635038, 0.555930, 0.536348,
		39.141258, 37.269886, 23.962748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312401, 37.524784, 23.458801>,  <38.696732, 36.880737, 23.587305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312401, 37.524784, 23.458801> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690403, 37.567413, 23.582485>,  <38.917202, 37.592991, 23.656696>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.690403, 37.567413, 23.582485>,  <38.312401, 37.524784, 23.458801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690403, 37.567413, 23.582485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151313, 0.695692, -0.702223,
		-0.289955, 0.710391, 0.641304,
		0.945003, 0.106575, 0.309211,
		38.973904, 37.599384, 23.675249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504356, 38.234768, 23.518076>,  <38.312401, 37.524784, 23.458801>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.504356, 38.234768, 23.518076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.870686, 38.074524, 23.506882>,  <39.090485, 37.978378, 23.500166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.870686, 38.074524, 23.506882>,  <38.504356, 38.234768, 23.518076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870686, 38.074524, 23.506882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300879, 0.730646, -0.612885,
		0.265973, 0.552874, 0.789676,
		0.915822, -0.400608, -0.027984,
		39.145432, 37.954342, 23.498486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149654, 38.893955, 23.812206>,  <38.504356, 38.234768, 23.518076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149654, 38.893955, 23.812206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.775547, 39.014511, 23.737978>,  <37.551083, 39.086845, 23.693441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.775547, 39.014511, 23.737978>,  <38.149654, 38.893955, 23.812206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775547, 39.014511, 23.737978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321059, -0.501742, 0.803229,
		0.148976, 0.810814, 0.566027,
		-0.935269, 0.301390, -0.185572,
		37.494965, 39.104927, 23.682306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849316, 39.116989, 24.447382>,  <38.149654, 38.893955, 23.812206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849316, 39.116989, 24.447382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.550793, 39.021709, 24.198776>,  <37.371677, 38.964542, 24.049612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.550793, 39.021709, 24.198776>,  <37.849316, 39.116989, 24.447382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550793, 39.021709, 24.198776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447052, -0.512408, 0.733200,
		-0.493119, 0.825045, 0.275926,
		-0.746310, -0.238201, -0.621516,
		37.326900, 38.950249, 24.012321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298412, 39.318504, 24.875698>,  <37.849316, 39.116989, 24.447382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298412, 39.318504, 24.875698> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164387, 39.054733, 24.606512>,  <37.083969, 38.896469, 24.445002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.164387, 39.054733, 24.606512>,  <37.298412, 39.318504, 24.875698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164387, 39.054733, 24.606512> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401888, -0.545987, 0.735109,
		-0.852183, 0.516767, -0.082075,
		-0.335068, -0.659432, -0.672963,
		37.063866, 38.856903, 24.404623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651424, 39.220520, 25.085779>,  <37.298412, 39.318504, 24.875698>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651424, 39.220520, 25.085779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707802, 38.889084, 24.869051>,  <36.741631, 38.690220, 24.739014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.707802, 38.889084, 24.869051>,  <36.651424, 39.220520, 25.085779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707802, 38.889084, 24.869051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528675, -0.525711, 0.666431,
		-0.837040, 0.192514, -0.512154,
		0.140948, -0.828593, -0.541819,
		36.750088, 38.640507, 24.706505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945511, 38.778111, 25.043976>,  <36.651424, 39.220520, 25.085779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945511, 38.778111, 25.043976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.262573, 38.538803, 24.997023>,  <36.452808, 38.395218, 24.968851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.262573, 38.538803, 24.997023>,  <35.945511, 38.778111, 25.043976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262573, 38.538803, 24.997023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396397, -0.652007, 0.646341,
		-0.463220, -0.465793, -0.753966,
		0.792651, -0.598268, -0.117384,
		36.500370, 38.359322, 24.961807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591835, 38.226753, 25.023739>,  <35.945511, 38.778111, 25.043976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591835, 38.226753, 25.023739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.956448, 38.085045, 25.107269>,  <36.175213, 38.000019, 25.157387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.956448, 38.085045, 25.107269>,  <35.591835, 38.226753, 25.023739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956448, 38.085045, 25.107269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404367, -0.679724, 0.611934,
		-0.074846, -0.642238, -0.762843,
		0.911529, -0.354269, 0.208825,
		36.229908, 37.978764, 25.169916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546604, 37.412853, 24.948750>,  <35.591835, 38.226753, 25.023739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546604, 37.412853, 24.948750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.860638, 37.534832, 25.164394>,  <36.049057, 37.608021, 25.293781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.860638, 37.534832, 25.164394>,  <35.546604, 37.412853, 24.948750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860638, 37.534832, 25.164394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165177, -0.735800, 0.656746,
		0.596956, -0.604652, -0.527295,
		0.785086, 0.304951, 0.539115,
		36.096165, 37.626316, 25.326128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.852428, 41.695080, 23.014847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230129, 41.678425, 23.145483>,  <41.456749, 41.668434, 23.223866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230129, 41.678425, 23.145483>,  <40.852428, 41.695080, 23.014847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230129, 41.678425, 23.145483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328807, -0.169788, 0.929009,
		0.016772, -0.984601, -0.174012,
		0.944248, -0.041635, 0.326591,
		41.513405, 41.665936, 23.243460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852745, 41.196712, 23.478739>,  <40.852428, 41.695080, 23.014847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852745, 41.196712, 23.478739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175686, 41.411060, 23.577560>,  <41.369450, 41.539669, 23.636854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.175686, 41.411060, 23.577560>,  <40.852745, 41.196712, 23.478739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175686, 41.411060, 23.577560> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272460, -0.032845, 0.961606,
		0.523408, -0.843663, 0.119485,
		0.807347, 0.535867, 0.247056,
		41.417889, 41.571819, 23.651678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.920277, 40.928303, 24.044651>,  <40.852745, 41.196712, 23.478739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.920277, 40.928303, 24.044651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.158577, 41.248936, 24.064882>,  <41.301556, 41.441315, 24.077021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.158577, 41.248936, 24.064882>,  <40.920277, 40.928303, 24.044651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158577, 41.248936, 24.064882> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029579, -0.041031, 0.998720,
		0.802628, -0.596479, -0.000735,
		0.595746, 0.801579, 0.050576,
		41.337299, 41.489410, 24.080055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542824, 40.810059, 24.476450>,  <40.920277, 40.928303, 24.044651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542824, 40.810059, 24.476450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.450928, 41.199242, 24.466942>,  <41.395790, 41.432751, 24.461237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.450928, 41.199242, 24.466942>,  <41.542824, 40.810059, 24.476450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.450928, 41.199242, 24.466942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022265, 0.029670, 0.999312,
		0.972997, 0.229054, -0.028479,
		-0.229741, 0.972962, -0.023769,
		41.382004, 41.491131, 24.459810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909592, 41.031754, 24.970346>,  <41.542824, 40.810059, 24.476450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909592, 41.031754, 24.970346> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.626759, 41.311729, 24.930113>,  <41.457058, 41.479713, 24.905973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.626759, 41.311729, 24.930113>,  <41.909592, 41.031754, 24.970346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.626759, 41.311729, 24.930113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207257, -0.069141, 0.975840,
		0.676072, 0.710851, 0.193955,
		-0.707087, 0.699936, -0.100584,
		41.414631, 41.521709, 24.899939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.025826, 41.406342, 25.501825>,  <41.909592, 41.031754, 24.970346>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.025826, 41.406342, 25.501825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.648281, 41.481136, 25.392897>,  <41.421753, 41.526012, 25.327539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.648281, 41.481136, 25.392897>,  <42.025826, 41.406342, 25.501825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648281, 41.481136, 25.392897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296168, -0.113869, 0.948324,
		0.146312, 0.975741, 0.162856,
		-0.943863, 0.186984, -0.272323,
		41.365124, 41.537231, 25.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738060, 41.679829, 26.086954>,  <42.025826, 41.406342, 25.501825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738060, 41.679829, 26.086954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.382561, 41.630775, 25.910276>,  <41.169262, 41.601345, 25.804270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.382561, 41.630775, 25.910276>,  <41.738060, 41.679829, 26.086954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.382561, 41.630775, 25.910276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445580, 0.004824, 0.895229,
		-0.107652, 0.992440, -0.058929,
		-0.888746, -0.122631, -0.441693,
		41.115936, 41.593987, 25.777769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213757, 42.220551, 26.312668>,  <41.738060, 41.679829, 26.086954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213757, 42.220551, 26.312668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.987103, 41.924042, 26.168753>,  <40.851109, 41.746136, 26.082405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.987103, 41.924042, 26.168753>,  <41.213757, 42.220551, 26.312668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.987103, 41.924042, 26.168753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467688, -0.070151, 0.881105,
		-0.678375, 0.667533, -0.306933,
		-0.566635, -0.741268, -0.359785,
		40.817112, 41.701660, 26.060818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529232, 42.386986, 26.529850>,  <41.213757, 42.220551, 26.312668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529232, 42.386986, 26.529850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534779, 41.995743, 26.446787>,  <40.538105, 41.760998, 26.396950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.534779, 41.995743, 26.446787>,  <40.529232, 42.386986, 26.529850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.534779, 41.995743, 26.446787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426091, -0.193658, 0.883710,
		-0.904574, 0.076229, -0.419446,
		0.013865, -0.978103, -0.207659,
		40.538937, 41.702312, 26.384489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874222, 42.158070, 26.713623>,  <40.529232, 42.386986, 26.529850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874222, 42.158070, 26.713623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.083260, 41.817173, 26.704004>,  <40.208683, 41.612637, 26.698233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.083260, 41.817173, 26.704004>,  <39.874222, 42.158070, 26.713623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083260, 41.817173, 26.704004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503851, -0.331469, 0.797661,
		-0.687772, -0.404735, -0.602627,
		0.522593, -0.852243, -0.024049,
		40.240036, 41.561501, 26.696789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428780, 41.693035, 26.929247>,  <39.874222, 42.158070, 26.713623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428780, 41.693035, 26.929247> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785870, 41.525265, 26.995138>,  <40.000122, 41.424603, 27.034672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.785870, 41.525265, 26.995138>,  <39.428780, 41.693035, 26.929247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785870, 41.525265, 26.995138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360162, -0.444455, 0.820209,
		-0.270799, -0.791546, -0.547835,
		0.892721, -0.419422, 0.164727,
		40.053684, 41.399437, 27.044556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332546, 40.923851, 27.026608>,  <39.428780, 41.693035, 26.929247>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332546, 40.923851, 27.026608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.668179, 41.045826, 27.206810>,  <39.869556, 41.119011, 27.314932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.668179, 41.045826, 27.206810>,  <39.332546, 40.923851, 27.026608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.668179, 41.045826, 27.206810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332816, -0.367317, 0.868512,
		0.430324, -0.878686, -0.206718,
		0.839080, 0.304942, 0.450506,
		39.919903, 41.137310, 27.341961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906990, 40.405495, 26.810186>,  <39.332546, 40.923851, 27.026608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906990, 40.405495, 26.810186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.562309, 40.600075, 26.752443>,  <38.355499, 40.716824, 26.717798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.562309, 40.600075, 26.752443>,  <38.906990, 40.405495, 26.810186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562309, 40.600075, 26.752443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299086, 0.257104, -0.918937,
		-0.409902, -0.835024, -0.367037,
		-0.861701, 0.486449, -0.144356,
		38.303799, 40.746010, 26.709137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759396, 40.304893, 26.075684>,  <38.906990, 40.405495, 26.810186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759396, 40.304893, 26.075684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.540298, 40.612869, 26.206633>,  <38.408840, 40.797653, 26.285202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.540298, 40.612869, 26.206633>,  <38.759396, 40.304893, 26.075684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.540298, 40.612869, 26.206633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133660, 0.466793, -0.874208,
		-0.825902, -0.435083, -0.358592,
		-0.547742, 0.769939, 0.327372,
		38.375977, 40.843849, 26.304844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322948, 40.483768, 25.492546>,  <38.759396, 40.304893, 26.075684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322948, 40.483768, 25.492546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.296143, 40.808109, 25.725107>,  <38.280060, 41.002712, 25.864643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.296143, 40.808109, 25.725107>,  <38.322948, 40.483768, 25.492546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296143, 40.808109, 25.725107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045071, 0.584576, -0.810086,
		-0.996734, -0.028080, -0.075718,
		-0.067010, 0.810853, 0.581401,
		38.276039, 41.051365, 25.899527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802708, 40.919884, 25.129347>,  <38.322948, 40.483768, 25.492546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802708, 40.919884, 25.129347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.035149, 41.154182, 25.355345>,  <38.174614, 41.294762, 25.490944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.035149, 41.154182, 25.355345>,  <37.802708, 40.919884, 25.129347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035149, 41.154182, 25.355345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081541, 0.648844, -0.756540,
		-0.809737, 0.485695, 0.329280,
		0.581100, 0.585749, 0.564997,
		38.209480, 41.329906, 25.524843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.468521, 41.515327, 25.118406>,  <37.802708, 40.919884, 25.129347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.468521, 41.515327, 25.118406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.835876, 41.632488, 25.224817>,  <38.056290, 41.702785, 25.288664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.835876, 41.632488, 25.224817>,  <37.468521, 41.515327, 25.118406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835876, 41.632488, 25.224817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039658, 0.600813, -0.798405,
		-0.393687, 0.743797, 0.540164,
		0.918389, 0.292900, 0.266029,
		38.111393, 41.720360, 25.304626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439137, 42.152016, 24.963295>,  <37.468521, 41.515327, 25.118406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439137, 42.152016, 24.963295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829712, 42.065830, 24.958364>,  <38.064056, 42.014118, 24.955406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.829712, 42.065830, 24.958364>,  <37.439137, 42.152016, 24.963295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829712, 42.065830, 24.958364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131634, 0.639858, -0.757136,
		0.171022, 0.737671, 0.653142,
		0.976434, -0.215462, -0.012327,
		38.122643, 42.001190, 24.954666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738552, 42.789841, 24.882376>,  <37.439137, 42.152016, 24.963295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738552, 42.789841, 24.882376> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.039097, 42.536083, 24.809719>,  <38.219425, 42.383827, 24.766125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.039097, 42.536083, 24.809719>,  <37.738552, 42.789841, 24.882376>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039097, 42.536083, 24.809719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333285, 0.602396, -0.725286,
		0.569539, 0.484415, 0.664053,
		0.751363, -0.634398, -0.181640,
		38.264507, 42.345764, 24.755226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298023, 43.138744, 24.936708>,  <37.738552, 42.789841, 24.882376>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298023, 43.138744, 24.936708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.357140, 42.833988, 24.684462>,  <38.392609, 42.651134, 24.533113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.357140, 42.833988, 24.684462>,  <38.298023, 43.138744, 24.936708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357140, 42.833988, 24.684462> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368317, 0.634154, -0.679846,
		0.917878, -0.131793, 0.374340,
		0.147790, -0.761892, -0.630618,
		38.401478, 42.605419, 24.495275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825840, 43.411335, 24.439848>,  <38.298023, 43.138744, 24.936708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825840, 43.411335, 24.439848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.639629, 43.102219, 24.267298>,  <38.527905, 42.916748, 24.163767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.639629, 43.102219, 24.267298>,  <38.825840, 43.411335, 24.439848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.639629, 43.102219, 24.267298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000568, 0.487672, -0.873027,
		0.885034, -0.406171, -0.227462,
		-0.465525, -0.772788, -0.431376,
		38.499973, 42.870380, 24.137884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.220993, 43.262299, 23.822975>,  <38.825840, 43.411335, 24.439848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.220993, 43.262299, 23.822975> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.893497, 43.056362, 23.721310>,  <38.696999, 42.932800, 23.660311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.893497, 43.056362, 23.721310>,  <39.220993, 43.262299, 23.822975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893497, 43.056362, 23.721310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093848, 0.316718, -0.943866,
		0.566442, -0.796634, -0.210993,
		-0.818741, -0.514844, -0.254165,
		38.647877, 42.901909, 23.645060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306561, 42.797035, 23.197771>,  <39.220993, 43.262299, 23.822975>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306561, 42.797035, 23.197771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.911613, 42.860329, 23.194593>,  <38.674644, 42.898304, 23.192688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.911613, 42.860329, 23.194593>,  <39.306561, 42.797035, 23.197771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.911613, 42.860329, 23.194593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042384, 0.215496, -0.975585,
		-0.152661, -0.963599, -0.219481,
		-0.987369, 0.158236, -0.007943,
		38.615402, 42.907799, 23.192211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207928, 42.544216, 22.553696>,  <39.306561, 42.797035, 23.197771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207928, 42.544216, 22.553696> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.888599, 42.756721, 22.667149>,  <38.697002, 42.884224, 22.735220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.888599, 42.756721, 22.667149>,  <39.207928, 42.544216, 22.553696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888599, 42.756721, 22.667149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054351, 0.405485, -0.912485,
		-0.599777, -0.743869, -0.294831,
		-0.798319, 0.531263, 0.283631,
		38.649105, 42.916100, 22.752237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737183, 42.390194, 22.105146>,  <39.207928, 42.544216, 22.553696>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737183, 42.390194, 22.105146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.644436, 42.750168, 22.252848>,  <38.588787, 42.966152, 22.341469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.644436, 42.750168, 22.252848>,  <38.737183, 42.390194, 22.105146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.644436, 42.750168, 22.252848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095068, 0.398745, -0.912121,
		-0.968090, -0.176389, -0.178012,
		-0.231869, 0.899938, 0.369252,
		38.574875, 43.020149, 22.363623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264015, 41.811665, 21.933397>,  <38.737183, 42.390194, 22.105146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264015, 41.811665, 21.933397> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.187378, 41.557446, 21.634232>,  <38.141396, 41.404915, 21.454731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.187378, 41.557446, 21.634232>,  <38.264015, 41.811665, 21.933397>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187378, 41.557446, 21.634232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661056, -0.479702, 0.576967,
		-0.725465, 0.604955, -0.328224,
		-0.191589, -0.635544, -0.747916,
		38.129902, 41.366783, 21.409857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520134, 41.728481, 21.784822>,  <38.264015, 41.811665, 21.933397>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520134, 41.728481, 21.784822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.679585, 41.386829, 21.651222>,  <37.775253, 41.181839, 21.571062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.679585, 41.386829, 21.651222>,  <37.520134, 41.728481, 21.784822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679585, 41.386829, 21.651222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676772, -0.519736, 0.521396,
		-0.618933, 0.018200, -0.785233,
		0.398624, -0.854133, -0.333999,
		37.799171, 41.130589, 21.551023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.927547, 41.210865, 21.685184>,  <37.520134, 41.728481, 21.784822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.927547, 41.210865, 21.685184> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.262207, 40.993500, 21.712681>,  <37.463001, 40.863079, 21.729177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.262207, 40.993500, 21.712681>,  <36.927547, 41.210865, 21.685184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262207, 40.993500, 21.712681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458212, -0.625603, 0.631397,
		-0.300106, -0.559754, -0.772407,
		0.836647, -0.543412, 0.068739,
		37.513203, 40.830475, 21.733303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716240, 40.509476, 21.914968>,  <36.927547, 41.210865, 21.685184>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716240, 40.509476, 21.914968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106094, 40.458195, 21.988344>,  <37.340008, 40.427425, 22.032370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.106094, 40.458195, 21.988344>,  <36.716240, 40.509476, 21.914968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.106094, 40.458195, 21.988344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219961, -0.699822, 0.679607,
		0.041250, -0.702719, -0.710271,
		0.974636, -0.128198, 0.183439,
		37.398483, 40.419735, 22.043375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894695, 39.749706, 21.837284>,  <36.716240, 40.509476, 21.914968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894695, 39.749706, 21.837284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162605, 39.906273, 22.089697>,  <37.323349, 40.000214, 22.241144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.162605, 39.906273, 22.089697>,  <36.894695, 39.749706, 21.837284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162605, 39.906273, 22.089697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194219, -0.727875, 0.657630,
		0.716718, -0.563020, -0.411490,
		0.669772, 0.391416, 0.631030,
		37.363537, 40.023697, 22.279005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.415897, 39.217781, 22.004654>,  <36.894695, 39.749706, 21.837284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.415897, 39.217781, 22.004654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.417686, 39.492680, 22.295219>,  <37.418758, 39.657619, 22.469559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.417686, 39.492680, 22.295219>,  <37.415897, 39.217781, 22.004654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417686, 39.492680, 22.295219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017434, -0.726257, 0.687203,
		0.999838, -0.015738, 0.008733,
		0.004472, 0.687243, 0.726413,
		37.419029, 39.698853, 22.513144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915066, 38.997326, 22.416723>,  <37.415897, 39.217781, 22.004654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915066, 38.997326, 22.416723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691837, 39.226982, 22.656366>,  <37.557899, 39.364777, 22.800152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.691837, 39.226982, 22.656366>,  <37.915066, 38.997326, 22.416723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.691837, 39.226982, 22.656366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006445, -0.718971, 0.695010,
		0.829771, 0.391724, 0.397534,
		-0.558068, 0.574137, 0.599106,
		37.524418, 39.399223, 22.836098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157055, 38.880108, 23.044365>,  <37.915066, 38.997326, 22.416723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157055, 38.880108, 23.044365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.807346, 39.053082, 23.132586>,  <37.597519, 39.156864, 23.185518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.807346, 39.053082, 23.132586>,  <38.157055, 38.880108, 23.044365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.807346, 39.053082, 23.132586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018829, -0.423787, 0.905566,
		0.485065, 0.795867, 0.362364,
		-0.874275, 0.432435, 0.220550,
		37.545063, 39.182812, 23.198751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872101, 38.809982, 23.229727>,  <38.157055, 38.880108, 23.044365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872101, 38.809982, 23.229727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123791, 38.500530, 23.199852>,  <39.274803, 38.314861, 23.181927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.123791, 38.500530, 23.199852>,  <38.872101, 38.809982, 23.229727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123791, 38.500530, 23.199852> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411340, 0.413005, -0.812543,
		0.659451, 0.480550, 0.578096,
		0.629224, -0.773627, -0.074688,
		39.312557, 38.268444, 23.177446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606243, 39.065052, 23.240906>,  <38.872101, 38.809982, 23.229727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606243, 39.065052, 23.240906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597889, 38.717907, 23.042360>,  <39.592876, 38.509621, 22.923233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.597889, 38.717907, 23.042360>,  <39.606243, 39.065052, 23.240906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597889, 38.717907, 23.042360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500766, 0.420626, -0.756510,
		0.865331, -0.264360, 0.425813,
		-0.020883, -0.867864, -0.496363,
		39.591625, 38.457546, 22.893452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066418, 39.257832, 22.734009>,  <39.606243, 39.065052, 23.240906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066418, 39.257832, 22.734009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991650, 38.891212, 22.592588>,  <39.946789, 38.671242, 22.507736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.991650, 38.891212, 22.592588>,  <40.066418, 39.257832, 22.734009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.991650, 38.891212, 22.592588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373568, 0.266542, -0.888483,
		0.908575, -0.298148, 0.292573,
		-0.186917, -0.916550, -0.353552,
		39.935574, 38.616249, 22.486523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753216, 38.904678, 22.487015>,  <40.066418, 39.257832, 22.734009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753216, 38.904678, 22.487015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434620, 38.739052, 22.310762>,  <40.243462, 38.639675, 22.205011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.434620, 38.739052, 22.310762>,  <40.753216, 38.904678, 22.487015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434620, 38.739052, 22.310762> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377936, 0.227914, -0.897340,
		0.471984, -0.881251, -0.025041,
		-0.796489, -0.414067, -0.440628,
		40.195675, 38.614830, 22.178574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.021893, 38.470818, 21.883795>,  <40.753216, 38.904678, 22.487015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.021893, 38.470818, 21.883795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639927, 38.583988, 21.847801>,  <40.410748, 38.651890, 21.826206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.639927, 38.583988, 21.847801>,  <41.021893, 38.470818, 21.883795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639927, 38.583988, 21.847801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197577, 0.379377, -0.903901,
		-0.221597, -0.880925, -0.418171,
		-0.954912, 0.282922, -0.089982,
		40.353455, 38.668865, 21.820807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804260, 38.273174, 21.206953>,  <41.021893, 38.470818, 21.883795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804260, 38.273174, 21.206953> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.520489, 38.542442, 21.290434>,  <40.350224, 38.704002, 21.340523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.520489, 38.542442, 21.290434>,  <40.804260, 38.273174, 21.206953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520489, 38.542442, 21.290434> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091993, 0.382039, -0.919556,
		-0.698746, -0.633162, -0.332956,
		-0.709430, 0.673166, 0.208702,
		40.307659, 38.744392, 21.353045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360718, 38.298077, 20.642776>,  <40.804260, 38.273174, 21.206953>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360718, 38.298077, 20.642776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.310009, 38.662537, 20.799610>,  <40.279583, 38.881214, 20.893711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.310009, 38.662537, 20.799610>,  <40.360718, 38.298077, 20.642776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310009, 38.662537, 20.799610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116821, 0.378810, -0.918072,
		-0.985029, -0.162188, 0.058420,
		-0.126770, 0.911152, 0.392086,
		40.271976, 38.935883, 20.917236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755234, 38.555275, 20.214863>,  <40.360718, 38.298077, 20.642776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755234, 38.555275, 20.214863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946480, 38.850384, 20.405487>,  <40.061226, 39.027447, 20.519861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.946480, 38.850384, 20.405487>,  <39.755234, 38.555275, 20.214863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946480, 38.850384, 20.405487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082620, 0.502407, -0.860675,
		-0.874404, 0.450872, 0.179252,
		0.478112, 0.737767, 0.476558,
		40.089912, 39.071712, 20.548454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685516, 39.058842, 19.698160>,  <39.755234, 38.555275, 20.214863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.685516, 39.058842, 19.698160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.963337, 39.209480, 19.943359>,  <40.130032, 39.299866, 20.090479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.963337, 39.209480, 19.943359>,  <39.685516, 39.058842, 19.698160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963337, 39.209480, 19.943359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237781, 0.684000, -0.689640,
		-0.679009, 0.624752, 0.385527,
		0.694555, 0.376601, 0.612997,
		40.171703, 39.322460, 20.127258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.011097, 31.869400, 34.710793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266197, 32.155472, 34.825191>,  <37.419258, 32.327114, 34.893833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.266197, 32.155472, 34.825191>,  <37.011097, 31.869400, 34.710793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266197, 32.155472, 34.825191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205706, 0.515967, -0.831543,
		-0.742270, 0.471481, 0.476173,
		0.637746, 0.715181, 0.286000,
		37.457520, 32.370026, 34.910992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689926, 32.510239, 34.484528>,  <37.011097, 31.869400, 34.710793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689926, 32.510239, 34.484528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.083340, 32.576370, 34.513718>,  <37.319389, 32.616051, 34.531231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.083340, 32.576370, 34.513718>,  <36.689926, 32.510239, 34.484528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083340, 32.576370, 34.513718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070197, 0.721616, -0.688726,
		-0.166528, 0.672263, 0.721340,
		0.983535, 0.165328, 0.072979,
		37.378399, 32.625969, 34.535610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834133, 33.280132, 34.537151>,  <36.689926, 32.510239, 34.484528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834133, 33.280132, 34.537151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165054, 33.108028, 34.392689>,  <37.363609, 33.004765, 34.306011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.165054, 33.108028, 34.392689>,  <36.834133, 33.280132, 34.537151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165054, 33.108028, 34.392689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113060, 0.757299, -0.643207,
		0.550255, 0.491297, 0.675164,
		0.827307, -0.430262, -0.361161,
		37.413246, 32.978951, 34.284340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234417, 33.852806, 34.286343>,  <36.834133, 33.280132, 34.537151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234417, 33.852806, 34.286343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.388676, 33.528629, 34.109951>,  <37.481232, 33.334122, 34.004116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.388676, 33.528629, 34.109951>,  <37.234417, 33.852806, 34.286343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388676, 33.528629, 34.109951> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127730, 0.520243, -0.844412,
		0.913762, 0.269320, 0.304148,
		0.385648, -0.810441, -0.440978,
		37.504372, 33.285496, 33.977657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883312, 34.081860, 33.994202>,  <37.234417, 33.852806, 34.286343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883312, 34.081860, 33.994202> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778309, 33.761307, 33.779209>,  <37.715305, 33.568977, 33.650215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.778309, 33.761307, 33.779209>,  <37.883312, 34.081860, 33.994202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778309, 33.761307, 33.779209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044528, 0.546359, -0.836367,
		0.963902, -0.243487, -0.107740,
		-0.262509, -0.801378, -0.537478,
		37.699554, 33.520893, 33.617966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368774, 34.071381, 33.447361>,  <37.883312, 34.081860, 33.994202>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368774, 34.071381, 33.447361> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037769, 33.876408, 33.335907>,  <37.839165, 33.759426, 33.269035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.037769, 33.876408, 33.335907>,  <38.368774, 34.071381, 33.447361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.037769, 33.876408, 33.335907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030088, 0.534060, -0.844911,
		0.560643, -0.690790, -0.456606,
		-0.827511, -0.487432, -0.278633,
		37.789516, 33.730179, 33.252319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526291, 33.736149, 32.803761>,  <38.368774, 34.071381, 33.447361>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526291, 33.736149, 32.803761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.126404, 33.729904, 32.796680>,  <37.886471, 33.726158, 32.792435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.126404, 33.729904, 32.796680>,  <38.526291, 33.736149, 32.803761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.126404, 33.729904, 32.796680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013128, 0.255286, -0.966776,
		0.019606, -0.966740, -0.255010,
		-0.999722, -0.015607, -0.017697,
		37.826488, 33.725224, 32.791370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488899, 33.468761, 32.182457>,  <38.526291, 33.736149, 32.803761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488899, 33.468761, 32.182457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.121887, 33.613579, 32.248272>,  <37.901680, 33.700470, 32.287762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.121887, 33.613579, 32.248272>,  <38.488899, 33.468761, 32.182457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121887, 33.613579, 32.248272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066957, 0.267187, -0.961316,
		-0.391997, -0.893049, -0.220910,
		-0.917527, 0.362041, 0.164533,
		37.846630, 33.722191, 32.297630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.124577, 33.143017, 31.660183>,  <38.488899, 33.468761, 32.182457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.124577, 33.143017, 31.660183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898182, 33.451012, 31.778013>,  <37.762344, 33.635807, 31.848711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.898182, 33.451012, 31.778013>,  <38.124577, 33.143017, 31.660183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898182, 33.451012, 31.778013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169168, 0.241238, -0.955608,
		-0.806869, -0.590698, -0.006281,
		-0.565991, 0.769987, 0.294574,
		37.728386, 33.682007, 31.866386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.558018, 33.103451, 31.291643>,  <38.124577, 33.143017, 31.660183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.558018, 33.103451, 31.291643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575691, 33.483349, 31.415604>,  <37.586296, 33.711288, 31.489979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.575691, 33.483349, 31.415604>,  <37.558018, 33.103451, 31.291643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575691, 33.483349, 31.415604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060801, 0.312185, -0.948074,
		-0.997171, 0.023052, 0.071540,
		0.044188, 0.949742, 0.309900,
		37.588947, 33.768272, 31.508574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098320, 33.476173, 30.914785>,  <37.558018, 33.103451, 31.291643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098320, 33.476173, 30.914785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350777, 33.762409, 31.034512>,  <37.502251, 33.934151, 31.106346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.350777, 33.762409, 31.034512>,  <37.098320, 33.476173, 30.914785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350777, 33.762409, 31.034512> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053909, 0.344479, -0.937245,
		-0.773792, 0.607670, 0.178838,
		0.631141, 0.715592, 0.299314,
		37.540119, 33.977085, 31.124306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788036, 34.103447, 30.663815>,  <37.098320, 33.476173, 30.914785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788036, 34.103447, 30.663815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178093, 34.177605, 30.712372>,  <37.412125, 34.222099, 30.741507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.178093, 34.177605, 30.712372>,  <36.788036, 34.103447, 30.663815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.178093, 34.177605, 30.712372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023177, 0.459479, -0.887886,
		-0.220384, 0.868625, 0.443758,
		0.975138, 0.185391, 0.121393,
		37.470634, 34.233223, 30.748791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390057, 34.743874, 30.835056>,  <36.788036, 34.103447, 30.663815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390057, 34.743874, 30.835056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018028, 34.655800, 30.717421>,  <35.794811, 34.602955, 30.646839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.018028, 34.655800, 30.717421>,  <36.390057, 34.743874, 30.835056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.018028, 34.655800, 30.717421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192828, -0.388805, 0.900915,
		-0.312708, 0.894624, 0.319159,
		-0.930071, -0.220180, -0.294091,
		35.739006, 34.589745, 30.629192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994034, 34.769032, 31.374514>,  <36.390057, 34.743874, 30.835056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994034, 34.769032, 31.374514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713894, 34.587009, 31.154539>,  <35.545811, 34.477795, 31.022554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.713894, 34.587009, 31.154539>,  <35.994034, 34.769032, 31.374514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713894, 34.587009, 31.154539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487286, -0.258183, 0.834203,
		-0.521596, 0.852210, -0.040926,
		-0.700350, -0.455060, -0.549937,
		35.503788, 34.450493, 30.989557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371544, 35.045109, 31.571417>,  <35.994034, 34.769032, 31.374514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371544, 35.045109, 31.571417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295048, 34.690079, 31.403780>,  <35.249149, 34.477062, 31.303198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.295048, 34.690079, 31.403780>,  <35.371544, 35.045109, 31.571417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.295048, 34.690079, 31.403780> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629004, -0.216959, 0.746514,
		-0.753512, 0.406375, -0.516796,
		-0.191241, -0.887574, -0.419092,
		35.237675, 34.423805, 31.278051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636967, 35.072487, 31.556580>,  <35.371544, 35.045109, 31.571417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636967, 35.072487, 31.556580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730869, 34.686314, 31.511259>,  <34.787209, 34.454609, 31.484066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.730869, 34.686314, 31.511259>,  <34.636967, 35.072487, 31.556580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.730869, 34.686314, 31.511259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611087, -0.237218, 0.755182,
		-0.755952, -0.108044, -0.645649,
		0.234752, -0.965430, -0.113301,
		34.801296, 34.396687, 31.477268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086670, 34.818787, 31.327545>,  <34.636967, 35.072487, 31.556580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086670, 34.818787, 31.327545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296024, 34.515686, 31.483433>,  <34.421635, 34.333824, 31.576965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.296024, 34.515686, 31.483433>,  <34.086670, 34.818787, 31.327545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296024, 34.515686, 31.483433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810759, -0.302125, 0.501389,
		-0.262182, -0.578392, -0.772479,
		0.523384, -0.757750, 0.389725,
		34.453037, 34.288361, 31.600349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693592, 34.217545, 31.130301>,  <34.086670, 34.818787, 31.327545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693592, 34.217545, 31.130301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918053, 34.131096, 31.449900>,  <34.052731, 34.079227, 31.641659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918053, 34.131096, 31.449900>,  <33.693592, 34.217545, 31.130301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918053, 34.131096, 31.449900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799742, -0.390390, 0.456079,
		0.213351, -0.894923, -0.391911,
		0.561154, -0.216123, 0.798998,
		34.086399, 34.066257, 31.689600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158073, 33.779251, 31.471312>,  <33.693592, 34.217545, 31.130301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158073, 33.779251, 31.471312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442738, 33.863392, 31.739429>,  <33.613537, 33.913876, 31.900301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.442738, 33.863392, 31.739429>,  <33.158073, 33.779251, 31.471312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442738, 33.863392, 31.739429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602941, -0.306809, 0.736431,
		0.360561, -0.928236, -0.091515,
		0.711659, 0.210350, 0.670295,
		33.656235, 33.926498, 31.940517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.094406, 33.243534, 31.814646>,  <33.158073, 33.779251, 31.471312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.094406, 33.243534, 31.814646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275070, 33.497501, 32.065365>,  <33.383469, 33.649883, 32.215797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.275070, 33.497501, 32.065365>,  <33.094406, 33.243534, 31.814646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275070, 33.497501, 32.065365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548528, -0.356459, 0.756342,
		0.703646, -0.685428, 0.187272,
		0.451664, 0.634921, 0.626798,
		33.410568, 33.687977, 32.253403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301556, 32.771610, 32.495888>,  <33.094406, 33.243534, 31.814646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301556, 32.771610, 32.495888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262383, 33.167225, 32.540085>,  <33.238880, 33.404594, 32.566601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.262383, 33.167225, 32.540085>,  <33.301556, 32.771610, 32.495888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262383, 33.167225, 32.540085> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560437, -0.146554, 0.815127,
		0.822387, 0.017904, 0.568647,
		-0.097932, 0.989041, 0.110490,
		33.233002, 33.463936, 32.573231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347012, 32.756546, 33.171585>,  <33.301556, 32.771610, 32.495888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347012, 32.756546, 33.171585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206161, 33.118320, 33.075253>,  <33.121651, 33.335384, 33.017452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206161, 33.118320, 33.075253>,  <33.347012, 32.756546, 33.171585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206161, 33.118320, 33.075253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409029, 0.082732, 0.908763,
		0.841846, 0.418503, 0.340810,
		-0.352124, 0.904440, -0.240828,
		33.100525, 33.389652, 33.003006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573605, 33.117821, 33.774502>,  <33.347012, 32.756546, 33.171585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573605, 33.117821, 33.774502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273075, 33.315140, 33.599155>,  <33.092758, 33.433533, 33.493950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.273075, 33.315140, 33.599155>,  <33.573605, 33.117821, 33.774502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273075, 33.315140, 33.599155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514036, -0.020895, 0.857514,
		0.413852, 0.869609, 0.269273,
		-0.751328, 0.493300, -0.438363,
		33.047676, 33.463131, 33.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588608, 33.810066, 34.080383>,  <33.573605, 33.117821, 33.774502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588608, 33.810066, 34.080383> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231449, 33.723709, 33.922329>,  <33.017155, 33.671894, 33.827496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.231449, 33.723709, 33.922329>,  <33.588608, 33.810066, 34.080383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.231449, 33.723709, 33.922329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441666, 0.249267, 0.861857,
		-0.087574, 0.944064, -0.317921,
		-0.892895, -0.215892, -0.395132,
		32.963581, 33.658943, 33.803791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117428, 34.421593, 34.218407>,  <33.588608, 33.810066, 34.080383>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117428, 34.421593, 34.218407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858364, 34.125202, 34.147423>,  <32.702927, 33.947369, 34.104832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858364, 34.125202, 34.147423>,  <33.117428, 34.421593, 34.218407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858364, 34.125202, 34.147423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465357, 0.200267, 0.862169,
		-0.603303, 0.640979, -0.474522,
		-0.647663, -0.740972, -0.177462,
		32.664066, 33.902912, 34.094185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382851, 34.636906, 34.517616>,  <33.117428, 34.421593, 34.218407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382851, 34.636906, 34.517616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415539, 34.241074, 34.470192>,  <32.435150, 34.003574, 34.441738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.415539, 34.241074, 34.470192>,  <32.382851, 34.636906, 34.517616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415539, 34.241074, 34.470192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335340, -0.139319, 0.931739,
		-0.938547, -0.036382, -0.343230,
		0.081717, -0.989579, -0.118557,
		32.440052, 33.944199, 34.434624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595207, 35.189014, 34.123760>,  <32.382851, 34.636906, 34.517616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595207, 35.189014, 34.123760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749420, 35.409611, 34.419659>,  <32.841946, 35.541969, 34.597198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.749420, 35.409611, 34.419659>,  <32.595207, 35.189014, 34.123760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749420, 35.409611, 34.419659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211660, 0.727490, -0.652655,
		-0.898092, 0.408192, 0.163740,
		0.385528, 0.551487, 0.739751,
		32.865078, 35.575058, 34.641582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.495667, 35.828339, 33.837685>,  <32.595207, 35.189014, 34.123760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.495667, 35.828339, 33.837685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704559, 35.910717, 34.168709>,  <32.829895, 35.960144, 34.367325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.704559, 35.910717, 34.168709>,  <32.495667, 35.828339, 33.837685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704559, 35.910717, 34.168709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299728, 0.864165, -0.404204,
		-0.798395, 0.459133, 0.389568,
		0.522235, 0.205950, 0.827560,
		32.861229, 35.972504, 34.416977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284626, 36.530678, 34.013447>,  <32.495667, 35.828339, 33.837685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284626, 36.530678, 34.013447> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636089, 36.474182, 34.195881>,  <32.846966, 36.440285, 34.305344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636089, 36.474182, 34.195881>,  <32.284626, 36.530678, 34.013447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636089, 36.474182, 34.195881> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291767, 0.914972, -0.278744,
		-0.377939, 0.377992, 0.845154,
		0.878655, -0.141240, 0.456089,
		32.899685, 36.431808, 34.332706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459591, 37.164516, 34.328857>,  <32.284626, 36.530678, 34.013447>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459591, 37.164516, 34.328857> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799099, 36.963898, 34.261871>,  <33.002804, 36.843529, 34.221680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.799099, 36.963898, 34.261871>,  <32.459591, 37.164516, 34.328857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.799099, 36.963898, 34.261871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376634, 0.795740, -0.474284,
		0.371130, 0.339486, 0.864298,
		0.848769, -0.501545, -0.167461,
		33.053730, 36.813435, 34.211632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941280, 37.738079, 34.288204>,  <32.459591, 37.164516, 34.328857>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941280, 37.738079, 34.288204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160801, 37.430740, 34.156471>,  <33.292515, 37.246338, 34.077431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160801, 37.430740, 34.156471>,  <32.941280, 37.738079, 34.288204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160801, 37.430740, 34.156471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512452, 0.620474, -0.593636,
		0.660460, 0.157024, 0.734259,
		0.548804, -0.768346, -0.329331,
		33.325443, 37.200237, 34.057671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773453, 37.753071, 34.385342>,  <32.941280, 37.738079, 34.288204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773453, 37.753071, 34.385342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684448, 37.539127, 34.059296>,  <33.631046, 37.410759, 33.863670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.684448, 37.539127, 34.059296>,  <33.773453, 37.753071, 34.385342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684448, 37.539127, 34.059296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553227, 0.619156, -0.557302,
		0.802763, -0.574950, 0.158130,
		-0.222514, -0.534863, -0.815113,
		33.617695, 37.378670, 33.814762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.414745, 37.751213, 34.076626>,  <33.773453, 37.753071, 34.385342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.414745, 37.751213, 34.076626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183651, 37.619350, 33.777950>,  <34.044994, 37.540234, 33.598743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.183651, 37.619350, 33.777950>,  <34.414745, 37.751213, 34.076626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183651, 37.619350, 33.777950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538013, 0.534142, -0.652100,
		0.613808, -0.778471, -0.131234,
		-0.577738, -0.329659, -0.746689,
		34.010330, 37.520454, 33.553944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854961, 37.754158, 33.582901>,  <34.414745, 37.751213, 34.076626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854961, 37.754158, 33.582901> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523407, 37.686729, 33.369534>,  <34.324474, 37.646271, 33.241512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.523407, 37.686729, 33.369534>,  <34.854961, 37.754158, 33.582901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.523407, 37.686729, 33.369534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351212, 0.585384, -0.730736,
		0.435436, -0.793038, -0.426011,
		-0.828882, -0.168569, -0.533422,
		34.274742, 37.636158, 33.209507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077061, 37.450542, 32.945454>,  <34.854961, 37.754158, 33.582901>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077061, 37.450542, 32.945454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725571, 37.641476, 32.946365>,  <34.514679, 37.756035, 32.946915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.725571, 37.641476, 32.946365>,  <35.077061, 37.450542, 32.945454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725571, 37.641476, 32.946365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353200, 0.653411, -0.669555,
		-0.321091, -0.587546, -0.742759,
		-0.878721, 0.477331, 0.002283,
		34.461956, 37.784676, 32.947052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793743, 37.400158, 32.227024>,  <35.077061, 37.450542, 32.945454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793743, 37.400158, 32.227024> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639637, 37.710045, 32.427582>,  <34.547173, 37.895977, 32.547916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.639637, 37.710045, 32.427582>,  <34.793743, 37.400158, 32.227024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639637, 37.710045, 32.427582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237607, 0.608292, -0.757313,
		-0.891693, -0.172630, -0.418429,
		-0.385262, 0.774713, 0.501391,
		34.524059, 37.942459, 32.577999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481884, 37.618290, 31.690960>,  <34.793743, 37.400158, 32.227024>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481884, 37.618290, 31.690960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518734, 37.907516, 31.964806>,  <34.540844, 38.081051, 32.129112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518734, 37.907516, 31.964806>,  <34.481884, 37.618290, 31.690960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518734, 37.907516, 31.964806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388665, 0.606888, -0.693272,
		-0.916762, 0.329953, -0.225120,
		0.092125, 0.723062, 0.684613,
		34.546371, 38.124435, 32.170189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144169, 38.081711, 31.308947>,  <34.481884, 37.618290, 31.690960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144169, 38.081711, 31.308947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352753, 38.260509, 31.599678>,  <34.477901, 38.367786, 31.774117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.352753, 38.260509, 31.599678>,  <34.144169, 38.081711, 31.308947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352753, 38.260509, 31.599678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433564, 0.594853, -0.676885,
		-0.734920, 0.668092, 0.116388,
		0.521455, 0.446994, 0.726830,
		34.509190, 38.394608, 31.817726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134598, 38.788425, 31.251911>,  <34.144169, 38.081711, 31.308947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134598, 38.788425, 31.251911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459080, 38.738518, 31.480433>,  <34.653767, 38.708572, 31.617544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.459080, 38.738518, 31.480433>,  <34.134598, 38.788425, 31.251911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459080, 38.738518, 31.480433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539343, 0.537161, -0.648512,
		-0.225968, 0.834201, 0.503038,
		0.811201, -0.124767, 0.571302,
		34.702438, 38.701088, 31.651823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514465, 39.502159, 31.328850>,  <34.134598, 38.788425, 31.251911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514465, 39.502159, 31.328850> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775978, 39.209805, 31.407215>,  <34.932884, 39.034393, 31.454233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.775978, 39.209805, 31.407215>,  <34.514465, 39.502159, 31.328850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775978, 39.209805, 31.407215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695951, 0.479169, -0.534836,
		0.297028, 0.486010, 0.821930,
		0.653779, -0.730884, 0.195912,
		34.972111, 38.990540, 31.465988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075790, 39.873577, 31.446180>,  <34.514465, 39.502159, 31.328850>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075790, 39.873577, 31.446180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203243, 39.498234, 31.392572>,  <35.279716, 39.273029, 31.360409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.203243, 39.498234, 31.392572>,  <35.075790, 39.873577, 31.446180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203243, 39.498234, 31.392572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701705, 0.328568, -0.632181,
		0.637244, 0.107395, 0.763142,
		0.318637, -0.938355, -0.134018,
		35.298836, 39.216728, 31.352367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826790, 39.769909, 31.564999>,  <35.075790, 39.873577, 31.446180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826790, 39.769909, 31.564999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714069, 39.483490, 31.309542>,  <35.646439, 39.311638, 31.156267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.714069, 39.483490, 31.309542>,  <35.826790, 39.769909, 31.564999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714069, 39.483490, 31.309542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626756, 0.366603, -0.687589,
		0.726476, -0.594034, 0.345480,
		-0.281797, -0.716049, -0.638643,
		35.629532, 39.268677, 31.117949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441654, 39.446758, 31.358799>,  <35.826790, 39.769909, 31.564999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441654, 39.446758, 31.358799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173351, 39.366386, 31.073225>,  <36.012367, 39.318165, 30.901880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.173351, 39.366386, 31.073225>,  <36.441654, 39.446758, 31.358799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173351, 39.366386, 31.073225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668142, 0.254175, -0.699272,
		0.321971, -0.946056, -0.036239,
		-0.670761, -0.200932, -0.713936,
		35.972122, 39.306107, 30.859043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851128, 39.200733, 30.749462>,  <36.441654, 39.446758, 31.358799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851128, 39.200733, 30.749462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492008, 39.309593, 30.610960>,  <36.276535, 39.374908, 30.527859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.492008, 39.309593, 30.610960>,  <36.851128, 39.200733, 30.749462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.492008, 39.309593, 30.610960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426098, 0.337982, -0.839171,
		-0.111352, -0.900945, -0.419402,
		-0.897798, 0.272150, -0.346256,
		36.222668, 39.391239, 30.507084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832333, 38.916809, 30.034513>,  <36.851128, 39.200733, 30.749462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832333, 38.916809, 30.034513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531162, 39.180042, 30.032799>,  <36.350460, 39.337982, 30.031771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.531162, 39.180042, 30.032799>,  <36.832333, 38.916809, 30.034513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.531162, 39.180042, 30.032799> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230228, 0.257296, -0.938506,
		-0.616517, -0.707615, -0.345236,
		-0.752929, 0.658088, -0.004286,
		36.305283, 39.377468, 30.031513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579094, 38.799934, 29.360415>,  <36.832333, 38.916809, 30.034513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579094, 38.799934, 29.360415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457764, 39.160740, 29.483295>,  <36.384968, 39.377224, 29.557024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457764, 39.160740, 29.483295>,  <36.579094, 38.799934, 29.360415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457764, 39.160740, 29.483295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353844, 0.405961, -0.842609,
		-0.884754, -0.146881, -0.442309,
		-0.303324, 0.902010, 0.307202,
		36.366768, 39.431343, 29.575457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263973, 39.042503, 28.867584>,  <36.579094, 38.799934, 29.360415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.263973, 39.042503, 28.867584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333191, 39.383644, 29.064642>,  <36.374722, 39.588329, 29.182877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.333191, 39.383644, 29.064642>,  <36.263973, 39.042503, 28.867584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.333191, 39.383644, 29.064642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342155, 0.416984, -0.842053,
		-0.923572, 0.314273, -0.219651,
		0.173044, 0.852852, 0.492645,
		36.385105, 39.639500, 29.212435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040344, 39.613922, 28.460953>,  <36.263973, 39.042503, 28.867584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040344, 39.613922, 28.460953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299389, 39.781567, 28.715492>,  <36.454815, 39.882153, 28.868216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299389, 39.781567, 28.715492>,  <36.040344, 39.613922, 28.460953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299389, 39.781567, 28.715492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489982, 0.410512, -0.769024,
		-0.583536, 0.809831, 0.060497,
		0.647614, 0.419110, 0.636351,
		36.493671, 39.907299, 28.906397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049679, 40.304756, 28.258400>,  <36.040344, 39.613922, 28.460953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.049679, 40.304756, 28.258400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.390972, 40.245941, 28.458548>,  <36.595749, 40.210651, 28.578636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.390972, 40.245941, 28.458548>,  <36.049679, 40.304756, 28.258400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390972, 40.245941, 28.458548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491582, 0.547149, -0.677476,
		-0.174163, 0.824020, 0.539128,
		0.853237, -0.147034, 0.500367,
		36.646942, 40.201832, 28.608658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431232, 40.927059, 28.059423>,  <36.049679, 40.304756, 28.258400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431232, 40.927059, 28.059423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705193, 40.677902, 28.210642>,  <36.869568, 40.528408, 28.301373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.705193, 40.677902, 28.210642>,  <36.431232, 40.927059, 28.059423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705193, 40.677902, 28.210642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669626, 0.333542, -0.663590,
		0.287247, 0.707644, 0.645545,
		0.684902, -0.622888, 0.378048,
		36.910664, 40.491035, 28.324057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036953, 41.334366, 28.236052>,  <36.431232, 40.927059, 28.059423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036953, 41.334366, 28.236052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145386, 40.957848, 28.155573>,  <37.210445, 40.731937, 28.107285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.145386, 40.957848, 28.155573>,  <37.036953, 41.334366, 28.236052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145386, 40.957848, 28.155573> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674368, 0.334877, -0.658092,
		0.686835, 0.042716, 0.725557,
		0.271083, -0.941293, -0.201198,
		37.226711, 40.675461, 28.095213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.655891, 41.394516, 28.218170>,  <37.036953, 41.334366, 28.236052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.655891, 41.394516, 28.218170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631935, 41.036724, 28.040936>,  <37.617561, 40.822048, 27.934595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.631935, 41.036724, 28.040936>,  <37.655891, 41.394516, 28.218170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631935, 41.036724, 28.040936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598979, 0.322884, -0.732782,
		0.798522, -0.309288, 0.516434,
		-0.059893, -0.894476, -0.443087,
		37.613968, 40.768383, 27.908009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263451, 41.328865, 27.831255>,  <37.655891, 41.394516, 28.218170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263451, 41.328865, 27.831255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042946, 41.034527, 27.673956>,  <37.910641, 40.857925, 27.579576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.042946, 41.034527, 27.673956>,  <38.263451, 41.328865, 27.831255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042946, 41.034527, 27.673956> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470381, 0.115177, -0.874915,
		0.689092, -0.667285, 0.282634,
		-0.551265, -0.735843, -0.393246,
		37.877567, 40.813774, 27.555983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758080, 40.767796, 27.534012>,  <38.263451, 41.328865, 27.831255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.758080, 40.767796, 27.534012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413475, 40.754013, 27.331383>,  <38.206715, 40.745743, 27.209805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.413475, 40.754013, 27.331383>,  <38.758080, 40.767796, 27.534012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413475, 40.754013, 27.331383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505918, 0.026304, -0.862180,
		0.043028, -0.999060, -0.005231,
		-0.861508, -0.034451, -0.506574,
		38.155022, 40.743679, 27.179411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470100, 40.309490, 27.358027>,  <38.758080, 40.767796, 27.534012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470100, 40.309490, 27.358027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.685352, 40.612797, 27.505238>,  <39.814503, 40.794781, 27.593565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.685352, 40.612797, 27.505238>,  <39.470100, 40.309490, 27.358027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685352, 40.612797, 27.505238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182178, -0.321679, 0.929158,
		0.822939, -0.567053, -0.034965,
		0.538129, 0.758270, 0.368027,
		39.846790, 40.840279, 27.615646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.858082, 40.050816, 27.800993>,  <39.470100, 40.309490, 27.358027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.858082, 40.050816, 27.800993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.883804, 40.432613, 27.917473>,  <39.899239, 40.661694, 27.987360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.883804, 40.432613, 27.917473>,  <39.858082, 40.050816, 27.800993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.883804, 40.432613, 27.917473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042649, -0.288908, 0.956406,
		0.997018, -0.073925, 0.022129,
		0.064309, 0.954499, 0.291199,
		39.903095, 40.718964, 28.004833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428768, 39.995827, 28.231739>,  <39.858082, 40.050816, 27.800993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428768, 39.995827, 28.231739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196266, 40.303864, 28.336889>,  <40.056767, 40.488686, 28.399981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.196266, 40.303864, 28.336889>,  <40.428768, 39.995827, 28.231739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196266, 40.303864, 28.336889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099150, -0.253621, 0.962209,
		0.807657, 0.585354, 0.071064,
		-0.581256, 0.770089, 0.262877,
		40.021889, 40.534889, 28.415752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664898, 40.152538, 28.879452>,  <40.428768, 39.995827, 28.231739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664898, 40.152538, 28.879452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.327606, 40.367287, 28.868679>,  <40.125229, 40.496136, 28.862215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.327606, 40.367287, 28.868679>,  <40.664898, 40.152538, 28.879452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.327606, 40.367287, 28.868679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128287, -0.152338, 0.979967,
		0.522015, 0.829796, 0.197330,
		-0.843234, 0.536872, -0.026930,
		40.074635, 40.528347, 28.860600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678535, 40.700256, 29.378618>,  <40.664898, 40.152538, 28.879452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678535, 40.700256, 29.378618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.293278, 40.628105, 29.298800>,  <40.062122, 40.584816, 29.250908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.293278, 40.628105, 29.298800>,  <40.678535, 40.700256, 29.378618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293278, 40.628105, 29.298800> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176826, -0.134462, 0.975014,
		-0.202699, 0.974364, 0.097612,
		-0.963144, -0.180374, -0.199548,
		40.004333, 40.573994, 29.238935>
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
