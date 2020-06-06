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
	<24.485600, 34.878956, 35.198708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.139948, 34.804287, 35.011757>,  <23.932558, 34.759487, 34.899586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.139948, 34.804287, 35.011757>,  <24.485600, 34.878956, 35.198708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.139948, 34.804287, 35.011757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144431, 0.797623, -0.585608,
		0.482103, -0.573543, -0.662287,
		-0.864128, -0.186669, -0.467374,
		23.880709, 34.748287, 34.871544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.692244, 34.658264, 35.844315>,  <24.485600, 34.878956, 35.198708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.692244, 34.658264, 35.844315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702642, 34.482647, 36.203548>,  <24.708881, 34.377277, 36.419090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.702642, 34.482647, 36.203548>,  <24.692244, 34.658264, 35.844315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.702642, 34.482647, 36.203548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938908, -0.297695, -0.172712,
		0.343185, 0.847713, 0.404483,
		0.025998, -0.439044, 0.898089,
		24.710442, 34.350933, 36.472977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.282482, 34.974903, 36.218624>,  <24.692244, 34.658264, 35.844315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.282482, 34.974903, 36.218624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210405, 34.609367, 36.364189>,  <25.167158, 34.390045, 36.451530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.210405, 34.609367, 36.364189>,  <25.282482, 34.974903, 36.218624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.210405, 34.609367, 36.364189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978148, -0.127465, 0.164253,
		-0.103714, 0.385560, 0.916835,
		-0.180194, -0.913836, 0.363915,
		25.156347, 34.335217, 36.473362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.851944, 34.932674, 35.893665>,  <25.282482, 34.974903, 36.218624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.851944, 34.932674, 35.893665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140446, 35.093395, 35.667976>,  <26.313547, 35.189827, 35.532562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.140446, 35.093395, 35.667976>,  <25.851944, 34.932674, 35.893665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140446, 35.093395, 35.667976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532701, -0.842413, 0.081049,
		-0.442744, -0.359020, -0.821634,
		0.721254, 0.401802, -0.564224,
		26.356821, 35.213936, 35.498711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.213785, 34.374058, 35.936012>,  <25.851944, 34.932674, 35.893665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.213785, 34.374058, 35.936012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418285, 34.639851, 35.717987>,  <26.540985, 34.799324, 35.587173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.418285, 34.639851, 35.717987>,  <26.213785, 34.374058, 35.936012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.418285, 34.639851, 35.717987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638457, -0.718200, -0.276698,
		-0.575321, -0.206534, -0.791423,
		0.511252, 0.664479, -0.545058,
		26.571661, 34.839195, 35.554470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946125, 34.490147, 36.031498>,  <26.213785, 34.374058, 35.936012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946125, 34.490147, 36.031498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083733, 34.675053, 36.358414>,  <27.166298, 34.785995, 36.554562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.083733, 34.675053, 36.358414>,  <26.946125, 34.490147, 36.031498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.083733, 34.675053, 36.358414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002328, -0.869993, 0.493058,
		0.938959, -0.171525, -0.298220,
		0.344021, 0.462267, 0.817287,
		27.186939, 34.813732, 36.603600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.546190, 34.152813, 36.265182>,  <26.946125, 34.490147, 36.031498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.546190, 34.152813, 36.265182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360661, 34.348114, 36.560879>,  <27.249342, 34.465294, 36.738297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360661, 34.348114, 36.560879>,  <27.546190, 34.152813, 36.265182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360661, 34.348114, 36.560879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043227, -0.845905, 0.531579,
		0.884871, 0.214605, 0.413459,
		-0.463826, 0.488251, 0.739240,
		27.221512, 34.494591, 36.782650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.485817, 33.698509, 36.833378>,  <27.546190, 34.152813, 36.265182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.485817, 33.698509, 36.833378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277319, 34.009613, 36.973888>,  <27.152220, 34.196274, 37.058193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.277319, 34.009613, 36.973888>,  <27.485817, 33.698509, 36.833378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.277319, 34.009613, 36.973888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248974, -0.532295, 0.809119,
		0.816281, 0.334293, 0.471099,
		-0.521246, 0.777760, 0.351272,
		27.120945, 34.242943, 37.079269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.604410, 33.712105, 37.557098>,  <27.485817, 33.698509, 36.833378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.604410, 33.712105, 37.557098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282736, 33.942249, 37.497440>,  <27.089731, 34.080338, 37.461647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282736, 33.942249, 37.497440>,  <27.604410, 33.712105, 37.557098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282736, 33.942249, 37.497440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405747, -0.348049, 0.845122,
		0.434342, 0.740150, 0.513348,
		-0.804187, 0.575361, -0.149141,
		27.041479, 34.114857, 37.452698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399704, 34.032497, 38.222115>,  <27.604410, 33.712105, 37.557098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399704, 34.032497, 38.222115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063688, 33.999691, 38.007599>,  <26.862078, 33.980007, 37.878891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063688, 33.999691, 38.007599>,  <27.399704, 34.032497, 38.222115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063688, 33.999691, 38.007599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392204, -0.591183, 0.704755,
		-0.374845, 0.802357, 0.464451,
		-0.840040, -0.082014, -0.536289,
		26.811676, 33.975086, 37.846714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.977844, 34.092735, 38.712662>,  <27.399704, 34.032497, 38.222115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.977844, 34.092735, 38.712662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780729, 33.928356, 38.405861>,  <26.662460, 33.829731, 38.221783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.780729, 33.928356, 38.405861>,  <26.977844, 34.092735, 38.712662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.780729, 33.928356, 38.405861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383241, -0.688858, 0.615306,
		-0.781210, 0.597159, 0.181968,
		-0.492785, -0.410946, -0.766998,
		26.632895, 33.805073, 38.175762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183634, 34.058205, 38.934475>,  <26.977844, 34.092735, 38.712662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183634, 34.058205, 38.934475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285721, 33.802765, 38.644081>,  <26.346973, 33.649502, 38.469845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.285721, 33.802765, 38.644081>,  <26.183634, 34.058205, 38.934475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.285721, 33.802765, 38.644081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471273, -0.737779, 0.483305,
		-0.844255, 0.218789, -0.489249,
		0.255216, -0.638602, -0.725984,
		26.362286, 33.611183, 38.426285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107977, 33.249546, 39.068367>,  <26.183634, 34.058205, 38.934475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107977, 33.249546, 39.068367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815302, 32.984371, 39.131802>,  <25.639696, 32.825268, 39.169865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.815302, 32.984371, 39.131802>,  <26.107977, 33.249546, 39.068367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.815302, 32.984371, 39.131802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492437, 0.353218, -0.795451,
		0.471313, -0.660120, -0.584898,
		-0.731690, -0.662932, 0.158591,
		25.595795, 32.785492, 39.179379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466854, 32.590141, 39.083652>,  <26.107977, 33.249546, 39.068367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466854, 32.590141, 39.083652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142056, 32.686413, 38.870960>,  <25.947176, 32.744175, 38.743347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.142056, 32.686413, 38.870960>,  <26.466854, 32.590141, 39.083652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.142056, 32.686413, 38.870960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519862, 0.712395, -0.471421,
		0.265337, -0.659217, -0.703584,
		-0.811998, 0.240681, -0.531726,
		25.898457, 32.758617, 38.711441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.649782, 32.670967, 38.355099>,  <26.466854, 32.590141, 39.083652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.649782, 32.670967, 38.355099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318642, 32.883591, 38.426773>,  <26.119957, 33.011166, 38.469776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318642, 32.883591, 38.426773>,  <26.649782, 32.670967, 38.355099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318642, 32.883591, 38.426773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269194, 0.656706, -0.704466,
		-0.492137, -0.534958, -0.686747,
		-0.827850, 0.531562, 0.179182,
		26.070286, 33.043060, 38.480526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.324400, 32.708717, 37.730480>,  <26.649782, 32.670967, 38.355099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.324400, 32.708717, 37.730480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246965, 33.034134, 37.949814>,  <26.200504, 33.229385, 38.081413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.246965, 33.034134, 37.949814>,  <26.324400, 32.708717, 37.730480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.246965, 33.034134, 37.949814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315915, 0.580831, -0.750222,
		-0.928828, 0.027996, -0.369451,
		-0.193586, 0.813542, 0.548337,
		26.188890, 33.278198, 38.114315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831495, 33.227238, 37.284138>,  <26.324400, 32.708717, 37.730480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831495, 33.227238, 37.284138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071598, 33.414551, 37.543491>,  <26.215660, 33.526939, 37.699104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.071598, 33.414551, 37.543491>,  <25.831495, 33.227238, 37.284138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.071598, 33.414551, 37.543491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247060, 0.662466, -0.707178,
		-0.760692, 0.584679, 0.281956,
		0.600258, 0.468284, 0.648383,
		26.251675, 33.555035, 37.738007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.744637, 33.919907, 37.139057>,  <25.831495, 33.227238, 37.284138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.744637, 33.919907, 37.139057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084452, 33.946617, 37.348370>,  <26.288342, 33.962643, 37.473957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.084452, 33.946617, 37.348370>,  <25.744637, 33.919907, 37.139057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.084452, 33.946617, 37.348370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257550, 0.813199, -0.521895,
		-0.460384, 0.578142, 0.673646,
		0.849537, 0.066775, 0.523285,
		26.339314, 33.966648, 37.505356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.915104, 34.656380, 37.090855>,  <25.744637, 33.919907, 37.139057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.915104, 34.656380, 37.090855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257076, 34.492184, 37.217724>,  <26.462259, 34.393665, 37.293846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.257076, 34.492184, 37.217724>,  <25.915104, 34.656380, 37.090855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.257076, 34.492184, 37.217724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518519, 0.658137, -0.545889,
		0.015340, 0.631154, 0.775506,
		0.854929, -0.410488, 0.317169,
		26.513556, 34.369038, 37.312874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318283, 35.208397, 37.387245>,  <25.915104, 34.656380, 37.090855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318283, 35.208397, 37.387245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579531, 34.926861, 37.275497>,  <26.736280, 34.757938, 37.208447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.579531, 34.926861, 37.275497>,  <26.318283, 35.208397, 37.387245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.579531, 34.926861, 37.275497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714256, 0.695127, -0.081470,
		0.251541, -0.146333, 0.956720,
		0.653120, -0.703836, -0.279372,
		26.775467, 34.715710, 37.191685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824400, 35.243904, 37.850491>,  <26.318283, 35.208397, 37.387245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824400, 35.243904, 37.850491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974396, 35.123489, 37.499775>,  <27.064394, 35.051239, 37.289345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.974396, 35.123489, 37.499775>,  <26.824400, 35.243904, 37.850491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.974396, 35.123489, 37.499775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729704, 0.679196, 0.078889,
		0.571763, -0.669379, 0.474362,
		0.374991, -0.301038, -0.876788,
		27.086893, 35.033176, 37.236740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.534723, 35.085239, 37.955307>,  <26.824400, 35.243904, 37.850491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.534723, 35.085239, 37.955307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450670, 35.216255, 37.586838>,  <27.400238, 35.294865, 37.365757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.450670, 35.216255, 37.586838>,  <27.534723, 35.085239, 37.955307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450670, 35.216255, 37.586838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542876, 0.822698, 0.168684,
		0.813099, -0.464638, -0.350686,
		-0.210131, 0.327536, -0.921176,
		27.387630, 35.314514, 37.310486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154352, 35.084698, 37.632481>,  <27.534723, 35.085239, 37.955307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154352, 35.084698, 37.632481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948774, 35.355934, 37.422318>,  <27.825428, 35.518677, 37.296219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948774, 35.355934, 37.422318>,  <28.154352, 35.084698, 37.632481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948774, 35.355934, 37.422318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707796, 0.681252, 0.186871,
		0.484651, -0.275839, -0.830076,
		-0.513945, 0.678092, -0.525407,
		27.794590, 35.559361, 37.264694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.722626, 35.512173, 37.483253>,  <28.154352, 35.084698, 37.632481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.722626, 35.512173, 37.483253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839237, 35.892513, 37.525009>,  <28.909204, 36.120716, 37.550060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.839237, 35.892513, 37.525009>,  <28.722626, 35.512173, 37.483253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839237, 35.892513, 37.525009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464486, 0.045316, 0.884420,
		0.836220, -0.306320, 0.454867,
		0.291529, 0.950849, 0.104387,
		28.926697, 36.177769, 37.556324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.997684, 35.582611, 38.205528>,  <28.722626, 35.512173, 37.483253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.997684, 35.582611, 38.205528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858892, 35.925682, 38.053745>,  <28.775618, 36.131527, 37.962673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.858892, 35.925682, 38.053745>,  <28.997684, 35.582611, 38.205528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858892, 35.925682, 38.053745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686951, 0.043039, 0.725428,
		0.638517, 0.512379, 0.574251,
		-0.346978, 0.857681, -0.379460,
		28.754799, 36.182987, 37.939907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.072258, 36.085800, 38.773945>,  <28.997684, 35.582611, 38.205528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.072258, 36.085800, 38.773945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793720, 36.244843, 38.534943>,  <28.626596, 36.340267, 38.391541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793720, 36.244843, 38.534943>,  <29.072258, 36.085800, 38.773945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793720, 36.244843, 38.534943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589699, 0.157573, 0.792102,
		0.409093, 0.903926, 0.124741,
		-0.696346, 0.397603, -0.597506,
		28.584816, 36.364124, 38.355690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.753836, 36.473396, 39.193920>,  <29.072258, 36.085800, 38.773945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.753836, 36.473396, 39.193920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505459, 36.480530, 38.880459>,  <28.356432, 36.484810, 38.692383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505459, 36.480530, 38.880459>,  <28.753836, 36.473396, 39.193920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505459, 36.480530, 38.880459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737804, 0.324323, 0.591996,
		0.264715, 0.945778, -0.188227,
		-0.620944, 0.017836, -0.783652,
		28.319176, 36.485882, 38.645363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683186, 37.241764, 38.921104>,  <28.753836, 36.473396, 39.193920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683186, 37.241764, 38.921104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364510, 37.000248, 38.910374>,  <28.173304, 36.855339, 38.903934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364510, 37.000248, 38.910374>,  <28.683186, 37.241764, 38.921104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364510, 37.000248, 38.910374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503124, 0.637955, 0.582993,
		-0.334894, 0.477960, -0.812034,
		-0.796688, -0.603795, -0.026826,
		28.125504, 36.819111, 38.902325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069302, 37.677631, 38.746323>,  <28.683186, 37.241764, 38.921104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069302, 37.677631, 38.746323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902212, 37.363094, 38.928387>,  <27.801958, 37.174370, 39.037624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.902212, 37.363094, 38.928387>,  <28.069302, 37.677631, 38.746323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.902212, 37.363094, 38.928387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419980, 0.611340, 0.670731,
		-0.805681, 0.089025, -0.585621,
		-0.417725, -0.786345, 0.455157,
		27.776894, 37.127190, 39.064934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388130, 37.907600, 38.851254>,  <28.069302, 37.677631, 38.746323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388130, 37.907600, 38.851254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478682, 37.594658, 39.083347>,  <27.533012, 37.406895, 39.222603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478682, 37.594658, 39.083347>,  <27.388130, 37.907600, 38.851254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478682, 37.594658, 39.083347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251839, 0.528435, 0.810761,
		-0.940920, -0.329665, -0.077402,
		0.226378, -0.782354, 0.580237,
		27.546595, 37.359951, 39.257420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888239, 37.620239, 39.220028>,  <27.388130, 37.907600, 38.851254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888239, 37.620239, 39.220028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213024, 37.594254, 39.452061>,  <27.407896, 37.578663, 39.591282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.213024, 37.594254, 39.452061>,  <26.888239, 37.620239, 39.220028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.213024, 37.594254, 39.452061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409800, 0.644251, 0.645758,
		-0.415668, -0.762050, 0.496487,
		0.811963, -0.064961, 0.580083,
		27.456614, 37.574764, 39.626087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769501, 37.609299, 39.926731>,  <26.888239, 37.620239, 39.220028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769501, 37.609299, 39.926731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144768, 37.744720, 39.955635>,  <27.369928, 37.825974, 39.972977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.144768, 37.744720, 39.955635>,  <26.769501, 37.609299, 39.926731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.144768, 37.744720, 39.955635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313512, 0.742394, 0.592082,
		0.146812, -0.578125, 0.802632,
		0.938166, 0.338559, 0.072257,
		27.426218, 37.846287, 39.977310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.053024, 37.423958, 40.619480>,  <26.769501, 37.609299, 39.926731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.053024, 37.423958, 40.619480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205721, 37.756073, 40.457050>,  <27.297338, 37.955341, 40.359592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.205721, 37.756073, 40.457050>,  <27.053024, 37.423958, 40.619480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.205721, 37.756073, 40.457050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440579, 0.549687, 0.709743,
		0.812504, -0.092031, 0.575646,
		0.381743, 0.830286, -0.406076,
		27.320244, 38.005157, 40.335228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170496, 37.886513, 41.195755>,  <27.053024, 37.423958, 40.619480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170496, 37.886513, 41.195755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219057, 38.170525, 40.918301>,  <27.248194, 38.340931, 40.751827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219057, 38.170525, 40.918301>,  <27.170496, 37.886513, 41.195755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219057, 38.170525, 40.918301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342585, 0.685832, 0.642082,
		0.931610, 0.159677, 0.326506,
		0.121403, 0.710026, -0.693631,
		27.255478, 38.383533, 40.710213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548759, 38.480125, 41.464905>,  <27.170496, 37.886513, 41.195755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548759, 38.480125, 41.464905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300020, 38.581047, 41.168350>,  <27.150776, 38.641598, 40.990417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.300020, 38.581047, 41.168350>,  <27.548759, 38.480125, 41.464905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.300020, 38.581047, 41.168350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392365, 0.718922, 0.573760,
		0.677755, 0.647685, -0.348068,
		-0.621850, 0.252299, -0.741382,
		27.113464, 38.656738, 40.945934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016037, 38.695709, 41.853611>,  <27.548759, 38.480125, 41.464905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016037, 38.695709, 41.853611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763311, 38.964283, 41.698696>,  <26.611675, 39.125427, 41.605747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.763311, 38.964283, 41.698696>,  <27.016037, 38.695709, 41.853611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.763311, 38.964283, 41.698696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437993, -0.102972, -0.893061,
		-0.639509, -0.733879, -0.229022,
		-0.631816, 0.671431, -0.387286,
		26.573767, 39.165710, 41.582512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.488817, 38.535664, 41.214806>,  <27.016037, 38.695709, 41.853611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.488817, 38.535664, 41.214806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592707, 38.921925, 41.218025>,  <26.655041, 39.153679, 41.219959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592707, 38.921925, 41.218025>,  <26.488817, 38.535664, 41.214806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592707, 38.921925, 41.218025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463441, -0.117322, -0.878327,
		-0.847211, 0.231853, -0.477993,
		0.259722, 0.965650, 0.008054,
		26.670624, 39.211620, 41.220440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.339373, 38.750305, 40.520672>,  <26.488817, 38.535664, 41.214806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.339373, 38.750305, 40.520672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593233, 39.000694, 40.701946>,  <26.745550, 39.150928, 40.810711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.593233, 39.000694, 40.701946>,  <26.339373, 38.750305, 40.520672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593233, 39.000694, 40.701946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650461, -0.116056, -0.750621,
		-0.417274, 0.771161, -0.480826,
		0.634652, 0.625973, 0.453183,
		26.783628, 39.188488, 40.837902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.596092, 39.267799, 40.026485>,  <26.339373, 38.750305, 40.520672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.596092, 39.267799, 40.026485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836046, 39.130497, 40.315571>,  <26.980019, 39.048115, 40.489021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.836046, 39.130497, 40.315571>,  <26.596092, 39.267799, 40.026485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836046, 39.130497, 40.315571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675618, -0.266532, -0.687387,
		0.428578, 0.900630, 0.072023,
		0.599884, -0.343259, 0.722712,
		27.016012, 39.027519, 40.532383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327038, 39.362629, 39.830513>,  <26.596092, 39.267799, 40.026485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327038, 39.362629, 39.830513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319672, 39.042210, 40.069839>,  <27.315252, 38.849957, 40.213436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.319672, 39.042210, 40.069839>,  <27.327038, 39.362629, 39.830513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.319672, 39.042210, 40.069839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544021, -0.510109, -0.666205,
		0.838869, 0.313228, 0.445182,
		-0.018417, -0.801047, 0.598318,
		27.314146, 38.801895, 40.249336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.934277, 39.049461, 39.889355>,  <27.327038, 39.362629, 39.830513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.934277, 39.049461, 39.889355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750391, 38.716518, 40.013187>,  <27.640060, 38.516750, 40.087486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750391, 38.716518, 40.013187>,  <27.934277, 39.049461, 39.889355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750391, 38.716518, 40.013187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599614, -0.548067, -0.583168,
		0.655077, -0.082462, 0.751049,
		-0.459714, -0.832359, 0.309581,
		27.612476, 38.466812, 40.106060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.488518, 38.478001, 39.869846>,  <27.934277, 39.049461, 39.889355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.488518, 38.478001, 39.869846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135822, 38.290054, 39.886665>,  <27.924206, 38.177288, 39.896755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.135822, 38.290054, 39.886665>,  <28.488518, 38.478001, 39.869846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.135822, 38.290054, 39.886665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355522, -0.720453, -0.595442,
		0.310070, -0.510074, 0.802297,
		-0.881738, -0.469863, 0.042049,
		27.871302, 38.149094, 39.899281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573238, 37.689354, 40.165104>,  <28.488518, 38.478001, 39.869846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573238, 37.689354, 40.165104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299423, 37.810513, 39.899876>,  <28.135134, 37.883205, 39.740738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.299423, 37.810513, 39.899876>,  <28.573238, 37.689354, 40.165104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.299423, 37.810513, 39.899876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323020, -0.689382, -0.648391,
		-0.653499, -0.658035, 0.374071,
		-0.684542, 0.302890, -0.663068,
		28.094061, 37.901379, 39.700954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923615, 37.191425, 40.044006>,  <28.573238, 37.689354, 40.165104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923615, 37.191425, 40.044006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019506, 37.379982, 39.704521>,  <28.077042, 37.493114, 39.500828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019506, 37.379982, 39.704521>,  <27.923615, 37.191425, 40.044006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019506, 37.379982, 39.704521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233571, -0.876536, -0.420867,
		-0.942324, -0.097341, -0.320236,
		0.239730, 0.471391, -0.848717,
		28.091425, 37.521400, 39.449905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824278, 36.489712, 40.142677>,  <27.923615, 37.191425, 40.044006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824278, 36.489712, 40.142677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627527, 36.756664, 39.919014>,  <27.509476, 36.916836, 39.784817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627527, 36.756664, 39.919014>,  <27.824278, 36.489712, 40.142677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627527, 36.756664, 39.919014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074698, -0.607505, -0.790796,
		-0.867454, -0.430744, 0.248966,
		-0.491878, 0.667382, -0.559158,
		27.479963, 36.956879, 39.751266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357500, 36.080528, 39.772617>,  <27.824278, 36.489712, 40.142677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357500, 36.080528, 39.772617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471073, 36.388149, 39.543552>,  <27.539217, 36.572720, 39.406113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471073, 36.388149, 39.543552>,  <27.357500, 36.080528, 39.772617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471073, 36.388149, 39.543552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283324, -0.637868, -0.716137,
		-0.916030, 0.041083, -0.399001,
		0.283931, 0.769049, -0.572666,
		27.556252, 36.618862, 39.371754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.156157, 35.982422, 38.997696>,  <27.357500, 36.080528, 39.772617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.156157, 35.982422, 38.997696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461399, 36.240540, 38.983456>,  <27.644545, 36.395409, 38.974911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.461399, 36.240540, 38.983456>,  <27.156157, 35.982422, 38.997696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.461399, 36.240540, 38.983456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413082, -0.529382, -0.741024,
		-0.497021, 0.550776, -0.670534,
		0.763107, 0.645290, -0.035598,
		27.690331, 36.434128, 38.972775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216419, 35.772884, 38.303501>,  <27.156157, 35.982422, 38.997696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216419, 35.772884, 38.303501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471043, 36.035995, 38.464558>,  <27.623817, 36.193863, 38.561192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.471043, 36.035995, 38.464558>,  <27.216419, 35.772884, 38.303501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.471043, 36.035995, 38.464558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603199, -0.099314, -0.791383,
		-0.480565, 0.746637, -0.459990,
		0.636560, 0.657776, 0.402644,
		27.662010, 36.233330, 38.585350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.459787, 36.166908, 37.708282>,  <27.216419, 35.772884, 38.303501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.459787, 36.166908, 37.708282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712307, 36.235802, 38.010750>,  <27.863819, 36.277138, 38.192230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.712307, 36.235802, 38.010750>,  <27.459787, 36.166908, 37.708282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712307, 36.235802, 38.010750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701731, 0.288275, -0.651514,
		-0.330201, 0.941930, 0.061123,
		0.631301, 0.172238, 0.756170,
		27.901697, 36.287472, 38.237602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.707010, 36.861221, 37.530457>,  <27.459787, 36.166908, 37.708282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.707010, 36.861221, 37.530457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964069, 36.670227, 37.770126>,  <28.118305, 36.555630, 37.913929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.964069, 36.670227, 37.770126>,  <27.707010, 36.861221, 37.530457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.964069, 36.670227, 37.770126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747881, 0.221145, -0.625915,
		0.166361, 0.850354, 0.499221,
		0.642650, -0.477485, 0.599174,
		28.156864, 36.526981, 37.949879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289467, 37.281910, 37.415661>,  <27.707010, 36.861221, 37.530457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289467, 37.281910, 37.415661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435320, 36.947140, 37.578926>,  <28.522833, 36.746277, 37.676884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.435320, 36.947140, 37.578926>,  <28.289467, 37.281910, 37.415661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435320, 36.947140, 37.578926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676509, -0.063086, -0.733727,
		0.639826, 0.543665, 0.543186,
		0.364634, -0.836928, 0.408159,
		28.544710, 36.696060, 37.701374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.989046, 37.386868, 37.641453>,  <28.289467, 37.281910, 37.415661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.989046, 37.386868, 37.641453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904741, 37.004917, 37.557739>,  <28.854158, 36.775749, 37.507511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.904741, 37.004917, 37.557739>,  <28.989046, 37.386868, 37.641453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.904741, 37.004917, 37.557739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737709, -0.014897, -0.674955,
		0.641378, -0.296645, 0.707556,
		-0.210762, -0.954871, -0.209284,
		28.841513, 36.718456, 37.494953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.667843, 37.153168, 37.567070>,  <28.989046, 37.386868, 37.641453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.667843, 37.153168, 37.567070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424253, 36.939529, 37.332500>,  <29.278099, 36.811344, 37.191761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424253, 36.939529, 37.332500>,  <29.667843, 37.153168, 37.567070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424253, 36.939529, 37.332500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661312, 0.066346, -0.747171,
		0.437970, -0.842815, 0.312802,
		-0.608974, -0.534098, -0.586421,
		29.241562, 36.779301, 37.156574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960009, 37.058521, 36.984653>,  <29.667843, 37.153168, 37.567070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960009, 37.058521, 36.984653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634203, 36.862385, 36.860634>,  <29.438719, 36.744701, 36.786221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.634203, 36.862385, 36.860634>,  <29.960009, 37.058521, 36.984653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634203, 36.862385, 36.860634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309300, 0.085109, -0.947149,
		0.490814, -0.867365, 0.082340,
		-0.814515, -0.490342, -0.310048,
		29.389849, 36.715282, 36.767620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.635567, 37.510101, 37.275703>,  <29.960009, 37.058521, 36.984653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.635567, 37.510101, 37.275703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935415, 37.773621, 37.301163>,  <31.115324, 37.931732, 37.316441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.935415, 37.773621, 37.301163>,  <30.635567, 37.510101, 37.275703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.935415, 37.773621, 37.301163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442522, 0.570383, -0.691980,
		-0.492182, 0.490556, 0.719105,
		0.749621, 0.658800, 0.063650,
		31.160301, 37.971260, 37.320259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.535576, 38.258194, 37.315079>,  <30.635567, 37.510101, 37.275703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.535576, 38.258194, 37.315079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896231, 38.211842, 37.148407>,  <31.112623, 38.184032, 37.048405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.896231, 38.211842, 37.148407>,  <30.535576, 38.258194, 37.315079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.896231, 38.211842, 37.148407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312807, 0.490607, -0.813300,
		0.298670, 0.863642, 0.406102,
		0.901636, -0.115877, -0.416683,
		31.166721, 38.177078, 37.023403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889620, 38.890083, 37.110348>,  <30.535576, 38.258194, 37.315079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889620, 38.890083, 37.110348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030342, 38.607201, 36.865044>,  <31.114775, 38.437469, 36.717861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.030342, 38.607201, 36.865044>,  <30.889620, 38.890083, 37.110348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030342, 38.607201, 36.865044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212124, 0.577864, -0.788084,
		0.911722, 0.407339, 0.053280,
		0.351806, -0.707211, -0.613258,
		31.135883, 38.395039, 36.681065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343021, 39.130966, 36.590584>,  <30.889620, 38.890083, 37.110348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343021, 39.130966, 36.590584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145769, 38.811283, 36.453129>,  <31.027418, 38.619473, 36.370655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145769, 38.811283, 36.453129>,  <31.343021, 39.130966, 36.590584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145769, 38.811283, 36.453129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209655, 0.492540, -0.844659,
		0.844315, -0.344482, -0.410444,
		-0.493130, -0.799210, -0.343636,
		30.997829, 38.571522, 36.350037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.577541, 38.734261, 35.994320>,  <31.343021, 39.130966, 36.590584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.577541, 38.734261, 35.994320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181870, 38.675789, 35.999298>,  <30.944466, 38.640705, 36.002285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.181870, 38.675789, 35.999298>,  <31.577541, 38.734261, 35.994320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181870, 38.675789, 35.999298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082607, 0.484861, -0.870681,
		0.121235, -0.862289, -0.491690,
		-0.989180, -0.146175, 0.012449,
		30.885115, 38.631935, 36.003033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409527, 38.646103, 35.287422>,  <31.577541, 38.734261, 35.994320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409527, 38.646103, 35.287422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067009, 38.746582, 35.467937>,  <30.861498, 38.806870, 35.576248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.067009, 38.746582, 35.467937>,  <31.409527, 38.646103, 35.287422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.067009, 38.746582, 35.467937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270586, 0.526075, -0.806243,
		-0.439935, -0.812494, -0.382506,
		-0.856295, 0.251194, 0.451288,
		30.810120, 38.821941, 35.603325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079182, 38.383606, 35.015224>,  <31.409527, 38.646103, 35.287422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079182, 38.383606, 35.015224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277100, 38.384552, 34.667622>,  <32.395851, 38.385120, 34.459061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277100, 38.384552, 34.667622>,  <32.079182, 38.383606, 35.015224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277100, 38.384552, 34.667622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114409, -0.991114, -0.067843,
		-0.861446, 0.132991, -0.490127,
		0.494794, 0.002368, -0.869007,
		32.425537, 38.385262, 34.406921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691608, 38.096397, 34.432568>,  <32.079182, 38.383606, 35.015224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691608, 38.096397, 34.432568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088043, 38.054733, 34.399345>,  <32.325905, 38.029736, 34.379410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088043, 38.054733, 34.399345>,  <31.691608, 38.096397, 34.432568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088043, 38.054733, 34.399345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105530, -0.994341, -0.012207,
		-0.081317, 0.020863, -0.996470,
		0.991086, -0.104165, -0.083059,
		32.385368, 38.023483, 34.374428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789375, 37.541458, 33.904976>,  <31.691608, 38.096397, 34.432568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789375, 37.541458, 33.904976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114941, 37.551628, 34.137150>,  <32.310280, 37.557732, 34.276455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114941, 37.551628, 34.137150>,  <31.789375, 37.541458, 33.904976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114941, 37.551628, 34.137150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005129, -0.999317, 0.036582,
		0.580966, -0.026798, -0.813487,
		0.813912, 0.025425, 0.580432,
		32.359116, 37.559258, 34.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463184, 37.202053, 33.699402>,  <31.789375, 37.541458, 33.904976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463184, 37.202053, 33.699402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446514, 37.205070, 34.099045>,  <32.436512, 37.206882, 34.338829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.446514, 37.205070, 34.099045>,  <32.463184, 37.202053, 33.699402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446514, 37.205070, 34.099045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048557, -0.998775, 0.009568,
		0.997950, 0.048912, 0.041259,
		-0.041677, 0.007545, 0.999103,
		32.434010, 37.207333, 34.398777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.100014, 36.944824, 34.047600>,  <32.463184, 37.202053, 33.699402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.100014, 36.944824, 34.047600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765236, 36.860302, 34.249542>,  <32.564369, 36.809589, 34.370708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765236, 36.860302, 34.249542>,  <33.100014, 36.944824, 34.047600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765236, 36.860302, 34.249542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166171, -0.977026, -0.133445,
		0.521452, -0.027794, 0.852828,
		-0.836944, -0.211301, 0.504853,
		32.514153, 36.796913, 34.400997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881611, 36.193398, 34.037399>,  <33.100014, 36.944824, 34.047600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881611, 36.193398, 34.037399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972481, 36.023647, 34.388008>,  <33.027004, 35.921795, 34.598373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972481, 36.023647, 34.388008>,  <32.881611, 36.193398, 34.037399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972481, 36.023647, 34.388008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547412, -0.688757, -0.475346,
		0.805439, 0.587807, 0.075841,
		0.227176, -0.424378, 0.876524,
		33.040634, 35.896336, 34.650967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629894, 35.938625, 34.051785>,  <32.881611, 36.193398, 34.037399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629894, 35.938625, 34.051785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393551, 35.716301, 34.285694>,  <33.251743, 35.582905, 34.426041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393551, 35.716301, 34.285694>,  <33.629894, 35.938625, 34.051785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393551, 35.716301, 34.285694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505551, -0.819947, -0.268526,
		0.628730, 0.136970, 0.765465,
		-0.590861, -0.555812, 0.584770,
		33.216293, 35.549557, 34.461124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159660, 35.894447, 33.515274>,  <33.629894, 35.938625, 34.051785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159660, 35.894447, 33.515274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047672, 36.270508, 33.437572>,  <33.980480, 36.496143, 33.390953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.047672, 36.270508, 33.437572>,  <34.159660, 35.894447, 33.515274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047672, 36.270508, 33.437572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454421, -0.308024, -0.835837,
		-0.845647, -0.145735, 0.513461,
		-0.279970, 0.940150, -0.194255,
		33.963680, 36.552551, 33.379295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436996, 35.903824, 33.362171>,  <34.159660, 35.894447, 33.515274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436996, 35.903824, 33.362171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592754, 36.222492, 33.177261>,  <33.686207, 36.413692, 33.066315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.592754, 36.222492, 33.177261>,  <33.436996, 35.903824, 33.362171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.592754, 36.222492, 33.177261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590661, -0.169122, -0.788998,
		-0.706748, 0.580276, 0.404705,
		0.389393, 0.796666, -0.462273,
		33.709572, 36.461491, 33.038578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.825039, 36.178474, 33.102791>,  <33.436996, 35.903824, 33.362171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.825039, 36.178474, 33.102791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125397, 36.364845, 32.915573>,  <33.305611, 36.476669, 32.803242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125397, 36.364845, 32.915573>,  <32.825039, 36.178474, 33.102791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125397, 36.364845, 32.915573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446446, -0.164129, -0.879629,
		-0.486667, 0.869465, 0.084770,
		0.750894, 0.465931, -0.468046,
		33.350666, 36.504623, 32.775158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504940, 36.609375, 32.642750>,  <32.825039, 36.178474, 33.102791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504940, 36.609375, 32.642750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876461, 36.536629, 32.513599>,  <33.099373, 36.492981, 32.436108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876461, 36.536629, 32.513599>,  <32.504940, 36.609375, 32.642750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876461, 36.536629, 32.513599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342200, -0.086578, -0.935630,
		0.142202, 0.979505, -0.142648,
		0.928805, -0.181862, -0.322875,
		33.155102, 36.482071, 32.416737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.610161, 36.974087, 32.111923>,  <32.504940, 36.609375, 32.642750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.610161, 36.974087, 32.111923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897678, 36.707844, 32.031616>,  <33.070187, 36.548096, 31.983433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897678, 36.707844, 32.031616>,  <32.610161, 36.974087, 32.111923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897678, 36.707844, 32.031616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315447, -0.054907, -0.947353,
		0.619544, 0.744278, -0.249431,
		0.718790, -0.665609, -0.200763,
		33.113316, 36.508160, 31.971388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.661713, 37.107342, 31.406593>,  <32.610161, 36.974087, 32.111923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.661713, 37.107342, 31.406593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871605, 36.770737, 31.458004>,  <32.997540, 36.568775, 31.488852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871605, 36.770737, 31.458004>,  <32.661713, 37.107342, 31.406593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871605, 36.770737, 31.458004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284041, -0.315411, -0.905448,
		0.802481, 0.438611, -0.404529,
		0.524733, -0.841508, 0.128528,
		33.029026, 36.518284, 31.496563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066841, 37.060146, 30.796186>,  <32.661713, 37.107342, 31.406593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066841, 37.060146, 30.796186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996380, 36.702053, 30.959904>,  <32.954105, 36.487198, 31.058134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996380, 36.702053, 30.959904>,  <33.066841, 37.060146, 30.796186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996380, 36.702053, 30.959904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276717, -0.353993, -0.893373,
		0.944668, -0.270627, -0.185371,
		-0.176151, -0.895237, 0.409294,
		32.943535, 36.433483, 31.082691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394215, 36.584274, 30.305796>,  <33.066841, 37.060146, 30.796186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394215, 36.584274, 30.305796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136341, 36.364426, 30.518320>,  <32.981617, 36.232517, 30.645836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136341, 36.364426, 30.518320>,  <33.394215, 36.584274, 30.305796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136341, 36.364426, 30.518320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338399, -0.418036, -0.843049,
		0.685469, -0.723297, 0.083509,
		-0.644685, -0.549625, 0.531313,
		32.942936, 36.199539, 30.677713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478477, 35.984756, 30.057728>,  <33.394215, 36.584274, 30.305796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478477, 35.984756, 30.057728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113968, 36.001553, 30.221594>,  <32.895264, 36.011631, 30.319914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113968, 36.001553, 30.221594>,  <33.478477, 35.984756, 30.057728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113968, 36.001553, 30.221594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397645, -0.348384, -0.848827,
		0.107077, -0.936411, 0.334170,
		-0.911270, 0.041991, 0.409663,
		32.840588, 36.014149, 30.344492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162220, 35.270645, 29.903109>,  <33.478477, 35.984756, 30.057728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162220, 35.270645, 29.903109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857517, 35.502407, 30.019047>,  <32.674694, 35.641464, 30.088610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857517, 35.502407, 30.019047>,  <33.162220, 35.270645, 29.903109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857517, 35.502407, 30.019047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579280, -0.408821, -0.705195,
		-0.290097, -0.705093, 0.647061,
		-0.761760, 0.579405, 0.289848,
		32.628990, 35.676228, 30.106001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560467, 34.822189, 29.998722>,  <33.162220, 35.270645, 29.903109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560467, 34.822189, 29.998722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427582, 35.193783, 29.933449>,  <32.347851, 35.416737, 29.894285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427582, 35.193783, 29.933449>,  <32.560467, 34.822189, 29.998722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427582, 35.193783, 29.933449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641824, -0.349429, -0.682614,
		-0.691158, -0.122035, 0.712326,
		-0.332210, 0.928982, -0.163185,
		32.327919, 35.472477, 29.884493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784590, 34.686222, 29.880630>,  <32.560467, 34.822189, 29.998722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784590, 34.686222, 29.880630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878641, 35.049534, 29.742220>,  <31.935072, 35.267521, 29.659174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878641, 35.049534, 29.742220>,  <31.784590, 34.686222, 29.880630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878641, 35.049534, 29.742220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680026, -0.100638, -0.726248,
		-0.694463, 0.406071, 0.593993,
		0.235130, 0.908283, -0.346028,
		31.949181, 35.322018, 29.638411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.191881, 34.990971, 29.700186>,  <31.784590, 34.686222, 29.880630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.191881, 34.990971, 29.700186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436607, 35.230034, 29.492924>,  <31.583443, 35.373474, 29.368567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.436607, 35.230034, 29.492924>,  <31.191881, 34.990971, 29.700186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.436607, 35.230034, 29.492924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543576, -0.158207, -0.824315,
		-0.574636, 0.785985, 0.228081,
		0.611816, 0.597660, -0.518154,
		31.620152, 35.409332, 29.337477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.799492, 35.533092, 29.208128>,  <31.191881, 34.990971, 29.700186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.799492, 35.533092, 29.208128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166639, 35.490578, 29.055174>,  <31.386929, 35.465069, 28.963402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166639, 35.490578, 29.055174>,  <30.799492, 35.533092, 29.208128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166639, 35.490578, 29.055174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391598, -0.085860, -0.916122,
		0.064536, 0.990622, -0.120428,
		0.917870, -0.106282, -0.382385,
		31.442001, 35.458694, 28.940458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718466, 35.995998, 28.669050>,  <30.799492, 35.533092, 29.208128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718466, 35.995998, 28.669050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032721, 35.765366, 28.579311>,  <31.221273, 35.626987, 28.525469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.032721, 35.765366, 28.579311>,  <30.718466, 35.995998, 28.669050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.032721, 35.765366, 28.579311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302758, -0.042059, -0.952139,
		0.539546, 0.815959, -0.207607,
		0.785638, -0.576577, -0.224345,
		31.268412, 35.592392, 28.512009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845989, 36.175613, 28.009224>,  <30.718466, 35.995998, 28.669050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845989, 36.175613, 28.009224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072300, 35.846756, 28.034431>,  <31.208086, 35.649441, 28.049557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072300, 35.846756, 28.034431>,  <30.845989, 36.175613, 28.009224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072300, 35.846756, 28.034431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139724, -0.170916, -0.975328,
		0.812633, 0.543014, -0.211574,
		0.565778, -0.822146, 0.063020,
		31.242033, 35.600113, 28.053337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192667, 36.193287, 27.348433>,  <30.845989, 36.175613, 28.009224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192667, 36.193287, 27.348433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216272, 35.828312, 27.510410>,  <31.230434, 35.609329, 27.607597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.216272, 35.828312, 27.510410>,  <31.192667, 36.193287, 27.348433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216272, 35.828312, 27.510410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118887, -0.409190, -0.904671,
		0.991153, 0.005244, -0.132623,
		0.059012, -0.912434, 0.404946,
		31.233976, 35.554581, 27.631895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690437, 35.777065, 27.037426>,  <31.192667, 36.193287, 27.348433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690437, 35.777065, 27.037426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426075, 35.515308, 27.184383>,  <31.267458, 35.358253, 27.272558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426075, 35.515308, 27.184383>,  <31.690437, 35.777065, 27.037426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426075, 35.515308, 27.184383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336762, -0.178896, -0.924439,
		0.670669, -0.734691, -0.102140,
		-0.660905, -0.654390, 0.367396,
		31.227804, 35.318993, 27.294601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697414, 35.184689, 26.664297>,  <31.690437, 35.777065, 27.037426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697414, 35.184689, 26.664297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333900, 35.126755, 26.820826>,  <31.115791, 35.091995, 26.914743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333900, 35.126755, 26.820826>,  <31.697414, 35.184689, 26.664297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333900, 35.126755, 26.820826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354103, -0.228410, -0.906885,
		0.220727, -0.962732, 0.156291,
		-0.908785, -0.144831, 0.391323,
		31.061264, 35.083305, 26.938223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512865, 34.599941, 26.417150>,  <31.697414, 35.184689, 26.664297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512865, 34.599941, 26.417150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167789, 34.752663, 26.549810>,  <30.960743, 34.844296, 26.629406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.167789, 34.752663, 26.549810>,  <31.512865, 34.599941, 26.417150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.167789, 34.752663, 26.549810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470595, -0.365869, -0.802920,
		-0.185214, -0.848745, 0.495305,
		-0.862692, 0.381800, 0.331651,
		30.908981, 34.867203, 26.649305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.054014, 34.056728, 26.255583>,  <31.512865, 34.599941, 26.417150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.054014, 34.056728, 26.255583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833851, 34.384617, 26.318966>,  <30.701754, 34.581348, 26.356995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833851, 34.384617, 26.318966>,  <31.054014, 34.056728, 26.255583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833851, 34.384617, 26.318966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508492, -0.178601, -0.842341,
		-0.662185, -0.544203, 0.515125,
		-0.550406, 0.819722, 0.158456,
		30.668730, 34.630535, 26.366503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300331, 33.885658, 26.183027>,  <31.054014, 34.056728, 26.255583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300331, 33.885658, 26.183027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329378, 34.278492, 26.113482>,  <30.346806, 34.514194, 26.071754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.329378, 34.278492, 26.113482>,  <30.300331, 33.885658, 26.183027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.329378, 34.278492, 26.113482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563040, -0.103523, -0.819920,
		-0.823233, 0.157433, 0.545437,
		0.072617, 0.982088, -0.173865,
		30.351164, 34.573120, 26.061321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.536888, 34.149891, 25.952091>,  <30.300331, 33.885658, 26.183027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.536888, 34.149891, 25.952091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802687, 34.417137, 25.818188>,  <29.962166, 34.577484, 25.737844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802687, 34.417137, 25.818188>,  <29.536888, 34.149891, 25.952091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802687, 34.417137, 25.818188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475759, 0.032775, -0.878965,
		-0.576278, 0.743336, 0.339641,
		0.664498, 0.668115, -0.334761,
		30.002035, 34.617573, 25.717760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.111961, 34.625561, 25.619833>,  <29.536888, 34.149891, 25.952091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.111961, 34.625561, 25.619833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479151, 34.686954, 25.473536>,  <29.699465, 34.723789, 25.385757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479151, 34.686954, 25.473536>,  <29.111961, 34.625561, 25.619833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479151, 34.686954, 25.473536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384129, 0.114234, -0.916185,
		-0.098839, 0.981526, 0.163822,
		0.917974, 0.153484, -0.365742,
		29.754543, 34.732998, 25.363813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.980453, 35.147987, 25.079168>,  <29.111961, 34.625561, 25.619833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.980453, 35.147987, 25.079168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330088, 34.975262, 24.990170>,  <29.539869, 34.871624, 24.936771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.330088, 34.975262, 24.990170>,  <28.980453, 35.147987, 25.079168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330088, 34.975262, 24.990170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281865, -0.077817, -0.956293,
		0.395631, 0.898598, -0.189733,
		0.874087, -0.431818, -0.222496,
		29.592314, 34.845715, 24.923420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089529, 35.416584, 24.469402>,  <28.980453, 35.147987, 25.079168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089529, 35.416584, 24.469402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345396, 35.109394, 24.456497>,  <29.498917, 34.925079, 24.448755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.345396, 35.109394, 24.456497>,  <29.089529, 35.416584, 24.469402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345396, 35.109394, 24.456497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199494, -0.125338, -0.971850,
		0.742314, 0.628095, -0.233381,
		0.639665, -0.767976, -0.032261,
		29.537296, 34.879002, 24.446819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522457, 35.549580, 23.896711>,  <29.089529, 35.416584, 24.469402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522457, 35.549580, 23.896711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523293, 35.156921, 23.973000>,  <29.523794, 34.921326, 24.018772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.523293, 35.156921, 23.973000>,  <29.522457, 35.549580, 23.896711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.523293, 35.156921, 23.973000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159905, -0.188593, -0.968949,
		0.987130, -0.028475, -0.157363,
		0.002087, -0.981642, 0.190719,
		29.523918, 34.862427, 24.030216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009762, 35.175205, 23.458326>,  <29.522457, 35.549580, 23.896711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009762, 35.175205, 23.458326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732199, 34.910320, 23.571440>,  <29.565660, 34.751389, 23.639307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.732199, 34.910320, 23.571440>,  <30.009762, 35.175205, 23.458326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.732199, 34.910320, 23.571440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182434, -0.218222, -0.958696,
		0.696571, -0.716834, 0.030616,
		-0.693907, -0.662214, 0.282782,
		29.524027, 34.711655, 23.656275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.291533, 34.519718, 23.247681>,  <30.009762, 35.175205, 23.458326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.291533, 34.519718, 23.247681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903048, 34.440395, 23.300474>,  <29.669956, 34.392799, 23.332150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.903048, 34.440395, 23.300474>,  <30.291533, 34.519718, 23.247681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.903048, 34.440395, 23.300474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037524, -0.419768, -0.906855,
		0.235241, -0.885702, 0.400243,
		-0.971212, -0.198310, 0.131982,
		29.611683, 34.380901, 23.340069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171751, 33.757248, 22.966494>,  <30.291533, 34.519718, 23.247681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171751, 33.757248, 22.966494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820711, 33.948761, 22.976181>,  <29.610086, 34.063667, 22.981995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.820711, 33.948761, 22.976181>,  <30.171751, 33.757248, 22.966494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.820711, 33.948761, 22.976181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248033, -0.410243, -0.877599,
		-0.410243, -0.776188, 0.478783,
		0.877599, -0.478783, -0.024221,
		29.557432, 34.092396, 22.983448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.797218, 33.248100, 22.753689>,  <30.171751, 33.757248, 22.966494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.797218, 33.248100, 22.753689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550814, 33.561951, 22.725704>,  <29.402971, 33.750259, 22.708914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550814, 33.561951, 22.725704>,  <29.797218, 33.248100, 22.753689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550814, 33.561951, 22.725704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358295, -0.358176, -0.862168,
		-0.701536, -0.506039, 0.501768,
		-0.616013, 0.784623, -0.069963,
		29.366011, 33.797337, 22.704716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.155024, 33.006741, 22.628550>,  <29.797218, 33.248100, 22.753689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.155024, 33.006741, 22.628550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141365, 33.370010, 22.461666>,  <29.133171, 33.587971, 22.361536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.141365, 33.370010, 22.461666>,  <29.155024, 33.006741, 22.628550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.141365, 33.370010, 22.461666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296736, -0.407838, -0.863490,
		-0.954349, 0.094317, 0.283412,
		-0.034145, 0.908170, -0.417207,
		29.131121, 33.642460, 22.336504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.406322, 33.098373, 22.297230>,  <29.155024, 33.006741, 22.628550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.406322, 33.098373, 22.297230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618982, 33.400223, 22.143402>,  <28.746578, 33.581333, 22.051105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.618982, 33.400223, 22.143402>,  <28.406322, 33.098373, 22.297230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.618982, 33.400223, 22.143402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365713, -0.205014, -0.907867,
		-0.763938, 0.623311, 0.166979,
		0.531651, 0.754621, -0.384571,
		28.778477, 33.626610, 22.028030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970652, 33.573696, 21.911196>,  <28.406322, 33.098373, 22.297230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970652, 33.573696, 21.911196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340553, 33.618088, 21.765585>,  <28.562494, 33.644722, 21.678219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.340553, 33.618088, 21.765585>,  <27.970652, 33.573696, 21.911196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.340553, 33.618088, 21.765585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365268, -0.009657, -0.930852,
		-0.106823, 0.993776, 0.031608,
		0.924753, 0.110982, -0.364026,
		28.617979, 33.651382, 21.656378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880138, 33.946587, 21.272516>,  <27.970652, 33.573696, 21.911196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880138, 33.946587, 21.272516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263397, 33.844101, 21.221434>,  <28.493353, 33.782608, 21.190784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263397, 33.844101, 21.221434>,  <27.880138, 33.946587, 21.272516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263397, 33.844101, 21.221434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075616, 0.203748, -0.976099,
		0.276115, 0.944902, 0.175846,
		0.958146, -0.256219, -0.127707,
		28.550840, 33.767235, 21.183121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.278578, 34.536404, 21.070877>,  <27.880138, 33.946587, 21.272516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.278578, 34.536404, 21.070877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469334, 34.216011, 20.926096>,  <28.583788, 34.023777, 20.839228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469334, 34.216011, 20.926096>,  <28.278578, 34.536404, 21.070877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469334, 34.216011, 20.926096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101836, 0.459372, -0.882387,
		0.873043, 0.383943, 0.300639,
		0.476892, -0.800978, -0.361952,
		28.612402, 33.975719, 20.817511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782042, 34.888115, 20.613531>,  <28.278578, 34.536404, 21.070877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782042, 34.888115, 20.613531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780590, 34.500244, 20.515783>,  <28.779718, 34.267521, 20.457134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.780590, 34.500244, 20.515783>,  <28.782042, 34.888115, 20.613531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.780590, 34.500244, 20.515783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277426, 0.233803, -0.931864,
		0.960740, -0.071176, 0.268165,
		-0.003629, -0.969675, -0.244370,
		28.779501, 34.209343, 20.442472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.404371, 34.688053, 20.342550>,  <28.782042, 34.888115, 20.613531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.404371, 34.688053, 20.342550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135674, 34.429741, 20.197378>,  <28.974455, 34.274754, 20.110275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.135674, 34.429741, 20.197378>,  <29.404371, 34.688053, 20.342550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135674, 34.429741, 20.197378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251210, 0.262315, -0.931710,
		0.696887, -0.717045, -0.013982,
		-0.671746, -0.645784, -0.362932,
		28.934149, 34.236004, 20.088499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649141, 34.618839, 19.771742>,  <29.404371, 34.688053, 20.342550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649141, 34.618839, 19.771742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290482, 34.465717, 19.682760>,  <29.075287, 34.373844, 19.629372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.290482, 34.465717, 19.682760>,  <29.649141, 34.618839, 19.771742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290482, 34.465717, 19.682760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165395, 0.176461, -0.970312,
		0.410691, -0.906821, -0.094910,
		-0.896647, -0.382801, -0.222455,
		29.021486, 34.350876, 19.616024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756262, 34.103806, 19.240355>,  <29.649141, 34.618839, 19.771742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756262, 34.103806, 19.240355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364136, 34.180458, 19.221344>,  <29.128860, 34.226448, 19.209938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364136, 34.180458, 19.221344>,  <29.756262, 34.103806, 19.240355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364136, 34.180458, 19.221344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049748, 0.006802, -0.998739,
		-0.191064, -0.981444, -0.016201,
		-0.980316, 0.191629, -0.047526,
		29.070042, 34.237946, 19.207087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.481615, 33.659561, 18.704815>,  <29.756262, 34.103806, 19.240355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.481615, 33.659561, 18.704815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182013, 33.924244, 18.718296>,  <29.002251, 34.083054, 18.726385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.182013, 33.924244, 18.718296>,  <29.481615, 33.659561, 18.704815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.182013, 33.924244, 18.718296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102812, -0.065822, -0.992521,
		-0.654536, -0.746871, 0.117333,
		-0.749007, 0.661704, 0.033704,
		28.957310, 34.122757, 18.728407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.024813, 33.313587, 18.363127>,  <29.481615, 33.659561, 18.704815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.024813, 33.313587, 18.363127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922369, 33.698196, 18.323380>,  <28.860903, 33.928963, 18.299530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922369, 33.698196, 18.323380>,  <29.024813, 33.313587, 18.363127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922369, 33.698196, 18.323380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061588, -0.118820, -0.991004,
		-0.964684, -0.247687, 0.089649,
		-0.256111, 0.961526, -0.099369,
		28.845535, 33.986656, 18.293570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398834, 33.356159, 17.914381>,  <29.024813, 33.313587, 18.363127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398834, 33.356159, 17.914381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546879, 33.727692, 17.921175>,  <28.635706, 33.950611, 17.925251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546879, 33.727692, 17.921175>,  <28.398834, 33.356159, 17.914381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546879, 33.727692, 17.921175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178011, 0.088851, -0.980009,
		-0.911773, 0.359689, 0.198227,
		0.370111, 0.928833, 0.016983,
		28.657911, 34.006340, 17.926270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.876488, 33.957844, 17.699568>,  <28.398834, 33.356159, 17.914381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.876488, 33.957844, 17.699568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266752, 34.011719, 17.630352>,  <28.500912, 34.044044, 17.588821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266752, 34.011719, 17.630352>,  <27.876488, 33.957844, 17.699568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266752, 34.011719, 17.630352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173042, -0.011785, -0.984844,
		-0.134686, 0.990818, 0.011808,
		0.975662, 0.134688, -0.173041,
		28.559450, 34.052124, 17.578440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165911, 34.618504, 17.492487>,  <27.876488, 33.957844, 17.699568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165911, 34.618504, 17.492487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364120, 34.305641, 17.341389>,  <28.483047, 34.117924, 17.250731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.364120, 34.305641, 17.341389>,  <28.165911, 34.618504, 17.492487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.364120, 34.305641, 17.341389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530778, 0.071577, -0.844483,
		0.687552, 0.618962, -0.379681,
		0.495526, -0.782152, -0.377744,
		28.512779, 34.070995, 17.228065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.126343, 35.252319, 17.056938>,  <28.165911, 34.618504, 17.492487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.126343, 35.252319, 17.056938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275093, 35.612934, 16.968456>,  <28.364344, 35.829304, 16.915367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.275093, 35.612934, 16.968456>,  <28.126343, 35.252319, 17.056938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275093, 35.612934, 16.968456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747029, 0.149187, -0.647836,
		-0.551049, 0.406164, 0.728956,
		0.371878, 0.901540, -0.221207,
		28.386656, 35.883396, 16.902094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.554802, 35.647079, 16.964275>,  <28.126343, 35.252319, 17.056938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.554802, 35.647079, 16.964275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848988, 35.853298, 16.788410>,  <28.025499, 35.977028, 16.682890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.848988, 35.853298, 16.788410>,  <27.554802, 35.647079, 16.964275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.848988, 35.853298, 16.788410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514144, 0.002006, -0.857701,
		-0.441301, 0.856860, 0.266539,
		0.735465, 0.515544, -0.439665,
		28.069628, 36.007961, 16.656511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.210178, 36.188107, 16.560297>,  <27.554802, 35.647079, 16.964275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.210178, 36.188107, 16.560297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579851, 36.124142, 16.421549>,  <27.801655, 36.085762, 16.338301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.579851, 36.124142, 16.421549>,  <27.210178, 36.188107, 16.560297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.579851, 36.124142, 16.421549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335951, 0.091770, -0.937398,
		0.181736, 0.982856, 0.031088,
		0.924180, -0.159915, -0.346869,
		27.857105, 36.076168, 16.317488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577496, 36.745838, 16.234299>,  <27.210178, 36.188107, 16.560297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577496, 36.745838, 16.234299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661741, 36.398884, 16.053951>,  <27.712288, 36.190712, 15.945743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.661741, 36.398884, 16.053951>,  <27.577496, 36.745838, 16.234299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.661741, 36.398884, 16.053951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386024, 0.349938, -0.853539,
		0.898124, 0.353814, -0.261130,
		0.210615, -0.867386, -0.450868,
		27.724926, 36.138668, 15.918691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069693, 36.741409, 15.687851>,  <27.577496, 36.745838, 16.234299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069693, 36.741409, 15.687851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857273, 36.414700, 15.597642>,  <27.729820, 36.218674, 15.543516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.857273, 36.414700, 15.597642>,  <28.069693, 36.741409, 15.687851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.857273, 36.414700, 15.597642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181482, 0.369615, -0.911290,
		0.827677, -0.443013, -0.344515,
		-0.531051, -0.816777, -0.225523,
		27.697958, 36.169666, 15.529985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563894, 36.161316, 15.638787>,  <28.069693, 36.741409, 15.687851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563894, 36.161316, 15.638787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301634, 36.284744, 15.914441>,  <28.144278, 36.358803, 16.079834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.301634, 36.284744, 15.914441>,  <28.563894, 36.161316, 15.638787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.301634, 36.284744, 15.914441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710378, -0.057235, 0.701490,
		0.255902, 0.949478, -0.181676,
		-0.655651, 0.308571, 0.689134,
		28.104939, 36.377316, 16.121181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790304, 36.817936, 15.975474>,  <28.563894, 36.161316, 15.638787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790304, 36.817936, 15.975474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573200, 36.577724, 16.210346>,  <28.442938, 36.433598, 16.351269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.573200, 36.577724, 16.210346>,  <28.790304, 36.817936, 15.975474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.573200, 36.577724, 16.210346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739354, -0.009953, 0.673244,
		-0.398456, 0.799544, 0.449403,
		-0.542761, -0.600525, 0.587180,
		28.410372, 36.397568, 16.386499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.822321, 37.118561, 16.638618>,  <28.790304, 36.817936, 15.975474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.822321, 37.118561, 16.638618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712543, 36.739456, 16.703644>,  <28.646677, 36.511993, 16.742659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.712543, 36.739456, 16.703644>,  <28.822321, 37.118561, 16.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.712543, 36.739456, 16.703644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497204, 0.004840, 0.867620,
		-0.823085, 0.318938, 0.469904,
		-0.274443, -0.947763, 0.162561,
		28.630211, 36.455128, 16.752413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.384186, 37.168495, 17.204134>,  <28.822321, 37.118561, 16.638618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.384186, 37.168495, 17.204134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483433, 36.781231, 17.190901>,  <28.542982, 36.548870, 17.182961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.483433, 36.781231, 17.190901>,  <28.384186, 37.168495, 17.204134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483433, 36.781231, 17.190901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241482, 0.028740, 0.969980,
		-0.938149, -0.248659, 0.240925,
		0.248119, -0.968165, -0.033084,
		28.557869, 36.490780, 17.180975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164471, 36.843445, 17.849577>,  <28.384186, 37.168495, 17.204134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164471, 36.843445, 17.849577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449928, 36.624401, 17.674835>,  <28.621202, 36.492977, 17.569990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.449928, 36.624401, 17.674835>,  <28.164471, 36.843445, 17.849577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.449928, 36.624401, 17.674835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517194, -0.008725, 0.855824,
		-0.472465, -0.836692, 0.276991,
		0.713644, -0.547605, -0.436854,
		28.664022, 36.460121, 17.543779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289654, 36.278839, 18.298943>,  <28.164471, 36.843445, 17.849577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289654, 36.278839, 18.298943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614798, 36.273655, 18.066017>,  <28.809883, 36.270546, 17.926262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.614798, 36.273655, 18.066017>,  <28.289654, 36.278839, 18.298943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.614798, 36.273655, 18.066017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580550, 0.098894, 0.808196,
		0.047110, -0.995013, 0.087913,
		0.812860, -0.012964, -0.582314,
		28.858656, 36.269768, 17.891323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738201, 35.782055, 18.614437>,  <28.289654, 36.278839, 18.298943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738201, 35.782055, 18.614437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944983, 36.034737, 18.383368>,  <29.069052, 36.186348, 18.244726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.944983, 36.034737, 18.383368>,  <28.738201, 35.782055, 18.614437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.944983, 36.034737, 18.383368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584633, 0.232383, 0.777304,
		0.625270, -0.739557, -0.249186,
		0.516954, 0.631707, -0.577672,
		29.100069, 36.224247, 18.210066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347795, 35.629852, 18.814468>,  <28.738201, 35.782055, 18.614437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347795, 35.629852, 18.814468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377069, 35.995510, 18.654978>,  <29.394634, 36.214905, 18.559282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377069, 35.995510, 18.654978>,  <29.347795, 35.629852, 18.814468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377069, 35.995510, 18.654978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611852, 0.274567, 0.741789,
		0.787580, -0.298248, -0.539227,
		0.073183, 0.914145, -0.398727,
		29.399025, 36.269753, 18.535360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.100803, 35.754066, 18.877073>,  <29.347795, 35.629852, 18.814468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.100803, 35.754066, 18.877073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887152, 36.090466, 18.842600>,  <29.758961, 36.292305, 18.821917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.887152, 36.090466, 18.842600>,  <30.100803, 35.754066, 18.877073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.887152, 36.090466, 18.842600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558329, 0.427465, 0.711015,
		0.634803, 0.331655, -0.697875,
		-0.534129, 0.840999, -0.086184,
		29.726913, 36.342766, 18.816744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588831, 36.228489, 18.880245>,  <30.100803, 35.754066, 18.877073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588831, 36.228489, 18.880245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276081, 36.457771, 18.978312>,  <30.088430, 36.595341, 19.037151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.276081, 36.457771, 18.978312>,  <30.588831, 36.228489, 18.880245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276081, 36.457771, 18.978312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509040, 0.359933, 0.781874,
		0.359933, 0.736126, -0.573207,
		-0.781874, 0.573207, 0.245166,
		30.041519, 36.629734, 19.051861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838261, 36.990810, 18.861717>,  <30.588831, 36.228489, 18.880245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838261, 36.990810, 18.861717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532446, 36.971882, 19.118855>,  <30.348957, 36.960526, 19.273136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.532446, 36.971882, 19.118855>,  <30.838261, 36.990810, 18.861717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532446, 36.971882, 19.118855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595099, 0.331386, 0.732148,
		-0.247674, 0.942308, -0.225196,
		-0.764535, -0.047320, 0.642843,
		30.303085, 36.957687, 19.311707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910746, 37.518749, 19.305109>,  <30.838261, 36.990810, 18.861717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910746, 37.518749, 19.305109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628761, 37.333336, 19.519833>,  <30.459570, 37.222088, 19.648666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628761, 37.333336, 19.519833>,  <30.910746, 37.518749, 19.305109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628761, 37.333336, 19.519833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393583, 0.373960, 0.839789,
		-0.590017, 0.803299, -0.081188,
		-0.704963, -0.463536, 0.536808,
		30.417273, 37.194275, 19.680876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.668694, 38.041664, 19.757343>,  <30.910746, 37.518749, 19.305109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.668694, 38.041664, 19.757343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575926, 37.699631, 19.942835>,  <30.520266, 37.494411, 20.054131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575926, 37.699631, 19.942835>,  <30.668694, 38.041664, 19.757343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575926, 37.699631, 19.942835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326137, 0.380781, 0.865240,
		-0.916432, 0.351905, 0.190564,
		-0.231919, -0.855084, 0.463729,
		30.506350, 37.443104, 20.081953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.289497, 38.208187, 20.377357>,  <30.668694, 38.041664, 19.757343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.289497, 38.208187, 20.377357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440651, 37.844540, 20.447441>,  <30.531343, 37.626350, 20.489491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440651, 37.844540, 20.447441>,  <30.289497, 38.208187, 20.377357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440651, 37.844540, 20.447441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265259, 0.287618, 0.920279,
		-0.887040, -0.301285, 0.349840,
		0.377886, -0.909123, 0.175210,
		30.554016, 37.571804, 20.500004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065973, 38.067783, 21.076841>,  <30.289497, 38.208187, 20.377357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065973, 38.067783, 21.076841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365513, 37.807907, 21.024492>,  <30.545237, 37.651981, 20.993082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.365513, 37.807907, 21.024492>,  <30.065973, 38.067783, 21.076841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.365513, 37.807907, 21.024492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261120, 0.107738, 0.959275,
		-0.609132, -0.752525, 0.250326,
		0.748848, -0.649691, -0.130873,
		30.590168, 37.612999, 20.985229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012974, 37.690029, 21.669037>,  <30.065973, 38.067783, 21.076841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012974, 37.690029, 21.669037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376778, 37.625168, 21.515936>,  <30.595060, 37.586250, 21.424074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.376778, 37.625168, 21.515936>,  <30.012974, 37.690029, 21.669037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.376778, 37.625168, 21.515936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402344, 0.112003, 0.908611,
		-0.104464, -0.980389, 0.167108,
		0.909509, -0.162152, -0.382754,
		30.649630, 37.576523, 21.401110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284874, 37.239006, 22.077898>,  <30.012974, 37.690029, 21.669037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284874, 37.239006, 22.077898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604115, 37.412251, 21.910351>,  <30.795658, 37.516197, 21.809822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.604115, 37.412251, 21.910351>,  <30.284874, 37.239006, 22.077898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.604115, 37.412251, 21.910351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410114, 0.118803, 0.904264,
		0.441408, -0.893478, -0.082808,
		0.798101, 0.433110, -0.418868,
		30.843546, 37.542183, 21.784691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794157, 36.915398, 22.385880>,  <30.284874, 37.239006, 22.077898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794157, 36.915398, 22.385880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944958, 37.251385, 22.229767>,  <31.035439, 37.452976, 22.136099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944958, 37.251385, 22.229767>,  <30.794157, 36.915398, 22.385880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944958, 37.251385, 22.229767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493200, 0.174609, 0.852212,
		0.783979, -0.513775, -0.348444,
		0.377004, 0.839969, -0.390284,
		31.058060, 37.503376, 22.112682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445776, 36.830612, 22.615665>,  <30.794157, 36.915398, 22.385880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445776, 36.830612, 22.615665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386297, 37.217148, 22.531693>,  <31.350609, 37.449070, 22.481308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386297, 37.217148, 22.531693>,  <31.445776, 36.830612, 22.615665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386297, 37.217148, 22.531693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281366, 0.244863, 0.927834,
		0.948009, 0.078900, -0.308307,
		-0.148699, 0.966342, -0.209932,
		31.341688, 37.507050, 22.468712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.030937, 37.188732, 22.869522>,  <31.445776, 36.830612, 22.615665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.030937, 37.188732, 22.869522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759392, 37.479538, 22.828344>,  <31.596464, 37.654022, 22.803638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759392, 37.479538, 22.828344>,  <32.030937, 37.188732, 22.869522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759392, 37.479538, 22.828344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227295, 0.341383, 0.912028,
		0.698199, 0.595743, -0.396999,
		-0.678863, 0.727013, -0.102944,
		31.555733, 37.697643, 22.797461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424431, 37.770645, 22.936668>,  <32.030937, 37.188732, 22.869522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424431, 37.770645, 22.936668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038544, 37.839317, 23.016510>,  <31.807011, 37.880520, 23.064415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038544, 37.839317, 23.016510>,  <32.424431, 37.770645, 22.936668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038544, 37.839317, 23.016510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254443, 0.413199, 0.874372,
		0.067635, 0.894311, -0.442303,
		-0.964720, 0.171680, 0.199604,
		31.749128, 37.890820, 23.076391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.362396, 38.457752, 23.198118>,  <32.424431, 37.770645, 22.936668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.362396, 38.457752, 23.198118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023346, 38.294071, 23.333225>,  <31.819916, 38.195862, 23.414289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023346, 38.294071, 23.333225>,  <32.362396, 38.457752, 23.198118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023346, 38.294071, 23.333225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165716, 0.400577, 0.901153,
		-0.504054, 0.819813, -0.271728,
		-0.847625, -0.409199, 0.337769,
		31.769058, 38.171310, 23.434555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.104164, 38.956848, 23.697187>,  <32.362396, 38.457752, 23.198118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.104164, 38.956848, 23.697187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871716, 38.639820, 23.771072>,  <31.732244, 38.449604, 23.815403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871716, 38.639820, 23.771072>,  <32.104164, 38.956848, 23.697187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871716, 38.639820, 23.771072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094152, 0.159973, 0.982621,
		-0.808349, 0.588418, -0.018342,
		-0.581126, -0.792574, 0.184714,
		31.697378, 38.402046, 23.826487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.429678, 39.101055, 24.041252>,  <32.104164, 38.956848, 23.697187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.429678, 39.101055, 24.041252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502054, 38.725544, 24.158527>,  <31.545481, 38.500237, 24.228891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502054, 38.725544, 24.158527>,  <31.429678, 39.101055, 24.041252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502054, 38.725544, 24.158527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136940, 0.271156, 0.952744,
		-0.973914, -0.212539, -0.079493,
		0.180941, -0.938777, 0.293187,
		31.556337, 38.443913, 24.246483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.942810, 39.031487, 24.581785>,  <31.429678, 39.101055, 24.041252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.942810, 39.031487, 24.581785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231264, 38.756336, 24.614737>,  <31.404337, 38.591244, 24.634508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231264, 38.756336, 24.614737>,  <30.942810, 39.031487, 24.581785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231264, 38.756336, 24.614737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011550, 0.130829, 0.991338,
		-0.692698, -0.713937, 0.102290,
		0.721135, -0.687879, 0.082379,
		31.447605, 38.549973, 24.639450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804443, 38.880047, 25.328131>,  <30.942810, 39.031487, 24.581785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804443, 38.880047, 25.328131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126959, 38.650532, 25.270618>,  <31.320467, 38.512825, 25.236111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.126959, 38.650532, 25.270618>,  <30.804443, 38.880047, 25.328131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126959, 38.650532, 25.270618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014508, -0.223811, 0.974525,
		-0.591346, -0.787833, -0.172131,
		0.806287, -0.573784, -0.143780,
		31.368845, 38.478397, 25.227484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719162, 38.207489, 25.696314>,  <30.804443, 38.880047, 25.328131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719162, 38.207489, 25.696314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114498, 38.259750, 25.665041>,  <31.351700, 38.291107, 25.646278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.114498, 38.259750, 25.665041>,  <30.719162, 38.207489, 25.696314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114498, 38.259750, 25.665041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105529, -0.217683, 0.970298,
		0.109753, -0.967235, -0.228932,
		0.988341, 0.130652, -0.078180,
		31.411001, 38.298946, 25.641586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.997875, 37.714794, 26.074562>,  <30.719162, 38.207489, 25.696314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.997875, 37.714794, 26.074562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299068, 37.973289, 26.024942>,  <31.479784, 38.128387, 25.995171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.299068, 37.973289, 26.024942>,  <30.997875, 37.714794, 26.074562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299068, 37.973289, 26.024942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179268, -0.020075, 0.983595,
		0.633149, -0.762870, -0.130967,
		0.752985, 0.646240, -0.124047,
		31.524963, 38.167160, 25.987728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576559, 37.490082, 26.474585>,  <30.997875, 37.714794, 26.074562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576559, 37.490082, 26.474585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693277, 37.867188, 26.410013>,  <31.763308, 38.093449, 26.371271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693277, 37.867188, 26.410013>,  <31.576559, 37.490082, 26.474585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693277, 37.867188, 26.410013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336431, 0.056824, 0.939992,
		0.895360, -0.328594, -0.300593,
		0.291795, 0.942760, -0.161427,
		31.780815, 38.150017, 26.361586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359894, 37.574108, 26.568417>,  <31.576559, 37.490082, 26.474585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359894, 37.574108, 26.568417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181782, 37.926670, 26.631474>,  <32.074913, 38.138206, 26.669308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.181782, 37.926670, 26.631474>,  <32.359894, 37.574108, 26.568417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.181782, 37.926670, 26.631474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437884, 0.060791, 0.896974,
		0.781013, 0.468434, -0.413023,
		-0.445281, 0.881405, 0.157641,
		32.048199, 38.191090, 26.678766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.730824, 37.897476, 27.000383>,  <32.359894, 37.574108, 26.568417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.730824, 37.897476, 27.000383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441555, 38.158501, 27.090881>,  <32.267994, 38.315113, 27.145180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.441555, 38.158501, 27.090881>,  <32.730824, 37.897476, 27.000383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.441555, 38.158501, 27.090881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484660, 0.246091, 0.839371,
		0.492061, 0.716664, -0.494235,
		-0.723174, 0.652558, 0.226246,
		32.224602, 38.354267, 27.158754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086025, 38.487984, 27.159702>,  <32.730824, 37.897476, 27.000383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086025, 38.487984, 27.159702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729160, 38.526039, 27.336336>,  <32.515041, 38.548874, 27.442316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729160, 38.526039, 27.336336>,  <33.086025, 38.487984, 27.159702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729160, 38.526039, 27.336336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444404, 0.360091, 0.820268,
		-0.080969, 0.928053, -0.363541,
		-0.892160, 0.095143, 0.441587,
		32.461514, 38.554581, 27.468813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994408, 39.150440, 27.524799>,  <33.086025, 38.487984, 27.159702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994408, 39.150440, 27.524799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692482, 38.947739, 27.691389>,  <32.511326, 38.826118, 27.791344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692482, 38.947739, 27.691389>,  <32.994408, 39.150440, 27.524799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692482, 38.947739, 27.691389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300016, 0.297901, 0.906226,
		-0.583301, 0.808984, -0.072827,
		-0.754818, -0.506754, 0.416474,
		32.466038, 38.795712, 27.816332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705204, 39.523640, 27.964785>,  <32.994408, 39.150440, 27.524799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705204, 39.523640, 27.964785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540592, 39.195148, 28.122890>,  <32.441826, 38.998055, 28.217754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.540592, 39.195148, 28.122890>,  <32.705204, 39.523640, 27.964785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.540592, 39.195148, 28.122890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116429, 0.382769, 0.916478,
		-0.903929, 0.423178, -0.061907,
		-0.411529, -0.821224, 0.395266,
		32.417133, 38.948780, 28.241470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367657, 39.815426, 28.485342>,  <32.705204, 39.523640, 27.964785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367657, 39.815426, 28.485342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405319, 39.423477, 28.555748>,  <32.427917, 39.188309, 28.597992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.405319, 39.423477, 28.555748>,  <32.367657, 39.815426, 28.485342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405319, 39.423477, 28.555748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131015, 0.187459, 0.973496,
		-0.986899, -0.068603, 0.146029,
		0.094160, -0.979874, 0.176015,
		32.433567, 39.129517, 28.608553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029869, 39.601326, 29.090229>,  <32.367657, 39.815426, 28.485342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029869, 39.601326, 29.090229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306309, 39.314194, 29.056513>,  <32.472172, 39.141914, 29.036283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306309, 39.314194, 29.056513>,  <32.029869, 39.601326, 29.090229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306309, 39.314194, 29.056513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318193, 0.197464, 0.927233,
		-0.648952, -0.667628, 0.364875,
		0.691096, -0.717831, -0.084289,
		32.513638, 39.098843, 29.031225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071087, 39.280827, 29.767702>,  <32.029869, 39.601326, 29.090229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071087, 39.280827, 29.767702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398785, 39.134686, 29.590908>,  <32.595406, 39.047001, 29.484831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398785, 39.134686, 29.590908>,  <32.071087, 39.280827, 29.767702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398785, 39.134686, 29.590908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466481, -0.023671, 0.884214,
		-0.333510, -0.930569, 0.151037,
		0.819247, -0.365350, -0.441987,
		32.644558, 39.025082, 29.458311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305794, 38.628124, 30.113424>,  <32.071087, 39.280827, 29.767702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305794, 38.628124, 30.113424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597996, 38.839638, 29.940565>,  <32.773315, 38.966545, 29.836849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.597996, 38.839638, 29.940565>,  <32.305794, 38.628124, 30.113424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.597996, 38.839638, 29.940565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491325, 0.032549, 0.870368,
		0.474301, -0.848133, -0.236027,
		0.730506, 0.528782, -0.432148,
		32.817146, 38.998272, 29.810921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922798, 38.347691, 30.426929>,  <32.305794, 38.628124, 30.113424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922798, 38.347691, 30.426929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084042, 38.661442, 30.238354>,  <33.180786, 38.849693, 30.125208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084042, 38.661442, 30.238354>,  <32.922798, 38.347691, 30.426929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084042, 38.661442, 30.238354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743131, 0.020092, 0.668845,
		0.534100, -0.619957, -0.574797,
		0.403106, 0.784379, -0.471440,
		33.204975, 38.896755, 30.096922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.636795, 38.160000, 30.326097>,  <32.922798, 38.347691, 30.426929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.636795, 38.160000, 30.326097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610020, 38.558895, 30.313221>,  <33.593956, 38.798233, 30.305494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610020, 38.558895, 30.313221>,  <33.636795, 38.160000, 30.326097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610020, 38.558895, 30.313221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706793, 0.070165, 0.703932,
		0.704246, 0.024367, -0.709537,
		-0.066938, 0.997238, -0.032191,
		33.589939, 38.858067, 30.303564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343643, 38.403389, 30.252079>,  <33.636795, 38.160000, 30.326097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343643, 38.403389, 30.252079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140297, 38.712345, 30.404387>,  <34.018291, 38.897717, 30.495771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140297, 38.712345, 30.404387>,  <34.343643, 38.403389, 30.252079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140297, 38.712345, 30.404387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745621, 0.173581, 0.643365,
		0.430832, 0.610974, -0.664150,
		-0.508363, 0.772386, 0.380771,
		33.987789, 38.944061, 30.518618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646545, 39.067131, 30.175390>,  <34.343643, 38.403389, 30.252079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646545, 39.067131, 30.175390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419415, 39.083134, 30.504261>,  <34.283134, 39.092735, 30.701584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.419415, 39.083134, 30.504261>,  <34.646545, 39.067131, 30.175390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419415, 39.083134, 30.504261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780913, 0.342015, 0.522686,
		-0.260285, 0.938843, -0.225447,
		-0.567827, 0.040007, 0.822175,
		34.249065, 39.095135, 30.750914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814827, 39.714760, 30.301785>,  <34.646545, 39.067131, 30.175390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814827, 39.714760, 30.301785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127403, 39.925995, 30.168831>,  <35.314949, 40.052734, 30.089058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127403, 39.925995, 30.168831>,  <34.814827, 39.714760, 30.301785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127403, 39.925995, 30.168831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384419, -0.012151, -0.923079,
		-0.491505, 0.849103, 0.193511,
		0.781438, 0.528087, -0.332384,
		35.361835, 40.084419, 30.069117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607231, 40.328991, 29.880169>,  <34.814827, 39.714760, 30.301785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607231, 40.328991, 29.880169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973743, 40.236626, 29.749264>,  <35.193653, 40.181206, 29.670721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973743, 40.236626, 29.749264>,  <34.607231, 40.328991, 29.880169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973743, 40.236626, 29.749264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325607, 0.046369, -0.944368,
		0.233243, 0.971869, -0.032700,
		0.916285, -0.230915, -0.327262,
		35.248631, 40.167351, 29.651085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788853, 40.894585, 29.392683>,  <34.607231, 40.328991, 29.880169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788853, 40.894585, 29.392683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989948, 40.555809, 29.323469>,  <35.110607, 40.352543, 29.281940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989948, 40.555809, 29.323469>,  <34.788853, 40.894585, 29.392683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989948, 40.555809, 29.323469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071223, 0.158907, -0.984721,
		0.861500, 0.507381, 0.019566,
		0.502738, -0.846944, -0.173035,
		35.140770, 40.301727, 29.271559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.153164, 41.135052, 28.803593>,  <34.788853, 40.894585, 29.392683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.153164, 41.135052, 28.803593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211227, 40.739361, 28.811237>,  <35.246067, 40.501945, 28.815825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.211227, 40.739361, 28.811237>,  <35.153164, 41.135052, 28.803593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211227, 40.739361, 28.811237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118430, -0.001804, -0.992961,
		0.982294, 0.146402, 0.116892,
		0.145161, -0.989223, 0.019111,
		35.254776, 40.442593, 28.816971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.680271, 40.929592, 28.242899>,  <35.153164, 41.135052, 28.803593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.680271, 40.929592, 28.242899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451752, 40.607498, 28.306412>,  <35.314640, 40.414242, 28.344519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.451752, 40.607498, 28.306412>,  <35.680271, 40.929592, 28.242899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451752, 40.607498, 28.306412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089453, -0.131220, -0.987309,
		0.815855, -0.578249, 0.002934,
		-0.571295, -0.805239, 0.158782,
		35.280361, 40.365925, 28.354046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923973, 40.596252, 27.726152>,  <35.680271, 40.929592, 28.242899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.923973, 40.596252, 27.726152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601665, 40.392056, 27.846245>,  <35.408283, 40.269535, 27.918301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601665, 40.392056, 27.846245>,  <35.923973, 40.596252, 27.726152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601665, 40.392056, 27.846245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206501, -0.232950, -0.950311,
		0.555067, -0.827726, 0.082285,
		-0.805766, -0.510495, 0.300229,
		35.359936, 40.238907, 27.936314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918491, 39.942978, 27.400322>,  <35.923973, 40.596252, 27.726152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918491, 39.942978, 27.400322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539207, 40.037193, 27.485565>,  <35.311638, 40.093723, 27.536711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.539207, 40.037193, 27.485565>,  <35.918491, 39.942978, 27.400322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539207, 40.037193, 27.485565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267675, -0.231341, -0.935324,
		-0.171000, -0.943931, 0.282408,
		-0.948214, 0.235534, 0.213108,
		35.254742, 40.107853, 27.549498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476067, 39.325733, 27.223269>,  <35.918491, 39.942978, 27.400322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.476067, 39.325733, 27.223269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210423, 39.623726, 27.248426>,  <35.051037, 39.802521, 27.263521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.210423, 39.623726, 27.248426>,  <35.476067, 39.325733, 27.223269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.210423, 39.623726, 27.248426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388449, -0.271946, -0.880428,
		-0.638802, -0.609132, 0.469991,
		-0.664109, 0.744986, 0.062897,
		35.011189, 39.847221, 27.267296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802864, 39.018280, 27.187580>,  <35.476067, 39.325733, 27.223269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802864, 39.018280, 27.187580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762592, 39.396141, 27.062689>,  <34.738430, 39.622860, 26.987753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762592, 39.396141, 27.062689>,  <34.802864, 39.018280, 27.187580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762592, 39.396141, 27.062689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330646, -0.327758, -0.885013,
		-0.938369, 0.014133, 0.345346,
		-0.100682, 0.944656, -0.312230,
		34.732388, 39.679539, 26.969019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240196, 39.015087, 26.888998>,  <34.802864, 39.018280, 27.187580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240196, 39.015087, 26.888998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411068, 39.334076, 26.718565>,  <34.513592, 39.525471, 26.616304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411068, 39.334076, 26.718565>,  <34.240196, 39.015087, 26.888998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411068, 39.334076, 26.718565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275050, -0.334294, -0.901440,
		-0.861314, 0.502274, 0.076541,
		0.427182, 0.797476, -0.426083,
		34.539223, 39.573318, 26.590740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719437, 39.202991, 26.252247>,  <34.240196, 39.015087, 26.888998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719437, 39.202991, 26.252247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060211, 39.401913, 26.186646>,  <34.264675, 39.521267, 26.147284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.060211, 39.401913, 26.186646>,  <33.719437, 39.202991, 26.252247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060211, 39.401913, 26.186646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087027, -0.174379, -0.980825,
		-0.516367, 0.849871, -0.105280,
		0.851934, 0.497304, -0.164005,
		34.315792, 39.551105, 26.137444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.565765, 39.779171, 25.819508>,  <33.719437, 39.202991, 26.252247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.565765, 39.779171, 25.819508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943424, 39.657330, 25.769211>,  <34.170017, 39.584225, 25.739033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.943424, 39.657330, 25.769211>,  <33.565765, 39.779171, 25.819508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.943424, 39.657330, 25.769211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180607, -0.159145, -0.970595,
		0.275631, 0.939091, -0.205269,
		0.944144, -0.304599, -0.125741,
		34.226669, 39.565948, 25.731489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671074, 40.098804, 25.232124>,  <33.565765, 39.779171, 25.819508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671074, 40.098804, 25.232124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944801, 39.811611, 25.283051>,  <34.109035, 39.639294, 25.313606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944801, 39.811611, 25.283051>,  <33.671074, 40.098804, 25.232124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944801, 39.811611, 25.283051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115821, -0.065357, -0.991118,
		0.719928, 0.692984, 0.038433,
		0.684317, -0.717984, 0.127314,
		34.150097, 39.596214, 25.321245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304470, 40.307125, 24.863422>,  <33.671074, 40.098804, 25.232124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304470, 40.307125, 24.863422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331264, 39.910397, 24.906889>,  <34.347343, 39.672359, 24.932968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331264, 39.910397, 24.906889>,  <34.304470, 40.307125, 24.863422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331264, 39.910397, 24.906889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368069, -0.076664, -0.926633,
		0.927382, 0.102071, 0.359922,
		0.066989, -0.991819, 0.108666,
		34.351360, 39.612850, 24.939489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614262, 40.095024, 24.270891>,  <34.304470, 40.307125, 24.863422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614262, 40.095024, 24.270891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500584, 39.732796, 24.396866>,  <34.432377, 39.515461, 24.472450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.500584, 39.732796, 24.396866>,  <34.614262, 40.095024, 24.270891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500584, 39.732796, 24.396866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108935, -0.356851, -0.927788,
		0.952559, -0.229361, 0.200062,
		-0.284190, -0.905567, 0.314936,
		34.415325, 39.461124, 24.491346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182831, 39.472969, 24.123381>,  <34.614262, 40.095024, 24.270891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182831, 39.472969, 24.123381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812450, 39.321911, 24.124136>,  <34.590221, 39.231277, 24.124588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812450, 39.321911, 24.124136>,  <35.182831, 39.472969, 24.123381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812450, 39.321911, 24.124136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104865, -0.261911, -0.959378,
		0.362800, -0.888136, 0.282118,
		-0.925948, -0.377647, 0.001887,
		34.534664, 39.208618, 24.124702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168625, 39.245358, 23.499332>,  <35.182831, 39.472969, 24.123381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168625, 39.245358, 23.499332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797955, 39.139286, 23.605875>,  <34.575550, 39.075645, 23.669802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797955, 39.139286, 23.605875>,  <35.168625, 39.245358, 23.499332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797955, 39.139286, 23.605875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185592, -0.293410, -0.937799,
		0.326834, -0.918473, 0.222682,
		-0.926680, -0.265176, 0.266358,
		34.519951, 39.059734, 23.685781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065586, 38.604816, 23.218451>,  <35.168625, 39.245358, 23.499332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065586, 38.604816, 23.218451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688347, 38.730335, 23.262463>,  <34.462006, 38.805645, 23.288870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.688347, 38.730335, 23.262463>,  <35.065586, 38.604816, 23.218451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.688347, 38.730335, 23.262463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187094, -0.227186, -0.955710,
		-0.274907, -0.921908, 0.272968,
		-0.943092, 0.313802, 0.110028,
		34.405418, 38.824474, 23.295471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.603664, 38.024410, 23.198980>,  <35.065586, 38.604816, 23.218451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.603664, 38.024410, 23.198980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401596, 38.351208, 23.087753>,  <34.280357, 38.547287, 23.021017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.401596, 38.351208, 23.087753>,  <34.603664, 38.024410, 23.198980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401596, 38.351208, 23.087753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184793, -0.417129, -0.889862,
		-0.843005, -0.398145, 0.361695,
		-0.505167, 0.816997, -0.278068,
		34.250046, 38.596306, 23.004333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920128, 37.833416, 22.953932>,  <34.603664, 38.024410, 23.198980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920128, 37.833416, 22.953932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986794, 38.196865, 22.800764>,  <34.026794, 38.414936, 22.708864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986794, 38.196865, 22.800764>,  <33.920128, 37.833416, 22.953932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986794, 38.196865, 22.800764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308794, -0.320716, -0.895426,
		-0.936412, 0.267482, 0.227124,
		0.166668, 0.908623, -0.382919,
		34.036793, 38.469452, 22.685888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.270741, 38.200218, 22.664354>,  <33.920128, 37.833416, 22.953932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.270741, 38.200218, 22.664354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638363, 38.236675, 22.510977>,  <33.858936, 38.258549, 22.418951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638363, 38.236675, 22.510977>,  <33.270741, 38.200218, 22.664354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638363, 38.236675, 22.510977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299527, -0.470816, -0.829829,
		-0.256164, 0.877511, -0.405406,
		0.919056, 0.091142, -0.383444,
		33.914078, 38.264019, 22.395943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294857, 38.620899, 21.994530>,  <33.270741, 38.200218, 22.664354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294857, 38.620899, 21.994530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606228, 38.369858, 21.999613>,  <33.793049, 38.219231, 22.002663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.606228, 38.369858, 21.999613>,  <33.294857, 38.620899, 21.994530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.606228, 38.369858, 21.999613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419687, -0.535384, -0.732958,
		0.466811, 0.565222, -0.680155,
		0.778428, -0.627605, 0.012707,
		33.839756, 38.181576, 22.003426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455101, 38.482037, 21.291845>,  <33.294857, 38.620899, 21.994530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455101, 38.482037, 21.291845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657791, 38.173809, 21.446478>,  <33.779408, 37.988873, 21.539257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657791, 38.173809, 21.446478>,  <33.455101, 38.482037, 21.291845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657791, 38.173809, 21.446478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358694, -0.596209, -0.718243,
		0.783942, 0.225289, -0.578516,
		0.506729, -0.770571, 0.386583,
		33.809811, 37.942638, 21.562452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938347, 38.122894, 20.754379>,  <33.455101, 38.482037, 21.291845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938347, 38.122894, 20.754379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829380, 37.857971, 21.033562>,  <33.764000, 37.699017, 21.201071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829380, 37.857971, 21.033562>,  <33.938347, 38.122894, 20.754379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829380, 37.857971, 21.033562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334707, -0.614855, -0.714090,
		0.902086, -0.428143, -0.054179,
		-0.272420, -0.662305, 0.697954,
		33.747654, 37.659279, 21.242949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131138, 37.355976, 20.491348>,  <33.938347, 38.122894, 20.754379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131138, 37.355976, 20.491348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873505, 37.332527, 20.796431>,  <33.718925, 37.318459, 20.979481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873505, 37.332527, 20.796431>,  <34.131138, 37.355976, 20.491348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873505, 37.332527, 20.796431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552161, -0.654420, -0.516578,
		0.529414, -0.753855, 0.389131,
		-0.644081, -0.058620, 0.762708,
		33.680279, 37.314941, 21.025244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015003, 36.651257, 20.439631>,  <34.131138, 37.355976, 20.491348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015003, 36.651257, 20.439631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715530, 36.790085, 20.665556>,  <33.535847, 36.873383, 20.801111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.715530, 36.790085, 20.665556>,  <34.015003, 36.651257, 20.439631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715530, 36.790085, 20.665556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624200, -0.656011, -0.424293,
		0.223266, -0.670219, 0.707785,
		-0.748683, 0.347069, 0.564816,
		33.490925, 36.894207, 20.835001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833363, 36.097633, 20.841501>,  <34.015003, 36.651257, 20.439631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833363, 36.097633, 20.841501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538498, 36.361370, 20.782372>,  <33.361580, 36.519611, 20.746893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.538498, 36.361370, 20.782372>,  <33.833363, 36.097633, 20.841501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.538498, 36.361370, 20.782372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525000, -0.696599, -0.489004,
		-0.425397, -0.282869, 0.859664,
		-0.737165, 0.659345, -0.147825,
		33.317348, 36.559174, 20.738024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238869, 35.684078, 21.014799>,  <33.833363, 36.097633, 20.841501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238869, 35.684078, 21.014799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124111, 36.002293, 20.801329>,  <33.055256, 36.193222, 20.673246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124111, 36.002293, 20.801329>,  <33.238869, 35.684078, 21.014799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124111, 36.002293, 20.801329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600170, -0.583472, -0.547134,
		-0.746651, 0.163326, 0.644854,
		-0.286893, 0.795540, -0.533674,
		33.038044, 36.240955, 20.641226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539761, 35.571201, 20.840857>,  <33.238869, 35.684078, 21.014799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539761, 35.571201, 20.840857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628380, 35.873672, 20.594570>,  <32.681549, 36.055157, 20.446798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.628380, 35.873672, 20.594570>,  <32.539761, 35.571201, 20.840857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628380, 35.873672, 20.594570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476677, -0.466849, -0.744870,
		-0.850703, 0.458521, 0.257026,
		0.221546, 0.756182, -0.615716,
		32.694843, 36.100529, 20.409855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835234, 35.819054, 20.433157>,  <32.539761, 35.571201, 20.840857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835234, 35.819054, 20.433157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170273, 35.889366, 20.226263>,  <32.371296, 35.931553, 20.102127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.170273, 35.889366, 20.226263>,  <31.835234, 35.819054, 20.433157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170273, 35.889366, 20.226263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417795, -0.403887, -0.813832,
		-0.351960, 0.897762, -0.264855,
		0.837599, 0.175781, -0.517233,
		32.421551, 35.942101, 20.071093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665295, 36.186760, 19.726282>,  <31.835234, 35.819054, 20.433157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665295, 36.186760, 19.726282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020496, 36.007660, 19.684397>,  <32.233620, 35.900200, 19.659266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.020496, 36.007660, 19.684397>,  <31.665295, 36.186760, 19.726282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.020496, 36.007660, 19.684397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313372, -0.422622, -0.850405,
		0.336515, 0.787979, -0.515604,
		0.888006, -0.447750, -0.104712,
		32.286900, 35.873337, 19.652983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713137, 36.255310, 18.965275>,  <31.665295, 36.186760, 19.726282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713137, 36.255310, 18.965275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987072, 35.990494, 19.087061>,  <32.151432, 35.831604, 19.160131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987072, 35.990494, 19.087061>,  <31.713137, 36.255310, 18.965275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987072, 35.990494, 19.087061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151315, -0.537914, -0.829308,
		0.712812, 0.521872, -0.468560,
		0.684837, -0.662041, 0.304464,
		32.192524, 35.791882, 19.178400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034718, 35.982468, 18.373611>,  <31.713137, 36.255310, 18.965275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034718, 35.982468, 18.373611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175888, 35.712212, 18.632519>,  <32.260590, 35.550060, 18.787863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.175888, 35.712212, 18.632519>,  <32.034718, 35.982468, 18.373611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.175888, 35.712212, 18.632519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015470, -0.695902, -0.717970,
		0.935522, 0.243380, -0.256057,
		0.352930, -0.675638, 0.647266,
		32.281769, 35.509521, 18.826698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696415, 35.606720, 18.079552>,  <32.034718, 35.982468, 18.373611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696415, 35.606720, 18.079552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492973, 35.386288, 18.344166>,  <32.370907, 35.254028, 18.502934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492973, 35.386288, 18.344166>,  <32.696415, 35.606720, 18.079552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492973, 35.386288, 18.344166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020491, -0.760369, -0.649168,
		0.860757, -0.343725, 0.375434,
		-0.508603, -0.551083, 0.661536,
		32.340393, 35.220963, 18.542627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.875248, 34.958935, 17.903133>,  <32.696415, 35.606720, 18.079552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.875248, 34.958935, 17.903133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567966, 34.883671, 18.147905>,  <32.383598, 34.838512, 18.294769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.567966, 34.883671, 18.147905>,  <32.875248, 34.958935, 17.903133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.567966, 34.883671, 18.147905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299088, -0.739638, -0.602895,
		0.566050, -0.646167, 0.511915,
		-0.768202, -0.188161, 0.611932,
		32.337505, 34.827221, 18.331486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845425, 34.216995, 18.022041>,  <32.875248, 34.958935, 17.903133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845425, 34.216995, 18.022041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484230, 34.340073, 18.142006>,  <32.267513, 34.413918, 18.213985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484230, 34.340073, 18.142006>,  <32.845425, 34.216995, 18.022041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484230, 34.340073, 18.142006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412342, -0.816800, -0.403499,
		0.120815, -0.488019, 0.864431,
		-0.902983, 0.307693, 0.299913,
		32.213337, 34.432381, 18.231979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.506226, 33.599934, 18.332588>,  <32.845425, 34.216995, 18.022041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.506226, 33.599934, 18.332588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231926, 33.858101, 18.198021>,  <32.067345, 34.013000, 18.117281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.231926, 33.858101, 18.198021>,  <32.506226, 33.599934, 18.332588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231926, 33.858101, 18.198021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532233, -0.759958, -0.373083,
		-0.496459, -0.076790, 0.864657,
		-0.685752, 0.645420, -0.336418,
		32.026199, 34.051727, 18.097095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843706, 33.275505, 18.445259>,  <32.506226, 33.599934, 18.332588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843706, 33.275505, 18.445259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781008, 33.557182, 18.168264>,  <31.743389, 33.726189, 18.002068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781008, 33.557182, 18.168264>,  <31.843706, 33.275505, 18.445259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781008, 33.557182, 18.168264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422696, -0.681524, -0.597372,
		-0.892614, 0.199075, 0.404488,
		-0.156747, 0.704197, -0.692486,
		31.733984, 33.768440, 17.960518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.421265, 32.747227, 18.466978>,  <31.843706, 33.275505, 18.445259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.421265, 32.747227, 18.466978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715336, 32.484188, 18.401144>,  <32.891777, 32.326366, 18.361643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.715336, 32.484188, 18.401144>,  <32.421265, 32.747227, 18.466978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.715336, 32.484188, 18.401144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455860, 0.299899, 0.838005,
		-0.501709, -0.691107, 0.520249,
		0.735173, -0.657596, -0.164586,
		32.935886, 32.286911, 18.351768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471962, 32.349796, 19.106089>,  <32.421265, 32.747227, 18.466978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471962, 32.349796, 19.106089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816978, 32.337406, 18.904076>,  <33.023991, 32.329971, 18.782867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816978, 32.337406, 18.904076>,  <32.471962, 32.349796, 19.106089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816978, 32.337406, 18.904076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444493, 0.523269, 0.727059,
		0.241744, -0.851604, 0.465113,
		0.862546, -0.030977, -0.505030,
		33.075741, 32.328114, 18.752567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945629, 32.340271, 19.622110>,  <32.471962, 32.349796, 19.106089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945629, 32.340271, 19.622110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182625, 32.442112, 19.316395>,  <33.324821, 32.503216, 19.132965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182625, 32.442112, 19.316395>,  <32.945629, 32.340271, 19.622110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182625, 32.442112, 19.316395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529827, 0.591520, 0.607772,
		0.606835, -0.765037, 0.215569,
		0.592481, 0.254604, -0.764292,
		33.360371, 32.518490, 19.087107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556782, 32.329002, 19.911247>,  <32.945629, 32.340271, 19.622110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556782, 32.329002, 19.911247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616161, 32.555195, 19.586731>,  <33.651791, 32.690910, 19.392021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.616161, 32.555195, 19.586731>,  <33.556782, 32.329002, 19.911247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.616161, 32.555195, 19.586731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601551, 0.599512, 0.527942,
		0.784920, -0.566404, -0.251171,
		0.148448, 0.565485, -0.811289,
		33.660694, 32.724842, 19.343344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253544, 32.527279, 19.962872>,  <33.556782, 32.329002, 19.911247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253544, 32.527279, 19.962872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110722, 32.785431, 19.692762>,  <34.025028, 32.940323, 19.530697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.110722, 32.785431, 19.692762>,  <34.253544, 32.527279, 19.962872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.110722, 32.785431, 19.692762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654508, 0.688638, 0.312083,
		0.666433, -0.330543, -0.668288,
		-0.357052, 0.645383, -0.675274,
		34.003605, 32.979046, 19.490181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.817966, 32.792274, 19.577003>,  <34.253544, 32.527279, 19.962872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.817966, 32.792274, 19.577003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533195, 33.072971, 19.566252>,  <34.362331, 33.241390, 19.559801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533195, 33.072971, 19.566252>,  <34.817966, 32.792274, 19.577003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533195, 33.072971, 19.566252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636722, 0.661164, 0.396796,
		0.296221, 0.265374, -0.917513,
		-0.711926, 0.701740, -0.026881,
		34.319618, 33.283493, 19.558187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094955, 33.437595, 19.587093>,  <34.817966, 32.792274, 19.577003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094955, 33.437595, 19.587093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738823, 33.557827, 19.723892>,  <34.525143, 33.629967, 19.805971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738823, 33.557827, 19.723892>,  <35.094955, 33.437595, 19.587093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738823, 33.557827, 19.723892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448204, 0.710808, 0.542093,
		-0.080150, 0.635926, -0.767577,
		-0.890331, 0.300582, 0.341996,
		34.471725, 33.648003, 19.826490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099277, 34.247620, 19.540426>,  <35.094955, 33.437595, 19.587093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099277, 34.247620, 19.540426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812256, 34.145897, 19.799793>,  <34.640041, 34.084866, 19.955414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812256, 34.145897, 19.799793>,  <35.099277, 34.247620, 19.540426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812256, 34.145897, 19.799793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297226, 0.730139, 0.615268,
		-0.629900, 0.634214, -0.448328,
		-0.717553, -0.254302, 0.648419,
		34.596989, 34.069607, 19.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008621, 34.863682, 19.901798>,  <35.099277, 34.247620, 19.540426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008621, 34.863682, 19.901798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826237, 34.621304, 20.162546>,  <34.716808, 34.475876, 20.318995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826237, 34.621304, 20.162546>,  <35.008621, 34.863682, 19.901798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826237, 34.621304, 20.162546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333856, 0.562503, 0.756393,
		-0.825011, 0.562514, -0.054179,
		-0.455958, -0.605944, 0.651870,
		34.689449, 34.439522, 20.358107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617092, 35.312614, 20.359999>,  <35.008621, 34.863682, 19.901798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617092, 35.312614, 20.359999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677227, 34.969559, 20.556713>,  <34.713306, 34.763725, 20.674742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.677227, 34.969559, 20.556713>,  <34.617092, 35.312614, 20.359999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.677227, 34.969559, 20.556713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023114, 0.494255, 0.869010,
		-0.988365, -0.142008, 0.054479,
		0.150333, -0.857640, 0.491787,
		34.722328, 34.712265, 20.704248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.085457, 35.265240, 20.949759>,  <34.617092, 35.312614, 20.359999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.085457, 35.265240, 20.949759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378689, 35.005955, 21.032141>,  <34.554626, 34.850384, 21.081570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378689, 35.005955, 21.032141>,  <34.085457, 35.265240, 20.949759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378689, 35.005955, 21.032141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152049, 0.451331, 0.879308,
		-0.662934, -0.613284, 0.429420,
		0.733076, -0.648216, 0.205953,
		34.598610, 34.811489, 21.093927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935551, 35.119663, 21.660971>,  <34.085457, 35.265240, 20.949759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935551, 35.119663, 21.660971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319431, 35.017887, 21.613260>,  <34.549759, 34.956821, 21.584635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.319431, 35.017887, 21.613260>,  <33.935551, 35.119663, 21.660971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319431, 35.017887, 21.613260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201262, 0.326140, 0.923648,
		-0.196110, -0.910436, 0.364207,
		0.959705, -0.254438, -0.119277,
		34.607342, 34.941555, 21.577477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120754, 34.638695, 22.243477>,  <33.935551, 35.119663, 21.660971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120754, 34.638695, 22.243477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458225, 34.800510, 22.102306>,  <34.660709, 34.897602, 22.017605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458225, 34.800510, 22.102306>,  <34.120754, 34.638695, 22.243477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458225, 34.800510, 22.102306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215692, 0.346582, 0.912884,
		0.491617, -0.846302, 0.205146,
		0.843676, 0.404541, -0.352927,
		34.711327, 34.921871, 21.996428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641548, 34.530552, 22.820986>,  <34.120754, 34.638695, 22.243477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641548, 34.530552, 22.820986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827065, 34.789349, 22.578896>,  <34.938374, 34.944626, 22.433641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827065, 34.789349, 22.578896>,  <34.641548, 34.530552, 22.820986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827065, 34.789349, 22.578896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191041, 0.594032, 0.781428,
		0.865101, -0.478042, 0.151906,
		0.463792, 0.646994, -0.605224,
		34.966202, 34.983448, 22.397329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.279655, 34.581009, 23.143570>,  <34.641548, 34.530552, 22.820986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.279655, 34.581009, 23.143570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231655, 34.917400, 22.932533>,  <35.202854, 35.119236, 22.805910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231655, 34.917400, 22.932533>,  <35.279655, 34.581009, 23.143570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231655, 34.917400, 22.932533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382181, 0.529611, 0.757265,
		0.916262, -0.110760, -0.384962,
		-0.120005, 0.840978, -0.527593,
		35.195652, 35.169693, 22.774256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.909943, 34.940544, 23.243872>,  <35.279655, 34.581009, 23.143570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.909943, 34.940544, 23.243872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633038, 35.209278, 23.138491>,  <35.466892, 35.370518, 23.075262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.633038, 35.209278, 23.138491>,  <35.909943, 34.940544, 23.243872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.633038, 35.209278, 23.138491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337344, 0.624004, 0.704853,
		0.637939, 0.399072, -0.658616,
		-0.692266, 0.671833, -0.263453,
		35.425358, 35.410828, 23.059454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257397, 35.619270, 23.203907>,  <35.909943, 34.940544, 23.243872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257397, 35.619270, 23.203907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870857, 35.696060, 23.272392>,  <35.638931, 35.742134, 23.313482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.870857, 35.696060, 23.272392>,  <36.257397, 35.619270, 23.203907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.870857, 35.696060, 23.272392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257171, 0.735030, 0.627371,
		-0.005408, 0.650291, -0.759666,
		-0.966351, 0.191971, 0.171211,
		35.580952, 35.753651, 23.323755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.215561, 36.351768, 23.267670>,  <36.257397, 35.619270, 23.203907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.215561, 36.351768, 23.267670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862022, 36.259995, 23.430723>,  <35.649899, 36.204929, 23.528555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.862022, 36.259995, 23.430723>,  <36.215561, 36.351768, 23.267670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862022, 36.259995, 23.430723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102955, 0.754654, 0.647995,
		-0.456298, 0.614699, -0.643380,
		-0.883851, -0.229440, 0.407633,
		35.596867, 36.191162, 23.553013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918243, 36.901104, 23.379944>,  <36.215561, 36.351768, 23.267670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918243, 36.901104, 23.379944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666988, 36.713036, 23.627939>,  <35.516235, 36.600197, 23.776737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666988, 36.713036, 23.627939>,  <35.918243, 36.901104, 23.379944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666988, 36.713036, 23.627939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089684, 0.835233, 0.542533,
		-0.772916, 0.285182, -0.566808,
		-0.628138, -0.470167, 0.619989,
		35.478546, 36.571987, 23.813936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406921, 37.465137, 23.664827>,  <35.918243, 36.901104, 23.379944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406921, 37.465137, 23.664827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355961, 37.158737, 23.916864>,  <35.325382, 36.974899, 24.068087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355961, 37.158737, 23.916864>,  <35.406921, 37.465137, 23.664827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355961, 37.158737, 23.916864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086793, 0.624223, 0.776410,
		-0.988046, 0.153607, -0.013046,
		-0.127406, -0.765996, 0.630093,
		35.317738, 36.928940, 24.105892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986813, 37.718849, 24.175575>,  <35.406921, 37.465137, 23.664827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986813, 37.718849, 24.175575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195522, 37.413532, 24.327963>,  <35.320747, 37.230343, 24.419395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.195522, 37.413532, 24.327963>,  <34.986813, 37.718849, 24.175575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195522, 37.413532, 24.327963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211996, 0.548585, 0.808772,
		-0.826321, -0.341235, 0.448054,
		0.521777, -0.763290, 0.380967,
		35.352055, 37.184544, 24.442253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787544, 37.781590, 24.834261>,  <34.986813, 37.718849, 24.175575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787544, 37.781590, 24.834261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137497, 37.595512, 24.780346>,  <35.347469, 37.483864, 24.747997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.137497, 37.595512, 24.780346>,  <34.787544, 37.781590, 24.834261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.137497, 37.595512, 24.780346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425653, 0.605743, 0.672231,
		-0.231074, -0.645497, 0.727968,
		0.874885, -0.465197, -0.134786,
		35.399963, 37.455952, 24.739910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012760, 37.684887, 25.489628>,  <34.787544, 37.781590, 24.834261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012760, 37.684887, 25.489628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346840, 37.651405, 25.272211>,  <35.547287, 37.631317, 25.141760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346840, 37.651405, 25.272211>,  <35.012760, 37.684887, 25.489628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346840, 37.651405, 25.272211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480136, 0.592931, 0.646454,
		0.268171, -0.800891, 0.535405,
		0.835197, -0.083707, -0.543543,
		35.597401, 37.626293, 25.109148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583153, 37.682602, 25.881014>,  <35.012760, 37.684887, 25.489628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583153, 37.682602, 25.881014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734070, 37.810875, 25.533495>,  <35.824619, 37.887836, 25.324984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.734070, 37.810875, 25.533495>,  <35.583153, 37.682602, 25.881014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734070, 37.810875, 25.533495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458302, 0.750549, 0.476062,
		0.804740, -0.577789, 0.136212,
		0.377297, 0.320680, -0.868799,
		35.847260, 37.907078, 25.272856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285419, 37.731438, 25.994884>,  <35.583153, 37.682602, 25.881014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285419, 37.731438, 25.994884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198193, 37.961044, 25.679174>,  <36.145855, 38.098808, 25.489748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198193, 37.961044, 25.679174>,  <36.285419, 37.731438, 25.994884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198193, 37.961044, 25.679174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482100, 0.766531, 0.424276,
		0.848544, -0.287988, -0.443888,
		-0.218068, 0.574015, -0.789274,
		36.132771, 38.133247, 25.442392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854687, 38.213161, 25.878428>,  <36.285419, 37.731438, 25.994884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854687, 38.213161, 25.878428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582672, 38.412075, 25.662928>,  <36.419464, 38.531425, 25.533628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582672, 38.412075, 25.662928>,  <36.854687, 38.213161, 25.878428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582672, 38.412075, 25.662928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262779, 0.851314, 0.454104,
		0.684465, 0.167237, -0.709605,
		-0.680040, 0.497288, -0.538749,
		36.378662, 38.561260, 25.501303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.143211, 38.811226, 25.426304>,  <36.854687, 38.213161, 25.878428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.143211, 38.811226, 25.426304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790825, 38.870663, 25.606001>,  <36.579391, 38.906322, 25.713820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.790825, 38.870663, 25.606001>,  <37.143211, 38.811226, 25.426304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.790825, 38.870663, 25.606001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425138, 0.665372, 0.613627,
		-0.207735, 0.731575, -0.649341,
		-0.880967, 0.148588, 0.449241,
		36.526535, 38.915237, 25.740774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270679, 39.481789, 25.696894>,  <37.143211, 38.811226, 25.426304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270679, 39.481789, 25.696894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951004, 39.350899, 25.898579>,  <36.759201, 39.272366, 26.019590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951004, 39.350899, 25.898579>,  <37.270679, 39.481789, 25.696894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951004, 39.350899, 25.898579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396666, 0.343147, 0.851414,
		-0.451619, 0.880441, -0.144440,
		-0.799185, -0.327221, 0.504213,
		36.711250, 39.252731, 26.049843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174923, 39.990456, 26.183817>,  <37.270679, 39.481789, 25.696894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174923, 39.990456, 26.183817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979412, 39.672756, 26.328192>,  <36.862106, 39.482136, 26.414816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.979412, 39.672756, 26.328192>,  <37.174923, 39.990456, 26.183817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979412, 39.672756, 26.328192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252317, 0.267343, 0.929980,
		-0.835125, 0.545622, 0.069731,
		-0.488776, -0.794244, 0.360935,
		36.832779, 39.434483, 26.436472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509113, 40.128914, 26.474108>,  <37.174923, 39.990456, 26.183817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509113, 40.128914, 26.474108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669044, 39.812401, 26.659151>,  <36.765003, 39.622494, 26.770178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669044, 39.812401, 26.659151>,  <36.509113, 40.128914, 26.474108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669044, 39.812401, 26.659151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176123, 0.561628, 0.808428,
		-0.899510, -0.241756, 0.363918,
		0.399829, -0.791283, 0.462610,
		36.788994, 39.575016, 26.797934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514793, 40.292175, 27.144394>,  <36.509113, 40.128914, 26.474108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514793, 40.292175, 27.144394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766975, 39.982567, 27.167774>,  <36.918285, 39.796803, 27.181803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.766975, 39.982567, 27.167774>,  <36.514793, 40.292175, 27.144394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.766975, 39.982567, 27.167774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375607, 0.370101, 0.849673,
		-0.679299, -0.513725, 0.524060,
		0.630454, -0.774023, 0.058451,
		36.956112, 39.750359, 27.185310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569054, 40.042336, 27.913061>,  <36.514793, 40.292175, 27.144394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569054, 40.042336, 27.913061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893547, 39.870350, 27.754549>,  <37.088242, 39.767159, 27.659443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893547, 39.870350, 27.754549>,  <36.569054, 40.042336, 27.913061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893547, 39.870350, 27.754549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489108, 0.127574, 0.862843,
		-0.320436, -0.893788, 0.313791,
		0.811230, -0.429963, -0.396279,
		37.136917, 39.741360, 27.635666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841789, 39.502926, 28.378548>,  <36.569054, 40.042336, 27.913061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841789, 39.502926, 28.378548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161148, 39.627552, 28.172449>,  <37.352764, 39.702328, 28.048790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.161148, 39.627552, 28.172449>,  <36.841789, 39.502926, 28.378548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161148, 39.627552, 28.172449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561686, -0.077072, 0.823753,
		0.216944, -0.947093, -0.236538,
		0.798401, 0.311568, -0.515249,
		37.400669, 39.721024, 28.017874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308144, 39.054070, 28.460657>,  <36.841789, 39.502926, 28.378548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308144, 39.054070, 28.460657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531097, 39.365059, 28.344141>,  <37.664871, 39.551655, 28.274231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.531097, 39.365059, 28.344141>,  <37.308144, 39.054070, 28.460657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.531097, 39.365059, 28.344141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621159, -0.157711, 0.767651,
		0.550893, -0.608815, -0.570843,
		0.557386, 0.777478, -0.291289,
		37.698315, 39.598301, 28.256754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.004738, 38.858150, 28.553974>,  <37.308144, 39.054070, 28.460657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.004738, 38.858150, 28.553974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042763, 39.254036, 28.511208>,  <38.065578, 39.491566, 28.485548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042763, 39.254036, 28.511208>,  <38.004738, 38.858150, 28.553974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042763, 39.254036, 28.511208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680595, 0.013763, 0.732531,
		0.726467, -0.142404, -0.672285,
		0.095063, 0.989713, -0.106918,
		38.071281, 39.550949, 28.479132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721981, 39.040546, 28.440508>,  <38.004738, 38.858150, 28.553974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721981, 39.040546, 28.440508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551632, 39.368305, 28.593990>,  <38.449425, 39.564960, 28.686079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.551632, 39.368305, 28.593990>,  <38.721981, 39.040546, 28.440508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.551632, 39.368305, 28.593990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707006, 0.036734, 0.706253,
		0.564604, 0.572053, -0.594960,
		-0.425869, 0.819394, 0.383705,
		38.423870, 39.614124, 28.709103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257500, 39.381584, 28.710926>,  <38.721981, 39.040546, 28.440508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257500, 39.381584, 28.710926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962822, 39.584366, 28.889933>,  <38.786015, 39.706036, 28.997337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962822, 39.584366, 28.889933>,  <39.257500, 39.381584, 28.710926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962822, 39.584366, 28.889933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575286, 0.122018, 0.808800,
		0.355423, 0.853290, -0.381536,
		-0.736696, 0.506958, 0.447518,
		38.741814, 39.736454, 29.024187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609554, 40.010742, 29.030987>,  <39.257500, 39.381584, 28.710926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609554, 40.010742, 29.030987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259892, 39.991547, 29.224293>,  <39.050095, 39.980030, 29.340277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259892, 39.991547, 29.224293>,  <39.609554, 40.010742, 29.030987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259892, 39.991547, 29.224293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451679, 0.285256, 0.845349,
		-0.178419, 0.957250, -0.227684,
		-0.874159, -0.047986, 0.483264,
		38.997643, 39.977150, 29.369272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637329, 40.591835, 29.517023>,  <39.609554, 40.010742, 29.030987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637329, 40.591835, 29.517023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355690, 40.352791, 29.670439>,  <39.186707, 40.209366, 29.762487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.355690, 40.352791, 29.670439>,  <39.637329, 40.591835, 29.517023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355690, 40.352791, 29.670439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439712, 0.057175, 0.896317,
		-0.557578, 0.799745, 0.222520,
		-0.704102, -0.597611, 0.383537,
		39.144459, 40.173508, 29.785500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474480, 40.823391, 30.144985>,  <39.637329, 40.591835, 29.517023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474480, 40.823391, 30.144985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357559, 40.445011, 30.201174>,  <39.287407, 40.217983, 30.234886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357559, 40.445011, 30.201174>,  <39.474480, 40.823391, 30.144985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357559, 40.445011, 30.201174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544828, -0.044004, 0.837392,
		-0.785953, 0.321304, 0.528245,
		-0.292302, -0.945953, 0.140470,
		39.269867, 40.161224, 30.243315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349590, 40.758888, 30.963114>,  <39.474480, 40.823391, 30.144985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349590, 40.758888, 30.963114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380283, 40.387806, 30.816978>,  <39.398697, 40.165157, 30.729298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380283, 40.387806, 30.816978>,  <39.349590, 40.758888, 30.963114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380283, 40.387806, 30.816978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479608, -0.286898, 0.829256,
		-0.874122, -0.238848, 0.422922,
		0.076731, -0.927707, -0.365337,
		39.403301, 40.109493, 30.707376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181374, 40.334656, 31.525833>,  <39.349590, 40.758888, 30.963114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181374, 40.334656, 31.525833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401428, 40.116451, 31.272923>,  <39.533459, 39.985527, 31.121176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.401428, 40.116451, 31.272923>,  <39.181374, 40.334656, 31.525833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.401428, 40.116451, 31.272923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538518, -0.346929, 0.767879,
		-0.638240, -0.762928, 0.102909,
		0.550134, -0.545510, -0.632275,
		39.566467, 39.952797, 31.083241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.336765, 39.715710, 31.970621>,  <39.181374, 40.334656, 31.525833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.336765, 39.715710, 31.970621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593994, 39.725658, 31.664461>,  <39.748333, 39.731628, 31.480766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.593994, 39.725658, 31.664461>,  <39.336765, 39.715710, 31.970621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593994, 39.725658, 31.664461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762010, -0.120130, 0.636325,
		-0.076119, -0.992447, -0.096208,
		0.643076, 0.024875, -0.765398,
		39.786919, 39.733120, 31.434841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801006, 39.117580, 31.960562>,  <39.336765, 39.715710, 31.970621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801006, 39.117580, 31.960562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007416, 39.376961, 31.736692>,  <40.131260, 39.532589, 31.602371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007416, 39.376961, 31.736692>,  <39.801006, 39.117580, 31.960562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007416, 39.376961, 31.736692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837473, -0.244717, 0.488623,
		0.179884, -0.720853, -0.669337,
		0.516023, 0.648448, -0.559675,
		40.162224, 39.571495, 31.568790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.289078, 38.666065, 31.834953>,  <39.801006, 39.117580, 31.960562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.289078, 38.666065, 31.834953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455433, 39.009899, 31.716192>,  <40.555244, 39.216202, 31.644936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.455433, 39.009899, 31.716192>,  <40.289078, 38.666065, 31.834953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455433, 39.009899, 31.716192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838281, -0.235766, 0.491629,
		0.352598, -0.453349, -0.818627,
		0.415884, 0.859587, -0.296903,
		40.580196, 39.267776, 31.627121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.995037, 38.602200, 31.428127>,  <40.289078, 38.666065, 31.834953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.995037, 38.602200, 31.428127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961784, 38.941757, 31.636921>,  <40.941833, 39.145493, 31.762197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.961784, 38.941757, 31.636921>,  <40.995037, 38.602200, 31.428127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961784, 38.941757, 31.636921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863047, -0.200553, 0.463604,
		0.498237, 0.489035, -0.715965,
		-0.083130, 0.848896, 0.521982,
		40.936844, 39.196426, 31.793516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.465008, 38.993542, 31.122646>,  <40.995037, 38.602200, 31.428127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.465008, 38.993542, 31.122646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407272, 39.135799, 31.492010>,  <41.372631, 39.221153, 31.713629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.407272, 39.135799, 31.492010>,  <41.465008, 38.993542, 31.122646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407272, 39.135799, 31.492010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972092, -0.123449, 0.199495,
		0.184943, 0.926433, -0.327898,
		-0.144340, 0.355642, 0.923409,
		41.363972, 39.242493, 31.769033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011337, 39.419510, 31.273794>,  <41.465008, 38.993542, 31.122646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011337, 39.419510, 31.273794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846649, 39.400089, 31.637802>,  <41.747837, 39.388439, 31.856207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.846649, 39.400089, 31.637802>,  <42.011337, 39.419510, 31.273794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.846649, 39.400089, 31.637802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909169, 0.046558, 0.413816,
		-0.062459, 0.997735, 0.024968,
		-0.411716, -0.048547, 0.910018,
		41.723133, 39.385525, 31.910807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610882, 39.646278, 31.670660>,  <42.011337, 39.419510, 31.273794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610882, 39.646278, 31.670660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329887, 39.507721, 31.919344>,  <42.161289, 39.424587, 32.068554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.329887, 39.507721, 31.919344>,  <42.610882, 39.646278, 31.670660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.329887, 39.507721, 31.919344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648357, 0.048769, 0.759773,
		-0.293499, 0.936821, 0.190325,
		-0.702490, -0.346392, 0.621708,
		42.119141, 39.403805, 32.105858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.406536, 40.210632, 32.176880>,  <42.610882, 39.646278, 31.670660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.406536, 40.210632, 32.176880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363220, 39.842724, 32.327770>,  <42.337231, 39.621979, 32.418304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.363220, 39.842724, 32.327770>,  <42.406536, 40.210632, 32.176880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.363220, 39.842724, 32.327770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682257, 0.207234, 0.701128,
		-0.723049, 0.333291, 0.605076,
		-0.108287, -0.919767, 0.377230,
		42.330734, 39.566795, 32.440941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260952, 40.293568, 32.928211>,  <42.406536, 40.210632, 32.176880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260952, 40.293568, 32.928211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410191, 39.930325, 32.852165>,  <42.499733, 39.712379, 32.806538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.410191, 39.930325, 32.852165>,  <42.260952, 40.293568, 32.928211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.410191, 39.930325, 32.852165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835350, 0.239632, 0.494739,
		-0.403719, -0.343394, 0.847993,
		0.373097, -0.908106, -0.190111,
		42.522121, 39.657894, 32.795132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.490166, 39.924721, 33.576416>,  <42.260952, 40.293568, 32.928211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.490166, 39.924721, 33.576416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700718, 39.786465, 33.265686>,  <42.827049, 39.703510, 33.079250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.700718, 39.786465, 33.265686>,  <42.490166, 39.924721, 33.576416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.700718, 39.786465, 33.265686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850102, 0.230860, 0.473319,
		0.015737, -0.909524, 0.415353,
		0.526383, -0.345643, -0.776821,
		42.858631, 39.682770, 33.032639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.959595, 39.562328, 33.981983>,  <42.490166, 39.924721, 33.576416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.959595, 39.562328, 33.981983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091160, 39.612019, 33.607521>,  <43.170097, 39.641830, 33.382843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091160, 39.612019, 33.607521>,  <42.959595, 39.562328, 33.981983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091160, 39.612019, 33.607521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941921, 0.028052, 0.334660,
		0.067833, -0.991858, -0.107780,
		0.328911, 0.124221, -0.936155,
		43.189835, 39.649284, 33.326675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550804, 39.099384, 33.856110>,  <42.959595, 39.562328, 33.981983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550804, 39.099384, 33.856110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567066, 39.407532, 33.601589>,  <43.576824, 39.592419, 33.448875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.567066, 39.407532, 33.601589>,  <43.550804, 39.099384, 33.856110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.567066, 39.407532, 33.601589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946521, 0.174306, 0.271507,
		0.320071, -0.613312, -0.722083,
		0.040655, 0.770368, -0.636303,
		43.579262, 39.638641, 33.410698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.052238, 38.945801, 33.345551>,  <43.550804, 39.099384, 33.856110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.052238, 38.945801, 33.345551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981228, 39.336143, 33.396450>,  <43.938622, 39.570347, 33.426991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981228, 39.336143, 33.396450>,  <44.052238, 38.945801, 33.345551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981228, 39.336143, 33.396450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954574, 0.139312, 0.263401,
		0.239313, 0.168233, -0.956257,
		-0.177531, 0.975853, 0.127251,
		43.927967, 39.628899, 33.434624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726959, 39.177280, 33.477306>,  <44.052238, 38.945801, 33.345551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726959, 39.177280, 33.477306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533951, 39.526268, 33.508205>,  <44.418144, 39.735661, 33.526745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.533951, 39.526268, 33.508205>,  <44.726959, 39.177280, 33.477306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533951, 39.526268, 33.508205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870702, 0.468218, 0.150501,
		0.095139, 0.139880, -0.985587,
		-0.482522, 0.872471, 0.077248,
		44.389194, 39.788010, 33.531380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981518, 39.630554, 33.047874>,  <44.726959, 39.177280, 33.477306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981518, 39.630554, 33.047874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818142, 39.885040, 33.309685>,  <44.720116, 40.037731, 33.466770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.818142, 39.885040, 33.309685>,  <44.981518, 39.630554, 33.047874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818142, 39.885040, 33.309685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827863, 0.560234, -0.027953,
		-0.384473, 0.530442, -0.755521,
		-0.408441, 0.636215, 0.654528,
		44.695610, 40.075905, 33.506042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.934498, 40.348160, 32.774040>,  <44.981518, 39.630554, 33.047874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.934498, 40.348160, 32.774040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946373, 40.371983, 33.173153>,  <44.953499, 40.386276, 33.412621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.946373, 40.371983, 33.173153>,  <44.934498, 40.348160, 32.774040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946373, 40.371983, 33.173153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840954, 0.538081, -0.057138,
		-0.540291, 0.840786, -0.034112,
		0.029686, 0.059558, 0.997783,
		44.955280, 40.389851, 33.472488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119629, 41.146519, 33.085999>,  <44.934498, 40.348160, 32.774040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119629, 41.146519, 33.085999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205902, 40.870022, 33.361870>,  <45.257664, 40.704124, 33.527393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.205902, 40.870022, 33.361870>,  <45.119629, 41.146519, 33.085999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.205902, 40.870022, 33.361870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888561, 0.431810, 0.154916,
		-0.404897, 0.579412, 0.707347,
		0.215680, -0.691246, 0.689682,
		45.270607, 40.662647, 33.568775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809040, 41.399181, 33.202175>,  <45.119629, 41.146519, 33.085999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809040, 41.399181, 33.202175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701904, 41.114014, 33.461407>,  <45.637623, 40.942913, 33.616947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.701904, 41.114014, 33.461407>,  <45.809040, 41.399181, 33.202175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.701904, 41.114014, 33.461407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786585, 0.226634, 0.574387,
		-0.556370, 0.663609, 0.500075,
		-0.267835, -0.712924, 0.648078,
		45.621555, 40.900135, 33.655830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615105, 41.750359, 33.917831>,  <45.809040, 41.399181, 33.202175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615105, 41.750359, 33.917831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766907, 41.380623, 33.901989>,  <45.857986, 41.158779, 33.892483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.766907, 41.380623, 33.901989>,  <45.615105, 41.750359, 33.917831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.766907, 41.380623, 33.901989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767662, 0.290703, 0.571128,
		-0.516404, -0.247151, 0.819905,
		0.379503, -0.924342, -0.039608,
		45.880756, 41.103321, 33.890106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.878559, 41.518745, 34.678600>,  <45.615105, 41.750359, 33.917831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.878559, 41.518745, 34.678600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057800, 41.345470, 34.365791>,  <46.165344, 41.241505, 34.178108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.057800, 41.345470, 34.365791>,  <45.878559, 41.518745, 34.678600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.057800, 41.345470, 34.365791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893943, 0.225390, 0.387383,
		0.008450, -0.872667, 0.488243,
		0.448102, -0.433188, -0.782019,
		46.192230, 41.215515, 34.131187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.212250, 40.902164, 34.844097>,  <45.878559, 41.518745, 34.678600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.212250, 40.902164, 34.844097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.399967, 41.124775, 34.569859>,  <46.512596, 41.258343, 34.405315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.399967, 41.124775, 34.569859>,  <46.212250, 40.902164, 34.844097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.399967, 41.124775, 34.569859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879370, -0.223796, 0.420266,
		0.080456, -0.800120, -0.594420,
		0.469292, 0.556528, -0.685596,
		46.540756, 41.291733, 34.364182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.612759, 40.423660, 34.673817>,  <46.212250, 40.902164, 34.844097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.612759, 40.423660, 34.673817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742931, 40.799492, 34.631336>,  <46.821033, 41.024994, 34.605846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.742931, 40.799492, 34.631336>,  <46.612759, 40.423660, 34.673817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.742931, 40.799492, 34.631336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723888, -0.175297, 0.667276,
		0.608344, -0.294029, -0.737200,
		0.325428, 0.939584, -0.106203,
		46.840561, 41.081367, 34.599476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.189137, 39.851711, 34.984669>,  <46.612759, 40.423660, 34.673817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.189137, 39.851711, 34.984669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587357, 39.832539, 35.017139>,  <46.826286, 39.821037, 35.036621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.587357, 39.832539, 35.017139>,  <46.189137, 39.851711, 34.984669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587357, 39.832539, 35.017139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039496, 0.569857, 0.820794,
		-0.085600, -0.820345, 0.565427,
		0.995547, -0.047928, 0.081180,
		46.886021, 39.818161, 35.041492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997631, 39.855896, 34.232189>,  <46.189137, 39.851711, 34.984669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997631, 39.855896, 34.232189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869068, 40.222221, 34.135864>,  <45.791931, 40.442017, 34.078072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.869068, 40.222221, 34.135864>,  <45.997631, 39.855896, 34.232189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.869068, 40.222221, 34.135864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945395, -0.295816, 0.136825,
		0.054071, 0.271636, 0.960880,
		-0.321410, 0.915809, -0.240809,
		45.772644, 40.496964, 34.063622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.481174, 39.920303, 34.613949>,  <45.997631, 39.855896, 34.232189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.481174, 39.920303, 34.613949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416309, 40.163883, 34.303364>,  <45.377392, 40.310032, 34.117012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416309, 40.163883, 34.303364>,  <45.481174, 39.920303, 34.613949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416309, 40.163883, 34.303364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948012, -0.314493, -0.048653,
		-0.273818, 0.728202, 0.628287,
		-0.162162, 0.608946, -0.776459,
		45.367661, 40.346565, 34.070427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.889725, 40.340725, 34.776268>,  <45.481174, 39.920303, 34.613949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.889725, 40.340725, 34.776268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922676, 40.364326, 34.378326>,  <44.942448, 40.378487, 34.139561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.922676, 40.364326, 34.378326>,  <44.889725, 40.340725, 34.776268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.922676, 40.364326, 34.378326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.964171, -0.247862, -0.094541,
		-0.252165, 0.966997, 0.036469,
		0.082381, 0.059002, -0.994853,
		44.947392, 40.382027, 34.079872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251453, 40.639336, 34.533321>,  <44.889725, 40.340725, 34.776268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251453, 40.639336, 34.533321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407986, 40.507179, 34.189762>,  <44.501904, 40.427887, 33.983627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407986, 40.507179, 34.189762>,  <44.251453, 40.639336, 34.533321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407986, 40.507179, 34.189762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908426, -0.287826, -0.303179,
		-0.147047, 0.898888, -0.412768,
		0.391330, -0.330388, -0.858897,
		44.525383, 40.408062, 33.932095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.779034, 40.670036, 34.049702>,  <44.251453, 40.639336, 34.533321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.779034, 40.670036, 34.049702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024757, 40.424789, 33.851017>,  <44.172192, 40.277641, 33.731808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.024757, 40.424789, 33.851017>,  <43.779034, 40.670036, 34.049702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.024757, 40.424789, 33.851017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769483, -0.326089, -0.549147,
		0.174717, 0.719553, -0.672099,
		0.614305, -0.613114, -0.496711,
		44.209049, 40.240856, 33.702003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785725, 40.946358, 33.373749>,  <43.779034, 40.670036, 34.049702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785725, 40.946358, 33.373749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852028, 40.551941, 33.380035>,  <43.891811, 40.315292, 33.383808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.852028, 40.551941, 33.380035>,  <43.785725, 40.946358, 33.373749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.852028, 40.551941, 33.380035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837272, -0.149138, -0.526055,
		0.521055, 0.074040, -0.850306,
		0.165762, -0.986041, 0.015717,
		43.901756, 40.256130, 33.384750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.569939, 40.720345, 32.704273>,  <43.785725, 40.946358, 33.373749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.569939, 40.720345, 32.704273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568501, 40.395920, 32.938251>,  <43.567638, 40.201263, 33.078640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.568501, 40.395920, 32.938251>,  <43.569939, 40.720345, 32.704273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568501, 40.395920, 32.938251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906899, -0.243818, -0.343638,
		0.421333, -0.531724, -0.734676,
		-0.003593, -0.811063, 0.584949,
		43.567421, 40.152599, 33.113735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.340317, 40.069466, 32.481987>,  <43.569939, 40.720345, 32.704273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.340317, 40.069466, 32.481987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259922, 40.086376, 32.873459>,  <43.211685, 40.096523, 33.108341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.259922, 40.086376, 32.873459>,  <43.340317, 40.069466, 32.481987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.259922, 40.086376, 32.873459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933047, -0.312568, -0.178116,
		0.298375, -0.948954, 0.102263,
		-0.200989, 0.042271, 0.978681,
		43.199627, 40.099060, 33.167065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.689671, 39.485783, 32.265530>,  <43.340317, 40.069466, 32.481987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.689671, 39.485783, 32.265530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530003, 39.446972, 32.630222>,  <43.434200, 39.423687, 32.849037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.530003, 39.446972, 32.630222>,  <43.689671, 39.485783, 32.265530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.530003, 39.446972, 32.630222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840631, -0.358278, -0.406173,
		0.366061, -0.928560, 0.061451,
		-0.399173, -0.097026, 0.911727,
		43.410252, 39.417866, 32.903740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.453487, 38.850883, 32.295059>,  <43.689671, 39.485783, 32.265530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.453487, 38.850883, 32.295059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260342, 39.089462, 32.551525>,  <43.144455, 39.232609, 32.705406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.260342, 39.089462, 32.551525>,  <43.453487, 38.850883, 32.295059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.260342, 39.089462, 32.551525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856066, -0.167366, -0.489018,
		-0.184368, -0.785005, 0.591419,
		-0.482865, 0.596453, 0.641159,
		43.115482, 39.268398, 32.743874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.946308, 38.444843, 32.637394>,  <43.453487, 38.850883, 32.295059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.946308, 38.444843, 32.637394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829826, 38.827011, 32.656849>,  <42.759937, 39.056313, 32.668522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829826, 38.827011, 32.656849>,  <42.946308, 38.444843, 32.637394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829826, 38.827011, 32.656849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846966, -0.233837, -0.477460,
		-0.444803, -0.180235, 0.877306,
		-0.291202, 0.955424, 0.048641,
		42.742466, 39.113640, 32.671440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227352, 38.451111, 32.983978>,  <42.946308, 38.444843, 32.637394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227352, 38.451111, 32.983978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303421, 38.770798, 32.755913>,  <42.349060, 38.962608, 32.619072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303421, 38.770798, 32.755913>,  <42.227352, 38.451111, 32.983978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303421, 38.770798, 32.755913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941757, -0.015572, -0.335933,
		-0.277361, 0.600844, 0.749704,
		0.190169, 0.799214, -0.570168,
		42.360470, 39.010563, 32.584862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.692898, 38.861732, 33.147995>,  <42.227352, 38.451111, 32.983978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.692898, 38.861732, 33.147995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804890, 38.988865, 32.785648>,  <41.872086, 39.065144, 32.568241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.804890, 38.988865, 32.785648>,  <41.692898, 38.861732, 33.147995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.804890, 38.988865, 32.785648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959982, 0.085967, -0.266540,
		-0.006841, 0.944241, 0.329183,
		0.279977, 0.317834, -0.905867,
		41.888882, 39.084213, 32.513889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.089130, 39.163055, 32.987556>,  <41.692898, 38.861732, 33.147995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.089130, 39.163055, 32.987556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308292, 39.241009, 32.662148>,  <41.439789, 39.287781, 32.466904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308292, 39.241009, 32.662148>,  <41.089130, 39.163055, 32.987556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308292, 39.241009, 32.662148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825565, 0.282980, -0.488227,
		0.135062, 0.939118, 0.315937,
		0.547906, 0.194885, -0.813522,
		41.472664, 39.299473, 32.418091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.998508, 39.905003, 32.792988>,  <41.089130, 39.163055, 32.987556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.998508, 39.905003, 32.792988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121605, 39.718964, 32.460968>,  <41.195461, 39.607342, 32.261757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.121605, 39.718964, 32.460968>,  <40.998508, 39.905003, 32.792988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.121605, 39.718964, 32.460968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806926, 0.334673, -0.486688,
		0.504152, 0.819562, -0.272305,
		0.307737, -0.465094, -0.830051,
		41.213924, 39.579433, 32.211952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754581, 40.306427, 32.204872>,  <40.998508, 39.905003, 32.792988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754581, 40.306427, 32.204872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882450, 39.982368, 32.008312>,  <40.959171, 39.787933, 31.890375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.882450, 39.982368, 32.008312>,  <40.754581, 40.306427, 32.204872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882450, 39.982368, 32.008312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568809, 0.250694, -0.783331,
		0.757803, 0.529924, -0.380677,
		0.319673, -0.810144, -0.491402,
		40.978352, 39.739326, 31.860891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.019852, 40.454884, 31.528078>,  <40.754581, 40.306427, 32.204872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.019852, 40.454884, 31.528078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867062, 40.085762, 31.548191>,  <40.775387, 39.864288, 31.560259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867062, 40.085762, 31.548191>,  <41.019852, 40.454884, 31.528078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867062, 40.085762, 31.548191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551944, 0.184148, -0.813294,
		0.741251, -0.338411, -0.579676,
		-0.381974, -0.922804, 0.050284,
		40.752468, 39.808922, 31.563276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699718, 40.470970, 30.957594>,  <41.019852, 40.454884, 31.528078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699718, 40.470970, 30.957594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561813, 40.132610, 31.120365>,  <40.479069, 39.929596, 31.218027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.561813, 40.132610, 31.120365>,  <40.699718, 40.470970, 30.957594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.561813, 40.132610, 31.120365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615259, -0.123766, -0.778549,
		0.708939, -0.518781, -0.477778,
		-0.344764, -0.845901, 0.406927,
		40.458385, 39.878841, 31.242443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.570339, 39.912964, 30.399181>,  <40.699718, 40.470970, 30.957594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.570339, 39.912964, 30.399181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336926, 39.846470, 30.717138>,  <40.196877, 39.806576, 30.907913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.336926, 39.846470, 30.717138>,  <40.570339, 39.912964, 30.399181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.336926, 39.846470, 30.717138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764340, -0.218269, -0.606748,
		0.274362, -0.961626, 0.000308,
		-0.583533, -0.166233, 0.794894,
		40.161865, 39.796600, 30.955606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224426, 39.225910, 30.260103>,  <40.570339, 39.912964, 30.399181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224426, 39.225910, 30.260103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002800, 39.428051, 30.524717>,  <39.869823, 39.549335, 30.683487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002800, 39.428051, 30.524717>,  <40.224426, 39.225910, 30.260103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002800, 39.428051, 30.524717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774129, -0.020520, -0.632695,
		-0.306158, -0.862670, 0.402576,
		-0.554067, 0.505351, 0.661536,
		39.836578, 39.579655, 30.723179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641678, 38.856804, 30.125906>,  <40.224426, 39.225910, 30.260103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641678, 38.856804, 30.125906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553379, 39.205265, 30.301344>,  <39.500401, 39.414341, 30.406607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.553379, 39.205265, 30.301344>,  <39.641678, 38.856804, 30.125906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.553379, 39.205265, 30.301344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734390, 0.147459, -0.662516,
		-0.641827, -0.468349, 0.607213,
		-0.220749, 0.871152, 0.438594,
		39.487156, 39.466610, 30.432922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033756, 38.248886, 30.089964>,  <39.641678, 38.856804, 30.125906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033756, 38.248886, 30.089964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426853, 38.287556, 30.026888>,  <40.662712, 38.310757, 29.989042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426853, 38.287556, 30.026888>,  <40.033756, 38.248886, 30.089964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426853, 38.287556, 30.026888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180784, -0.321811, 0.929384,
		0.039103, -0.941855, -0.333735,
		0.982745, 0.096676, -0.157688,
		40.721676, 38.316559, 29.979582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402618, 37.625755, 30.240618>,  <40.033756, 38.248886, 30.089964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402618, 37.625755, 30.240618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637890, 37.944588, 30.295341>,  <40.779053, 38.135887, 30.328175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637890, 37.944588, 30.295341>,  <40.402618, 37.625755, 30.240618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637890, 37.944588, 30.295341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311261, -0.379244, 0.871373,
		0.746435, -0.469938, -0.471162,
		0.588176, 0.797078, 0.136808,
		40.814342, 38.183712, 30.336384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170895, 37.622913, 30.112350>,  <40.402618, 37.625755, 30.240618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170895, 37.622913, 30.112350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069347, 37.866684, 30.412790>,  <41.008419, 38.012947, 30.593054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.069347, 37.866684, 30.412790>,  <41.170895, 37.622913, 30.112350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069347, 37.866684, 30.412790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513474, -0.573170, 0.638608,
		0.819693, 0.547791, -0.167417,
		-0.253866, 0.609427, 0.751100,
		40.993187, 38.049511, 30.638121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745014, 37.954983, 30.366072>,  <41.170895, 37.622913, 30.112350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745014, 37.954983, 30.366072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466892, 37.876144, 30.642536>,  <41.300018, 37.828842, 30.808414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.466892, 37.876144, 30.642536>,  <41.745014, 37.954983, 30.366072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466892, 37.876144, 30.642536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694867, -0.430030, 0.576397,
		0.183612, 0.881037, 0.435960,
		-0.695303, -0.197101, 0.691162,
		41.258301, 37.817013, 30.849884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.982876, 38.127136, 31.064566>,  <41.745014, 37.954983, 30.366072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.982876, 38.127136, 31.064566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756958, 37.799507, 31.104837>,  <41.621407, 37.602932, 31.129000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.756958, 37.799507, 31.104837>,  <41.982876, 38.127136, 31.064566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.756958, 37.799507, 31.104837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687562, -0.399585, 0.606293,
		-0.456367, 0.411651, 0.788843,
		-0.564790, -0.819070, 0.100678,
		41.587521, 37.553787, 31.135040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.976891, 38.033825, 31.798180>,  <41.982876, 38.127136, 31.064566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.976891, 38.033825, 31.798180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947372, 37.702400, 31.576174>,  <41.929661, 37.503548, 31.442970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.947372, 37.702400, 31.576174>,  <41.976891, 38.033825, 31.798180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.947372, 37.702400, 31.576174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862995, -0.331969, 0.380835,
		-0.499793, -0.450871, 0.739542,
		-0.073797, -0.828560, -0.555016,
		41.925232, 37.453831, 31.409670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.879307, 37.362514, 32.261246>,  <41.976891, 38.033825, 31.798180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.879307, 37.362514, 32.261246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055756, 37.321278, 31.904644>,  <42.161625, 37.296535, 31.690681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055756, 37.321278, 31.904644>,  <41.879307, 37.362514, 32.261246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055756, 37.321278, 31.904644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862031, -0.227647, 0.452858,
		-0.249637, -0.968271, -0.011547,
		0.441118, -0.103096, -0.891508,
		42.188091, 37.290348, 31.637192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.165916, 36.649193, 32.258457>,  <41.879307, 37.362514, 32.261246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.165916, 36.649193, 32.258457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379921, 36.865788, 31.999056>,  <42.508324, 36.995747, 31.843416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.379921, 36.865788, 31.999056>,  <42.165916, 36.649193, 32.258457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.379921, 36.865788, 31.999056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767384, 0.009608, 0.641116,
		0.353388, -0.840653, -0.410390,
		0.535013, 0.541489, -0.648499,
		42.540424, 37.028233, 31.804506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.777206, 36.301563, 32.018215>,  <42.165916, 36.649193, 32.258457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.777206, 36.301563, 32.018215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886864, 36.680717, 31.953274>,  <42.952656, 36.908211, 31.914309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886864, 36.680717, 31.953274>,  <42.777206, 36.301563, 32.018215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886864, 36.680717, 31.953274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792020, -0.126773, 0.597188,
		0.545483, -0.292304, -0.785498,
		0.274140, 0.947886, -0.162358,
		42.969105, 36.965084, 31.904566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468693, 36.260807, 31.950787>,  <42.777206, 36.301563, 32.018215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468693, 36.260807, 31.950787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371490, 36.635441, 32.051785>,  <43.313171, 36.860222, 32.112385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.371490, 36.635441, 32.051785>,  <43.468693, 36.260807, 31.950787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.371490, 36.635441, 32.051785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734000, 0.007361, 0.679109,
		0.634187, 0.350356, -0.689244,
		-0.243004, 0.936588, 0.252493,
		43.298588, 36.916416, 32.127533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.179981, 36.114410, 31.691109>,  <43.468693, 36.260807, 31.950787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.179981, 36.114410, 31.691109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516434, 35.913391, 31.771048>,  <44.718307, 35.792782, 31.819012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.516434, 35.913391, 31.771048>,  <44.179981, 36.114410, 31.691109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.516434, 35.913391, 31.771048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307747, -0.140893, 0.940979,
		-0.444728, -0.852993, -0.273167,
		0.841136, -0.502546, 0.199847,
		44.768776, 35.762627, 31.831001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946159, 36.210705, 32.058628>,  <44.179981, 36.114410, 31.691109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946159, 36.210705, 32.058628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871326, 36.094456, 31.683279>,  <44.826427, 36.024708, 31.458071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.871326, 36.094456, 31.683279>,  <44.946159, 36.210705, 32.058628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871326, 36.094456, 31.683279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959269, 0.151778, -0.238257,
		0.211667, -0.944723, 0.250391,
		-0.187083, -0.290624, -0.938370,
		44.815201, 36.007267, 31.401768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.463211, 35.722141, 31.766535>,  <44.946159, 36.210705, 32.058628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.463211, 35.722141, 31.766535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302753, 35.940849, 31.472561>,  <45.206478, 36.072075, 31.296177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302753, 35.940849, 31.472561>,  <45.463211, 35.722141, 31.766535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302753, 35.940849, 31.472561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910648, 0.151320, -0.384477,
		-0.099010, -0.823496, -0.558616,
		-0.401145, 0.546769, -0.734933,
		45.182411, 36.104881, 31.252081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830193, 35.030582, 32.053303>,  <45.463211, 35.722141, 31.766535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830193, 35.030582, 32.053303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184124, 34.892822, 31.927788>,  <46.396484, 34.810165, 31.852478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184124, 34.892822, 31.927788>,  <45.830193, 35.030582, 32.053303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184124, 34.892822, 31.927788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437236, 0.381182, 0.814570,
		-0.160926, -0.857957, 0.487866,
		0.884832, -0.344398, -0.313788,
		46.449574, 34.789501, 31.833651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042351, 34.518318, 32.486122>,  <45.830193, 35.030582, 32.053303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042351, 34.518318, 32.486122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292328, 34.778950, 32.314125>,  <46.442314, 34.935329, 32.210926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.292328, 34.778950, 32.314125>,  <46.042351, 34.518318, 32.486122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.292328, 34.778950, 32.314125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219011, 0.382352, 0.897687,
		0.749322, -0.655174, 0.096244,
		0.624940, 0.651578, -0.429995,
		46.479809, 34.974422, 32.185127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.661751, 34.397335, 32.872383>,  <46.042351, 34.518318, 32.486122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.661751, 34.397335, 32.872383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.616978, 34.761311, 32.712646>,  <46.590115, 34.979698, 32.616802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.616978, 34.761311, 32.712646>,  <46.661751, 34.397335, 32.872383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.616978, 34.761311, 32.712646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310246, 0.413783, 0.855880,
		0.944044, -0.028096, -0.328621,
		-0.111930, 0.909942, -0.399346,
		46.583397, 35.034294, 32.592842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.177494, 34.884163, 33.028728>,  <46.661751, 34.397335, 32.872383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.177494, 34.884163, 33.028728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863617, 35.131344, 33.009193>,  <46.675289, 35.279652, 32.997471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.863617, 35.131344, 33.009193>,  <47.177494, 34.884163, 33.028728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.863617, 35.131344, 33.009193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239905, 0.375397, 0.895278,
		0.571577, 0.690803, -0.442822,
		-0.784695, 0.617955, -0.048841,
		46.628208, 35.316730, 32.994541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.061840, 34.876114, 33.713665>,  <47.177494, 34.884163, 33.028728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.061840, 34.876114, 33.713665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.233692, 34.524040, 33.632984>,  <47.336803, 34.312794, 33.584576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.233692, 34.524040, 33.632984>,  <47.061840, 34.876114, 33.713665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.233692, 34.524040, 33.632984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764894, 0.236006, 0.599365,
		-0.479950, -0.411792, 0.774646,
		0.429634, -0.880187, -0.201706,
		47.362583, 34.259983, 33.572472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.435543, 35.553528, 33.956425>,  <47.061840, 34.876114, 33.713665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.435543, 35.553528, 33.956425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734680, 35.627117, 34.211575>,  <47.914162, 35.671272, 34.364666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.734680, 35.627117, 34.211575>,  <47.435543, 35.553528, 33.956425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.734680, 35.627117, 34.211575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503526, -0.469000, 0.725604,
		0.432658, -0.863824, -0.258100,
		0.747842, 0.183978, 0.637874,
		47.959034, 35.682312, 34.402935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.656319, 34.864605, 34.352974>,  <47.435543, 35.553528, 33.956425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.656319, 34.864605, 34.352974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742695, 35.203499, 34.547115>,  <47.794521, 35.406834, 34.663601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.742695, 35.203499, 34.547115>,  <47.656319, 34.864605, 34.352974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.742695, 35.203499, 34.547115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414848, -0.370373, 0.831098,
		0.883895, -0.380815, 0.271494,
		0.215941, 0.847233, 0.485351,
		47.807476, 35.457668, 34.692722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.932114, 34.683598, 35.034721>,  <47.656319, 34.864605, 34.352974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.932114, 34.683598, 35.034721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756599, 35.042126, 35.060276>,  <47.651291, 35.257244, 35.075607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.756599, 35.042126, 35.060276>,  <47.932114, 34.683598, 35.034721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.756599, 35.042126, 35.060276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484661, -0.295930, 0.823122,
		0.756686, 0.330207, 0.564260,
		-0.438782, 0.896320, 0.063888,
		47.624966, 35.311020, 35.079441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.876736, 32.339085, 25.064560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.548050, 32.536228, 25.179018>,  <32.350838, 32.654514, 25.247692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.548050, 32.536228, 25.179018>,  <32.876736, 32.339085, 25.064560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548050, 32.536228, 25.179018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559243, 0.600704, 0.571316,
		0.109690, 0.629482, -0.769234,
		-0.821715, 0.492856, 0.286143,
		32.301537, 32.684086, 25.264860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033379, 33.079586, 25.123564>,  <32.876736, 32.339085, 25.064560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033379, 33.079586, 25.123564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.700348, 33.052933, 25.343521>,  <32.500530, 33.036942, 25.475496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.700348, 33.052933, 25.343521>,  <33.033379, 33.079586, 25.123564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700348, 33.052933, 25.343521> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420298, 0.570622, 0.705507,
		-0.360794, 0.818505, -0.447076,
		-0.832573, -0.066638, 0.549893,
		32.450577, 33.032940, 25.508490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886311, 33.749542, 25.395233>,  <33.033379, 33.079586, 25.123564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886311, 33.749542, 25.395233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686024, 33.500042, 25.635307>,  <32.565849, 33.350342, 25.779352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.686024, 33.500042, 25.635307>,  <32.886311, 33.749542, 25.395233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686024, 33.500042, 25.635307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329989, 0.503456, 0.798523,
		-0.800242, 0.597890, -0.046261,
		-0.500720, -0.623746, 0.600183,
		32.535809, 33.312920, 25.815363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.539356, 34.165554, 25.959476>,  <32.886311, 33.749542, 25.395233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.539356, 34.165554, 25.959476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.531147, 33.794308, 26.108171>,  <32.526222, 33.571560, 26.197388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.531147, 33.794308, 26.108171>,  <32.539356, 34.165554, 25.959476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531147, 33.794308, 26.108171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210379, 0.359479, 0.909129,
		-0.977404, 0.096867, 0.187877,
		-0.020527, -0.928112, 0.371735,
		32.524990, 33.515873, 26.219692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.107555, 34.152603, 26.556784>,  <32.539356, 34.165554, 25.959476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.107555, 34.152603, 26.556784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.362183, 33.845737, 26.588362>,  <32.514957, 33.661617, 26.607307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.362183, 33.845737, 26.588362>,  <32.107555, 34.152603, 26.556784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362183, 33.845737, 26.588362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173018, 0.241812, 0.954773,
		-0.751561, -0.594120, 0.286664,
		0.636569, -0.767169, 0.078943,
		32.553154, 33.615585, 26.612045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985262, 33.955357, 27.268053>,  <32.107555, 34.152603, 26.556784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985262, 33.955357, 27.268053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.318867, 33.762863, 27.160101>,  <32.519032, 33.647366, 27.095329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.318867, 33.762863, 27.160101>,  <31.985262, 33.955357, 27.268053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318867, 33.762863, 27.160101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358304, 0.100430, 0.928187,
		-0.419573, -0.870819, 0.256188,
		0.834012, -0.481236, -0.269880,
		32.569069, 33.618492, 27.079136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185467, 33.264652, 27.752205>,  <31.985262, 33.955357, 27.268053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185467, 33.264652, 27.752205> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.520615, 33.392296, 27.575054>,  <32.721703, 33.468884, 27.468763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.520615, 33.392296, 27.575054>,  <32.185467, 33.264652, 27.752205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.520615, 33.392296, 27.575054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457198, 0.033017, 0.888752,
		0.298230, -0.947143, -0.118232,
		0.837872, 0.319107, -0.442878,
		32.771976, 33.488029, 27.442190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632339, 33.081177, 28.206188>,  <32.185467, 33.264652, 27.752205>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632339, 33.081177, 28.206188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.835331, 33.347038, 27.986845>,  <32.957127, 33.506554, 27.855240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.835331, 33.347038, 27.986845>,  <32.632339, 33.081177, 28.206188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.835331, 33.347038, 27.986845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485007, 0.305670, 0.819350,
		0.712201, -0.681762, -0.167240,
		0.507481, 0.664655, -0.548358,
		32.987576, 33.546436, 27.822338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.418774, 32.918655, 28.394749>,  <32.632339, 33.081177, 28.206188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.418774, 32.918655, 28.394749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373470, 33.291706, 28.257702>,  <33.346291, 33.515537, 28.175474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.373470, 33.291706, 28.257702>,  <33.418774, 32.918655, 28.394749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.373470, 33.291706, 28.257702> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510774, 0.350433, 0.785052,
		0.852222, -0.086089, -0.516049,
		-0.113257, 0.932623, -0.342619,
		33.339493, 33.571491, 28.154917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.139053, 33.146378, 28.418615>,  <33.418774, 32.918655, 28.394749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.139053, 33.146378, 28.418615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.906094, 33.471531, 28.420797>,  <33.766319, 33.666622, 28.422106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.906094, 33.471531, 28.420797>,  <34.139053, 33.146378, 28.418615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906094, 33.471531, 28.420797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398310, 0.279513, 0.873626,
		0.708632, 0.510971, -0.486569,
		-0.582399, 0.812885, 0.005453,
		33.731373, 33.715397, 28.422434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490173, 33.682240, 28.717920>,  <34.139053, 33.146378, 28.418615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490173, 33.682240, 28.717920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.138680, 33.870789, 28.747950>,  <33.927784, 33.983917, 28.765966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.138680, 33.870789, 28.747950>,  <34.490173, 33.682240, 28.717920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138680, 33.870789, 28.747950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278756, 0.379121, 0.882362,
		0.387463, 0.796285, -0.464545,
		-0.878731, 0.471377, 0.075074,
		33.875061, 34.012203, 28.770472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823105, 34.312298, 28.481131>,  <34.490173, 33.682240, 28.717920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823105, 34.312298, 28.481131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475155, 34.367661, 28.670515>,  <34.266384, 34.400879, 28.784145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.475155, 34.367661, 28.670515>,  <34.823105, 34.312298, 28.481131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475155, 34.367661, 28.670515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483978, 0.424950, 0.764972,
		-0.095318, 0.894573, -0.436640,
		-0.869873, 0.138409, 0.473459,
		34.214191, 34.409184, 28.812553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635498, 35.023964, 28.501484>,  <34.823105, 34.312298, 28.481131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635498, 35.023964, 28.501484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.441555, 34.883282, 28.821787>,  <34.325188, 34.798870, 29.013969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.441555, 34.883282, 28.821787>,  <34.635498, 35.023964, 28.501484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441555, 34.883282, 28.821787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455504, 0.680050, 0.574499,
		-0.746612, 0.643298, -0.169522,
		-0.484857, -0.351710, 0.800758,
		34.296097, 34.777767, 29.062014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466408, 35.698936, 28.921366>,  <34.635498, 35.023964, 28.501484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466408, 35.698936, 28.921366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467140, 35.374386, 29.155172>,  <34.467579, 35.179657, 29.295456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.467140, 35.374386, 29.155172>,  <34.466408, 35.698936, 28.921366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467140, 35.374386, 29.155172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570913, 0.480745, 0.665540,
		-0.821009, 0.332491, 0.464106,
		0.001831, -0.811378, 0.584519,
		34.467690, 35.130974, 29.330528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678852, 35.964436, 29.475304>,  <34.466408, 35.698936, 28.921366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678852, 35.964436, 29.475304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699589, 35.583889, 29.596771>,  <34.712029, 35.355560, 29.669653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699589, 35.583889, 29.596771>,  <34.678852, 35.964436, 29.475304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699589, 35.583889, 29.596771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641179, 0.264835, 0.720244,
		-0.765638, 0.157369, 0.623725,
		0.051840, -0.951366, 0.303670,
		34.715141, 35.298481, 29.687872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729641, 36.048393, 30.104988>,  <34.678852, 35.964436, 29.475304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729641, 36.048393, 30.104988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864040, 35.677147, 30.040857>,  <34.944679, 35.454399, 30.002378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.864040, 35.677147, 30.040857>,  <34.729641, 36.048393, 30.104988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864040, 35.677147, 30.040857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711267, 0.138446, 0.689153,
		-0.617419, -0.345586, 0.706657,
		0.335995, -0.928118, -0.160325,
		34.964840, 35.398712, 29.992760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825474, 35.693104, 30.815350>,  <34.729641, 36.048393, 30.104988>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825474, 35.693104, 30.815350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078865, 35.533176, 30.550365>,  <35.230900, 35.437222, 30.391375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.078865, 35.533176, 30.550365>,  <34.825474, 35.693104, 30.815350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078865, 35.533176, 30.550365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763830, 0.186395, 0.617916,
		-0.123574, -0.897443, 0.423468,
		0.633477, -0.399816, -0.662461,
		35.268909, 35.413231, 30.351627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303326, 35.237144, 31.158306>,  <34.825474, 35.693104, 30.815350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303326, 35.237144, 31.158306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482559, 35.339943, 30.815805>,  <35.590099, 35.401623, 30.610304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.482559, 35.339943, 30.815805>,  <35.303326, 35.237144, 31.158306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482559, 35.339943, 30.815805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836750, 0.216647, 0.502905,
		0.314750, -0.941815, -0.117967,
		0.448086, 0.256998, -0.856254,
		35.616985, 35.417042, 30.558929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026085, 35.286995, 31.379313>,  <35.303326, 35.237144, 31.158306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026085, 35.286995, 31.379313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.036942, 35.478706, 31.028416>,  <36.043453, 35.593735, 30.817879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.036942, 35.478706, 31.028416>,  <36.026085, 35.286995, 31.379313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036942, 35.478706, 31.028416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705751, 0.612305, 0.356368,
		0.707940, -0.628785, -0.321637,
		0.027139, 0.479283, -0.877241,
		36.045082, 35.622490, 30.765244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726452, 35.257000, 31.115385>,  <36.026085, 35.286995, 31.379313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726452, 35.257000, 31.115385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562389, 35.582241, 30.950155>,  <36.463951, 35.777386, 30.851017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562389, 35.582241, 30.950155>,  <36.726452, 35.257000, 31.115385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562389, 35.582241, 30.950155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856754, 0.498780, 0.131113,
		0.312641, -0.300125, -0.901211,
		-0.410156, 0.813107, -0.413072,
		36.439342, 35.826172, 30.826233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196850, 35.624359, 30.672823>,  <36.726452, 35.257000, 31.115385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196850, 35.624359, 30.672823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917862, 35.904785, 30.732204>,  <36.750469, 36.073040, 30.767834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917862, 35.904785, 30.732204>,  <37.196850, 35.624359, 30.672823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917862, 35.904785, 30.732204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716610, 0.682805, 0.142294,
		-0.001607, 0.205629, -0.978629,
		-0.697472, 0.701067, 0.148453,
		36.708622, 36.115105, 30.776741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550774, 36.166397, 30.342278>,  <37.196850, 35.624359, 30.672823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550774, 36.166397, 30.342278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264904, 36.303234, 30.586313>,  <37.093380, 36.385338, 30.732735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.264904, 36.303234, 30.586313>,  <37.550774, 36.166397, 30.342278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.264904, 36.303234, 30.586313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572770, 0.786862, 0.229746,
		-0.401460, 0.513634, -0.758294,
		-0.714678, 0.342094, 0.610088,
		37.050499, 36.405861, 30.769339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549000, 36.971783, 30.448874>,  <37.550774, 36.166397, 30.342278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549000, 36.971783, 30.448874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862183, 37.031639, 30.207350>,  <38.050091, 37.067551, 30.062435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.862183, 37.031639, 30.207350>,  <37.549000, 36.971783, 30.448874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862183, 37.031639, 30.207350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448770, -0.536309, -0.714828,
		-0.430794, 0.830651, -0.352754,
		0.782957, 0.149638, -0.603810,
		38.097069, 37.076530, 30.026207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304180, 37.209824, 29.756498>,  <37.549000, 36.971783, 30.448874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304180, 37.209824, 29.756498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661800, 37.043621, 29.689535>,  <37.876373, 36.943901, 29.649357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.661800, 37.043621, 29.689535>,  <37.304180, 37.209824, 29.756498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661800, 37.043621, 29.689535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385982, -0.524874, -0.758634,
		0.227347, 0.742875, -0.629643,
		0.894053, -0.415504, -0.167408,
		37.930016, 36.918968, 29.639313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407772, 37.355816, 29.035614>,  <37.304180, 37.209824, 29.756498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407772, 37.355816, 29.035614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660870, 37.057064, 29.117392>,  <37.812729, 36.877811, 29.166458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.660870, 37.057064, 29.117392>,  <37.407772, 37.355816, 29.035614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660870, 37.057064, 29.117392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319392, -0.492233, -0.809750,
		0.705423, 0.447069, -0.550008,
		0.632746, -0.746884, 0.204442,
		37.850693, 36.833000, 29.178724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.784027, 37.273739, 28.393734>,  <37.407772, 37.355816, 29.035614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.784027, 37.273739, 28.393734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777119, 36.938839, 28.612352>,  <37.772972, 36.737900, 28.743523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.777119, 36.938839, 28.612352>,  <37.784027, 37.273739, 28.393734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.777119, 36.938839, 28.612352> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208264, -0.531625, -0.820975,
		0.977920, -0.128006, -0.165187,
		-0.017272, -0.837251, 0.546546,
		37.771938, 36.687664, 28.776316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114075, 36.877213, 27.949806>,  <37.784027, 37.273739, 28.393734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114075, 36.877213, 27.949806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946079, 36.633499, 28.218843>,  <37.845284, 36.487270, 28.380266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.946079, 36.633499, 28.218843>,  <38.114075, 36.877213, 27.949806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946079, 36.633499, 28.218843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126974, -0.694387, -0.708311,
		0.898603, -0.382884, 0.214271,
		-0.419988, -0.609284, 0.672594,
		37.820084, 36.450714, 28.420622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466568, 36.232124, 27.897278>,  <38.114075, 36.877213, 27.949806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466568, 36.232124, 27.897278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097816, 36.174519, 28.041172>,  <37.876568, 36.139957, 28.127508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.097816, 36.174519, 28.041172>,  <38.466568, 36.232124, 27.897278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097816, 36.174519, 28.041172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174309, -0.675014, -0.716919,
		0.346069, -0.723614, 0.597176,
		-0.921874, -0.144011, 0.359734,
		37.821255, 36.131317, 28.149092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453682, 35.496490, 27.787888>,  <38.466568, 36.232124, 27.897278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453682, 35.496490, 27.787888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.076756, 35.609917, 27.859018>,  <37.850597, 35.677971, 27.901697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.076756, 35.609917, 27.859018>,  <38.453682, 35.496490, 27.787888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076756, 35.609917, 27.859018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332913, -0.739039, -0.585654,
		-0.034651, -0.611074, 0.790815,
		-0.942321, 0.283566, 0.177826,
		37.794060, 35.694988, 27.912367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134224, 34.914413, 27.782404>,  <38.453682, 35.496490, 27.787888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134224, 34.914413, 27.782404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848431, 35.182270, 27.701317>,  <37.676952, 35.342983, 27.652664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.848431, 35.182270, 27.701317>,  <38.134224, 34.914413, 27.782404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848431, 35.182270, 27.701317> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387673, -0.620108, -0.682038,
		-0.582422, -0.408721, 0.702660,
		-0.714489, 0.669636, -0.202715,
		37.634083, 35.383160, 27.640501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437229, 34.672489, 27.992470>,  <38.134224, 34.914413, 27.782404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437229, 34.672489, 27.992470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377945, 34.948086, 27.708689>,  <37.342373, 35.113445, 27.538420>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.377945, 34.948086, 27.708689>,  <37.437229, 34.672489, 27.992470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.377945, 34.948086, 27.708689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339460, -0.709233, -0.617864,
		-0.928870, 0.149255, 0.339004,
		-0.148213, 0.688993, -0.709451,
		37.333481, 35.154785, 27.495853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827553, 34.596413, 27.733377>,  <37.437229, 34.672489, 27.992470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827553, 34.596413, 27.733377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959740, 34.842716, 27.447262>,  <37.039051, 34.990498, 27.275593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.959740, 34.842716, 27.447262>,  <36.827553, 34.596413, 27.733377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959740, 34.842716, 27.447262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496174, -0.531348, -0.686644,
		-0.802872, 0.581820, 0.129929,
		0.330466, 0.615755, -0.715289,
		37.058880, 35.027443, 27.232676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151543, 34.796585, 27.318434>,  <36.827553, 34.596413, 27.733377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151543, 34.796585, 27.318434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497917, 34.852757, 27.126421>,  <36.705742, 34.886459, 27.011213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.497917, 34.852757, 27.126421>,  <36.151543, 34.796585, 27.318434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.497917, 34.852757, 27.126421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393508, -0.401114, -0.827199,
		-0.308710, 0.905200, -0.292081,
		0.865939, 0.140428, -0.480031,
		36.757698, 34.894886, 26.982412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975178, 35.083969, 26.726368>,  <36.151543, 34.796585, 27.318434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975178, 35.083969, 26.726368> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330742, 34.913311, 26.659662>,  <36.544079, 34.810917, 26.619638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330742, 34.913311, 26.659662>,  <35.975178, 35.083969, 26.726368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330742, 34.913311, 26.659662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376817, -0.474027, -0.795806,
		0.260477, 0.770240, -0.582136,
		0.888910, -0.426647, -0.166766,
		36.597416, 34.785316, 26.609632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026028, 35.073059, 26.037458>,  <35.975178, 35.083969, 26.726368>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026028, 35.073059, 26.037458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292168, 34.798996, 26.156029>,  <36.451851, 34.634560, 26.227171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.292168, 34.798996, 26.156029>,  <36.026028, 35.073059, 26.037458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292168, 34.798996, 26.156029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371136, -0.648107, -0.664993,
		0.647741, 0.332439, -0.685504,
		0.665349, -0.685158, 0.296426,
		36.491772, 34.593449, 26.244957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271564, 34.776154, 25.452101>,  <36.026028, 35.073059, 26.037458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271564, 34.776154, 25.452101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.338409, 34.488918, 25.722336>,  <36.378517, 34.316578, 25.884478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.338409, 34.488918, 25.722336>,  <36.271564, 34.776154, 25.452101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338409, 34.488918, 25.722336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270625, -0.692316, -0.668924,
		0.948068, -0.071043, -0.310031,
		0.167117, -0.718088, 0.675589,
		36.388546, 34.273491, 25.925013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.515747, 34.246986, 25.088259>,  <36.271564, 34.776154, 25.452101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.515747, 34.246986, 25.088259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405006, 34.074326, 25.431662>,  <36.338562, 33.970730, 25.637703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.405006, 34.074326, 25.431662>,  <36.515747, 34.246986, 25.088259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.405006, 34.074326, 25.431662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476459, -0.714200, -0.512743,
		0.834469, -0.550997, -0.007934,
		-0.276854, -0.431648, 0.858505,
		36.321949, 33.944832, 25.689213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738388, 33.614418, 24.993248>,  <36.515747, 34.246986, 25.088259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738388, 33.614418, 24.993248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448231, 33.625999, 25.268335>,  <36.274136, 33.632946, 25.433388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448231, 33.625999, 25.268335>,  <36.738388, 33.614418, 24.993248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448231, 33.625999, 25.268335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474204, -0.745215, -0.468813,
		0.498927, -0.666196, 0.554306,
		-0.725398, 0.028950, 0.687720,
		36.230610, 33.634686, 25.474651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.586666, 32.908459, 25.151781>,  <36.738388, 33.614418, 24.993248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.586666, 32.908459, 25.151781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257000, 33.109325, 25.256533>,  <36.059200, 33.229847, 25.319384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.257000, 33.109325, 25.256533>,  <36.586666, 32.908459, 25.151781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257000, 33.109325, 25.256533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532875, -0.530959, -0.658883,
		-0.191822, -0.682577, 0.705190,
		-0.824165, 0.502166, 0.261879,
		36.009750, 33.259975, 25.335096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089611, 32.463318, 25.082483>,  <36.586666, 32.908459, 25.151781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089611, 32.463318, 25.082483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.909283, 32.820271, 25.090721>,  <35.801086, 33.034443, 25.095663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.909283, 32.820271, 25.090721>,  <36.089611, 32.463318, 25.082483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909283, 32.820271, 25.090721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534483, -0.251391, -0.806927,
		-0.714907, -0.374784, 0.590293,
		-0.450817, 0.892379, 0.020594,
		35.774036, 33.087982, 25.096899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.029003, 32.489876, 25.698322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117893, 32.751225, 25.408846>,  <35.171227, 32.908031, 25.235161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117893, 32.751225, 25.408846>,  <35.029003, 32.489876, 25.698322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117893, 32.751225, 25.408846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593966, -0.497895, -0.631906,
		-0.773189, 0.570273, 0.277433,
		0.222227, 0.653368, -0.723689,
		35.184563, 32.947235, 25.191740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377594, 32.931057, 25.514793>,  <35.029003, 32.489876, 25.698322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377594, 32.931057, 25.514793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.614182, 32.948433, 25.192732>,  <34.756134, 32.958858, 24.999495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.614182, 32.948433, 25.192732>,  <34.377594, 32.931057, 25.514793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614182, 32.948433, 25.192732> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675452, -0.518657, -0.524176,
		-0.440369, 0.853878, -0.277429,
		0.591473, 0.043441, -0.805154,
		34.791622, 32.961464, 24.951185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.877151, 32.877613, 25.044641>,  <34.377594, 32.931057, 25.514793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.877151, 32.877613, 25.044641> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.200607, 32.870068, 24.809441>,  <34.394680, 32.865540, 24.668320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.200607, 32.870068, 24.809441>,  <33.877151, 32.877613, 25.044641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200607, 32.870068, 24.809441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559076, -0.335770, -0.758085,
		-0.183135, 0.941755, -0.282061,
		0.808638, -0.018862, -0.588004,
		34.443199, 32.864410, 24.633039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.618286, 33.139786, 24.532022>,  <33.877151, 32.877613, 25.044641>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.618286, 33.139786, 24.532022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.950108, 32.957306, 24.403194>,  <34.149200, 32.847816, 24.325897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.950108, 32.957306, 24.403194>,  <33.618286, 33.139786, 24.532022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950108, 32.957306, 24.403194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487055, -0.308926, -0.816910,
		0.273178, 0.834533, -0.478464,
		0.829549, -0.456200, -0.322072,
		34.198971, 32.820446, 24.306574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651176, 33.405182, 23.875242>,  <33.618286, 33.139786, 24.532022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651176, 33.405182, 23.875242> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874313, 33.073353, 23.885223>,  <34.008194, 32.874256, 23.891212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.874313, 33.073353, 23.885223>,  <33.651176, 33.405182, 23.875242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874313, 33.073353, 23.885223> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495526, -0.357028, -0.791824,
		0.665785, 0.429346, -0.610240,
		0.557839, -0.829574, 0.024952,
		34.041664, 32.824482, 23.892710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912819, 33.321529, 23.232744>,  <33.651176, 33.405182, 23.875242>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912819, 33.321529, 23.232744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892170, 32.949085, 23.377171>,  <33.879780, 32.725620, 23.463827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.892170, 32.949085, 23.377171>,  <33.912819, 33.321529, 23.232744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892170, 32.949085, 23.377171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416452, -0.308540, -0.855202,
		0.907691, -0.194515, -0.371835,
		-0.051624, -0.931111, 0.361066,
		33.876682, 32.669750, 23.485491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112755, 32.971104, 22.601746>,  <33.912819, 33.321529, 23.232744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112755, 32.971104, 22.601746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956501, 32.699223, 22.850069>,  <33.862747, 32.536095, 22.999063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.956501, 32.699223, 22.850069>,  <34.112755, 32.971104, 22.601746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956501, 32.699223, 22.850069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235268, -0.578279, -0.781180,
		0.889974, -0.451212, 0.065983,
		-0.390635, -0.679706, 0.620809,
		33.839310, 32.495312, 23.036312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308430, 32.274975, 22.288427>,  <34.112755, 32.971104, 22.601746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308430, 32.274975, 22.288427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017651, 32.192276, 22.550360>,  <33.843182, 32.142654, 22.707520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.017651, 32.192276, 22.550360>,  <34.308430, 32.274975, 22.288427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.017651, 32.192276, 22.550360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261776, -0.798153, -0.542609,
		0.634838, -0.565868, 0.526094,
		-0.726948, -0.206750, 0.654829,
		33.799564, 32.130253, 22.746809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298531, 31.639332, 22.535789>,  <34.308430, 32.274975, 22.288427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298531, 31.639332, 22.535789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913414, 31.720602, 22.607077>,  <33.682346, 31.769363, 22.649849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.913414, 31.720602, 22.607077>,  <34.298531, 31.639332, 22.535789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913414, 31.720602, 22.607077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267184, -0.814775, -0.514543,
		0.040666, -0.543012, 0.838739,
		-0.962787, 0.203173, 0.178218,
		33.624577, 31.781553, 22.660542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.057476, 31.015642, 22.598005>,  <34.298531, 31.639332, 22.535789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.057476, 31.015642, 22.598005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726742, 31.223423, 22.511744>,  <33.528301, 31.348091, 22.459988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.726742, 31.223423, 22.511744>,  <34.057476, 31.015642, 22.598005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726742, 31.223423, 22.511744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244547, -0.677314, -0.693861,
		-0.506493, -0.520974, 0.687060,
		-0.826839, 0.519454, -0.215652,
		33.478691, 31.379259, 22.447048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.362888, 30.519037, 22.565151>,  <34.057476, 31.015642, 22.598005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.362888, 30.519037, 22.565151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.295052, 30.848822, 22.349186>,  <33.254349, 31.046692, 22.219606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.295052, 30.848822, 22.349186>,  <33.362888, 30.519037, 22.565151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295052, 30.848822, 22.349186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384360, -0.559798, -0.734094,
		-0.907473, 0.083026, 0.411825,
		-0.169590, 0.824459, -0.539913,
		33.244175, 31.096159, 22.187212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722656, 30.416723, 22.323597>,  <33.362888, 30.519037, 22.565151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722656, 30.416723, 22.323597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876114, 30.698233, 22.084425>,  <32.968189, 30.867138, 21.940922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.876114, 30.698233, 22.084425>,  <32.722656, 30.416723, 22.323597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876114, 30.698233, 22.084425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449245, -0.423464, -0.786674,
		-0.806841, 0.570422, 0.153705,
		0.383648, 0.703773, -0.597928,
		32.991207, 30.909365, 21.905046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151951, 30.589050, 21.785364>,  <32.722656, 30.416723, 22.323597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151951, 30.589050, 21.785364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486298, 30.723059, 21.611429>,  <32.686905, 30.803463, 21.507069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.486298, 30.723059, 21.611429>,  <32.151951, 30.589050, 21.785364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486298, 30.723059, 21.611429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330048, -0.326251, -0.885793,
		-0.438624, 0.883924, -0.162130,
		0.835869, 0.335020, -0.434839,
		32.737057, 30.823565, 21.480978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964417, 31.138390, 21.320555>,  <32.151951, 30.589050, 21.785364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964417, 31.138390, 21.320555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302464, 30.958002, 21.205730>,  <32.505291, 30.849770, 21.136837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.302464, 30.958002, 21.205730>,  <31.964417, 31.138390, 21.320555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.302464, 30.958002, 21.205730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369440, -0.104583, -0.923351,
		0.386382, 0.886391, -0.254991,
		0.845117, -0.450970, -0.287059,
		32.556000, 30.822712, 21.119614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.963863, 31.341299, 20.664419>,  <31.964417, 31.138390, 21.320555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.963863, 31.341299, 20.664419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232784, 31.045301, 20.656246>,  <32.394138, 30.867702, 20.651342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.232784, 31.045301, 20.656246>,  <31.963863, 31.341299, 20.664419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.232784, 31.045301, 20.656246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182313, -0.138759, -0.973400,
		0.717477, 0.658143, -0.228198,
		0.672301, -0.739996, -0.020432,
		32.434475, 30.823303, 20.650116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449234, 31.438211, 20.082150>,  <31.963863, 31.341299, 20.664419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449234, 31.438211, 20.082150> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459366, 31.048716, 20.172653>,  <32.465443, 30.815018, 20.226955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.459366, 31.048716, 20.172653>,  <32.449234, 31.438211, 20.082150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.459366, 31.048716, 20.172653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306684, -0.222985, -0.925323,
		0.951474, -0.045955, -0.304277,
		0.025326, -0.973738, 0.226258,
		32.466965, 30.756594, 20.240530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856258, 31.124025, 19.522522>,  <32.449234, 31.438211, 20.082150>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856258, 31.124025, 19.522522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645714, 30.833654, 19.699598>,  <32.519386, 30.659431, 19.805843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645714, 30.833654, 19.699598>,  <32.856258, 31.124025, 19.522522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645714, 30.833654, 19.699598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222981, -0.384577, -0.895757,
		0.820503, -0.570201, 0.040558,
		-0.526359, -0.725928, 0.442691,
		32.487804, 30.615875, 19.832405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045582, 30.654022, 19.141325>,  <32.856258, 31.124025, 19.522522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045582, 30.654022, 19.141325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719002, 30.495441, 19.309248>,  <32.523052, 30.400293, 19.410002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.719002, 30.495441, 19.309248>,  <33.045582, 30.654022, 19.141325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719002, 30.495441, 19.309248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288433, -0.349819, -0.891310,
		0.500216, -0.848795, 0.171260,
		-0.816450, -0.396450, 0.419806,
		32.474068, 30.376507, 19.435190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058945, 30.037590, 18.882433>,  <33.045582, 30.654022, 19.141325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058945, 30.037590, 18.882433> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683422, 30.103037, 19.003679>,  <32.458111, 30.142305, 19.076427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.683422, 30.103037, 19.003679>,  <33.058945, 30.037590, 18.882433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683422, 30.103037, 19.003679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343875, -0.394085, -0.852319,
		-0.020001, -0.904393, 0.426232,
		-0.938803, 0.163617, 0.303116,
		32.401783, 30.152122, 19.094614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.700394, 29.485764, 18.734331>,  <33.058945, 30.037590, 18.882433>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.700394, 29.485764, 18.734331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415989, 29.758112, 18.804625>,  <32.245346, 29.921520, 18.846802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.415989, 29.758112, 18.804625>,  <32.700394, 29.485764, 18.734331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.415989, 29.758112, 18.804625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507550, -0.323944, -0.798407,
		-0.486685, -0.656867, 0.575903,
		-0.711007, 0.680872, 0.175734,
		32.202686, 29.962374, 18.857346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.153641, 29.160824, 18.503241>,  <32.700394, 29.485764, 18.734331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.153641, 29.160824, 18.503241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.009686, 29.534002, 18.507143>,  <31.923313, 29.757910, 18.509485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.009686, 29.534002, 18.507143>,  <32.153641, 29.160824, 18.503241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009686, 29.534002, 18.507143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526142, -0.194302, -0.827902,
		-0.770492, -0.303081, 0.560789,
		-0.359884, 0.932946, 0.009755,
		31.901720, 29.813887, 18.510069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488894, 29.108648, 18.361050>,  <32.153641, 29.160824, 18.503241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488894, 29.108648, 18.361050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557287, 29.489901, 18.261204>,  <31.598324, 29.718653, 18.201296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557287, 29.489901, 18.261204>,  <31.488894, 29.108648, 18.361050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557287, 29.489901, 18.261204> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678826, -0.069660, -0.730988,
		-0.714115, 0.294432, 0.635098,
		0.170986, 0.953130, -0.249614,
		31.608583, 29.775839, 18.186319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878361, 29.269320, 18.386326>,  <31.488894, 29.108648, 18.361050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878361, 29.269320, 18.386326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.104332, 29.490980, 18.141777>,  <31.239914, 29.623976, 17.995049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.104332, 29.490980, 18.141777>,  <30.878361, 29.269320, 18.386326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.104332, 29.490980, 18.141777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706556, -0.057822, -0.705290,
		-0.426189, 0.830405, 0.358874,
		0.564926, 0.554152, -0.611371,
		31.273809, 29.657227, 17.958366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175190, 29.457787, 18.193754>,  <30.878361, 29.269320, 18.386326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175190, 29.457787, 18.193754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954380, 29.745527, 18.025087>,  <29.821894, 29.918171, 17.923887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.954380, 29.745527, 18.025087>,  <30.175190, 29.457787, 18.193754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954380, 29.745527, 18.025087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023913, 0.519153, 0.854347,
		0.833484, 0.461537, -0.303788,
		-0.552025, 0.719349, -0.421669,
		29.788773, 29.961332, 17.898586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522612, 30.079582, 18.193649>,  <30.175190, 29.457787, 18.193754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522612, 30.079582, 18.193649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125717, 30.092064, 18.241812>,  <29.887581, 30.099552, 18.270708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.125717, 30.092064, 18.241812>,  <30.522612, 30.079582, 18.193649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125717, 30.092064, 18.241812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121537, 0.449073, 0.885190,
		-0.026449, 0.892950, -0.449378,
		-0.992234, 0.031204, 0.120404,
		29.828047, 30.101425, 18.277933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381977, 30.701260, 18.129461>,  <30.522612, 30.079582, 18.193649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381977, 30.701260, 18.129461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.113039, 30.507004, 18.352926>,  <29.951675, 30.390450, 18.487005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.113039, 30.507004, 18.352926>,  <30.381977, 30.701260, 18.129461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113039, 30.507004, 18.352926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045711, 0.780508, 0.623473,
		-0.738823, 0.393653, -0.546971,
		-0.672347, -0.485639, 0.558663,
		29.911335, 30.361313, 18.520525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024179, 31.220512, 18.401752>,  <30.381977, 30.701260, 18.129461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024179, 31.220512, 18.401752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853254, 30.942762, 18.633354>,  <29.750698, 30.776112, 18.772314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.853254, 30.942762, 18.633354>,  <30.024179, 31.220512, 18.401752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.853254, 30.942762, 18.633354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243293, 0.705108, 0.666056,
		-0.870753, 0.143748, -0.470240,
		-0.427314, -0.694376, 0.579002,
		29.725060, 30.734449, 18.807055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.369297, 31.583281, 18.673286>,  <30.024179, 31.220512, 18.401752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.369297, 31.583281, 18.673286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445141, 31.279755, 18.922525>,  <29.490646, 31.097639, 19.072069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.445141, 31.279755, 18.922525>,  <29.369297, 31.583281, 18.673286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445141, 31.279755, 18.922525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033008, 0.629323, 0.776442,
		-0.981305, -0.167787, 0.094277,
		0.189608, -0.758815, 0.623096,
		29.502024, 31.052111, 19.109455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947584, 31.708649, 19.252733>,  <29.369297, 31.583281, 18.673286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947584, 31.708649, 19.252733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208881, 31.449547, 19.409544>,  <29.365660, 31.294085, 19.503632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.208881, 31.449547, 19.409544>,  <28.947584, 31.708649, 19.252733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.208881, 31.449547, 19.409544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029868, 0.495320, 0.868197,
		-0.756559, -0.578852, 0.304217,
		0.653242, -0.647756, 0.392028,
		29.404854, 31.255220, 19.527153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.729918, 31.522556, 19.997210>,  <28.947584, 31.708649, 19.252733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.729918, 31.522556, 19.997210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.105946, 31.386520, 19.987360>,  <29.331562, 31.304899, 19.981451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.105946, 31.386520, 19.987360>,  <28.729918, 31.522556, 19.997210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.105946, 31.386520, 19.987360> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150654, 0.349475, 0.924754,
		-0.305895, -0.873044, 0.379767,
		0.940070, -0.340091, -0.024624,
		29.387966, 31.284492, 19.979973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837498, 31.037609, 20.615067>,  <28.729918, 31.522556, 19.997210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837498, 31.037609, 20.615067> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.191256, 31.185820, 20.501537>,  <29.403511, 31.274746, 20.433420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.191256, 31.185820, 20.501537>,  <28.837498, 31.037609, 20.615067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191256, 31.185820, 20.501537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220886, 0.203420, 0.953850,
		0.411162, -0.906273, 0.098059,
		0.884395, 0.370527, -0.283822,
		29.456573, 31.296978, 20.416391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327810, 30.840487, 21.176083>,  <28.837498, 31.037609, 20.615067>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327810, 30.840487, 21.176083> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.490774, 31.146439, 20.976492>,  <29.588552, 31.330009, 20.856737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.490774, 31.146439, 20.976492>,  <29.327810, 30.840487, 21.176083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490774, 31.146439, 20.976492> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388336, 0.349420, 0.852702,
		0.826567, -0.541169, -0.154674,
		0.407410, 0.764880, -0.498975,
		29.612997, 31.375902, 20.826799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.957163, 30.823593, 21.445877>,  <29.327810, 30.840487, 21.176083>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.957163, 30.823593, 21.445877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.980917, 31.176107, 21.258343>,  <29.995169, 31.387617, 21.145823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.980917, 31.176107, 21.258343>,  <29.957163, 30.823593, 21.445877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.980917, 31.176107, 21.258343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440647, 0.398285, 0.804487,
		0.895714, -0.254364, -0.364685,
		0.059384, 0.881288, -0.468834,
		29.998732, 31.440495, 21.117693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654596, 30.930660, 21.473618>,  <29.957163, 30.823593, 21.445877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654596, 30.930660, 21.473618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.440426, 31.266424, 21.436295>,  <30.311924, 31.467882, 21.413900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.440426, 31.266424, 21.436295>,  <30.654596, 30.930660, 21.473618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440426, 31.266424, 21.436295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417177, 0.358913, 0.834952,
		0.734358, 0.408130, -0.542354,
		-0.535427, 0.839412, -0.093308,
		30.279799, 31.518248, 21.408302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.141891, 31.335705, 21.613186>,  <30.654596, 30.930660, 21.473618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.141891, 31.335705, 21.613186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790735, 31.521410, 21.660128>,  <30.580042, 31.632833, 21.688293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.790735, 31.521410, 21.660128>,  <31.141891, 31.335705, 21.613186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.790735, 31.521410, 21.660128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277385, 0.293247, 0.914912,
		0.390346, 0.835743, -0.386218,
		-0.877888, 0.464263, 0.117354,
		30.527369, 31.660688, 21.695333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360582, 31.877810, 22.070244>,  <31.141891, 31.335705, 21.613186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.360582, 31.877810, 22.070244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963142, 31.914907, 22.096029>,  <30.724678, 31.937166, 22.111500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.963142, 31.914907, 22.096029>,  <31.360582, 31.877810, 22.070244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963142, 31.914907, 22.096029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102621, 0.502892, 0.858236,
		0.047178, 0.859359, -0.509192,
		-0.993601, 0.092743, 0.064463,
		30.665062, 31.942730, 22.115368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183922, 32.617344, 22.290909>,  <31.360582, 31.877810, 22.070244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183922, 32.617344, 22.290909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899633, 32.356758, 22.397089>,  <30.729061, 32.200405, 22.460796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.899633, 32.356758, 22.397089>,  <31.183922, 32.617344, 22.290909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899633, 32.356758, 22.397089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200865, 0.173702, 0.964096,
		-0.674188, 0.738523, 0.007403,
		-0.710721, -0.651469, 0.265450,
		30.686417, 32.161316, 22.476725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737825, 32.978115, 22.802538>,  <31.183922, 32.617344, 22.290909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737825, 32.978115, 22.802538> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.745790, 32.581638, 22.854919>,  <30.750570, 32.343754, 22.886349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.745790, 32.581638, 22.854919>,  <30.737825, 32.978115, 22.802538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745790, 32.581638, 22.854919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206210, 0.132233, 0.969532,
		-0.978305, 0.007698, 0.207026,
		0.019912, -0.991189, 0.130952,
		30.751764, 32.284283, 22.894205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504620, 32.976349, 23.425093>,  <30.737825, 32.978115, 22.802538>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504620, 32.976349, 23.425093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676487, 32.619728, 23.367794>,  <30.779608, 32.405754, 23.333414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.676487, 32.619728, 23.367794>,  <30.504620, 32.976349, 23.425093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.676487, 32.619728, 23.367794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345094, 0.015531, 0.938440,
		-0.834442, -0.452654, 0.314342,
		0.429671, -0.891551, -0.143248,
		30.805387, 32.352264, 23.324820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545023, 32.724094, 24.056263>,  <30.504620, 32.976349, 23.425093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545023, 32.724094, 24.056263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.821983, 32.502979, 23.870787>,  <30.988159, 32.370312, 23.759501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.821983, 32.502979, 23.870787>,  <30.545023, 32.724094, 24.056263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821983, 32.502979, 23.870787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435242, -0.192559, 0.879480,
		-0.575455, -0.810768, 0.107269,
		0.692399, -0.552789, -0.463690,
		31.029703, 32.337143, 23.731680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.516844, 32.228672, 24.539722>,  <30.545023, 32.724094, 24.056263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.516844, 32.228672, 24.539722> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851555, 32.224476, 24.320747>,  <31.052382, 32.221958, 24.189362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.851555, 32.224476, 24.320747>,  <30.516844, 32.228672, 24.539722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.851555, 32.224476, 24.320747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546798, -0.036029, 0.836489,
		-0.028465, -0.999296, -0.024435,
		0.836781, -0.010449, -0.547438,
		31.102589, 32.221329, 24.156515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.967680, 31.685322, 24.853628>,  <30.516844, 32.228672, 24.539722>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.967680, 31.685322, 24.853628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.215563, 31.929045, 24.655756>,  <31.364292, 32.075279, 24.537033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.215563, 31.929045, 24.655756>,  <30.967680, 31.685322, 24.853628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215563, 31.929045, 24.655756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563946, 0.092647, 0.820598,
		0.545826, -0.787504, -0.286201,
		0.619709, 0.609306, -0.494680,
		31.401476, 32.111835, 24.507353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683819, 31.544977, 25.124870>,  <30.967680, 31.685322, 24.853628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683819, 31.544977, 25.124870> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.702801, 31.906820, 24.955433>,  <31.714190, 32.123928, 24.853771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.702801, 31.906820, 24.955433>,  <31.683819, 31.544977, 25.124870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702801, 31.906820, 24.955433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569778, 0.323797, 0.755320,
		0.820427, -0.277199, -0.500059,
		0.047456, 0.904608, -0.423594,
		31.717037, 32.178204, 24.828354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401573, 31.768686, 25.269327>,  <31.683819, 31.544977, 25.124870>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401573, 31.768686, 25.269327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.202721, 32.101463, 25.170752>,  <32.083408, 32.301128, 25.111607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.202721, 32.101463, 25.170752>,  <32.401573, 31.768686, 25.269327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202721, 32.101463, 25.170752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516427, 0.511934, 0.686460,
		0.697256, 0.213992, -0.684136,
		-0.497130, 0.831944, -0.246438,
		32.053581, 32.351048, 25.096821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.809708, 34.332512, 26.393982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.431496, 34.445873, 26.458046>,  <37.204567, 34.513889, 26.496485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.431496, 34.445873, 26.458046>,  <37.809708, 34.332512, 26.393982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431496, 34.445873, 26.458046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323775, 0.767704, 0.552992,
		0.033767, 0.574727, -0.817648,
		-0.945531, 0.283407, 0.160160,
		37.147835, 34.530895, 26.506094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811150, 35.058353, 26.258816>,  <37.809708, 34.332512, 26.393982>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811150, 35.058353, 26.258816> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485603, 35.018753, 26.487841>,  <37.290276, 34.994991, 26.625256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.485603, 35.018753, 26.487841>,  <37.811150, 35.058353, 26.258816>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485603, 35.018753, 26.487841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265389, 0.813263, 0.517853,
		-0.516912, 0.573412, -0.635610,
		-0.813862, -0.099000, 0.572563,
		37.241444, 34.989052, 26.659609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500053, 35.759556, 26.302513>,  <37.811150, 35.058353, 26.258816>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500053, 35.759556, 26.302513> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.336327, 35.536469, 26.591347>,  <37.238091, 35.402615, 26.764647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.336327, 35.536469, 26.591347>,  <37.500053, 35.759556, 26.302513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336327, 35.536469, 26.591347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334061, 0.644856, 0.687433,
		-0.849037, 0.522598, -0.077637,
		-0.409316, -0.557721, 0.722086,
		37.213531, 35.369152, 26.807972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.048813, 36.157333, 26.692057>,  <37.500053, 35.759556, 26.302513>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.048813, 36.157333, 26.692057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.165100, 35.864189, 26.938114>,  <37.234871, 35.688305, 27.085749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.165100, 35.864189, 26.938114>,  <37.048813, 36.157333, 26.692057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165100, 35.864189, 26.938114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109273, 0.664137, 0.739582,
		-0.950550, -0.147788, 0.273155,
		0.290714, -0.732858, 0.615146,
		37.252316, 35.644333, 27.122658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.691746, 36.232327, 27.279919>,  <37.048813, 36.157333, 26.692057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.691746, 36.232327, 27.279919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.995480, 35.994732, 27.386190>,  <37.177719, 35.852177, 27.449953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.995480, 35.994732, 27.386190>,  <36.691746, 36.232327, 27.279919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995480, 35.994732, 27.386190> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219724, 0.618380, 0.754538,
		-0.612478, -0.514572, 0.600072,
		0.759337, -0.593988, 0.265680,
		37.223282, 35.816536, 27.465895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582077, 36.138199, 28.048166>,  <36.691746, 36.232327, 27.279919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582077, 36.138199, 28.048166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.939510, 35.959881, 28.027105>,  <37.153969, 35.852890, 28.014469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.939510, 35.959881, 28.027105>,  <36.582077, 36.138199, 28.048166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.939510, 35.959881, 28.027105> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281475, 0.465078, 0.839330,
		-0.349683, -0.764832, 0.541067,
		0.893585, -0.445796, -0.052651,
		37.207584, 35.826141, 28.011311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709347, 35.866566, 28.744192>,  <36.582077, 36.138199, 28.048166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709347, 35.866566, 28.744192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.060444, 35.917458, 28.559423>,  <37.271103, 35.947994, 28.448563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.060444, 35.917458, 28.559423>,  <36.709347, 35.866566, 28.744192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.060444, 35.917458, 28.559423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380770, 0.399943, 0.833703,
		0.290813, -0.907667, 0.302604,
		0.877748, 0.127229, -0.461921,
		37.323769, 35.955627, 28.420847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231133, 35.601810, 29.215996>,  <36.709347, 35.866566, 28.744192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231133, 35.601810, 29.215996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.428150, 35.860210, 28.982729>,  <37.546360, 36.015251, 28.842770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.428150, 35.860210, 28.982729>,  <37.231133, 35.601810, 29.215996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428150, 35.860210, 28.982729> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507154, 0.331493, 0.795555,
		0.707247, -0.687598, -0.164350,
		0.492541, 0.646004, -0.583166,
		37.575912, 36.054012, 28.807779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910423, 35.581562, 29.434315>,  <37.231133, 35.601810, 29.215996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910423, 35.581562, 29.434315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869255, 35.920029, 29.225163>,  <37.844555, 36.123108, 29.099670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.869255, 35.920029, 29.225163>,  <37.910423, 35.581562, 29.434315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869255, 35.920029, 29.225163> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636913, 0.459839, 0.618781,
		0.764035, -0.269342, -0.586264,
		-0.102923, 0.846170, -0.522880,
		37.838379, 36.173882, 29.068298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608910, 35.833748, 29.442730>,  <37.910423, 35.581562, 29.434315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608910, 35.833748, 29.442730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.377380, 36.146114, 29.348814>,  <38.238461, 36.333534, 29.292465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.377380, 36.146114, 29.348814>,  <38.608910, 35.833748, 29.442730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377380, 36.146114, 29.348814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398663, 0.522168, 0.753929,
		0.711356, 0.342792, -0.613568,
		-0.578827, 0.780918, -0.234789,
		38.203732, 36.380390, 29.278378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063953, 36.401962, 29.433319>,  <38.608910, 35.833748, 29.442730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063953, 36.401962, 29.433319> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.704971, 36.567982, 29.493073>,  <38.489582, 36.667595, 29.528925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.704971, 36.567982, 29.493073>,  <39.063953, 36.401962, 29.433319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704971, 36.567982, 29.493073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422519, 0.711532, 0.561427,
		0.126727, 0.566972, -0.813931,
		-0.897451, 0.415049, 0.149386,
		38.435738, 36.692497, 29.537888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.139961, 37.183258, 29.322807>,  <39.063953, 36.401962, 29.433319>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.139961, 37.183258, 29.322807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817516, 37.122906, 29.551685>,  <38.624050, 37.086693, 29.689013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.817516, 37.122906, 29.551685>,  <39.139961, 37.183258, 29.322807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817516, 37.122906, 29.551685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231216, 0.809769, 0.539271,
		-0.544716, 0.567016, -0.617882,
		-0.806117, -0.150885, 0.572197,
		38.575680, 37.077641, 29.723345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872871, 37.906704, 29.395369>,  <39.139961, 37.183258, 29.322807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872871, 37.906704, 29.395369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.798470, 37.606262, 29.648746>,  <38.753830, 37.425999, 29.800774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.798470, 37.606262, 29.648746>,  <38.872871, 37.906704, 29.395369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798470, 37.606262, 29.648746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379717, 0.539655, 0.751390,
		-0.906211, 0.380289, 0.184829,
		-0.186002, -0.751101, 0.633444,
		38.742668, 37.380932, 29.838779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808681, 38.183105, 30.040327>,  <38.872871, 37.906704, 29.395369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808681, 38.183105, 30.040327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915852, 37.804291, 30.111137>,  <38.980156, 37.577003, 30.153624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.915852, 37.804291, 30.111137>,  <38.808681, 38.183105, 30.040327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915852, 37.804291, 30.111137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628126, 0.311029, 0.713246,
		-0.730529, -0.079904, 0.678191,
		0.267928, -0.947036, 0.177026,
		38.996231, 37.520180, 30.164246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943939, 38.908489, 30.265327>,  <38.808681, 38.183105, 30.040327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943939, 38.908489, 30.265327> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060352, 39.291035, 30.275673>,  <39.130199, 39.520561, 30.281879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.060352, 39.291035, 30.275673>,  <38.943939, 38.908489, 30.265327>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060352, 39.291035, 30.275673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723400, 0.237670, -0.648233,
		-0.626093, 0.169948, 0.761003,
		0.291034, 0.956363, 0.025863,
		39.147663, 39.577942, 30.283432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253551, 39.302982, 30.207594>,  <38.943939, 38.908489, 30.265327>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253551, 39.302982, 30.207594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539051, 39.557919, 30.091415>,  <38.710350, 39.710880, 30.021708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.539051, 39.557919, 30.091415>,  <38.253551, 39.302982, 30.207594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.539051, 39.557919, 30.091415> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618218, 0.378362, -0.688947,
		-0.329203, 0.671293, 0.664072,
		0.713745, 0.637345, -0.290448,
		38.753174, 39.749123, 30.004282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910412, 39.884033, 30.094168>,  <38.253551, 39.302982, 30.207594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910412, 39.884033, 30.094168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.236675, 39.902920, 29.863525>,  <38.432434, 39.914253, 29.725140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.236675, 39.902920, 29.863525>,  <37.910412, 39.884033, 30.094168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.236675, 39.902920, 29.863525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551051, 0.366949, -0.749461,
		0.176194, 0.929042, 0.325326,
		0.815658, 0.047221, -0.576604,
		38.481373, 39.917088, 29.690544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667213, 40.311008, 29.533262>,  <37.910412, 39.884033, 30.094168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667213, 40.311008, 29.533262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.017513, 40.177567, 29.393675>,  <38.227692, 40.097500, 29.309923>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.017513, 40.177567, 29.393675>,  <37.667213, 40.311008, 29.533262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017513, 40.177567, 29.393675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330132, 0.113594, -0.937075,
		0.352253, 0.935844, -0.010655,
		0.875745, -0.333605, -0.348966,
		38.280235, 40.077484, 29.288984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041695, 40.785110, 29.062450>,  <37.667213, 40.311008, 29.533262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041695, 40.785110, 29.062450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133499, 40.406193, 28.973055>,  <38.188583, 40.178841, 28.919418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.133499, 40.406193, 28.973055>,  <38.041695, 40.785110, 29.062450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133499, 40.406193, 28.973055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330353, 0.140169, -0.933391,
		0.915527, 0.288058, -0.280772,
		0.229515, -0.947299, -0.223490,
		38.202354, 40.122002, 28.906008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175823, 40.859554, 28.381094>,  <38.041695, 40.785110, 29.062450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175823, 40.859554, 28.381094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154514, 40.460567, 28.399916>,  <38.141727, 40.221176, 28.411209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.154514, 40.460567, 28.399916>,  <38.175823, 40.859554, 28.381094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.154514, 40.460567, 28.399916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467738, -0.016706, -0.883709,
		0.882260, -0.069090, -0.465665,
		-0.053276, -0.997470, 0.047056,
		38.138531, 40.161327, 28.414032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.444691, 40.534637, 27.760859>,  <38.175823, 40.859554, 28.381094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.444691, 40.534637, 27.760859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214062, 40.244297, 27.910902>,  <38.075684, 40.070091, 28.000929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.214062, 40.244297, 27.910902>,  <38.444691, 40.534637, 27.760859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214062, 40.244297, 27.910902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380394, -0.167840, -0.909467,
		0.723098, -0.667059, -0.179339,
		-0.576567, -0.725853, 0.375109,
		38.041092, 40.026543, 28.023436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449940, 39.944160, 27.220007>,  <38.444691, 40.534637, 27.760859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449940, 39.944160, 27.220007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132019, 39.867294, 27.450266>,  <37.941269, 39.821175, 27.588421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.132019, 39.867294, 27.450266>,  <38.449940, 39.944160, 27.220007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132019, 39.867294, 27.450266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529366, -0.244307, -0.812457,
		0.296764, -0.950466, 0.092446,
		-0.794797, -0.192170, 0.575645,
		37.893581, 39.809643, 27.622959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285896, 39.272400, 27.224825>,  <38.449940, 39.944160, 27.220007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285896, 39.272400, 27.224825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.937119, 39.445747, 27.315964>,  <37.727852, 39.549755, 27.370647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.937119, 39.445747, 27.315964>,  <38.285896, 39.272400, 27.224825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937119, 39.445747, 27.315964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433833, -0.468127, -0.769835,
		-0.226958, -0.770098, 0.596187,
		-0.871940, 0.433366, 0.227849,
		37.675537, 39.575756, 27.384317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817757, 38.747341, 27.034813>,  <38.285896, 39.272400, 27.224825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817757, 38.747341, 27.034813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548866, 39.037704, 27.093010>,  <37.387531, 39.211922, 27.127928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.548866, 39.037704, 27.093010>,  <37.817757, 38.747341, 27.034813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548866, 39.037704, 27.093010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577394, -0.391042, -0.716730,
		-0.463390, -0.565809, 0.682004,
		-0.672225, 0.725911, 0.145490,
		37.347198, 39.255478, 27.136658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168571, 38.360966, 27.125540>,  <37.817757, 38.747341, 27.034813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168571, 38.360966, 27.125540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.073116, 38.737610, 27.030525>,  <37.015842, 38.963596, 26.973516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.073116, 38.737610, 27.030525>,  <37.168571, 38.360966, 27.125540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.073116, 38.737610, 27.030525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597450, -0.335189, -0.728493,
		-0.765575, -0.031929, 0.642553,
		-0.238637, 0.941610, -0.237537,
		37.001526, 39.020092, 26.959265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.400898, 38.335148, 26.977636>,  <37.168571, 38.360966, 27.125540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.400898, 38.335148, 26.977636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.527031, 38.676979, 26.812584>,  <36.602711, 38.882076, 26.713552>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.527031, 38.676979, 26.812584>,  <36.400898, 38.335148, 26.977636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527031, 38.676979, 26.812584> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719312, -0.068380, -0.691313,
		-0.618995, 0.514806, 0.593144,
		0.315333, 0.854576, -0.412633,
		36.621632, 38.933353, 26.688793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.786816, 38.642895, 26.667305>,  <36.400898, 38.335148, 26.977636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.786816, 38.642895, 26.667305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.090485, 38.835541, 26.492165>,  <36.272686, 38.951130, 26.387081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.090485, 38.835541, 26.492165>,  <35.786816, 38.642895, 26.667305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090485, 38.835541, 26.492165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528935, 0.064445, -0.846212,
		-0.379330, 0.874011, 0.303667,
		0.759168, 0.481614, -0.437849,
		36.318233, 38.980026, 26.360809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509800, 39.349312, 26.297373>,  <35.786816, 38.642895, 26.667305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509800, 39.349312, 26.297373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.825165, 39.166054, 26.133175>,  <36.014385, 39.056099, 26.034657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.825165, 39.166054, 26.133175>,  <35.509800, 39.349312, 26.297373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825165, 39.166054, 26.133175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547552, -0.218562, -0.807723,
		0.280336, 0.861588, -0.423176,
		0.788415, -0.458145, -0.410494,
		36.061687, 39.028610, 26.010027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467102, 39.376591, 25.579880>,  <35.509800, 39.349312, 26.297373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467102, 39.376591, 25.579880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.076908, 39.443367, 25.637226>,  <34.842793, 39.483433, 25.671635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.076908, 39.443367, 25.637226>,  <35.467102, 39.376591, 25.579880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076908, 39.443367, 25.637226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188740, 0.299761, 0.935158,
		0.113142, 0.939294, -0.323922,
		-0.975488, 0.166943, 0.143367,
		34.784264, 39.493450, 25.680237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487354, 40.035221, 25.849350>,  <35.467102, 39.376591, 25.579880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487354, 40.035221, 25.849350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.116566, 39.918152, 25.943218>,  <34.894093, 39.847912, 25.999538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.116566, 39.918152, 25.943218>,  <35.487354, 40.035221, 25.849350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116566, 39.918152, 25.943218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115098, 0.373497, 0.920463,
		-0.357042, 0.880252, -0.312535,
		-0.926970, -0.292672, 0.234669,
		34.838474, 39.830349, 26.013618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143459, 40.574894, 26.146603>,  <35.487354, 40.035221, 25.849350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143459, 40.574894, 26.146603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.922817, 40.270519, 26.283247>,  <34.790432, 40.087894, 26.365232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.922817, 40.270519, 26.283247>,  <35.143459, 40.574894, 26.146603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.922817, 40.270519, 26.283247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110121, 0.339530, 0.934127,
		-0.826801, 0.552892, -0.103492,
		-0.551610, -0.760940, 0.341609,
		34.757336, 40.042236, 26.385729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676029, 40.929390, 26.616758>,  <35.143459, 40.574894, 26.146603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676029, 40.929390, 26.616758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.712467, 40.548267, 26.732594>,  <34.734329, 40.319595, 26.802095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.712467, 40.548267, 26.732594>,  <34.676029, 40.929390, 26.616758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.712467, 40.548267, 26.732594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040822, 0.294125, 0.954895,
		-0.995005, -0.075165, 0.065690,
		0.091096, -0.952807, 0.289588,
		34.739796, 40.262424, 26.819469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215576, 40.864353, 27.240145>,  <34.676029, 40.929390, 26.616758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215576, 40.864353, 27.240145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462051, 40.549850, 27.258547>,  <34.609936, 40.361149, 27.269588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.462051, 40.549850, 27.258547>,  <34.215576, 40.864353, 27.240145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462051, 40.549850, 27.258547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215392, 0.224409, 0.950393,
		-0.757576, -0.575710, 0.307630,
		0.616186, -0.786256, 0.046004,
		34.646908, 40.313972, 27.272348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056412, 40.502296, 27.835390>,  <34.215576, 40.864353, 27.240145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056412, 40.502296, 27.835390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.421928, 40.362297, 27.752947>,  <34.641239, 40.278297, 27.703482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.421928, 40.362297, 27.752947>,  <34.056412, 40.502296, 27.835390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421928, 40.362297, 27.752947> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237766, 0.049525, 0.970059,
		-0.329315, -0.935439, 0.128474,
		0.913793, -0.350002, -0.206106,
		34.696068, 40.257298, 27.691114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092743, 39.922356, 28.251116>,  <34.056412, 40.502296, 27.835390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092743, 39.922356, 28.251116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.470066, 40.004272, 28.146635>,  <34.696461, 40.053425, 28.083946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.470066, 40.004272, 28.146635>,  <34.092743, 39.922356, 28.251116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470066, 40.004272, 28.146635> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294396, -0.152801, 0.943389,
		0.153291, -0.966804, -0.204430,
		0.943310, 0.204797, -0.261201,
		34.753059, 40.065712, 28.068275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535534, 39.346264, 28.423742>,  <34.092743, 39.922356, 28.251116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535534, 39.346264, 28.423742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.774799, 39.665951, 28.400263>,  <34.918358, 39.857765, 28.386175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.774799, 39.665951, 28.400263>,  <34.535534, 39.346264, 28.423742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774799, 39.665951, 28.400263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348423, -0.193411, 0.917166,
		0.721666, -0.569067, -0.394158,
		0.598164, 0.799221, -0.058698,
		34.954250, 39.905716, 28.382654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.145935, 39.156422, 28.818237>,  <34.535534, 39.346264, 28.423742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.145935, 39.156422, 28.818237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.185993, 39.554401, 28.815279>,  <35.210030, 39.793190, 28.813503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.185993, 39.554401, 28.815279>,  <35.145935, 39.156422, 28.818237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185993, 39.554401, 28.815279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402645, -0.033728, 0.914735,
		0.909862, -0.094584, -0.403987,
		0.100145, 0.994945, -0.007396,
		35.216038, 39.852886, 28.813061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839180, 39.262421, 29.014709>,  <35.145935, 39.156422, 28.818237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839180, 39.262421, 29.014709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637951, 39.600250, 29.088039>,  <35.517212, 39.802948, 29.132036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.637951, 39.600250, 29.088039>,  <35.839180, 39.262421, 29.014709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637951, 39.600250, 29.088039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446241, 0.072188, 0.891996,
		0.740126, 0.530545, -0.413201,
		-0.503073, 0.844577, 0.183323,
		35.487030, 39.853622, 29.143036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368999, 39.665127, 29.221809>,  <35.839180, 39.262421, 29.014709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368999, 39.665127, 29.221809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.032089, 39.826744, 29.364536>,  <35.829945, 39.923714, 29.450172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.032089, 39.826744, 29.364536>,  <36.368999, 39.665127, 29.221809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.032089, 39.826744, 29.364536> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466403, 0.214375, 0.858203,
		0.270258, 0.889265, -0.369010,
		-0.842276, 0.404044, 0.356819,
		35.779408, 39.947956, 29.471582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.465115, 40.434792, 29.413120>,  <36.368999, 39.665127, 29.221809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.465115, 40.434792, 29.413120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169754, 40.277409, 29.632195>,  <35.992538, 40.182980, 29.763639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.169754, 40.277409, 29.632195>,  <36.465115, 40.434792, 29.413120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169754, 40.277409, 29.632195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401940, 0.395350, 0.825920,
		-0.541489, 0.829995, -0.133781,
		-0.738400, -0.393455, 0.547686,
		35.948235, 40.159370, 29.796499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<34.480728, 39.321060, 21.861759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192574, 39.082996, 22.004211>,  <34.019680, 38.940159, 22.089682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192574, 39.082996, 22.004211>,  <34.480728, 39.321060, 21.861759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192574, 39.082996, 22.004211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347092, 0.135192, 0.928036,
		-0.600477, 0.792153, 0.109185,
		-0.720385, -0.595162, 0.356129,
		33.976460, 38.904449, 22.111050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002850, 39.677139, 22.314486>,  <34.480728, 39.321060, 21.861759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002850, 39.677139, 22.314486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996883, 39.292118, 22.422758>,  <33.993301, 39.061104, 22.487722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996883, 39.292118, 22.422758>,  <34.002850, 39.677139, 22.314486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996883, 39.292118, 22.422758> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095229, 0.268113, 0.958669,
		-0.995344, 0.040080, 0.087662,
		-0.014920, -0.962553, 0.270681,
		33.992409, 39.003353, 22.503962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.579506, 39.713512, 22.814837>,  <34.002850, 39.677139, 22.314486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.579506, 39.713512, 22.814837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758488, 39.359055, 22.863039>,  <33.865879, 39.146378, 22.891960>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758488, 39.359055, 22.863039>,  <33.579506, 39.713512, 22.814837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758488, 39.359055, 22.863039> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197468, 0.229322, 0.953109,
		-0.872232, -0.402680, 0.277598,
		0.447458, -0.886149, 0.120506,
		33.892727, 39.093208, 22.899191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191818, 39.290020, 23.444510>,  <33.579506, 39.713512, 22.814837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191818, 39.290020, 23.444510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561096, 39.144360, 23.395346>,  <33.782661, 39.056961, 23.365847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561096, 39.144360, 23.395346>,  <33.191818, 39.290020, 23.444510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561096, 39.144360, 23.395346> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128673, -0.008497, 0.991651,
		-0.362160, -0.931299, 0.039012,
		0.923192, -0.364156, -0.122910,
		33.838055, 39.035114, 23.358473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252464, 38.844913, 23.907751>,  <33.191818, 39.290020, 23.444510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252464, 38.844913, 23.907751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645908, 38.892117, 23.853210>,  <33.881973, 38.920441, 23.820486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645908, 38.892117, 23.853210>,  <33.252464, 38.844913, 23.907751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645908, 38.892117, 23.853210> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134399, 0.024367, 0.990628,
		0.120229, -0.992713, 0.008107,
		0.983606, 0.118013, -0.136349,
		33.940990, 38.927521, 23.812305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.563019, 38.518055, 24.468309>,  <33.252464, 38.844913, 23.907751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.563019, 38.518055, 24.468309> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868252, 38.741760, 24.338743>,  <34.051392, 38.875984, 24.261003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868252, 38.741760, 24.338743>,  <33.563019, 38.518055, 24.468309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868252, 38.741760, 24.338743> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398611, -0.012755, 0.917031,
		0.508733, -0.828890, -0.232663,
		0.763086, 0.559266, -0.323916,
		34.097179, 38.909538, 24.241568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029102, 38.255863, 24.836699>,  <33.563019, 38.518055, 24.468309>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029102, 38.255863, 24.836699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142059, 38.628113, 24.743574>,  <34.209831, 38.851463, 24.687700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142059, 38.628113, 24.743574>,  <34.029102, 38.255863, 24.836699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142059, 38.628113, 24.743574> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245214, 0.164600, 0.955394,
		0.927430, -0.326881, -0.181720,
		0.282389, 0.930621, -0.232811,
		34.226776, 38.907299, 24.673731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497627, 38.331825, 25.256712>,  <34.029102, 38.255863, 24.836699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497627, 38.331825, 25.256712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464474, 38.714573, 25.145329>,  <34.444580, 38.944221, 25.078499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464474, 38.714573, 25.145329>,  <34.497627, 38.331825, 25.256712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464474, 38.714573, 25.145329> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251271, 0.290459, 0.923307,
		0.964361, 0.006560, -0.264508,
		-0.082886, 0.956865, -0.278459,
		34.439610, 39.001633, 25.061790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120148, 38.762875, 25.483871>,  <34.497627, 38.331825, 25.256712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120148, 38.762875, 25.483871> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802628, 39.001785, 25.438017>,  <34.612118, 39.145134, 25.410503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802628, 39.001785, 25.438017>,  <35.120148, 38.762875, 25.483871>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802628, 39.001785, 25.438017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186157, 0.418061, 0.889140,
		0.578991, 0.684457, -0.443043,
		-0.793798, 0.597280, -0.114637,
		34.564487, 39.180969, 25.403625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414291, 38.914059, 24.719749>,  <35.120148, 38.762875, 25.483871>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414291, 38.914059, 24.719749> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737507, 38.834202, 24.941456>,  <35.931438, 38.786289, 25.074480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737507, 38.834202, 24.941456>,  <35.414291, 38.914059, 24.719749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737507, 38.834202, 24.941456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137830, -0.850654, -0.507336,
		0.572774, 0.486344, -0.659848,
		0.808043, -0.199642, 0.554266,
		35.979919, 38.774311, 25.107735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.055435, 38.754791, 24.255638>,  <35.414291, 38.914059, 24.719749>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.055435, 38.754791, 24.255638> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093567, 38.578995, 24.612907>,  <36.116447, 38.473518, 24.827269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093567, 38.578995, 24.612907>,  <36.055435, 38.754791, 24.255638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093567, 38.578995, 24.612907> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044652, -0.898246, -0.437219,
		0.994444, 0.001797, -0.105252,
		0.095328, -0.439489, 0.893175,
		36.122166, 38.447147, 24.880859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580719, 38.180984, 24.202805>,  <36.055435, 38.754791, 24.255638>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580719, 38.180984, 24.202805> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347836, 38.108963, 24.519945>,  <36.208103, 38.065750, 24.710230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347836, 38.108963, 24.519945>,  <36.580719, 38.180984, 24.202805>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347836, 38.108963, 24.519945> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149233, -0.934936, -0.321907,
		0.799225, -0.305738, 0.517460,
		-0.582211, -0.180054, 0.792850,
		36.173172, 38.054947, 24.757801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633018, 37.504257, 24.363939>,  <36.580719, 38.180984, 24.202805>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633018, 37.504257, 24.363939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325455, 37.517792, 24.619322>,  <36.140915, 37.525913, 24.772551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325455, 37.517792, 24.619322>,  <36.633018, 37.504257, 24.363939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325455, 37.517792, 24.619322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269646, -0.922606, -0.275842,
		0.579709, -0.384256, 0.718529,
		-0.768914, 0.033841, 0.638456,
		36.094780, 37.527943, 24.810858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448563, 36.777702, 24.722456>,  <36.633018, 37.504257, 24.363939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448563, 36.777702, 24.722456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108150, 36.985832, 24.750784>,  <35.903904, 37.110710, 24.767780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108150, 36.985832, 24.750784>,  <36.448563, 36.777702, 24.722456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108150, 36.985832, 24.750784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503520, -0.770275, -0.391336,
		-0.149073, -0.368696, 0.917519,
		-0.851026, 0.520326, 0.070819,
		35.852844, 37.141930, 24.772030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041771, 36.334152, 25.106003>,  <36.448563, 36.777702, 24.722456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041771, 36.334152, 25.106003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835575, 36.584728, 24.872131>,  <35.711857, 36.735073, 24.731808>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835575, 36.584728, 24.872131>,  <36.041771, 36.334152, 25.106003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835575, 36.584728, 24.872131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463451, -0.777733, -0.424671,
		-0.720755, 0.052058, 0.691233,
		-0.515487, 0.626436, -0.584681,
		35.680927, 36.772659, 24.696728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.479637, 36.020916, 24.989071>,  <36.041771, 36.334152, 25.106003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.479637, 36.020916, 24.989071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411781, 36.299934, 24.710606>,  <35.371067, 36.467346, 24.543526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411781, 36.299934, 24.710606>,  <35.479637, 36.020916, 24.989071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411781, 36.299934, 24.710606> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406244, -0.693090, -0.595476,
		-0.897879, 0.181795, 0.400953,
		-0.169642, 0.697550, -0.696165,
		35.360889, 36.509201, 24.501757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856125, 35.795216, 24.641611>,  <35.479637, 36.020916, 24.989071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856125, 35.795216, 24.641611> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031113, 36.037708, 24.375946>,  <35.136105, 36.183205, 24.216547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031113, 36.037708, 24.375946>,  <34.856125, 35.795216, 24.641611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031113, 36.037708, 24.375946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301210, -0.597130, -0.743443,
		-0.847287, 0.525284, -0.078623,
		0.437467, 0.606228, -0.664162,
		35.162354, 36.219578, 24.176697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386204, 35.897369, 24.055799>,  <34.856125, 35.795216, 24.641611>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386204, 35.897369, 24.055799> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747208, 35.981632, 23.905552>,  <34.963810, 36.032192, 23.815403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747208, 35.981632, 23.905552>,  <34.386204, 35.897369, 24.055799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747208, 35.981632, 23.905552> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252827, -0.446901, -0.858113,
		-0.348636, 0.869426, -0.350074,
		0.902514, 0.210661, -0.375620,
		35.017963, 36.044830, 23.792866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326229, 36.044655, 23.423904>,  <34.386204, 35.897369, 24.055799>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326229, 36.044655, 23.423904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715897, 35.965549, 23.380299>,  <34.949696, 35.918087, 23.354136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715897, 35.965549, 23.380299>,  <34.326229, 36.044655, 23.423904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715897, 35.965549, 23.380299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166810, -0.304824, -0.937687,
		0.152207, 0.931651, -0.329939,
		0.974170, -0.197759, -0.109012,
		35.008148, 35.906223, 23.347595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520153, 36.330879, 22.750643>,  <34.326229, 36.044655, 23.423904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520153, 36.330879, 22.750643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789349, 36.047707, 22.836363>,  <34.950867, 35.877804, 22.887794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789349, 36.047707, 22.836363>,  <34.520153, 36.330879, 22.750643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789349, 36.047707, 22.836363> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110562, -0.382759, -0.917209,
		0.731344, 0.593576, -0.335862,
		0.672987, -0.707929, 0.214302,
		34.991245, 35.835327, 22.900654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019451, 36.254738, 22.086575>,  <34.520153, 36.330879, 22.750643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019451, 36.254738, 22.086575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092335, 35.926964, 22.303953>,  <35.136063, 35.730301, 22.434380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092335, 35.926964, 22.303953>,  <35.019451, 36.254738, 22.086575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092335, 35.926964, 22.303953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155206, -0.569737, -0.807038,
		0.970933, 0.062701, -0.230990,
		0.182206, -0.819431, 0.543445,
		35.146996, 35.681133, 22.466988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482655, 35.958652, 21.721035>,  <35.019451, 36.254738, 22.086575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482655, 35.958652, 21.721035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291595, 35.677177, 21.931437>,  <35.176960, 35.508293, 22.057678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291595, 35.677177, 21.931437>,  <35.482655, 35.958652, 21.721035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291595, 35.677177, 21.931437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038564, -0.581348, -0.812741,
		0.877705, -0.408489, 0.250543,
		-0.477648, -0.703684, 0.526004,
		35.148300, 35.466072, 22.089237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832405, 35.384602, 21.562128>,  <35.482655, 35.958652, 21.721035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832405, 35.384602, 21.562128> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485073, 35.231277, 21.688032>,  <35.276672, 35.139282, 21.763575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.485073, 35.231277, 21.688032>,  <35.832405, 35.384602, 21.562128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485073, 35.231277, 21.688032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085948, -0.508724, -0.856629,
		0.488482, -0.770890, 0.408796,
		-0.868331, -0.383313, 0.314759,
		35.224575, 35.116283, 21.782459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.828827, 33.687962, 24.055740> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.032234, 34.008842, 23.930597>,  <29.154278, 34.201370, 23.855513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.032234, 34.008842, 23.930597>,  <28.828827, 33.687962, 24.055740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032234, 34.008842, 23.930597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458318, 0.055420, 0.887059,
		0.728940, -0.594473, -0.339482,
		0.508518, 0.802204, -0.312856,
		29.184790, 34.249504, 23.836740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524178, 33.603050, 24.326502>,  <28.828827, 33.687962, 24.055740>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524178, 33.603050, 24.326502> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.566452, 33.985107, 24.215841>,  <29.591816, 34.214340, 24.149445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.566452, 33.985107, 24.215841>,  <29.524178, 33.603050, 24.326502>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.566452, 33.985107, 24.215841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513738, 0.185759, 0.837596,
		0.851413, -0.230646, -0.471061,
		0.105685, 0.955142, -0.276650,
		29.598158, 34.271648, 24.132847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307192, 33.785885, 24.523376>,  <29.524178, 33.603050, 24.326502>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307192, 33.785885, 24.523376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.091436, 34.119789, 24.479137>,  <29.961983, 34.320133, 24.452595>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.091436, 34.119789, 24.479137>,  <30.307192, 33.785885, 24.523376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091436, 34.119789, 24.479137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390765, 0.364485, 0.845254,
		0.745896, 0.412703, -0.522795,
		-0.539390, 0.834762, -0.110598,
		29.929619, 34.370216, 24.445959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730494, 34.370010, 24.584803>,  <30.307192, 33.785885, 24.523376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730494, 34.370010, 24.584803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.375938, 34.516640, 24.697895>,  <30.163206, 34.604618, 24.765751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.375938, 34.516640, 24.697895>,  <30.730494, 34.370010, 24.584803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375938, 34.516640, 24.697895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413770, 0.353417, 0.838982,
		0.207631, 0.860649, -0.464943,
		-0.886388, 0.366578, 0.282731,
		30.110022, 34.626614, 24.782715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.969015, 35.046810, 24.961025>,  <30.730494, 34.370010, 24.584803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.969015, 35.046810, 24.961025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.597446, 34.935337, 25.058544>,  <30.374506, 34.868454, 25.117056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.597446, 34.935337, 25.058544>,  <30.969015, 35.046810, 24.961025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.597446, 34.935337, 25.058544> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191810, 0.201025, 0.960624,
		-0.316723, 0.939107, -0.133282,
		-0.928922, -0.278687, 0.243799,
		30.318769, 34.851730, 25.131683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.779644, 35.589333, 25.410603>,  <30.969015, 35.046810, 24.961025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.779644, 35.589333, 25.410603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.554457, 35.273560, 25.508467>,  <30.419344, 35.084095, 25.567184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.554457, 35.273560, 25.508467>,  <30.779644, 35.589333, 25.410603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.554457, 35.273560, 25.508467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199523, 0.157455, 0.967160,
		-0.802032, 0.593297, 0.068869,
		-0.562969, -0.789435, 0.244660,
		30.385567, 35.036728, 25.581865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.405916, 35.835480, 25.925274>,  <30.779644, 35.589333, 25.410603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.405916, 35.835480, 25.925274> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.404015, 35.438755, 25.976309>,  <30.402874, 35.200718, 26.006929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.404015, 35.438755, 25.976309>,  <30.405916, 35.835480, 25.925274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404015, 35.438755, 25.976309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276652, 0.121306, 0.953283,
		-0.960959, 0.039829, 0.273811,
		-0.004754, -0.991816, 0.127589,
		30.402588, 35.141209, 26.014585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943769, 35.727875, 26.413103>,  <30.405916, 35.835480, 25.925274>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943769, 35.727875, 26.413103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.168436, 35.397064, 26.403690>,  <30.303236, 35.198578, 26.398043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.168436, 35.397064, 26.403690>,  <29.943769, 35.727875, 26.413103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168436, 35.397064, 26.403690> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157006, 0.078618, 0.984463,
		-0.812331, -0.556633, 0.174006,
		0.561665, -0.827030, -0.023531,
		30.336935, 35.148956, 26.396631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829527, 35.475109, 27.069487>,  <29.943769, 35.727875, 26.413103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829527, 35.475109, 27.069487> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.152552, 35.286087, 26.928331>,  <30.346367, 35.172672, 26.843637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.152552, 35.286087, 26.928331>,  <29.829527, 35.475109, 27.069487>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152552, 35.286087, 26.928331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271995, -0.232503, 0.933789,
		-0.523317, -0.850077, -0.059227,
		0.807563, -0.472558, -0.352889,
		30.394821, 35.144321, 26.822464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916540, 34.849754, 27.481033>,  <29.829527, 35.475109, 27.069487>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916540, 34.849754, 27.481033> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.271299, 34.928711, 27.313967>,  <30.484156, 34.976086, 27.213726>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.271299, 34.928711, 27.313967>,  <29.916540, 34.849754, 27.481033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271299, 34.928711, 27.313967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428355, -0.012850, 0.903519,
		0.172978, -0.980241, -0.095949,
		0.886899, 0.197389, -0.417668,
		30.537369, 34.987926, 27.188665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357548, 34.539761, 27.915888>,  <29.916540, 34.849754, 27.481033>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357548, 34.539761, 27.915888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.613052, 34.762440, 27.703449>,  <30.766356, 34.896049, 27.575985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.613052, 34.762440, 27.703449>,  <30.357548, 34.539761, 27.915888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.613052, 34.762440, 27.703449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590531, 0.087756, 0.802229,
		0.493210, -0.826063, -0.272695,
		0.638762, 0.556703, -0.531099,
		30.804682, 34.929451, 27.544119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.047070, 34.328972, 28.119579>,  <30.357548, 34.539761, 27.915888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.047070, 34.328972, 28.119579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.110058, 34.695492, 27.972284>,  <31.147850, 34.915405, 27.883907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.110058, 34.695492, 27.972284>,  <31.047070, 34.328972, 28.119579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.110058, 34.695492, 27.972284> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416207, 0.276572, 0.866187,
		0.895531, -0.289661, -0.337819,
		0.157469, 0.916299, -0.368238,
		31.157299, 34.970383, 27.861813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718615, 34.422001, 28.207308>,  <31.047070, 34.328972, 28.119579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718615, 34.422001, 28.207308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.555868, 34.782356, 28.146830>,  <31.458220, 34.998569, 28.110542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.555868, 34.782356, 28.146830>,  <31.718615, 34.422001, 28.207308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.555868, 34.782356, 28.146830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589193, 0.385292, 0.710212,
		0.698077, 0.199877, -0.687559,
		-0.406866, 0.900888, -0.151198,
		31.433809, 35.052624, 28.101471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.185261, 34.814869, 28.101324>,  <31.718615, 34.422001, 28.207308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.185261, 34.814869, 28.101324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.923901, 35.086163, 28.235828>,  <31.767086, 35.248940, 28.316530>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.923901, 35.086163, 28.235828>,  <32.185261, 34.814869, 28.101324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923901, 35.086163, 28.235828> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548756, 0.118366, 0.827560,
		0.521479, 0.725249, -0.449526,
		-0.653396, 0.678235, 0.336260,
		31.727882, 35.289635, 28.336706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.923740, 34.781342, 28.154793>,  <32.185261, 34.814869, 28.101324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.923740, 34.781342, 28.154793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.167526, 34.478191, 28.247887>,  <33.313797, 34.296299, 28.303743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.167526, 34.478191, 28.247887>,  <32.923740, 34.781342, 28.154793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167526, 34.478191, 28.247887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123759, -0.380907, -0.916293,
		0.783091, 0.529649, -0.325946,
		0.609469, -0.757880, 0.232736,
		33.350368, 34.250828, 28.317707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.363819, 34.814682, 27.697081>,  <32.923740, 34.781342, 28.154793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.363819, 34.814682, 27.697081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.366844, 34.430992, 27.810097>,  <33.368660, 34.200779, 27.877907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.366844, 34.430992, 27.810097>,  <33.363819, 34.814682, 27.697081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366844, 34.430992, 27.810097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216449, -0.277422, -0.936049,
		0.976265, -0.054076, -0.209721,
		0.007563, -0.959225, 0.282542,
		33.369114, 34.143223, 27.894859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716873, 34.424774, 27.210142>,  <33.363819, 34.814682, 27.697081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716873, 34.424774, 27.210142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.478550, 34.158173, 27.389381>,  <33.335556, 33.998211, 27.496925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.478550, 34.158173, 27.389381>,  <33.716873, 34.424774, 27.210142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478550, 34.158173, 27.389381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227313, -0.395181, -0.890034,
		0.770289, -0.632145, 0.083946,
		-0.595805, -0.666502, 0.448098,
		33.299809, 33.958221, 27.523811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814949, 33.916065, 26.756014>,  <33.716873, 34.424774, 27.210142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814949, 33.916065, 26.756014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.513031, 33.793900, 26.988222>,  <33.331879, 33.720600, 27.127546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.513031, 33.793900, 26.988222>,  <33.814949, 33.916065, 26.756014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513031, 33.793900, 26.988222> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392641, -0.498583, -0.772818,
		0.525464, -0.811258, 0.256414,
		-0.754798, -0.305410, 0.580521,
		33.286591, 33.702278, 27.162378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685711, 33.183521, 26.683226>,  <33.814949, 33.916065, 26.756014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685711, 33.183521, 26.683226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.330700, 33.300037, 26.826027>,  <33.117695, 33.369946, 26.911709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.330700, 33.300037, 26.826027>,  <33.685711, 33.183521, 26.683226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330700, 33.300037, 26.826027> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460756, -0.556965, -0.691009,
		-0.002445, -0.777779, 0.628533,
		-0.887524, 0.291289, 0.357005,
		33.064442, 33.387424, 26.933128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.301929, 32.572697, 26.731678>,  <33.685711, 33.183521, 26.683226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.301929, 32.572697, 26.731678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.088669, 32.907089, 26.679697>,  <32.960712, 33.107723, 26.648508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.088669, 32.907089, 26.679697>,  <33.301929, 32.572697, 26.731678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088669, 32.907089, 26.679697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471914, -0.421355, -0.774440,
		-0.702172, -0.351567, 0.619157,
		-0.533152, 0.835979, -0.129954,
		32.928722, 33.157883, 26.640711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716034, 32.322826, 26.664633>,  <33.301929, 32.572697, 26.731678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716034, 32.322826, 26.664633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.680817, 32.692719, 26.516514>,  <32.659687, 32.914654, 26.427643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.680817, 32.692719, 26.516514>,  <32.716034, 32.322826, 26.664633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680817, 32.692719, 26.516514> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578356, -0.350118, -0.736832,
		-0.811020, 0.149291, 0.565649,
		-0.088042, 0.924732, -0.370296,
		32.654404, 32.970139, 26.405426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947735, 32.409470, 26.563719>,  <32.716034, 32.322826, 26.664633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947735, 32.409470, 26.563719> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.143478, 32.671402, 26.333338>,  <32.260925, 32.828560, 26.195108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.143478, 32.671402, 26.333338>,  <31.947735, 32.409470, 26.563719>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143478, 32.671402, 26.333338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583357, -0.245125, -0.774344,
		-0.648245, 0.714920, 0.262045,
		0.489360, 0.654831, -0.575954,
		32.290287, 32.867851, 26.160551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415129, 32.701160, 26.156137>,  <31.947735, 32.409470, 26.563719>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415129, 32.701160, 26.156137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.736507, 32.825069, 25.952759>,  <31.929335, 32.899414, 25.830732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.736507, 32.825069, 25.952759>,  <31.415129, 32.701160, 26.156137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736507, 32.825069, 25.952759> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462113, -0.214002, -0.860613,
		-0.375399, 0.926416, -0.028791,
		0.803447, 0.309769, -0.508445,
		31.977541, 32.917999, 25.800226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.152588, 33.140026, 25.593204>,  <31.415129, 32.701160, 26.156137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.152588, 33.140026, 25.593204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.515120, 32.982594, 25.531677>,  <31.732639, 32.888134, 25.494761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.515120, 32.982594, 25.531677>,  <31.152588, 33.140026, 25.593204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515120, 32.982594, 25.531677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288459, -0.310242, -0.905837,
		0.308796, 0.865359, -0.394713,
		0.906331, -0.393577, -0.153819,
		31.787020, 32.864521, 25.485531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.276299, 33.362305, 24.968319>,  <31.152588, 33.140026, 25.593204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.276299, 33.362305, 24.968319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.507267, 33.039639, 25.018719>,  <31.645847, 32.846039, 25.048958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.507267, 33.039639, 25.018719>,  <31.276299, 33.362305, 24.968319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507267, 33.039639, 25.018719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178973, -0.275631, -0.944456,
		0.796589, 0.522797, -0.303527,
		0.577420, -0.806666, 0.125998,
		31.680492, 32.797638, 25.056519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734116, 33.361076, 24.376900>,  <31.276299, 33.362305, 24.968319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734116, 33.361076, 24.376900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.723564, 32.981754, 24.503405>,  <31.717234, 32.754162, 24.579308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.723564, 32.981754, 24.503405>,  <31.734116, 33.361076, 24.376900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723564, 32.981754, 24.503405> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362671, -0.285739, -0.887031,
		0.931544, -0.138099, -0.336385,
		-0.026380, -0.948305, 0.316263,
		31.715651, 32.697262, 24.598284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094810, 32.965839, 23.861750>,  <31.734116, 33.361076, 24.376900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094810, 32.965839, 23.861750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.882853, 32.687759, 24.056034>,  <31.755678, 32.520912, 24.172606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.882853, 32.687759, 24.056034>,  <32.094810, 32.965839, 23.861750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882853, 32.687759, 24.056034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391731, -0.307325, -0.867236,
		0.752172, -0.649809, -0.109481,
		-0.529891, -0.695198, 0.485711,
		31.723885, 32.479198, 24.201748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241745, 32.269367, 23.496368>,  <32.094810, 32.965839, 23.861750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241745, 32.269367, 23.496368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.894531, 32.253235, 23.694313>,  <31.686203, 32.243557, 23.813080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.894531, 32.253235, 23.694313>,  <32.241745, 32.269367, 23.496368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894531, 32.253235, 23.694313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470511, -0.251437, -0.845813,
		0.158539, -0.967033, 0.199280,
		-0.868035, -0.040331, 0.494862,
		31.634121, 32.241135, 23.842772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829357, 31.876650, 23.571417>,  <32.241745, 32.269367, 23.496368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829357, 31.876650, 23.571417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.125381, 31.944693, 23.311148>,  <33.302994, 31.985519, 23.154985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.125381, 31.944693, 23.311148>,  <32.829357, 31.876650, 23.571417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125381, 31.944693, 23.311148> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492276, 0.522178, 0.696415,
		0.458232, -0.835700, 0.302704,
		0.740059, 0.170106, -0.650674,
		33.347401, 31.995726, 23.115946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381798, 31.568409, 23.775009>,  <32.829357, 31.876650, 23.571417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381798, 31.568409, 23.775009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.520706, 31.852751, 23.530359>,  <33.604050, 32.023357, 23.383570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.520706, 31.852751, 23.530359>,  <33.381798, 31.568409, 23.775009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520706, 31.852751, 23.530359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578519, 0.350918, 0.736323,
		0.738051, -0.609540, -0.289381,
		0.347269, 0.710856, -0.611627,
		33.624886, 32.066010, 23.346870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021835, 31.433676, 23.865868>,  <33.381798, 31.568409, 23.775009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021835, 31.433676, 23.865868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.001629, 31.814171, 23.744150>,  <33.989506, 32.042469, 23.671120>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.001629, 31.814171, 23.744150>,  <34.021835, 31.433676, 23.865868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001629, 31.814171, 23.744150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596317, 0.273137, 0.754853,
		0.801158, -0.143327, -0.581036,
		-0.050512, 0.951238, -0.304295,
		33.986477, 32.099541, 23.652863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661114, 31.705946, 24.024004>,  <34.021835, 31.433676, 23.865868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661114, 31.705946, 24.024004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484211, 32.057884, 23.954390>,  <34.378071, 32.269047, 23.912621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.484211, 32.057884, 23.954390>,  <34.661114, 31.705946, 24.024004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.484211, 32.057884, 23.954390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667784, 0.452558, 0.590979,
		0.598729, 0.145144, -0.787691,
		-0.442253, 0.879843, -0.174035,
		34.351536, 32.321838, 23.902180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158825, 32.169270, 23.746344>,  <34.661114, 31.705946, 24.024004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158825, 32.169270, 23.746344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.880157, 32.408672, 23.904549>,  <34.712955, 32.552315, 23.999472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.880157, 32.408672, 23.904549>,  <35.158825, 32.169270, 23.746344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880157, 32.408672, 23.904549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700134, 0.447056, 0.556735,
		0.156394, 0.664775, -0.730489,
		-0.696673, 0.598511, 0.395515,
		34.671154, 32.588226, 24.023203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480709, 32.854557, 23.809391>,  <35.158825, 32.169270, 23.746344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480709, 32.854557, 23.809391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165794, 32.860802, 24.055948>,  <34.976845, 32.864548, 24.203882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.165794, 32.860802, 24.055948>,  <35.480709, 32.854557, 23.809391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165794, 32.860802, 24.055948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528675, 0.531555, 0.661779,
		-0.317312, 0.846880, -0.426740,
		-0.787284, 0.015616, 0.616393,
		34.929607, 32.865486, 24.240866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459652, 33.441444, 23.963123>,  <35.480709, 32.854557, 23.809391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459652, 33.441444, 23.963123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.248173, 33.276360, 24.259811>,  <35.121284, 33.177307, 24.437824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.248173, 33.276360, 24.259811>,  <35.459652, 33.441444, 23.963123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248173, 33.276360, 24.259811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558133, 0.489324, 0.670112,
		-0.639506, 0.768263, -0.028355,
		-0.528697, -0.412715, 0.741719,
		35.089565, 33.152546, 24.482327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229801, 33.937225, 24.383036>,  <35.459652, 33.441444, 23.963123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229801, 33.937225, 24.383036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.254341, 33.619209, 24.624414>,  <35.269066, 33.428398, 24.769241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.254341, 33.619209, 24.624414>,  <35.229801, 33.937225, 24.383036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254341, 33.619209, 24.624414> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525412, 0.539764, 0.657721,
		-0.848633, 0.276707, 0.450838,
		0.061350, -0.795040, 0.603447,
		35.272747, 33.380699, 24.805449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.179295, 34.218445, 25.084375>,  <35.229801, 33.937225, 24.383036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.179295, 34.218445, 25.084375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330872, 33.850571, 25.125521>,  <35.421818, 33.629845, 25.150208>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.330872, 33.850571, 25.125521>,  <35.179295, 34.218445, 25.084375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330872, 33.850571, 25.125521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553796, 0.314418, 0.771007,
		-0.741426, -0.235203, 0.628464,
		0.378944, -0.919685, 0.102863,
		35.444553, 33.574665, 25.156380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002136, 33.874638, 25.797810>,  <35.179295, 34.218445, 25.084375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002136, 33.874638, 25.797810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.318783, 33.670628, 25.663216>,  <35.508770, 33.548222, 25.582460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.318783, 33.670628, 25.663216>,  <35.002136, 33.874638, 25.797810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318783, 33.670628, 25.663216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486387, 0.192677, 0.852234,
		-0.369824, -0.838304, 0.400594,
		0.791617, -0.510021, -0.336483,
		35.556267, 33.517620, 25.562271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276466, 33.390053, 26.369160>,  <35.002136, 33.874638, 25.797810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276466, 33.390053, 26.369160> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569214, 33.474262, 26.109917>,  <35.744862, 33.524788, 25.954370>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.569214, 33.474262, 26.109917>,  <35.276466, 33.390053, 26.369160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569214, 33.474262, 26.109917> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539728, 0.401523, 0.739914,
		0.416015, -0.891320, 0.180223,
		0.731864, 0.210544, -0.648110,
		35.788776, 33.537422, 25.915485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834309, 33.490475, 26.782024>,  <35.276466, 33.390053, 26.369160>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834309, 33.490475, 26.782024> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991062, 33.634640, 26.443432>,  <36.085114, 33.721138, 26.240276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.991062, 33.634640, 26.443432>,  <35.834309, 33.490475, 26.782024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991062, 33.634640, 26.443432> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639930, 0.554255, 0.532250,
		0.660996, -0.750269, -0.013435,
		0.391885, 0.360412, -0.846481,
		36.108627, 33.742764, 26.189487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565136, 33.386284, 26.798817>,  <35.834309, 33.490475, 26.782024>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565136, 33.386284, 26.798817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.515102, 33.687874, 26.540861>,  <36.485085, 33.868828, 26.386087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.515102, 33.687874, 26.540861>,  <36.565136, 33.386284, 26.798817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515102, 33.687874, 26.540861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565737, 0.588167, 0.577928,
		0.815044, -0.292550, -0.500118,
		-0.125081, 0.753972, -0.644888,
		36.477577, 33.914066, 26.347395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293232, 33.634769, 26.633556>,  <36.565136, 33.386284, 26.798817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293232, 33.634769, 26.633556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.043533, 33.923580, 26.514235>,  <36.893715, 34.096867, 26.442642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.043533, 33.923580, 26.514235>,  <37.293232, 33.634769, 26.633556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043533, 33.923580, 26.514235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572628, 0.682640, 0.453983,
		0.531423, 0.112583, -0.839592,
		-0.624250, 0.722031, -0.298302,
		36.856258, 34.140190, 26.424744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.817726, 34.642555, 21.424856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428970, 34.727097, 21.466351>,  <35.195717, 34.777821, 21.491247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.428970, 34.727097, 21.466351>,  <35.817726, 34.642555, 21.424856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428970, 34.727097, 21.466351> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209695, -0.576759, -0.789542,
		-0.107040, -0.789101, 0.604865,
		-0.971890, 0.211350, 0.103734,
		35.137402, 34.790501, 21.497471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507820, 33.983604, 21.461027>,  <35.817726, 34.642555, 21.424856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507820, 33.983604, 21.461027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.230453, 34.247684, 21.345577>,  <35.064034, 34.406132, 21.276308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.230453, 34.247684, 21.345577>,  <35.507820, 33.983604, 21.461027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.230453, 34.247684, 21.345577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299917, -0.628680, -0.717504,
		-0.655157, -0.410960, 0.633941,
		-0.693411, 0.660207, -0.288630,
		35.022430, 34.445747, 21.258989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975094, 33.616459, 21.233822>,  <35.507820, 33.983604, 21.461027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975094, 33.616459, 21.233822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859211, 33.965969, 21.077572>,  <34.789680, 34.175674, 20.983822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.859211, 33.965969, 21.077572>,  <34.975094, 33.616459, 21.233822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.859211, 33.965969, 21.077572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324444, -0.473619, -0.818792,
		-0.900446, -0.110478, 0.420703,
		-0.289712, 0.873773, -0.390625,
		34.772297, 34.228100, 20.960384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282757, 33.547932, 21.198330>,  <34.975094, 33.616459, 21.233822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282757, 33.547932, 21.198330> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.391457, 33.818390, 20.924404>,  <34.456676, 33.980667, 20.760048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.391457, 33.818390, 20.924404>,  <34.282757, 33.547932, 21.198330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391457, 33.818390, 20.924404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469182, -0.528215, -0.707713,
		-0.840249, 0.513627, 0.173692,
		0.271754, 0.676148, -0.684816,
		34.472984, 34.021233, 20.718960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645626, 33.716644, 20.741375>,  <34.282757, 33.547932, 21.198330>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645626, 33.716644, 20.741375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947895, 33.844852, 20.512907>,  <34.129257, 33.921776, 20.375826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947895, 33.844852, 20.512907>,  <33.645626, 33.716644, 20.741375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947895, 33.844852, 20.512907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352895, -0.535407, -0.767336,
		-0.551751, 0.781415, -0.291482,
		0.755670, 0.320516, -0.571168,
		34.174595, 33.941006, 20.341557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324211, 34.003269, 20.204250>,  <33.645626, 33.716644, 20.741375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324211, 34.003269, 20.204250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.690186, 33.905602, 20.075712>,  <33.909771, 33.847000, 19.998589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.690186, 33.905602, 20.075712>,  <33.324211, 34.003269, 20.204250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690186, 33.905602, 20.075712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403480, -0.534878, -0.742368,
		0.009386, 0.808879, -0.587901,
		0.914940, -0.244174, -0.321346,
		33.964668, 33.832348, 19.979309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260635, 34.086922, 19.457872>,  <33.324211, 34.003269, 20.204250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260635, 34.086922, 19.457872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572208, 33.843296, 19.517624>,  <33.759151, 33.697121, 19.553474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.572208, 33.843296, 19.517624>,  <33.260635, 34.086922, 19.457872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572208, 33.843296, 19.517624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335889, -0.606349, -0.720777,
		0.529572, 0.511260, -0.676880,
		0.778930, -0.609060, 0.149379,
		33.805889, 33.660580, 19.562437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593204, 33.929607, 18.779976>,  <33.260635, 34.086922, 19.457872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593204, 33.929607, 18.779976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719170, 33.624699, 19.006172>,  <33.794750, 33.441753, 19.141890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.719170, 33.624699, 19.006172>,  <33.593204, 33.929607, 18.779976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719170, 33.624699, 19.006172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229514, -0.639280, -0.733924,
		0.920952, 0.101335, -0.376269,
		0.314913, -0.762268, 0.565489,
		33.813644, 33.396019, 19.175819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.906189, 33.518867, 18.348976>,  <33.593204, 33.929607, 18.779976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.906189, 33.518867, 18.348976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831478, 33.266361, 18.650074>,  <33.786652, 33.114857, 18.830732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.831478, 33.266361, 18.650074>,  <33.906189, 33.518867, 18.348976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831478, 33.266361, 18.650074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203085, -0.724865, -0.658276,
		0.961183, -0.275819, 0.007186,
		-0.186773, -0.631264, 0.752743,
		33.775448, 33.076981, 18.875896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013042, 32.951141, 18.048262>,  <33.906189, 33.518867, 18.348976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013042, 32.951141, 18.048262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827694, 32.821453, 18.378151>,  <33.716484, 32.743641, 18.576084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.827694, 32.821453, 18.378151>,  <34.013042, 32.951141, 18.048262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827694, 32.821453, 18.378151> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261974, -0.838952, -0.477001,
		0.846554, -0.437086, 0.303813,
		-0.463375, -0.324216, 0.824723,
		33.688683, 32.724190, 18.625568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238918, 32.252251, 18.062155>,  <34.013042, 32.951141, 18.048262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238918, 32.252251, 18.062155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886978, 32.283680, 18.249640>,  <33.675816, 32.302540, 18.362129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.886978, 32.283680, 18.249640>,  <34.238918, 32.252251, 18.062155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.886978, 32.283680, 18.249640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346887, -0.780321, -0.520354,
		0.324858, -0.620423, 0.713823,
		-0.879850, 0.078575, 0.468710,
		33.623024, 32.307251, 18.390253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938934, 31.478321, 18.093061>,  <34.238918, 32.252251, 18.062155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938934, 31.478321, 18.093061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.647232, 31.729153, 18.202579>,  <33.472210, 31.879652, 18.268290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.647232, 31.729153, 18.202579>,  <33.938934, 31.478321, 18.093061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647232, 31.729153, 18.202579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676119, -0.598903, -0.429160,
		-0.105140, -0.498084, 0.860731,
		-0.729252, 0.627078, 0.273795,
		33.428455, 31.917276, 18.284718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220776, 31.122007, 18.321127>,  <33.938934, 31.478321, 18.093061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220776, 31.122007, 18.321127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166927, 31.480541, 18.152149>,  <33.134617, 31.695662, 18.050762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.166927, 31.480541, 18.152149>,  <33.220776, 31.122007, 18.321127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166927, 31.480541, 18.152149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653676, -0.400737, -0.641964,
		-0.744704, 0.189717, 0.639862,
		-0.134625, 0.896335, -0.422444,
		33.126541, 31.749441, 18.025415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810192, 30.966339, 17.836626>,  <33.220776, 31.122007, 18.321127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810192, 30.966339, 17.836626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838249, 31.364079, 17.804749>,  <32.855083, 31.602722, 17.785622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.838249, 31.364079, 17.804749>,  <32.810192, 30.966339, 17.836626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.838249, 31.364079, 17.804749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719898, -0.004848, -0.694063,
		-0.690527, 0.106054, 0.715489,
		0.070139, 0.994349, -0.079696,
		32.859291, 31.662384, 17.780840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.076000, 30.971167, 17.921766>,  <32.810192, 30.966339, 17.836626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.076000, 30.971167, 17.921766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.909410, 30.614326, 17.991854>,  <31.809456, 30.400223, 18.033905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.909410, 30.614326, 17.991854>,  <32.076000, 30.971167, 17.921766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909410, 30.614326, 17.991854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109884, 0.141920, 0.983760,
		-0.902481, 0.428969, 0.038921,
		-0.416479, -0.892101, 0.175217,
		31.784468, 30.346697, 18.044418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561537, 31.053186, 18.442215>,  <32.076000, 30.971167, 17.921766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561537, 31.053186, 18.442215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652010, 30.664955, 18.475252>,  <31.706293, 30.432016, 18.495073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.652010, 30.664955, 18.475252>,  <31.561537, 31.053186, 18.442215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652010, 30.664955, 18.475252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150441, 0.118577, 0.981482,
		-0.962398, -0.209569, 0.172834,
		0.226183, -0.970577, 0.082591,
		31.719864, 30.373781, 18.500029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292744, 30.878874, 19.082441>,  <31.561537, 31.053186, 18.442215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292744, 30.878874, 19.082441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.540525, 30.572823, 19.012178>,  <31.689196, 30.389193, 18.970020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.540525, 30.572823, 19.012178>,  <31.292744, 30.878874, 19.082441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540525, 30.572823, 19.012178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170104, -0.087616, 0.981523,
		-0.766381, -0.637890, 0.075877,
		0.619456, -0.765128, -0.175655,
		31.726362, 30.343285, 18.959482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182755, 30.360189, 19.564590>,  <31.292744, 30.878874, 19.082441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182755, 30.360189, 19.564590> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.557922, 30.287951, 19.446138>,  <31.783024, 30.244608, 19.375067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.557922, 30.287951, 19.446138>,  <31.182755, 30.360189, 19.564590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557922, 30.287951, 19.446138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292849, -0.045189, 0.955090,
		-0.185869, -0.982518, 0.010505,
		0.937919, -0.180598, -0.296129,
		31.839298, 30.233772, 19.357300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.449434, 29.849054, 20.011290>,  <31.182755, 30.360189, 19.564590>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.449434, 29.849054, 20.011290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760174, 30.036480, 19.843025>,  <31.946617, 30.148935, 19.742067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.760174, 30.036480, 19.843025>,  <31.449434, 29.849054, 20.011290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760174, 30.036480, 19.843025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487235, -0.024110, 0.872938,
		0.398886, -0.883100, -0.247031,
		0.776848, 0.468565, -0.420660,
		31.993229, 30.177050, 19.716827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965673, 29.531601, 20.381638>,  <31.449434, 29.849054, 20.011290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965673, 29.531601, 20.381638> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.138298, 29.844913, 20.202652>,  <32.241875, 30.032902, 20.095261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.138298, 29.844913, 20.202652>,  <31.965673, 29.531601, 20.381638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138298, 29.844913, 20.202652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450616, 0.242525, 0.859143,
		0.781473, -0.572407, -0.248295,
		0.431562, 0.783283, -0.447462,
		32.267765, 30.079899, 20.068413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638729, 29.524574, 20.608850>,  <31.965673, 29.531601, 20.381638>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638729, 29.524574, 20.608850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559246, 29.896254, 20.484203>,  <32.511555, 30.119261, 20.409414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559246, 29.896254, 20.484203>,  <32.638729, 29.524574, 20.608850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559246, 29.896254, 20.484203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472170, 0.369393, 0.800378,
		0.858819, 0.011906, -0.512141,
		-0.198710, 0.929197, -0.311620,
		32.499634, 30.175013, 20.390717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360077, 29.900190, 20.619856>,  <32.638729, 29.524574, 20.608850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360077, 29.900190, 20.619856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086674, 30.191303, 20.642315>,  <32.922630, 30.365971, 20.655790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.086674, 30.191303, 20.642315>,  <33.360077, 29.900190, 20.619856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086674, 30.191303, 20.642315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563258, 0.476939, 0.674737,
		0.464281, 0.492813, -0.735920,
		-0.683508, 0.727780, 0.056147,
		32.881622, 30.409637, 20.659159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737873, 30.562141, 20.730911>,  <33.360077, 29.900190, 20.619856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737873, 30.562141, 20.730911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.362804, 30.641245, 20.845217>,  <33.137764, 30.688707, 20.913801>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.362804, 30.641245, 20.845217>,  <33.737873, 30.562141, 20.730911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362804, 30.641245, 20.845217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347518, 0.536087, 0.769313,
		-0.001057, 0.820672, -0.571399,
		-0.937673, 0.197758, 0.285765,
		33.081501, 30.700573, 20.930946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.761578, 31.253250, 20.851591>,  <33.737873, 30.562141, 20.730911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.761578, 31.253250, 20.851591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.469021, 31.093929, 21.073013>,  <33.293488, 30.998337, 21.205866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.469021, 31.093929, 21.073013>,  <33.761578, 31.253250, 20.851591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469021, 31.093929, 21.073013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270079, 0.576170, 0.771418,
		-0.626197, 0.713712, -0.313834,
		-0.731392, -0.398300, 0.553555,
		33.249603, 30.974440, 21.239080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431717, 31.837246, 21.100157>,  <33.761578, 31.253250, 20.851591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431717, 31.837246, 21.100157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.297020, 31.545279, 21.338089>,  <33.216202, 31.370098, 21.480848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.297020, 31.545279, 21.338089>,  <33.431717, 31.837246, 21.100157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297020, 31.545279, 21.338089> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118329, 0.593914, 0.795779,
		-0.934133, 0.338356, -0.113623,
		-0.336739, -0.729919, 0.594832,
		33.195999, 31.326303, 21.516539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949272, 32.217102, 21.593531>,  <33.431717, 31.837246, 21.100157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949272, 32.217102, 21.593531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038864, 31.870621, 21.772205>,  <33.092621, 31.662733, 21.879410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038864, 31.870621, 21.772205>,  <32.949272, 32.217102, 21.593531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038864, 31.870621, 21.772205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327273, 0.498566, 0.802698,
		-0.918000, -0.033602, 0.395154,
		0.223983, -0.866200, 0.446687,
		33.106060, 31.610762, 21.906212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483131, 32.069107, 22.108953>,  <32.949272, 32.217102, 21.593531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483131, 32.069107, 22.108953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810783, 31.868540, 22.220388>,  <33.007374, 31.748199, 22.287251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.810783, 31.868540, 22.220388>,  <32.483131, 32.069107, 22.108953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810783, 31.868540, 22.220388> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019431, 0.509653, 0.860161,
		-0.573281, -0.699169, 0.427214,
		0.819128, -0.501415, 0.278589,
		33.056522, 31.718115, 22.303965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354424, 31.995136, 22.830309>,  <32.483131, 32.069107, 22.108953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354424, 31.995136, 22.830309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745396, 31.922045, 22.787899>,  <32.979980, 31.878189, 22.762453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.745396, 31.922045, 22.787899>,  <32.354424, 31.995136, 22.830309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.745396, 31.922045, 22.787899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186003, 0.506375, 0.842014,
		-0.100172, -0.842730, 0.528935,
		0.977430, -0.182729, -0.106026,
		33.038624, 31.867226, 22.756092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831781, 31.536146, 23.202406>,  <32.354424, 31.995136, 22.830309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831781, 31.536146, 23.202406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548431, 31.750326, 23.386362>,  <31.378422, 31.878834, 23.496737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.548431, 31.750326, 23.386362>,  <31.831781, 31.536146, 23.202406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548431, 31.750326, 23.386362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612928, -0.143525, -0.776994,
		-0.350036, -0.832282, 0.429862,
		-0.708375, 0.535450, 0.459890,
		31.335918, 31.910961, 23.524328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323175, 31.155003, 23.238415>,  <31.831781, 31.536146, 23.202406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323175, 31.155003, 23.238415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.159254, 31.519140, 23.261503>,  <31.060902, 31.737623, 23.275356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.159254, 31.519140, 23.261503>,  <31.323175, 31.155003, 23.238415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159254, 31.519140, 23.261503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548878, -0.195556, -0.812706,
		-0.728555, -0.364731, 0.579809,
		-0.409804, 0.910345, 0.057720,
		31.036312, 31.792244, 23.278820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477545, 31.058086, 23.188379>,  <31.323175, 31.155003, 23.238415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477545, 31.058086, 23.188379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.575771, 31.428827, 23.074789>,  <30.634708, 31.651272, 23.006636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.575771, 31.428827, 23.074789>,  <30.477545, 31.058086, 23.188379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575771, 31.428827, 23.074789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425817, -0.160032, -0.890545,
		-0.870848, 0.339611, 0.355370,
		0.245568, 0.926852, -0.283975,
		30.649443, 31.706882, 22.989597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.774408, 31.333652, 22.905754>,  <30.477545, 31.058086, 23.188379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.774408, 31.333652, 22.905754> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.049004, 31.591003, 22.770227>,  <30.213760, 31.745415, 22.688911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.049004, 31.591003, 22.770227>,  <29.774408, 31.333652, 22.905754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049004, 31.591003, 22.770227> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327093, -0.142919, -0.934122,
		-0.649416, 0.752091, 0.112331,
		0.686490, 0.643377, -0.338818,
		30.254951, 31.784016, 22.668583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430908, 31.771545, 22.488323>,  <29.774408, 31.333652, 22.905754>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430908, 31.771545, 22.488323> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.804308, 31.847479, 22.366642>,  <30.028349, 31.893040, 22.293634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.804308, 31.847479, 22.366642>,  <29.430908, 31.771545, 22.488323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804308, 31.847479, 22.366642> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302812, -0.037005, -0.952332,
		-0.192041, 0.981119, 0.022939,
		0.933501, 0.189833, -0.304201,
		30.084358, 31.904428, 22.275381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.410982, 32.273609, 21.893610>,  <29.430908, 31.771545, 22.488323>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.410982, 32.273609, 21.893610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.762064, 32.089317, 21.840900>,  <29.972713, 31.978743, 21.809275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.762064, 32.089317, 21.840900>,  <29.410982, 32.273609, 21.893610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.762064, 32.089317, 21.840900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133989, 0.028064, -0.990585,
		0.460086, 0.887099, -0.037100,
		0.877706, -0.460726, -0.131773,
		30.025375, 31.951099, 21.801369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.757820, 32.718586, 21.384836>,  <29.410982, 32.273609, 21.893610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.757820, 32.718586, 21.384836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.911507, 32.349300, 21.387789>,  <30.003719, 32.127728, 21.389561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.911507, 32.349300, 21.387789>,  <29.757820, 32.718586, 21.384836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911507, 32.349300, 21.387789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006719, -0.005197, -0.999964,
		0.923219, 0.384252, 0.004207,
		0.384217, -0.923214, 0.007380,
		30.026772, 32.072338, 21.390003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.734810, 33.275047, 21.003132>,  <29.757820, 32.718586, 21.384836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.734810, 33.275047, 21.003132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377653, 33.446861, 21.057167>,  <29.163359, 33.549950, 21.089588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.377653, 33.446861, 21.057167>,  <29.734810, 33.275047, 21.003132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377653, 33.446861, 21.057167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238926, 0.197665, 0.950707,
		0.381656, 0.881153, -0.279119,
		-0.892890, 0.429532, 0.135090,
		29.109787, 33.575722, 21.097694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759878, 33.968216, 21.210440>,  <29.734810, 33.275047, 21.003132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759878, 33.968216, 21.210440> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.402407, 33.854446, 21.349257>,  <29.187923, 33.786182, 21.432547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.402407, 33.854446, 21.349257>,  <29.759878, 33.968216, 21.210440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402407, 33.854446, 21.349257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284963, 0.237672, 0.928606,
		-0.346603, 0.928770, -0.131352,
		-0.893679, -0.284427, 0.347043,
		29.134302, 33.769119, 21.453369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.428055, 34.575268, 21.488815>,  <29.759878, 33.968216, 21.210440>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.428055, 34.575268, 21.488815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.233446, 34.267300, 21.653992>,  <29.116682, 34.082520, 21.753098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.233446, 34.267300, 21.653992>,  <29.428055, 34.575268, 21.488815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233446, 34.267300, 21.653992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117851, 0.410498, 0.904213,
		-0.865684, 0.488584, -0.108980,
		-0.486521, -0.769920, 0.412942,
		29.087490, 34.036324, 21.777874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987514, 34.855034, 21.937794>,  <29.428055, 34.575268, 21.488815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987514, 34.855034, 21.937794> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.011251, 34.484058, 22.085484>,  <29.025494, 34.261471, 22.174097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.011251, 34.484058, 22.085484>,  <28.987514, 34.855034, 21.937794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011251, 34.484058, 22.085484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099480, 0.373530, 0.922268,
		-0.993268, -0.018000, 0.114428,
		0.059343, -0.927443, 0.369225,
		29.029055, 34.205826, 22.196251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.583443, 34.798424, 22.564491>,  <28.987514, 34.855034, 21.937794>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.583443, 34.798424, 22.564491> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.855970, 34.507099, 22.593798>,  <29.019487, 34.332306, 22.611382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.855970, 34.507099, 22.593798>,  <28.583443, 34.798424, 22.564491>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855970, 34.507099, 22.593798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102017, 0.193593, 0.975764,
		-0.724842, -0.657332, 0.206199,
		0.681320, -0.728310, 0.073265,
		29.060366, 34.288605, 22.615778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.349819, 34.560833, 23.097473>,  <28.583443, 34.798424, 22.564491>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.349819, 34.560833, 23.097473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.724613, 34.423935, 23.069384>,  <28.949490, 34.341797, 23.052530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.724613, 34.423935, 23.069384>,  <28.349819, 34.560833, 23.097473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724613, 34.423935, 23.069384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053929, -0.056907, 0.996922,
		-0.345189, -0.937885, -0.034864,
		0.936983, -0.342246, -0.070223,
		29.005709, 34.321262, 23.048317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414419, 34.093681, 23.619192>,  <28.349819, 34.560833, 23.097473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414419, 34.093681, 23.619192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.790495, 34.168175, 23.505095>,  <29.016140, 34.212872, 23.436636>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.790495, 34.168175, 23.505095>,  <28.414419, 34.093681, 23.619192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790495, 34.168175, 23.505095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278266, 0.063168, 0.958425,
		0.196507, -0.980473, 0.007567,
		0.940188, 0.186231, -0.285245,
		29.072552, 34.224045, 23.419521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.638338, 34.745472, 17.170111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.663897, 34.422623, 17.404879>,  <31.679232, 34.228912, 17.545740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.663897, 34.422623, 17.404879>,  <31.638338, 34.745472, 17.170111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663897, 34.422623, 17.404879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106935, 0.579200, 0.808142,
		-0.992211, -0.114399, -0.049301,
		0.063896, -0.807119, 0.586922,
		31.683065, 34.180489, 17.580956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162741, 34.912937, 17.731113>,  <31.638338, 34.745472, 17.170111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162741, 34.912937, 17.731113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.427515, 34.634216, 17.841606>,  <31.586380, 34.466984, 17.907902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.427515, 34.634216, 17.841606>,  <31.162741, 34.912937, 17.731113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427515, 34.634216, 17.841606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215289, 0.529735, 0.820385,
		-0.717978, -0.483573, 0.500665,
		0.661935, -0.696806, 0.276230,
		31.626095, 34.425175, 17.924475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980173, 34.823418, 18.382812>,  <31.162741, 34.912937, 17.731113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980173, 34.823418, 18.382812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359850, 34.702698, 18.347137>,  <31.587656, 34.630264, 18.325731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.359850, 34.702698, 18.347137>,  <30.980173, 34.823418, 18.382812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.359850, 34.702698, 18.347137> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278084, 0.671667, 0.686682,
		-0.147336, -0.676594, 0.721466,
		0.949190, -0.301802, -0.089189,
		31.644608, 34.612156, 18.320381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307741, 34.692432, 19.104519>,  <30.980173, 34.823418, 18.382812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307741, 34.692432, 19.104519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.615339, 34.748627, 18.855068>,  <31.799898, 34.782345, 18.705399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.615339, 34.748627, 18.855068>,  <31.307741, 34.692432, 19.104519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.615339, 34.748627, 18.855068> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517656, 0.435536, 0.736437,
		0.375071, -0.889141, 0.262202,
		0.768995, 0.140485, -0.623626,
		31.846037, 34.790771, 18.667980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.943880, 34.268742, 19.395681>,  <31.307741, 34.692432, 19.104519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.943880, 34.268742, 19.395681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057449, 34.555305, 19.140764>,  <32.125591, 34.727245, 18.987814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.057449, 34.555305, 19.140764>,  <31.943880, 34.268742, 19.395681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057449, 34.555305, 19.140764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560645, 0.415150, 0.716469,
		0.777859, -0.560717, -0.283782,
		0.283924, 0.716412, -0.637291,
		32.142628, 34.770229, 18.949577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.563751, 34.500031, 19.639467>,  <31.943880, 34.268742, 19.395681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.563751, 34.500031, 19.639467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.481216, 34.810783, 19.401514>,  <32.431698, 34.997234, 19.258741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.481216, 34.810783, 19.401514>,  <32.563751, 34.500031, 19.639467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481216, 34.810783, 19.401514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444878, 0.615977, 0.650120,
		0.871499, -0.130510, -0.472712,
		-0.206333, 0.776878, -0.594884,
		32.419315, 35.043846, 19.223049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.111279, 34.947296, 19.544939>,  <32.563751, 34.500031, 19.639467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.111279, 34.947296, 19.544939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.825405, 35.202023, 19.429220>,  <32.653881, 35.354858, 19.359789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.825405, 35.202023, 19.429220>,  <33.111279, 34.947296, 19.544939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825405, 35.202023, 19.429220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410269, 0.716655, 0.563989,
		0.566483, 0.284385, -0.773448,
		-0.714686, 0.636812, -0.289298,
		32.611000, 35.393066, 19.342430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475956, 35.466167, 19.377010>,  <33.111279, 34.947296, 19.544939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475956, 35.466167, 19.377010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105656, 35.585270, 19.470238>,  <32.883476, 35.656731, 19.526175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105656, 35.585270, 19.470238>,  <33.475956, 35.466167, 19.377010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105656, 35.585270, 19.470238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377642, 0.696929, 0.609653,
		0.019096, 0.652405, -0.757630,
		-0.925755, 0.297754, 0.233067,
		32.827930, 35.674595, 19.540157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468662, 36.184319, 19.340708>,  <33.475956, 35.466167, 19.377010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468662, 36.184319, 19.340708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.140812, 36.121494, 19.561087>,  <32.944103, 36.083797, 19.693314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.140812, 36.121494, 19.561087>,  <33.468662, 36.184319, 19.340708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140812, 36.121494, 19.561087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260627, 0.754183, 0.602729,
		-0.510182, 0.637604, -0.577213,
		-0.819627, -0.157064, 0.550947,
		32.894924, 36.074375, 19.726370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105503, 36.811329, 19.483299>,  <33.468662, 36.184319, 19.340708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105503, 36.811329, 19.483299> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.994244, 36.572525, 19.784290>,  <32.927490, 36.429245, 19.964884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.994244, 36.572525, 19.784290>,  <33.105503, 36.811329, 19.483299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994244, 36.572525, 19.784290> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129517, 0.752925, 0.645236,
		-0.951767, 0.276928, -0.132100,
		-0.278145, -0.597005, 0.752476,
		32.910801, 36.393425, 20.010033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.601738, 37.150978, 19.880293>,  <33.105503, 36.811329, 19.483299>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.601738, 37.150978, 19.880293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.778893, 36.887676, 20.123789>,  <32.885185, 36.729694, 20.269886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.778893, 36.887676, 20.123789>,  <32.601738, 37.150978, 19.880293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778893, 36.887676, 20.123789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144628, 0.722515, 0.676059,
		-0.884838, -0.211373, 0.415190,
		0.442881, -0.658251, 0.608738,
		32.911758, 36.690201, 20.306410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.403152, 37.416199, 20.551079>,  <32.601738, 37.150978, 19.880293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.403152, 37.416199, 20.551079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696083, 37.150543, 20.611248>,  <32.871841, 36.991150, 20.647350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.696083, 37.150543, 20.611248>,  <32.403152, 37.416199, 20.551079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696083, 37.150543, 20.611248> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380080, 0.581944, 0.718944,
		-0.565014, -0.469327, 0.678595,
		0.732324, -0.664134, 0.150425,
		32.915779, 36.951302, 20.656376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832394, 37.388096, 20.819639>,  <32.403152, 37.416199, 20.551079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832394, 37.388096, 20.819639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.482824, 37.434525, 21.008440>,  <31.273083, 37.462379, 21.121719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.482824, 37.434525, 21.008440>,  <31.832394, 37.388096, 20.819639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482824, 37.434525, 21.008440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477732, -0.384127, -0.790075,
		0.089607, -0.915956, 0.391147,
		-0.873924, 0.116067, 0.472001,
		31.220648, 37.469345, 21.150040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517735, 36.730961, 20.756271>,  <31.832394, 37.388096, 20.819639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517735, 36.730961, 20.756271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.228792, 36.996117, 20.835041>,  <31.055428, 37.155212, 20.882303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.228792, 36.996117, 20.835041>,  <31.517735, 36.730961, 20.756271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228792, 36.996117, 20.835041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598072, -0.455914, -0.659130,
		-0.347151, -0.593901, 0.725788,
		-0.722355, 0.662891, 0.196924,
		31.012087, 37.194984, 20.894117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879629, 36.332718, 20.763147>,  <31.517735, 36.730961, 20.756271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879629, 36.332718, 20.763147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780769, 36.711082, 20.679075>,  <30.721455, 36.938099, 20.628632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.780769, 36.711082, 20.679075>,  <30.879629, 36.332718, 20.763147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.780769, 36.711082, 20.679075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557555, -0.316226, -0.767551,
		-0.792497, -0.072512, 0.605550,
		-0.247147, 0.945909, -0.210179,
		30.706625, 36.994854, 20.616022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166803, 36.331711, 20.711164>,  <30.879629, 36.332718, 20.763147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166803, 36.331711, 20.711164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281204, 36.662106, 20.516865>,  <30.349844, 36.860340, 20.400286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.281204, 36.662106, 20.516865>,  <30.166803, 36.331711, 20.711164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.281204, 36.662106, 20.516865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616359, -0.229562, -0.753261,
		-0.733692, 0.514830, 0.443448,
		0.286003, 0.825985, -0.485748,
		30.367004, 36.909901, 20.371140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.558395, 36.535130, 20.424135>,  <30.166803, 36.331711, 20.711164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.558395, 36.535130, 20.424135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.828592, 36.729248, 20.202074>,  <29.990709, 36.845718, 20.068836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.828592, 36.729248, 20.202074>,  <29.558395, 36.535130, 20.424135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.828592, 36.729248, 20.202074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562071, -0.148433, -0.813661,
		-0.477272, 0.861657, 0.172507,
		0.675491, 0.485298, -0.555155,
		30.031240, 36.874836, 20.035528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144592, 36.910988, 20.048510>,  <29.558395, 36.535130, 20.424135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144592, 36.910988, 20.048510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.485764, 36.897388, 19.840143>,  <29.690466, 36.889229, 19.715124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.485764, 36.897388, 19.840143>,  <29.144592, 36.910988, 20.048510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485764, 36.897388, 19.840143> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520533, -0.130800, -0.843764,
		-0.039447, 0.990826, -0.129263,
		0.852930, -0.034002, -0.520917,
		29.741642, 36.887188, 19.683868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924763, 37.134670, 19.333778>,  <29.144592, 36.910988, 20.048510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924763, 37.134670, 19.333778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297733, 37.016888, 19.249998>,  <29.521517, 36.946217, 19.199730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.297733, 37.016888, 19.249998>,  <28.924763, 37.134670, 19.333778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297733, 37.016888, 19.249998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255904, -0.128850, -0.958077,
		0.255128, 0.946937, -0.195497,
		0.932428, -0.294461, -0.209452,
		29.577461, 36.928551, 19.187162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.197590, 37.541630, 18.750116>,  <28.924763, 37.134670, 19.333778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.197590, 37.541630, 18.750116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360651, 37.176376, 18.749662>,  <29.458487, 36.957222, 18.749390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.360651, 37.176376, 18.749662>,  <29.197590, 37.541630, 18.750116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.360651, 37.176376, 18.749662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222501, -0.098126, -0.969982,
		0.885615, 0.395667, -0.243175,
		0.407652, -0.913137, -0.001134,
		29.482946, 36.902435, 18.749323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552193, 37.439068, 18.026630>,  <29.197590, 37.541630, 18.750116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552193, 37.439068, 18.026630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.520294, 37.068916, 18.174854>,  <29.501154, 36.846825, 18.263788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.520294, 37.068916, 18.174854>,  <29.552193, 37.439068, 18.026630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520294, 37.068916, 18.174854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222761, -0.345797, -0.911484,
		0.971606, -0.155235, -0.178562,
		-0.079748, -0.925379, 0.370558,
		29.496370, 36.791302, 18.286022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856998, 37.019482, 17.498671>,  <29.552193, 37.439068, 18.026630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856998, 37.019482, 17.498671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.614706, 36.783981, 17.712761>,  <29.469330, 36.642681, 17.841215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.614706, 36.783981, 17.712761>,  <29.856998, 37.019482, 17.498671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614706, 36.783981, 17.712761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274146, -0.477056, -0.835022,
		0.746950, -0.652528, 0.127564,
		-0.605731, -0.588749, 0.535225,
		29.432987, 36.607357, 17.873329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918678, 36.342567, 17.221495>,  <29.856998, 37.019482, 17.498671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918678, 36.342567, 17.221495> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587008, 36.296444, 17.440281>,  <29.388004, 36.268768, 17.571552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.587008, 36.296444, 17.440281>,  <29.918678, 36.342567, 17.221495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.587008, 36.296444, 17.440281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434973, -0.481480, -0.760904,
		0.351091, -0.868839, 0.349076,
		-0.829176, -0.115308, 0.546965,
		29.338255, 36.261852, 17.604370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554581, 35.590397, 17.135281>,  <29.918678, 36.342567, 17.221495>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554581, 35.590397, 17.135281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.274826, 35.847572, 17.260176>,  <29.106974, 36.001877, 17.335112>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.274826, 35.847572, 17.260176>,  <29.554581, 35.590397, 17.135281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274826, 35.847572, 17.260176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615725, -0.320127, -0.720001,
		-0.362962, -0.695808, 0.619766,
		-0.699387, 0.642938, 0.312232,
		29.065010, 36.040451, 17.353846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.938967, 35.179874, 17.065763>,  <29.554581, 35.590397, 17.135281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.938967, 35.179874, 17.065763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.835903, 35.564377, 17.104967>,  <28.774065, 35.795078, 17.128489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.835903, 35.564377, 17.104967>,  <28.938967, 35.179874, 17.065763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835903, 35.564377, 17.104967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784083, -0.148733, -0.602571,
		-0.564646, -0.232104, 0.792024,
		-0.257660, 0.961252, 0.098008,
		28.758606, 35.852753, 17.134369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.976334, 35.248211, 17.835690>,  <28.938967, 35.179874, 17.065763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.976334, 35.248211, 17.835690> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858278, 34.867306, 17.866922>,  <28.787445, 34.638763, 17.885662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.858278, 34.867306, 17.866922>,  <28.976334, 35.248211, 17.835690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.858278, 34.867306, 17.866922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174121, 0.133958, 0.975570,
		-0.939455, 0.274332, -0.205345,
		-0.295138, -0.952259, 0.078080,
		28.769737, 34.581627, 17.890347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412403, 35.217541, 18.294125>,  <28.976334, 35.248211, 17.835690>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412403, 35.217541, 18.294125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555761, 34.844116, 18.292463>,  <28.641775, 34.620060, 18.291468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.555761, 34.844116, 18.292463>,  <28.412403, 35.217541, 18.294125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.555761, 34.844116, 18.292463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044436, -0.021501, 0.998781,
		-0.932513, -0.357772, -0.049189,
		0.358393, -0.933561, -0.004152,
		28.663279, 34.564049, 18.291218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945826, 34.924492, 18.753374>,  <28.412403, 35.217541, 18.294125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945826, 34.924492, 18.753374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265480, 34.685837, 18.723951>,  <28.457272, 34.542645, 18.706297>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.265480, 34.685837, 18.723951>,  <27.945826, 34.924492, 18.753374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.265480, 34.685837, 18.723951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023990, -0.090615, 0.995597,
		-0.600674, -0.797380, -0.058100,
		0.799135, -0.596635, -0.073559,
		28.505220, 34.506847, 18.701883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.784298, 34.403404, 19.046984>,  <27.945826, 34.924492, 18.753374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.784298, 34.403404, 19.046984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182266, 34.392300, 19.085691>,  <28.421047, 34.385635, 19.108915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.182266, 34.392300, 19.085691>,  <27.784298, 34.403404, 19.046984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.182266, 34.392300, 19.085691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099908, -0.154128, 0.982987,
		-0.012373, -0.987661, -0.156119,
		0.994920, -0.027760, 0.096768,
		28.480742, 34.383972, 19.114721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.844835, 33.830112, 19.456583>,  <27.784298, 34.403404, 19.046984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.844835, 33.830112, 19.456583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201593, 34.004314, 19.505344>,  <28.415648, 34.108833, 19.534601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201593, 34.004314, 19.505344>,  <27.844835, 33.830112, 19.456583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201593, 34.004314, 19.505344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069521, -0.398384, 0.914580,
		0.446867, -0.807235, -0.385593,
		0.891895, 0.435503, 0.121905,
		28.469162, 34.134964, 19.541916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284340, 33.255924, 19.635138>,  <27.844835, 33.830112, 19.456583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284340, 33.255924, 19.635138> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477240, 33.579132, 19.770508>,  <28.592979, 33.773056, 19.851730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.477240, 33.579132, 19.770508>,  <28.284340, 33.255924, 19.635138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.477240, 33.579132, 19.770508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104410, -0.436577, 0.893588,
		0.869789, -0.395599, -0.294905,
		0.482251, 0.808024, 0.338425,
		28.621916, 33.821541, 19.872036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.727869, 32.988354, 20.091158>,  <28.284340, 33.255924, 19.635138>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.727869, 32.988354, 20.091158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743898, 33.365711, 20.222855>,  <28.753515, 33.592125, 20.301872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.743898, 33.365711, 20.222855>,  <28.727869, 32.988354, 20.091158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.743898, 33.365711, 20.222855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165892, -0.331213, 0.928858,
		0.985329, 0.017396, -0.169775,
		0.040074, 0.943395, 0.329240,
		28.755920, 33.648731, 20.321627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320686, 32.987988, 20.412497>,  <28.727869, 32.988354, 20.091158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320686, 32.987988, 20.412497> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073845, 33.272430, 20.547258>,  <28.925741, 33.443096, 20.628117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.073845, 33.272430, 20.547258>,  <29.320686, 32.987988, 20.412497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.073845, 33.272430, 20.547258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218247, -0.256679, 0.941533,
		0.756012, 0.654550, 0.003199,
		-0.617102, 0.711112, 0.336906,
		28.888714, 33.485764, 20.648331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958847, 32.652943, 20.692347>,  <29.320686, 32.987988, 20.412497>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958847, 32.652943, 20.692347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971313, 32.274422, 20.821058>,  <29.978794, 32.047310, 20.898285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971313, 32.274422, 20.821058>,  <29.958847, 32.652943, 20.692347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971313, 32.274422, 20.821058> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189145, -0.321704, -0.927756,
		0.981454, -0.031949, -0.189014,
		0.031166, -0.946301, 0.321781,
		29.980663, 31.990532, 20.917593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259703, 32.329880, 20.199200>,  <29.958847, 32.652943, 20.692347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259703, 32.329880, 20.199200> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.075979, 32.034607, 20.396837>,  <29.965744, 31.857445, 20.515419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.075979, 32.034607, 20.396837>,  <30.259703, 32.329880, 20.199200>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.075979, 32.034607, 20.396837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258812, -0.420890, -0.869406,
		0.849736, -0.527204, 0.002269,
		-0.459310, -0.738178, 0.494093,
		29.938187, 31.813154, 20.545065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614672, 31.735666, 19.974737>,  <30.259703, 32.329880, 20.199200>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614672, 31.735666, 19.974737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.263062, 31.605339, 20.113966>,  <30.052095, 31.527143, 20.197502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.263062, 31.605339, 20.113966>,  <30.614672, 31.735666, 19.974737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.263062, 31.605339, 20.113966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083715, -0.613238, -0.785449,
		0.469364, -0.719570, 0.511777,
		-0.879027, -0.325818, 0.348071,
		29.999353, 31.507593, 20.218388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618233, 31.050308, 19.722887>,  <30.614672, 31.735666, 19.974737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618233, 31.050308, 19.722887> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.244942, 31.128616, 19.843393>,  <30.020967, 31.175602, 19.915697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.244942, 31.128616, 19.843393>,  <30.618233, 31.050308, 19.722887>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244942, 31.128616, 19.843393> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342704, -0.736849, -0.582759,
		0.107901, -0.647091, 0.754738,
		-0.933226, 0.195772, 0.301267,
		29.964973, 31.187347, 19.933773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332850, 30.463440, 19.933691>,  <30.618233, 31.050308, 19.722887>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332850, 30.463440, 19.933691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042311, 30.710249, 19.812559>,  <29.867989, 30.858334, 19.739880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.042311, 30.710249, 19.812559>,  <30.332850, 30.463440, 19.933691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.042311, 30.710249, 19.812559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377638, -0.726381, -0.574247,
		-0.574291, -0.302744, 0.760616,
		-0.726346, 0.617022, -0.302827,
		29.824408, 30.895355, 19.721710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.740765, 30.099739, 19.964821>,  <30.332850, 30.463440, 19.933691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.740765, 30.099739, 19.964821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.664518, 30.388044, 19.698236>,  <29.618771, 30.561028, 19.538286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.664518, 30.388044, 19.698236>,  <29.740765, 30.099739, 19.964821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664518, 30.388044, 19.698236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356620, -0.683367, -0.637049,
		-0.914597, 0.116240, 0.387299,
		-0.190617, 0.720762, -0.666459,
		29.607334, 30.604273, 19.498299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.066124, 29.959785, 19.627560>,  <29.740765, 30.099739, 19.964821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.066124, 29.959785, 19.627560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298285, 30.166357, 19.375706>,  <29.437580, 30.290300, 19.224594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.298285, 30.166357, 19.375706>,  <29.066124, 29.959785, 19.627560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298285, 30.166357, 19.375706> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186829, -0.668120, -0.720216,
		-0.792610, 0.535648, -0.291293,
		0.580401, 0.516428, -0.629633,
		29.472404, 30.321285, 19.186815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841724, 29.846764, 19.071909>,  <29.066124, 29.959785, 19.627560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841724, 29.846764, 19.071909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165838, 30.007542, 18.901320>,  <29.360306, 30.104008, 18.798965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.165838, 30.007542, 18.901320>,  <28.841724, 29.846764, 19.071909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165838, 30.007542, 18.901320> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127947, -0.588834, -0.798063,
		-0.571898, 0.701224, -0.425696,
		0.810285, 0.401944, -0.426472,
		29.408924, 30.128124, 18.773378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.573008, 30.026398, 18.428453>,  <28.841724, 29.846764, 19.071909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.573008, 30.026398, 18.428453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972046, 30.019728, 18.401546>,  <29.211470, 30.015726, 18.385403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.972046, 30.019728, 18.401546>,  <28.573008, 30.026398, 18.428453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972046, 30.019728, 18.401546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066233, -0.515028, -0.854611,
		-0.020392, 0.857011, -0.514894,
		0.997596, -0.016676, -0.067265,
		29.271324, 30.014725, 18.381367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.162998, 36.745800, 31.675550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438671, 36.671116, 31.395502>,  <36.604073, 36.626305, 31.227472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.438671, 36.671116, 31.395502>,  <36.162998, 36.745800, 31.675550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438671, 36.671116, 31.395502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650245, -0.585686, -0.483894,
		-0.319706, 0.788741, -0.525048,
		0.689181, -0.186706, -0.700122,
		36.645424, 36.615105, 31.185465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.845692, 36.993515, 30.970810>,  <36.162998, 36.745800, 31.675550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.845692, 36.993515, 30.970810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142834, 36.732346, 30.911674>,  <36.321121, 36.575645, 30.876192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.142834, 36.732346, 30.911674>,  <35.845692, 36.993515, 30.970810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142834, 36.732346, 30.911674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537622, -0.450257, -0.712904,
		0.398903, 0.609069, -0.685501,
		0.742859, -0.652920, -0.147840,
		36.365692, 36.536469, 30.867323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696507, 36.712021, 30.183216>,  <35.845692, 36.993515, 30.970810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696507, 36.712021, 30.183216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948223, 36.464779, 30.371656>,  <36.099255, 36.316433, 30.484720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.948223, 36.464779, 30.371656>,  <35.696507, 36.712021, 30.183216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948223, 36.464779, 30.371656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552868, -0.782065, -0.287596,
		0.546197, -0.079474, -0.833878,
		0.629291, -0.618108, 0.471100,
		36.137009, 36.279346, 30.512987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033970, 36.336205, 29.701412>,  <35.696507, 36.712021, 30.183216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033970, 36.336205, 29.701412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035103, 36.119202, 30.037430>,  <36.035782, 35.988998, 30.239040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.035103, 36.119202, 30.037430>,  <36.033970, 36.336205, 29.701412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035103, 36.119202, 30.037430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558560, -0.697646, -0.448666,
		0.829459, -0.467944, -0.305001,
		0.002833, -0.542512, 0.840043,
		36.035954, 35.956448, 30.289442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185806, 35.645405, 29.433508>,  <36.033970, 36.336205, 29.701412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185806, 35.645405, 29.433508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000202, 35.608818, 29.785946>,  <35.888840, 35.586864, 29.997408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.000202, 35.608818, 29.785946>,  <36.185806, 35.645405, 29.433508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000202, 35.608818, 29.785946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677738, -0.603825, -0.419603,
		0.570407, -0.791852, 0.218191,
		-0.464012, -0.091468, 0.881094,
		35.861000, 35.581379, 30.050274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011665, 34.889233, 29.445648>,  <36.185806, 35.645405, 29.433508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011665, 34.889233, 29.445648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779972, 35.060814, 29.722919>,  <35.640957, 35.163761, 29.889282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.779972, 35.060814, 29.722919>,  <36.011665, 34.889233, 29.445648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779972, 35.060814, 29.722919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781634, -0.533642, -0.322917,
		0.231393, -0.728854, 0.644383,
		-0.579229, 0.428951, 0.693178,
		35.606205, 35.189499, 29.930872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597858, 34.275055, 29.803801>,  <36.011665, 34.889233, 29.445648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597858, 34.275055, 29.803801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394600, 34.611263, 29.878962>,  <35.272644, 34.812988, 29.924059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.394600, 34.611263, 29.878962>,  <35.597858, 34.275055, 29.803801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394600, 34.611263, 29.878962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812747, -0.395770, -0.427562,
		-0.285010, -0.369981, 0.884242,
		-0.508146, 0.840524, 0.187903,
		35.242157, 34.863422, 29.935331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.930927, 34.086922, 30.109371>,  <35.597858, 34.275055, 29.803801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.930927, 34.086922, 30.109371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892151, 34.453068, 29.953054>,  <34.868885, 34.672756, 29.859264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.892151, 34.453068, 29.953054>,  <34.930927, 34.086922, 30.109371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892151, 34.453068, 29.953054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869452, -0.268983, -0.414369,
		-0.484413, 0.299604, 0.821937,
		-0.096940, 0.915361, -0.390790,
		34.863068, 34.727676, 29.835817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224640, 34.309410, 30.263065>,  <34.930927, 34.086922, 30.109371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224640, 34.309410, 30.263065> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340797, 34.508213, 29.935980>,  <34.410492, 34.627495, 29.739729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.340797, 34.508213, 29.935980>,  <34.224640, 34.309410, 30.263065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.340797, 34.508213, 29.935980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783333, -0.367337, -0.501451,
		-0.549602, 0.786159, 0.282651,
		0.290392, 0.497008, -0.817713,
		34.427914, 34.657314, 29.690666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536564, 34.242599, 29.897997>,  <34.224640, 34.309410, 30.263065>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536564, 34.242599, 29.897997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765182, 34.442188, 29.637426>,  <33.902355, 34.561943, 29.481085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.765182, 34.442188, 29.637426>,  <33.536564, 34.242599, 29.897997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765182, 34.442188, 29.637426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611880, -0.269801, -0.743512,
		-0.546747, 0.823550, 0.151106,
		0.571551, 0.498972, -0.651426,
		33.936649, 34.591881, 29.441998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104134, 34.613773, 29.517061>,  <33.536564, 34.242599, 29.897997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104134, 34.613773, 29.517061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438110, 34.565804, 29.302219>,  <33.638496, 34.537022, 29.173313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.438110, 34.565804, 29.302219>,  <33.104134, 34.613773, 29.517061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438110, 34.565804, 29.302219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546010, -0.302576, -0.781230,
		-0.068828, 0.945551, -0.318114,
		0.834946, -0.119923, -0.537106,
		33.688595, 34.529827, 29.141087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855106, 34.830410, 28.888920>,  <33.104134, 34.613773, 29.517061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855106, 34.830410, 28.888920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160610, 34.582951, 28.815229>,  <33.343914, 34.434475, 28.771015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.160610, 34.582951, 28.815229>,  <32.855106, 34.830410, 28.888920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160610, 34.582951, 28.815229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332710, -0.132720, -0.933643,
		0.553150, 0.774373, -0.307199,
		0.763760, -0.618653, -0.184228,
		33.389740, 34.397354, 28.759960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626244, 35.379868, 28.517130>,  <32.855106, 34.830410, 28.888920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626244, 35.379868, 28.517130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249672, 35.447372, 28.633909>,  <32.023727, 35.487877, 28.703976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.249672, 35.447372, 28.633909>,  <32.626244, 35.379868, 28.517130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249672, 35.447372, 28.633909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336309, 0.406443, 0.849529,
		0.024710, 0.897955, -0.439394,
		-0.941428, 0.168764, 0.291947,
		31.967243, 35.498001, 28.721493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556396, 36.029922, 28.653772>,  <32.626244, 35.379868, 28.517130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556396, 36.029922, 28.653772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270226, 35.852489, 28.869696>,  <32.098522, 35.746029, 28.999250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270226, 35.852489, 28.869696>,  <32.556396, 36.029922, 28.653772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270226, 35.852489, 28.869696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406927, 0.363502, 0.838020,
		-0.567952, 0.819208, -0.079555,
		-0.715431, -0.443582, 0.539809,
		32.055595, 35.719414, 29.031639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299732, 36.505577, 29.148834>,  <32.556396, 36.029922, 28.653772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299732, 36.505577, 29.148834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184650, 36.152443, 29.297331>,  <32.115601, 35.940563, 29.386429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.184650, 36.152443, 29.297331>,  <32.299732, 36.505577, 29.148834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184650, 36.152443, 29.297331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359321, 0.259809, 0.896319,
		-0.887757, 0.391273, 0.242473,
		-0.287709, -0.882839, 0.371239,
		32.098339, 35.887592, 29.408703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922266, 36.709656, 29.688799>,  <32.299732, 36.505577, 29.148834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922266, 36.709656, 29.688799> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039658, 36.331871, 29.747944>,  <32.110092, 36.105202, 29.783430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039658, 36.331871, 29.747944>,  <31.922266, 36.709656, 29.688799>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039658, 36.331871, 29.747944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314995, 0.241575, 0.917834,
		-0.902579, -0.222788, 0.368397,
		0.293478, -0.944461, 0.147863,
		32.127701, 36.048534, 29.792303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644346, 36.515190, 30.372934>,  <31.922266, 36.709656, 29.688799>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644346, 36.515190, 30.372934> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.953863, 36.277145, 30.286131>,  <32.139572, 36.134319, 30.234049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.953863, 36.277145, 30.286131>,  <31.644346, 36.515190, 30.372934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953863, 36.277145, 30.286131> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279324, 0.013085, 0.960108,
		-0.568530, -0.803538, 0.176354,
		0.773790, -0.595110, -0.217008,
		32.186001, 36.098614, 30.221029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734615, 36.003971, 30.980633>,  <31.644346, 36.515190, 30.372934>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734615, 36.003971, 30.980633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067627, 36.002300, 30.759047>,  <32.267433, 36.001297, 30.626095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.067627, 36.002300, 30.759047>,  <31.734615, 36.003971, 30.980633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.067627, 36.002300, 30.759047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546288, -0.159864, 0.822200,
		-0.091990, -0.987130, -0.130812,
		0.832531, -0.004173, -0.553964,
		32.317387, 36.001049, 30.592857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123379, 35.425373, 31.343786>,  <31.734615, 36.003971, 30.980633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123379, 35.425373, 31.343786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.372986, 35.656624, 31.133505>,  <32.522751, 35.795376, 31.007336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.372986, 35.656624, 31.133505>,  <32.123379, 35.425373, 31.343786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372986, 35.656624, 31.133505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542058, 0.164306, 0.824122,
		0.562825, -0.799232, -0.210848,
		0.624021, 0.578128, -0.525705,
		32.560192, 35.830063, 30.975794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724613, 35.240467, 31.591343>,  <32.123379, 35.425373, 31.343786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724613, 35.240467, 31.591343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825111, 35.586514, 31.417704>,  <32.885410, 35.794144, 31.313520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.825111, 35.586514, 31.417704>,  <32.724613, 35.240467, 31.591343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825111, 35.586514, 31.417704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633378, 0.192187, 0.749598,
		0.731920, -0.463284, -0.499661,
		0.251248, 0.865120, -0.434099,
		32.900486, 35.846050, 31.287474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475525, 35.321766, 31.638773>,  <32.724613, 35.240467, 31.591343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475525, 35.321766, 31.638773> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364689, 35.700699, 31.574535>,  <33.298187, 35.928059, 31.535994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364689, 35.700699, 31.574535>,  <33.475525, 35.321766, 31.638773>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364689, 35.700699, 31.574535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553272, 0.293955, 0.779410,
		0.785566, 0.127112, -0.605582,
		-0.277086, 0.947329, -0.160594,
		33.281563, 35.984898, 31.526358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096848, 35.763927, 31.692144>,  <33.475525, 35.321766, 31.638773>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096848, 35.763927, 31.692144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784554, 35.994293, 31.789120>,  <33.597176, 36.132511, 31.847305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.784554, 35.994293, 31.789120>,  <34.096848, 35.763927, 31.692144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784554, 35.994293, 31.789120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475910, 0.296629, 0.827962,
		0.404918, 0.761799, -0.505671,
		-0.780737, 0.575911, 0.242438,
		33.550331, 36.167065, 31.861851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423687, 36.245796, 32.040726>,  <34.096848, 35.763927, 31.692144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423687, 36.245796, 32.040726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052452, 36.355217, 32.141781>,  <33.829712, 36.420872, 32.202415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052452, 36.355217, 32.141781>,  <34.423687, 36.245796, 32.040726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052452, 36.355217, 32.141781> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363416, 0.517512, 0.774668,
		0.081170, 0.810771, -0.579709,
		-0.928084, 0.273555, 0.252640,
		33.774025, 36.437283, 32.217571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408371, 36.909451, 32.218826>,  <34.423687, 36.245796, 32.040726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408371, 36.909451, 32.218826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054489, 36.829739, 32.387386>,  <33.842159, 36.781910, 32.488522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.054489, 36.829739, 32.387386>,  <34.408371, 36.909451, 32.218826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054489, 36.829739, 32.387386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324011, 0.387020, 0.863269,
		-0.335124, 0.900279, -0.277830,
		-0.884709, -0.199281, 0.421400,
		33.789078, 36.769955, 32.513805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186764, 37.582096, 32.538776>,  <34.408371, 36.909451, 32.218826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186764, 37.582096, 32.538776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046207, 37.242149, 32.695877>,  <33.961872, 37.038181, 32.790138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.046207, 37.242149, 32.695877>,  <34.186764, 37.582096, 32.538776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.046207, 37.242149, 32.695877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310161, 0.290143, 0.905327,
		-0.883358, 0.439943, 0.161640,
		-0.351393, -0.849863, 0.392754,
		33.940788, 36.987190, 32.813702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637890, 37.839390, 33.058113>,  <34.186764, 37.582096, 32.538776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637890, 37.839390, 33.058113> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742657, 37.461571, 33.137333>,  <33.805515, 37.234879, 33.184864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.742657, 37.461571, 33.137333>,  <33.637890, 37.839390, 33.058113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.742657, 37.461571, 33.137333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439129, 0.299378, 0.847076,
		-0.859399, -0.134892, 0.493191,
		0.261914, -0.944551, 0.198050,
		33.821232, 37.178204, 33.196747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752274, 38.418392, 32.518124>,  <33.637890, 37.839390, 33.058113>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752274, 38.418392, 32.518124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920544, 38.753914, 32.656364>,  <34.021507, 38.955227, 32.739307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.920544, 38.753914, 32.656364>,  <33.752274, 38.418392, 32.518124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920544, 38.753914, 32.656364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777198, -0.529720, 0.339647,
		0.467968, 0.125717, -0.874758,
		0.420678, 0.838804, 0.345599,
		34.046745, 39.005554, 32.760044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675957, 38.871510, 32.006752>,  <33.752274, 38.418392, 32.518124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675957, 38.871510, 32.006752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892818, 39.076546, 31.740419>,  <34.022934, 39.199566, 31.580622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.892818, 39.076546, 31.740419>,  <33.675957, 38.871510, 32.006752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.892818, 39.076546, 31.740419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672017, -0.211196, -0.709781,
		-0.504445, 0.832256, 0.229967,
		0.542152, 0.512587, -0.665827,
		34.055466, 39.230324, 31.540670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309341, 39.468628, 31.624115>,  <33.675957, 38.871510, 32.006752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309341, 39.468628, 31.624115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598808, 39.381699, 31.362099>,  <33.772488, 39.329540, 31.204889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598808, 39.381699, 31.362099>,  <33.309341, 39.468628, 31.624115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598808, 39.381699, 31.362099> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683632, -0.095562, -0.723544,
		0.094646, 0.971410, -0.217724,
		0.723664, -0.217324, -0.655042,
		33.815907, 39.316502, 31.165586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222633, 39.922459, 30.940529>,  <33.309341, 39.468628, 31.624115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222633, 39.922459, 30.940529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471054, 39.639580, 30.805370>,  <33.620106, 39.469852, 30.724276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471054, 39.639580, 30.805370>,  <33.222633, 39.922459, 30.940529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471054, 39.639580, 30.805370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570178, -0.111857, -0.813871,
		0.537767, 0.698117, -0.472694,
		0.621051, -0.707193, -0.337898,
		33.657368, 39.427422, 30.704000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449368, 40.154888, 30.196264>,  <33.222633, 39.922459, 30.940529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449368, 40.154888, 30.196264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500523, 39.759373, 30.227095>,  <33.531216, 39.522064, 30.245592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.500523, 39.759373, 30.227095>,  <33.449368, 40.154888, 30.196264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.500523, 39.759373, 30.227095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489015, -0.130475, -0.862462,
		0.862850, 0.072608, -0.500219,
		0.127887, -0.988789, 0.077074,
		33.538887, 39.462734, 30.250217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685024, 39.908344, 29.537405>,  <33.449368, 40.154888, 30.196264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685024, 39.908344, 29.537405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515572, 39.595535, 29.720263>,  <33.413898, 39.407852, 29.829977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.515572, 39.595535, 29.720263>,  <33.685024, 39.908344, 29.537405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515572, 39.595535, 29.720263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443398, -0.261053, -0.857467,
		0.789894, -0.565949, -0.236154,
		-0.423634, -0.782018, 0.457145,
		33.388481, 39.360931, 29.857407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794849, 39.404247, 29.030069>,  <33.685024, 39.908344, 29.537405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794849, 39.404247, 29.030069> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504467, 39.291344, 29.280931>,  <33.330238, 39.223602, 29.431448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.504467, 39.291344, 29.280931>,  <33.794849, 39.404247, 29.030069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504467, 39.291344, 29.280931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508965, -0.392809, -0.765935,
		0.462546, -0.875231, 0.141498,
		-0.725951, -0.282262, 0.627154,
		33.286682, 39.206665, 29.469078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773930, 38.729816, 28.914400>,  <33.794849, 39.404247, 29.030069>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773930, 38.729816, 28.914400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422760, 38.786449, 29.097353>,  <33.212059, 38.820431, 29.207125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.422760, 38.786449, 29.097353>,  <33.773930, 38.729816, 28.914400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422760, 38.786449, 29.097353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455539, -0.541101, -0.706890,
		0.147403, -0.828953, 0.539545,
		-0.877927, 0.141586, 0.457381,
		33.159382, 38.828926, 29.234568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323441, 38.102581, 28.994482>,  <33.773930, 38.729816, 28.914400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323441, 38.102581, 28.994482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064690, 38.407394, 29.006208>,  <32.909439, 38.590282, 29.013245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.064690, 38.407394, 29.006208>,  <33.323441, 38.102581, 28.994482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.064690, 38.407394, 29.006208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561814, -0.450211, -0.694028,
		-0.515677, -0.465416, 0.719351,
		-0.646871, 0.762036, 0.029314,
		32.870628, 38.636005, 29.015003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632477, 37.769413, 29.018339>,  <33.323441, 38.102581, 28.994482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632477, 37.769413, 29.018339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586708, 38.145226, 28.889225>,  <32.559246, 38.370712, 28.811756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.586708, 38.145226, 28.889225>,  <32.632477, 37.769413, 29.018339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586708, 38.145226, 28.889225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523183, -0.333200, -0.784383,
		-0.844504, 0.079127, 0.529671,
		-0.114421, 0.939530, -0.322787,
		32.552383, 38.427086, 28.792389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950483, 37.857174, 28.774946>,  <32.632477, 37.769413, 29.018339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950483, 37.857174, 28.774946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115242, 38.175484, 28.597370>,  <32.214096, 38.366470, 28.490824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.115242, 38.175484, 28.597370>,  <31.950483, 37.857174, 28.774946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115242, 38.175484, 28.597370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580292, -0.146557, -0.801113,
		-0.702568, 0.587592, 0.401415,
		0.411898, 0.795774, -0.443941,
		32.238811, 38.414215, 28.464188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423418, 38.135872, 28.301119>,  <31.950483, 37.857174, 28.774946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423418, 38.135872, 28.301119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.744062, 38.325016, 28.154793>,  <31.936449, 38.438503, 28.066998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.744062, 38.325016, 28.154793>,  <31.423418, 38.135872, 28.301119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.744062, 38.325016, 28.154793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447491, 0.068817, -0.891637,
		-0.396446, 0.878445, 0.266766,
		0.801612, 0.472861, -0.365814,
		31.984547, 38.466873, 28.045048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199551, 38.783112, 27.959049>,  <31.423418, 38.135872, 28.301119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199551, 38.783112, 27.959049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557264, 38.703842, 27.798559>,  <31.771893, 38.656281, 27.702265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.557264, 38.703842, 27.798559>,  <31.199551, 38.783112, 27.959049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557264, 38.703842, 27.798559> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412840, -0.019397, -0.910597,
		0.172676, 0.979975, -0.099161,
		0.894286, -0.198176, -0.401223,
		31.825550, 38.644390, 27.678192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212425, 39.156628, 27.392405>,  <31.199551, 38.783112, 27.959049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212425, 39.156628, 27.392405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516653, 38.915504, 27.295942>,  <31.699190, 38.770832, 27.238066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516653, 38.915504, 27.295942>,  <31.212425, 39.156628, 27.392405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516653, 38.915504, 27.295942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166107, 0.178406, -0.969835,
		0.627649, 0.777684, 0.035559,
		0.760569, -0.602809, -0.241155,
		31.744823, 38.734661, 27.223597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769630, 39.502460, 26.869997>,  <31.212425, 39.156628, 27.392405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769630, 39.502460, 26.869997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.780708, 39.102886, 26.855198>,  <31.787355, 38.863144, 26.846317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.780708, 39.102886, 26.855198>,  <31.769630, 39.502460, 26.869997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780708, 39.102886, 26.855198> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160354, 0.032094, -0.986537,
		0.986671, 0.033253, -0.159294,
		0.027692, -0.998931, -0.036999,
		31.789017, 38.803207, 26.844099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985641, 39.415630, 26.278938>,  <31.769630, 39.502460, 26.869997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985641, 39.415630, 26.278938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940933, 39.018547, 26.297001>,  <31.914108, 38.780296, 26.307838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.940933, 39.018547, 26.297001>,  <31.985641, 39.415630, 26.278938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940933, 39.018547, 26.297001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019474, -0.047622, -0.998675,
		0.993543, -0.110742, 0.024655,
		-0.111770, -0.992708, 0.045158,
		31.907402, 38.720734, 26.310549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477863, 39.121143, 25.837227>,  <31.985641, 39.415630, 26.278938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477863, 39.121143, 25.837227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191601, 38.848408, 25.897804>,  <32.019844, 38.684765, 25.934151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.191601, 38.848408, 25.897804>,  <32.477863, 39.121143, 25.837227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191601, 38.848408, 25.897804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010956, -0.205841, -0.978524,
		0.698368, -0.701945, 0.139841,
		-0.715655, -0.681838, 0.151443,
		31.976904, 38.643856, 25.943237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668839, 38.550911, 25.465260>,  <32.477863, 39.121143, 25.837227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668839, 38.550911, 25.465260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279606, 38.473034, 25.514597>,  <32.046066, 38.426308, 25.544199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.279606, 38.473034, 25.514597>,  <32.668839, 38.550911, 25.465260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279606, 38.473034, 25.514597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070063, -0.259953, -0.963076,
		0.219564, -0.945791, 0.239314,
		-0.973079, -0.194690, 0.123342,
		31.987682, 38.414627, 25.551600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.592167, 38.214615, 24.950184>,  <32.668839, 38.550911, 25.465260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.592167, 38.214615, 24.950184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202942, 38.239525, 25.038969>,  <31.969406, 38.254471, 25.092241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.202942, 38.239525, 25.038969>,  <32.592167, 38.214615, 24.950184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202942, 38.239525, 25.038969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230464, -0.238976, -0.943280,
		-0.005694, -0.969027, 0.246890,
		-0.973064, 0.062270, 0.221965,
		31.911022, 38.258205, 25.105558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278904, 37.560772, 24.781433>,  <32.592167, 38.214615, 24.950184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278904, 37.560772, 24.781433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.002396, 37.847057, 24.741625>,  <31.836491, 38.018829, 24.717739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.002396, 37.847057, 24.741625>,  <32.278904, 37.560772, 24.781433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002396, 37.847057, 24.741625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101284, -0.232338, -0.967347,
		-0.715464, -0.658618, 0.233098,
		-0.691270, 0.715711, -0.099521,
		31.795015, 38.061771, 24.711769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753918, 37.201569, 24.446350>,  <32.278904, 37.560772, 24.781433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753918, 37.201569, 24.446350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681589, 37.591789, 24.396379>,  <31.638191, 37.825920, 24.366398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681589, 37.591789, 24.396379>,  <31.753918, 37.201569, 24.446350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681589, 37.591789, 24.396379> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329925, -0.179826, -0.926721,
		-0.926527, -0.126355, 0.354375,
		-0.180822, 0.975549, -0.124926,
		31.627342, 37.884453, 24.358902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038763, 37.285435, 24.098724>,  <31.753918, 37.201569, 24.446350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038763, 37.285435, 24.098724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.266123, 37.604282, 24.017225>,  <31.402538, 37.795593, 23.968325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.266123, 37.604282, 24.017225>,  <31.038763, 37.285435, 24.098724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.266123, 37.604282, 24.017225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283705, -0.042562, -0.957967,
		-0.772290, 0.602315, 0.201955,
		0.568402, 0.797123, -0.203750,
		31.436644, 37.843418, 23.956100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591335, 37.675835, 23.630281>,  <31.038763, 37.285435, 24.098724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591335, 37.675835, 23.630281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.956144, 37.833668, 23.585527>,  <31.175030, 37.928368, 23.558674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.956144, 37.833668, 23.585527>,  <30.591335, 37.675835, 23.630281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956144, 37.833668, 23.585527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132571, 0.025459, -0.990847,
		-0.388120, 0.918508, 0.075529,
		0.912024, 0.394581, -0.111887,
		31.229752, 37.952042, 23.551962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500553, 38.302471, 23.268545>,  <30.591335, 37.675835, 23.630281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500553, 38.302471, 23.268545> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871969, 38.175896, 23.190905>,  <31.094820, 38.099949, 23.144321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.871969, 38.175896, 23.190905>,  <30.500553, 38.302471, 23.268545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871969, 38.175896, 23.190905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161713, 0.125850, -0.978780,
		0.334153, 0.940227, 0.065685,
		0.928542, -0.316440, -0.194100,
		31.150532, 38.080963, 23.132675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666618, 38.690342, 22.679420>,  <30.500553, 38.302471, 23.268545>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666618, 38.690342, 22.679420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946634, 38.408253, 22.724342>,  <31.114643, 38.238998, 22.751295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946634, 38.408253, 22.724342>,  <30.666618, 38.690342, 22.679420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946634, 38.408253, 22.724342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122878, -0.035964, -0.991770,
		0.703453, 0.708077, 0.061480,
		0.700039, -0.705218, 0.112306,
		31.156647, 38.196686, 22.758034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028625, 38.771881, 22.109627>,  <30.666618, 38.690342, 22.679420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028625, 38.771881, 22.109627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.131117, 38.399948, 22.215269>,  <31.192612, 38.176788, 22.278654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.131117, 38.399948, 22.215269>,  <31.028625, 38.771881, 22.109627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131117, 38.399948, 22.215269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059742, -0.287938, -0.955784,
		0.964768, 0.229123, -0.129329,
		0.256231, -0.929836, 0.264105,
		31.207987, 38.120998, 22.294500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.620916, 38.577976, 21.651875>,  <31.028625, 38.771881, 22.109627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.620916, 38.577976, 21.651875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442617, 38.251690, 21.799345>,  <31.335638, 38.055920, 21.887827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.442617, 38.251690, 21.799345>,  <31.620916, 38.577976, 21.651875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442617, 38.251690, 21.799345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067483, -0.380063, -0.922496,
		0.892611, -0.436081, 0.114366,
		-0.445749, -0.815712, 0.368676,
		31.308893, 38.006977, 21.909948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031956, 37.963490, 21.359789>,  <31.620916, 38.577976, 21.651875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031956, 37.963490, 21.359789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664553, 37.843258, 21.462542>,  <31.444111, 37.771118, 21.524193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.664553, 37.843258, 21.462542>,  <32.031956, 37.963490, 21.359789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664553, 37.843258, 21.462542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081148, -0.492554, -0.866490,
		0.386979, -0.816727, 0.428025,
		-0.918511, -0.300580, 0.256884,
		31.389000, 37.753082, 21.539606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497562, 37.428513, 21.428558>,  <32.031956, 37.963490, 21.359789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497562, 37.428513, 21.428558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819557, 37.236050, 21.289717>,  <33.012756, 37.120571, 21.206411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.819557, 37.236050, 21.289717>,  <32.497562, 37.428513, 21.428558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819557, 37.236050, 21.289717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566864, 0.451115, 0.689319,
		-0.175086, -0.751656, 0.635892,
		0.804991, -0.481154, -0.347103,
		33.061054, 37.091702, 21.185585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816433, 37.007664, 21.970415>,  <32.497562, 37.428513, 21.428558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816433, 37.007664, 21.970415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075901, 37.127289, 21.690475>,  <33.231583, 37.199062, 21.522512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.075901, 37.127289, 21.690475>,  <32.816433, 37.007664, 21.970415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075901, 37.127289, 21.690475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595416, 0.373332, 0.711409,
		0.474031, -0.878171, 0.064104,
		0.648671, 0.299062, -0.699848,
		33.270504, 37.217007, 21.480520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.518879, 36.822227, 22.156775>,  <32.816433, 37.007664, 21.970415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.518879, 36.822227, 22.156775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583420, 37.107994, 21.884430>,  <33.622143, 37.279453, 21.721024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.583420, 37.107994, 21.884430>,  <33.518879, 36.822227, 22.156775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.583420, 37.107994, 21.884430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674873, 0.423505, 0.604309,
		0.720079, -0.556998, -0.413812,
		0.161348, 0.714420, -0.680860,
		33.631824, 37.322319, 21.680172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308174, 36.884243, 22.027933>,  <33.518879, 36.822227, 22.156775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308174, 36.884243, 22.027933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135323, 37.225090, 21.909842>,  <34.031612, 37.429596, 21.838985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.135323, 37.225090, 21.909842>,  <34.308174, 36.884243, 22.027933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135323, 37.225090, 21.909842> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619977, 0.518453, 0.588927,
		0.654897, 0.071457, -0.752332,
		-0.432132, 0.852115, -0.295231,
		34.005684, 37.480724, 21.821272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848885, 37.312988, 22.058546>,  <34.308174, 36.884243, 22.027933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848885, 37.312988, 22.058546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534813, 37.560047, 22.040623>,  <34.346371, 37.708282, 22.029869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534813, 37.560047, 22.040623>,  <34.848885, 37.312988, 22.058546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534813, 37.560047, 22.040623> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469628, 0.641051, 0.607044,
		0.403661, 0.455596, -0.793404,
		-0.785179, 0.617645, -0.044807,
		34.299259, 37.745342, 22.027180>
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
