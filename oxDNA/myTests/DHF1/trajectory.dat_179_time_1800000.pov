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
	<1.070199, 4.696724, 2.584364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.740883, 4.497253, 2.692818>,  <0.543293, 4.377571, 2.757890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.740883, 4.497253, 2.692818>,  <1.070199, 4.696724, 2.584364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.740883, 4.497253, 2.692818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533581, -0.842845, 0.070021,
		0.193607, 0.202320, 0.959991,
		-0.823291, -0.498677, 0.271134,
		0.493896, 4.347651, 2.774158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.249993, 4.284014, 3.182499>,  <1.070199, 4.696724, 2.584364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.249993, 4.284014, 3.182499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.968498, 4.117340, 2.952324>,  <0.799601, 4.017336, 2.814219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.968498, 4.117340, 2.952324>,  <1.249993, 4.284014, 3.182499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.968498, 4.117340, 2.952324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423465, -0.896363, 0.131191,
		-0.570467, -0.151354, 0.807255,
		-0.703737, -0.416684, -0.575438,
		0.757377, 3.992335, 2.779692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.813827, 3.780925, 3.651967>,  <1.249993, 4.284014, 3.182499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.813827, 3.780925, 3.651967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.821556, 3.698029, 3.260727>,  <0.826194, 3.648291, 3.025983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.821556, 3.698029, 3.260727>,  <0.813827, 3.780925, 3.651967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.821556, 3.698029, 3.260727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213690, -0.954820, 0.206530,
		-0.976710, -0.213001, 0.025835,
		0.019323, -0.207241, -0.978099,
		0.827353, 3.635856, 2.967297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.825931, 4.355935, 3.996699>,  <0.813827, 3.780925, 3.651967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.825931, 4.355935, 3.996699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.773323, 4.586578, 4.319244>,  <0.741758, 4.724965, 4.512772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.773323, 4.586578, 4.319244>,  <0.825931, 4.355935, 3.996699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.773323, 4.586578, 4.319244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701429, 0.520671, -0.486723,
		-0.700499, -0.629622, 0.335972,
		-0.131521, 0.576609, 0.806364,
		0.733867, 4.759561, 4.561154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.214567, 4.472926, 3.940273>,  <0.825931, 4.355935, 3.996699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.214567, 4.472926, 3.940273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.344727, 4.769119, 4.175491>,  <0.422822, 4.946836, 4.316623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.344727, 4.769119, 4.175491>,  <0.214567, 4.472926, 3.940273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.344727, 4.769119, 4.175491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550581, 0.653969, -0.518830,
		-0.768750, -0.154941, 0.620497,
		0.325398, 0.740484, 0.588046,
		0.442346, 4.991265, 4.351905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.316432, 4.908528, 4.048711>,  <0.214567, 4.472926, 3.940273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.316432, 4.908528, 4.048711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.012917, 5.147263, 4.153038>,  <0.169193, 5.290504, 4.215634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.012917, 5.147263, 4.153038>,  <-0.316432, 4.908528, 4.048711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.012917, 5.147263, 4.153038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401201, 0.743730, -0.534699,
		-0.513107, 0.301083, 0.803785,
		0.758788, 0.596837, 0.260818,
		0.214720, 5.326314, 4.231284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.636183, 5.467105, 4.342185>,  <-0.316432, 4.908528, 4.048711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.636183, 5.467105, 4.342185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.270782, 5.595062, 4.241638>,  <-0.051542, 5.671836, 4.181310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.270782, 5.595062, 4.241638>,  <-0.636183, 5.467105, 4.342185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.270782, 5.595062, 4.241638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405501, 0.665870, -0.626248,
		-0.032953, 0.674008, 0.737989,
		0.913501, 0.319892, -0.251368,
		0.003268, 5.691030, 4.166228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.746634, 6.238570, 4.394114>,  <-0.636183, 5.467105, 4.342185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.746634, 6.238570, 4.394114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.425522, 6.151382, 4.172112>,  <-0.232854, 6.099070, 4.038910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.425522, 6.151382, 4.172112>,  <-0.746634, 6.238570, 4.394114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.425522, 6.151382, 4.172112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299692, 0.657188, -0.691584,
		0.515488, 0.721522, 0.462254,
		0.802781, -0.217969, -0.555007,
		-0.184688, 6.085992, 4.005610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.623669, 0.894085, 3.236959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.321331, 0.668564, 3.103798>,  <3.139928, 0.533251, 3.023901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.321331, 0.668564, 3.103798>,  <3.623669, 0.894085, 3.236959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.321331, 0.668564, 3.103798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141934, 0.355264, -0.923928,
		0.639183, -0.745595, -0.188501,
		-0.755844, -0.563804, -0.332904,
		3.094578, 0.499423, 3.003927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.829534, 0.538996, 2.629827>,  <3.623669, 0.894085, 3.236959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.829534, 0.538996, 2.629827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.436777, 0.613785, 2.642021>,  <3.201123, 0.658658, 2.649338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.436777, 0.613785, 2.642021>,  <3.829534, 0.538996, 2.629827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.436777, 0.613785, 2.642021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028902, 0.306897, -0.951304,
		-0.187224, -0.933196, -0.306743,
		-0.981892, 0.186972, 0.030487,
		3.142210, 0.669877, 2.651167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.534080, 0.767225, 2.910735>,  <3.829534, 0.538996, 2.629827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.534080, 0.767225, 2.910735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.755455, 1.095993, 2.964630>,  <4.888280, 1.293254, 2.996967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.755455, 1.095993, 2.964630>,  <4.534080, 0.767225, 2.910735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.755455, 1.095993, 2.964630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423745, -0.417131, 0.804016,
		0.717041, -0.387878, -0.579140,
		0.553437, 0.821920, 0.134738,
		4.921486, 1.342569, 3.005052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.190116, 0.714362, 2.874076>,  <4.534080, 0.767225, 2.910735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.190116, 0.714362, 2.874076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.130566, 1.005844, 3.141457>,  <5.094835, 1.180733, 3.301885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.130566, 1.005844, 3.141457>,  <5.190116, 0.714362, 2.874076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.130566, 1.005844, 3.141457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294172, -0.612742, 0.733492,
		0.944086, 0.305839, -0.123141,
		-0.148877, 0.728704, 0.668450,
		5.085903, 1.224455, 3.341992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.864102, 0.965564, 3.233239>,  <5.190116, 0.714362, 2.874076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.864102, 0.965564, 3.233239> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.542564, 1.010010, 3.466988>,  <5.349642, 1.036677, 3.607237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.542564, 1.010010, 3.466988>,  <5.864102, 0.965564, 3.233239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.542564, 1.010010, 3.466988> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447214, -0.534872, 0.716876,
		0.392218, 0.837595, 0.380262,
		-0.803844, 0.111113, 0.584371,
		5.301411, 1.043344, 3.642299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.158246, 1.261319, 3.870898>,  <5.864102, 0.965564, 3.233239>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.158246, 1.261319, 3.870898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.806770, 1.085373, 3.945114>,  <5.595885, 0.979805, 3.989644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.806770, 1.085373, 3.945114>,  <6.158246, 1.261319, 3.870898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.806770, 1.085373, 3.945114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416981, -0.517919, 0.746919,
		-0.232449, 0.733675, 0.638504,
		-0.878689, -0.439864, 0.185539,
		5.543164, 0.953414, 4.000776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.291713, 0.939520, 4.496472>,  <6.158246, 1.261319, 3.870898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.291713, 0.939520, 4.496472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.934845, 0.777618, 4.416267>,  <5.720724, 0.680477, 4.368145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.934845, 0.777618, 4.416267>,  <6.291713, 0.939520, 4.496472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.934845, 0.777618, 4.416267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187957, -0.736310, 0.650015,
		-0.410735, 0.542237, 0.732991,
		-0.892171, -0.404755, -0.200511,
		5.667194, 0.656192, 4.356114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.884372, 0.911255, 5.139647>,  <6.291713, 0.939520, 4.496472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.884372, 0.911255, 5.139647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.741714, 0.629105, 4.894615>,  <5.656120, 0.459815, 4.747597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.741714, 0.629105, 4.894615>,  <5.884372, 0.911255, 5.139647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.741714, 0.629105, 4.894615> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284888, -0.706579, 0.647754,
		-0.889744, 0.056501, 0.452950,
		-0.356644, -0.705375, -0.612578,
		5.634721, 0.417492, 4.710842>
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
