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
	<24.607100, 34.923542, 35.220646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358835, 35.230808, 35.157776>,  <24.209877, 35.415169, 35.120052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.358835, 35.230808, 35.157776>,  <24.607100, 34.923542, 35.220646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.358835, 35.230808, 35.157776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314443, -0.060220, 0.947364,
		0.718264, 0.637417, 0.278920,
		-0.620663, 0.768162, -0.157178,
		24.172636, 35.461258, 35.110622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.825809, 35.679844, 35.277218>,  <24.607100, 34.923542, 35.220646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.825809, 35.679844, 35.277218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917936, 36.064999, 35.220940>,  <24.973211, 36.296093, 35.187172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.917936, 36.064999, 35.220940>,  <24.825809, 35.679844, 35.277218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.917936, 36.064999, 35.220940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396291, 0.224857, 0.890164,
		0.888768, -0.149262, 0.433374,
		0.230315, 0.962891, -0.140694,
		24.987030, 36.353867, 35.178730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543995, 35.472107, 35.716022>,  <24.825809, 35.679844, 35.277218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543995, 35.472107, 35.716022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716654, 35.523872, 36.073109>,  <25.820250, 35.554932, 36.287361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.716654, 35.523872, 36.073109>,  <25.543995, 35.472107, 35.716022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.716654, 35.523872, 36.073109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739370, 0.516164, -0.432327,
		-0.516734, 0.846657, 0.127117,
		0.431646, 0.129411, 0.892712,
		25.846148, 35.562695, 36.340923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.016281, 36.169830, 35.715767>,  <25.543995, 35.472107, 35.716022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.016281, 36.169830, 35.715767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136662, 35.900276, 35.985672>,  <26.208889, 35.738544, 36.147614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136662, 35.900276, 35.985672>,  <26.016281, 36.169830, 35.715767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136662, 35.900276, 35.985672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952327, 0.249487, -0.175584,
		-0.050020, 0.695435, 0.716846,
		0.300951, -0.673889, 0.674760,
		26.226948, 35.698109, 36.188099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.510323, 36.538391, 35.243137>,  <26.016281, 36.169830, 35.715767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.510323, 36.538391, 35.243137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815994, 36.411198, 35.467609>,  <26.999397, 36.334881, 35.602291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.815994, 36.411198, 35.467609>,  <26.510323, 36.538391, 35.243137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.815994, 36.411198, 35.467609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622115, 0.593089, -0.511095,
		-0.170307, 0.739684, 0.651048,
		0.764178, -0.317984, 0.561176,
		27.045248, 36.315804, 35.635963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.901470, 37.120697, 35.526440>,  <26.510323, 36.538391, 35.243137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.901470, 37.120697, 35.526440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157393, 36.813293, 35.528801>,  <27.310946, 36.628849, 35.530216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.157393, 36.813293, 35.528801>,  <26.901470, 37.120697, 35.526440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.157393, 36.813293, 35.528801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665311, 0.550009, -0.504828,
		0.384720, 0.326921, 0.863200,
		0.639806, -0.768514, 0.005905,
		27.349335, 36.582741, 35.530571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.496189, 37.475971, 35.591908>,  <26.901470, 37.120697, 35.526440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.496189, 37.475971, 35.591908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620316, 37.115253, 35.471596>,  <27.694792, 36.898823, 35.399410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.620316, 37.115253, 35.471596>,  <27.496189, 37.475971, 35.591908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.620316, 37.115253, 35.471596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751373, 0.426495, -0.503528,
		0.582359, -0.069741, 0.809934,
		0.310317, -0.901797, -0.300775,
		27.713411, 36.844715, 35.381363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193817, 37.422394, 35.738426>,  <27.496189, 37.475971, 35.591908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193817, 37.422394, 35.738426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123835, 37.149467, 35.454498>,  <28.081844, 36.985714, 35.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.123835, 37.149467, 35.454498>,  <28.193817, 37.422394, 35.738426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.123835, 37.149467, 35.454498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657443, 0.455700, -0.600089,
		0.732912, -0.571654, 0.368853,
		-0.174957, -0.682312, -0.709817,
		28.071348, 36.944775, 35.241554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855558, 37.244740, 35.481335>,  <28.193817, 37.422394, 35.738426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855558, 37.244740, 35.481335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582888, 37.139156, 35.208382>,  <28.419285, 37.075806, 35.044609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.582888, 37.139156, 35.208382>,  <28.855558, 37.244740, 35.481335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.582888, 37.139156, 35.208382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597317, 0.337833, -0.727380,
		0.422526, -0.903436, -0.072628,
		-0.681678, -0.263955, -0.682381,
		28.378384, 37.059971, 35.003666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189880, 36.880219, 34.996326>,  <28.855558, 37.244740, 35.481335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189880, 36.880219, 34.996326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870262, 37.006081, 34.791382>,  <28.678492, 37.081596, 34.668415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.870262, 37.006081, 34.791382>,  <29.189880, 36.880219, 34.996326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870262, 37.006081, 34.791382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569127, 0.120932, -0.813308,
		-0.193951, -0.941471, -0.275709,
		-0.799047, 0.314655, -0.512362,
		28.630548, 37.100479, 34.637672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397121, 36.649338, 34.353848>,  <29.189880, 36.880219, 34.996326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397121, 36.649338, 34.353848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083750, 36.885284, 34.275574>,  <28.895727, 37.026852, 34.228611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083750, 36.885284, 34.275574>,  <29.397121, 36.649338, 34.353848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083750, 36.885284, 34.275574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435616, 0.296624, -0.849855,
		-0.443259, -0.751044, -0.489341,
		-0.783429, 0.589870, -0.195686,
		28.848721, 37.062244, 34.216869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089790, 36.433006, 33.681377>,  <29.397121, 36.649338, 34.353848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089790, 36.433006, 33.681377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005049, 36.816257, 33.758434>,  <28.954203, 37.046207, 33.804668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.005049, 36.816257, 33.758434>,  <29.089790, 36.433006, 33.681377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.005049, 36.816257, 33.758434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421315, 0.267395, -0.866599,
		-0.881823, -0.102431, -0.460322,
		-0.211855, 0.958127, 0.192639,
		28.941492, 37.103695, 33.816227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.881359, 36.795551, 32.984287>,  <29.089790, 36.433006, 33.681377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.881359, 36.795551, 32.984287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957563, 37.100964, 33.231102>,  <29.003286, 37.284210, 33.379189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957563, 37.100964, 33.231102>,  <28.881359, 36.795551, 32.984287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957563, 37.100964, 33.231102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417928, 0.505658, -0.754749,
		-0.888280, 0.401664, -0.222767,
		0.190511, 0.763529, 0.617033,
		29.014717, 37.330021, 33.416210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687952, 37.338760, 32.625076>,  <28.881359, 36.795551, 32.984287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687952, 37.338760, 32.625076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942745, 37.479370, 32.899502>,  <29.095621, 37.563736, 33.064156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.942745, 37.479370, 32.899502>,  <28.687952, 37.338760, 32.625076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942745, 37.479370, 32.899502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423926, 0.583584, -0.692615,
		-0.643848, 0.732024, 0.222712,
		0.636982, 0.351526, 0.686063,
		29.133841, 37.584827, 33.105320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.845890, 38.138458, 32.508846>,  <28.687952, 37.338760, 32.625076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.845890, 38.138458, 32.508846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132967, 37.997509, 32.749096>,  <29.305214, 37.912941, 32.893246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.132967, 37.997509, 32.749096>,  <28.845890, 38.138458, 32.508846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.132967, 37.997509, 32.749096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690807, 0.468978, -0.550314,
		-0.087765, 0.809873, 0.580002,
		0.717692, -0.352372, 0.600626,
		29.348274, 37.891796, 32.929283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298883, 38.738125, 32.582924>,  <28.845890, 38.138458, 32.508846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298883, 38.738125, 32.582924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545847, 38.451138, 32.711948>,  <29.694025, 38.278946, 32.789364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.545847, 38.451138, 32.711948>,  <29.298883, 38.738125, 32.582924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.545847, 38.451138, 32.711948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722467, 0.354953, -0.593338,
		0.311207, 0.599372, 0.737498,
		0.617407, -0.717469, 0.322563,
		29.731070, 38.235897, 32.808716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888149, 39.009064, 32.580170>,  <29.298883, 38.738125, 32.582924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888149, 39.009064, 32.580170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990088, 38.622410, 32.590504>,  <30.051250, 38.390419, 32.596703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.990088, 38.622410, 32.590504>,  <29.888149, 39.009064, 32.580170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990088, 38.622410, 32.590504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818907, 0.201539, -0.537376,
		0.514241, 0.158103, 0.842947,
		0.254848, -0.966636, 0.025832,
		30.066542, 38.332420, 32.598255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.571211, 38.943638, 32.844925>,  <29.888149, 39.009064, 32.580170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.571211, 38.943638, 32.844925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485245, 38.626884, 32.616283>,  <30.433666, 38.436832, 32.479099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.485245, 38.626884, 32.616283>,  <30.571211, 38.943638, 32.844925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.485245, 38.626884, 32.616283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790544, 0.202605, -0.577920,
		0.573457, -0.576078, 0.582479,
		-0.214914, -0.791887, -0.571600,
		30.420771, 38.389317, 32.444805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139584, 38.592609, 32.839279>,  <30.571211, 38.943638, 32.844925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139584, 38.592609, 32.839279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940632, 38.471184, 32.514206>,  <30.821260, 38.398327, 32.319160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.940632, 38.471184, 32.514206>,  <31.139584, 38.592609, 32.839279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940632, 38.471184, 32.514206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817390, 0.149881, -0.556246,
		0.290665, -0.940947, 0.173585,
		-0.497381, -0.303568, -0.812686,
		30.791418, 38.380112, 32.270401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490622, 37.951618, 32.572929>,  <31.139584, 38.592609, 32.839279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490622, 37.951618, 32.572929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284708, 38.109459, 32.268486>,  <31.161160, 38.204163, 32.085819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284708, 38.109459, 32.268486>,  <31.490622, 37.951618, 32.572929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284708, 38.109459, 32.268486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720251, -0.282475, -0.633598,
		-0.465011, -0.874357, -0.138795,
		-0.514785, 0.394598, -0.761110,
		31.130272, 38.227837, 32.040154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857603, 37.735130, 32.095085>,  <31.490622, 37.951618, 32.572929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857603, 37.735130, 32.095085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642118, 37.971081, 31.854473>,  <31.512827, 38.112652, 31.710106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.642118, 37.971081, 31.854473>,  <31.857603, 37.735130, 32.095085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.642118, 37.971081, 31.854473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599114, -0.233761, -0.765779,
		-0.592326, -0.772921, -0.227471,
		-0.538713, 0.589873, -0.601531,
		31.480505, 38.148041, 31.674013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735308, 37.285229, 31.464756>,  <31.857603, 37.735130, 32.095085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735308, 37.285229, 31.464756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674236, 37.674076, 31.393572>,  <31.637594, 37.907387, 31.350861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674236, 37.674076, 31.393572>,  <31.735308, 37.285229, 31.464756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674236, 37.674076, 31.393572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545621, -0.067227, -0.835331,
		-0.824007, -0.224637, -0.520146,
		-0.152679, 0.972121, -0.177962,
		31.628433, 37.965714, 31.340183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585379, 37.331894, 30.727110>,  <31.735308, 37.285229, 31.464756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585379, 37.331894, 30.727110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678284, 37.705360, 30.836151>,  <31.734028, 37.929440, 30.901577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.678284, 37.705360, 30.836151>,  <31.585379, 37.331894, 30.727110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678284, 37.705360, 30.836151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492659, 0.128729, -0.860649,
		-0.838654, 0.334199, -0.430082,
		0.232264, 0.933670, 0.272605,
		31.747963, 37.985462, 30.917933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603168, 37.639217, 30.118975>,  <31.585379, 37.331894, 30.727110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603168, 37.639217, 30.118975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776409, 37.921303, 30.343510>,  <31.880354, 38.090553, 30.478231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776409, 37.921303, 30.343510>,  <31.603168, 37.639217, 30.118975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776409, 37.921303, 30.343510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576438, 0.262063, -0.773979,
		-0.692924, 0.658787, -0.293011,
		0.433100, 0.705211, 0.561339,
		31.906340, 38.132866, 30.511911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550529, 38.213444, 29.678713>,  <31.603168, 37.639217, 30.118975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550529, 38.213444, 29.678713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830742, 38.238430, 29.963066>,  <31.998869, 38.253422, 30.133678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.830742, 38.238430, 29.963066>,  <31.550529, 38.213444, 29.678713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830742, 38.238430, 29.963066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685200, 0.219467, -0.694504,
		-0.199400, 0.973618, 0.110940,
		0.700529, 0.062468, 0.710885,
		32.040901, 38.257172, 30.176331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.999611, 38.829102, 29.512836>,  <31.550529, 38.213444, 29.678713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.999611, 38.829102, 29.512836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215244, 38.620541, 29.777420>,  <32.344624, 38.495403, 29.936171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215244, 38.620541, 29.777420>,  <31.999611, 38.829102, 29.512836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215244, 38.620541, 29.777420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828452, 0.186676, -0.528034,
		0.151841, 0.832640, 0.532592,
		0.539084, -0.521404, 0.661457,
		32.376968, 38.464119, 29.975857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863586, 39.371304, 29.005613>,  <31.999611, 38.829102, 29.512836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863586, 39.371304, 29.005613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687855, 39.579681, 29.298353>,  <31.582417, 39.704708, 29.473997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687855, 39.579681, 29.298353>,  <31.863586, 39.371304, 29.005613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687855, 39.579681, 29.298353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898269, 0.245544, 0.364445,
		0.010154, 0.817511, -0.575824,
		-0.439328, 0.520945, 0.731852,
		31.556057, 39.735966, 29.517908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144234, 40.123051, 29.074711>,  <31.863586, 39.371304, 29.005613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144234, 40.123051, 29.074711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013069, 40.014565, 29.436687>,  <31.934370, 39.949474, 29.653873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013069, 40.014565, 29.436687>,  <32.144234, 40.123051, 29.074711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013069, 40.014565, 29.436687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915858, 0.143658, 0.374921,
		-0.231687, 0.951737, 0.201289,
		-0.327909, -0.271217, 0.904940,
		31.914696, 39.933201, 29.708170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359886, 40.603237, 29.410158>,  <32.144234, 40.123051, 29.074711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359886, 40.603237, 29.410158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349335, 40.305367, 29.676918>,  <32.343006, 40.126644, 29.836975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349335, 40.305367, 29.676918>,  <32.359886, 40.603237, 29.410158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349335, 40.305367, 29.676918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916812, 0.247891, 0.313059,
		-0.398447, 0.619680, 0.676192,
		-0.026375, -0.744679, 0.666902,
		32.341423, 40.081963, 29.876989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.659367, 40.727345, 30.173044>,  <32.359886, 40.603237, 29.410158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.659367, 40.727345, 30.173044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756779, 40.350880, 30.079313>,  <32.815228, 40.125000, 30.023075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756779, 40.350880, 30.079313>,  <32.659367, 40.727345, 30.173044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756779, 40.350880, 30.079313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952846, 0.187069, 0.238932,
		-0.181038, -0.281463, 0.942339,
		0.243533, -0.941161, -0.234325,
		32.829838, 40.068531, 30.009016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034664, 40.376064, 30.768040>,  <32.659367, 40.727345, 30.173044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034664, 40.376064, 30.768040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109123, 40.289639, 30.384651>,  <33.153797, 40.237785, 30.154617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109123, 40.289639, 30.384651>,  <33.034664, 40.376064, 30.768040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109123, 40.289639, 30.384651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881470, 0.467637, 0.065776,
		0.434005, -0.857107, 0.277501,
		0.186147, -0.216062, -0.958471,
		33.164967, 40.224819, 30.097111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320473, 40.672791, 31.393946>,  <33.034664, 40.376064, 30.768040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320473, 40.672791, 31.393946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674782, 40.544594, 31.528219>,  <33.887367, 40.467674, 31.608784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674782, 40.544594, 31.528219>,  <33.320473, 40.672791, 31.393946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674782, 40.544594, 31.528219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252988, 0.272948, 0.928168,
		-0.389097, -0.907074, 0.160690,
		0.885777, -0.320495, 0.335682,
		33.940514, 40.448444, 31.628923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416744, 39.996223, 31.763901>,  <33.320473, 40.672791, 31.393946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416744, 39.996223, 31.763901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674770, 40.265846, 31.907864>,  <33.829586, 40.427620, 31.994242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.674770, 40.265846, 31.907864>,  <33.416744, 39.996223, 31.763901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.674770, 40.265846, 31.907864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419425, -0.081373, 0.904135,
		0.638730, -0.734179, 0.230227,
		0.645063, 0.674062, 0.359909,
		33.868290, 40.468063, 32.015835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726742, 39.815475, 32.402458>,  <33.416744, 39.996223, 31.763901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726742, 39.815475, 32.402458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714848, 40.213516, 32.440147>,  <33.707710, 40.452343, 32.462761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.714848, 40.213516, 32.440147>,  <33.726742, 39.815475, 32.402458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.714848, 40.213516, 32.440147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397114, -0.098269, 0.912493,
		0.917288, -0.010287, 0.398092,
		-0.029733, 0.995106, 0.094227,
		33.705929, 40.512047, 32.468414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.194180, 40.125587, 32.961651>,  <33.726742, 39.815475, 32.402458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.194180, 40.125587, 32.961651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832298, 40.274448, 32.878689>,  <33.615170, 40.363766, 32.828911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832298, 40.274448, 32.878689>,  <34.194180, 40.125587, 32.961651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832298, 40.274448, 32.878689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328170, -0.298265, 0.896293,
		0.271696, 0.878943, 0.391971,
		-0.904702, 0.372152, -0.207405,
		33.560886, 40.386093, 32.816467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938866, 40.532284, 33.593460>,  <34.194180, 40.125587, 32.961651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938866, 40.532284, 33.593460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621716, 40.413975, 33.380341>,  <33.431427, 40.342991, 33.252468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621716, 40.413975, 33.380341>,  <33.938866, 40.532284, 33.593460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621716, 40.413975, 33.380341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520652, -0.125545, 0.844488,
		-0.316666, 0.946973, -0.054453,
		-0.792871, -0.295772, -0.532799,
		33.383854, 40.325245, 33.220501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.401779, 40.972904, 33.725285>,  <33.938866, 40.532284, 33.593460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.401779, 40.972904, 33.725285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235489, 40.635017, 33.590454>,  <33.135715, 40.432285, 33.509556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.235489, 40.635017, 33.590454>,  <33.401779, 40.972904, 33.725285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235489, 40.635017, 33.590454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683502, 0.045671, 0.728519,
		-0.600001, 0.533254, -0.596355,
		-0.415722, -0.844721, -0.337078,
		33.110771, 40.381599, 33.489330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631828, 41.077923, 33.737614>,  <33.401779, 40.972904, 33.725285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631828, 41.077923, 33.737614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700153, 40.683838, 33.742882>,  <32.741150, 40.447388, 33.746040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700153, 40.683838, 33.742882>,  <32.631828, 41.077923, 33.737614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700153, 40.683838, 33.742882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743561, -0.120124, 0.657790,
		-0.646483, -0.122150, -0.753087,
		0.170813, -0.985215, 0.013168,
		32.751396, 40.388271, 33.746834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952063, 40.755539, 33.915813>,  <32.631828, 41.077923, 33.737614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952063, 40.755539, 33.915813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184521, 40.430752, 33.937660>,  <32.323994, 40.235882, 33.950768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184521, 40.430752, 33.937660>,  <31.952063, 40.755539, 33.915813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184521, 40.430752, 33.937660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553782, -0.345389, 0.757649,
		-0.596320, -0.470550, -0.650373,
		0.581143, -0.811966, 0.054620,
		32.358864, 40.187160, 33.954048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.503542, 40.158176, 33.819511>,  <31.952063, 40.755539, 33.915813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.503542, 40.158176, 33.819511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842842, 40.049030, 34.001068>,  <32.046421, 39.983543, 34.110001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.842842, 40.049030, 34.001068>,  <31.503542, 40.158176, 33.819511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.842842, 40.049030, 34.001068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521212, -0.582024, 0.624168,
		0.093857, -0.766023, -0.635925,
		0.848250, -0.272869, 0.453888,
		32.097317, 39.967171, 34.137234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.602644, 39.413342, 33.842133>,  <31.503542, 40.158176, 33.819511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.602644, 39.413342, 33.842133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828001, 39.566410, 34.135021>,  <31.963215, 39.658249, 34.310757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828001, 39.566410, 34.135021>,  <31.602644, 39.413342, 33.842133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828001, 39.566410, 34.135021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375549, -0.670800, 0.639523,
		0.735903, -0.635289, -0.234211,
		0.563391, 0.382669, 0.732226,
		31.997019, 39.681210, 34.354691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726265, 38.800556, 34.223755>,  <31.602644, 39.413342, 33.842133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726265, 38.800556, 34.223755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818417, 39.093834, 34.479675>,  <31.873707, 39.269802, 34.633228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818417, 39.093834, 34.479675>,  <31.726265, 38.800556, 34.223755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818417, 39.093834, 34.479675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220342, -0.601107, 0.768192,
		0.947826, -0.317951, 0.023071,
		0.230380, 0.733196, 0.639803,
		31.887531, 39.313793, 34.671616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259609, 38.449413, 34.612068>,  <31.726265, 38.800556, 34.223755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259609, 38.449413, 34.612068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099178, 38.765842, 34.796825>,  <32.002918, 38.955700, 34.907681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.099178, 38.765842, 34.796825>,  <32.259609, 38.449413, 34.612068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.099178, 38.765842, 34.796825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426591, -0.607508, 0.670040,
		0.810652, 0.071700, 0.581122,
		-0.401078, 0.791071, 0.461891,
		31.978855, 39.003162, 34.935394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294434, 38.253174, 35.216343>,  <32.259609, 38.449413, 34.612068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294434, 38.253174, 35.216343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018890, 38.541985, 35.242115>,  <31.853565, 38.715271, 35.257580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.018890, 38.541985, 35.242115>,  <32.294434, 38.253174, 35.216343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.018890, 38.541985, 35.242115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438220, -0.485584, 0.756420,
		0.577444, 0.492829, 0.650905,
		-0.688855, 0.722030, 0.064430,
		31.812233, 38.758595, 35.261444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.219059, 38.471558, 35.949539>,  <32.294434, 38.253174, 35.216343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.219059, 38.471558, 35.949539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885458, 38.559891, 35.747280>,  <31.685299, 38.612888, 35.625923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885458, 38.559891, 35.747280>,  <32.219059, 38.471558, 35.949539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885458, 38.559891, 35.747280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537644, -0.531248, 0.654763,
		-0.124034, 0.817930, 0.561788,
		-0.834000, 0.220829, -0.505648,
		31.635258, 38.626141, 35.595585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.758055, 38.489269, 36.405594>,  <32.219059, 38.471558, 35.949539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.758055, 38.489269, 36.405594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517546, 38.458302, 36.087479>,  <31.373240, 38.439720, 35.896610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.517546, 38.458302, 36.087479>,  <31.758055, 38.489269, 36.405594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517546, 38.458302, 36.087479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654919, -0.522449, 0.546010,
		-0.457766, 0.849148, 0.263433,
		-0.601274, -0.077418, -0.795284,
		31.337164, 38.435078, 35.848892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023464, 38.495399, 36.666328>,  <31.758055, 38.489269, 36.405594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023464, 38.495399, 36.666328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022038, 38.330627, 36.301846>,  <31.021181, 38.231762, 36.083157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.022038, 38.330627, 36.301846>,  <31.023464, 38.495399, 36.666328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.022038, 38.330627, 36.301846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536642, -0.768100, 0.349339,
		-0.843802, 0.490238, -0.218322,
		-0.003566, -0.411934, -0.911207,
		31.020967, 38.207047, 36.028484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411943, 38.497444, 36.577225>,  <31.023464, 38.495399, 36.666328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411943, 38.497444, 36.577225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544411, 38.214436, 36.327507>,  <30.623892, 38.044632, 36.177677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.544411, 38.214436, 36.327507>,  <30.411943, 38.497444, 36.577225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544411, 38.214436, 36.327507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497471, -0.693126, 0.521630,
		-0.801779, 0.137821, -0.581512,
		0.331170, -0.707518, -0.624296,
		30.643763, 38.002182, 36.140217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853500, 38.096096, 36.407490>,  <30.411943, 38.497444, 36.577225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853500, 38.096096, 36.407490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155294, 37.858532, 36.295753>,  <30.336370, 37.715996, 36.228714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.155294, 37.858532, 36.295753>,  <29.853500, 38.096096, 36.407490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.155294, 37.858532, 36.295753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477780, -0.788814, 0.386651,
		-0.449979, -0.158260, -0.878904,
		0.754483, -0.593908, -0.279336,
		30.381639, 37.680359, 36.211952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565083, 37.523304, 36.048763>,  <29.853500, 38.096096, 36.407490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565083, 37.523304, 36.048763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925039, 37.378639, 36.146248>,  <30.141014, 37.291840, 36.204739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925039, 37.378639, 36.146248>,  <29.565083, 37.523304, 36.048763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925039, 37.378639, 36.146248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418456, -0.873447, 0.248967,
		0.122825, -0.326025, -0.937348,
		0.899894, -0.361660, 0.243708,
		30.195007, 37.270142, 36.219360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699120, 36.834942, 35.718163>,  <29.565083, 37.523304, 36.048763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699120, 36.834942, 35.718163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925776, 36.863419, 36.046516>,  <30.061769, 36.880505, 36.243530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.925776, 36.863419, 36.046516>,  <29.699120, 36.834942, 35.718163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925776, 36.863419, 36.046516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456422, -0.802328, 0.384641,
		0.686001, -0.592623, -0.422138,
		0.566640, 0.071191, 0.820884,
		30.095768, 36.884777, 36.292782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837473, 36.161179, 35.793652>,  <29.699120, 36.834942, 35.718163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837473, 36.161179, 35.793652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915268, 36.334831, 36.145493>,  <29.961945, 36.439022, 36.356598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.915268, 36.334831, 36.145493>,  <29.837473, 36.161179, 35.793652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.915268, 36.334831, 36.145493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396271, -0.785524, 0.475312,
		0.897298, -0.441005, 0.019257,
		0.194488, 0.434127, 0.879607,
		29.973614, 36.465069, 36.409374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176014, 35.659401, 36.237617>,  <29.837473, 36.161179, 35.793652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176014, 35.659401, 36.237617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022865, 35.923145, 36.496433>,  <29.930977, 36.081390, 36.651722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022865, 35.923145, 36.496433>,  <30.176014, 35.659401, 36.237617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022865, 35.923145, 36.496433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446546, -0.745235, 0.495198,
		0.808708, -0.099334, 0.579762,
		-0.382869, 0.659361, 0.647035,
		29.908005, 36.120953, 36.690544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.187592, 35.318943, 36.828732>,  <30.176014, 35.659401, 36.237617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.187592, 35.318943, 36.828732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952274, 35.629684, 36.918545>,  <29.811085, 35.816128, 36.972431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952274, 35.629684, 36.918545>,  <30.187592, 35.318943, 36.828732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952274, 35.629684, 36.918545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526182, -0.578590, 0.623191,
		0.614039, 0.248473, 0.749145,
		-0.588293, 0.776849, 0.224534,
		29.775785, 35.862740, 36.985905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176756, 35.358009, 37.501251>,  <30.187592, 35.318943, 36.828732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176756, 35.358009, 37.501251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837366, 35.560959, 37.441040>,  <29.633732, 35.682728, 37.404915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837366, 35.560959, 37.441040>,  <30.176756, 35.358009, 37.501251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837366, 35.560959, 37.441040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431513, -0.498561, 0.751820,
		0.306408, 0.702855, 0.641956,
		-0.848475, 0.507377, -0.150528,
		29.582823, 35.713173, 37.395882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902739, 35.360039, 38.152359>,  <30.176756, 35.358009, 37.501251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902739, 35.360039, 38.152359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589821, 35.440845, 37.916664>,  <29.402069, 35.489330, 37.775246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589821, 35.440845, 37.916664>,  <29.902739, 35.360039, 38.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589821, 35.440845, 37.916664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596005, -0.517752, 0.613768,
		-0.181085, 0.831336, 0.525441,
		-0.782296, 0.202021, -0.589237,
		29.355133, 35.501453, 37.739891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396397, 35.684021, 38.551182>,  <29.902739, 35.360039, 38.152359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396397, 35.684021, 38.551182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252497, 35.477695, 38.240177>,  <29.166157, 35.353901, 38.053574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252497, 35.477695, 38.240177>,  <29.396397, 35.684021, 38.551182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252497, 35.477695, 38.240177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475724, -0.615450, 0.628417,
		-0.802661, 0.595953, -0.023975,
		-0.359751, -0.515812, -0.777507,
		29.144571, 35.322952, 38.006924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.065674, 35.709400, 38.809837>,  <29.396397, 35.684021, 38.551182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.065674, 35.709400, 38.809837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429613, 35.736874, 38.646149>,  <30.647976, 35.753357, 38.547935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.429613, 35.736874, 38.646149>,  <30.065674, 35.709400, 38.809837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.429613, 35.736874, 38.646149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261388, 0.671070, 0.693788,
		0.322264, -0.738206, 0.592619,
		0.909847, 0.068680, -0.409220,
		30.702568, 35.757477, 38.523384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.624626, 35.566185, 39.309933>,  <30.065674, 35.709400, 38.809837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.624626, 35.566185, 39.309933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746893, 35.799118, 39.008614>,  <30.820253, 35.938877, 38.827824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746893, 35.799118, 39.008614>,  <30.624626, 35.566185, 39.309933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746893, 35.799118, 39.008614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432613, 0.619840, 0.654709,
		0.848183, -0.526009, -0.062461,
		0.305667, 0.582335, -0.753295,
		30.838593, 35.973820, 38.782623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356752, 35.691006, 39.441044>,  <30.624626, 35.566185, 39.309933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356752, 35.691006, 39.441044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148129, 35.987988, 39.272884>,  <31.022955, 36.166176, 39.171989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.148129, 35.987988, 39.272884>,  <31.356752, 35.691006, 39.441044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148129, 35.987988, 39.272884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373650, 0.641722, 0.669760,
		0.767048, 0.192236, -0.612114,
		-0.521559, 0.742454, -0.420402,
		30.991661, 36.210724, 39.146763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751720, 36.368591, 39.193871>,  <31.356752, 35.691006, 39.441044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751720, 36.368591, 39.193871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383680, 36.424347, 39.340286>,  <31.162855, 36.457802, 39.428135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.383680, 36.424347, 39.340286>,  <31.751720, 36.368591, 39.193871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.383680, 36.424347, 39.340286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385684, 0.485338, 0.784663,
		-0.068277, 0.863144, -0.500321,
		-0.920101, 0.139391, 0.366038,
		31.107651, 36.466164, 39.450096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692093, 37.112469, 39.422070>,  <31.751720, 36.368591, 39.193871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692093, 37.112469, 39.422070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454401, 36.864616, 39.627182>,  <31.311787, 36.715904, 39.750252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454401, 36.864616, 39.627182>,  <31.692093, 37.112469, 39.422070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454401, 36.864616, 39.627182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517398, 0.193630, 0.833551,
		-0.615785, 0.760634, 0.205536,
		-0.594229, -0.619632, 0.512785,
		31.276133, 36.678726, 39.781017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.495560, 37.371452, 40.084995>,  <31.692093, 37.112469, 39.422070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.495560, 37.371452, 40.084995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464031, 36.974197, 40.119579>,  <31.445114, 36.735844, 40.140327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.464031, 36.974197, 40.119579>,  <31.495560, 37.371452, 40.084995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464031, 36.974197, 40.119579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546100, 0.029540, 0.837199,
		-0.834003, 0.113203, 0.540022,
		-0.078821, -0.993133, 0.086457,
		31.440384, 36.676258, 40.145515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.321737, 37.245079, 40.762779>,  <31.495560, 37.371452, 40.084995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.321737, 37.245079, 40.762779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472969, 36.896183, 40.638680>,  <31.563707, 36.686844, 40.564220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.472969, 36.896183, 40.638680>,  <31.321737, 37.245079, 40.762779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.472969, 36.896183, 40.638680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525209, -0.073886, 0.847759,
		-0.762373, -0.483464, 0.430174,
		0.378078, -0.872240, -0.310248,
		31.586391, 36.634510, 40.545605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043371, 36.798447, 41.302074>,  <31.321737, 37.245079, 40.762779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043371, 36.798447, 41.302074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373100, 36.625614, 41.155762>,  <31.570938, 36.521915, 41.067974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.373100, 36.625614, 41.155762>,  <31.043371, 36.798447, 41.302074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.373100, 36.625614, 41.155762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401784, -0.008669, 0.915694,
		-0.398823, -0.901794, 0.166456,
		0.824324, -0.432079, -0.365784,
		31.620398, 36.495991, 41.046028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.161945, 36.315388, 41.818279>,  <31.043371, 36.798447, 41.302074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.161945, 36.315388, 41.818279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503344, 36.334705, 41.610737>,  <31.708181, 36.346294, 41.486210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.503344, 36.334705, 41.610737>,  <31.161945, 36.315388, 41.818279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503344, 36.334705, 41.610737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511460, 0.113031, 0.851841,
		0.099793, -0.992417, 0.071766,
		0.853493, 0.048302, -0.518861,
		31.759392, 36.349194, 41.455078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.627453, 35.818748, 42.044422>,  <31.161945, 36.315388, 41.818279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.627453, 35.818748, 42.044422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881498, 36.073654, 41.869827>,  <32.033924, 36.226597, 41.765072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.881498, 36.073654, 41.869827>,  <31.627453, 35.818748, 42.044422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881498, 36.073654, 41.869827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568160, -0.002594, 0.822914,
		0.523284, -0.770638, -0.363718,
		0.635112, 0.637268, -0.436488,
		32.072033, 36.264835, 41.738880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211910, 35.483704, 42.272892>,  <31.627453, 35.818748, 42.044422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211910, 35.483704, 42.272892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299210, 35.859882, 42.168640>,  <32.351589, 36.085590, 42.106091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.299210, 35.859882, 42.168640>,  <32.211910, 35.483704, 42.272892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299210, 35.859882, 42.168640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479035, 0.129437, 0.868200,
		0.850232, -0.314330, -0.422259,
		0.218245, 0.940448, -0.260626,
		32.364685, 36.142017, 42.090454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904186, 35.544266, 42.288086>,  <32.211910, 35.483704, 42.272892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904186, 35.544266, 42.288086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767437, 35.918083, 42.327564>,  <32.685387, 36.142376, 42.351254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.767437, 35.918083, 42.327564>,  <32.904186, 35.544266, 42.288086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767437, 35.918083, 42.327564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532547, 0.106131, 0.839720,
		0.774283, 0.339642, -0.533974,
		-0.341875, 0.934548, 0.098700,
		32.664875, 36.198448, 42.357174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468452, 35.820595, 42.417179>,  <32.904186, 35.544266, 42.288086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468452, 35.820595, 42.417179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221844, 36.101963, 42.558662>,  <33.073879, 36.270782, 42.643551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221844, 36.101963, 42.558662>,  <33.468452, 35.820595, 42.417179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221844, 36.101963, 42.558662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529497, 0.037947, 0.847463,
		0.582700, 0.709761, -0.395854,
		-0.616517, 0.703420, 0.353705,
		33.036888, 36.312988, 42.664772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.923378, 36.437832, 42.774300>,  <33.468452, 35.820595, 42.417179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.923378, 36.437832, 42.774300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558483, 36.440269, 42.938152>,  <33.339546, 36.441734, 43.036465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.558483, 36.440269, 42.938152>,  <33.923378, 36.437832, 42.774300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558483, 36.440269, 42.938152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408296, 0.095434, 0.907847,
		-0.033557, 0.995417, -0.089548,
		-0.912233, 0.006097, 0.409628,
		33.284813, 36.442097, 43.061039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988312, 36.847664, 43.321495>,  <33.923378, 36.437832, 42.774300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988312, 36.847664, 43.321495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653126, 36.645309, 43.403366>,  <33.452015, 36.523899, 43.452488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653126, 36.645309, 43.403366>,  <33.988312, 36.847664, 43.321495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653126, 36.645309, 43.403366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304438, -0.122071, 0.944678,
		-0.452911, 0.853921, 0.256302,
		-0.837967, -0.505883, 0.204678,
		33.401737, 36.493546, 43.464771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746025, 37.103535, 43.950508>,  <33.988312, 36.847664, 43.321495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746025, 37.103535, 43.950508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595024, 36.733761, 43.928921>,  <33.504425, 36.511898, 43.915970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595024, 36.733761, 43.928921>,  <33.746025, 37.103535, 43.950508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595024, 36.733761, 43.928921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250659, -0.158113, 0.955076,
		-0.891438, 0.347017, 0.291406,
		-0.377502, -0.924435, -0.053965,
		33.481773, 36.456429, 43.912731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683071, 36.917999, 44.628967>,  <33.746025, 37.103535, 43.950508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683071, 36.917999, 44.628967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584141, 36.558887, 44.483185>,  <33.524784, 36.343422, 44.395718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.584141, 36.558887, 44.483185>,  <33.683071, 36.917999, 44.628967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584141, 36.558887, 44.483185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330201, -0.431717, 0.839397,
		-0.910933, 0.087260, 0.403221,
		-0.247323, -0.897779, -0.364452,
		33.509945, 36.289555, 44.373848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141148, 36.568714, 45.145523>,  <33.683071, 36.917999, 44.628967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141148, 36.568714, 45.145523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341694, 36.306259, 44.919914>,  <33.462021, 36.148785, 44.784550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.341694, 36.306259, 44.919914>,  <33.141148, 36.568714, 45.145523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.341694, 36.306259, 44.919914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325763, -0.460752, 0.825583,
		-0.801569, -0.597654, -0.017259,
		0.501365, -0.656139, -0.564017,
		33.492104, 36.109417, 44.750710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911697, 35.913151, 45.358929>,  <33.141148, 36.568714, 45.145523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911697, 35.913151, 45.358929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270947, 35.855946, 45.192596>,  <33.486496, 35.821625, 45.092796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270947, 35.855946, 45.192596>,  <32.911697, 35.913151, 45.358929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270947, 35.855946, 45.192596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225357, -0.662332, 0.714515,
		-0.377603, -0.735435, -0.562629,
		0.898126, -0.143010, -0.415833,
		33.540386, 35.813042, 45.067848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103119, 35.212154, 45.548996>,  <32.911697, 35.913151, 45.358929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103119, 35.212154, 45.548996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456661, 35.352615, 45.425388>,  <33.668789, 35.436890, 45.351223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.456661, 35.352615, 45.425388>,  <33.103119, 35.212154, 45.548996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.456661, 35.352615, 45.425388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444443, -0.424487, 0.788848,
		0.145830, -0.834569, -0.531252,
		0.883857, 0.351149, -0.309016,
		33.721817, 35.457958, 45.332684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463608, 34.581757, 45.449200>,  <33.103119, 35.212154, 45.548996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463608, 34.581757, 45.449200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718033, 34.886150, 45.500328>,  <33.870686, 35.068787, 45.531006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.718033, 34.886150, 45.500328>,  <33.463608, 34.581757, 45.449200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718033, 34.886150, 45.500328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464771, -0.510043, 0.723770,
		0.615967, -0.400955, -0.678100,
		0.636060, 0.760980, 0.127817,
		33.908852, 35.114445, 45.538673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096581, 34.274403, 45.359989>,  <33.463608, 34.581757, 45.449200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096581, 34.274403, 45.359989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150593, 34.598030, 45.588783>,  <34.182999, 34.792206, 45.726059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.150593, 34.598030, 45.588783>,  <34.096581, 34.274403, 45.359989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.150593, 34.598030, 45.588783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243530, -0.586668, 0.772343,
		0.960448, 0.035006, -0.276251,
		0.135031, 0.809071, 0.571989,
		34.191101, 34.840752, 45.760380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702076, 34.173141, 45.594761>,  <34.096581, 34.274403, 45.359989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.702076, 34.173141, 45.594761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542137, 34.431160, 45.855236>,  <34.446175, 34.585972, 46.011520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542137, 34.431160, 45.855236>,  <34.702076, 34.173141, 45.594761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542137, 34.431160, 45.855236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056070, -0.691905, 0.719808,
		0.914864, 0.324327, 0.240491,
		-0.399851, 0.645042, 0.651184,
		34.422180, 34.624672, 46.050591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025291, 34.039890, 46.099766>,  <34.702076, 34.173141, 45.594761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025291, 34.039890, 46.099766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733646, 34.249767, 46.275536>,  <34.558659, 34.375694, 46.380997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733646, 34.249767, 46.275536>,  <35.025291, 34.039890, 46.099766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733646, 34.249767, 46.275536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076418, -0.575631, 0.814131,
		0.680114, 0.627173, 0.379604,
		-0.729113, 0.524693, 0.439422,
		34.514912, 34.407177, 46.407364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220161, 34.178429, 46.820576>,  <35.025291, 34.039890, 46.099766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220161, 34.178429, 46.820576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821259, 34.193844, 46.795284>,  <34.581917, 34.203094, 46.780109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.821259, 34.193844, 46.795284>,  <35.220161, 34.178429, 46.820576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821259, 34.193844, 46.795284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074020, -0.543813, 0.835936,
		-0.002172, 0.838321, 0.545172,
		-0.997254, 0.038538, -0.063233,
		34.522083, 34.205406, 46.776314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007664, 34.246403, 47.541149>,  <35.220161, 34.178429, 46.820576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007664, 34.246403, 47.541149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662785, 34.159828, 47.357944>,  <34.455856, 34.107883, 47.248024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.662785, 34.159828, 47.357944>,  <35.007664, 34.246403, 47.541149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662785, 34.159828, 47.357944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266689, -0.574759, 0.773646,
		-0.430687, 0.789182, 0.437836,
		-0.862198, -0.216433, -0.458008,
		34.404125, 34.094898, 47.220543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550724, 34.303654, 48.108170>,  <35.007664, 34.246403, 47.541149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550724, 34.303654, 48.108170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402847, 34.067390, 47.821266>,  <34.314121, 33.925632, 47.649124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402847, 34.067390, 47.821266>,  <34.550724, 34.303654, 48.108170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402847, 34.067390, 47.821266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071326, -0.751624, 0.655724,
		-0.926414, 0.293573, 0.235738,
		-0.369689, -0.590657, -0.717254,
		34.291939, 33.890194, 47.606091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977077, 34.075684, 48.566460>,  <34.550724, 34.303654, 48.108170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977077, 34.075684, 48.566460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052383, 33.830780, 48.259293>,  <34.097565, 33.683838, 48.074993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052383, 33.830780, 48.259293>,  <33.977077, 34.075684, 48.566460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052383, 33.830780, 48.259293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510727, -0.728892, 0.455933,
		-0.838878, 0.306361, -0.449919,
		0.188263, -0.612258, -0.767918,
		34.108864, 33.647102, 48.028919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348804, 33.703724, 48.496559>,  <33.977077, 34.075684, 48.566460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348804, 33.703724, 48.496559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610146, 33.477474, 48.295284>,  <33.766949, 33.341724, 48.174519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.610146, 33.477474, 48.295284>,  <33.348804, 33.703724, 48.496559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610146, 33.477474, 48.295284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398039, -0.822034, 0.407218,
		-0.643972, -0.065766, -0.762217,
		0.653349, -0.565629, -0.503190,
		33.806149, 33.307785, 48.144329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004177, 33.171822, 48.110313>,  <33.348804, 33.703724, 48.496559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004177, 33.171822, 48.110313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376968, 33.037849, 48.165802>,  <33.600643, 32.957466, 48.199093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.376968, 33.037849, 48.165802>,  <33.004177, 33.171822, 48.110313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.376968, 33.037849, 48.165802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361387, -0.828117, 0.428512,
		-0.028646, -0.449493, -0.892824,
		0.931976, -0.334931, 0.138719,
		33.656563, 32.937370, 48.207417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.977634, 32.400158, 48.007687>,  <33.004177, 33.171822, 48.110313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.977634, 32.400158, 48.007687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314056, 32.471729, 48.211891>,  <33.515907, 32.514671, 48.334412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314056, 32.471729, 48.211891>,  <32.977634, 32.400158, 48.007687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314056, 32.471729, 48.211891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192066, -0.783457, 0.591020,
		0.505712, -0.595129, -0.624561,
		0.841050, 0.178929, 0.510508,
		33.566372, 32.525410, 48.365044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261036, 31.756977, 48.117924>,  <32.977634, 32.400158, 48.007687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261036, 31.756977, 48.117924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473907, 31.960321, 48.388733>,  <33.601631, 32.082329, 48.551216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473907, 31.960321, 48.388733>,  <33.261036, 31.756977, 48.117924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473907, 31.960321, 48.388733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078882, -0.766412, 0.637488,
		0.842949, -0.392663, -0.367768,
		0.532179, 0.508359, 0.677020,
		33.633560, 32.112831, 48.591839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939739, 31.420252, 48.126480>,  <33.261036, 31.756977, 48.117924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939739, 31.420252, 48.126480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861847, 31.599390, 48.475540>,  <33.815109, 31.706873, 48.684975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.861847, 31.599390, 48.475540>,  <33.939739, 31.420252, 48.126480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.861847, 31.599390, 48.475540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064677, -0.881879, 0.467018,
		0.978721, 0.147384, 0.142766,
		-0.194733, 0.447847, 0.872647,
		33.803429, 31.733744, 48.737335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.417381, 31.252108, 48.608688>,  <33.939739, 31.420252, 48.126480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.417381, 31.252108, 48.608688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174351, 31.422026, 48.877136>,  <34.028534, 31.523977, 49.038204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174351, 31.422026, 48.877136>,  <34.417381, 31.252108, 48.608688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174351, 31.422026, 48.877136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340126, -0.624415, 0.703150,
		0.717753, 0.655481, 0.234894,
		-0.607573, 0.424795, 0.671122,
		33.992081, 31.549463, 49.078472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848671, 31.386017, 49.252773>,  <34.417381, 31.252108, 48.608688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848671, 31.386017, 49.252773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478405, 31.415861, 49.401142>,  <34.256245, 31.433767, 49.490166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478405, 31.415861, 49.401142>,  <34.848671, 31.386017, 49.252773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478405, 31.415861, 49.401142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270507, -0.554930, 0.786688,
		0.264533, 0.828545, 0.493494,
		-0.925661, 0.074611, 0.370924,
		34.200706, 31.438244, 49.512421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969070, 31.536772, 49.882057>,  <34.848671, 31.386017, 49.252773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969070, 31.536772, 49.882057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604259, 31.374609, 49.857227>,  <34.385372, 31.277311, 49.842331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.604259, 31.374609, 49.857227>,  <34.969070, 31.536772, 49.882057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604259, 31.374609, 49.857227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281657, -0.729131, 0.623729,
		-0.298123, 0.551374, 0.779172,
		-0.912026, -0.405407, -0.062073,
		34.330650, 31.252987, 49.838604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922695, 31.455553, 50.517235>,  <34.969070, 31.536772, 49.882057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922695, 31.455553, 50.517235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639435, 31.218533, 50.363659>,  <34.469479, 31.076321, 50.271515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.639435, 31.218533, 50.363659>,  <34.922695, 31.455553, 50.517235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.639435, 31.218533, 50.363659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374972, -0.776372, 0.506598,
		-0.598266, 0.214780, 0.771977,
		-0.708148, -0.592550, -0.383940,
		34.426991, 31.040768, 50.248478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.561775, 31.200233, 51.141441>,  <34.922695, 31.455553, 50.517235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.561775, 31.200233, 51.141441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466496, 30.963726, 50.833244>,  <34.409328, 30.821821, 50.648327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466496, 30.963726, 50.833244>,  <34.561775, 31.200233, 51.141441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466496, 30.963726, 50.833244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311407, -0.797942, 0.516057,
		-0.919939, -0.117015, 0.374193,
		-0.238197, -0.591267, -0.770497,
		34.395035, 30.786346, 50.602097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247448, 30.748396, 51.496056>,  <34.561775, 31.200233, 51.141441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247448, 30.748396, 51.496056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345608, 30.562994, 51.155483>,  <34.404503, 30.451754, 50.951138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.345608, 30.562994, 51.155483>,  <34.247448, 30.748396, 51.496056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.345608, 30.562994, 51.155483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527913, -0.672744, 0.518386,
		-0.813072, -0.576696, 0.079597,
		0.245403, -0.463505, -0.851434,
		34.419228, 30.423943, 50.900051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933109, 30.130556, 51.416203>,  <34.247448, 30.748396, 51.496056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933109, 30.130556, 51.416203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264725, 30.119726, 51.192791>,  <34.463696, 30.113228, 51.058743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.264725, 30.119726, 51.192791>,  <33.933109, 30.130556, 51.416203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.264725, 30.119726, 51.192791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249410, -0.876068, 0.412673,
		-0.500483, -0.481427, -0.719545,
		0.829043, -0.027074, -0.558530,
		34.513439, 30.111605, 51.025230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965679, 29.501478, 51.228729>,  <33.933109, 30.130556, 51.416203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965679, 29.501478, 51.228729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346352, 29.611265, 51.173630>,  <34.574757, 29.677137, 51.140572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.346352, 29.611265, 51.173630>,  <33.965679, 29.501478, 51.228729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.346352, 29.611265, 51.173630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303384, -0.770815, 0.560180,
		0.047574, -0.574902, -0.816838,
		0.951680, 0.274465, -0.137745,
		34.631855, 29.693605, 51.132305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376659, 28.920912, 50.961334>,  <33.965679, 29.501478, 51.228729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376659, 28.920912, 50.961334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618320, 29.166449, 51.164585>,  <34.763317, 29.313770, 51.286537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.618320, 29.166449, 51.164585>,  <34.376659, 28.920912, 50.961334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618320, 29.166449, 51.164585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306888, -0.767704, 0.562539,
		0.735401, -0.183924, -0.652195,
		0.604157, 0.613842, 0.508126,
		34.799568, 29.350601, 51.317024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950813, 28.594889, 51.069935>,  <34.376659, 28.920912, 50.961334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950813, 28.594889, 51.069935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004883, 28.881372, 51.343803>,  <35.037323, 29.053263, 51.508125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004883, 28.881372, 51.343803>,  <34.950813, 28.594889, 51.069935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004883, 28.881372, 51.343803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273672, -0.691116, 0.668926,
		0.952278, 0.096957, -0.289424,
		0.135169, 0.716210, 0.684669,
		35.045433, 29.096235, 51.549206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.464024, 28.351263, 51.482746>,  <34.950813, 28.594889, 51.069935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.464024, 28.351263, 51.482746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327606, 28.648670, 51.712830>,  <35.245754, 28.827114, 51.850880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.327606, 28.648670, 51.712830>,  <35.464024, 28.351263, 51.482746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.327606, 28.648670, 51.712830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154439, -0.559266, 0.814476,
		0.927274, 0.366607, 0.075906,
		-0.341044, 0.743519, 0.575211,
		35.225292, 28.871725, 51.885391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765167, 28.248039, 52.125813>,  <35.464024, 28.351263, 51.482746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765167, 28.248039, 52.125813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442673, 28.469271, 52.209797>,  <35.249176, 28.602009, 52.260185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442673, 28.469271, 52.209797>,  <35.765167, 28.248039, 52.125813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442673, 28.469271, 52.209797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086555, -0.461367, 0.882977,
		0.585223, 0.693718, 0.419844,
		-0.806239, 0.553079, 0.209958,
		35.200802, 28.635195, 52.272785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837440, 28.338392, 52.858734>,  <35.765167, 28.248039, 52.125813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837440, 28.338392, 52.858734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455856, 28.377764, 52.745399>,  <35.226906, 28.401386, 52.677399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455856, 28.377764, 52.745399>,  <35.837440, 28.338392, 52.858734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455856, 28.377764, 52.745399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299834, -0.338948, 0.891748,
		-0.008261, 0.935642, 0.352854,
		-0.953956, 0.098431, -0.283337,
		35.169670, 28.407293, 52.660397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498211, 28.577066, 53.414398>,  <35.837440, 28.338392, 52.858734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.498211, 28.577066, 53.414398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205879, 28.432106, 53.183033>,  <35.030479, 28.345131, 53.044216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.205879, 28.432106, 53.183033>,  <35.498211, 28.577066, 53.414398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205879, 28.432106, 53.183033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282939, -0.610330, 0.739894,
		-0.621159, 0.704389, 0.343509,
		-0.730826, -0.362399, -0.578411,
		34.986629, 28.323385, 53.009510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038288, 28.512655, 53.900642>,  <35.498211, 28.577066, 53.414398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038288, 28.512655, 53.900642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933743, 28.260197, 53.608521>,  <34.871017, 28.108721, 53.433247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933743, 28.260197, 53.608521>,  <35.038288, 28.512655, 53.900642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933743, 28.260197, 53.608521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338507, -0.648618, 0.681695,
		-0.903938, 0.425381, -0.044126,
		-0.261359, -0.631147, -0.730305,
		34.855335, 28.070852, 53.389427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289238, 28.266857, 54.086025>,  <35.038288, 28.512655, 53.900642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289238, 28.266857, 54.086025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490887, 28.019394, 53.844986>,  <34.611874, 27.870916, 53.700363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490887, 28.019394, 53.844986>,  <34.289238, 28.266857, 54.086025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490887, 28.019394, 53.844986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071743, -0.725334, 0.684649,
		-0.860649, -0.301912, -0.410039,
		0.504119, -0.618660, -0.602598,
		34.642124, 27.833796, 53.664207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076706, 27.567129, 53.630856>,  <34.289238, 28.266857, 54.086025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076706, 27.567129, 53.630856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440277, 27.589352, 53.796146>,  <34.658421, 27.602684, 53.895321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440277, 27.589352, 53.796146>,  <34.076706, 27.567129, 53.630856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440277, 27.589352, 53.796146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289626, -0.628819, 0.721598,
		0.299934, -0.775564, -0.555463,
		0.908932, 0.055555, 0.413228,
		34.712955, 27.606018, 53.920116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424339, 27.026648, 53.517120>,  <34.076706, 27.567129, 53.630856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424339, 27.026648, 53.517120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571125, 27.183760, 53.854416>,  <34.659199, 27.278027, 54.056793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571125, 27.183760, 53.854416>,  <34.424339, 27.026648, 53.517120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571125, 27.183760, 53.854416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215641, -0.845874, 0.487849,
		0.904894, -0.360863, -0.225710,
		0.366969, 0.392780, 0.843243,
		34.681217, 27.301594, 54.107388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.948532, 26.726616, 53.851513>,  <34.424339, 27.026648, 53.517120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.948532, 26.726616, 53.851513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734604, 26.899841, 54.141735>,  <34.606247, 27.003777, 54.315868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734604, 26.899841, 54.141735>,  <34.948532, 26.726616, 53.851513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734604, 26.899841, 54.141735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127316, -0.807570, 0.575866,
		0.835321, 0.400357, 0.376766,
		-0.534817, 0.433065, 0.725552,
		34.574158, 27.029760, 54.359402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407005, 26.685011, 54.502666>,  <34.948532, 26.726616, 53.851513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407005, 26.685011, 54.502666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780991, 26.619051, 54.628307>,  <36.005383, 26.579475, 54.703693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.780991, 26.619051, 54.628307>,  <35.407005, 26.685011, 54.502666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780991, 26.619051, 54.628307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286130, -0.172888, -0.942465,
		0.209715, 0.971040, -0.114461,
		0.934959, -0.164899, 0.314101,
		36.061478, 26.569582, 54.722538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846920, 27.107388, 54.123363>,  <35.407005, 26.685011, 54.502666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846920, 27.107388, 54.123363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998722, 26.759283, 54.248978>,  <36.089806, 26.550421, 54.324348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.998722, 26.759283, 54.248978>,  <35.846920, 27.107388, 54.123363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998722, 26.759283, 54.248978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051259, -0.319132, -0.946323,
		0.923767, 0.375235, -0.076505,
		0.379509, -0.870260, 0.314038,
		36.112576, 26.498205, 54.343189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574352, 27.010086, 53.885288>,  <35.846920, 27.107388, 54.123363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574352, 27.010086, 53.885288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372112, 26.667542, 53.927269>,  <36.250767, 26.462015, 53.952457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.372112, 26.667542, 53.927269>,  <36.574352, 27.010086, 53.885288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372112, 26.667542, 53.927269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037151, -0.143141, -0.989005,
		0.861967, -0.496144, 0.104187,
		-0.505602, -0.856360, 0.104951,
		36.220432, 26.410633, 53.958755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.009392, 26.436687, 53.603138>,  <36.574352, 27.010086, 53.885288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.009392, 26.436687, 53.603138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621628, 26.338867, 53.611477>,  <36.388969, 26.280174, 53.616482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621628, 26.338867, 53.611477>,  <37.009392, 26.436687, 53.603138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621628, 26.338867, 53.611477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008519, -0.118414, -0.992928,
		0.245292, -0.962378, 0.116876,
		-0.969412, -0.244553, 0.020847,
		36.330803, 26.265501, 53.617729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768448, 25.870529, 54.111870>,  <37.009392, 26.436687, 53.603138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768448, 25.870529, 54.111870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380123, 25.774727, 54.106678>,  <36.147129, 25.717245, 54.103561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.380123, 25.774727, 54.106678>,  <36.768448, 25.870529, 54.111870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.380123, 25.774727, 54.106678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048394, -0.142570, -0.988601,
		0.234926, -0.960370, 0.149999,
		-0.970808, -0.239507, -0.012983,
		36.088882, 25.702875, 54.102783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797203, 25.613682, 53.457367>,  <36.768448, 25.870529, 54.111870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797203, 25.613682, 53.457367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419601, 25.633720, 53.587811>,  <36.193039, 25.645744, 53.666077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.419601, 25.633720, 53.587811>,  <36.797203, 25.613682, 53.457367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.419601, 25.633720, 53.587811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324320, 0.040715, -0.945071,
		-0.060627, -0.997914, -0.022186,
		-0.944003, 0.050102, 0.326112,
		36.136402, 25.648750, 53.685642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213108, 25.045370, 53.224869>,  <36.797203, 25.613682, 53.457367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213108, 25.045370, 53.224869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010208, 25.385069, 53.283478>,  <35.888466, 25.588888, 53.318642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.010208, 25.385069, 53.283478>,  <36.213108, 25.045370, 53.224869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010208, 25.385069, 53.283478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362093, -0.055739, -0.930474,
		-0.782037, -0.525042, 0.335781,
		-0.507254, 0.849249, 0.146524,
		35.858032, 25.639843, 53.327435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602234, 24.902710, 52.886578>,  <36.213108, 25.045370, 53.224869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602234, 24.902710, 52.886578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654682, 25.295996, 52.937321>,  <35.686153, 25.531967, 52.967766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654682, 25.295996, 52.937321>,  <35.602234, 24.902710, 52.886578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654682, 25.295996, 52.937321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375314, 0.167670, -0.911606,
		-0.917576, 0.071921, 0.391000,
		0.131123, 0.983216, 0.126857,
		35.694019, 25.590961, 52.975376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945076, 25.258366, 52.718121>,  <35.602234, 24.902710, 52.886578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945076, 25.258366, 52.718121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234634, 25.529924, 52.668999>,  <35.408367, 25.692860, 52.639526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.234634, 25.529924, 52.668999>,  <34.945076, 25.258366, 52.718121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.234634, 25.529924, 52.668999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312426, 0.163882, -0.935699,
		-0.615116, 0.715713, 0.330737,
		0.723894, 0.678895, -0.122801,
		35.451801, 25.733593, 52.632160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602509, 25.921232, 52.525566>,  <34.945076, 25.258366, 52.718121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602509, 25.921232, 52.525566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977188, 25.950306, 52.388561>,  <35.201996, 25.967751, 52.306358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977188, 25.950306, 52.388561>,  <34.602509, 25.921232, 52.525566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977188, 25.950306, 52.388561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341205, 0.409067, -0.846312,
		0.078599, 0.909605, 0.407971,
		0.936697, 0.072683, -0.342514,
		35.258198, 25.972111, 52.285809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.509342, 26.386206, 52.009228>,  <34.602509, 25.921232, 52.525566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.509342, 26.386206, 52.009228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878056, 26.266228, 51.910969>,  <35.099285, 26.194241, 51.852013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.878056, 26.266228, 51.910969>,  <34.509342, 26.386206, 52.009228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.878056, 26.266228, 51.910969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174608, 0.244536, -0.953789,
		0.346154, 0.922082, 0.173037,
		0.921786, -0.299944, -0.245650,
		35.154591, 26.176245, 51.837273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827583, 26.909954, 51.670033>,  <34.509342, 26.386206, 52.009228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827583, 26.909954, 51.670033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058346, 26.612637, 51.534565>,  <35.196804, 26.434246, 51.453285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.058346, 26.612637, 51.534565>,  <34.827583, 26.909954, 51.670033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058346, 26.612637, 51.534565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016122, 0.424902, -0.905096,
		0.816651, 0.516695, 0.257112,
		0.576906, -0.743293, -0.338666,
		35.231419, 26.389648, 51.432964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398983, 27.259401, 51.408005>,  <34.827583, 26.909954, 51.670033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398983, 27.259401, 51.408005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356865, 26.913166, 51.212177>,  <35.331593, 26.705425, 51.094681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356865, 26.913166, 51.212177>,  <35.398983, 27.259401, 51.408005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356865, 26.913166, 51.212177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026366, 0.489698, -0.871493,
		0.994092, -0.104671, -0.028740,
		-0.105294, -0.865586, -0.489564,
		35.325275, 26.653490, 51.065308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926643, 27.330116, 50.956421>,  <35.398983, 27.259401, 51.408005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926643, 27.330116, 50.956421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686970, 27.040777, 50.819160>,  <35.543167, 26.867174, 50.736805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686970, 27.040777, 50.819160>,  <35.926643, 27.330116, 50.956421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686970, 27.040777, 50.819160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082824, 0.482312, -0.872075,
		0.796320, -0.494108, -0.348902,
		-0.599179, -0.723348, -0.343151,
		35.507217, 26.823772, 50.716217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151272, 27.187124, 50.329662>,  <35.926643, 27.330116, 50.956421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151272, 27.187124, 50.329662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766640, 27.077353, 50.332390>,  <35.535858, 27.011490, 50.334026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766640, 27.077353, 50.332390>,  <36.151272, 27.187124, 50.329662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766640, 27.077353, 50.332390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170526, 0.577697, -0.798240,
		0.215122, -0.768736, -0.602302,
		-0.961584, -0.274427, 0.006814,
		35.478165, 26.995024, 50.334435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020653, 27.041939, 49.636314>,  <36.151272, 27.187124, 50.329662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020653, 27.041939, 49.636314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639042, 27.055557, 49.755421>,  <35.410076, 27.063728, 49.826885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.639042, 27.055557, 49.755421>,  <36.020653, 27.041939, 49.636314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639042, 27.055557, 49.755421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239501, 0.510680, -0.825739,
		-0.180177, -0.859097, -0.479050,
		-0.954031, 0.034046, 0.297767,
		35.352833, 27.065771, 49.844749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579189, 26.797646, 49.051861>,  <36.020653, 27.041939, 49.636314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579189, 26.797646, 49.051861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373631, 27.049152, 49.285294>,  <35.250298, 27.200056, 49.425354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373631, 27.049152, 49.285294>,  <35.579189, 26.797646, 49.051861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373631, 27.049152, 49.285294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212862, 0.565543, -0.796775,
		-0.831025, -0.533680, -0.156789,
		-0.513894, 0.628766, 0.583581,
		35.219463, 27.237782, 49.460369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025208, 26.910826, 48.618225>,  <35.579189, 26.797646, 49.051861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025208, 26.910826, 48.618225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013233, 27.198496, 48.895897>,  <35.006050, 27.371098, 49.062500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013233, 27.198496, 48.895897>,  <35.025208, 26.910826, 48.618225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013233, 27.198496, 48.895897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279638, 0.660736, -0.696585,
		-0.959639, -0.214970, 0.181331,
		-0.029933, 0.719177, 0.694182,
		35.004253, 27.414249, 49.104153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315472, 27.232428, 48.613171>,  <35.025208, 26.910826, 48.618225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315472, 27.232428, 48.613171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587658, 27.482027, 48.766846>,  <34.750969, 27.631786, 48.859051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587658, 27.482027, 48.766846>,  <34.315472, 27.232428, 48.613171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587658, 27.482027, 48.766846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246376, 0.688582, -0.682022,
		-0.690123, 0.369436, 0.622292,
		0.680462, 0.623997, 0.384186,
		34.791798, 27.669226, 48.882103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.056290, 27.838434, 48.633301>,  <34.315472, 27.232428, 48.613171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.056290, 27.838434, 48.633301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448666, 27.915752, 48.625305>,  <34.684090, 27.962143, 48.620506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448666, 27.915752, 48.625305>,  <34.056290, 27.838434, 48.633301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448666, 27.915752, 48.625305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178794, 0.857441, -0.482522,
		-0.076130, 0.476898, 0.875655,
		0.980937, 0.193296, -0.019990,
		34.742947, 27.973742, 48.619308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.064152, 28.566004, 48.775688>,  <34.056290, 27.838434, 48.633301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.064152, 28.566004, 48.775688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427738, 28.495441, 48.624603>,  <34.645889, 28.453104, 48.533951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.427738, 28.495441, 48.624603>,  <34.064152, 28.566004, 48.775688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.427738, 28.495441, 48.624603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017953, 0.921778, -0.387302,
		0.416492, 0.345262, 0.841029,
		0.908962, -0.176407, -0.377714,
		34.700428, 28.442520, 48.511288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497307, 29.129213, 48.983372>,  <34.064152, 28.566004, 48.775688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497307, 29.129213, 48.983372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655651, 28.951807, 48.661728>,  <34.750660, 28.845364, 48.468742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.655651, 28.951807, 48.661728>,  <34.497307, 29.129213, 48.983372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655651, 28.951807, 48.661728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066247, 0.859564, -0.506717,
		0.915917, 0.253860, 0.310889,
		0.395864, -0.443515, -0.804106,
		34.774410, 28.818752, 48.420498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866432, 29.704454, 48.612751>,  <34.497307, 29.129213, 48.983372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866432, 29.704454, 48.612751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827633, 29.411331, 48.343357>,  <34.804356, 29.235458, 48.181721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.827633, 29.411331, 48.343357>,  <34.866432, 29.704454, 48.612751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.827633, 29.411331, 48.343357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045672, 0.679242, -0.732491,
		0.994236, -0.040289, -0.099353,
		-0.096996, -0.732807, -0.673487,
		34.798534, 29.191488, 48.141312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450077, 29.794880, 48.137188>,  <34.866432, 29.704454, 48.612751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450077, 29.794880, 48.137188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146378, 29.615261, 47.948765>,  <34.964157, 29.507490, 47.835712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146378, 29.615261, 47.948765>,  <35.450077, 29.794880, 48.137188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146378, 29.615261, 47.948765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054265, 0.677609, -0.733418,
		0.648526, -0.582413, -0.490111,
		-0.759255, -0.449045, -0.471052,
		34.918602, 29.480547, 47.807449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619659, 29.787712, 47.463646>,  <35.450077, 29.794880, 48.137188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619659, 29.787712, 47.463646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223835, 29.730927, 47.453743>,  <34.986340, 29.696856, 47.447803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.223835, 29.730927, 47.453743>,  <35.619659, 29.787712, 47.463646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223835, 29.730927, 47.453743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068445, 0.614182, -0.786191,
		0.126813, -0.776291, -0.617488,
		-0.989562, -0.141963, -0.024754,
		34.926968, 29.688337, 47.446316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468372, 29.882774, 46.772331>,  <35.619659, 29.787712, 47.463646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468372, 29.882774, 46.772331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112438, 29.890186, 46.954689>,  <34.898876, 29.894634, 47.064106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112438, 29.890186, 46.954689>,  <35.468372, 29.882774, 46.772331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112438, 29.890186, 46.954689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376966, 0.533075, -0.757448,
		-0.257065, -0.845865, -0.467365,
		-0.889840, 0.018533, 0.455897,
		34.845486, 29.895746, 47.091457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987400, 29.727448, 46.228363>,  <35.468372, 29.882774, 46.772331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987400, 29.727448, 46.228363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790253, 29.909298, 46.525116>,  <34.671963, 30.018408, 46.703167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.790253, 29.909298, 46.525116>,  <34.987400, 29.727448, 46.228363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.790253, 29.909298, 46.525116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430582, 0.613478, -0.662000,
		-0.756093, -0.645723, -0.106612,
		-0.492873, 0.454628, 0.741883,
		34.642391, 30.045687, 46.747681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288994, 29.764717, 45.992996>,  <34.987400, 29.727448, 46.228363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288994, 29.764717, 45.992996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359741, 30.048176, 46.266212>,  <34.402187, 30.218250, 46.430141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359741, 30.048176, 46.266212>,  <34.288994, 29.764717, 45.992996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359741, 30.048176, 46.266212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430759, 0.679717, -0.593659,
		-0.884966, -0.189227, 0.425474,
		0.176865, 0.708645, 0.683038,
		34.412800, 30.260769, 46.471123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701279, 30.235886, 45.980209>,  <34.288994, 29.764717, 45.992996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701279, 30.235886, 45.980209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006218, 30.445421, 46.132221>,  <34.189182, 30.571142, 46.223431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006218, 30.445421, 46.132221>,  <33.701279, 30.235886, 45.980209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006218, 30.445421, 46.132221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150230, 0.714421, -0.683399,
		-0.629494, 0.463893, 0.623331,
		0.762344, 0.523838, 0.380033,
		34.234921, 30.602573, 46.246231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411194, 30.827316, 46.274860>,  <33.701279, 30.235886, 45.980209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411194, 30.827316, 46.274860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796177, 30.901375, 46.195473>,  <34.027168, 30.945810, 46.147839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796177, 30.901375, 46.195473>,  <33.411194, 30.827316, 46.274860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796177, 30.901375, 46.195473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261685, 0.827074, -0.497464,
		0.072043, 0.530725, 0.844476,
		0.962461, 0.185148, -0.198468,
		34.084915, 30.956919, 46.135933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402618, 31.546431, 46.379955>,  <33.411194, 30.827316, 46.274860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402618, 31.546431, 46.379955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733498, 31.441719, 46.181068>,  <33.932026, 31.378893, 46.061737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.733498, 31.441719, 46.181068>,  <33.402618, 31.546431, 46.379955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733498, 31.441719, 46.181068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172774, 0.723502, -0.668352,
		0.534695, 0.638762, 0.553248,
		0.827194, -0.261778, -0.497215,
		33.981655, 31.363186, 46.031902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.608429, 32.122570, 46.002449>,  <33.402618, 31.546431, 46.379955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.608429, 32.122570, 46.002449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858135, 31.865602, 45.824642>,  <34.007957, 31.711422, 45.717957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858135, 31.865602, 45.824642>,  <33.608429, 32.122570, 46.002449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858135, 31.865602, 45.824642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115102, 0.487165, -0.865692,
		0.772687, 0.591586, 0.230177,
		0.624265, -0.642415, -0.444518,
		34.045414, 31.672878, 45.691288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018070, 32.514614, 45.505974>,  <33.608429, 32.122570, 46.002449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018070, 32.514614, 45.505974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052086, 32.131199, 45.397186>,  <34.072495, 31.901150, 45.331913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052086, 32.131199, 45.397186>,  <34.018070, 32.514614, 45.505974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052086, 32.131199, 45.397186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090980, 0.264350, -0.960126,
		0.992215, 0.106390, -0.064728,
		0.085037, -0.958541, -0.271971,
		34.077599, 31.843637, 45.315594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640636, 32.508526, 45.104210>,  <34.018070, 32.514614, 45.505974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.640636, 32.508526, 45.104210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412361, 32.191429, 45.018536>,  <34.275394, 32.001171, 44.967133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.412361, 32.191429, 45.018536>,  <34.640636, 32.508526, 45.104210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412361, 32.191429, 45.018536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125659, 0.342062, -0.931237,
		0.811495, -0.504532, -0.294826,
		-0.570688, -0.792742, -0.214183,
		34.241154, 31.953606, 44.954281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844387, 32.261456, 44.431725>,  <34.640636, 32.508526, 45.104210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844387, 32.261456, 44.431725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482738, 32.095184, 44.471283>,  <34.265751, 31.995420, 44.495018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482738, 32.095184, 44.471283>,  <34.844387, 32.261456, 44.431725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482738, 32.095184, 44.471283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239443, 0.301211, -0.923005,
		0.353891, -0.858184, -0.371862,
		-0.904117, -0.415683, 0.098890,
		34.211502, 31.970480, 44.500950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765659, 31.953760, 43.842403>,  <34.844387, 32.261456, 44.431725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765659, 31.953760, 43.842403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385708, 31.968245, 43.966610>,  <34.157738, 31.976936, 44.041134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.385708, 31.968245, 43.966610>,  <34.765659, 31.953760, 43.842403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.385708, 31.968245, 43.966610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292749, 0.245464, -0.924146,
		-0.109687, -0.968729, -0.222559,
		-0.949877, 0.036213, 0.310519,
		34.100746, 31.979109, 44.059765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.329445, 31.592646, 43.371948>,  <34.765659, 31.953760, 43.842403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.329445, 31.592646, 43.371948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087372, 31.853657, 43.554356>,  <33.942127, 32.010265, 43.663799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087372, 31.853657, 43.554356>,  <34.329445, 31.592646, 43.371948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087372, 31.853657, 43.554356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421678, 0.223112, -0.878868,
		-0.675230, -0.724173, 0.140132,
		-0.605187, 0.652529, 0.456020,
		33.905815, 32.049416, 43.691162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624088, 31.605778, 43.041859>,  <34.329445, 31.592646, 43.371948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624088, 31.605778, 43.041859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599831, 31.945030, 43.252380>,  <33.585274, 32.148582, 43.378693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599831, 31.945030, 43.252380>,  <33.624088, 31.605778, 43.041859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599831, 31.945030, 43.252380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488920, 0.434446, -0.756448,
		-0.870218, -0.303197, 0.388321,
		-0.060648, 0.848132, 0.526302,
		33.581635, 32.199471, 43.410271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862923, 31.934114, 43.084843>,  <33.624088, 31.605778, 43.041859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862923, 31.934114, 43.084843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119728, 32.235912, 43.139332>,  <33.273811, 32.416992, 43.172028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119728, 32.235912, 43.139332>,  <32.862923, 31.934114, 43.084843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119728, 32.235912, 43.139332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503514, 0.548916, -0.667207,
		-0.578179, 0.359765, 0.732310,
		0.642015, 0.754493, 0.136224,
		33.312332, 32.462261, 43.180199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419666, 32.549660, 42.962948>,  <32.862923, 31.934114, 43.084843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419666, 32.549660, 42.962948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793674, 32.686260, 42.924770>,  <33.018082, 32.768219, 42.901863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793674, 32.686260, 42.924770>,  <32.419666, 32.549660, 42.962948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793674, 32.686260, 42.924770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300465, 0.620131, -0.724678,
		-0.188286, 0.706270, 0.682445,
		0.935024, 0.341497, -0.095448,
		33.074181, 32.788708, 42.896137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.252632, 33.162235, 42.744804>,  <32.419666, 32.549660, 42.962948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.252632, 33.162235, 42.744804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639282, 33.128643, 42.647995>,  <32.871273, 33.108486, 42.589909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.639282, 33.128643, 42.647995>,  <32.252632, 33.162235, 42.744804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639282, 33.128643, 42.647995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096426, 0.755980, -0.647454,
		0.237338, 0.649185, 0.722654,
		0.966630, -0.083982, -0.242021,
		32.929272, 33.103447, 42.575390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535282, 33.832798, 42.825859>,  <32.252632, 33.162235, 42.744804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535282, 33.832798, 42.825859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753834, 33.625896, 42.562370>,  <32.884964, 33.501755, 42.404278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753834, 33.625896, 42.562370>,  <32.535282, 33.832798, 42.825859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753834, 33.625896, 42.562370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297270, 0.615524, -0.729904,
		0.783008, 0.594622, 0.182544,
		0.546378, -0.517256, -0.658724,
		32.917747, 33.470718, 42.364754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954662, 34.281837, 42.472561>,  <32.535282, 33.832798, 42.825859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954662, 34.281837, 42.472561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979473, 33.963596, 42.231506>,  <32.994358, 33.772652, 42.086876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979473, 33.963596, 42.231506>,  <32.954662, 34.281837, 42.472561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979473, 33.963596, 42.231506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251966, 0.571757, -0.780773,
		0.965746, 0.200273, -0.165001,
		0.062028, -0.795604, -0.602634,
		32.998081, 33.724915, 42.050716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351234, 34.472839, 41.911499>,  <32.954662, 34.281837, 42.472561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351234, 34.472839, 41.911499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143284, 34.163914, 41.765480>,  <33.018513, 33.978558, 41.677868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.143284, 34.163914, 41.765480>,  <33.351234, 34.472839, 41.911499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.143284, 34.163914, 41.765480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227605, 0.537120, -0.812218,
		0.823365, -0.339162, -0.455016,
		-0.519872, -0.772316, -0.365051,
		32.987324, 33.932220, 41.655964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476128, 34.436295, 41.228092>,  <33.351234, 34.472839, 41.911499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476128, 34.436295, 41.228092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111561, 34.279713, 41.278816>,  <32.892818, 34.185764, 41.309250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111561, 34.279713, 41.278816>,  <33.476128, 34.436295, 41.228092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111561, 34.279713, 41.278816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337297, 0.534227, -0.775133,
		0.235679, -0.749246, -0.618940,
		-0.911420, -0.391449, 0.126812,
		32.838135, 34.162277, 41.316860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036766, 34.969818, 41.080257>,  <33.476128, 34.436295, 41.228092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036766, 34.969818, 41.080257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310040, 34.814247, 40.833035>,  <34.474003, 34.720905, 40.684700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310040, 34.814247, 40.833035>,  <34.036766, 34.969818, 41.080257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310040, 34.814247, 40.833035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397265, -0.512216, 0.761456,
		-0.612730, -0.765747, -0.195430,
		0.683185, -0.388930, -0.618054,
		34.514996, 34.697567, 40.647617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.119083, 34.159534, 40.964222>,  <34.036766, 34.969818, 41.080257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.119083, 34.159534, 40.964222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488091, 34.306976, 40.918453>,  <34.709496, 34.395443, 40.890991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488091, 34.306976, 40.918453>,  <34.119083, 34.159534, 40.964222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488091, 34.306976, 40.918453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368370, -0.752412, 0.546058,
		0.115190, -0.545897, -0.829896,
		0.922516, 0.368609, -0.114421,
		34.764847, 34.417561, 40.884129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624146, 33.598465, 40.880634>,  <34.119083, 34.159534, 40.964222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624146, 33.598465, 40.880634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874893, 33.894032, 40.979465>,  <35.025341, 34.071369, 41.038765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.874893, 33.894032, 40.979465>,  <34.624146, 33.598465, 40.880634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.874893, 33.894032, 40.979465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610256, -0.662809, 0.433903,
		0.484385, -0.121215, -0.866417,
		0.626864, 0.738912, 0.247083,
		35.062954, 34.115704, 41.053589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283096, 33.361847, 40.648575>,  <34.624146, 33.598465, 40.880634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283096, 33.361847, 40.648575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315521, 33.632339, 40.941460>,  <35.334976, 33.794636, 41.117191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315521, 33.632339, 40.941460>,  <35.283096, 33.361847, 40.648575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315521, 33.632339, 40.941460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508508, -0.659888, 0.553143,
		0.857233, 0.327499, -0.397362,
		0.081060, 0.676235, 0.732213,
		35.339840, 33.835209, 41.161125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996582, 33.461758, 40.713074>,  <35.283096, 33.361847, 40.648575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996582, 33.461758, 40.713074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842342, 33.617489, 41.047676>,  <35.749798, 33.710926, 41.248436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842342, 33.617489, 41.047676>,  <35.996582, 33.461758, 40.713074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842342, 33.617489, 41.047676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612076, -0.570472, 0.547653,
		0.690418, 0.723179, -0.018323,
		-0.385599, 0.389324, 0.836505,
		35.726662, 33.734287, 41.298626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523357, 33.479645, 41.039459>,  <35.996582, 33.461758, 40.713074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523357, 33.479645, 41.039459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243061, 33.520805, 41.321842>,  <36.074883, 33.545502, 41.491272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243061, 33.520805, 41.321842>,  <36.523357, 33.479645, 41.039459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243061, 33.520805, 41.321842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479859, -0.664263, 0.573140,
		0.527920, 0.740381, 0.416096,
		-0.700740, 0.102905, 0.705956,
		36.032841, 33.551678, 41.533630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876823, 33.330055, 41.564800>,  <36.523357, 33.479645, 41.039459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876823, 33.330055, 41.564800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507404, 33.309341, 41.716789>,  <36.285751, 33.296913, 41.807983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507404, 33.309341, 41.716789>,  <36.876823, 33.330055, 41.564800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507404, 33.309341, 41.716789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238192, -0.853991, 0.462563,
		0.300543, 0.517705, 0.801034,
		-0.923547, -0.051780, 0.379975,
		36.230339, 33.293808, 41.830780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766998, 33.405403, 42.412659>,  <36.876823, 33.330055, 41.564800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766998, 33.405403, 42.412659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485802, 33.187992, 42.229187>,  <36.317085, 33.057545, 42.119106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485802, 33.187992, 42.229187>,  <36.766998, 33.405403, 42.412659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485802, 33.187992, 42.229187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227196, -0.782763, 0.579365,
		-0.673937, 0.303077, 0.673761,
		-0.702987, -0.543531, -0.458675,
		36.274906, 33.024933, 42.091583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772026, 32.884399, 42.803272>,  <36.766998, 33.405403, 42.412659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772026, 32.884399, 42.803272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490322, 32.716820, 42.574013>,  <36.321301, 32.616272, 42.436455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490322, 32.716820, 42.574013>,  <36.772026, 32.884399, 42.803272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490322, 32.716820, 42.574013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060443, -0.769007, 0.636377,
		-0.707367, 0.482816, 0.516256,
		-0.704258, -0.418948, -0.573153,
		36.279045, 32.591137, 42.402065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154797, 32.717052, 43.189236>,  <36.772026, 32.884399, 42.803272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154797, 32.717052, 43.189236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156456, 32.470329, 42.874393>,  <36.157452, 32.322296, 42.685490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.156456, 32.470329, 42.874393>,  <36.154797, 32.717052, 43.189236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156456, 32.470329, 42.874393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020281, -0.786896, 0.616753,
		-0.999786, -0.018522, 0.009245,
		0.004149, -0.616808, -0.787102,
		36.157700, 32.285286, 42.638264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809853, 32.157501, 43.383018>,  <36.154797, 32.717052, 43.189236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809853, 32.157501, 43.383018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015656, 32.010525, 43.073112>,  <36.139137, 31.922338, 42.887169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.015656, 32.010525, 43.073112>,  <35.809853, 32.157501, 43.383018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015656, 32.010525, 43.073112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197022, -0.828703, 0.523864,
		-0.834546, -0.422177, -0.353977,
		0.514505, -0.367447, -0.774769,
		36.170010, 31.900291, 42.840683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539101, 31.544323, 43.235653>,  <35.809853, 32.157501, 43.383018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.539101, 31.544323, 43.235653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917149, 31.530029, 43.105743>,  <36.143978, 31.521454, 43.027798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917149, 31.530029, 43.105743>,  <35.539101, 31.544323, 43.235653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917149, 31.530029, 43.105743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139948, -0.853927, 0.501221,
		-0.295241, -0.519164, -0.802061,
		0.945117, -0.035735, -0.324771,
		36.200684, 31.519308, 43.008312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.578735, 30.849215, 43.122387>,  <35.539101, 31.544323, 43.235653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.578735, 30.849215, 43.122387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954659, 30.983562, 43.147518>,  <36.180214, 31.064171, 43.162598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954659, 30.983562, 43.147518>,  <35.578735, 30.849215, 43.122387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954659, 30.983562, 43.147518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266054, -0.834666, 0.482232,
		0.214411, -0.436490, -0.873788,
		0.939810, 0.335870, 0.062832,
		36.236603, 31.084324, 43.166367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914326, 30.251347, 43.175121>,  <35.578735, 30.849215, 43.122387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914326, 30.251347, 43.175121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212856, 30.499172, 43.272396>,  <36.391975, 30.647867, 43.330761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212856, 30.499172, 43.272396>,  <35.914326, 30.251347, 43.175121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212856, 30.499172, 43.272396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228190, -0.581407, 0.780958,
		0.625244, -0.527355, -0.575296,
		0.746324, 0.619566, 0.243184,
		36.436752, 30.685041, 43.345352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545666, 29.865786, 43.181084>,  <35.914326, 30.251347, 43.175121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545666, 29.865786, 43.181084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609379, 30.181997, 43.417622>,  <36.647606, 30.371725, 43.559544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609379, 30.181997, 43.417622>,  <36.545666, 29.865786, 43.181084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609379, 30.181997, 43.417622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219735, -0.612358, 0.759430,
		0.962469, 0.008977, -0.271245,
		0.159281, 0.790530, 0.591348,
		36.657162, 30.419157, 43.595024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090660, 29.719604, 43.569237>,  <36.545666, 29.865786, 43.181084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090660, 29.719604, 43.569237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900810, 29.991283, 43.793171>,  <36.786900, 30.154291, 43.927532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900810, 29.991283, 43.793171>,  <37.090660, 29.719604, 43.569237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900810, 29.991283, 43.793171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342263, -0.443572, 0.828311,
		0.810917, 0.584750, -0.021934,
		-0.474625, 0.679199, 0.559839,
		36.758423, 30.195044, 43.961124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441612, 29.618057, 44.118263>,  <37.090660, 29.719604, 43.569237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441612, 29.618057, 44.118263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159561, 29.874056, 44.240379>,  <36.990330, 30.027655, 44.313648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.159561, 29.874056, 44.240379>,  <37.441612, 29.618057, 44.118263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.159561, 29.874056, 44.240379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131694, -0.304852, 0.943251,
		0.696744, 0.705317, 0.130676,
		-0.705128, 0.639995, 0.305289,
		36.948021, 30.066053, 44.331966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746365, 29.967329, 44.707561>,  <37.441612, 29.618057, 44.118263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746365, 29.967329, 44.707561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346481, 29.969124, 44.717049>,  <37.106552, 29.970201, 44.722740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.346481, 29.969124, 44.717049>,  <37.746365, 29.967329, 44.707561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.346481, 29.969124, 44.717049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022171, -0.218117, 0.975671,
		0.009552, 0.975912, 0.217954,
		-0.999709, 0.004487, 0.023720,
		37.046570, 29.970470, 44.724163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577816, 30.410770, 45.303051>,  <37.746365, 29.967329, 44.707561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577816, 30.410770, 45.303051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256588, 30.175478, 45.264969>,  <37.063850, 30.034302, 45.242119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.256588, 30.175478, 45.264969>,  <37.577816, 30.410770, 45.303051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.256588, 30.175478, 45.264969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066372, -0.247074, 0.966721,
		-0.592180, 0.770024, 0.237459,
		-0.803068, -0.588233, -0.095204,
		37.015667, 29.999008, 45.236408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214581, 30.464861, 45.967796>,  <37.577816, 30.410770, 45.303051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214581, 30.464861, 45.967796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054802, 30.140099, 45.797501>,  <36.958935, 29.945242, 45.695324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054802, 30.140099, 45.797501>,  <37.214581, 30.464861, 45.967796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054802, 30.140099, 45.797501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118943, -0.414574, 0.902209,
		-0.909009, 0.411019, 0.069028,
		-0.399443, -0.811906, -0.425740,
		36.934971, 29.896526, 45.669777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498466, 30.239170, 46.337742>,  <37.214581, 30.464861, 45.967796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498466, 30.239170, 46.337742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632046, 29.913692, 46.147423>,  <36.712193, 29.718407, 46.033230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.632046, 29.913692, 46.147423>,  <36.498466, 30.239170, 46.337742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632046, 29.913692, 46.147423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017494, -0.499338, 0.866231,
		-0.942429, -0.297600, -0.152518,
		0.333948, -0.813693, -0.475797,
		36.732231, 29.669584, 46.004684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148655, 29.736811, 46.528080>,  <36.498466, 30.239170, 46.337742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148655, 29.736811, 46.528080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459717, 29.533201, 46.380486>,  <36.646355, 29.411036, 46.291927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459717, 29.533201, 46.380486>,  <36.148655, 29.736811, 46.528080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459717, 29.533201, 46.380486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014823, -0.571904, 0.820187,
		-0.628526, -0.643286, -0.437194,
		0.777648, -0.509028, -0.368992,
		36.693012, 29.380493, 46.269787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983505, 28.973053, 46.590725>,  <36.148655, 29.736811, 46.528080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983505, 28.973053, 46.590725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374073, 29.056759, 46.569473>,  <36.608414, 29.106981, 46.556725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374073, 29.056759, 46.569473>,  <35.983505, 28.973053, 46.590725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374073, 29.056759, 46.569473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162773, -0.551852, 0.817902,
		0.141838, -0.807260, -0.572899,
		0.976415, 0.209263, -0.053126,
		36.666996, 29.119537, 46.553535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281010, 28.203173, 46.719196>,  <35.983505, 28.973053, 46.590725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281010, 28.203173, 46.719196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582352, 28.458687, 46.781689>,  <36.763157, 28.611996, 46.819183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.582352, 28.458687, 46.781689>,  <36.281010, 28.203173, 46.719196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582352, 28.458687, 46.781689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303730, -0.548703, 0.778892,
		0.583269, -0.539331, -0.607388,
		0.753356, 0.638785, 0.156230,
		36.808357, 28.650322, 46.828556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941093, 27.850683, 46.813313>,  <36.281010, 28.203173, 46.719196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941093, 27.850683, 46.813313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989380, 28.208452, 46.985561>,  <37.018353, 28.423113, 47.088913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989380, 28.208452, 46.985561>,  <36.941093, 27.850683, 46.813313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989380, 28.208452, 46.985561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327726, -0.445384, 0.833204,
		0.937029, 0.040543, -0.346891,
		0.120719, 0.894421, 0.430625,
		37.025597, 28.476778, 47.114750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589985, 27.706743, 47.279263>,  <36.941093, 27.850683, 46.813313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589985, 27.706743, 47.279263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397118, 28.034533, 47.403179>,  <37.281395, 28.231207, 47.477531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397118, 28.034533, 47.403179>,  <37.589985, 27.706743, 47.279263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397118, 28.034533, 47.403179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243778, -0.214148, 0.945893,
		0.841477, 0.531602, -0.096514,
		-0.482170, 0.819475, 0.309794,
		37.252468, 28.280375, 47.496117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021961, 28.013281, 47.755032>,  <37.589985, 27.706743, 47.279263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021961, 28.013281, 47.755032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666786, 28.167751, 47.854977>,  <37.453682, 28.260433, 47.914944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.666786, 28.167751, 47.854977>,  <38.021961, 28.013281, 47.755032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666786, 28.167751, 47.854977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173640, -0.221595, 0.959554,
		0.425924, 0.895413, 0.129708,
		-0.887940, 0.386175, 0.249862,
		37.400406, 28.283604, 47.929935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152168, 28.554283, 48.174702>,  <38.021961, 28.013281, 47.755032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152168, 28.554283, 48.174702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796898, 28.383495, 48.242630>,  <37.583736, 28.281023, 48.283386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796898, 28.383495, 48.242630>,  <38.152168, 28.554283, 48.174702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796898, 28.383495, 48.242630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238464, -0.112396, 0.964625,
		-0.392777, 0.897254, 0.201645,
		-0.888178, -0.426968, 0.169816,
		37.530445, 28.255405, 48.293575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819439, 28.805763, 48.826302>,  <38.152168, 28.554283, 48.174702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819439, 28.805763, 48.826302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656631, 28.444374, 48.772533>,  <37.558945, 28.227541, 48.740273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.656631, 28.444374, 48.772533>,  <37.819439, 28.805763, 48.826302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656631, 28.444374, 48.772533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013187, -0.152957, 0.988145,
		-0.913323, 0.400424, 0.074171,
		-0.407022, -0.903474, -0.134419,
		37.534523, 28.173332, 48.732208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435406, 28.719501, 49.387348>,  <37.819439, 28.805763, 48.826302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435406, 28.719501, 49.387348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475231, 28.343872, 49.255756>,  <37.499126, 28.118494, 49.176804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.475231, 28.343872, 49.255756>,  <37.435406, 28.719501, 49.387348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.475231, 28.343872, 49.255756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138174, -0.314370, 0.939191,
		-0.985391, -0.138962, 0.098457,
		0.099560, -0.939075, -0.328978,
		37.505100, 28.062149, 49.157063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.266350, 28.313730, 50.000320>,  <37.435406, 28.719501, 49.387348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.266350, 28.313730, 50.000320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376766, 28.022673, 49.749138>,  <37.443016, 27.848038, 49.598427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.376766, 28.022673, 49.749138>,  <37.266350, 28.313730, 50.000320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376766, 28.022673, 49.749138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016893, -0.656916, 0.753774,
		-0.960996, -0.197467, -0.193631,
		0.276045, -0.727645, -0.627958,
		37.459579, 27.804379, 49.560749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920757, 27.676413, 50.096539>,  <37.266350, 28.313730, 50.000320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920757, 27.676413, 50.096539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269588, 27.566900, 49.934296>,  <37.478889, 27.501192, 49.836952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.269588, 27.566900, 49.934296>,  <36.920757, 27.676413, 50.096539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.269588, 27.566900, 49.934296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136635, -0.659657, 0.739043,
		-0.469897, -0.699926, -0.537867,
		0.872083, -0.273782, -0.405605,
		37.531212, 27.484766, 49.812614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.940018, 26.987112, 50.171318>,  <36.920757, 27.676413, 50.096539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.940018, 26.987112, 50.171318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324551, 27.071165, 50.100128>,  <37.555271, 27.121597, 50.057415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324551, 27.071165, 50.100128>,  <36.940018, 26.987112, 50.171318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324551, 27.071165, 50.100128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274209, -0.671029, 0.688861,
		0.025327, -0.711030, -0.702705,
		0.961336, 0.210135, -0.177976,
		37.612953, 27.134205, 50.046734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280441, 26.323906, 50.024773>,  <36.940018, 26.987112, 50.171318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280441, 26.323906, 50.024773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552528, 26.593571, 50.139881>,  <37.715782, 26.755369, 50.208946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.552528, 26.593571, 50.139881>,  <37.280441, 26.323906, 50.024773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552528, 26.593571, 50.139881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290722, -0.608512, 0.738372,
		0.672893, -0.418592, -0.609914,
		0.680217, 0.674161, 0.287770,
		37.756592, 26.795818, 50.226212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.929901, 26.011555, 50.138943>,  <37.280441, 26.323906, 50.024773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.929901, 26.011555, 50.138943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885811, 26.340086, 50.362823>,  <37.859356, 26.537205, 50.497154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.885811, 26.340086, 50.362823>,  <37.929901, 26.011555, 50.138943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885811, 26.340086, 50.362823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178745, -0.537572, 0.824055,
		0.977701, 0.190880, -0.087551,
		-0.110230, 0.821329, 0.559704,
		37.852741, 26.586485, 50.530735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483463, 25.874437, 50.575874>,  <37.929901, 26.011555, 50.138943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483463, 25.874437, 50.575874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284672, 26.177233, 50.745567>,  <38.165398, 26.358910, 50.847385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284672, 26.177233, 50.745567>,  <38.483463, 25.874437, 50.575874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284672, 26.177233, 50.745567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380148, -0.249551, 0.890625,
		0.780061, 0.603898, -0.163745,
		-0.496983, 0.756989, 0.424235,
		38.135578, 26.404329, 50.872837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.956669, 26.291113, 50.922237>,  <38.483463, 25.874437, 50.575874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.956669, 26.291113, 50.922237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602345, 26.352345, 51.097469>,  <38.389751, 26.389084, 51.202606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.602345, 26.352345, 51.097469>,  <38.956669, 26.291113, 50.922237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602345, 26.352345, 51.097469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451040, 0.062035, 0.890345,
		0.109117, 0.986265, -0.123997,
		-0.885808, 0.153080, 0.438076,
		38.336601, 26.398268, 51.228893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091724, 26.883413, 51.350090>,  <38.956669, 26.291113, 50.922237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091724, 26.883413, 51.350090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769203, 26.682722, 51.475399>,  <38.575691, 26.562307, 51.550587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769203, 26.682722, 51.475399>,  <39.091724, 26.883413, 51.350090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769203, 26.682722, 51.475399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360872, 0.002374, 0.932612,
		-0.468664, 0.865021, 0.179146,
		-0.806304, -0.501730, 0.313275,
		38.527313, 26.532204, 51.569382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915630, 27.031799, 52.069706>,  <39.091724, 26.883413, 51.350090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915630, 27.031799, 52.069706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746716, 26.673141, 52.016476>,  <38.645367, 26.457947, 51.984539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.746716, 26.673141, 52.016476>,  <38.915630, 27.031799, 52.069706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746716, 26.673141, 52.016476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196016, -0.233659, 0.952356,
		-0.885017, 0.376078, 0.274426,
		-0.422282, -0.896643, -0.133076,
		38.620029, 26.404148, 51.976555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331635, 27.665579, 52.089287>,  <38.915630, 27.031799, 52.069706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331635, 27.665579, 52.089287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660156, 27.784264, 52.284187>,  <39.857269, 27.855474, 52.401127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660156, 27.784264, 52.284187>,  <39.331635, 27.665579, 52.089287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660156, 27.784264, 52.284187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167319, 0.691259, -0.702969,
		-0.545399, 0.658880, 0.518090,
		0.821307, 0.296712, 0.487255,
		39.906548, 27.873278, 52.430363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304081, 28.382906, 52.155365>,  <39.331635, 27.665579, 52.089287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304081, 28.382906, 52.155365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689636, 28.289007, 52.205681>,  <39.920967, 28.232668, 52.235870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.689636, 28.289007, 52.205681>,  <39.304081, 28.382906, 52.155365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.689636, 28.289007, 52.205681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255141, 0.678492, -0.688878,
		0.076364, 0.696092, 0.713880,
		0.963884, -0.234745, 0.125789,
		39.978802, 28.218584, 52.243416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.828094, 29.053223, 52.337761>,  <39.304081, 28.382906, 52.155365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.828094, 29.053223, 52.337761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007893, 28.748018, 52.151955>,  <40.115772, 28.564896, 52.040470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.007893, 28.748018, 52.151955>,  <39.828094, 29.053223, 52.337761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.007893, 28.748018, 52.151955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189846, 0.589722, -0.784975,
		0.872879, 0.264653, 0.409929,
		0.449491, -0.763011, -0.464513,
		40.142738, 28.519115, 52.012600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.160095, 29.358158, 51.832081>,  <39.828094, 29.053223, 52.337761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.160095, 29.358158, 51.832081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216434, 28.981890, 51.708595>,  <40.250237, 28.756128, 51.634506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.216434, 28.981890, 51.708595>,  <40.160095, 29.358158, 51.832081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216434, 28.981890, 51.708595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148187, 0.328336, -0.932864,
		0.978878, 0.085646, 0.185641,
		0.140849, -0.940670, -0.308710,
		40.258690, 28.699688, 51.615982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.764477, 29.412642, 51.424534>,  <40.160095, 29.358158, 51.832081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.764477, 29.412642, 51.424534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580383, 29.074451, 51.316200>,  <40.469925, 28.871536, 51.251202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.580383, 29.074451, 51.316200>,  <40.764477, 29.412642, 51.424534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580383, 29.074451, 51.316200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053252, 0.278220, -0.959040,
		0.886197, -0.455809, -0.083023,
		-0.460238, -0.845477, -0.270830,
		40.442310, 28.820808, 51.234951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132893, 29.162868, 50.962925>,  <40.764477, 29.412642, 51.424534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132893, 29.162868, 50.962925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799782, 28.956829, 50.881779>,  <40.599915, 28.833204, 50.833092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799782, 28.956829, 50.881779>,  <41.132893, 29.162868, 50.962925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799782, 28.956829, 50.881779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044534, 0.427592, -0.902874,
		0.551817, -0.742857, -0.379027,
		-0.832775, -0.515101, -0.202870,
		40.549950, 28.802299, 50.820919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.250309, 28.965473, 50.364483>,  <41.132893, 29.162868, 50.962925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.250309, 28.965473, 50.364483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852554, 28.946955, 50.402538>,  <40.613903, 28.935844, 50.425369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.852554, 28.946955, 50.402538>,  <41.250309, 28.965473, 50.364483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.852554, 28.946955, 50.402538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105801, 0.434874, -0.894254,
		0.000029, -0.899300, -0.437332,
		-0.994388, -0.046296, 0.095134,
		40.554237, 28.933065, 50.431080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097477, 28.829687, 49.690002>,  <41.250309, 28.965473, 50.364483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097477, 28.829687, 49.690002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732254, 28.926678, 49.821167>,  <40.513119, 28.984873, 49.899868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.732254, 28.926678, 49.821167>,  <41.097477, 28.829687, 49.690002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.732254, 28.926678, 49.821167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214223, 0.399033, -0.891561,
		-0.347032, -0.884295, -0.312396,
		-0.913059, 0.242477, 0.327914,
		40.458336, 28.999420, 49.919540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610546, 28.321714, 49.365391>,  <41.097477, 28.829687, 49.690002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610546, 28.321714, 49.365391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488499, 28.692507, 49.452671>,  <40.415272, 28.914982, 49.505039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488499, 28.692507, 49.452671>,  <40.610546, 28.321714, 49.365391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488499, 28.692507, 49.452671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361372, 0.099284, -0.927121,
		-0.881086, -0.361733, 0.304691,
		-0.305119, 0.926980, 0.218198,
		40.396961, 28.970600, 49.518131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016796, 28.327698, 48.945801>,  <40.610546, 28.321714, 49.365391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016796, 28.327698, 48.945801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107960, 28.699730, 49.061047>,  <40.162659, 28.922949, 49.130196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.107960, 28.699730, 49.061047>,  <40.016796, 28.327698, 48.945801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107960, 28.699730, 49.061047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013825, 0.292780, -0.956080,
		-0.973584, 0.221885, 0.053870,
		0.227912, 0.930079, 0.288114,
		40.176334, 28.978754, 49.147480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.508434, 28.821602, 48.609566>,  <40.016796, 28.327698, 48.945801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.508434, 28.821602, 48.609566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823189, 29.056061, 48.686760>,  <40.012039, 29.196737, 48.733078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823189, 29.056061, 48.686760>,  <39.508434, 28.821602, 48.609566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823189, 29.056061, 48.686760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110345, 0.441341, -0.890529,
		-0.607157, 0.679447, 0.411962,
		0.786883, 0.586149, 0.192990,
		40.059254, 29.231905, 48.744656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266464, 29.404001, 48.465847>,  <39.508434, 28.821602, 48.609566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266464, 29.404001, 48.465847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653473, 29.501202, 48.437973>,  <39.885677, 29.559523, 48.421249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653473, 29.501202, 48.437973>,  <39.266464, 29.404001, 48.465847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653473, 29.501202, 48.437973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221759, 0.683507, -0.695443,
		-0.121363, 0.688308, 0.715194,
		0.967519, 0.243002, -0.069686,
		39.943729, 29.574102, 48.417068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360687, 30.161280, 48.421844>,  <39.266464, 29.404001, 48.465847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360687, 30.161280, 48.421844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690590, 29.992599, 48.271141>,  <39.888531, 29.891392, 48.180717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.690590, 29.992599, 48.271141>,  <39.360687, 30.161280, 48.421844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.690590, 29.992599, 48.271141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037298, 0.624236, -0.780345,
		0.564256, 0.657647, 0.499114,
		0.824757, -0.421699, -0.376758,
		39.938019, 29.866091, 48.158115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840622, 30.735182, 48.347282>,  <39.360687, 30.161280, 48.421844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840622, 30.735182, 48.347282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923431, 30.432909, 48.098740>,  <39.973118, 30.251545, 47.949615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923431, 30.432909, 48.098740>,  <39.840622, 30.735182, 48.347282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923431, 30.432909, 48.098740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054318, 0.643016, -0.763924,
		0.976827, 0.124400, 0.174167,
		0.207024, -0.755682, -0.621358,
		39.985538, 30.206203, 47.912331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262878, 30.965847, 47.943974>,  <39.840622, 30.735182, 48.347282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262878, 30.965847, 47.943974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135185, 30.656136, 47.725403>,  <40.058567, 30.470308, 47.594261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135185, 30.656136, 47.725403>,  <40.262878, 30.965847, 47.943974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135185, 30.656136, 47.725403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150313, 0.610668, -0.777490,
		0.935678, -0.166069, -0.311332,
		-0.319237, -0.774278, -0.546426,
		40.039413, 30.423853, 47.561474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.547352, 31.148525, 47.228325>,  <40.262878, 30.965847, 47.943974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.547352, 31.148525, 47.228325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294144, 30.839954, 47.202465>,  <40.142220, 30.654812, 47.186951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294144, 30.839954, 47.202465>,  <40.547352, 31.148525, 47.228325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294144, 30.839954, 47.202465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245998, 0.279638, -0.928056,
		0.734007, -0.571577, -0.366787,
		-0.633024, -0.771428, -0.064650,
		40.104237, 30.608526, 47.183071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665779, 30.776711, 46.510601>,  <40.547352, 31.148525, 47.228325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665779, 30.776711, 46.510601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306835, 30.644011, 46.627003>,  <40.091469, 30.564390, 46.696842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.306835, 30.644011, 46.627003>,  <40.665779, 30.776711, 46.510601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.306835, 30.644011, 46.627003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384441, 0.263927, -0.884617,
		0.216662, -0.905698, -0.364375,
		-0.897364, -0.331744, 0.291005,
		40.037628, 30.544485, 46.714302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482243, 30.269447, 46.053734>,  <40.665779, 30.776711, 46.510601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482243, 30.269447, 46.053734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151230, 30.436337, 46.203995>,  <39.952621, 30.536470, 46.294151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.151230, 30.436337, 46.203995>,  <40.482243, 30.269447, 46.053734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151230, 30.436337, 46.203995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248802, 0.327284, -0.911583,
		-0.503278, -0.847827, -0.167031,
		-0.827531, 0.417222, 0.375656,
		39.902969, 30.561502, 46.316692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.952679, 30.052984, 45.580853>,  <40.482243, 30.269447, 46.053734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.952679, 30.052984, 45.580853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766273, 30.351780, 45.770519>,  <39.654430, 30.531057, 45.884319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766273, 30.351780, 45.770519>,  <39.952679, 30.052984, 45.580853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766273, 30.351780, 45.770519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472426, 0.243047, -0.847196,
		-0.748092, -0.618817, 0.239633,
		-0.466017, 0.746990, 0.474166,
		39.626469, 30.575876, 45.912769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186337, 30.052711, 45.516068>,  <39.952679, 30.052984, 45.580853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186337, 30.052711, 45.516068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283924, 30.431776, 45.598446>,  <39.342476, 30.659216, 45.647873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283924, 30.431776, 45.598446>,  <39.186337, 30.052711, 45.516068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283924, 30.431776, 45.598446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526611, 0.307785, -0.792433,
		-0.814346, 0.084875, 0.574139,
		0.243969, 0.947663, 0.205948,
		39.357113, 30.716074, 45.660229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645309, 30.352526, 45.189457>,  <39.186337, 30.052711, 45.516068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645309, 30.352526, 45.189457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883698, 30.660086, 45.282070>,  <39.026730, 30.844622, 45.337639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.883698, 30.660086, 45.282070>,  <38.645309, 30.352526, 45.189457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883698, 30.660086, 45.282070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444269, 0.555910, -0.702559,
		-0.668912, 0.315841, 0.672905,
		0.595971, 0.768901, 0.231536,
		39.062489, 30.890757, 45.351532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191631, 30.986225, 45.292698>,  <38.645309, 30.352526, 45.189457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191631, 30.986225, 45.292698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571369, 31.081656, 45.210884>,  <38.799210, 31.138914, 45.161797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.571369, 31.081656, 45.210884>,  <38.191631, 30.986225, 45.292698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.571369, 31.081656, 45.210884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306889, 0.563823, -0.766761,
		-0.067609, 0.790687, 0.608476,
		0.949341, 0.238575, -0.204534,
		38.856171, 31.153229, 45.149525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.176727, 31.661472, 45.235157>,  <38.191631, 30.986225, 45.292698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.176727, 31.661472, 45.235157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515347, 31.576719, 45.039829>,  <38.718517, 31.525867, 44.922630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.515347, 31.576719, 45.039829>,  <38.176727, 31.661472, 45.235157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515347, 31.576719, 45.039829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211003, 0.708648, -0.673272,
		0.488701, 0.672997, 0.555199,
		0.846551, -0.211880, -0.488322,
		38.769310, 31.513155, 44.893333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288124, 32.270603, 44.816086>,  <38.176727, 31.661472, 45.235157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288124, 32.270603, 44.816086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510895, 31.995966, 44.629143>,  <38.644558, 31.831182, 44.516979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.510895, 31.995966, 44.629143>,  <38.288124, 32.270603, 44.816086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510895, 31.995966, 44.629143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082576, 0.605681, -0.791411,
		0.826449, 0.402162, 0.394014,
		0.556922, -0.686598, -0.467356,
		38.677971, 31.789988, 44.488937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043987, 32.542690, 44.697971>,  <38.288124, 32.270603, 44.816086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043987, 32.542690, 44.697971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917782, 32.270462, 44.433464>,  <38.842060, 32.107124, 44.274757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917782, 32.270462, 44.433464>,  <39.043987, 32.542690, 44.697971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917782, 32.270462, 44.433464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314616, 0.582422, -0.749533,
		0.895249, -0.444531, 0.030358,
		-0.315509, -0.680570, -0.661270,
		38.823128, 32.066292, 44.235085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526527, 32.671360, 44.054569>,  <39.043987, 32.542690, 44.697971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526527, 32.671360, 44.054569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218536, 32.466503, 43.902336>,  <39.033741, 32.343590, 43.810997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.218536, 32.466503, 43.902336>,  <39.526527, 32.671360, 44.054569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218536, 32.466503, 43.902336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129997, 0.458036, -0.879377,
		0.624687, -0.726576, -0.286101,
		-0.769978, -0.512143, -0.380582,
		38.987541, 32.312859, 43.788162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.688313, 32.535683, 43.374649>,  <39.526527, 32.671360, 44.054569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.688313, 32.535683, 43.374649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297192, 32.458889, 43.341061>,  <39.062519, 32.412815, 43.320908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297192, 32.458889, 43.341061>,  <39.688313, 32.535683, 43.374649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297192, 32.458889, 43.341061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027598, 0.279245, -0.959823,
		0.207713, -0.940833, -0.267748,
		-0.977800, -0.191979, -0.083968,
		39.003853, 32.401295, 43.315868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.612434, 32.322937, 42.633709>,  <39.688313, 32.535683, 43.374649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.612434, 32.322937, 42.633709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237244, 32.414352, 42.737995>,  <39.012131, 32.469200, 42.800568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.237244, 32.414352, 42.737995>,  <39.612434, 32.322937, 42.633709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.237244, 32.414352, 42.737995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121634, 0.487271, -0.864738,
		-0.324665, -0.842815, -0.429250,
		-0.937975, 0.228539, 0.260715,
		38.955853, 32.482914, 42.816208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155628, 32.159515, 42.055546>,  <39.612434, 32.322937, 42.633709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155628, 32.159515, 42.055546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958614, 32.426971, 42.278374>,  <38.840405, 32.587444, 42.412071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958614, 32.426971, 42.278374>,  <39.155628, 32.159515, 42.055546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958614, 32.426971, 42.278374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318505, 0.457201, -0.830374,
		-0.809914, -0.586422, -0.012225,
		-0.492539, 0.668638, 0.557072,
		38.810852, 32.627563, 42.445496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514835, 32.271496, 41.697258>,  <39.155628, 32.159515, 42.055546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514835, 32.271496, 41.697258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564098, 32.596027, 41.925846>,  <38.593655, 32.790745, 42.063000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.564098, 32.596027, 41.925846>,  <38.514835, 32.271496, 41.697258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.564098, 32.596027, 41.925846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003532, 0.575496, -0.817797,
		-0.992381, 0.102735, 0.068010,
		0.123156, 0.811326, 0.571474,
		38.601044, 32.839424, 42.097290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090233, 32.752373, 41.390465>,  <38.514835, 32.271496, 41.697258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090233, 32.752373, 41.390465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337784, 32.964062, 41.622643>,  <38.486317, 33.091076, 41.761948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337784, 32.964062, 41.622643>,  <38.090233, 32.752373, 41.390465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337784, 32.964062, 41.622643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056910, 0.706806, -0.705114,
		-0.783422, 0.469413, 0.407310,
		0.618879, 0.529222, 0.580442,
		38.523449, 33.122829, 41.796776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793781, 33.285488, 41.470074>,  <38.090233, 32.752373, 41.390465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793781, 33.285488, 41.470074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176243, 33.376686, 41.543594>,  <38.405720, 33.431404, 41.587708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.176243, 33.376686, 41.543594>,  <37.793781, 33.285488, 41.470074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176243, 33.376686, 41.543594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036474, 0.715431, -0.697731,
		-0.290576, 0.660436, 0.692380,
		0.956157, 0.227998, 0.183798,
		38.463089, 33.445084, 41.598732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805340, 33.965614, 41.432899>,  <37.793781, 33.285488, 41.470074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805340, 33.965614, 41.432899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195225, 33.884415, 41.395535>,  <38.429157, 33.835693, 41.373116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.195225, 33.884415, 41.395535>,  <37.805340, 33.965614, 41.432899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195225, 33.884415, 41.395535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093029, 0.748694, -0.656355,
		0.203176, 0.631068, 0.748647,
		0.974713, -0.203001, -0.093409,
		38.487640, 33.823513, 41.367512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139885, 34.575066, 41.485107>,  <37.805340, 33.965614, 41.432899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139885, 34.575066, 41.485107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436321, 34.362698, 41.320713>,  <38.614182, 34.235275, 41.222076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.436321, 34.362698, 41.320713>,  <38.139885, 34.575066, 41.485107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436321, 34.362698, 41.320713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197946, 0.757694, -0.621866,
		0.641561, 0.379507, 0.666614,
		0.741092, -0.530919, -0.410984,
		38.658649, 34.203423, 41.197418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.897686, 34.957657, 41.511845>,  <38.139885, 34.575066, 41.485107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.897686, 34.957657, 41.511845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899998, 34.714409, 41.194317>,  <38.901386, 34.568459, 41.003799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.899998, 34.714409, 41.194317>,  <38.897686, 34.957657, 41.511845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.899998, 34.714409, 41.194317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218105, 0.775489, -0.592492,
		0.975908, -0.169710, 0.137120,
		0.005783, -0.608124, -0.793821,
		38.901733, 34.531971, 40.956169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.464905, 35.185188, 40.990269>,  <38.897686, 34.957657, 41.511845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.464905, 35.185188, 40.990269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246136, 34.950775, 40.751125>,  <39.114876, 34.810127, 40.607639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.246136, 34.950775, 40.751125>,  <39.464905, 35.185188, 40.990269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246136, 34.950775, 40.751125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075706, 0.676588, -0.732460,
		0.833755, -0.445859, -0.325674,
		-0.546920, -0.586036, -0.597863,
		39.082058, 34.774963, 40.571766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845524, 35.042271, 40.397934>,  <39.464905, 35.185188, 40.990269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845524, 35.042271, 40.397934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465584, 35.022942, 40.274349>,  <39.237621, 35.011345, 40.200199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465584, 35.022942, 40.274349>,  <39.845524, 35.042271, 40.397934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465584, 35.022942, 40.274349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191373, 0.691553, -0.696513,
		0.247319, -0.720708, -0.647622,
		-0.949847, -0.048323, -0.308958,
		39.180630, 35.008446, 40.181664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862499, 35.101250, 39.665344>,  <39.845524, 35.042271, 40.397934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862499, 35.101250, 39.665344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474678, 35.161621, 39.742489>,  <39.241985, 35.197842, 39.788776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.474678, 35.161621, 39.742489>,  <39.862499, 35.101250, 39.665344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474678, 35.161621, 39.742489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037160, 0.687748, -0.724998,
		-0.242065, -0.710087, -0.661197,
		-0.969548, 0.150926, 0.192867,
		39.183815, 35.206898, 39.800350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576183, 35.202641, 38.942474>,  <39.862499, 35.101250, 39.665344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576183, 35.202641, 38.942474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310173, 35.355221, 39.199295>,  <39.150566, 35.446770, 39.353390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.310173, 35.355221, 39.199295>,  <39.576183, 35.202641, 38.942474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.310173, 35.355221, 39.199295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190085, 0.744949, -0.639468,
		-0.722222, -0.547309, -0.422904,
		-0.665028, 0.381450, 0.642054,
		39.110664, 35.469654, 39.391911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830662, 35.417625, 38.544724>,  <39.576183, 35.202641, 38.942474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830662, 35.417625, 38.544724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901684, 35.641148, 38.868752>,  <38.944298, 35.775261, 39.063168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.901684, 35.641148, 38.868752>,  <38.830662, 35.417625, 38.544724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.901684, 35.641148, 38.868752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086619, 0.828825, -0.552762,
		-0.980291, 0.027978, 0.195565,
		0.177555, 0.558807, 0.810067,
		38.954948, 35.808788, 39.111771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.159573, 34.839367, 38.068783>,  <38.830662, 35.417625, 38.544724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.159573, 34.839367, 38.068783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031418, 34.803051, 37.691612>,  <38.954525, 34.781261, 37.465309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.031418, 34.803051, 37.691612>,  <39.159573, 34.839367, 38.068783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031418, 34.803051, 37.691612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637353, 0.757061, 0.143667,
		0.700809, 0.647005, -0.300418,
		-0.320388, -0.090789, -0.942926,
		38.935303, 34.775814, 37.408733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.216988, 35.426781, 37.688816>,  <39.159573, 34.839367, 38.068783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.216988, 35.426781, 37.688816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903336, 35.232445, 37.534367>,  <38.715145, 35.115841, 37.441696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.903336, 35.232445, 37.534367>,  <39.216988, 35.426781, 37.688816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903336, 35.232445, 37.534367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571371, 0.808027, 0.143625,
		0.242220, 0.333241, -0.911197,
		-0.784133, -0.485843, -0.386124,
		38.668095, 35.086693, 37.418530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.660149, 35.998127, 37.739128>,  <39.216988, 35.426781, 37.688816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.660149, 35.998127, 37.739128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661648, 35.931858, 38.133598>,  <39.662548, 35.892097, 38.370281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661648, 35.931858, 38.133598>,  <39.660149, 35.998127, 37.739128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661648, 35.931858, 38.133598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.999993, 0.000312, -0.003746,
		0.000312, 0.986181, 0.165669,
		0.003746, -0.165669, 0.986174,
		39.662773, 35.882156, 38.429451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.332108, 35.629730, 37.382782>,  <39.660149, 35.998127, 37.739128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.332108, 35.629730, 37.382782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068954, 35.328648, 37.392784>,  <39.911064, 35.147999, 37.398785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.068954, 35.328648, 37.392784>,  <40.332108, 35.629730, 37.382782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068954, 35.328648, 37.392784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705157, -0.627300, -0.330528,
		0.264476, -0.199816, 0.943465,
		-0.657880, -0.752708, 0.025004,
		39.871590, 35.102837, 37.400284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.550858, 35.063530, 37.901455>,  <40.332108, 35.629730, 37.382782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.550858, 35.063530, 37.901455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335968, 34.926994, 37.592941>,  <40.207035, 34.845074, 37.407833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.335968, 34.926994, 37.592941>,  <40.550858, 35.063530, 37.901455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.335968, 34.926994, 37.592941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705435, -0.683098, -0.189046,
		-0.462331, -0.645649, 0.607772,
		-0.537226, -0.341342, -0.771281,
		40.174801, 34.824593, 37.361557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.382603, 34.302006, 37.902287>,  <40.550858, 35.063530, 37.901455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.382603, 34.302006, 37.902287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442417, 34.437946, 37.530880>,  <40.478306, 34.519512, 37.308037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.442417, 34.437946, 37.530880>,  <40.382603, 34.302006, 37.902287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.442417, 34.437946, 37.530880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674083, -0.722055, -0.155723,
		-0.723361, -0.602610, -0.337060,
		0.149536, 0.339850, -0.928515,
		40.487278, 34.539902, 37.252327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544506, 33.827690, 37.512497>,  <40.382603, 34.302006, 37.902287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544506, 33.827690, 37.512497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727306, 34.090546, 37.272724>,  <40.836987, 34.248260, 37.128860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.727306, 34.090546, 37.272724>,  <40.544506, 33.827690, 37.512497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727306, 34.090546, 37.272724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751129, -0.646073, -0.135623,
		-0.476400, -0.388271, -0.788853,
		0.456998, 0.657141, -0.599431,
		40.864407, 34.287689, 37.092896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265137, 33.923458, 37.277039>,  <40.544506, 33.827690, 37.512497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265137, 33.923458, 37.277039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589046, 33.742500, 37.127586>,  <41.783394, 33.633926, 37.037914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.589046, 33.742500, 37.127586>,  <41.265137, 33.923458, 37.277039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589046, 33.742500, 37.127586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281824, 0.258630, -0.923951,
		0.514620, 0.853495, 0.081938,
		0.809779, -0.452391, -0.373631,
		41.831982, 33.606785, 37.015495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762074, 34.472847, 37.045826>,  <41.265137, 33.923458, 37.277039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762074, 34.472847, 37.045826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816738, 34.132568, 36.842793>,  <41.849537, 33.928402, 36.720970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816738, 34.132568, 36.842793>,  <41.762074, 34.472847, 37.045826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816738, 34.132568, 36.842793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182839, 0.481931, -0.856921,
		0.973598, 0.209917, -0.089677,
		0.136664, -0.850692, -0.507588,
		41.857738, 33.877361, 36.690517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.144489, 34.590446, 36.459953>,  <41.762074, 34.472847, 37.045826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.144489, 34.590446, 36.459953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998348, 34.238438, 36.338577>,  <41.910664, 34.027233, 36.265751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.998348, 34.238438, 36.338577>,  <42.144489, 34.590446, 36.459953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998348, 34.238438, 36.338577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069707, 0.350920, -0.933807,
		0.928255, -0.320018, -0.189553,
		-0.365353, -0.880025, -0.303436,
		41.888741, 33.974430, 36.247547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.382397, 34.495579, 35.712429>,  <42.144489, 34.590446, 36.459953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.382397, 34.495579, 35.712429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081093, 34.238781, 35.769615>,  <41.900311, 34.084702, 35.803925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.081093, 34.238781, 35.769615>,  <42.382397, 34.495579, 35.712429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.081093, 34.238781, 35.769615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305629, 0.149190, -0.940390,
		0.582397, -0.752054, -0.308592,
		-0.753262, -0.641995, 0.142962,
		41.855114, 34.046185, 35.812504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394131, 34.068764, 35.202526>,  <42.382397, 34.495579, 35.712429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394131, 34.068764, 35.202526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015842, 34.043205, 35.329975>,  <41.788868, 34.027870, 35.406445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015842, 34.043205, 35.329975>,  <42.394131, 34.068764, 35.202526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015842, 34.043205, 35.329975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321985, 0.051667, -0.945334,
		0.043976, -0.996616, -0.069448,
		-0.945723, -0.063934, 0.318624,
		41.732124, 34.024036, 35.425564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.011719, 33.637890, 34.716503>,  <42.394131, 34.068764, 35.202526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.011719, 33.637890, 34.716503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689621, 33.795834, 34.893440>,  <41.496361, 33.890598, 34.999603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.689621, 33.795834, 34.893440>,  <42.011719, 33.637890, 34.716503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.689621, 33.795834, 34.893440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418528, 0.149948, -0.895740,
		-0.420021, -0.906422, 0.044516,
		-0.805243, 0.394860, 0.442345,
		41.448048, 33.914291, 35.026142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.499542, 33.306778, 34.412548>,  <42.011719, 33.637890, 34.716503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.499542, 33.306778, 34.412548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346275, 33.638229, 34.575790>,  <41.254314, 33.837101, 34.673737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.346275, 33.638229, 34.575790>,  <41.499542, 33.306778, 34.412548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.346275, 33.638229, 34.575790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500827, 0.184864, -0.845576,
		-0.776116, -0.528387, 0.344167,
		-0.383167, 0.828633, 0.408106,
		41.231323, 33.886818, 34.698223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852768, 33.244980, 34.219498>,  <41.499542, 33.306778, 34.412548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852768, 33.244980, 34.219498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901299, 33.631561, 34.310051>,  <40.930416, 33.863510, 34.364384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901299, 33.631561, 34.310051>,  <40.852768, 33.244980, 34.219498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901299, 33.631561, 34.310051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656657, 0.249176, -0.711837,
		-0.744366, -0.062295, 0.664859,
		0.121323, 0.966452, 0.226385,
		40.937695, 33.921497, 34.377968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196743, 33.496323, 34.329384>,  <40.852768, 33.244980, 34.219498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.196743, 33.496323, 34.329384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431469, 33.805218, 34.231979>,  <40.572304, 33.990555, 34.173534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431469, 33.805218, 34.231979>,  <40.196743, 33.496323, 34.329384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431469, 33.805218, 34.231979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702177, 0.335556, -0.627972,
		-0.403230, 0.539494, 0.739156,
		0.586816, 0.772236, -0.243514,
		40.607513, 34.036888, 34.158924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778240, 33.974403, 34.286171>,  <40.196743, 33.496323, 34.329384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778240, 33.974403, 34.286171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087818, 34.101696, 34.067177>,  <40.273563, 34.178074, 33.935780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087818, 34.101696, 34.067177>,  <39.778240, 33.974403, 34.286171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087818, 34.101696, 34.067177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627781, 0.272177, -0.729254,
		-0.083062, 0.908100, 0.410431,
		0.773946, 0.318234, -0.547481,
		40.320004, 34.197166, 33.902931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519806, 34.700825, 33.988697>,  <39.778240, 33.974403, 34.286171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519806, 34.700825, 33.988697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835228, 34.563335, 33.784721>,  <40.024479, 34.480843, 33.662334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835228, 34.563335, 33.784721>,  <39.519806, 34.700825, 33.988697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835228, 34.563335, 33.784721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416131, 0.312297, -0.853994,
		0.452790, 0.885621, 0.103229,
		0.788553, -0.343723, -0.509939,
		40.071793, 34.460220, 33.631741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518028, 35.087585, 33.428150>,  <39.519806, 34.700825, 33.988697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518028, 35.087585, 33.428150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782696, 34.815228, 33.302559>,  <39.941494, 34.651814, 33.227203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782696, 34.815228, 33.302559>,  <39.518028, 35.087585, 33.428150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782696, 34.815228, 33.302559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246458, 0.197982, -0.948716,
		0.708136, 0.705116, -0.036814,
		0.661666, -0.680892, -0.313980,
		39.981197, 34.610958, 33.208366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924091, 35.407578, 33.022987>,  <39.518028, 35.087585, 33.428150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924091, 35.407578, 33.022987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934467, 35.022072, 32.916794>,  <39.940693, 34.790768, 32.853077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934467, 35.022072, 32.916794>,  <39.924091, 35.407578, 33.022987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934467, 35.022072, 32.916794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115259, 0.260919, -0.958455,
		0.992997, 0.055466, -0.104314,
		0.025944, -0.963766, -0.265485,
		39.942249, 34.732941, 32.837147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300549, 35.456635, 32.412308>,  <39.924091, 35.407578, 33.022987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300549, 35.456635, 32.412308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171898, 35.078667, 32.388039>,  <40.094707, 34.851887, 32.373478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.171898, 35.078667, 32.388039>,  <40.300549, 35.456635, 32.412308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.171898, 35.078667, 32.388039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001931, 0.063425, -0.997985,
		0.946864, -0.321098, -0.018575,
		-0.321629, -0.944920, -0.060675,
		40.075409, 34.795189, 32.369835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645351, 35.077183, 31.786894>,  <40.300549, 35.456635, 32.412308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645351, 35.077183, 31.786894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311905, 34.878029, 31.882549>,  <40.111835, 34.758537, 31.939943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.311905, 34.878029, 31.882549>,  <40.645351, 35.077183, 31.786894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311905, 34.878029, 31.882549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311061, 0.065416, -0.948136,
		0.456421, -0.864772, -0.209405,
		-0.833620, -0.497887, 0.239140,
		40.061817, 34.728664, 31.954290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.471119, 34.929634, 31.148817>,  <40.645351, 35.077183, 31.786894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.471119, 34.929634, 31.148817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150116, 34.833561, 31.367283>,  <39.957516, 34.775917, 31.498362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.150116, 34.833561, 31.367283>,  <40.471119, 34.929634, 31.148817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150116, 34.833561, 31.367283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581175, 0.107596, -0.806634,
		0.134981, -0.964744, -0.225940,
		-0.802506, -0.240191, 0.546162,
		39.909363, 34.761505, 31.531132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.047733, 34.365475, 30.824493>,  <40.471119, 34.929634, 31.148817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.047733, 34.365475, 30.824493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825592, 34.613285, 31.046400>,  <39.692307, 34.761971, 31.179544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825592, 34.613285, 31.046400>,  <40.047733, 34.365475, 30.824493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825592, 34.613285, 31.046400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549882, 0.226886, -0.803836,
		-0.623870, -0.751468, 0.214667,
		-0.555352, 0.619531, 0.554766,
		39.658985, 34.799145, 31.212830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.300701, 34.151474, 30.647902>,  <40.047733, 34.365475, 30.824493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.300701, 34.151474, 30.647902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266369, 34.512764, 30.816097>,  <39.245770, 34.729538, 30.917015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266369, 34.512764, 30.816097>,  <39.300701, 34.151474, 30.647902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266369, 34.512764, 30.816097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593878, 0.292491, -0.749505,
		-0.799964, -0.314053, 0.511301,
		-0.085834, 0.903227, 0.420492,
		39.240620, 34.783733, 30.942245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.553631, 34.335529, 30.607071>,  <39.300701, 34.151474, 30.647902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.553631, 34.335529, 30.607071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760212, 34.670925, 30.676596>,  <38.884163, 34.872162, 30.718311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.760212, 34.670925, 30.676596>,  <38.553631, 34.335529, 30.607071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760212, 34.670925, 30.676596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523838, 0.469927, -0.710466,
		-0.677397, 0.275874, 0.681928,
		0.516456, 0.838488, 0.173814,
		38.915150, 34.922470, 30.728741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086845, 34.879696, 30.541176>,  <38.553631, 34.335529, 30.607071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086845, 34.879696, 30.541176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438965, 35.068012, 30.517729>,  <38.650234, 35.181004, 30.503660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438965, 35.068012, 30.517729>,  <38.086845, 34.879696, 30.541176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438965, 35.068012, 30.517729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320838, 0.499727, -0.804572,
		-0.349493, 0.727068, 0.590955,
		0.880295, 0.470792, -0.058620,
		38.703053, 35.209251, 30.500143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967464, 35.483509, 30.469267>,  <38.086845, 34.879696, 30.541176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967464, 35.483509, 30.469267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333313, 35.432987, 30.315636>,  <38.552822, 35.402676, 30.223457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333313, 35.432987, 30.315636>,  <37.967464, 35.483509, 30.469267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333313, 35.432987, 30.315636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293555, 0.445760, -0.845650,
		0.278016, 0.886197, 0.370624,
		0.914621, -0.126305, -0.384076,
		38.607700, 35.395096, 30.200413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.195541, 36.067173, 30.127834>,  <37.967464, 35.483509, 30.469267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.195541, 36.067173, 30.127834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385475, 35.765347, 29.946655>,  <38.499435, 35.584251, 29.837948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385475, 35.765347, 29.946655>,  <38.195541, 36.067173, 30.127834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385475, 35.765347, 29.946655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167015, 0.428056, -0.888186,
		0.864081, 0.497393, 0.077233,
		0.474837, -0.754565, -0.452947,
		38.527927, 35.538979, 29.810772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639763, 36.339718, 29.710606>,  <38.195541, 36.067173, 30.127834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639763, 36.339718, 29.710606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532967, 35.995968, 29.536161>,  <38.468891, 35.789719, 29.431496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.532967, 35.995968, 29.536161>,  <38.639763, 36.339718, 29.710606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.532967, 35.995968, 29.536161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168442, 0.487186, -0.856900,
		0.948866, -0.155321, -0.274827,
		-0.266986, -0.859375, -0.436111,
		38.452869, 35.738155, 29.405329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.848900, 36.916489, 29.278389>,  <38.639763, 36.339718, 29.710606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.848900, 36.916489, 29.278389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529995, 37.156761, 29.302250>,  <38.338654, 37.300922, 29.316566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529995, 37.156761, 29.302250>,  <38.848900, 36.916489, 29.278389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529995, 37.156761, 29.302250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453493, 0.530807, 0.715952,
		0.398391, 0.597856, -0.695596,
		-0.797263, 0.600676, 0.059655,
		38.290817, 37.336964, 29.320147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.107025, 37.615921, 29.412222>,  <38.848900, 36.916489, 29.278389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.107025, 37.615921, 29.412222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283031, 37.582993, 29.054539>,  <39.388638, 37.563236, 28.839930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.283031, 37.582993, 29.054539>,  <39.107025, 37.615921, 29.412222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283031, 37.582993, 29.054539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358968, -0.896642, 0.259182,
		-0.823119, -0.435036, -0.364990,
		0.440019, -0.082318, -0.894207,
		39.415035, 37.558296, 28.786276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.764153, 37.948502, 30.054502>,  <39.107025, 37.615921, 29.412222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.764153, 37.948502, 30.054502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466274, 38.115822, 29.846483>,  <38.287548, 38.216213, 29.721672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.466274, 38.115822, 29.846483>,  <38.764153, 37.948502, 30.054502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466274, 38.115822, 29.846483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112794, 0.689122, 0.715813,
		0.657803, 0.591722, -0.466005,
		-0.744697, 0.418301, -0.520049,
		38.242867, 38.241314, 29.690468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046215, 38.585678, 29.761549>,  <38.764153, 37.948502, 30.054502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046215, 38.585678, 29.761549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282734, 38.903267, 29.818083>,  <39.424644, 39.093822, 29.852003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.282734, 38.903267, 29.818083>,  <39.046215, 38.585678, 29.761549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.282734, 38.903267, 29.818083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386354, -0.432726, 0.814542,
		0.707885, -0.427029, -0.562624,
		0.591295, 0.793974, 0.141335,
		39.460121, 39.141460, 29.860483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440060, 38.262039, 30.107525>,  <39.046215, 38.585678, 29.761549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440060, 38.262039, 30.107525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563545, 38.635666, 30.179323>,  <39.637634, 38.859840, 30.222403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563545, 38.635666, 30.179323>,  <39.440060, 38.262039, 30.107525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563545, 38.635666, 30.179323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411516, -0.301299, 0.860159,
		0.857527, -0.191675, -0.477397,
		0.308710, 0.934066, 0.179495,
		39.656158, 38.915886, 30.233171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243660, 38.364273, 30.058510>,  <39.440060, 38.262039, 30.107525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243660, 38.364273, 30.058510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037216, 38.607651, 30.299652>,  <39.913349, 38.753677, 30.444338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.037216, 38.607651, 30.299652>,  <40.243660, 38.364273, 30.058510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.037216, 38.607651, 30.299652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518882, -0.337885, 0.785236,
		0.681464, 0.718076, -0.141324,
		-0.516108, 0.608441, 0.602853,
		39.882385, 38.790184, 30.480509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760006, 38.779491, 30.374777>,  <40.243660, 38.364273, 30.058510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760006, 38.779491, 30.374777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438625, 38.748806, 30.610937>,  <40.245796, 38.730392, 30.752634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.438625, 38.748806, 30.610937>,  <40.760006, 38.779491, 30.374777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438625, 38.748806, 30.610937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594740, -0.148819, 0.790024,
		0.027255, 0.985884, 0.165195,
		-0.803456, -0.076716, 0.590401,
		40.197590, 38.725792, 30.788057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716923, 39.401073, 30.921894>,  <40.760006, 38.779491, 30.374777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716923, 39.401073, 30.921894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555748, 39.059910, 31.054667>,  <40.459042, 38.855209, 31.134331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555748, 39.059910, 31.054667>,  <40.716923, 39.401073, 30.921894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555748, 39.059910, 31.054667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610582, 0.019657, 0.791709,
		-0.681783, 0.521684, 0.512852,
		-0.402941, -0.852913, 0.331932,
		40.434864, 38.804035, 31.154245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.834030, 39.521191, 31.562716>,  <40.716923, 39.401073, 30.921894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.834030, 39.521191, 31.562716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748959, 39.131233, 31.536312>,  <40.697914, 38.897259, 31.520470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.748959, 39.131233, 31.536312>,  <40.834030, 39.521191, 31.562716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.748959, 39.131233, 31.536312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673867, -0.195260, 0.712584,
		-0.707580, 0.107074, 0.698474,
		-0.212683, -0.974889, -0.066009,
		40.685154, 38.838768, 31.516510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.659550, 39.222965, 32.176193>,  <40.834030, 39.521191, 31.562716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.659550, 39.222965, 32.176193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734066, 38.881836, 31.981056>,  <40.778774, 38.677158, 31.863974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.734066, 38.881836, 31.981056>,  <40.659550, 39.222965, 32.176193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.734066, 38.881836, 31.981056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494570, -0.347637, 0.796586,
		-0.848938, -0.389668, 0.357019,
		0.186291, -0.852823, -0.487840,
		40.789955, 38.625988, 31.834703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.523956, 38.659302, 32.612751>,  <40.659550, 39.222965, 32.176193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.523956, 38.659302, 32.612751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766441, 38.487652, 32.344913>,  <40.911930, 38.384663, 32.184212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.766441, 38.487652, 32.344913>,  <40.523956, 38.659302, 32.612751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766441, 38.487652, 32.344913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528412, -0.411906, 0.742371,
		-0.594383, -0.803854, -0.022944,
		0.606209, -0.429129, -0.669596,
		40.948303, 38.358913, 32.144035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554161, 37.982353, 32.720234>,  <40.523956, 38.659302, 32.612751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554161, 37.982353, 32.720234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900986, 38.035774, 32.528248>,  <41.109081, 38.067825, 32.413055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900986, 38.035774, 32.528248>,  <40.554161, 37.982353, 32.720234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900986, 38.035774, 32.528248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450587, -0.621218, 0.641139,
		-0.212540, -0.772174, -0.598810,
		0.867063, 0.133548, -0.479965,
		41.161106, 38.075840, 32.384258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922253, 37.286152, 32.686806>,  <40.554161, 37.982353, 32.720234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922253, 37.286152, 32.686806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219242, 37.547230, 32.626499>,  <41.397434, 37.703876, 32.590317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.219242, 37.547230, 32.626499>,  <40.922253, 37.286152, 32.686806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.219242, 37.547230, 32.626499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492172, -0.378831, 0.783744,
		0.454429, -0.656109, -0.602507,
		0.742469, 0.652693, -0.150766,
		41.441982, 37.743038, 32.581268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.578175, 36.900551, 32.555973>,  <40.922253, 37.286152, 32.686806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.578175, 36.900551, 32.555973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705151, 37.263969, 32.664616>,  <41.781334, 37.482021, 32.729801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.705151, 37.263969, 32.664616>,  <41.578175, 36.900551, 32.555973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.705151, 37.263969, 32.664616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610203, -0.414954, 0.674882,
		0.725869, -0.048495, -0.686121,
		0.317437, 0.908549, 0.271610,
		41.800381, 37.536533, 32.746098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.384712, 36.913380, 32.503407>,  <41.578175, 36.900551, 32.555973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.384712, 36.913380, 32.503407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264679, 37.190525, 32.765671>,  <42.192657, 37.356812, 32.923031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264679, 37.190525, 32.765671>,  <42.384712, 36.913380, 32.503407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264679, 37.190525, 32.765671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612304, -0.387143, 0.689350,
		0.731460, 0.608325, -0.308069,
		-0.300082, 0.692864, 0.655660,
		42.174656, 37.398384, 32.962368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975941, 37.177402, 32.861755>,  <42.384712, 36.913380, 32.503407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975941, 37.177402, 32.861755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673851, 37.301926, 33.092484>,  <42.492596, 37.376640, 33.230923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.673851, 37.301926, 33.092484>,  <42.975941, 37.177402, 32.861755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.673851, 37.301926, 33.092484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528855, -0.230490, 0.816815,
		0.387232, 0.921934, 0.009436,
		-0.755224, 0.311306, 0.576823,
		42.447285, 37.395317, 33.265530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.280788, 37.413033, 33.437740>,  <42.975941, 37.177402, 32.861755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.280788, 37.413033, 33.437740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911076, 37.352558, 33.577938>,  <42.689247, 37.316273, 33.662056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911076, 37.352558, 33.577938>,  <43.280788, 37.413033, 33.437740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911076, 37.352558, 33.577938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380674, -0.432742, 0.817203,
		0.028128, 0.888751, 0.457527,
		-0.924281, -0.151183, 0.350497,
		42.633793, 37.307205, 33.683086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.408493, 37.500069, 34.110455>,  <43.280788, 37.413033, 33.437740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.408493, 37.500069, 34.110455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076149, 37.281017, 34.070908>,  <42.876743, 37.149586, 34.047180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076149, 37.281017, 34.070908>,  <43.408493, 37.500069, 34.110455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076149, 37.281017, 34.070908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242085, -0.515669, 0.821876,
		-0.501070, 0.658926, 0.561022,
		-0.830857, -0.547632, -0.098870,
		42.826893, 37.116726, 34.041248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179790, 37.372623, 34.857929>,  <43.408493, 37.500069, 34.110455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179790, 37.372623, 34.857929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984219, 37.103577, 34.635742>,  <42.866875, 36.942150, 34.502430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984219, 37.103577, 34.635742>,  <43.179790, 37.372623, 34.857929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984219, 37.103577, 34.635742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110854, -0.679510, 0.725244,
		-0.865253, 0.293014, 0.406791,
		-0.488925, -0.672614, -0.555466,
		42.837540, 36.901791, 34.469101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.835518, 37.030964, 35.301594>,  <43.179790, 37.372623, 34.857929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.835518, 37.030964, 35.301594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838200, 36.780342, 34.989853>,  <42.839809, 36.629971, 34.802807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838200, 36.780342, 34.989853>,  <42.835518, 37.030964, 35.301594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838200, 36.780342, 34.989853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154503, -0.769361, 0.619848,
		-0.987970, -0.124566, 0.091649,
		0.006701, -0.626551, -0.779352,
		42.840210, 36.592377, 34.756046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.609463, 36.491570, 35.605667>,  <42.835518, 37.030964, 35.301594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.609463, 36.491570, 35.605667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760895, 36.355965, 35.261166>,  <42.851753, 36.274601, 35.054466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760895, 36.355965, 35.261166>,  <42.609463, 36.491570, 35.605667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760895, 36.355965, 35.261166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282890, -0.843602, 0.456410,
		-0.881279, -0.416426, -0.223466,
		0.378577, -0.339008, -0.861251,
		42.874466, 36.254261, 35.002789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.322784, 35.771637, 35.464161>,  <42.609463, 36.491570, 35.605667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.322784, 35.771637, 35.464161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654732, 35.826527, 35.247833>,  <42.853901, 35.859459, 35.118034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654732, 35.826527, 35.247833>,  <42.322784, 35.771637, 35.464161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654732, 35.826527, 35.247833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426770, -0.780498, 0.456826,
		-0.359423, -0.609912, -0.706274,
		0.829869, 0.137223, -0.540821,
		42.903694, 35.867695, 35.085587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.560032, 35.141586, 35.394566>,  <42.322784, 35.771637, 35.464161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.560032, 35.141586, 35.394566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885605, 35.357140, 35.307743>,  <43.080948, 35.486473, 35.255650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885605, 35.357140, 35.307743>,  <42.560032, 35.141586, 35.394566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885605, 35.357140, 35.307743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575153, -0.694797, 0.431805,
		0.081885, -0.476301, -0.875461,
		0.813937, 0.538883, -0.217053,
		43.129787, 35.518803, 35.242626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118099, 34.696571, 35.017052>,  <42.560032, 35.141586, 35.394566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118099, 34.696571, 35.017052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319126, 34.997417, 35.187580>,  <43.439743, 35.177925, 35.289898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.319126, 34.997417, 35.187580>,  <43.118099, 34.696571, 35.017052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.319126, 34.997417, 35.187580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678306, -0.648776, 0.344950,
		0.536028, 0.115815, -0.836218,
		0.502568, 0.752115, 0.426320,
		43.469898, 35.223053, 35.315475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.724899, 34.517704, 34.777515>,  <43.118099, 34.696571, 35.017052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.724899, 34.517704, 34.777515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782249, 34.787930, 35.066807>,  <43.816662, 34.950066, 35.240383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.782249, 34.787930, 35.066807>,  <43.724899, 34.517704, 34.777515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.782249, 34.787930, 35.066807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694259, -0.589458, 0.412970,
		0.705300, 0.442897, -0.553529,
		0.143379, 0.675560, 0.723230,
		43.825264, 34.990597, 35.283775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410282, 34.537815, 34.908726>,  <43.724899, 34.517704, 34.777515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410282, 34.537815, 34.908726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248642, 34.689178, 35.241837>,  <44.151657, 34.779995, 35.441704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.248642, 34.689178, 35.241837>,  <44.410282, 34.537815, 34.908726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.248642, 34.689178, 35.241837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626507, -0.548849, 0.553402,
		0.666477, 0.745369, -0.015283,
		-0.404100, 0.378404, 0.832774,
		44.127411, 34.802700, 35.491669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002548, 34.702850, 35.320412>,  <44.410282, 34.537815, 34.908726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002548, 34.702850, 35.320412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690884, 34.648624, 35.565208>,  <44.503887, 34.616089, 35.712086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.690884, 34.648624, 35.565208>,  <45.002548, 34.702850, 35.320412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690884, 34.648624, 35.565208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591357, -0.482745, 0.645952,
		0.207866, 0.865204, 0.456304,
		-0.779159, -0.135567, 0.611991,
		44.457134, 34.607956, 35.748806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187077, 34.912945, 35.980370>,  <45.002548, 34.702850, 35.320412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187077, 34.912945, 35.980370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869072, 34.681641, 36.053661>,  <44.678268, 34.542858, 36.097637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.869072, 34.681641, 36.053661>,  <45.187077, 34.912945, 35.980370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.869072, 34.681641, 36.053661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511703, -0.477098, 0.714519,
		-0.325759, 0.661810, 0.675195,
		-0.795010, -0.578261, 0.183231,
		44.630569, 34.508163, 36.108631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.850403, 34.588722, 35.787884>,  <45.187077, 34.912945, 35.980370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.850403, 34.588722, 35.787884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182308, 34.663166, 35.998348>,  <46.381451, 34.707832, 36.124626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.182308, 34.663166, 35.998348>,  <45.850403, 34.588722, 35.787884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.182308, 34.663166, 35.998348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445033, 0.348287, -0.825010,
		-0.336795, 0.918728, 0.206175,
		0.829768, 0.186105, 0.526166,
		46.431240, 34.718998, 36.156197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.019344, 35.264297, 35.686794>,  <45.850403, 34.588722, 35.787884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.019344, 35.264297, 35.686794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316441, 35.004055, 35.750092>,  <46.494698, 34.847908, 35.788071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.316441, 35.004055, 35.750092>,  <46.019344, 35.264297, 35.686794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.316441, 35.004055, 35.750092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416210, 0.263480, -0.870257,
		0.524502, 0.712241, 0.466488,
		0.742743, -0.650608, 0.158246,
		46.539265, 34.808872, 35.797565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.741673, 35.600784, 35.750244>,  <46.019344, 35.264297, 35.686794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.741673, 35.600784, 35.750244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714622, 35.234833, 35.591034>,  <46.698391, 35.015263, 35.495510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.714622, 35.234833, 35.591034>,  <46.741673, 35.600784, 35.750244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.714622, 35.234833, 35.591034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422903, 0.335038, -0.841963,
		0.903648, -0.225266, 0.364248,
		-0.067629, -0.914880, -0.398022,
		46.694332, 34.960369, 35.471626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.452679, 35.827110, 35.666065>,  <46.741673, 35.600784, 35.750244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.452679, 35.827110, 35.666065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362907, 36.190956, 35.805908>,  <47.309044, 36.409264, 35.889812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.362907, 36.190956, 35.805908>,  <47.452679, 35.827110, 35.666065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.362907, 36.190956, 35.805908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926919, 0.309985, -0.211497,
		-0.300755, 0.276593, -0.912712,
		-0.224428, 0.909618, 0.349609,
		47.295578, 36.463840, 35.910789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.403324, 35.151501, 35.211716>,  <47.452679, 35.827110, 35.666065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.403324, 35.151501, 35.211716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483429, 34.771877, 35.114410>,  <47.531494, 34.544102, 35.056026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.483429, 34.771877, 35.114410>,  <47.403324, 35.151501, 35.211716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.483429, 34.771877, 35.114410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718294, -0.311083, 0.622319,
		-0.666294, 0.050107, -0.744004,
		0.200264, -0.949061, -0.243264,
		47.543507, 34.487160, 35.041431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.578838, 34.162872, 48.272671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181667, 34.116604, 48.261967>,  <36.943363, 34.088844, 48.255543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.181667, 34.116604, 48.261967>,  <37.578838, 34.162872, 48.272671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181667, 34.116604, 48.261967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060484, 0.686796, -0.724330,
		0.102161, -0.717588, -0.688934,
		-0.992928, -0.115668, -0.026761,
		36.883789, 34.081902, 48.253937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379986, 34.178120, 47.616352>,  <37.578838, 34.162872, 48.272671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379986, 34.178120, 47.616352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030247, 34.267590, 47.788624>,  <36.820404, 34.321270, 47.891987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.030247, 34.267590, 47.788624>,  <37.379986, 34.178120, 47.616352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030247, 34.267590, 47.788624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086935, 0.800904, -0.592449,
		-0.477448, -0.555448, -0.680824,
		-0.874349, 0.223676, 0.430678,
		36.767941, 34.334694, 47.917828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.899044, 34.154434, 47.027878>,  <37.379986, 34.178120, 47.616352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.899044, 34.154434, 47.027878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729290, 34.359371, 47.326515>,  <36.627438, 34.482334, 47.505699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.729290, 34.359371, 47.326515>,  <36.899044, 34.154434, 47.027878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729290, 34.359371, 47.326515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139177, 0.777818, -0.612885,
		-0.894723, -0.364006, -0.258785,
		-0.424381, 0.512346, 0.746593,
		36.601974, 34.513077, 47.550495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243462, 34.395187, 46.784142>,  <36.899044, 34.154434, 47.027878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243462, 34.395187, 46.784142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375809, 34.625294, 47.083366>,  <36.455215, 34.763355, 47.262901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.375809, 34.625294, 47.083366>,  <36.243462, 34.395187, 46.784142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.375809, 34.625294, 47.083366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226593, 0.817951, -0.528784,
		-0.916068, 0.005453, 0.400985,
		0.330869, 0.575263, 0.748063,
		36.475071, 34.797874, 47.307785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767784, 34.884579, 46.732143>,  <36.243462, 34.395187, 46.784142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767784, 34.884579, 46.732143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075912, 35.054867, 46.922035>,  <36.260788, 35.157040, 47.035969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.075912, 35.054867, 46.922035>,  <35.767784, 34.884579, 46.732143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.075912, 35.054867, 46.922035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058039, 0.788208, -0.612666,
		-0.635011, 0.444396, 0.631881,
		0.770320, 0.425723, 0.474728,
		36.307007, 35.182583, 47.064453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581230, 35.494480, 46.973587>,  <35.767784, 34.884579, 46.732143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581230, 35.494480, 46.973587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977802, 35.541920, 46.951675>,  <36.215744, 35.570385, 46.938530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.977802, 35.541920, 46.951675>,  <35.581230, 35.494480, 46.973587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977802, 35.541920, 46.951675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129102, 0.825348, -0.549667,
		-0.019980, 0.552028, 0.833586,
		0.991430, 0.118600, -0.054778,
		36.275230, 35.577499, 46.935242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588417, 36.233337, 46.930004>,  <35.581230, 35.494480, 46.973587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588417, 36.233337, 46.930004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961796, 36.119625, 46.842487>,  <36.185822, 36.051399, 46.789978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961796, 36.119625, 46.842487>,  <35.588417, 36.233337, 46.930004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961796, 36.119625, 46.842487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076237, 0.753184, -0.653377,
		0.350532, 0.593210, 0.724727,
		0.933443, -0.284281, -0.218790,
		36.241829, 36.034340, 46.776852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011517, 36.912163, 46.848701>,  <35.588417, 36.233337, 46.930004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011517, 36.912163, 46.848701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191719, 36.610489, 46.657600>,  <36.299843, 36.429485, 46.542942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.191719, 36.610489, 46.657600>,  <36.011517, 36.912163, 46.848701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191719, 36.610489, 46.657600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048057, 0.554839, -0.830568,
		0.891477, 0.351221, 0.286205,
		0.450510, -0.754186, -0.477748,
		36.326874, 36.384232, 46.514275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.432816, 37.305401, 46.321033>,  <36.011517, 36.912163, 46.848701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.432816, 37.305401, 46.321033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412468, 36.925770, 46.196671>,  <36.400261, 36.697990, 46.122051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.412468, 36.925770, 46.196671>,  <36.432816, 37.305401, 46.321033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.412468, 36.925770, 46.196671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227970, 0.314129, -0.921603,
		0.972339, 0.023998, -0.232340,
		-0.050868, -0.949077, -0.310911,
		36.397209, 36.641048, 46.103397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917168, 37.203526, 45.759083>,  <36.432816, 37.305401, 46.321033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917168, 37.203526, 45.759083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656578, 36.904186, 45.709194>,  <36.500225, 36.724583, 45.679260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.656578, 36.904186, 45.709194>,  <36.917168, 37.203526, 45.759083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.656578, 36.904186, 45.709194> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087343, 0.237287, -0.967505,
		0.753624, -0.619413, -0.219950,
		-0.651477, -0.748347, -0.124724,
		36.461136, 36.679684, 45.671776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226921, 36.787300, 45.323372>,  <36.917168, 37.203526, 45.759083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226921, 36.787300, 45.323372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834126, 36.716015, 45.298279>,  <36.598450, 36.673244, 45.283222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.834126, 36.716015, 45.298279>,  <37.226921, 36.787300, 45.323372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834126, 36.716015, 45.298279> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001678, 0.323801, -0.946124,
		0.188927, -0.929189, -0.317670,
		-0.981989, -0.178215, -0.062734,
		36.539528, 36.662552, 45.279457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140755, 36.525604, 44.690434>,  <37.226921, 36.787300, 45.323372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140755, 36.525604, 44.690434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765583, 36.623608, 44.788631>,  <36.540482, 36.682411, 44.847549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.765583, 36.623608, 44.788631>,  <37.140755, 36.525604, 44.690434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765583, 36.623608, 44.788631> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193569, 0.217545, -0.956664,
		-0.287796, -0.944799, -0.156615,
		-0.937926, 0.245008, 0.245493,
		36.484207, 36.697109, 44.862278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756321, 36.185066, 44.227932>,  <37.140755, 36.525604, 44.690434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756321, 36.185066, 44.227932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.547131, 36.498466, 44.362167>,  <36.421616, 36.686508, 44.442707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.547131, 36.498466, 44.362167>,  <36.756321, 36.185066, 44.227932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547131, 36.498466, 44.362167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075419, 0.349636, -0.933845,
		-0.849003, -0.513690, -0.123761,
		-0.522978, 0.783503, 0.335584,
		36.390236, 36.733517, 44.462841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.199444, 36.247921, 43.731236>,  <36.756321, 36.185066, 44.227932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.199444, 36.247921, 43.731236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.236042, 36.605305, 43.907127>,  <36.257999, 36.819733, 44.012665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.236042, 36.605305, 43.907127>,  <36.199444, 36.247921, 43.731236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236042, 36.605305, 43.907127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008666, 0.442283, -0.896833,
		-0.995768, 0.078245, 0.048209,
		0.091495, 0.893456, 0.439733,
		36.263489, 36.873341, 44.039047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690315, 36.757103, 43.254864>,  <36.199444, 36.247921, 43.731236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690315, 36.757103, 43.254864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912128, 36.992756, 43.489952>,  <36.045216, 37.134148, 43.631004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912128, 36.992756, 43.489952>,  <35.690315, 36.757103, 43.254864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912128, 36.992756, 43.489952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093820, 0.657495, -0.747595,
		-0.826854, 0.469708, 0.309333,
		0.554536, 0.589130, 0.587720,
		36.078487, 37.169495, 43.666267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331093, 37.334240, 43.125252>,  <35.690315, 36.757103, 43.254864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331093, 37.334240, 43.125252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694077, 37.441654, 43.254505>,  <35.911865, 37.506104, 43.332058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.694077, 37.441654, 43.254505>,  <35.331093, 37.334240, 43.125252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694077, 37.441654, 43.254505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044799, 0.702866, -0.709910,
		-0.417753, 0.658688, 0.625789,
		0.907455, 0.268533, 0.323133,
		35.966312, 37.522213, 43.351444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.383213, 38.032703, 43.238140>,  <35.331093, 37.334240, 43.125252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.383213, 38.032703, 43.238140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761921, 37.914047, 43.188145>,  <35.989147, 37.842854, 43.158146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761921, 37.914047, 43.188145>,  <35.383213, 38.032703, 43.238140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761921, 37.914047, 43.188145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181079, 0.811838, -0.555094,
		0.266136, 0.502915, 0.822343,
		0.946774, -0.296640, -0.124992,
		36.045952, 37.825054, 43.150646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863289, 38.610260, 43.344574>,  <35.383213, 38.032703, 43.238140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863289, 38.610260, 43.344574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.067390, 38.354763, 43.114220>,  <36.189850, 38.201466, 42.976006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.067390, 38.354763, 43.114220>,  <35.863289, 38.610260, 43.344574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067390, 38.354763, 43.114220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253288, 0.751531, -0.609136,
		0.821879, 0.164949, 0.545258,
		0.510254, -0.638744, -0.575888,
		36.220467, 38.163139, 42.941452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371990, 39.019028, 43.087502>,  <35.863289, 38.610260, 43.344574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371990, 39.019028, 43.087502> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425343, 38.691429, 42.864269>,  <36.457355, 38.494869, 42.730331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.425343, 38.691429, 42.864269>,  <36.371990, 39.019028, 43.087502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425343, 38.691429, 42.864269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273664, 0.571653, -0.773512,
		0.952532, -0.049550, 0.300381,
		0.133386, -0.818998, -0.558077,
		36.465359, 38.445728, 42.696846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.072437, 39.029507, 42.883373>,  <36.371990, 39.019028, 43.087502>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.072437, 39.029507, 42.883373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830696, 38.823860, 42.639919>,  <36.685650, 38.700474, 42.493847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.830696, 38.823860, 42.639919>,  <37.072437, 39.029507, 42.883373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.830696, 38.823860, 42.639919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179029, 0.656764, -0.732537,
		0.776342, -0.551675, -0.304875,
		-0.604353, -0.514117, -0.608639,
		36.649391, 38.669624, 42.457329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467686, 38.869461, 42.293720>,  <37.072437, 39.029507, 42.883373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467686, 38.869461, 42.293720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084106, 38.871952, 42.180321>,  <36.853958, 38.873447, 42.112282>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.084106, 38.871952, 42.180321>,  <37.467686, 38.869461, 42.293720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084106, 38.871952, 42.180321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218855, 0.651972, -0.725972,
		0.180313, -0.758218, -0.626572,
		-0.958952, 0.006226, -0.283499,
		36.796421, 38.873821, 42.095272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689205, 38.452614, 41.733276>,  <37.467686, 38.869461, 42.293720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689205, 38.452614, 41.733276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875237, 38.187679, 41.498325>,  <37.986855, 38.028717, 41.357357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.875237, 38.187679, 41.498325>,  <37.689205, 38.452614, 41.733276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875237, 38.187679, 41.498325> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531259, -0.321929, 0.783662,
		-0.708141, -0.676515, 0.202148,
		0.465082, -0.662336, -0.587375,
		38.014763, 37.988979, 41.322113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414967, 37.736763, 41.820934>,  <37.689205, 38.452614, 41.733276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414967, 37.736763, 41.820934> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787991, 37.701424, 41.680916>,  <38.011803, 37.680222, 41.596905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.787991, 37.701424, 41.680916>,  <37.414967, 37.736763, 41.820934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787991, 37.701424, 41.680916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268425, -0.478723, 0.835926,
		-0.241428, -0.873510, -0.422722,
		0.932556, -0.088346, -0.350049,
		38.067757, 37.674919, 41.575901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612156, 37.083946, 42.008179>,  <37.414967, 37.736763, 41.820934>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612156, 37.083946, 42.008179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.949856, 37.295502, 41.973518>,  <38.152477, 37.422436, 41.952721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.949856, 37.295502, 41.973518>,  <37.612156, 37.083946, 42.008179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949856, 37.295502, 41.973518> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373305, -0.464312, 0.803155,
		0.384549, -0.710414, -0.589435,
		0.844254, 0.528892, -0.086650,
		38.203133, 37.454170, 41.947525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229912, 36.585838, 42.147873>,  <37.612156, 37.083946, 42.008179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229912, 36.585838, 42.147873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383621, 36.953262, 42.184948>,  <38.475845, 37.173717, 42.207195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.383621, 36.953262, 42.184948>,  <38.229912, 36.585838, 42.147873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383621, 36.953262, 42.184948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486140, -0.286675, 0.825522,
		0.784860, -0.272162, -0.556707,
		0.384270, 0.918556, 0.092691,
		38.498901, 37.228828, 42.212757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957836, 36.443413, 42.345661>,  <38.229912, 36.585838, 42.147873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957836, 36.443413, 42.345661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892239, 36.826443, 42.440445>,  <38.852882, 37.056263, 42.497314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.892239, 36.826443, 42.440445>,  <38.957836, 36.443413, 42.345661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892239, 36.826443, 42.440445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524995, -0.118644, 0.842795,
		0.835157, 0.262613, -0.483267,
		-0.163992, 0.957579, 0.236957,
		38.843040, 37.113716, 42.511532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681221, 36.833374, 42.591412>,  <38.957836, 36.443413, 42.345661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681221, 36.833374, 42.591412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384220, 37.070812, 42.715569>,  <39.206020, 37.213276, 42.790062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.384220, 37.070812, 42.715569>,  <39.681221, 36.833374, 42.591412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384220, 37.070812, 42.715569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457621, 0.111127, 0.882176,
		0.489160, 0.797056, -0.354153,
		-0.742499, 0.593593, 0.310391,
		39.161469, 37.248890, 42.808685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916897, 37.204296, 43.117458>,  <39.681221, 36.833374, 42.591412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916897, 37.204296, 43.117458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540581, 37.314629, 43.196281>,  <39.314793, 37.380829, 43.243576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540581, 37.314629, 43.196281>,  <39.916897, 37.204296, 43.117458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540581, 37.314629, 43.196281> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205610, 0.002119, 0.978632,
		0.269519, 0.961204, -0.058707,
		-0.940789, 0.275831, 0.197062,
		39.258343, 37.397377, 43.255402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.898960, 37.787636, 43.513126>,  <39.916897, 37.204296, 43.117458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.898960, 37.787636, 43.513126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561337, 37.580833, 43.570080>,  <39.358765, 37.456753, 43.604252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.561337, 37.580833, 43.570080>,  <39.898960, 37.787636, 43.513126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.561337, 37.580833, 43.570080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337168, -0.305172, 0.890611,
		-0.417001, 0.799733, 0.431901,
		-0.844054, -0.517009, 0.142388,
		39.308121, 37.425732, 43.612797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551098, 37.993515, 44.187881>,  <39.898960, 37.787636, 43.513126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551098, 37.993515, 44.187881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.391125, 37.632996, 44.121296>,  <39.295139, 37.416683, 44.081345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.391125, 37.632996, 44.121296>,  <39.551098, 37.993515, 44.187881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391125, 37.632996, 44.121296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368670, -0.324476, 0.871090,
		-0.839128, 0.287005, 0.462051,
		-0.399932, -0.901301, -0.166467,
		39.271145, 37.362606, 44.071358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953255, 37.832001, 44.775890>,  <39.551098, 37.993515, 44.187881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953255, 37.832001, 44.775890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044365, 37.480045, 44.609081>,  <39.099030, 37.268871, 44.508995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.044365, 37.480045, 44.609081>,  <38.953255, 37.832001, 44.775890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.044365, 37.480045, 44.609081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092376, -0.406825, 0.908823,
		-0.969322, -0.245531, -0.011384,
		0.227775, -0.879891, -0.417026,
		39.112698, 37.216080, 44.483974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498760, 37.417557, 45.157013>,  <38.953255, 37.832001, 44.775890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498760, 37.417557, 45.157013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773418, 37.179695, 44.989727>,  <38.938213, 37.036980, 44.889355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.773418, 37.179695, 44.989727>,  <38.498760, 37.417557, 45.157013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773418, 37.179695, 44.989727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185936, -0.412486, 0.891786,
		-0.702812, -0.690103, -0.172665,
		0.686646, -0.594654, -0.418216,
		38.979412, 37.001301, 44.864262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267563, 36.751003, 45.310009>,  <38.498760, 37.417557, 45.157013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267563, 36.751003, 45.310009> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659786, 36.737762, 45.232651>,  <38.895123, 36.729816, 45.186237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.659786, 36.737762, 45.232651>,  <38.267563, 36.751003, 45.310009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659786, 36.737762, 45.232651> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152148, -0.494089, 0.855995,
		-0.123889, -0.868781, -0.479449,
		0.980562, -0.033101, -0.193396,
		38.953957, 36.727833, 45.174633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394917, 36.100765, 45.495033>,  <38.267563, 36.751003, 45.310009>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394917, 36.100765, 45.495033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.745174, 36.292110, 45.468430>,  <38.955330, 36.406918, 45.452469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.745174, 36.292110, 45.468430>,  <38.394917, 36.100765, 45.495033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745174, 36.292110, 45.468430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329410, -0.490849, 0.806571,
		0.353186, -0.728176, -0.587384,
		0.875642, 0.478359, -0.066507,
		39.007866, 36.435619, 45.448479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.015697, 35.768631, 45.408360>,  <38.394917, 36.100765, 45.495033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.015697, 35.768631, 45.408360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.115818, 36.080776, 45.637577>,  <39.175888, 36.268063, 45.775108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.115818, 36.080776, 45.637577>,  <39.015697, 35.768631, 45.408360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.115818, 36.080776, 45.637577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275968, -0.624836, 0.730357,
		0.928005, -0.024664, -0.371751,
		0.250297, 0.780366, 0.573045,
		39.190907, 36.314884, 45.809490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621964, 35.560108, 45.670311>,  <39.015697, 35.768631, 45.408360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621964, 35.560108, 45.670311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481159, 35.862377, 45.891235>,  <39.396675, 36.043739, 46.023788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.481159, 35.862377, 45.891235>,  <39.621964, 35.560108, 45.670311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481159, 35.862377, 45.891235> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152384, -0.535940, 0.830390,
		0.923507, 0.376473, 0.073507,
		-0.352015, 0.755670, 0.552312,
		39.375553, 36.089077, 46.056931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087673, 35.626461, 46.198090>,  <39.621964, 35.560108, 45.670311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.087673, 35.626461, 46.198090> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.755352, 35.801716, 46.335377>,  <39.555958, 35.906868, 46.417747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.755352, 35.801716, 46.335377>,  <40.087673, 35.626461, 46.198090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.755352, 35.801716, 46.335377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124258, -0.455088, 0.881734,
		0.542515, 0.775197, 0.323647,
		-0.830805, 0.438138, 0.343217,
		39.506111, 35.933159, 46.438343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294102, 35.746197, 46.922867>,  <40.087673, 35.626461, 46.198090>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294102, 35.746197, 46.922867> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896530, 35.785538, 46.903175>,  <39.657986, 35.809143, 46.891361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.896530, 35.785538, 46.903175>,  <40.294102, 35.746197, 46.922867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.896530, 35.785538, 46.903175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073102, -0.256304, 0.963828,
		0.082173, 0.961580, 0.261939,
		-0.993933, 0.098349, -0.049232,
		39.598351, 35.815044, 46.888405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117527, 36.016293, 47.495762>,  <40.294102, 35.746197, 46.922867>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117527, 36.016293, 47.495762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788498, 35.827007, 47.369621>,  <39.591080, 35.713436, 47.293938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.788498, 35.827007, 47.369621>,  <40.117527, 36.016293, 47.495762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788498, 35.827007, 47.369621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018198, -0.576174, 0.817125,
		-0.568370, 0.666405, 0.482556,
		-0.822572, -0.473210, -0.315353,
		39.541725, 35.685043, 47.275017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728344, 35.845287, 48.079742>,  <40.117527, 36.016293, 47.495762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728344, 35.845287, 48.079742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572483, 35.593681, 47.810665>,  <39.478966, 35.442719, 47.649220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.572483, 35.593681, 47.810665>,  <39.728344, 35.845287, 48.079742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572483, 35.593681, 47.810665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103393, -0.695929, 0.710628,
		-0.915139, 0.346451, 0.206136,
		-0.389654, -0.629010, -0.672693,
		39.455585, 35.404980, 47.608856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.975819, 35.757610, 48.387550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056400, 35.451920, 48.142483>,  <39.104752, 35.268505, 47.995441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056400, 35.451920, 48.142483>,  <38.975819, 35.757610, 48.387550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056400, 35.451920, 48.142483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193408, -0.644217, 0.739985,
		-0.960213, -0.030580, -0.277591,
		0.201458, -0.764231, -0.612671,
		39.116837, 35.222649, 47.958683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451405, 35.205177, 48.445950>,  <38.975819, 35.757610, 48.387550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451405, 35.205177, 48.445950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784096, 35.023346, 48.318455>,  <38.983711, 34.914249, 48.241959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.784096, 35.023346, 48.318455>,  <38.451405, 35.205177, 48.445950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.784096, 35.023346, 48.318455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123929, -0.711635, 0.691532,
		-0.541178, -0.535664, -0.648221,
		0.831726, -0.454576, -0.318737,
		39.033615, 34.886974, 48.222836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.306808, 34.525085, 48.410255>,  <38.451405, 35.205177, 48.445950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.306808, 34.525085, 48.410255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706600, 34.536575, 48.416084>,  <38.946476, 34.543468, 48.419582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.706600, 34.536575, 48.416084>,  <38.306808, 34.525085, 48.410255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706600, 34.536575, 48.416084> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010031, -0.707452, 0.706690,
		0.030611, -0.706177, -0.707373,
		0.999481, 0.028729, 0.014572,
		39.006443, 34.545193, 48.420456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533188, 33.873783, 48.329323>,  <38.306808, 34.525085, 48.410255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533188, 33.873783, 48.329323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854630, 34.055500, 48.483120>,  <39.047497, 34.164532, 48.575397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.854630, 34.055500, 48.483120>,  <38.533188, 33.873783, 48.329323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854630, 34.055500, 48.483120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044239, -0.689836, 0.722613,
		0.593515, -0.563687, -0.574454,
		0.803607, 0.454295, 0.384491,
		39.095711, 34.191788, 48.598469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940331, 33.362564, 48.410736>,  <38.533188, 33.873783, 48.329323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940331, 33.362564, 48.410736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078197, 33.640614, 48.663086>,  <39.160919, 33.807442, 48.814495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.078197, 33.640614, 48.663086>,  <38.940331, 33.362564, 48.410736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078197, 33.640614, 48.663086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234494, -0.714506, 0.659161,
		0.908963, -0.079257, -0.409272,
		0.344670, 0.695125, 0.630875,
		39.181599, 33.849152, 48.852348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.571217, 33.135330, 48.589794>,  <38.940331, 33.362564, 48.410736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.571217, 33.135330, 48.589794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469910, 33.402599, 48.869625>,  <39.409126, 33.562962, 49.037521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.469910, 33.402599, 48.869625>,  <39.571217, 33.135330, 48.589794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.469910, 33.402599, 48.869625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024498, -0.727349, 0.685831,
		0.967086, 0.156562, 0.200584,
		-0.253269, 0.668171, 0.699573,
		39.393929, 33.603050, 49.079498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.081192, 33.119232, 49.205151>,  <39.571217, 33.135330, 48.589794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.081192, 33.119232, 49.205151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735672, 33.266968, 49.342224>,  <39.528358, 33.355610, 49.424469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735672, 33.266968, 49.342224>,  <40.081192, 33.119232, 49.205151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735672, 33.266968, 49.342224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045657, -0.734741, 0.676809,
		0.501754, 0.568985, 0.651536,
		-0.863804, 0.369339, 0.342681,
		39.476532, 33.377769, 49.445030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053329, 32.940445, 49.920879>,  <40.081192, 33.119232, 49.205151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053329, 32.940445, 49.920879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.667023, 33.022209, 49.856995>,  <39.435238, 33.071266, 49.818665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.667023, 33.022209, 49.856995>,  <40.053329, 32.940445, 49.920879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667023, 33.022209, 49.856995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257126, -0.672939, 0.693570,
		0.034295, 0.710894, 0.702462,
		-0.965769, 0.204407, -0.159711,
		39.377293, 33.083530, 49.809082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.990055, 33.206085, 50.598816>,  <40.053329, 32.940445, 49.920879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.990055, 33.206085, 50.598816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656609, 33.064156, 50.429493>,  <39.456539, 32.978996, 50.327900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.656609, 33.064156, 50.429493>,  <39.990055, 33.206085, 50.598816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.656609, 33.064156, 50.429493> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075433, -0.686061, 0.723623,
		-0.547171, 0.635155, 0.545145,
		-0.833615, -0.354823, -0.423304,
		39.406525, 32.957710, 50.302502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.676525, 33.088772, 51.166389>,  <39.990055, 33.206085, 50.598816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.676525, 33.088772, 51.166389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.430618, 32.906513, 50.908878>,  <39.283073, 32.797157, 50.754372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.430618, 32.906513, 50.908878>,  <39.676525, 33.088772, 51.166389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430618, 32.906513, 50.908878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302920, -0.617232, 0.726129,
		-0.728221, 0.641410, 0.241426,
		-0.614763, -0.455650, -0.643778,
		39.246189, 32.769817, 50.715744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996685, 33.138008, 51.421227>,  <39.676525, 33.088772, 51.166389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996685, 33.138008, 51.421227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027409, 32.828777, 51.169373>,  <39.045841, 32.643238, 51.018261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.027409, 32.828777, 51.169373>,  <38.996685, 33.138008, 51.421227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027409, 32.828777, 51.169373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366448, -0.609195, 0.703277,
		-0.927263, 0.176713, -0.330085,
		0.076808, -0.773081, -0.629639,
		39.050449, 32.596851, 50.980480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.477882, 32.744076, 51.699207>,  <38.996685, 33.138008, 51.421227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.477882, 32.744076, 51.699207> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700195, 32.493000, 51.481174>,  <38.833584, 32.342354, 51.350353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.700195, 32.493000, 51.481174>,  <38.477882, 32.744076, 51.699207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700195, 32.493000, 51.481174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152540, -0.721542, 0.675358,
		-0.817215, -0.292203, -0.496766,
		0.555779, -0.627689, -0.545083,
		38.866928, 32.304695, 51.317650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262589, 32.094086, 51.792667>,  <38.477882, 32.744076, 51.699207>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262589, 32.094086, 51.792667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607365, 32.005920, 51.610027>,  <38.814228, 31.953020, 51.500443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.607365, 32.005920, 51.610027>,  <38.262589, 32.094086, 51.792667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607365, 32.005920, 51.610027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048813, -0.860300, 0.507445,
		-0.504660, -0.459674, -0.730765,
		0.861937, -0.220417, -0.456598,
		38.865944, 31.939795, 51.473049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199852, 31.398653, 51.367760>,  <38.262589, 32.094086, 51.792667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199852, 31.398653, 51.367760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574158, 31.481838, 51.481674>,  <38.798740, 31.531750, 51.550022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.574158, 31.481838, 51.481674>,  <38.199852, 31.398653, 51.367760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574158, 31.481838, 51.481674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000044, -0.807529, 0.589827,
		0.352639, -0.551949, -0.755644,
		0.935760, 0.207963, 0.284790,
		38.854885, 31.544228, 51.567112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.378864, 30.758615, 51.578094>,  <38.199852, 31.398653, 51.367760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.378864, 30.758615, 51.578094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666721, 30.982273, 51.742760>,  <38.839436, 31.116468, 51.841560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.666721, 30.982273, 51.742760>,  <38.378864, 30.758615, 51.578094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.666721, 30.982273, 51.742760> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197402, -0.733175, 0.650759,
		0.665689, -0.387053, -0.638003,
		0.719646, 0.559146, 0.411662,
		38.882614, 31.150017, 51.866257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936821, 30.311146, 51.682331>,  <38.378864, 30.758615, 51.578094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936821, 30.311146, 51.682331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024158, 30.628017, 51.910290>,  <39.076561, 30.818140, 52.047066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.024158, 30.628017, 51.910290>,  <38.936821, 30.311146, 51.682331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024158, 30.628017, 51.910290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256234, -0.610033, 0.749803,
		0.941631, -0.017691, -0.336183,
		0.218347, 0.792179, 0.569893,
		39.089664, 30.865671, 52.081257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665642, 30.266050, 52.032932>,  <38.936821, 30.311146, 51.682331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665642, 30.266050, 52.032932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501675, 30.547825, 52.264702>,  <39.403294, 30.716888, 52.403763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.501675, 30.547825, 52.264702>,  <39.665642, 30.266050, 52.032932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.501675, 30.547825, 52.264702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331126, -0.476987, 0.814149,
		0.849895, 0.525600, -0.037729,
		-0.409921, 0.704434, 0.579428,
		39.378700, 30.759155, 52.438530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033028, 30.217619, 52.574162>,  <39.665642, 30.266050, 52.032932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033028, 30.217619, 52.574162> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.713966, 30.415106, 52.712723>,  <39.522530, 30.533598, 52.795860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.713966, 30.415106, 52.712723>,  <40.033028, 30.217619, 52.574162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713966, 30.415106, 52.712723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128775, -0.421697, 0.897546,
		0.589211, 0.760537, 0.272789,
		-0.797651, 0.493715, 0.346407,
		39.474670, 30.563221, 52.816647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.230923, 30.471693, 53.243378>,  <40.033028, 30.217619, 52.574162>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.230923, 30.471693, 53.243378> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.831493, 30.462080, 53.224308>,  <39.591835, 30.456312, 53.212868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.831493, 30.462080, 53.224308>,  <40.230923, 30.471693, 53.243378>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831493, 30.462080, 53.224308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027880, -0.526805, 0.849529,
		-0.045530, 0.849647, 0.525383,
		-0.998574, -0.024031, -0.047673,
		39.531921, 30.454870, 53.210007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.050312, 30.673223, 53.840794>,  <40.230923, 30.471693, 53.243378>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.050312, 30.673223, 53.840794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735897, 30.476048, 53.691578>,  <39.547249, 30.357742, 53.602047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.735897, 30.476048, 53.691578>,  <40.050312, 30.673223, 53.840794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735897, 30.476048, 53.691578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082740, -0.514127, 0.853714,
		-0.612619, 0.701915, 0.363337,
		-0.786036, -0.492939, -0.373040,
		39.500088, 30.328165, 53.579666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.605881, 30.641636, 54.437336>,  <40.050312, 30.673223, 53.840794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.605881, 30.641636, 54.437336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491657, 30.342665, 54.197399>,  <39.423122, 30.163282, 54.053436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.491657, 30.342665, 54.197399>,  <39.605881, 30.641636, 54.437336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.491657, 30.342665, 54.197399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091648, -0.601733, 0.793422,
		-0.953969, 0.281541, 0.103329,
		-0.285558, -0.747430, -0.599837,
		39.405991, 30.118435, 54.017448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048527, 30.333685, 54.674374>,  <39.605881, 30.641636, 54.437336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048527, 30.333685, 54.674374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.199337, 30.043362, 54.444225>,  <39.289825, 29.869167, 54.306137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.199337, 30.043362, 54.444225>,  <39.048527, 30.333685, 54.674374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199337, 30.043362, 54.444225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177807, -0.666384, 0.724098,
		-0.908975, -0.170699, -0.380299,
		0.377028, -0.725806, -0.575374,
		39.312447, 29.825621, 54.271614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549973, 29.753450, 54.496529>,  <39.048527, 30.333685, 54.674374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549973, 29.753450, 54.496529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929047, 29.625927, 54.502850>,  <39.156490, 29.549414, 54.506641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.929047, 29.625927, 54.502850>,  <38.549973, 29.753450, 54.496529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.929047, 29.625927, 54.502850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263313, -0.752815, 0.603271,
		-0.180430, -0.575874, -0.797380,
		0.947687, -0.318809, 0.015805,
		39.213352, 29.530285, 54.507591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536343, 29.062290, 54.274689>,  <38.549973, 29.753450, 54.496529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536343, 29.062290, 54.274689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856571, 29.109983, 54.509590>,  <39.048710, 29.138599, 54.650532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856571, 29.109983, 54.509590>,  <38.536343, 29.062290, 54.274689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856571, 29.109983, 54.509590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182482, -0.884948, 0.428448,
		0.570771, -0.450167, -0.686710,
		0.800575, 0.119234, 0.587249,
		39.096745, 29.145754, 54.685764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965267, 28.878649, 54.616734>,  <38.536343, 29.062290, 54.274689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965267, 28.878649, 54.616734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578480, 28.803671, 54.547638>,  <37.346409, 28.758684, 54.506180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.578480, 28.803671, 54.547638>,  <37.965267, 28.878649, 54.616734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578480, 28.803671, 54.547638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033452, 0.765120, -0.643018,
		0.252694, -0.616000, -0.746117,
		-0.966968, -0.187446, -0.172735,
		37.288391, 28.747437, 54.495819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.849781, 28.800732, 53.818604>,  <37.965267, 28.878649, 54.616734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.849781, 28.800732, 53.818604> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492653, 28.876553, 53.982033>,  <37.278374, 28.922045, 54.080090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.492653, 28.876553, 53.982033>,  <37.849781, 28.800732, 53.818604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492653, 28.876553, 53.982033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147242, 0.734454, -0.662493,
		-0.425657, -0.651650, -0.627828,
		-0.892824, 0.189553, 0.408575,
		37.224804, 28.933418, 54.104607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404472, 28.835108, 53.337742>,  <37.849781, 28.800732, 53.818604>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404472, 28.835108, 53.337742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184597, 29.030584, 53.608749>,  <37.052673, 29.147869, 53.771355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.184597, 29.030584, 53.608749>,  <37.404472, 28.835108, 53.337742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184597, 29.030584, 53.608749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236943, 0.686518, -0.687423,
		-0.801063, -0.538400, -0.261579,
		-0.549687, 0.488690, 0.677514,
		37.019691, 29.177191, 53.812004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783226, 28.985113, 52.997749>,  <37.404472, 28.835108, 53.337742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783226, 28.985113, 52.997749> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777363, 29.244757, 53.301971>,  <36.773846, 29.400543, 53.484505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.777363, 29.244757, 53.301971>,  <36.783226, 28.985113, 52.997749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777363, 29.244757, 53.301971> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292721, 0.724528, -0.623999,
		-0.956086, -0.231776, 0.179388,
		-0.014656, 0.649107, 0.760556,
		36.772964, 29.439489, 53.530140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153786, 29.249968, 52.876720>,  <36.783226, 28.985113, 52.997749>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153786, 29.249968, 52.876720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351326, 29.505646, 53.112530>,  <36.469852, 29.659052, 53.254017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.351326, 29.505646, 53.112530>,  <36.153786, 29.249968, 52.876720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351326, 29.505646, 53.112530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383460, 0.768576, -0.512102,
		-0.780427, 0.026845, 0.624671,
		0.493855, 0.639194, 0.589523,
		36.499481, 29.697405, 53.289387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633690, 29.854719, 53.084293>,  <36.153786, 29.249968, 52.876720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633690, 29.854719, 53.084293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000298, 29.997057, 53.157368>,  <36.220261, 30.082460, 53.201214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000298, 29.997057, 53.157368>,  <35.633690, 29.854719, 53.084293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000298, 29.997057, 53.157368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204742, 0.809687, -0.549989,
		-0.343630, 0.466669, 0.814947,
		0.916515, 0.355847, 0.182685,
		36.275253, 30.103811, 53.212173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550110, 30.589735, 53.018532>,  <35.633690, 29.854719, 53.084293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550110, 30.589735, 53.018532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944309, 30.538105, 52.974480>,  <36.180828, 30.507128, 52.948048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.944309, 30.538105, 52.974480>,  <35.550110, 30.589735, 53.018532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944309, 30.538105, 52.974480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013493, 0.706652, -0.707433,
		0.169138, 0.695689, 0.698147,
		0.985500, -0.129074, -0.110134,
		36.239960, 30.499382, 52.941441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939320, 31.289886, 53.123268>,  <35.550110, 30.589735, 53.018532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939320, 31.289886, 53.123268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181099, 31.063984, 52.898521>,  <36.326164, 30.928442, 52.763672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.181099, 31.063984, 52.898521>,  <35.939320, 31.289886, 53.123268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181099, 31.063984, 52.898521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055077, 0.673977, -0.736696,
		0.794740, 0.476239, 0.376278,
		0.604446, -0.564757, -0.561867,
		36.362434, 30.894556, 52.729961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561687, 31.681231, 52.898640>,  <35.939320, 31.289886, 53.123268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561687, 31.681231, 52.898640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557796, 31.397894, 52.616318>,  <36.555462, 31.227892, 52.446926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.557796, 31.397894, 52.616318>,  <36.561687, 31.681231, 52.898640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557796, 31.397894, 52.616318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104068, 0.701284, -0.705245,
		0.994523, -0.080308, 0.066898,
		-0.009723, -0.708344, -0.705801,
		36.554878, 31.185390, 52.404579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.198883, 31.748487, 52.446957>,  <36.561687, 31.681231, 52.898640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.198883, 31.748487, 52.446957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.924503, 31.556093, 52.228550>,  <36.759876, 31.440657, 52.097507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.924503, 31.556093, 52.228550>,  <37.198883, 31.748487, 52.446957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924503, 31.556093, 52.228550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266616, 0.532055, -0.803638,
		0.677049, -0.696827, -0.236720,
		-0.685944, -0.480989, -0.546013,
		36.718719, 31.411797, 52.064747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513500, 31.685398, 51.739136>,  <37.198883, 31.748487, 52.446957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513500, 31.685398, 51.739136> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135952, 31.578644, 51.661293>,  <36.909424, 31.514591, 51.614586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.135952, 31.578644, 51.661293>,  <37.513500, 31.685398, 51.739136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135952, 31.578644, 51.661293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059604, 0.441884, -0.895090,
		0.324880, -0.856452, -0.401176,
		-0.943875, -0.266885, -0.194607,
		36.852791, 31.498577, 51.602909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.523075, 31.299150, 51.112820>,  <37.513500, 31.685398, 51.739136>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.523075, 31.299150, 51.112820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162518, 31.464403, 51.164684>,  <36.946182, 31.563555, 51.195805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.162518, 31.464403, 51.164684>,  <37.523075, 31.299150, 51.112820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162518, 31.464403, 51.164684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052616, 0.401743, -0.914240,
		-0.429792, -0.817268, -0.383865,
		-0.901393, 0.413130, 0.129665,
		36.892097, 31.588343, 51.203583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146008, 31.173126, 50.426830>,  <37.523075, 31.299150, 51.112820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146008, 31.173126, 50.426830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944473, 31.464397, 50.612694>,  <36.823555, 31.639160, 50.724213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.944473, 31.464397, 50.612694>,  <37.146008, 31.173126, 50.426830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944473, 31.464397, 50.612694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080257, 0.496134, -0.864529,
		-0.860065, -0.472870, -0.191527,
		-0.503832, 0.728180, 0.464659,
		36.793324, 31.682852, 50.752090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621067, 31.425209, 49.941097>,  <37.146008, 31.173126, 50.426830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621067, 31.425209, 49.941097> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645382, 31.729824, 50.199203>,  <36.659973, 31.912592, 50.354069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645382, 31.729824, 50.199203>,  <36.621067, 31.425209, 49.941097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645382, 31.729824, 50.199203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101390, 0.647828, -0.755009,
		-0.992988, -0.019526, 0.116594,
		0.060791, 0.761537, 0.645265,
		36.663620, 31.958284, 50.392784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093159, 31.843693, 49.698425>,  <36.621067, 31.425209, 49.941097>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093159, 31.843693, 49.698425> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315552, 32.072186, 49.939945>,  <36.448986, 32.209282, 50.084858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.315552, 32.072186, 49.939945>,  <36.093159, 31.843693, 49.698425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315552, 32.072186, 49.939945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318638, 0.817406, -0.479914,
		-0.767693, 0.074431, 0.636480,
		0.555983, 0.571234, 0.603801,
		36.482346, 32.243557, 50.121086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674160, 32.390854, 49.830124>,  <36.093159, 31.843693, 49.698425>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674160, 32.390854, 49.830124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045315, 32.528233, 49.888180>,  <36.268009, 32.610661, 49.923012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045315, 32.528233, 49.888180>,  <35.674160, 32.390854, 49.830124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045315, 32.528233, 49.888180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176781, 0.747970, -0.639757,
		-0.328282, 0.567967, 0.754749,
		0.927890, 0.343446, 0.145139,
		36.323681, 32.631268, 49.931721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.678627, 33.085083, 49.920467>,  <35.674160, 32.390854, 49.830124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.678627, 33.085083, 49.920467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058628, 33.063995, 49.797363>,  <36.286629, 33.051342, 49.723499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058628, 33.063995, 49.797363>,  <35.678627, 33.085083, 49.920467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058628, 33.063995, 49.797363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156814, 0.771775, -0.616257,
		0.270012, 0.633707, 0.724920,
		0.950002, -0.052719, -0.307763,
		36.343628, 33.048180, 49.705036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893734, 33.826099, 49.816830>,  <35.678627, 33.085083, 49.920467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893734, 33.826099, 49.816830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.149529, 33.597324, 49.611332>,  <36.303005, 33.460060, 49.488033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.149529, 33.597324, 49.611332>,  <35.893734, 33.826099, 49.816830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149529, 33.597324, 49.611332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181512, 0.761676, -0.622015,
		0.747067, 0.304519, 0.590897,
		0.639488, -0.571942, -0.513749,
		36.341373, 33.425743, 49.457207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534904, 34.268261, 49.728893>,  <35.893734, 33.826099, 49.816830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534904, 34.268261, 49.728893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.524925, 33.995678, 49.436317>,  <36.518936, 33.832130, 49.260773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.524925, 33.995678, 49.436317>,  <36.534904, 34.268261, 49.728893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.524925, 33.995678, 49.436317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042275, 0.731727, -0.680285,
		0.998794, 0.013948, -0.047065,
		-0.024951, -0.681455, -0.731435,
		36.517441, 33.791241, 49.216888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068176, 34.410641, 49.252178>,  <36.534904, 34.268261, 49.728893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068176, 34.410641, 49.252178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768627, 34.224789, 49.063156>,  <36.588898, 34.113277, 48.949745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768627, 34.224789, 49.063156>,  <37.068176, 34.410641, 49.252178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768627, 34.224789, 49.063156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101531, 0.624199, -0.774639,
		0.654895, -0.628082, -0.420268,
		-0.748868, -0.464637, -0.472555,
		36.543964, 34.085400, 48.921391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<39.701473, 35.202259, 29.760666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356358, 35.350670, 29.898035>,  <39.149288, 35.439716, 29.980455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.356358, 35.350670, 29.898035>,  <39.701473, 35.202259, 29.760666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356358, 35.350670, 29.898035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314812, -0.137239, 0.939180,
		0.395591, 0.918426, 0.001605,
		-0.862787, 0.371026, 0.343422,
		39.097523, 35.461979, 30.001062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790363, 35.828346, 30.278091>,  <39.701473, 35.202259, 29.760666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790363, 35.828346, 30.278091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.441105, 35.648590, 30.353638>,  <39.231552, 35.540737, 30.398966>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.441105, 35.648590, 30.353638>,  <39.790363, 35.828346, 30.278091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441105, 35.648590, 30.353638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250830, -0.081978, 0.964554,
		-0.417979, 0.889566, 0.184299,
		-0.873143, -0.449391, 0.188865,
		39.179161, 35.513771, 30.410297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553200, 36.028629, 30.982515>,  <39.790363, 35.828346, 30.278091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553200, 36.028629, 30.982515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351418, 35.694748, 30.894150>,  <39.230350, 35.494419, 30.841131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.351418, 35.694748, 30.894150>,  <39.553200, 36.028629, 30.982515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351418, 35.694748, 30.894150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085409, -0.302836, 0.949208,
		-0.859204, 0.459964, 0.224057,
		-0.504454, -0.834700, -0.220913,
		39.200081, 35.444340, 30.827875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046623, 35.984512, 31.430178>,  <39.553200, 36.028629, 30.982515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046623, 35.984512, 31.430178> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117355, 35.612713, 31.300707>,  <39.159794, 35.389633, 31.223024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.117355, 35.612713, 31.300707>,  <39.046623, 35.984512, 31.430178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117355, 35.612713, 31.300707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264034, -0.272008, 0.925363,
		-0.948165, -0.249092, 0.197321,
		0.176828, -0.929497, -0.323677,
		39.170403, 35.333862, 31.203604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845158, 35.497467, 31.920588>,  <39.046623, 35.984512, 31.430178>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845158, 35.497467, 31.920588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077679, 35.255146, 31.703297>,  <39.217190, 35.109753, 31.572922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.077679, 35.255146, 31.703297>,  <38.845158, 35.497467, 31.920588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077679, 35.255146, 31.703297> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460540, -0.305435, 0.833434,
		-0.670816, -0.734653, 0.101447,
		0.581299, -0.605801, -0.543228,
		39.252068, 35.073406, 31.540329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.694187, 34.788036, 32.177017>,  <38.845158, 35.497467, 31.920588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.694187, 34.788036, 32.177017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046516, 34.758934, 31.989883>,  <39.257912, 34.741474, 31.877604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046516, 34.758934, 31.989883>,  <38.694187, 34.788036, 32.177017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046516, 34.758934, 31.989883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366070, -0.521989, 0.770403,
		-0.300250, -0.849844, -0.433146,
		0.880820, -0.072751, -0.467830,
		39.310760, 34.737110, 31.849535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987785, 34.028633, 32.205128>,  <38.694187, 34.788036, 32.177017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987785, 34.028633, 32.205128> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.293793, 34.279427, 32.146282>,  <39.477398, 34.429901, 32.110977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.293793, 34.279427, 32.146282>,  <38.987785, 34.028633, 32.205128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293793, 34.279427, 32.146282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517806, -0.463020, 0.719367,
		0.382913, -0.626505, -0.678873,
		0.765019, 0.626980, -0.147112,
		39.523300, 34.467522, 32.102150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590965, 33.543587, 32.145329>,  <38.987785, 34.028633, 32.205128>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590965, 33.543587, 32.145329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.691536, 33.919350, 32.238533>,  <39.751877, 34.144810, 32.294456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.691536, 33.919350, 32.238533>,  <39.590965, 33.543587, 32.145329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691536, 33.919350, 32.238533> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562963, -0.337770, 0.754310,
		0.787311, -0.058474, -0.613777,
		0.251423, 0.939411, 0.233012,
		39.766964, 34.201172, 32.308437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109577, 33.467148, 32.538937>,  <39.590965, 33.543587, 32.145329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109577, 33.467148, 32.538937> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.045170, 33.852695, 32.623821>,  <40.006523, 34.084023, 32.674751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.045170, 33.852695, 32.623821>,  <40.109577, 33.467148, 32.538937>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045170, 33.852695, 32.623821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410485, -0.130131, 0.902534,
		0.897538, 0.232435, -0.374700,
		-0.161021, 0.963867, 0.212209,
		39.996864, 34.141857, 32.687485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723347, 33.765564, 32.650410>,  <40.109577, 33.467148, 32.538937>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723347, 33.765564, 32.650410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484329, 34.016308, 32.850407>,  <40.340919, 34.166756, 32.970406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.484329, 34.016308, 32.850407>,  <40.723347, 33.765564, 32.650410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.484329, 34.016308, 32.850407> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544408, -0.140632, 0.826947,
		0.588695, 0.766335, -0.257234,
		-0.597543, 0.626860, 0.499989,
		40.305065, 34.204365, 33.000404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.140610, 34.089260, 32.972187>,  <40.723347, 33.765564, 32.650410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.140610, 34.089260, 32.972187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.798306, 34.176548, 33.159824>,  <40.592922, 34.228920, 33.272408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.798306, 34.176548, 33.159824>,  <41.140610, 34.089260, 32.972187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798306, 34.176548, 33.159824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396049, -0.307085, 0.865357,
		0.332889, 0.926326, 0.176367,
		-0.855763, 0.218218, 0.469096,
		40.541576, 34.242012, 33.300552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464802, 34.707546, 33.328865>,  <41.140610, 34.089260, 32.972187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464802, 34.707546, 33.328865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.123405, 34.571396, 33.486698>,  <40.918568, 34.489704, 33.581398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.123405, 34.571396, 33.486698>,  <41.464802, 34.707546, 33.328865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.123405, 34.571396, 33.486698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458962, -0.132412, 0.878533,
		-0.246785, 0.930919, 0.269233,
		-0.853493, -0.340376, 0.394579,
		40.867359, 34.469284, 33.605072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.439152, 35.000954, 33.946941>,  <41.464802, 34.707546, 33.328865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.439152, 35.000954, 33.946941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177479, 34.702389, 33.995800>,  <41.020477, 34.523251, 34.025116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.177479, 34.702389, 33.995800>,  <41.439152, 35.000954, 33.946941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.177479, 34.702389, 33.995800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315779, -0.122790, 0.940854,
		-0.687265, 0.654060, 0.316027,
		-0.654180, -0.746410, 0.122149,
		40.981224, 34.478466, 34.032444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249130, 35.158409, 34.698196>,  <41.439152, 35.000954, 33.946941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249130, 35.158409, 34.698196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.108299, 34.799740, 34.590851>,  <41.023800, 34.584538, 34.526443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.108299, 34.799740, 34.590851>,  <41.249130, 35.158409, 34.698196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.108299, 34.799740, 34.590851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211830, -0.355615, 0.910311,
		-0.911687, 0.263649, 0.315146,
		-0.352073, -0.896676, -0.268361,
		41.002678, 34.530739, 34.510342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704510, 34.997742, 35.164188>,  <41.249130, 35.158409, 34.698196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704510, 34.997742, 35.164188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.847866, 34.652637, 35.021526>,  <40.933880, 34.445576, 34.935928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.847866, 34.652637, 35.021526>,  <40.704510, 34.997742, 35.164188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.847866, 34.652637, 35.021526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266326, -0.271670, 0.924806,
		-0.894778, -0.426427, 0.132411,
		0.358391, -0.862760, -0.356653,
		40.955383, 34.393810, 34.914532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.468494, 34.403870, 35.633095>,  <40.704510, 34.997742, 35.164188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.468494, 34.403870, 35.633095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781979, 34.247776, 35.439800>,  <40.970070, 34.154121, 35.323822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.781979, 34.247776, 35.439800>,  <40.468494, 34.403870, 35.633095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781979, 34.247776, 35.439800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387622, -0.300637, 0.871416,
		-0.485332, -0.870251, -0.084350,
		0.783710, -0.390230, -0.483238,
		41.017094, 34.130707, 35.294830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539417, 33.825043, 35.904350>,  <40.468494, 34.403870, 35.633095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539417, 33.825043, 35.904350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902485, 33.901272, 35.754780>,  <41.120323, 33.947010, 35.665035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.902485, 33.901272, 35.754780>,  <40.539417, 33.825043, 35.904350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.902485, 33.901272, 35.754780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416788, -0.304664, 0.856427,
		0.049294, -0.933199, -0.355964,
		0.907666, 0.190578, -0.373928,
		41.174786, 33.958447, 35.642601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840248, 33.262653, 35.901100>,  <40.539417, 33.825043, 35.904350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840248, 33.262653, 35.901100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157120, 33.506714, 35.895935>,  <41.347240, 33.653152, 35.892834>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.157120, 33.506714, 35.895935>,  <40.840248, 33.262653, 35.901100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.157120, 33.506714, 35.895935> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445888, -0.564198, 0.694884,
		0.416700, -0.556230, -0.719006,
		0.792177, 0.610154, -0.012915,
		41.394772, 33.689758, 35.892059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422260, 32.781773, 36.071686>,  <40.840248, 33.262653, 35.901100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422260, 32.781773, 36.071686> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.551273, 33.158573, 36.108810>,  <41.628681, 33.384651, 36.131084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.551273, 33.158573, 36.108810>,  <41.422260, 32.781773, 36.071686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551273, 33.158573, 36.108810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435992, -0.234874, 0.868761,
		0.840170, -0.239736, -0.486457,
		0.322529, 0.941998, 0.092811,
		41.648033, 33.441174, 36.136654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.185959, 32.746334, 36.199547>,  <41.422260, 32.781773, 36.071686>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.185959, 32.746334, 36.199547> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065521, 33.098816, 36.345322>,  <41.993259, 33.310307, 36.432789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.065521, 33.098816, 36.345322>,  <42.185959, 32.746334, 36.199547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065521, 33.098816, 36.345322> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421324, -0.219916, 0.879843,
		0.855469, 0.418464, -0.305058,
		-0.301095, 0.881207, 0.364440,
		41.975193, 33.363178, 36.454655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.841991, 32.935329, 36.534908>,  <42.185959, 32.746334, 36.199547>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.841991, 32.935329, 36.534908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.526234, 33.142212, 36.667179>,  <42.336777, 33.266342, 36.746540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.526234, 33.142212, 36.667179>,  <42.841991, 32.935329, 36.534908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526234, 33.142212, 36.667179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320623, -0.111988, 0.940563,
		0.523498, 0.848502, -0.077425,
		-0.789399, 0.517207, 0.330675,
		42.289413, 33.297375, 36.766380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.099483, 33.522228, 36.926964>,  <42.841991, 32.935329, 36.534908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.099483, 33.522228, 36.926964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733025, 33.404663, 37.035992>,  <42.513149, 33.334122, 37.101406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.733025, 33.404663, 37.035992>,  <43.099483, 33.522228, 36.926964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.733025, 33.404663, 37.035992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348464, -0.247877, 0.903952,
		-0.198124, 0.923130, 0.329510,
		-0.916144, -0.293917, 0.272568,
		42.458183, 33.316486, 37.117764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593472, 33.752048, 36.336544>,  <43.099483, 33.522228, 36.926964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593472, 33.752048, 36.336544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918106, 33.982517, 36.297855>,  <44.112888, 34.120796, 36.274643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.918106, 33.982517, 36.297855>,  <43.593472, 33.752048, 36.336544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918106, 33.982517, 36.297855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566316, 0.735159, -0.372595,
		-0.143573, 0.357167, 0.922940,
		0.811587, 0.576170, -0.096721,
		44.161583, 34.155369, 36.268841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.448112, 34.460838, 36.531364>,  <43.593472, 33.752048, 36.336544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.448112, 34.460838, 36.531364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.770000, 34.512054, 36.299492>,  <43.963135, 34.542786, 36.160370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.770000, 34.512054, 36.299492>,  <43.448112, 34.460838, 36.531364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770000, 34.512054, 36.299492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477670, 0.719463, -0.504187,
		0.352502, 0.682626, 0.640129,
		0.804720, 0.128044, -0.579682,
		44.011417, 34.550468, 36.125587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.544872, 35.178902, 36.546780>,  <43.448112, 34.460838, 36.531364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.544872, 35.178902, 36.546780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744102, 35.080452, 36.214191>,  <43.863640, 35.021381, 36.014637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.744102, 35.080452, 36.214191>,  <43.544872, 35.178902, 36.546780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.744102, 35.080452, 36.214191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371399, 0.805920, -0.461038,
		0.783571, 0.538439, 0.310000,
		0.498076, -0.246123, -0.831471,
		43.893524, 35.006615, 35.964748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.922550, 35.767372, 36.349308>,  <43.544872, 35.178902, 36.546780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.922550, 35.767372, 36.349308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873554, 35.539543, 36.024204>,  <43.844158, 35.402847, 35.829140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.873554, 35.539543, 36.024204>,  <43.922550, 35.767372, 36.349308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.873554, 35.539543, 36.024204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366471, 0.787012, -0.496298,
		0.922332, 0.237064, -0.305130,
		-0.122487, -0.569573, -0.812763,
		43.836807, 35.368671, 35.780376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.230579, 36.172043, 35.706829>,  <43.922550, 35.767372, 36.349308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.230579, 36.172043, 35.706829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963303, 35.894920, 35.598358>,  <43.802937, 35.728645, 35.533276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.963303, 35.894920, 35.598358>,  <44.230579, 36.172043, 35.706829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.963303, 35.894920, 35.598358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423916, 0.654074, -0.626484,
		0.611401, -0.303657, -0.730740,
		-0.668195, -0.692805, -0.271176,
		43.762844, 35.687080, 35.517006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214645, 36.203819, 35.007420>,  <44.230579, 36.172043, 35.706829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214645, 36.203819, 35.007420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.887375, 35.997543, 35.109131>,  <43.691013, 35.873779, 35.170158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.887375, 35.997543, 35.109131>,  <44.214645, 36.203819, 35.007420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887375, 35.997543, 35.109131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518826, 0.471551, -0.713063,
		0.247810, -0.715338, -0.653362,
		-0.818174, -0.515685, 0.254281,
		43.641922, 35.842838, 35.185413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952518, 36.070202, 34.402012>,  <44.214645, 36.203819, 35.007420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952518, 36.070202, 34.402012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.617783, 36.023403, 34.615932>,  <43.416943, 35.995323, 34.744286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.617783, 36.023403, 34.615932>,  <43.952518, 36.070202, 34.402012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.617783, 36.023403, 34.615932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542752, 0.304970, -0.782568,
		-0.071539, -0.945148, -0.318712,
		-0.836841, -0.116998, 0.534798,
		43.366730, 35.988304, 34.776371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529221, 35.816505, 33.937634>,  <43.952518, 36.070202, 34.402012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529221, 35.816505, 33.937634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300549, 35.933872, 34.244118>,  <43.163345, 36.004292, 34.428009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.300549, 35.933872, 34.244118>,  <43.529221, 35.816505, 33.937634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.300549, 35.933872, 34.244118> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628336, 0.443959, -0.638823,
		-0.527609, -0.846644, -0.069439,
		-0.571684, 0.293417, 0.766214,
		43.129044, 36.021896, 34.473984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868130, 35.813309, 33.681519>,  <43.529221, 35.816505, 33.937634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868130, 35.813309, 33.681519> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.828819, 36.033550, 34.013103>,  <42.805233, 36.165695, 34.212055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.828819, 36.033550, 34.013103>,  <42.868130, 35.813309, 33.681519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.828819, 36.033550, 34.013103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499161, 0.693353, -0.519711,
		-0.860919, -0.464858, 0.206704,
		-0.098273, 0.550608, 0.828960,
		42.799335, 36.198734, 34.261791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.203621, 35.997536, 33.803246>,  <42.868130, 35.813309, 33.681519>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.203621, 35.997536, 33.803246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.385525, 36.287884, 34.009663>,  <42.494667, 36.462093, 34.133514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.385525, 36.287884, 34.009663>,  <42.203621, 35.997536, 33.803246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.385525, 36.287884, 34.009663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554276, 0.684205, -0.473963,
		-0.697117, -0.070491, 0.713484,
		0.454759, 0.725875, 0.516043,
		42.521954, 36.505646, 34.164474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.703876, 36.425220, 34.027752>,  <42.203621, 35.997536, 33.803246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.703876, 36.425220, 34.027752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037052, 36.645134, 34.002644>,  <42.236958, 36.777084, 33.987579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.037052, 36.645134, 34.002644>,  <41.703876, 36.425220, 34.027752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037052, 36.645134, 34.002644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505134, 0.709128, -0.491912,
		-0.225933, 0.441443, 0.868379,
		0.832943, 0.549787, -0.062773,
		42.286934, 36.810070, 33.983810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479027, 37.164433, 34.167202>,  <41.703876, 36.425220, 34.027752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479027, 37.164433, 34.167202> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834145, 37.167316, 33.983131>,  <42.047215, 37.169044, 33.872688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.834145, 37.167316, 33.983131>,  <41.479027, 37.164433, 34.167202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.834145, 37.167316, 33.983131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319334, 0.729675, -0.604649,
		0.331423, 0.683756, 0.650105,
		0.887798, 0.007206, -0.460177,
		42.100483, 37.169479, 33.845078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567272, 37.921711, 34.079369>,  <41.479027, 37.164433, 34.167202>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567272, 37.921711, 34.079369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821491, 37.750748, 33.822182>,  <41.974022, 37.648170, 33.667870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.821491, 37.750748, 33.822182>,  <41.567272, 37.921711, 34.079369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.821491, 37.750748, 33.822182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295603, 0.634621, -0.714056,
		0.713231, 0.643878, 0.276989,
		0.635547, -0.427408, -0.642963,
		42.012154, 37.622524, 33.629292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.802299, 38.458847, 33.735271>,  <41.567272, 37.921711, 34.079369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.802299, 38.458847, 33.735271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.906937, 38.151955, 33.501030>,  <41.969719, 37.967819, 33.360485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.906937, 38.151955, 33.501030>,  <41.802299, 38.458847, 33.735271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.906937, 38.151955, 33.501030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282164, 0.519432, -0.806581,
		0.923012, 0.376234, -0.080603,
		0.261595, -0.767228, -0.585602,
		41.985416, 37.921787, 33.325348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991776, 38.780235, 33.047012>,  <41.802299, 38.458847, 33.735271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991776, 38.780235, 33.047012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939621, 38.391220, 32.969898>,  <41.908329, 38.157810, 32.923630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.939621, 38.391220, 32.969898>,  <41.991776, 38.780235, 33.047012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.939621, 38.391220, 32.969898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373593, 0.228308, -0.899057,
		0.918382, -0.045205, -0.393103,
		-0.130391, -0.972539, -0.192785,
		41.900505, 38.099457, 32.912064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355835, 38.673790, 32.296284>,  <41.991776, 38.780235, 33.047012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355835, 38.673790, 32.296284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.075058, 38.399532, 32.373394>,  <41.906593, 38.234978, 32.419662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.075058, 38.399532, 32.373394>,  <42.355835, 38.673790, 32.296284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.075058, 38.399532, 32.373394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487084, 0.264653, -0.832290,
		0.519639, -0.678120, -0.519740,
		-0.701943, -0.685647, 0.192778,
		41.864475, 38.193840, 32.431229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.277878, 38.334869, 31.746670>,  <42.355835, 38.673790, 32.296284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.277878, 38.334869, 31.746670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930668, 38.274185, 31.935783>,  <41.722343, 38.237774, 32.049252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930668, 38.274185, 31.935783>,  <42.277878, 38.334869, 31.746670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930668, 38.274185, 31.935783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493218, 0.153690, -0.856222,
		0.057228, -0.976404, -0.208228,
		-0.868021, -0.151702, 0.472785,
		41.670261, 38.228672, 32.077618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.820503, 37.881203, 31.322153>,  <42.277878, 38.334869, 31.746670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.820503, 37.881203, 31.322153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577091, 38.052799, 31.589184>,  <41.431046, 38.155758, 31.749403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.577091, 38.052799, 31.589184>,  <41.820503, 37.881203, 31.322153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577091, 38.052799, 31.589184> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626090, 0.257319, -0.736069,
		-0.487546, -0.865884, 0.111999,
		-0.608531, 0.428989, 0.667576,
		41.394531, 38.181496, 31.789457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223827, 37.556545, 31.283089>,  <41.820503, 37.881203, 31.322153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223827, 37.556545, 31.283089> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.075165, 37.889587, 31.447350>,  <40.985966, 38.089413, 31.545906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.075165, 37.889587, 31.447350>,  <41.223827, 37.556545, 31.283089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.075165, 37.889587, 31.447350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721223, 0.019570, -0.692426,
		-0.584555, -0.553518, 0.593222,
		-0.371661, 0.832607, 0.410650,
		40.963665, 38.139370, 31.570545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496258, 37.445229, 31.456514>,  <41.223827, 37.556545, 31.283089>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496258, 37.445229, 31.456514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574356, 37.834660, 31.409140>,  <40.621216, 38.068317, 31.380714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.574356, 37.834660, 31.409140>,  <40.496258, 37.445229, 31.456514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574356, 37.834660, 31.409140> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753960, 0.071767, -0.652989,
		-0.627234, 0.216792, 0.748049,
		0.195248, 0.973576, -0.118438,
		40.632931, 38.126732, 31.373608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.255383, 37.034039, 45.389942> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900497, 36.850266, 45.406746>,  <39.687565, 36.740002, 45.416828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900497, 36.850266, 45.406746>,  <40.255383, 37.034039, 45.389942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900497, 36.850266, 45.406746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131858, 0.165271, -0.977394,
		0.442108, -0.872700, -0.207211,
		-0.887217, -0.459436, 0.042005,
		39.634331, 36.712437, 45.419346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239773, 36.624790, 44.802505>,  <40.255383, 37.034039, 45.389942>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239773, 36.624790, 44.802505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860691, 36.655853, 44.926327>,  <39.633244, 36.674492, 45.000622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860691, 36.655853, 44.926327>,  <40.239773, 36.624790, 44.802505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860691, 36.655853, 44.926327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283040, 0.243650, -0.927644,
		-0.147463, -0.966749, -0.208928,
		-0.947704, 0.077658, 0.309558,
		39.576378, 36.679150, 45.019196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915920, 36.199955, 44.323986>,  <40.239773, 36.624790, 44.802505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915920, 36.199955, 44.323986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619064, 36.420490, 44.476437>,  <39.440952, 36.552811, 44.567905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619064, 36.420490, 44.476437>,  <39.915920, 36.199955, 44.323986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619064, 36.420490, 44.476437> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336972, 0.184623, -0.923236,
		-0.579376, -0.813600, 0.048768,
		-0.742141, 0.551335, 0.381127,
		39.396423, 36.585892, 44.590775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369076, 36.051403, 43.948463>,  <39.915920, 36.199955, 44.323986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369076, 36.051403, 43.948463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266441, 36.393932, 44.127739>,  <39.204861, 36.599449, 44.235302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266441, 36.393932, 44.127739>,  <39.369076, 36.051403, 43.948463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266441, 36.393932, 44.127739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276522, 0.379289, -0.882992,
		-0.926122, -0.350494, 0.139474,
		-0.256582, 0.856326, 0.448187,
		39.189468, 36.650829, 44.262196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.757366, 36.185253, 43.734692>,  <39.369076, 36.051403, 43.948463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.757366, 36.185253, 43.734692> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894215, 36.543430, 43.848629>,  <38.976322, 36.758335, 43.916992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894215, 36.543430, 43.848629>,  <38.757366, 36.185253, 43.734692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894215, 36.543430, 43.848629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241812, 0.376826, -0.894164,
		-0.908009, 0.237034, 0.345449,
		0.342121, 0.895442, 0.284844,
		38.996853, 36.812061, 43.934082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197704, 36.651848, 43.710297>,  <38.757366, 36.185253, 43.734692>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197704, 36.651848, 43.710297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513618, 36.896851, 43.697128>,  <38.703167, 37.043850, 43.689228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513618, 36.896851, 43.697128>,  <38.197704, 36.651848, 43.710297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513618, 36.896851, 43.697128> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372991, 0.436958, -0.818502,
		-0.486953, 0.658715, 0.573560,
		0.789781, 0.612504, -0.032916,
		38.750553, 37.080601, 43.687252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022995, 37.369736, 43.534569>,  <38.197704, 36.651848, 43.710297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022995, 37.369736, 43.534569> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414124, 37.351227, 43.452862>,  <38.648800, 37.340122, 43.403839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.414124, 37.351227, 43.452862>,  <38.022995, 37.369736, 43.534569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414124, 37.351227, 43.452862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165062, 0.430076, -0.887575,
		0.128919, 0.901606, 0.412900,
		0.977821, -0.046271, -0.204266,
		38.707470, 37.337345, 43.391582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211945, 38.116356, 43.220768>,  <38.022995, 37.369736, 43.534569>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211945, 38.116356, 43.220768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482941, 37.847366, 43.101582>,  <38.645538, 37.685974, 43.030071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482941, 37.847366, 43.101582>,  <38.211945, 38.116356, 43.220768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482941, 37.847366, 43.101582> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017563, 0.419779, -0.907456,
		0.735322, 0.609560, 0.296207,
		0.677491, -0.672475, -0.297967,
		38.686188, 37.645622, 43.012192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746777, 38.379536, 42.858074>,  <38.211945, 38.116356, 43.220768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746777, 38.379536, 42.858074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761215, 37.998753, 42.736435>,  <38.769878, 37.770283, 42.663452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.761215, 37.998753, 42.736435>,  <38.746777, 38.379536, 42.858074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761215, 37.998753, 42.736435> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142190, 0.296305, -0.944450,
		0.989181, 0.077334, -0.124663,
		0.036100, -0.951958, -0.304095,
		38.772045, 37.713165, 42.645206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.090561, 38.331169, 42.263573>,  <38.746777, 38.379536, 42.858074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.090561, 38.331169, 42.263573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905769, 37.976711, 42.249054>,  <38.794895, 37.764034, 42.240341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905769, 37.976711, 42.249054>,  <39.090561, 38.331169, 42.263573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905769, 37.976711, 42.249054> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236672, 0.162621, -0.957883,
		0.854728, -0.433934, -0.284854,
		-0.461981, -0.886147, -0.036297,
		38.767174, 37.710869, 42.238167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.374237, 38.023190, 41.697647>,  <39.090561, 38.331169, 42.263573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.374237, 38.023190, 41.697647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030994, 37.830036, 41.767479>,  <38.825050, 37.714142, 41.809380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030994, 37.830036, 41.767479>,  <39.374237, 38.023190, 41.697647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030994, 37.830036, 41.767479> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216760, 0.032439, -0.975686,
		0.465482, -0.875082, -0.132507,
		-0.858103, -0.482887, 0.174583,
		38.773563, 37.685169, 41.819855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284317, 37.546806, 41.142319>,  <39.374237, 38.023190, 41.697647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284317, 37.546806, 41.142319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910271, 37.590591, 41.277130>,  <38.685844, 37.616863, 41.358017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910271, 37.590591, 41.277130>,  <39.284317, 37.546806, 41.142319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910271, 37.590591, 41.277130> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271304, 0.390670, -0.879643,
		-0.227951, -0.914000, -0.335623,
		-0.935111, 0.109459, 0.337025,
		38.629738, 37.623428, 41.378239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774601, 37.351318, 40.546696>,  <39.284317, 37.546806, 41.142319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774601, 37.351318, 40.546696> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597530, 37.586887, 40.817162>,  <38.491287, 37.728230, 40.979443>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.597530, 37.586887, 40.817162>,  <38.774601, 37.351318, 40.546696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.597530, 37.586887, 40.817162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335700, 0.590391, -0.733992,
		-0.831468, -0.551914, -0.063654,
		-0.442680, 0.588922, 0.676169,
		38.464725, 37.763565, 41.020012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.626579, 36.594105, 40.803722>,  <38.774601, 37.351318, 40.546696>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.626579, 36.594105, 40.803722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003716, 36.711372, 40.740334>,  <39.229996, 36.781734, 40.702301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003716, 36.711372, 40.740334>,  <38.626579, 36.594105, 40.803722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003716, 36.711372, 40.740334> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266247, 0.948635, 0.170894,
		0.200431, -0.118933, 0.972462,
		0.942836, 0.293168, -0.158470,
		39.286568, 36.799324, 40.692791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070267, 36.418365, 40.201691>,  <38.626579, 36.594105, 40.803722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070267, 36.418365, 40.201691> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963654, 36.241299, 39.859230>,  <38.899685, 36.135056, 39.653751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963654, 36.241299, 39.859230>,  <39.070267, 36.418365, 40.201691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963654, 36.241299, 39.859230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309499, -0.801935, 0.510989,
		-0.912781, 0.401175, 0.076737,
		-0.266534, -0.442672, -0.856155,
		38.883694, 36.108498, 39.602383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402870, 36.020679, 40.355686>,  <39.070267, 36.418365, 40.201691>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402870, 36.020679, 40.355686> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577793, 35.851551, 40.038197>,  <38.682747, 35.750076, 39.847702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577793, 35.851551, 40.038197>,  <38.402870, 36.020679, 40.355686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577793, 35.851551, 40.038197> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218057, -0.906098, 0.362543,
		-0.872476, 0.014534, -0.488440,
		0.437305, -0.422819, -0.793718,
		38.708984, 35.724705, 39.800079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.933712, 35.586098, 40.029045>,  <38.402870, 36.020679, 40.355686>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.933712, 35.586098, 40.029045> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293797, 35.434032, 39.944096>,  <38.509846, 35.342793, 39.893127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293797, 35.434032, 39.944096>,  <37.933712, 35.586098, 40.029045>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293797, 35.434032, 39.944096> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270160, -0.870055, 0.412333,
		-0.341528, -0.313811, -0.885935,
		0.900207, -0.380167, -0.212369,
		38.563858, 35.319981, 39.880386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922688, 34.884171, 39.846947>,  <37.933712, 35.586098, 40.029045>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922688, 34.884171, 39.846947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304890, 34.916996, 39.960281>,  <38.534210, 34.936691, 40.028282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304890, 34.916996, 39.960281>,  <37.922688, 34.884171, 39.846947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304890, 34.916996, 39.960281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107921, -0.796673, 0.594698,
		0.274527, -0.598814, -0.752367,
		0.955504, 0.082065, 0.283333,
		38.591541, 34.941616, 40.045280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211948, 34.131645, 39.828724>,  <37.922688, 34.884171, 39.846947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211948, 34.131645, 39.828724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482430, 34.324493, 40.051548>,  <38.644718, 34.440201, 40.185242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482430, 34.324493, 40.051548>,  <38.211948, 34.131645, 39.828724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482430, 34.324493, 40.051548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055963, -0.787565, 0.613685,
		0.734591, -0.383798, -0.559531,
		0.676198, 0.482121, 0.557060,
		38.685287, 34.469131, 40.218666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863525, 33.653679, 40.046257>,  <38.211948, 34.131645, 39.828724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863525, 33.653679, 40.046257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889080, 33.931961, 40.332451>,  <38.904411, 34.098930, 40.504166>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889080, 33.931961, 40.332451>,  <38.863525, 33.653679, 40.046257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889080, 33.931961, 40.332451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033727, -0.718042, 0.695182,
		0.997387, -0.020282, -0.069338,
		0.063887, 0.695704, 0.715482,
		38.908245, 34.140671, 40.547096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533657, 33.524010, 40.451488>,  <38.863525, 33.653679, 40.046257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533657, 33.524010, 40.451488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256844, 33.719051, 40.664402>,  <39.090755, 33.836075, 40.792149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.256844, 33.719051, 40.664402>,  <39.533657, 33.524010, 40.451488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256844, 33.719051, 40.664402> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145217, -0.628264, 0.764327,
		0.707105, 0.606239, 0.363973,
		-0.692037, 0.487604, 0.532285,
		39.049232, 33.865334, 40.824089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719574, 33.493427, 41.095352>,  <39.533657, 33.524010, 40.451488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719574, 33.493427, 41.095352> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350269, 33.619534, 41.183167>,  <39.128685, 33.695198, 41.235855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.350269, 33.619534, 41.183167>,  <39.719574, 33.493427, 41.095352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.350269, 33.619534, 41.183167> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076604, -0.408895, 0.909360,
		0.376455, 0.856395, 0.353367,
		-0.923262, 0.315264, 0.219534,
		39.073292, 33.714111, 41.249027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.696804, 33.833672, 41.785496>,  <39.719574, 33.493427, 41.095352>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.696804, 33.833672, 41.785496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318371, 33.721859, 41.720024>,  <39.091312, 33.654770, 41.680740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.318371, 33.721859, 41.720024>,  <39.696804, 33.833672, 41.785496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318371, 33.721859, 41.720024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031707, -0.422962, 0.905593,
		-0.322376, 0.861953, 0.391293,
		-0.946080, -0.279535, -0.163683,
		39.034546, 33.637997, 41.670918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321209, 33.938828, 42.431530>,  <39.696804, 33.833672, 41.785496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321209, 33.938828, 42.431530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073479, 33.687901, 42.242676>,  <38.924839, 33.537346, 42.129364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.073479, 33.687901, 42.242676>,  <39.321209, 33.938828, 42.431530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073479, 33.687901, 42.242676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207756, -0.448966, 0.869061,
		-0.757149, 0.636319, 0.147727,
		-0.619325, -0.627317, -0.472133,
		38.887680, 33.499706, 42.101036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642212, 33.916840, 42.826241>,  <39.321209, 33.938828, 42.431530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642212, 33.916840, 42.826241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648441, 33.579643, 42.611156>,  <38.652180, 33.377327, 42.482109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648441, 33.579643, 42.611156>,  <38.642212, 33.916840, 42.826241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.648441, 33.579643, 42.611156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315816, -0.514388, 0.797286,
		-0.948693, 0.157399, -0.274241,
		0.015574, -0.842989, -0.537706,
		38.653114, 33.326748, 42.449844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.172451, 33.480221, 43.151180>,  <38.642212, 33.916840, 42.826241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.172451, 33.480221, 43.151180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393314, 33.218925, 42.943951>,  <38.525833, 33.062149, 42.819611>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393314, 33.218925, 42.943951>,  <38.172451, 33.480221, 43.151180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393314, 33.218925, 42.943951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253285, -0.723445, 0.642241,
		-0.794339, -0.223393, -0.564908,
		0.552152, -0.653241, -0.518078,
		38.558960, 33.022953, 42.788528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777969, 32.807636, 43.139256>,  <38.172451, 33.480221, 43.151180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777969, 32.807636, 43.139256> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157219, 32.710720, 43.056923>,  <38.384769, 32.652569, 43.007523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157219, 32.710720, 43.056923>,  <37.777969, 32.807636, 43.139256>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157219, 32.710720, 43.056923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065607, -0.782611, 0.619044,
		-0.311072, -0.573425, -0.757904,
		0.948119, -0.242291, -0.205828,
		38.441654, 32.638031, 42.995174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750313, 32.124359, 43.255947>,  <37.777969, 32.807636, 43.139256>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750313, 32.124359, 43.255947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140827, 32.210144, 43.267700>,  <38.375137, 32.261616, 43.274754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140827, 32.210144, 43.267700>,  <37.750313, 32.124359, 43.255947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.140827, 32.210144, 43.267700> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121796, -0.656469, 0.744456,
		0.178948, -0.723226, -0.667024,
		0.976290, 0.214460, 0.029387,
		38.433716, 32.274483, 43.276516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466404, 31.551870, 43.025818>,  <37.750313, 32.124359, 43.255947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466404, 31.551870, 43.025818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095837, 31.411535, 43.080460>,  <36.873497, 31.327333, 43.113247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095837, 31.411535, 43.080460>,  <37.466404, 31.551870, 43.025818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095837, 31.411535, 43.080460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350464, 0.671019, -0.653383,
		0.137565, -0.653182, -0.744600,
		-0.926418, -0.350838, 0.136608,
		36.817909, 31.306284, 43.121441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335316, 31.298689, 42.369438>,  <37.466404, 31.551870, 43.025818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335316, 31.298689, 42.369438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987385, 31.361254, 42.556599>,  <36.778625, 31.398792, 42.668896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987385, 31.361254, 42.556599>,  <37.335316, 31.298689, 42.369438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987385, 31.361254, 42.556599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264623, 0.652516, -0.710068,
		-0.416374, -0.741456, -0.526189,
		-0.869832, 0.156412, 0.467897,
		36.726437, 31.408178, 42.696968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834461, 31.430128, 41.751724>,  <37.335316, 31.298689, 42.369438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834461, 31.430128, 41.751724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638638, 31.553802, 42.077850>,  <36.521141, 31.628008, 42.273525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638638, 31.553802, 42.077850>,  <36.834461, 31.430128, 41.751724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638638, 31.553802, 42.077850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466891, 0.696746, -0.544572,
		-0.736439, -0.647263, -0.196744,
		-0.489562, 0.309186, 0.815312,
		36.491768, 31.646559, 42.322445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143940, 31.604504, 41.555962>,  <36.834461, 31.430128, 41.751724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143940, 31.604504, 41.555962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130039, 31.820303, 41.892467>,  <36.121700, 31.949783, 42.094372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130039, 31.820303, 41.892467>,  <36.143940, 31.604504, 41.555962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.130039, 31.820303, 41.892467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319882, 0.791489, -0.520789,
		-0.946820, -0.287204, 0.145072,
		-0.034750, 0.539499, 0.841269,
		36.119614, 31.982153, 42.144848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.651623, 32.101788, 41.442020>,  <36.143940, 31.604504, 41.555962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.651623, 32.101788, 41.442020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813637, 32.268761, 41.767399>,  <35.910847, 32.368942, 41.962627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813637, 32.268761, 41.767399>,  <35.651623, 32.101788, 41.442020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.813637, 32.268761, 41.767399> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375610, 0.887120, -0.268208,
		-0.833583, -0.196904, 0.516109,
		0.405039, 0.417430, 0.813447,
		35.935150, 32.393990, 42.011433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151096, 32.446953, 41.853905>,  <35.651623, 32.101788, 41.442020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151096, 32.446953, 41.853905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498940, 32.628937, 41.930622>,  <35.707645, 32.738129, 41.976654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.498940, 32.628937, 41.930622>,  <35.151096, 32.446953, 41.853905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498940, 32.628937, 41.930622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411237, 0.882398, -0.228598,
		-0.273245, 0.119918, 0.954441,
		0.869610, 0.454965, 0.191797,
		35.759823, 32.765427, 41.988159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001663, 33.083561, 42.211700>,  <35.151096, 32.446953, 41.853905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001663, 33.083561, 42.211700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375984, 33.157162, 42.091423>,  <35.600578, 33.201321, 42.019257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375984, 33.157162, 42.091423>,  <35.001663, 33.083561, 42.211700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375984, 33.157162, 42.091423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256679, 0.940317, -0.223427,
		0.241637, 0.286266, 0.927180,
		0.935803, 0.183999, -0.300694,
		35.656727, 33.212360, 42.001213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240540, 33.774067, 42.525936>,  <35.001663, 33.083561, 42.211700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240540, 33.774067, 42.525936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477482, 33.701244, 42.212002>,  <35.619648, 33.657551, 42.023640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477482, 33.701244, 42.212002>,  <35.240540, 33.774067, 42.525936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.477482, 33.701244, 42.212002> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277603, 0.868361, -0.410958,
		0.756338, 0.461307, 0.463841,
		0.592359, -0.182059, -0.784834,
		35.655190, 33.646626, 41.976551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.329315, 34.380356, 42.359386>,  <35.240540, 33.774067, 42.525936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.329315, 34.380356, 42.359386> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444225, 34.189526, 42.027153>,  <35.513172, 34.075027, 41.827812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444225, 34.189526, 42.027153>,  <35.329315, 34.380356, 42.359386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444225, 34.189526, 42.027153> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258707, 0.796266, -0.546838,
		0.922248, 0.371973, 0.105328,
		0.287278, -0.477071, -0.830587,
		35.530407, 34.046406, 41.777977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663887, 34.847691, 41.925728>,  <35.329315, 34.380356, 42.359386>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663887, 34.847691, 41.925728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565544, 34.535709, 41.695518>,  <35.506538, 34.348518, 41.557392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565544, 34.535709, 41.695518>,  <35.663887, 34.847691, 41.925728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565544, 34.535709, 41.695518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156511, 0.617898, -0.770524,
		0.956586, -0.099365, -0.273988,
		-0.245859, -0.779954, -0.575521,
		35.491787, 34.301723, 41.522861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968842, 35.008499, 41.255985>,  <35.663887, 34.847691, 41.925728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968842, 35.008499, 41.255985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685825, 34.730446, 41.205120>,  <35.516014, 34.563614, 41.174603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685825, 34.730446, 41.205120>,  <35.968842, 35.008499, 41.255985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685825, 34.730446, 41.205120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247037, 0.411899, -0.877104,
		0.662084, -0.589175, -0.463160,
		-0.707543, -0.695135, -0.127164,
		35.473564, 34.521904, 41.166969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.899242, 35.052891, 40.636475>,  <35.968842, 35.008499, 41.255985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.899242, 35.052891, 40.636475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572674, 34.834000, 40.710220>,  <35.376732, 34.702663, 40.754467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572674, 34.834000, 40.710220>,  <35.899242, 35.052891, 40.636475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572674, 34.834000, 40.710220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441216, 0.385188, -0.810530,
		0.372521, -0.743088, -0.555921,
		-0.816429, -0.547221, 0.184371,
		35.327747, 34.669830, 40.765530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.717224, 28.737070, 45.790306> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408417, 28.944559, 45.937229>,  <37.223133, 29.069052, 46.025383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.408417, 28.944559, 45.937229>,  <37.717224, 28.737070, 45.790306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408417, 28.944559, 45.937229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218329, 0.326297, -0.919708,
		-0.596922, -0.790227, -0.138656,
		-0.772021, 0.518722, 0.367303,
		37.176811, 29.100176, 46.047421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258724, 28.617353, 45.341919>,  <37.717224, 28.737070, 45.790306>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258724, 28.617353, 45.341919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113712, 28.940838, 45.527199>,  <37.026703, 29.134930, 45.638367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.113712, 28.940838, 45.527199>,  <37.258724, 28.617353, 45.341919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.113712, 28.940838, 45.527199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207085, 0.414684, -0.886088,
		-0.908672, -0.417158, 0.017136,
		-0.362533, 0.808713, 0.463199,
		37.004951, 29.183453, 45.666157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547703, 28.784800, 45.121067>,  <37.258724, 28.617353, 45.341919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547703, 28.784800, 45.121067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687950, 29.127453, 45.272457>,  <36.772099, 29.333044, 45.363293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.687950, 29.127453, 45.272457>,  <36.547703, 28.784800, 45.121067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687950, 29.127453, 45.272457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331421, 0.491477, -0.805364,
		-0.875915, 0.156940, 0.456228,
		0.350619, 0.856633, 0.378478,
		36.793137, 29.384443, 45.386002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011375, 29.223915, 45.052437>,  <36.547703, 28.784800, 45.121067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011375, 29.223915, 45.052437> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.320286, 29.474661, 45.093662>,  <36.505634, 29.625109, 45.118397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.320286, 29.474661, 45.093662>,  <36.011375, 29.223915, 45.052437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320286, 29.474661, 45.093662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283085, 0.484809, -0.827541,
		-0.568723, 0.609918, 0.551864,
		0.772281, 0.626866, 0.103063,
		36.551971, 29.662720, 45.124580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753582, 29.934322, 44.824715>,  <36.011375, 29.223915, 45.052437>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753582, 29.934322, 44.824715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152592, 29.957348, 44.808582>,  <36.391998, 29.971163, 44.798904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.152592, 29.957348, 44.808582>,  <35.753582, 29.934322, 44.824715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152592, 29.957348, 44.808582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063115, 0.481143, -0.874367,
		-0.030928, 0.874750, 0.483586,
		0.997527, 0.057564, -0.040329,
		36.451851, 29.974617, 44.796482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900932, 30.714743, 44.836315>,  <35.753582, 29.934322, 44.824715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900932, 30.714743, 44.836315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.228912, 30.534781, 44.694748>,  <36.425701, 30.426804, 44.609806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.228912, 30.534781, 44.694748>,  <35.900932, 30.714743, 44.836315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.228912, 30.534781, 44.694748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031974, 0.581315, -0.813050,
		0.571536, 0.677980, 0.462266,
		0.819954, -0.449907, -0.353920,
		36.474899, 30.399809, 44.588573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307964, 31.230867, 44.587547>,  <35.900932, 30.714743, 44.836315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307964, 31.230867, 44.587547> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480373, 30.920494, 44.403309>,  <36.583820, 30.734270, 44.292767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.480373, 30.920494, 44.403309>,  <36.307964, 31.230867, 44.587547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.480373, 30.920494, 44.403309> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086104, 0.472745, -0.876983,
		0.898223, 0.417660, 0.136953,
		0.431024, -0.775934, -0.460592,
		36.609680, 30.687714, 44.265133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.915699, 31.475224, 44.256290>,  <36.307964, 31.230867, 44.587547>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.915699, 31.475224, 44.256290> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812801, 31.130653, 44.081123>,  <36.751064, 30.923912, 43.976025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.812801, 31.130653, 44.081123>,  <36.915699, 31.475224, 44.256290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812801, 31.130653, 44.081123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112904, 0.423274, -0.898940,
		0.959729, -0.280686, -0.011624,
		-0.257240, -0.861426, -0.437919,
		36.735630, 30.872225, 43.949749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410912, 31.406532, 43.750553>,  <36.915699, 31.475224, 44.256290>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410912, 31.406532, 43.750553> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095108, 31.192907, 43.629585>,  <36.905628, 31.064732, 43.557003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.095108, 31.192907, 43.629585>,  <37.410912, 31.406532, 43.750553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095108, 31.192907, 43.629585> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019861, 0.470258, -0.882306,
		0.613424, -0.702590, -0.360663,
		-0.789504, -0.534064, -0.302421,
		36.858257, 31.032688, 43.538860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090183, 31.511250, 43.419609>,  <37.410912, 31.406532, 43.750553>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090183, 31.511250, 43.419609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385799, 31.763371, 43.514717>,  <38.563168, 31.914644, 43.571781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.385799, 31.763371, 43.514717>,  <38.090183, 31.511250, 43.419609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385799, 31.763371, 43.514717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322446, -0.640869, 0.696646,
		0.591479, -0.438182, -0.676867,
		0.739041, 0.630304, 0.237770,
		38.607513, 31.952461, 43.586048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736977, 31.107498, 43.378483>,  <38.090183, 31.511250, 43.419609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736977, 31.107498, 43.378483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.781811, 31.405415, 43.641609>,  <38.808712, 31.584166, 43.799484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.781811, 31.405415, 43.641609>,  <38.736977, 31.107498, 43.378483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781811, 31.405415, 43.641609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230564, -0.663413, 0.711846,
		0.966580, 0.071877, -0.246084,
		0.112090, 0.744793, 0.657813,
		38.815437, 31.628853, 43.838955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273556, 30.931911, 43.756638>,  <38.736977, 31.107498, 43.378483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273556, 30.931911, 43.756638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116982, 31.199644, 44.009232>,  <39.023037, 31.360283, 44.160786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.116982, 31.199644, 44.009232>,  <39.273556, 30.931911, 43.756638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116982, 31.199644, 44.009232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519559, -0.405637, 0.752009,
		0.759496, 0.622459, -0.188974,
		-0.391440, 0.669331, 0.631483,
		38.999550, 31.400444, 44.198677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784039, 31.260715, 44.156830>,  <39.273556, 30.931911, 43.756638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784039, 31.260715, 44.156830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474537, 31.341927, 44.396858>,  <39.288837, 31.390654, 44.540874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.474537, 31.341927, 44.396858>,  <39.784039, 31.260715, 44.156830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.474537, 31.341927, 44.396858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491722, -0.404718, 0.770981,
		0.399391, 0.891618, 0.213319,
		-0.773754, 0.203029, 0.600069,
		39.242409, 31.402836, 44.576878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008518, 31.622166, 44.799469>,  <39.784039, 31.260715, 44.156830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.008518, 31.622166, 44.799469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655647, 31.461823, 44.898327>,  <39.443924, 31.365616, 44.957642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.655647, 31.461823, 44.898327>,  <40.008518, 31.622166, 44.799469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655647, 31.461823, 44.898327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384165, -0.309043, 0.870005,
		-0.272370, 0.862441, 0.426626,
		-0.882174, -0.400858, 0.247146,
		39.390995, 31.341564, 44.972469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117199, 31.637949, 45.466602>,  <40.008518, 31.622166, 44.799469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117199, 31.637949, 45.466602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775608, 31.434175, 45.424267>,  <39.570652, 31.311913, 45.398865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.775608, 31.434175, 45.424267>,  <40.117199, 31.637949, 45.466602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775608, 31.434175, 45.424267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040775, -0.268306, 0.962471,
		-0.518709, 0.817613, 0.249899,
		-0.853978, -0.509432, -0.105834,
		39.519413, 31.281345, 45.392517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.704811, 31.903904, 46.062469>,  <40.117199, 31.637949, 45.466602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.704811, 31.903904, 46.062469> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571918, 31.557495, 45.913002>,  <39.492184, 31.349649, 45.823322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.571918, 31.557495, 45.913002>,  <39.704811, 31.903904, 46.062469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.571918, 31.557495, 45.913002> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013423, -0.400470, 0.916211,
		-0.943103, 0.299376, 0.144673,
		-0.332229, -0.866024, -0.373666,
		39.472248, 31.297688, 45.800903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184891, 31.612637, 46.551613>,  <39.704811, 31.903904, 46.062469>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184891, 31.612637, 46.551613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302662, 31.294897, 46.339077>,  <39.373325, 31.104254, 46.211555>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.302662, 31.294897, 46.339077>,  <39.184891, 31.612637, 46.551613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302662, 31.294897, 46.339077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114486, -0.522664, 0.844817,
		-0.948792, -0.309568, -0.062945,
		0.294428, -0.794349, -0.531340,
		39.390991, 31.056593, 46.179676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805958, 31.094177, 46.762039>,  <39.184891, 31.612637, 46.551613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.805958, 31.094177, 46.762039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.142929, 30.926561, 46.626556>,  <39.345112, 30.825993, 46.545269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.142929, 30.926561, 46.626556>,  <38.805958, 31.094177, 46.762039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142929, 30.926561, 46.626556> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118364, -0.469334, 0.875052,
		-0.525649, -0.777258, -0.345780,
		0.842427, -0.419042, -0.338704,
		39.395657, 30.800850, 46.524944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750652, 30.384007, 46.980492>,  <38.805958, 31.094177, 46.762039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750652, 30.384007, 46.980492> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.140320, 30.448425, 46.917171>,  <39.374119, 30.487078, 46.879181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.140320, 30.448425, 46.917171>,  <38.750652, 30.384007, 46.980492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140320, 30.448425, 46.917171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224841, -0.626422, 0.746353,
		0.021036, -0.762666, -0.646451,
		0.974169, 0.161049, -0.158301,
		39.432571, 30.496740, 46.869682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072441, 29.738945, 47.016895>,  <38.750652, 30.384007, 46.980492>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072441, 29.738945, 47.016895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.383320, 29.981960, 47.082455>,  <39.569847, 30.127769, 47.121792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.383320, 29.981960, 47.082455>,  <39.072441, 29.738945, 47.016895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383320, 29.981960, 47.082455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276432, -0.563624, 0.778404,
		0.565291, -0.559663, -0.605989,
		0.777194, 0.607540, 0.163902,
		39.616478, 30.164223, 47.131626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619137, 29.291958, 47.011990>,  <39.072441, 29.738945, 47.016895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619137, 29.291958, 47.011990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765713, 29.629295, 47.169212>,  <39.853657, 29.831697, 47.263546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.765713, 29.629295, 47.169212>,  <39.619137, 29.291958, 47.011990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765713, 29.629295, 47.169212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399586, -0.524136, 0.752073,
		0.840270, -0.118530, -0.529052,
		0.366439, 0.843346, 0.393053,
		39.875645, 29.882299, 47.287128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.350174, 29.226423, 47.116856>,  <39.619137, 29.291958, 47.011990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.350174, 29.226423, 47.116856> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246811, 29.516581, 47.372051>,  <40.184792, 29.690676, 47.525169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.246811, 29.516581, 47.372051>,  <40.350174, 29.226423, 47.116856>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.246811, 29.516581, 47.372051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444114, -0.497287, 0.745297,
		0.857897, 0.475932, -0.193654,
		-0.258409, 0.725393, 0.637989,
		40.169289, 29.734198, 47.563450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926411, 29.225544, 47.579723>,  <40.350174, 29.226423, 47.116856>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.926411, 29.225544, 47.579723> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.648052, 29.446264, 47.763569>,  <40.481037, 29.578697, 47.873875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.648052, 29.446264, 47.763569>,  <40.926411, 29.225544, 47.579723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648052, 29.446264, 47.763569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115755, -0.545446, 0.830114,
		0.708754, 0.630874, 0.315699,
		-0.695894, 0.551802, 0.459614,
		40.439285, 29.611805, 47.901455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.261814, 32.168404, 49.977112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493774, 31.970615, 49.718124>,  <33.632950, 31.851942, 49.562733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.493774, 31.970615, 49.718124>,  <33.261814, 32.168404, 49.977112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493774, 31.970615, 49.718124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111246, 0.835358, -0.538331,
		0.807056, 0.240150, 0.539433,
		0.579900, -0.494473, -0.647466,
		33.667744, 31.822273, 49.523884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787006, 32.577187, 49.706478>,  <33.261814, 32.168404, 49.977112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787006, 32.577187, 49.706478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.817066, 32.294117, 49.425468>,  <33.835102, 32.124275, 49.256863>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.817066, 32.294117, 49.425468>,  <33.787006, 32.577187, 49.706478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817066, 32.294117, 49.425468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340638, 0.680356, -0.648908,
		0.937187, -0.190544, 0.292188,
		0.075147, -0.707678, -0.702527,
		33.839611, 32.081814, 49.214710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464500, 32.697742, 49.428482>,  <33.787006, 32.577187, 49.706478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464500, 32.697742, 49.428482> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.207466, 32.533340, 49.169823>,  <34.053246, 32.434700, 49.014629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.207466, 32.533340, 49.169823>,  <34.464500, 32.697742, 49.428482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.207466, 32.533340, 49.169823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213705, 0.714324, -0.666387,
		0.735807, -0.566404, -0.371181,
		-0.642587, -0.411009, -0.646648,
		34.014690, 32.410038, 48.975830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754555, 32.907150, 48.779667>,  <34.464500, 32.697742, 49.428482>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754555, 32.907150, 48.779667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404266, 32.755531, 48.660046>,  <34.194092, 32.664558, 48.588272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.404266, 32.755531, 48.660046>,  <34.754555, 32.907150, 48.779667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404266, 32.755531, 48.660046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038168, 0.563104, -0.825504,
		0.481300, -0.734329, -0.478657,
		-0.875725, -0.379046, -0.299049,
		34.141548, 32.641819, 48.570332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897110, 32.629467, 48.076504>,  <34.754555, 32.907150, 48.779667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897110, 32.629467, 48.076504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.507175, 32.703484, 48.126217>,  <34.273212, 32.747894, 48.156044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.507175, 32.703484, 48.126217>,  <34.897110, 32.629467, 48.076504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507175, 32.703484, 48.126217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017355, 0.618879, -0.785295,
		-0.222233, -0.763379, -0.606519,
		-0.974839, 0.185044, 0.124287,
		34.214725, 32.758995, 48.163502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576767, 32.523006, 47.503166>,  <34.897110, 32.629467, 48.076504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576767, 32.523006, 47.503166> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339077, 32.788723, 47.684547>,  <34.196465, 32.948151, 47.793377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339077, 32.788723, 47.684547>,  <34.576767, 32.523006, 47.503166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339077, 32.788723, 47.684547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048264, 0.592219, -0.804331,
		-0.802851, -0.456067, -0.383972,
		-0.594223, 0.664289, 0.453451,
		34.160809, 32.988010, 47.820583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290398, 32.845245, 46.936310>,  <34.576767, 32.523006, 47.503166>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290398, 32.845245, 46.936310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221180, 33.080093, 47.252625>,  <34.179649, 33.221001, 47.442413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.221180, 33.080093, 47.252625>,  <34.290398, 32.845245, 46.936310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221180, 33.080093, 47.252625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109410, 0.809393, -0.576986,
		-0.978819, -0.013322, -0.204294,
		-0.173041, 0.587117, 0.790791,
		34.169266, 33.256229, 47.489861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700882, 33.163345, 46.726494>,  <34.290398, 32.845245, 46.936310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700882, 33.163345, 46.726494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.881695, 33.381992, 47.008450>,  <33.990185, 33.513180, 47.177624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.881695, 33.381992, 47.008450>,  <33.700882, 33.163345, 46.726494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881695, 33.381992, 47.008450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060275, 0.769712, -0.635540,
		-0.889961, 0.329774, 0.314990,
		0.452036, 0.546620, 0.704890,
		34.017307, 33.545979, 47.219917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.357292, 33.700623, 46.619175>,  <33.700882, 33.163345, 46.726494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.357292, 33.700623, 46.619175> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679253, 33.831158, 46.817425>,  <33.872429, 33.909477, 46.936375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.679253, 33.831158, 46.817425>,  <33.357292, 33.700623, 46.619175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679253, 33.831158, 46.817425> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113244, 0.735385, -0.668120,
		-0.582507, 0.593895, 0.554955,
		0.804899, 0.326339, 0.495622,
		33.920723, 33.929058, 46.966110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256760, 34.375458, 46.770760>,  <33.357292, 33.700623, 46.619175>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256760, 34.375458, 46.770760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654221, 34.334805, 46.790051>,  <33.892696, 34.310413, 46.801624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.654221, 34.334805, 46.790051>,  <33.256760, 34.375458, 46.770760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654221, 34.334805, 46.790051> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105780, 0.698193, -0.708052,
		0.038294, 0.708658, 0.704512,
		0.993652, -0.101637, 0.048226,
		33.952316, 34.304314, 46.804520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488209, 35.008064, 46.931431>,  <33.256760, 34.375458, 46.770760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488209, 35.008064, 46.931431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810120, 34.851536, 46.752907>,  <34.003265, 34.757618, 46.645790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.810120, 34.851536, 46.752907>,  <33.488209, 35.008064, 46.931431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810120, 34.851536, 46.752907> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091042, 0.824394, -0.558647,
		0.586547, 0.408956, 0.699083,
		0.804782, -0.391319, -0.446314,
		34.051556, 34.734138, 46.619011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956150, 35.599369, 46.821018>,  <33.488209, 35.008064, 46.931431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956150, 35.599369, 46.821018> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128494, 35.314766, 46.598988>,  <34.231903, 35.144005, 46.465767>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.128494, 35.314766, 46.598988>,  <33.956150, 35.599369, 46.821018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128494, 35.314766, 46.598988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106999, 0.651043, -0.751461,
		0.896051, 0.264384, 0.356641,
		0.430863, -0.711508, -0.555079,
		34.257751, 35.101315, 46.432465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.545223, 35.841236, 46.513828>,  <33.956150, 35.599369, 46.821018>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.545223, 35.841236, 46.513828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.421028, 35.541126, 46.280354>,  <34.346512, 35.361061, 46.140270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.421028, 35.541126, 46.280354>,  <34.545223, 35.841236, 46.513828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421028, 35.541126, 46.280354> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040039, 0.623809, -0.780551,
		0.949735, -0.218978, -0.223722,
		-0.310483, -0.750274, -0.583686,
		34.327885, 35.316044, 46.105247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.859501, 35.942200, 45.830975>,  <34.545223, 35.841236, 46.513828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.859501, 35.942200, 45.830975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553505, 35.694244, 45.761082>,  <34.369907, 35.545471, 45.719147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.553505, 35.694244, 45.761082>,  <34.859501, 35.942200, 45.830975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553505, 35.694244, 45.761082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228420, 0.514806, -0.826316,
		0.602181, -0.592207, -0.535415,
		-0.764985, -0.619891, -0.174734,
		34.324009, 35.508278, 45.708660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.557945, 35.821213, 45.569168>,  <34.859501, 35.942200, 45.830975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.557945, 35.821213, 45.569168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882015, 36.054276, 45.594872>,  <36.076458, 36.194115, 45.610294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882015, 36.054276, 45.594872>,  <35.557945, 35.821213, 45.569168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882015, 36.054276, 45.594872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201820, -0.380169, 0.902630,
		0.550355, -0.718317, -0.425595,
		0.810172, 0.582660, 0.064257,
		36.125069, 36.229073, 45.614147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197037, 35.383953, 45.692825>,  <35.557945, 35.821213, 45.569168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197037, 35.383953, 45.692825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269875, 35.757317, 45.816494>,  <36.313576, 35.981335, 45.890694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.269875, 35.757317, 45.816494>,  <36.197037, 35.383953, 45.692825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269875, 35.757317, 45.816494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349113, -0.355316, 0.867105,
		0.919218, -0.049959, -0.390566,
		0.182095, 0.933410, 0.309172,
		36.324505, 36.037338, 45.909245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886070, 35.351585, 45.984718>,  <36.197037, 35.383953, 45.692825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886070, 35.351585, 45.984718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741314, 35.687550, 46.146500>,  <36.654461, 35.889130, 46.243568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.741314, 35.687550, 46.146500>,  <36.886070, 35.351585, 45.984718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741314, 35.687550, 46.146500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242859, -0.333934, 0.910773,
		0.900032, 0.427822, -0.083134,
		-0.361887, 0.839915, 0.404451,
		36.632748, 35.939526, 46.267834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337727, 35.492592, 46.539040>,  <36.886070, 35.351585, 45.984718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337727, 35.492592, 46.539040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015934, 35.712101, 46.629955>,  <36.822857, 35.843807, 46.684505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.015934, 35.712101, 46.629955>,  <37.337727, 35.492592, 46.539040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015934, 35.712101, 46.629955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031889, -0.342196, 0.939087,
		0.593121, 0.762726, 0.257791,
		-0.804482, 0.548771, 0.227287,
		36.774590, 35.876732, 46.698143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505848, 35.788132, 47.166611>,  <37.337727, 35.492592, 46.539040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505848, 35.788132, 47.166611> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122257, 35.709770, 47.084656>,  <36.892101, 35.662754, 47.035484>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.122257, 35.709770, 47.084656>,  <37.505848, 35.788132, 47.166611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.122257, 35.709770, 47.084656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037624, -0.628414, 0.776969,
		-0.280966, 0.752806, 0.595265,
		-0.958980, -0.195905, -0.204887,
		36.834564, 35.650997, 47.023190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238014, 35.630230, 47.883419>,  <37.505848, 35.788132, 47.166611>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238014, 35.630230, 47.883419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979324, 35.500618, 47.607231>,  <36.824112, 35.422852, 47.441517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.979324, 35.500618, 47.607231>,  <37.238014, 35.630230, 47.883419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979324, 35.500618, 47.607231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227662, -0.781997, 0.580216,
		-0.727953, 0.532435, 0.431969,
		-0.646726, -0.324027, -0.690473,
		36.785305, 35.403408, 47.400089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651924, 35.554810, 48.341404>,  <37.238014, 35.630230, 47.883419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651924, 35.554810, 48.341404> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.592945, 35.333679, 48.013344>,  <36.557556, 35.201000, 47.816509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.592945, 35.333679, 48.013344>,  <36.651924, 35.554810, 48.341404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.592945, 35.333679, 48.013344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257730, -0.779087, 0.571488,
		-0.954900, 0.295640, -0.027607,
		-0.147447, -0.552829, -0.820146,
		36.548710, 35.167831, 47.767300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000191, 35.212151, 48.454823>,  <36.651924, 35.554810, 48.341404>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000191, 35.212151, 48.454823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.180023, 34.988190, 48.176434>,  <36.287922, 34.853813, 48.009399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.180023, 34.988190, 48.176434>,  <36.000191, 35.212151, 48.454823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180023, 34.988190, 48.176434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021942, -0.772000, 0.635243,
		-0.892969, -0.300866, -0.334793,
		0.449583, -0.559906, -0.695974,
		36.314899, 34.820217, 47.967640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634586, 34.594284, 48.466244>,  <36.000191, 35.212151, 48.454823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634586, 34.594284, 48.466244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990929, 34.519176, 48.300774>,  <36.204735, 34.474113, 48.201492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.990929, 34.519176, 48.300774>,  <35.634586, 34.594284, 48.466244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990929, 34.519176, 48.300774> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131360, -0.765223, 0.630221,
		-0.434889, -0.615773, -0.657035,
		0.890851, -0.187768, -0.413675,
		36.258183, 34.462845, 48.176670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580692, 33.858536, 48.388126>,  <35.634586, 34.594284, 48.466244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580692, 33.858536, 48.388126> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968044, 33.950466, 48.349289>,  <36.200455, 34.005623, 48.325985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.968044, 33.950466, 48.349289>,  <35.580692, 33.858536, 48.388126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.968044, 33.950466, 48.349289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246516, -0.821477, 0.514203,
		0.038417, -0.521877, -0.852155,
		0.968377, 0.229824, -0.097092,
		36.258556, 34.019413, 48.320160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971825, 33.303978, 48.110218>,  <35.580692, 33.858536, 48.388126>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971825, 33.303978, 48.110218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234169, 33.515839, 48.325371>,  <36.391575, 33.642956, 48.454464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234169, 33.515839, 48.325371>,  <35.971825, 33.303978, 48.110218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234169, 33.515839, 48.325371> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254485, -0.825960, 0.503018,
		0.710692, -0.193027, -0.676504,
		0.655861, 0.529651, 0.537881,
		36.430927, 33.674732, 48.486736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.675621, 32.894676, 48.190140>,  <35.971825, 33.303978, 48.110218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.675621, 32.894676, 48.190140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650806, 33.171131, 48.478161>,  <36.635918, 33.337006, 48.650974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.650806, 33.171131, 48.478161>,  <36.675621, 32.894676, 48.190140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650806, 33.171131, 48.478161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338186, -0.664209, 0.666676,
		0.939032, 0.284869, -0.192530,
		-0.062035, 0.691141, 0.720052,
		36.632195, 33.378475, 48.694176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169312, 32.710182, 48.791412>,  <36.675621, 32.894676, 48.190140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169312, 32.710182, 48.791412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922359, 32.939159, 49.007248>,  <36.774189, 33.076546, 49.136749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.922359, 32.939159, 49.007248>,  <37.169312, 32.710182, 48.791412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922359, 32.939159, 49.007248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227000, -0.527099, 0.818924,
		0.753201, 0.628074, 0.195477,
		-0.617380, 0.572442, 0.539585,
		36.737144, 33.110893, 49.169125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556324, 32.892490, 49.385792>,  <37.169312, 32.710182, 48.791412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.556324, 32.892490, 49.385792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168503, 32.939175, 49.471909>,  <36.935810, 32.967186, 49.523579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.168503, 32.939175, 49.471909>,  <37.556324, 32.892490, 49.385792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168503, 32.939175, 49.471909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112562, -0.568358, 0.815046,
		0.217488, 0.814461, 0.537914,
		-0.969551, 0.116714, 0.215288,
		36.877636, 32.974190, 49.536495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144974, 33.342346, 49.664639>,  <37.556324, 32.892490, 49.385792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144974, 33.342346, 49.664639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535717, 33.281990, 49.725281>,  <38.770164, 33.245777, 49.761665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535717, 33.281990, 49.725281>,  <38.144974, 33.342346, 49.664639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535717, 33.281990, 49.725281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200439, 0.893174, -0.402572,
		-0.074666, 0.423643, 0.902747,
		0.976857, -0.150887, 0.151604,
		38.828773, 33.236725, 49.770763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433285, 33.971310, 50.010502>,  <38.144974, 33.342346, 49.664639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433285, 33.971310, 50.010502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.740650, 33.787830, 49.832005>,  <38.925072, 33.677742, 49.724907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.740650, 33.787830, 49.832005>,  <38.433285, 33.971310, 50.010502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.740650, 33.787830, 49.832005> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320809, 0.879466, -0.351598,
		0.553732, 0.127016, 0.822951,
		0.768416, -0.458701, -0.446240,
		38.971176, 33.650219, 49.698132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.084755, 34.449348, 50.004078>,  <38.433285, 33.971310, 50.010502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.084755, 34.449348, 50.004078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.172710, 34.187855, 49.714451>,  <39.225483, 34.030956, 49.540672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.172710, 34.187855, 49.714451>,  <39.084755, 34.449348, 50.004078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172710, 34.187855, 49.714451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121015, 0.754783, -0.644715,
		0.967989, 0.054144, 0.245082,
		0.219891, -0.653736, -0.724070,
		39.238678, 33.991734, 49.497231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525906, 34.779755, 49.633953>,  <39.084755, 34.449348, 50.004078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525906, 34.779755, 49.633953> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453133, 34.478249, 49.381367>,  <39.409470, 34.297344, 49.229816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.453133, 34.478249, 49.381367>,  <39.525906, 34.779755, 49.633953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453133, 34.478249, 49.381367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114333, 0.621607, -0.774940,
		0.976641, -0.213186, -0.026912,
		-0.181935, -0.753761, -0.631462,
		39.398552, 34.252121, 49.191929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.122856, 34.771465, 49.021576>,  <39.525906, 34.779755, 49.633953>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.122856, 34.771465, 49.021576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.786312, 34.589527, 48.904797>,  <39.584385, 34.480366, 48.834728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.786312, 34.589527, 48.904797>,  <40.122856, 34.771465, 49.021576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786312, 34.589527, 48.904797> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085792, 0.420920, -0.903031,
		0.533625, -0.784820, -0.315123,
		-0.841358, -0.454845, -0.291945,
		39.533905, 34.453075, 48.817215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303677, 34.515972, 48.317093>,  <40.122856, 34.771465, 49.021576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303677, 34.515972, 48.317093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.908661, 34.556667, 48.365131>,  <39.671654, 34.581085, 48.393955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.908661, 34.556667, 48.365131>,  <40.303677, 34.515972, 48.317093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.908661, 34.556667, 48.365131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066505, 0.421867, -0.904215,
		-0.142658, -0.900931, -0.409843,
		-0.987535, 0.101737, 0.120099,
		39.612400, 34.587189, 48.401161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.057117, 34.278488, 47.718533>,  <40.303677, 34.515972, 48.317093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.057117, 34.278488, 47.718533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736561, 34.466179, 47.866909>,  <39.544228, 34.578793, 47.955936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.736561, 34.466179, 47.866909>,  <40.057117, 34.278488, 47.718533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.736561, 34.466179, 47.866909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144376, 0.450073, -0.881243,
		-0.580456, -0.759775, -0.292939,
		-0.801390, 0.469230, 0.370941,
		39.496143, 34.606949, 47.978191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451328, 34.247929, 47.237007>,  <40.057117, 34.278488, 47.718533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451328, 34.247929, 47.237007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343590, 34.559177, 47.463982>,  <39.278946, 34.745926, 47.600166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.343590, 34.559177, 47.463982>,  <39.451328, 34.247929, 47.237007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343590, 34.559177, 47.463982> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125592, 0.555794, -0.821778,
		-0.954818, -0.292611, -0.051977,
		-0.269350, 0.778121, 0.567432,
		39.262783, 34.792614, 47.634212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994190, 34.564152, 46.781826>,  <39.451328, 34.247929, 47.237007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994190, 34.564152, 46.781826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.126820, 34.830185, 47.049473>,  <39.206398, 34.989803, 47.210060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.126820, 34.830185, 47.049473>,  <38.994190, 34.564152, 46.781826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126820, 34.830185, 47.049473> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123190, 0.733692, -0.668221,
		-0.935351, 0.139138, 0.325207,
		0.331577, 0.665084, 0.669119,
		39.226292, 35.029709, 47.250210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503590, 35.040485, 46.870052>,  <38.994190, 34.564152, 46.781826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503590, 35.040485, 46.870052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819687, 35.249664, 46.997829>,  <39.009346, 35.375172, 47.074493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819687, 35.249664, 46.997829>,  <38.503590, 35.040485, 46.870052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819687, 35.249664, 46.997829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177008, 0.693861, -0.698015,
		-0.586673, 0.495057, 0.640885,
		0.790242, 0.522948, 0.319440,
		39.056759, 35.406548, 47.093662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309631, 35.745289, 46.785637>,  <38.503590, 35.040485, 46.870052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309631, 35.745289, 46.785637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.706543, 35.772476, 46.827141>,  <38.944691, 35.788788, 46.852043>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.706543, 35.772476, 46.827141>,  <38.309631, 35.745289, 46.785637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706543, 35.772476, 46.827141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007474, 0.802220, -0.596982,
		-0.123811, 0.593148, 0.795517,
		0.992278, 0.067968, 0.103757,
		39.004227, 35.792866, 46.858269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423210, 36.515511, 46.873135>,  <38.309631, 35.745289, 46.785637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423210, 36.515511, 46.873135> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.743515, 36.314781, 46.742325>,  <38.935699, 36.194344, 46.663837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.743515, 36.314781, 46.742325>,  <38.423210, 36.515511, 46.873135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.743515, 36.314781, 46.742325> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197040, 0.736279, -0.647355,
		0.565640, 0.453943, 0.688467,
		0.800767, -0.501825, -0.327023,
		38.983746, 36.164234, 46.644218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.874035, 37.022038, 46.818832>,  <38.423210, 36.515511, 46.873135>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.874035, 37.022038, 46.818832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052273, 36.737923, 46.600864>,  <39.159218, 36.567455, 46.470081>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.052273, 36.737923, 46.600864>,  <38.874035, 37.022038, 46.818832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052273, 36.737923, 46.600864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013796, 0.614069, -0.789132,
		0.895127, 0.344117, 0.283427,
		0.445598, -0.710283, -0.544922,
		39.185951, 36.524837, 46.437389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494114, 37.337326, 46.502697>,  <38.874035, 37.022038, 46.818832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494114, 37.337326, 46.502697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.384525, 37.021286, 46.283360>,  <39.318771, 36.831661, 46.151756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.384525, 37.021286, 46.283360>,  <39.494114, 37.337326, 46.502697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.384525, 37.021286, 46.283360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047851, 0.580650, -0.812746,
		0.960546, -0.196432, -0.196890,
		-0.273974, -0.790101, -0.548342,
		39.302334, 36.784256, 46.118858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<33.036915, 38.170181, 30.738369> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.748703, 38.424606, 30.627907>,  <32.575775, 38.577263, 30.561628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.748703, 38.424606, 30.627907>,  <33.036915, 38.170181, 30.738369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748703, 38.424606, 30.627907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623405, -0.419793, 0.659651,
		0.303651, 0.647455, 0.698998,
		-0.720529, 0.636063, -0.276156,
		32.532543, 38.615425, 30.545059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747898, 38.727680, 31.309624>,  <33.036915, 38.170181, 30.738369>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747898, 38.727680, 31.309624> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.467632, 38.617466, 31.046366>,  <32.299473, 38.551338, 30.888411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.467632, 38.617466, 31.046366>,  <32.747898, 38.727680, 31.309624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467632, 38.617466, 31.046366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640857, -0.162458, 0.750273,
		-0.313648, 0.947464, -0.062751,
		-0.700662, -0.275536, -0.658144,
		32.257435, 38.534805, 30.848923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127312, 39.087593, 31.483406>,  <32.747898, 38.727680, 31.309624>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127312, 39.087593, 31.483406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025066, 38.766155, 31.268412>,  <31.963718, 38.573292, 31.139416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025066, 38.766155, 31.268412>,  <32.127312, 39.087593, 31.483406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025066, 38.766155, 31.268412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768911, -0.168020, 0.616884,
		-0.586035, 0.570965, -0.574946,
		-0.255617, -0.803597, -0.537486,
		31.948381, 38.525078, 31.107166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526157, 39.259205, 31.116661>,  <32.127312, 39.087593, 31.483406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526157, 39.259205, 31.116661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.556826, 38.863903, 31.169540>,  <31.575226, 38.626720, 31.201269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.556826, 38.863903, 31.169540>,  <31.526157, 39.259205, 31.116661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556826, 38.863903, 31.169540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793332, 0.019847, 0.608465,
		-0.603941, -0.151530, -0.782492,
		0.076670, -0.988253, 0.132200,
		31.579826, 38.567429, 31.209200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858473, 38.953922, 30.873903>,  <31.526157, 39.259205, 31.116661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858473, 38.953922, 30.873903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041656, 38.707481, 31.130245>,  <31.151566, 38.559616, 31.284050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.041656, 38.707481, 31.130245>,  <30.858473, 38.953922, 30.873903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041656, 38.707481, 31.130245> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801661, 0.025351, 0.597241,
		-0.384207, -0.787260, -0.482293,
		0.457957, -0.616100, 0.640856,
		31.179043, 38.522652, 31.322502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306721, 38.664692, 31.114367>,  <30.858473, 38.953922, 30.873903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306721, 38.664692, 31.114367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566650, 38.507675, 31.374718>,  <30.722609, 38.413467, 31.530928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.566650, 38.507675, 31.374718>,  <30.306721, 38.664692, 31.114367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.566650, 38.507675, 31.374718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751922, -0.206844, 0.625963,
		-0.111083, -0.896176, -0.429569,
		0.649826, -0.392536, 0.650877,
		30.761599, 38.389912, 31.569981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009079, 37.973751, 31.211130>,  <30.306721, 38.664692, 31.114367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009079, 37.973751, 31.211130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253054, 38.070599, 31.512953>,  <30.399439, 38.128708, 31.694046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.253054, 38.070599, 31.512953>,  <30.009079, 37.973751, 31.211130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253054, 38.070599, 31.512953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689606, -0.306941, 0.655920,
		0.390414, -0.920417, -0.020249,
		0.609935, 0.242117, 0.754559,
		30.436033, 38.143234, 31.739321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233473, 37.336777, 31.694321>,  <30.009079, 37.973751, 31.211130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233473, 37.336777, 31.694321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271303, 37.658627, 31.928802>,  <30.294001, 37.851734, 32.069492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.271303, 37.658627, 31.928802>,  <30.233473, 37.336777, 31.694321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.271303, 37.658627, 31.928802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481816, -0.478288, 0.734230,
		0.871153, -0.351884, 0.342446,
		0.094576, 0.804623, 0.586206,
		30.299677, 37.900013, 32.104664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.410923, 37.056492, 32.398224>,  <30.233473, 37.336777, 31.694321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.410923, 37.056492, 32.398224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297029, 37.435722, 32.454906>,  <30.228693, 37.663261, 32.488914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.297029, 37.435722, 32.454906>,  <30.410923, 37.056492, 32.398224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297029, 37.435722, 32.454906> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603292, -0.292103, 0.742102,
		0.744961, 0.125813, 0.655137,
		-0.284733, 0.948076, 0.141703,
		30.211609, 37.720146, 32.497417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455975, 37.199051, 33.162064>,  <30.410923, 37.056492, 32.398224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455975, 37.199051, 33.162064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210297, 37.481358, 33.020840>,  <30.062889, 37.650742, 32.936108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.210297, 37.481358, 33.020840>,  <30.455975, 37.199051, 33.162064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.210297, 37.481358, 33.020840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605177, -0.134106, 0.784714,
		0.506482, 0.695631, 0.509484,
		-0.614196, 0.705771, -0.353058,
		30.026037, 37.693089, 32.914921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399792, 37.680367, 33.735630>,  <30.455975, 37.199051, 33.162064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399792, 37.680367, 33.735630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086451, 37.739277, 33.494076>,  <29.898447, 37.774624, 33.349144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.086451, 37.739277, 33.494076>,  <30.399792, 37.680367, 33.735630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.086451, 37.739277, 33.494076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620772, -0.234881, 0.747979,
		-0.031684, 0.960803, 0.275417,
		-0.783351, 0.147272, -0.603881,
		29.851446, 37.783459, 33.312912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.948092, 37.904625, 34.172382>,  <30.399792, 37.680367, 33.735630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.948092, 37.904625, 34.172382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696730, 37.829922, 33.870327>,  <29.545912, 37.785099, 33.689095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.696730, 37.829922, 33.870327>,  <29.948092, 37.904625, 34.172382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696730, 37.829922, 33.870327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745948, -0.130634, 0.653067,
		-0.220613, 0.973682, -0.057223,
		-0.628404, -0.186760, -0.755135,
		29.508209, 37.773895, 33.643787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.319439, 38.143787, 34.393379>,  <29.948092, 37.904625, 34.172382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.319439, 38.143787, 34.393379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211983, 37.918896, 34.080524>,  <29.147509, 37.783962, 33.892811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.211983, 37.918896, 34.080524>,  <29.319439, 38.143787, 34.393379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.211983, 37.918896, 34.080524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738018, -0.401659, 0.542217,
		-0.619001, 0.722888, -0.307034,
		-0.268639, -0.562229, -0.782133,
		29.131392, 37.750225, 33.845886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639486, 38.358604, 34.123249>,  <29.319439, 38.143787, 34.393379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639486, 38.358604, 34.123249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711189, 37.975410, 34.033691>,  <28.754211, 37.745495, 33.979958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.711189, 37.975410, 34.033691>,  <28.639486, 38.358604, 34.123249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.711189, 37.975410, 34.033691> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823135, -0.270686, 0.499177,
		-0.538810, 0.094814, -0.837075,
		0.179255, -0.957987, -0.223893,
		28.764965, 37.688015, 33.966522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.000698, 37.956669, 33.960796>,  <28.639486, 38.358604, 34.123249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.000698, 37.956669, 33.960796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281507, 37.691471, 34.064796>,  <28.449993, 37.532352, 34.127197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.281507, 37.691471, 34.064796>,  <28.000698, 37.956669, 33.960796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281507, 37.691471, 34.064796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673158, -0.498623, 0.546108,
		-0.232427, -0.558400, -0.796346,
		0.702023, -0.662997, 0.259998,
		28.492115, 37.492573, 34.142796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505524, 37.310608, 34.081303>,  <28.000698, 37.956669, 33.960796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505524, 37.310608, 34.081303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860270, 37.268513, 34.261257>,  <28.073116, 37.243256, 34.369228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.860270, 37.268513, 34.261257>,  <27.505524, 37.310608, 34.081303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.860270, 37.268513, 34.261257> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424040, -0.572052, 0.702101,
		0.183473, -0.813438, -0.551957,
		0.886864, -0.105235, 0.449886,
		28.126329, 37.236942, 34.396221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578873, 36.525574, 34.161201>,  <27.505524, 37.310608, 34.081303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578873, 36.525574, 34.161201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847233, 36.691711, 34.406929>,  <28.008249, 36.791393, 34.554367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.847233, 36.691711, 34.406929>,  <27.578873, 36.525574, 34.161201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.847233, 36.691711, 34.406929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346273, -0.557089, 0.754816,
		0.655736, -0.719127, -0.229929,
		0.670899, 0.415342, 0.614318,
		28.048502, 36.816315, 34.591225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.035019, 36.027386, 34.359821>,  <27.578873, 36.525574, 34.161201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.035019, 36.027386, 34.359821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018671, 36.316864, 34.635387>,  <28.008863, 36.490551, 34.800728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.018671, 36.316864, 34.635387>,  <28.035019, 36.027386, 34.359821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.018671, 36.316864, 34.635387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369645, -0.651519, 0.662484,
		0.928274, -0.227578, 0.294136,
		-0.040869, 0.723693, 0.688911,
		28.006411, 36.533974, 34.842060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.346481, 35.763790, 34.904293>,  <28.035019, 36.027386, 34.359821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.346481, 35.763790, 34.904293> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125324, 36.068115, 35.040218>,  <27.992630, 36.250710, 35.121773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.125324, 36.068115, 35.040218>,  <28.346481, 35.763790, 34.904293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125324, 36.068115, 35.040218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322725, -0.571508, 0.754471,
		0.768216, 0.307478, 0.561518,
		-0.552895, 0.760813, 0.339811,
		27.959455, 36.296360, 35.142162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.079071, 35.478519, 35.398563>,  <28.346481, 35.763790, 34.904293>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.079071, 35.478519, 35.398563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877453, 35.819180, 35.456013>,  <27.756481, 36.023575, 35.490482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877453, 35.819180, 35.456013>,  <28.079071, 35.478519, 35.398563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877453, 35.819180, 35.456013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512431, -0.428754, 0.744033,
		0.695236, 0.301429, 0.652524,
		-0.504045, 0.851652, 0.143624,
		27.726240, 36.074677, 35.499100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129713, 35.752541, 36.201500>,  <28.079071, 35.478519, 35.398563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129713, 35.752541, 36.201500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.805101, 35.912014, 36.030636>,  <27.610334, 36.007698, 35.928116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.805101, 35.912014, 36.030636>,  <28.129713, 35.752541, 36.201500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805101, 35.912014, 36.030636> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574060, -0.407690, 0.710101,
		0.108957, 0.821485, 0.559723,
		-0.811531, 0.398685, -0.427161,
		27.561642, 36.031620, 35.902489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382835, 35.740715, 36.883221>,  <28.129713, 35.752541, 36.201500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382835, 35.740715, 36.883221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655684, 35.691879, 37.171612>,  <28.819391, 35.662579, 37.344646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.655684, 35.691879, 37.171612>,  <28.382835, 35.740715, 36.883221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.655684, 35.691879, 37.171612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590015, 0.674334, -0.444023,
		-0.431969, 0.728264, 0.532010,
		0.682118, -0.122089, 0.720978,
		28.860319, 35.655254, 37.387905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.529314, 36.423679, 37.002712>,  <28.382835, 35.740715, 36.883221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.529314, 36.423679, 37.002712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837278, 36.210297, 37.142799>,  <29.022057, 36.082268, 37.226852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.837278, 36.210297, 37.142799>,  <28.529314, 36.423679, 37.002712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.837278, 36.210297, 37.142799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635423, 0.590188, -0.497911,
		0.058919, 0.605887, 0.793366,
		0.769913, -0.533460, 0.350221,
		29.068253, 36.050259, 37.247868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.954155, 36.904778, 37.271061>,  <28.529314, 36.423679, 37.002712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.954155, 36.904778, 37.271061> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172369, 36.583145, 37.176533>,  <29.303297, 36.390167, 37.119816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.172369, 36.583145, 37.176533>,  <28.954155, 36.904778, 37.271061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.172369, 36.583145, 37.176533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740876, 0.594504, -0.312518,
		0.391784, -0.004597, 0.920045,
		0.545534, -0.804080, -0.236323,
		29.336029, 36.341923, 37.105637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579586, 36.939850, 37.612114>,  <28.954155, 36.904778, 37.271061>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579586, 36.939850, 37.612114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.667479, 36.686405, 37.315395>,  <29.720215, 36.534340, 37.137363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.667479, 36.686405, 37.315395>,  <29.579586, 36.939850, 37.612114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.667479, 36.686405, 37.315395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790048, 0.561649, -0.245709,
		0.572311, -0.532062, 0.623995,
		0.219734, -0.633608, -0.741793,
		29.733398, 36.496323, 37.092857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233473, 36.862583, 37.614822>,  <29.579586, 36.939850, 37.612114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233473, 36.862583, 37.614822> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.145847, 36.750523, 37.240971>,  <30.093273, 36.683285, 37.016659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.145847, 36.750523, 37.240971>,  <30.233473, 36.862583, 37.614822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.145847, 36.750523, 37.240971> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760621, 0.550928, -0.343417,
		0.611120, -0.786126, 0.092402,
		-0.219062, -0.280152, -0.934626,
		30.080128, 36.666477, 36.960583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887091, 36.831448, 37.274837>,  <30.233473, 36.862583, 37.614822>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887091, 36.831448, 37.274837> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.633776, 36.845570, 36.965591>,  <30.481787, 36.854042, 36.780045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.633776, 36.845570, 36.965591>,  <30.887091, 36.831448, 37.274837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633776, 36.845570, 36.965591> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566483, 0.701778, -0.431979,
		0.527299, -0.711520, -0.464429,
		-0.633287, 0.035309, -0.773110,
		30.443789, 36.856163, 36.733658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323130, 36.746880, 36.651539>,  <30.887091, 36.831448, 37.274837>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323130, 36.746880, 36.651539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.984938, 36.908573, 36.511967>,  <30.782022, 37.005589, 36.428223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.984938, 36.908573, 36.511967>,  <31.323130, 36.746880, 36.651539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984938, 36.908573, 36.511967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532788, 0.682649, -0.500128,
		0.036026, -0.608755, -0.792540,
		-0.845482, 0.404238, -0.348931,
		30.731293, 37.029846, 36.407288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404976, 36.937145, 35.886719>,  <31.323130, 36.746880, 36.651539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.404976, 36.937145, 35.886719> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.082342, 37.160027, 35.965660>,  <30.888762, 37.293755, 36.013023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.082342, 37.160027, 35.965660>,  <31.404976, 36.937145, 35.886719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082342, 37.160027, 35.965660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412394, 0.769619, -0.487461,
		-0.423500, -0.311792, -0.850549,
		-0.806585, 0.557201, 0.197352,
		30.840366, 37.327187, 36.024864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096386, 37.178070, 35.293228>,  <31.404976, 36.937145, 35.886719>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096386, 37.178070, 35.293228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.946531, 37.443203, 35.552551>,  <30.856619, 37.602283, 35.708145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.946531, 37.443203, 35.552551>,  <31.096386, 37.178070, 35.293228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946531, 37.443203, 35.552551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254602, 0.745894, -0.615483,
		-0.891530, -0.065522, -0.448197,
		-0.374635, 0.662834, 0.648305,
		30.834141, 37.642052, 35.747044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911871, 37.653454, 34.863625>,  <31.096386, 37.178070, 35.293228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911871, 37.653454, 34.863625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.943617, 37.836708, 35.217758>,  <30.962664, 37.946659, 35.430237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.943617, 37.836708, 35.217758>,  <30.911871, 37.653454, 34.863625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943617, 37.836708, 35.217758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293849, 0.837920, -0.459938,
		-0.952551, 0.296657, -0.068120,
		0.079365, 0.458131, 0.885334,
		30.967426, 37.974148, 35.483360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589636, 38.304134, 34.731846>,  <30.911871, 37.653454, 34.863625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589636, 38.304134, 34.731846> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.815784, 38.337074, 35.060131>,  <30.951473, 38.356838, 35.257103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.815784, 38.337074, 35.060131>,  <30.589636, 38.304134, 34.731846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815784, 38.337074, 35.060131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257955, 0.927441, -0.270762,
		-0.783464, 0.364788, 0.503104,
		0.565370, 0.082354, 0.820716,
		30.985395, 38.361782, 35.306347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.579342, 39.051155, 35.048611>,  <30.589636, 38.304134, 34.731846>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.579342, 39.051155, 35.048611> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915787, 38.887932, 35.190605>,  <31.117655, 38.789997, 35.275803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915787, 38.887932, 35.190605>,  <30.579342, 39.051155, 35.048611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915787, 38.887932, 35.190605> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526482, 0.768043, -0.364593,
		-0.123871, 0.493559, 0.860846,
		0.841114, -0.408057, 0.354988,
		31.168121, 38.765514, 35.297100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817207, 39.622818, 35.299698>,  <30.579342, 39.051155, 35.048611>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817207, 39.622818, 35.299698> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.125710, 39.368767, 35.282845>,  <31.310810, 39.216335, 35.272732>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.125710, 39.368767, 35.282845>,  <30.817207, 39.622818, 35.299698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125710, 39.368767, 35.282845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557568, 0.706030, -0.436624,
		0.307062, 0.313255, 0.898657,
		0.771253, -0.635132, -0.042134,
		31.357086, 39.178226, 35.270203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389002, 39.918873, 35.599686>,  <30.817207, 39.622818, 35.299698>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389002, 39.918873, 35.599686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544058, 39.636932, 35.362057>,  <31.637093, 39.467770, 35.219479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.544058, 39.636932, 35.362057>,  <31.389002, 39.918873, 35.599686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.544058, 39.636932, 35.362057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588765, 0.685196, -0.428792,
		0.709288, -0.183550, 0.680602,
		0.387642, -0.704852, -0.594069,
		31.660351, 39.425476, 35.183834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.989807, 40.264675, 35.555477>,  <31.389002, 39.918873, 35.599686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.989807, 40.264675, 35.555477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978168, 39.970787, 35.284378>,  <31.971186, 39.794453, 35.121719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978168, 39.970787, 35.284378>,  <31.989807, 40.264675, 35.555477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978168, 39.970787, 35.284378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471532, 0.587760, -0.657416,
		0.881369, -0.338708, 0.329342,
		-0.029098, -0.734721, -0.677745,
		31.969439, 39.750370, 35.081055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.690079, 40.179192, 35.318016>,  <31.989807, 40.264675, 35.555477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.690079, 40.179192, 35.318016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.446651, 40.032360, 35.036621>,  <32.300594, 39.944260, 34.867783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.446651, 40.032360, 35.036621>,  <32.690079, 40.179192, 35.318016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446651, 40.032360, 35.036621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607353, 0.355058, -0.710673,
		0.510652, -0.859760, 0.006868,
		-0.608569, -0.367078, -0.703489,
		32.264080, 39.922237, 34.825573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186703, 39.818050, 34.803318>,  <32.690079, 40.179192, 35.318016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186703, 39.818050, 34.803318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.834316, 39.842716, 34.615658>,  <32.622887, 39.857513, 34.503063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.834316, 39.842716, 34.615658>,  <33.186703, 39.818050, 34.803318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.834316, 39.842716, 34.615658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473098, 0.095835, -0.875782,
		-0.009044, -0.993486, -0.113600,
		-0.880964, 0.061664, -0.469149,
		32.570026, 39.861214, 34.474915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232620, 39.303974, 34.219604>,  <33.186703, 39.818050, 34.803318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232620, 39.303974, 34.219604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945469, 39.574966, 34.155506>,  <32.773178, 39.737560, 34.117046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.945469, 39.574966, 34.155506>,  <33.232620, 39.303974, 34.219604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.945469, 39.574966, 34.155506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310215, 0.105228, -0.944824,
		-0.623234, -0.727978, -0.285704,
		-0.717876, 0.677477, -0.160248,
		32.730106, 39.778210, 34.107433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904762, 39.093266, 33.590973>,  <33.232620, 39.303974, 34.219604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904762, 39.093266, 33.590973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.885696, 39.484081, 33.674046>,  <32.874256, 39.718571, 33.723888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.885696, 39.484081, 33.674046>,  <32.904762, 39.093266, 33.590973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885696, 39.484081, 33.674046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208718, 0.213069, -0.954483,
		-0.976814, -0.002146, -0.214080,
		-0.047662, 0.977035, 0.207681,
		32.871399, 39.777191, 33.736351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633026, 39.261101, 32.997349>,  <32.904762, 39.093266, 33.590973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633026, 39.261101, 32.997349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.779346, 39.600071, 33.151264>,  <32.867138, 39.803452, 33.243614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.779346, 39.600071, 33.151264>,  <32.633026, 39.261101, 32.997349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779346, 39.600071, 33.151264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100992, 0.374858, -0.921565,
		-0.925199, 0.375966, 0.051538,
		0.365796, 0.847426, 0.384788,
		32.889084, 39.854298, 33.266701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321228, 39.788208, 32.618488>,  <32.633026, 39.261101, 32.997349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321228, 39.788208, 32.618488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.637218, 39.953754, 32.799446>,  <32.826813, 40.053082, 32.908020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.637218, 39.953754, 32.799446>,  <32.321228, 39.788208, 32.618488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637218, 39.953754, 32.799446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333867, 0.328495, -0.883529,
		-0.514271, 0.849002, 0.121326,
		0.789973, 0.413867, 0.452390,
		32.874210, 40.077915, 32.935162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<41.245926, 29.854837, 48.422298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.858948, 29.753605, 48.421501>,  <40.626762, 29.692865, 48.421024>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.858948, 29.753605, 48.421501>,  <41.245926, 29.854837, 48.422298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858948, 29.753605, 48.421501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075902, -0.297644, 0.951655,
		-0.241440, 0.920520, 0.307163,
		-0.967443, -0.253082, -0.001994,
		40.568714, 29.677681, 48.420902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943600, 30.098528, 49.064186>,  <41.245926, 29.854837, 48.422298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943600, 30.098528, 49.064186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.658726, 29.835909, 48.964802>,  <40.487801, 29.678337, 48.905170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.658726, 29.835909, 48.964802>,  <40.943600, 30.098528, 49.064186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658726, 29.835909, 48.964802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107767, -0.247489, 0.962879,
		-0.693668, 0.712527, 0.105505,
		-0.712188, -0.656548, -0.248462,
		40.445068, 29.638945, 48.890263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367531, 30.256445, 49.437054>,  <40.943600, 30.098528, 49.064186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367531, 30.256445, 49.437054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.293522, 29.875227, 49.341156>,  <40.249115, 29.646496, 49.283619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.293522, 29.875227, 49.341156>,  <40.367531, 30.256445, 49.437054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.293522, 29.875227, 49.341156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357869, -0.161863, 0.919636,
		-0.915258, 0.255948, -0.311116,
		-0.185021, -0.953043, -0.239742,
		40.238014, 29.589314, 49.269234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.724388, 29.993473, 49.903969>,  <40.367531, 30.256445, 49.437054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.724388, 29.993473, 49.903969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.918037, 29.667570, 49.776348>,  <40.034225, 29.472029, 49.699776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.918037, 29.667570, 49.776348>,  <39.724388, 29.993473, 49.903969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918037, 29.667570, 49.776348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050337, -0.389963, 0.919454,
		-0.873552, -0.429066, -0.229801,
		0.484120, -0.814759, -0.319055,
		40.063274, 29.423143, 49.680634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407063, 29.529425, 50.310875>,  <39.724388, 29.993473, 49.903969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407063, 29.529425, 50.310875> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.714981, 29.315928, 50.170853>,  <39.899731, 29.187830, 50.086842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.714981, 29.315928, 50.170853>,  <39.407063, 29.529425, 50.310875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714981, 29.315928, 50.170853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004902, -0.553347, 0.832937,
		-0.638276, -0.639472, -0.428578,
		0.769792, -0.533744, -0.350053,
		39.945919, 29.155806, 50.065838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244476, 28.759089, 50.365444>,  <39.407063, 29.529425, 50.310875>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244476, 28.759089, 50.365444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.639271, 28.821707, 50.380150>,  <39.876148, 28.859278, 50.388973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.639271, 28.821707, 50.380150>,  <39.244476, 28.759089, 50.365444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639271, 28.821707, 50.380150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075652, -0.653792, 0.752883,
		0.141901, -0.740303, -0.657126,
		0.986986, 0.156548, 0.036769,
		39.935368, 28.868671, 50.391182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461132, 28.165224, 50.747272>,  <39.244476, 28.759089, 50.365444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461132, 28.165224, 50.747272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.813328, 28.354353, 50.733551>,  <40.024647, 28.467831, 50.725319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.813328, 28.354353, 50.733551>,  <39.461132, 28.165224, 50.747272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.813328, 28.354353, 50.733551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287439, -0.474923, 0.831761,
		0.376982, -0.742219, -0.554072,
		0.880490, 0.472821, -0.034306,
		40.077477, 28.496199, 50.723259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.969143, 27.738380, 50.789005>,  <39.461132, 28.165224, 50.747272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.969143, 27.738380, 50.789005> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.139984, 28.076084, 50.918499>,  <40.242489, 28.278708, 50.996197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.139984, 28.076084, 50.918499>,  <39.969143, 27.738380, 50.789005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139984, 28.076084, 50.918499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256558, -0.456472, 0.851946,
		0.867039, -0.280816, -0.411565,
		0.427107, 0.844261, 0.323734,
		40.268116, 28.329363, 51.015617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.422199, 27.421320, 51.286247>,  <39.969143, 27.738380, 50.789005>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.422199, 27.421320, 51.286247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.381168, 27.804644, 51.392921>,  <40.356548, 28.034637, 51.456924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.381168, 27.804644, 51.392921>,  <40.422199, 27.421320, 51.286247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381168, 27.804644, 51.392921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118721, -0.254385, 0.959788,
		0.987615, 0.130117, -0.087676,
		-0.102581, 0.958310, 0.266682,
		40.350395, 28.092136, 51.472927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.058792, 27.651827, 51.718315>,  <40.422199, 27.421320, 51.286247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.058792, 27.651827, 51.718315> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.746181, 27.889547, 51.794235>,  <40.558617, 28.032179, 51.839787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.746181, 27.889547, 51.794235>,  <41.058792, 27.651827, 51.718315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746181, 27.889547, 51.794235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138552, -0.131287, 0.981615,
		0.608291, 0.793455, 0.020263,
		-0.781527, 0.594300, 0.189796,
		40.511723, 28.067837, 51.851173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234055, 27.979467, 52.365303>,  <41.058792, 27.651827, 51.718315>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234055, 27.979467, 52.365303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.836975, 28.014044, 52.331676>,  <40.598724, 28.034790, 52.311501>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.836975, 28.014044, 52.331676>,  <41.234055, 27.979467, 52.365303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836975, 28.014044, 52.331676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104188, -0.263902, 0.958906,
		0.060703, 0.960668, 0.270982,
		-0.992703, 0.086442, -0.084070,
		40.539165, 28.039976, 52.306454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007717, 28.117289, 53.075047>,  <41.234055, 27.979467, 52.365303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007717, 28.117289, 53.075047> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.666294, 28.035183, 52.883499>,  <40.461441, 27.985920, 52.768570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.666294, 28.035183, 52.883499>,  <41.007717, 28.117289, 53.075047>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.666294, 28.035183, 52.883499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392822, -0.350231, 0.850311,
		-0.342254, 0.913895, 0.218308,
		-0.853553, -0.205266, -0.478866,
		40.410229, 27.973604, 52.739838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403385, 28.310585, 53.453724>,  <41.007717, 28.117289, 53.075047>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403385, 28.310585, 53.453724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.244217, 28.041462, 53.204250>,  <40.148716, 27.879988, 53.054565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.244217, 28.041462, 53.204250>,  <40.403385, 28.310585, 53.453724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244217, 28.041462, 53.204250> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648230, -0.274871, 0.710101,
		-0.649195, 0.686859, -0.326757,
		-0.397924, -0.672808, -0.623688,
		40.124840, 27.839619, 53.017143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764481, 28.240667, 53.784058>,  <40.403385, 28.310585, 53.453724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.764481, 28.240667, 53.784058> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.836910, 27.919405, 53.557026>,  <39.880367, 27.726648, 53.420807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.836910, 27.919405, 53.557026>,  <39.764481, 28.240667, 53.784058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.836910, 27.919405, 53.557026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569151, -0.556240, 0.605528,
		-0.802046, 0.213394, -0.557839,
		0.181076, -0.803156, -0.567584,
		39.891232, 27.678457, 53.386749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.743679, 28.934212, 53.443638>,  <39.764481, 28.240667, 53.784058>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.743679, 28.934212, 53.443638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600090, 29.214283, 53.690502>,  <39.513939, 29.382326, 53.838623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.600090, 29.214283, 53.690502>,  <39.743679, 28.934212, 53.443638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600090, 29.214283, 53.690502> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149616, 0.609517, -0.778527,
		-0.921279, -0.371805, -0.114041,
		-0.358970, 0.700178, 0.617163,
		39.492397, 29.424337, 53.875652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.097630, 29.113319, 53.220871>,  <39.743679, 28.934212, 53.443638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.097630, 29.113319, 53.220871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.192947, 29.428499, 53.447975>,  <39.250137, 29.617607, 53.584236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.192947, 29.428499, 53.447975>,  <39.097630, 29.113319, 53.220871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192947, 29.428499, 53.447975> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303958, 0.615739, -0.726962,
		-0.922403, 0.000654, 0.386230,
		0.238292, 0.787950, 0.567761,
		39.264435, 29.664885, 53.618305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.539520, 29.617554, 53.114586>,  <39.097630, 29.113319, 53.220871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.539520, 29.617554, 53.114586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826851, 29.850857, 53.266281>,  <38.999249, 29.990839, 53.357300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.826851, 29.850857, 53.266281>,  <38.539520, 29.617554, 53.114586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.826851, 29.850857, 53.266281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231547, 0.714466, -0.660246,
		-0.656047, 0.386458, 0.648269,
		0.718324, 0.583256, 0.379240,
		39.042347, 30.025833, 53.380054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245049, 30.276031, 53.206421>,  <38.539520, 29.617554, 53.114586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245049, 30.276031, 53.206421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637634, 30.352392, 53.213158>,  <38.873184, 30.398209, 53.217197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.637634, 30.352392, 53.213158>,  <38.245049, 30.276031, 53.206421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637634, 30.352392, 53.213158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138792, 0.768640, -0.624443,
		-0.132149, 0.610532, 0.780889,
		0.981465, 0.190901, 0.016839,
		38.932076, 30.409662, 53.218208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.287251, 31.017189, 53.182072>,  <38.245049, 30.276031, 53.206421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.287251, 31.017189, 53.182072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645947, 30.872339, 53.080303>,  <38.861164, 30.785429, 53.019241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.645947, 30.872339, 53.080303>,  <38.287251, 31.017189, 53.182072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645947, 30.872339, 53.080303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092269, 0.715224, -0.692778,
		0.432838, 0.597764, 0.674781,
		0.896737, -0.362122, -0.254421,
		38.914967, 30.763702, 53.003979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.855045, 31.608778, 53.217487>,  <38.287251, 31.017189, 53.182072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.855045, 31.608778, 53.217487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.999222, 31.338095, 52.960693>,  <39.085728, 31.175686, 52.806618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.999222, 31.338095, 52.960693>,  <38.855045, 31.608778, 53.217487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999222, 31.338095, 52.960693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274101, 0.734706, -0.620545,
		0.891600, 0.047700, 0.450305,
		0.360442, -0.676707, -0.641989,
		39.107353, 31.135082, 52.768097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.391365, 31.955847, 52.862633>,  <38.855045, 31.608778, 53.217487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.391365, 31.955847, 52.862633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.345299, 31.622869, 52.645828>,  <39.317657, 31.423084, 52.515747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.345299, 31.622869, 52.645828>,  <39.391365, 31.955847, 52.862633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345299, 31.622869, 52.645828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134912, 0.527479, -0.838788,
		0.984142, -0.169724, 0.051559,
		-0.115166, -0.832442, -0.542012,
		39.310749, 31.373137, 52.483223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.869484, 31.837124, 52.368675>,  <39.391365, 31.955847, 52.862633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.869484, 31.837124, 52.368675> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575180, 31.618269, 52.209026>,  <39.398598, 31.486956, 52.113239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.575180, 31.618269, 52.209026>,  <39.869484, 31.837124, 52.368675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575180, 31.618269, 52.209026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195008, 0.393213, -0.898530,
		0.648560, -0.738933, -0.182614,
		-0.735760, -0.547139, -0.399120,
		39.354450, 31.454128, 52.089291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128571, 31.731541, 51.753899>,  <39.869484, 31.837124, 52.368675>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128571, 31.731541, 51.753899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735069, 31.673267, 51.711941>,  <39.498966, 31.638304, 51.686768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.735069, 31.673267, 51.711941>,  <40.128571, 31.731541, 51.753899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735069, 31.673267, 51.711941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013413, 0.523033, -0.852207,
		0.179013, -0.839770, -0.512582,
		-0.983755, -0.145680, -0.104894,
		39.439941, 31.629562, 51.680473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062946, 31.685032, 51.050045>,  <40.128571, 31.731541, 51.753899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062946, 31.685032, 51.050045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686710, 31.747763, 51.170506>,  <39.460968, 31.785400, 51.242783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.686710, 31.747763, 51.170506>,  <40.062946, 31.685032, 51.050045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.686710, 31.747763, 51.170506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209393, 0.430276, -0.878076,
		-0.267283, -0.888970, -0.371876,
		-0.940592, 0.156826, 0.301150,
		39.404533, 31.794811, 51.260849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525932, 31.434334, 50.554756>,  <40.062946, 31.685032, 51.050045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525932, 31.434334, 50.554756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.299496, 31.683554, 50.770664>,  <39.163635, 31.833086, 50.900211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.299496, 31.683554, 50.770664>,  <39.525932, 31.434334, 50.554756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299496, 31.683554, 50.770664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182721, 0.543664, -0.819172,
		-0.803839, -0.562351, -0.193918,
		-0.566088, 0.623049, 0.539772,
		39.129669, 31.870468, 50.932594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030270, 31.607023, 50.120136>,  <39.525932, 31.434334, 50.554756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030270, 31.607023, 50.120136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.011410, 31.901684, 50.389988>,  <39.000095, 32.078480, 50.551899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.011410, 31.901684, 50.389988>,  <39.030270, 31.607023, 50.120136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011410, 31.901684, 50.389988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068889, 0.671373, -0.737911,
		-0.996510, -0.081263, 0.019095,
		-0.047145, 0.736651, 0.674627,
		38.997265, 32.122681, 50.592377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.457302, 32.072880, 49.955368>,  <39.030270, 31.607023, 50.120136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.457302, 32.072880, 49.955368> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737167, 32.281872, 50.150299>,  <38.905087, 32.407269, 50.267258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.737167, 32.281872, 50.150299>,  <38.457302, 32.072880, 49.955368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737167, 32.281872, 50.150299> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002384, 0.683777, -0.729687,
		-0.714470, 0.509373, 0.479658,
		0.699662, 0.522483, 0.487324,
		38.947067, 32.438618, 50.296497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.249554, 32.645947, 49.812763>,  <38.457302, 32.072880, 49.955368>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.249554, 32.645947, 49.812763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614357, 32.740326, 49.946964>,  <38.833241, 32.796955, 50.027485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.614357, 32.740326, 49.946964>,  <38.249554, 32.645947, 49.812763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614357, 32.740326, 49.946964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041191, 0.761155, -0.647261,
		-0.408094, 0.604128, 0.684462,
		0.912010, 0.235950, 0.335507,
		38.887959, 32.811111, 50.047615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653988, 32.601173, 50.062927>,  <38.249554, 32.645947, 49.812763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653988, 32.601173, 50.062927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261742, 32.670147, 50.025692>,  <37.026394, 32.711529, 50.003353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.261742, 32.670147, 50.025692>,  <37.653988, 32.601173, 50.062927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261742, 32.670147, 50.025692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173657, -0.544655, 0.820484,
		0.090778, 0.820743, 0.564040,
		-0.980613, 0.172431, -0.093085,
		36.967556, 32.721878, 49.997765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.348309, 33.019810, 50.650208>,  <37.653988, 32.601173, 50.062927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.348309, 33.019810, 50.650208> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.091026, 32.752373, 50.500931>,  <36.936657, 32.591911, 50.411366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.091026, 32.752373, 50.500931>,  <37.348309, 33.019810, 50.650208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091026, 32.752373, 50.500931> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086945, -0.420464, 0.903134,
		-0.760741, 0.613348, 0.212315,
		-0.643206, -0.668591, -0.373192,
		36.898064, 32.551796, 50.388973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851898, 32.888622, 51.242096>,  <37.348309, 33.019810, 50.650208>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851898, 32.888622, 51.242096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781742, 32.597713, 50.976669>,  <36.739647, 32.423168, 50.817413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.781742, 32.597713, 50.976669>,  <36.851898, 32.888622, 51.242096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781742, 32.597713, 50.976669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005664, -0.673257, 0.739387,
		-0.984483, 0.133440, 0.113963,
		-0.175390, -0.727268, -0.663566,
		36.729126, 32.379532, 50.777599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261944, 32.625378, 51.492569>,  <36.851898, 32.888622, 51.242096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261944, 32.625378, 51.492569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435074, 32.345371, 51.265362>,  <36.538952, 32.177368, 51.129036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.435074, 32.345371, 51.265362>,  <36.261944, 32.625378, 51.492569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435074, 32.345371, 51.265362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259440, -0.700164, 0.665178,
		-0.863340, -0.140536, -0.484658,
		0.432821, -0.700015, -0.568019,
		36.564922, 32.135368, 51.094955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719795, 32.065029, 51.409718>,  <36.261944, 32.625378, 51.492569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719795, 32.065029, 51.409718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083218, 31.911301, 51.344208>,  <36.301270, 31.819063, 51.304901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.083218, 31.911301, 51.344208>,  <35.719795, 32.065029, 51.409718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083218, 31.911301, 51.344208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239584, -0.800491, 0.549376,
		-0.342238, -0.459901, -0.819368,
		0.908555, -0.384325, -0.163773,
		36.355785, 31.796003, 51.295074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612839, 31.432375, 51.348331>,  <35.719795, 32.065029, 51.409718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612839, 31.432375, 51.348331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004124, 31.449209, 51.429646>,  <36.238895, 31.459309, 51.478436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.004124, 31.449209, 51.429646>,  <35.612839, 31.432375, 51.348331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004124, 31.449209, 51.429646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093078, -0.786383, 0.610687,
		0.185560, -0.616304, -0.765334,
		0.978215, 0.042083, 0.203286,
		36.297588, 31.461834, 51.490631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851723, 30.782309, 51.299648>,  <35.612839, 31.432375, 51.348331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851723, 30.782309, 51.299648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123562, 30.968943, 51.526081>,  <36.286663, 31.080923, 51.661942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.123562, 30.968943, 51.526081>,  <35.851723, 30.782309, 51.299648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123562, 30.968943, 51.526081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078894, -0.720703, 0.688739,
		0.729334, -0.512724, -0.452975,
		0.679594, 0.466584, 0.566084,
		36.327438, 31.108917, 51.695908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780205, 30.226889, 50.719456>,  <35.851723, 30.782309, 51.299648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780205, 30.226889, 50.719456> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442093, 30.026104, 50.792709>,  <35.239227, 29.905634, 50.836662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.442093, 30.026104, 50.792709>,  <35.780205, 30.226889, 50.719456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442093, 30.026104, 50.792709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494645, 0.605487, -0.623467,
		0.202070, -0.617591, -0.760098,
		-0.845278, -0.501962, 0.183137,
		35.188511, 29.875515, 50.847652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458210, 29.953819, 50.085457>,  <35.780205, 30.226889, 50.719456>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458210, 29.953819, 50.085457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190693, 30.011425, 50.377205>,  <35.030182, 30.045988, 50.552254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.190693, 30.011425, 50.377205>,  <35.458210, 29.953819, 50.085457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190693, 30.011425, 50.377205> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618310, 0.437000, -0.653241,
		-0.412810, -0.887858, -0.203216,
		-0.668790, 0.144014, 0.729369,
		34.990055, 30.054628, 50.596016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845108, 29.854090, 49.805443>,  <35.458210, 29.953819, 50.085457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845108, 29.854090, 49.805443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.721012, 30.038403, 50.138050>,  <34.646553, 30.148991, 50.337616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.721012, 30.038403, 50.138050>,  <34.845108, 29.854090, 49.805443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721012, 30.038403, 50.138050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692536, 0.489668, -0.529736,
		-0.651263, -0.740205, 0.167193,
		-0.310244, 0.460784, 0.831521,
		34.627937, 30.176638, 50.387505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158916, 29.940689, 49.605663>,  <34.845108, 29.854090, 49.805443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158916, 29.940689, 49.605663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218842, 30.195240, 49.908340>,  <34.254795, 30.347971, 50.089947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.218842, 30.195240, 49.908340>,  <34.158916, 29.940689, 49.605663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218842, 30.195240, 49.908340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744383, 0.576303, -0.337296,
		-0.650730, -0.512735, 0.560047,
		0.149814, 0.636378, 0.756689,
		34.263786, 30.386154, 50.135345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570076, 30.222712, 49.680912>,  <34.158916, 29.940689, 49.605663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570076, 30.222712, 49.680912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813377, 30.478086, 49.869560>,  <33.959358, 30.631311, 49.982750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.813377, 30.478086, 49.869560>,  <33.570076, 30.222712, 49.680912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813377, 30.478086, 49.869560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534393, 0.768721, -0.351414,
		-0.586900, -0.038281, 0.808754,
		0.608254, 0.638437, 0.471620,
		33.995853, 30.669617, 50.011047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083206, 30.699322, 49.831074>,  <33.570076, 30.222712, 49.680912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083206, 30.699322, 49.831074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446648, 30.865982, 49.842705>,  <33.664711, 30.965979, 49.849686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.446648, 30.865982, 49.842705>,  <33.083206, 30.699322, 49.831074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446648, 30.865982, 49.842705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319710, 0.738625, -0.593480,
		-0.268752, 0.529940, 0.804323,
		0.908602, 0.416649, 0.029079,
		33.719227, 30.990976, 49.851429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031715, 31.416952, 50.036648>,  <33.083206, 30.699322, 49.831074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031715, 31.416952, 50.036648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383392, 31.404633, 49.846462>,  <33.594398, 31.397240, 49.732349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.383392, 31.404633, 49.846462>,  <33.031715, 31.416952, 50.036648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383392, 31.404633, 49.846462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229675, 0.846920, -0.479559,
		0.417452, 0.530828, 0.737533,
		0.879195, -0.030800, -0.475466,
		33.647152, 31.395393, 49.703823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.680222, 25.469992, 51.830956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938267, 25.763489, 51.916225>,  <38.093094, 25.939587, 51.967388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.938267, 25.763489, 51.916225>,  <37.680222, 25.469992, 51.830956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.938267, 25.763489, 51.916225> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344897, 0.528591, -0.775653,
		-0.681815, 0.426861, 0.594068,
		0.645116, 0.733745, 0.213178,
		38.131802, 25.983612, 51.980179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.262680, 26.084990, 51.901821>,  <37.680222, 25.469992, 51.830956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.262680, 26.084990, 51.901821> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.637836, 26.178444, 51.799236>,  <37.862930, 26.234516, 51.737686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.637836, 26.178444, 51.799236>,  <37.262680, 26.084990, 51.901821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637836, 26.178444, 51.799236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328897, 0.363583, -0.871570,
		-0.110385, 0.901788, 0.417844,
		0.937892, 0.233635, -0.256461,
		37.919205, 26.248535, 51.722298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245911, 26.769905, 51.731297>,  <37.262680, 26.084990, 51.901821>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245911, 26.769905, 51.731297> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.585823, 26.642870, 51.563011>,  <37.789772, 26.566648, 51.462040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.585823, 26.642870, 51.563011>,  <37.245911, 26.769905, 51.731297>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585823, 26.642870, 51.563011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257927, 0.445543, -0.857301,
		0.459718, 0.837035, 0.296700,
		0.849784, -0.317590, -0.420718,
		37.840759, 26.547592, 51.436794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540386, 27.444576, 51.335125>,  <37.245911, 26.769905, 51.731297>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540386, 27.444576, 51.335125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.743912, 27.127344, 51.201180>,  <37.866028, 26.937004, 51.120811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.743912, 27.127344, 51.201180>,  <37.540386, 27.444576, 51.335125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743912, 27.127344, 51.201180> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106249, 0.328151, -0.938631,
		0.854296, 0.513165, 0.082703,
		0.508812, -0.793082, -0.334861,
		37.896557, 26.889420, 51.100719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969059, 27.780046, 51.000950>,  <37.540386, 27.444576, 51.335125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969059, 27.780046, 51.000950> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.976143, 27.403601, 50.865902>,  <37.980392, 27.177732, 50.784874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.976143, 27.403601, 50.865902>,  <37.969059, 27.780046, 51.000950>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976143, 27.403601, 50.865902> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040795, 0.336711, -0.940724,
		0.999011, 0.030434, -0.032429,
		0.017711, -0.941116, -0.337620,
		37.981457, 27.121265, 50.764614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588341, 27.719015, 50.601192>,  <37.969059, 27.780046, 51.000950>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588341, 27.719015, 50.601192> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.350895, 27.414268, 50.497517>,  <38.208427, 27.231421, 50.435310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.350895, 27.414268, 50.497517>,  <38.588341, 27.719015, 50.601192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.350895, 27.414268, 50.497517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040737, 0.293215, -0.955178,
		0.803718, -0.577565, -0.143020,
		-0.593614, -0.761868, -0.259191,
		38.172810, 27.185709, 50.419758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901310, 27.283207, 49.951790>,  <38.588341, 27.719015, 50.601192>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901310, 27.283207, 49.951790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.503677, 27.271091, 49.993523>,  <38.265099, 27.263823, 50.018562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.503677, 27.271091, 49.993523>,  <38.901310, 27.283207, 49.951790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503677, 27.271091, 49.993523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106211, 0.472980, -0.874648,
		-0.022859, -0.880552, -0.473397,
		-0.994081, -0.030286, 0.104336,
		38.205452, 27.262005, 50.024822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668629, 27.144150, 49.309841>,  <38.901310, 27.283207, 49.951790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668629, 27.144150, 49.309841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314919, 27.245096, 49.466999>,  <38.102692, 27.305664, 49.561295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.314919, 27.245096, 49.466999>,  <38.668629, 27.144150, 49.309841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314919, 27.245096, 49.466999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314952, 0.298865, -0.900824,
		-0.344759, -0.920321, -0.184797,
		-0.884277, 0.252365, 0.392894,
		38.049637, 27.320805, 49.584866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.064510, 26.829962, 48.980049>,  <38.668629, 27.144150, 49.309841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.064510, 26.829962, 48.980049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.859600, 27.132845, 49.142139>,  <37.736652, 27.314575, 49.239395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.859600, 27.132845, 49.142139>,  <38.064510, 26.829962, 48.980049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.859600, 27.132845, 49.142139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516871, 0.104990, -0.849600,
		-0.685869, -0.644680, 0.337596,
		-0.512276, 0.757209, 0.405226,
		37.705917, 27.360008, 49.263706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364590, 26.882023, 48.672474>,  <38.064510, 26.829962, 48.980049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364590, 26.882023, 48.672474> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416012, 27.249456, 48.821968>,  <37.446865, 27.469915, 48.911663>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.416012, 27.249456, 48.821968>,  <37.364590, 26.882023, 48.672474>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416012, 27.249456, 48.821968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372475, 0.393996, -0.840256,
		-0.919095, -0.031187, 0.392800,
		0.128556, 0.918583, 0.373736,
		37.454578, 27.525032, 48.934090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752666, 27.224077, 48.446262>,  <37.364590, 26.882023, 48.672474>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752666, 27.224077, 48.446262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.005718, 27.515623, 48.550980>,  <37.157551, 27.690552, 48.613811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.005718, 27.515623, 48.550980>,  <36.752666, 27.224077, 48.446262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005718, 27.515623, 48.550980> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395528, 0.594699, -0.699922,
		-0.665837, 0.339245, 0.664510,
		0.632629, 0.728866, 0.261792,
		37.195507, 27.734283, 48.629517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322372, 27.796289, 48.521252>,  <36.752666, 27.224077, 48.446262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322372, 27.796289, 48.521252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686520, 27.938431, 48.436436>,  <36.905006, 28.023716, 48.385548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686520, 27.938431, 48.436436>,  <36.322372, 27.796289, 48.521252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686520, 27.938431, 48.436436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392092, 0.576935, -0.716526,
		-0.132288, 0.735438, 0.664553,
		0.910365, 0.355354, -0.212038,
		36.959629, 28.045036, 48.372826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.944649, 28.324614, 48.794491>,  <36.322372, 27.796289, 48.521252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.944649, 28.324614, 48.794491> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.553150, 28.252670, 48.755089>,  <35.318249, 28.209505, 48.731449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.553150, 28.252670, 48.755089>,  <35.944649, 28.324614, 48.794491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553150, 28.252670, 48.755089> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017836, -0.403857, 0.914648,
		-0.204286, 0.896968, 0.392067,
		-0.978749, -0.179857, -0.098501,
		35.259525, 28.198713, 48.725540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.567272, 28.602205, 49.404819>,  <35.944649, 28.324614, 48.794491>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.567272, 28.602205, 49.404819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336090, 28.314344, 49.250900>,  <35.197380, 28.141628, 49.158546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.336090, 28.314344, 49.250900>,  <35.567272, 28.602205, 49.404819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.336090, 28.314344, 49.250900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174655, -0.569682, 0.803093,
		-0.797161, 0.396942, 0.454940,
		-0.577953, -0.719652, -0.384801,
		35.162704, 28.098450, 49.135460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098278, 28.396978, 50.022675>,  <35.567272, 28.602205, 49.404819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098278, 28.396978, 50.022675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.080196, 28.113859, 49.740688>,  <35.069347, 27.943987, 49.571495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.080196, 28.113859, 49.740688>,  <35.098278, 28.396978, 50.022675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080196, 28.113859, 49.740688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120509, -0.696670, 0.707198,
		-0.991682, 0.116925, -0.053801,
		-0.045208, -0.707799, -0.704966,
		35.066635, 27.901520, 49.529198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.585762, 27.891621, 50.324593>,  <35.098278, 28.396978, 50.022675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.585762, 27.891621, 50.324593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.760757, 27.673796, 50.038361>,  <34.865753, 27.543100, 49.866623>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.760757, 27.673796, 50.038361>,  <34.585762, 27.891621, 50.324593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760757, 27.673796, 50.038361> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093721, -0.819055, 0.566008,
		-0.894328, -0.180556, -0.409362,
		0.437486, -0.544563, -0.715582,
		34.892002, 27.510427, 49.823685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153179, 27.256895, 50.257385>,  <34.585762, 27.891621, 50.324593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153179, 27.256895, 50.257385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.521412, 27.166492, 50.129978>,  <34.742352, 27.112251, 50.053532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.521412, 27.166492, 50.129978>,  <34.153179, 27.256895, 50.257385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.521412, 27.166492, 50.129978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068414, -0.709633, 0.701242,
		-0.384518, -0.667340, -0.637812,
		0.920579, -0.226004, -0.318522,
		34.797585, 27.098692, 50.034420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271736, 26.506924, 50.286209>,  <34.153179, 27.256895, 50.257385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271736, 26.506924, 50.286209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.638229, 26.666765, 50.297695>,  <34.858128, 26.762671, 50.304585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.638229, 26.666765, 50.297695>,  <34.271736, 26.506924, 50.286209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638229, 26.666765, 50.297695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282175, -0.694541, 0.661808,
		0.284404, -0.598272, -0.749123,
		0.916238, 0.399605, 0.028713,
		34.913101, 26.786646, 50.306309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649570, 25.945892, 50.295006>,  <34.271736, 26.506924, 50.286209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649570, 25.945892, 50.295006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.910774, 26.219078, 50.425930>,  <35.067497, 26.382990, 50.504486>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.910774, 26.219078, 50.425930>,  <34.649570, 25.945892, 50.295006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910774, 26.219078, 50.425930> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185784, -0.563434, 0.805001,
		0.734206, -0.464866, -0.494814,
		0.653012, 0.682965, 0.327312,
		35.106678, 26.423967, 50.524124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391254, 25.570072, 50.401386>,  <34.649570, 25.945892, 50.295006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391254, 25.570072, 50.401386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.348614, 25.909639, 50.608452>,  <35.323029, 26.113380, 50.732689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.348614, 25.909639, 50.608452>,  <35.391254, 25.570072, 50.401386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348614, 25.909639, 50.608452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358850, -0.452692, 0.816270,
		0.927288, 0.272777, -0.256377,
		-0.106600, 0.848918, 0.517662,
		35.316635, 26.164314, 50.763752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854080, 25.395056, 50.986477>,  <35.391254, 25.570072, 50.401386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854080, 25.395056, 50.986477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.669724, 25.719082, 51.131458>,  <35.559109, 25.913498, 51.218449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.669724, 25.719082, 51.131458>,  <35.854080, 25.395056, 50.986477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669724, 25.719082, 51.131458> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339088, -0.216686, 0.915460,
		0.820120, 0.544833, -0.174814,
		-0.460893, 0.810064, 0.362455,
		35.531456, 25.962101, 51.240196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.316963, 25.780727, 51.455395>,  <35.854080, 25.395056, 50.986477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.316963, 25.780727, 51.455395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.965057, 25.907934, 51.596745>,  <35.753914, 25.984259, 51.681557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.965057, 25.907934, 51.596745>,  <36.316963, 25.780727, 51.455395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965057, 25.907934, 51.596745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278133, -0.258525, 0.925098,
		0.385555, 0.912156, 0.138990,
		-0.879767, 0.318019, 0.353377,
		35.701126, 26.003340, 51.702759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489948, 26.204248, 51.976776>,  <36.316963, 25.780727, 51.455395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489948, 26.204248, 51.976776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.109501, 26.105812, 52.051407>,  <35.881233, 26.046751, 52.096184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.109501, 26.105812, 52.051407>,  <36.489948, 26.204248, 51.976776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109501, 26.105812, 52.051407> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205218, -0.052172, 0.977325,
		-0.230775, 0.967842, 0.100124,
		-0.951120, -0.246089, 0.186578,
		35.824165, 26.031986, 52.107380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309860, 26.744583, 52.523949>,  <36.489948, 26.204248, 51.976776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309860, 26.744583, 52.523949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.068439, 26.425846, 52.535038>,  <35.923588, 26.234604, 52.541691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.068439, 26.425846, 52.535038>,  <36.309860, 26.744583, 52.523949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068439, 26.425846, 52.535038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253458, -0.158776, 0.954227,
		-0.755965, 0.582954, 0.297796,
		-0.603553, -0.796841, 0.027725,
		35.887375, 26.186794, 52.543354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796494, 26.893719, 52.954060>,  <36.309860, 26.744583, 52.523949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796494, 26.893719, 52.954060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.853390, 26.498116, 52.937923>,  <35.887527, 26.260754, 52.928242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.853390, 26.498116, 52.937923>,  <35.796494, 26.893719, 52.954060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853390, 26.498116, 52.937923> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008172, -0.039580, 0.999183,
		-0.989798, -0.142455, 0.002452,
		0.142242, -0.989010, -0.040340,
		35.896061, 26.201412, 52.925823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068802, 27.064970, 52.681072>,  <35.796494, 26.893719, 52.954060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068802, 27.064970, 52.681072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888676, 27.270706, 52.973007>,  <34.780598, 27.394148, 53.148170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.888676, 27.270706, 52.973007>,  <35.068802, 27.064970, 52.681072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.888676, 27.270706, 52.973007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171207, 0.752502, -0.635947,
		-0.876300, -0.411333, -0.250807,
		-0.450319, 0.514340, 0.729841,
		34.753578, 27.425009, 53.191959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.552673, 27.338289, 52.416729>,  <35.068802, 27.064970, 52.681072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.552673, 27.338289, 52.416729> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.612167, 27.597029, 52.715919>,  <34.647865, 27.752272, 52.895432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.612167, 27.597029, 52.715919>,  <34.552673, 27.338289, 52.416729>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.612167, 27.597029, 52.715919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135018, 0.762587, -0.632639,
		-0.979616, -0.006895, 0.200759,
		0.148734, 0.646849, 0.747973,
		34.656788, 27.791084, 52.940311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020569, 27.891369, 52.337467>,  <34.552673, 27.338289, 52.416729>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020569, 27.891369, 52.337467> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.317516, 28.047930, 52.554977>,  <34.495686, 28.141867, 52.685482>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.317516, 28.047930, 52.554977>,  <34.020569, 27.891369, 52.337467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317516, 28.047930, 52.554977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035647, 0.833540, -0.551308,
		-0.669044, 0.389889, 0.632745,
		0.742367, 0.391404, 0.543777,
		34.540226, 28.165352, 52.718109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835674, 28.575455, 52.474136>,  <34.020569, 27.891369, 52.337467>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835674, 28.575455, 52.474136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.232365, 28.563951, 52.524181>,  <34.470379, 28.557051, 52.554207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.232365, 28.563951, 52.524181>,  <33.835674, 28.575455, 52.474136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232365, 28.563951, 52.524181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094199, 0.825132, -0.557031,
		-0.087216, 0.564208, 0.821014,
		0.991726, -0.028756, 0.125112,
		34.529881, 28.555325, 52.561714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.077633, 29.186579, 52.617790>,  <33.835674, 28.575455, 52.474136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.077633, 29.186579, 52.617790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.415371, 29.022358, 52.480083>,  <34.618015, 28.923826, 52.397457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.415371, 29.022358, 52.480083>,  <34.077633, 29.186579, 52.617790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415371, 29.022358, 52.480083> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215307, 0.848370, -0.483644,
		0.490629, 0.334241, 0.804715,
		0.844349, -0.410551, -0.344271,
		34.668674, 28.899193, 52.376801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631088, 29.711525, 52.682247>,  <34.077633, 29.186579, 52.617790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631088, 29.711525, 52.682247> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.772018, 29.463926, 52.401474>,  <34.856579, 29.315367, 52.233009>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.772018, 29.463926, 52.401474>,  <34.631088, 29.711525, 52.682247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772018, 29.463926, 52.401474> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186782, 0.781445, -0.595363,
		0.917048, 0.078657, 0.390944,
		0.352330, -0.618997, -0.701930,
		34.877716, 29.278227, 52.190895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182632, 30.036783, 52.391590>,  <34.631088, 29.711525, 52.682247>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182632, 30.036783, 52.391590> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.158451, 29.741613, 52.122723>,  <35.143944, 29.564512, 51.961403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.158451, 29.741613, 52.122723>,  <35.182632, 30.036783, 52.391590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158451, 29.741613, 52.122723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079791, 0.667676, -0.740164,
		0.994977, -0.098377, 0.018517,
		-0.060452, -0.737923, -0.672172,
		35.140316, 29.520237, 51.921070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691235, 30.116644, 51.824188>,  <35.182632, 30.036783, 52.391590>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691235, 30.116644, 51.824188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372910, 29.899052, 51.717777>,  <35.181915, 29.768496, 51.653931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.372910, 29.899052, 51.717777>,  <35.691235, 30.116644, 51.824188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.372910, 29.899052, 51.717777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193229, 0.644480, -0.739803,
		0.573888, -0.537338, -0.617997,
		-0.795811, -0.543979, -0.266030,
		35.134167, 29.735857, 51.637966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476089, 30.166096, 51.625675>,  <35.691235, 30.116644, 51.824188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476089, 30.166096, 51.625675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.490879, 30.488480, 51.862000>,  <36.499752, 30.681910, 52.003796>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.490879, 30.488480, 51.862000>,  <36.476089, 30.166096, 51.625675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490879, 30.488480, 51.862000> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194641, -0.585704, 0.786808,
		0.980177, 0.085905, -0.178529,
		0.036974, 0.805960, 0.590814,
		36.501972, 30.730268, 52.039246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.074417, 30.050674, 51.998734>,  <36.476089, 30.166096, 51.625675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.074417, 30.050674, 51.998734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.838764, 30.286411, 52.219860>,  <36.697372, 30.427853, 52.352535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.838764, 30.286411, 52.219860>,  <37.074417, 30.050674, 51.998734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838764, 30.286411, 52.219860> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192663, -0.561963, 0.804412,
		0.784733, 0.580411, 0.217525,
		-0.589130, 0.589340, 0.552815,
		36.662025, 30.463213, 52.385704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402168, 30.207617, 52.580978>,  <37.074417, 30.050674, 51.998734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402168, 30.207617, 52.580978> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.031124, 30.293045, 52.703575>,  <36.808498, 30.344301, 52.777134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.031124, 30.293045, 52.703575>,  <37.402168, 30.207617, 52.580978>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031124, 30.293045, 52.703575> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193543, -0.426984, 0.883304,
		0.319511, 0.878677, 0.354739,
		-0.927606, 0.213569, 0.306488,
		36.752842, 30.357115, 52.795521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501110, 30.570969, 53.303352>,  <37.402168, 30.207617, 52.580978>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501110, 30.570969, 53.303352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.131680, 30.419413, 53.279884>,  <36.910019, 30.328478, 53.265804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.131680, 30.419413, 53.279884>,  <37.501110, 30.570969, 53.303352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131680, 30.419413, 53.279884> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178586, -0.560527, 0.808651,
		-0.339274, 0.736377, 0.585356,
		-0.923580, -0.378891, -0.058666,
		36.854607, 30.305746, 53.262283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.289059, 30.477514, 54.010456>,  <37.501110, 30.570969, 53.303352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.289059, 30.477514, 54.010456> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.048874, 30.247116, 53.788582>,  <36.904762, 30.108877, 53.655457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.048874, 30.247116, 53.788582>,  <37.289059, 30.477514, 54.010456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048874, 30.247116, 53.788582> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020006, -0.682619, 0.730501,
		-0.799401, 0.449737, 0.398365,
		-0.600464, -0.575993, -0.554684,
		36.868736, 30.074318, 53.622177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768246, 30.234810, 54.521412>,  <37.289059, 30.477514, 54.010456>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768246, 30.234810, 54.521412> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.768246, 29.987926, 54.206692>,  <36.768246, 29.839796, 54.017860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.768246, 29.987926, 54.206692>,  <36.768246, 30.234810, 54.521412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768246, 29.987926, 54.206692> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042745, -0.786081, 0.616644,
		-0.999086, 0.033633, -0.026381,
		-0.000002, -0.617208, -0.786800,
		36.768246, 29.802765, 53.970654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302387, 29.754173, 54.721973>,  <36.768246, 30.234810, 54.521412>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302387, 29.754173, 54.721973> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.508835, 29.575760, 54.429489>,  <36.632702, 29.468712, 54.253998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.508835, 29.575760, 54.429489>,  <36.302387, 29.754173, 54.721973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508835, 29.575760, 54.429489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114876, -0.809947, 0.575144,
		-0.848781, -0.380839, -0.366786,
		0.516115, -0.446036, -0.731217,
		36.663670, 29.441950, 54.210125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.016293, 29.115147, 54.592098>,  <36.302387, 29.754173, 54.721973>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.016293, 29.115147, 54.592098> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.390923, 29.080978, 54.456139>,  <36.615700, 29.060478, 54.374561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.390923, 29.080978, 54.456139>,  <36.016293, 29.115147, 54.592098>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390923, 29.080978, 54.456139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098682, -0.866327, 0.489631,
		-0.336287, -0.492118, -0.802951,
		0.936575, -0.085419, -0.339898,
		36.671894, 29.055353, 54.354168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954010, 28.444216, 54.291882>,  <36.016293, 29.115147, 54.592098>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954010, 28.444216, 54.291882> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.331661, 28.549885, 54.370708>,  <36.558250, 28.613287, 54.418003>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.331661, 28.549885, 54.370708>,  <35.954010, 28.444216, 54.291882>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331661, 28.549885, 54.370708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139507, -0.862048, 0.487249,
		0.298597, -0.432534, -0.850738,
		0.944128, 0.264174, 0.197063,
		36.614899, 28.629137, 54.429829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.644001, 39.268600, 41.911674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023567, 39.203785, 41.803375>,  <36.251308, 39.164894, 41.738396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023567, 39.203785, 41.803375>,  <35.644001, 39.268600, 41.911674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023567, 39.203785, 41.803375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014697, -0.834436, 0.550908,
		-0.315191, -0.526744, -0.789427,
		0.948914, -0.162039, -0.270749,
		36.308243, 39.155174, 41.722149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714916, 38.610249, 41.438644>,  <35.644001, 39.268600, 41.911674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714916, 38.610249, 41.438644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062267, 38.688377, 41.620968>,  <36.270679, 38.735256, 41.730362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.062267, 38.688377, 41.620968>,  <35.714916, 38.610249, 41.438644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062267, 38.688377, 41.620968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075803, -0.856079, 0.511256,
		0.490072, -0.478516, -0.728595,
		0.868379, 0.195323, 0.455814,
		36.322781, 38.746975, 41.757713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138275, 37.928040, 41.497040>,  <35.714916, 38.610249, 41.438644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138275, 37.928040, 41.497040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269485, 38.164623, 41.791676>,  <36.348213, 38.306576, 41.968456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269485, 38.164623, 41.791676>,  <36.138275, 37.928040, 41.497040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269485, 38.164623, 41.791676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005210, -0.780859, 0.624686,
		0.944653, -0.201077, -0.259226,
		0.328029, 0.591463, 0.736593,
		36.367893, 38.342064, 42.012653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526764, 37.417332, 41.931522>,  <36.138275, 37.928040, 41.497040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526764, 37.417332, 41.931522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507114, 37.747143, 42.156994>,  <36.495327, 37.945030, 42.292278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.507114, 37.747143, 42.156994>,  <36.526764, 37.417332, 41.931522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.507114, 37.747143, 42.156994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062496, -0.565793, 0.822175,
		0.996836, 0.005159, 0.079323,
		-0.049121, 0.824531, 0.563680,
		36.492378, 37.994503, 42.326099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.032227, 37.306438, 42.387547>,  <36.526764, 37.417332, 41.931522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.032227, 37.306438, 42.387547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767136, 37.564915, 42.538929>,  <36.608082, 37.720001, 42.629757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.767136, 37.564915, 42.538929>,  <37.032227, 37.306438, 42.387547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767136, 37.564915, 42.538929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021917, -0.521890, 0.852731,
		0.748541, 0.556833, 0.360033,
		-0.662726, 0.646195, 0.378452,
		36.568317, 37.758774, 42.652466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.258732, 37.392437, 42.952579>,  <37.032227, 37.306438, 42.387547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.258732, 37.392437, 42.952579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893871, 37.547825, 43.004848>,  <36.674957, 37.641056, 43.036209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893871, 37.547825, 43.004848>,  <37.258732, 37.392437, 42.952579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893871, 37.547825, 43.004848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047165, -0.416203, 0.908047,
		0.407136, 0.822111, 0.397962,
		-0.912149, 0.388469, 0.130677,
		36.620228, 37.664364, 43.044052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229156, 37.689850, 43.653519>,  <37.258732, 37.392437, 42.952579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229156, 37.689850, 43.653519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845051, 37.640015, 43.553627>,  <36.614586, 37.610115, 43.493690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845051, 37.640015, 43.553627>,  <37.229156, 37.689850, 43.653519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845051, 37.640015, 43.553627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165400, -0.466690, 0.868817,
		-0.224788, 0.875603, 0.427540,
		-0.960267, -0.124585, -0.249731,
		36.556973, 37.602638, 43.478706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900105, 37.884262, 44.260555>,  <37.229156, 37.689850, 43.653519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900105, 37.884262, 44.260555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629078, 37.665478, 44.063889>,  <36.466461, 37.534206, 43.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629078, 37.665478, 44.063889>,  <36.900105, 37.884262, 44.260555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629078, 37.665478, 44.063889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328020, -0.373599, 0.867656,
		-0.658263, 0.749169, 0.073722,
		-0.677564, -0.546964, -0.491669,
		36.425808, 37.501389, 43.916389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232529, 38.030197, 44.625702>,  <36.900105, 37.884262, 44.260555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232529, 38.030197, 44.625702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256634, 37.673374, 44.446545>,  <36.271095, 37.459282, 44.339050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.256634, 37.673374, 44.446545>,  <36.232529, 38.030197, 44.625702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256634, 37.673374, 44.446545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157504, -0.451580, 0.878218,
		-0.985678, 0.017624, -0.167714,
		0.060259, -0.892057, -0.447889,
		36.274712, 37.405758, 44.312180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636780, 37.719170, 44.860825>,  <36.232529, 38.030197, 44.625702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636780, 37.719170, 44.860825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868660, 37.417797, 44.736698>,  <36.007786, 37.236973, 44.662220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.868660, 37.417797, 44.736698>,  <35.636780, 37.719170, 44.860825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868660, 37.417797, 44.736698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206386, -0.504184, 0.838572,
		-0.788261, -0.422073, -0.447771,
		0.579697, -0.753427, -0.310319,
		36.042568, 37.191769, 44.643604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299992, 37.142223, 45.123196>,  <35.636780, 37.719170, 44.860825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299992, 37.142223, 45.123196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660015, 36.986977, 45.043934>,  <35.876030, 36.893829, 44.996376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660015, 36.986977, 45.043934>,  <35.299992, 37.142223, 45.123196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660015, 36.986977, 45.043934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071356, -0.579842, 0.811598,
		-0.429891, -0.716345, -0.549585,
		0.900057, -0.388115, -0.198153,
		35.930031, 36.870541, 44.984489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246929, 36.419193, 45.209030>,  <35.299992, 37.142223, 45.123196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246929, 36.419193, 45.209030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640545, 36.488876, 45.223495>,  <35.876717, 36.530685, 45.232174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640545, 36.488876, 45.223495>,  <35.246929, 36.419193, 45.209030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640545, 36.488876, 45.223495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053391, -0.483003, 0.873989,
		0.169726, -0.858113, -0.484598,
		0.984044, 0.174212, 0.036163,
		35.935757, 36.541142, 45.234344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934731, 35.842171, 45.078453>,  <35.246929, 36.419193, 45.209030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934731, 35.842171, 45.078453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553501, 35.759380, 45.166821>,  <34.324764, 35.709705, 45.219841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.553501, 35.759380, 45.166821>,  <34.934731, 35.842171, 45.078453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.553501, 35.759380, 45.166821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274273, 0.281466, -0.919539,
		0.128144, -0.936983, -0.325027,
		-0.953076, -0.206979, 0.220921,
		34.267578, 35.697285, 45.233097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644588, 35.439129, 44.515766>,  <34.934731, 35.842171, 45.078453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644588, 35.439129, 44.515766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305084, 35.572876, 44.679623>,  <34.101383, 35.653122, 44.777939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.305084, 35.572876, 44.679623>,  <34.644588, 35.439129, 44.515766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305084, 35.572876, 44.679623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309349, 0.314310, -0.897503,
		-0.428849, -0.888487, -0.163337,
		-0.848759, 0.334366, 0.409645,
		34.050457, 35.673187, 44.802517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196171, 35.310444, 44.029213>,  <34.644588, 35.439129, 44.515766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196171, 35.310444, 44.029213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977066, 35.554142, 44.258572>,  <33.845604, 35.700359, 44.396187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.977066, 35.554142, 44.258572>,  <34.196171, 35.310444, 44.029213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977066, 35.554142, 44.258572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544021, 0.261310, -0.797344,
		-0.635612, -0.748691, 0.188307,
		-0.547758, 0.609244, 0.573396,
		33.812740, 35.736916, 44.430592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534447, 35.154007, 43.838261>,  <34.196171, 35.310444, 44.029213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534447, 35.154007, 43.838261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541695, 35.520142, 43.999176>,  <33.546043, 35.739822, 44.095726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541695, 35.520142, 43.999176>,  <33.534447, 35.154007, 43.838261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541695, 35.520142, 43.999176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526724, 0.350732, -0.774305,
		-0.849843, -0.197863, 0.488484,
		0.018121, 0.915334, 0.402286,
		33.547131, 35.794743, 44.119862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.800053, 35.349106, 43.805466>,  <33.534447, 35.154007, 43.838261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.800053, 35.349106, 43.805466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013805, 35.682114, 43.863918>,  <33.142056, 35.881916, 43.898991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013805, 35.682114, 43.863918>,  <32.800053, 35.349106, 43.805466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013805, 35.682114, 43.863918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572962, 0.483885, -0.661491,
		-0.621411, 0.269762, 0.735579,
		0.534381, 0.832517, 0.146128,
		33.174118, 35.931870, 43.907757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.303802, 35.942326, 43.952595>,  <32.800053, 35.349106, 43.805466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.303802, 35.942326, 43.952595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636196, 36.090450, 43.786541>,  <32.835632, 36.179325, 43.686909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636196, 36.090450, 43.786541>,  <32.303802, 35.942326, 43.952595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636196, 36.090450, 43.786541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553305, 0.472905, -0.685722,
		-0.057609, 0.799520, 0.597870,
		0.830984, 0.370309, -0.415135,
		32.885490, 36.201542, 43.661999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148991, 36.558678, 43.703209>,  <32.303802, 35.942326, 43.952595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148991, 36.558678, 43.703209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490372, 36.505653, 43.501595>,  <32.695202, 36.473839, 43.380627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.490372, 36.505653, 43.501595>,  <32.148991, 36.558678, 43.703209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490372, 36.505653, 43.501595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437222, 0.344245, -0.830862,
		0.283648, 0.929475, 0.235839,
		0.853452, -0.132558, -0.504031,
		32.746407, 36.465885, 43.350384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.103615, 37.033264, 43.228104>,  <32.148991, 36.558678, 43.703209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.103615, 37.033264, 43.228104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403461, 36.857368, 43.030231>,  <32.583370, 36.751831, 42.911510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403461, 36.857368, 43.030231>,  <32.103615, 37.033264, 43.228104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403461, 36.857368, 43.030231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474643, 0.163739, -0.864814,
		0.461288, 0.883075, -0.085975,
		0.749618, -0.439736, -0.494676,
		32.628345, 36.725449, 42.881828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.346565, 37.425335, 42.597137>,  <32.103615, 37.033264, 43.228104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.346565, 37.425335, 42.597137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427761, 37.039841, 42.527855>,  <32.476479, 36.808544, 42.486286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.427761, 37.039841, 42.527855>,  <32.346565, 37.425335, 42.597137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.427761, 37.039841, 42.527855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403568, 0.078820, -0.911548,
		0.892147, 0.254938, -0.372935,
		0.202994, -0.963739, -0.173204,
		32.488659, 36.750717, 42.475895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697266, 37.389465, 41.813812>,  <32.346565, 37.425335, 42.597137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697266, 37.389465, 41.813812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588711, 37.010788, 41.883236>,  <32.523579, 36.783581, 41.924889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.588711, 37.010788, 41.883236>,  <32.697266, 37.389465, 41.813812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.588711, 37.010788, 41.883236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389211, -0.056981, -0.919384,
		0.880265, -0.317056, -0.353000,
		-0.271382, -0.946694, 0.173560,
		32.507298, 36.726780, 41.935303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827518, 37.123837, 41.097652>,  <32.697266, 37.389465, 41.813812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827518, 37.123837, 41.097652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589439, 36.874550, 41.300568>,  <32.446590, 36.724979, 41.422318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589439, 36.874550, 41.300568>,  <32.827518, 37.123837, 41.097652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589439, 36.874550, 41.300568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411038, -0.306340, -0.858606,
		0.690498, -0.719556, -0.073831,
		-0.595198, -0.623213, 0.507292,
		32.410881, 36.687588, 41.452755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934208, 36.534351, 40.825745>,  <32.827518, 37.123837, 41.097652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934208, 36.534351, 40.825745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577080, 36.509102, 41.004135>,  <32.362804, 36.493954, 41.111168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577080, 36.509102, 41.004135>,  <32.934208, 36.534351, 40.825745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577080, 36.509102, 41.004135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409420, -0.299009, -0.861956,
		0.187760, -0.952160, 0.241117,
		-0.892816, -0.063123, 0.445976,
		32.309235, 36.490166, 41.137928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.685490, 35.940575, 40.468983>,  <32.934208, 36.534351, 40.825745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.685490, 35.940575, 40.468983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366768, 36.112404, 40.638958>,  <32.175537, 36.215504, 40.740944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.366768, 36.112404, 40.638958>,  <32.685490, 35.940575, 40.468983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.366768, 36.112404, 40.638958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528012, -0.153078, -0.835326,
		-0.293788, -0.889961, 0.348795,
		-0.796801, 0.429576, 0.424938,
		32.127728, 36.241276, 40.766438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.158585, 35.450760, 40.297672>,  <32.685490, 35.940575, 40.468983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.158585, 35.450760, 40.297672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992188, 35.808346, 40.364346>,  <31.892349, 36.022896, 40.404350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.992188, 35.808346, 40.364346>,  <32.158585, 35.450760, 40.297672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.992188, 35.808346, 40.364346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407806, -0.019557, -0.912859,
		-0.812801, -0.447718, 0.372698,
		-0.415993, 0.893961, 0.166686,
		31.867390, 36.076534, 40.414352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.402622, 35.215794, 40.918201>,  <32.158585, 35.450760, 40.297672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.402622, 35.215794, 40.918201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380692, 34.946598, 40.623158>,  <32.367531, 34.785080, 40.446129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380692, 34.946598, 40.623158>,  <32.402622, 35.215794, 40.918201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380692, 34.946598, 40.623158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194658, -0.731755, 0.653179,
		-0.979338, -0.107769, 0.171125,
		-0.054829, -0.672993, -0.737614,
		32.364243, 34.744701, 40.401875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848942, 34.795086, 41.010853>,  <32.402622, 35.215794, 40.918201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848942, 34.795086, 41.010853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115852, 34.593716, 40.791286>,  <32.275997, 34.472893, 40.659546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.115852, 34.593716, 40.791286>,  <31.848942, 34.795086, 41.010853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.115852, 34.593716, 40.791286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006809, -0.741082, 0.671380,
		-0.744807, -0.444237, -0.497911,
		0.667245, -0.503439, -0.548938,
		32.316036, 34.442688, 40.626610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628029, 34.138412, 40.980724>,  <31.848942, 34.795086, 41.010853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628029, 34.138412, 40.980724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023411, 34.124527, 40.921730>,  <32.260639, 34.116196, 40.886333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023411, 34.124527, 40.921730>,  <31.628029, 34.138412, 40.980724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023411, 34.124527, 40.921730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051274, -0.839340, 0.541183,
		-0.142574, -0.542497, -0.827870,
		0.988455, -0.034711, -0.147484,
		32.319946, 34.114113, 40.877483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947771, 33.419571, 41.090534>,  <31.628029, 34.138412, 40.980724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947771, 33.419571, 41.090534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279121, 33.642963, 41.107918>,  <32.477932, 33.777000, 41.118347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.279121, 33.642963, 41.107918>,  <31.947771, 33.419571, 41.090534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279121, 33.642963, 41.107918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382777, -0.620983, 0.684004,
		0.408990, -0.549979, -0.728182,
		0.828377, 0.558483, 0.043456,
		32.527634, 33.810509, 41.120956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485352, 32.899158, 41.113239>,  <31.947771, 33.419571, 41.090534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485352, 32.899158, 41.113239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630024, 33.235291, 41.274754>,  <32.716827, 33.436970, 41.371662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630024, 33.235291, 41.274754>,  <32.485352, 32.899158, 41.113239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630024, 33.235291, 41.274754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481223, -0.539214, 0.691139,
		0.798508, -0.055660, -0.599406,
		0.361677, 0.840328, 0.403781,
		32.738525, 33.487389, 41.395889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.193996, 32.785145, 41.160789>,  <32.485352, 32.899158, 41.113239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.193996, 32.785145, 41.160789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114788, 33.059196, 41.441181>,  <33.067261, 33.223629, 41.609417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.114788, 33.059196, 41.441181>,  <33.193996, 32.785145, 41.160789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.114788, 33.059196, 41.441181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361335, -0.613757, 0.701954,
		0.911166, 0.392294, -0.126024,
		-0.198024, 0.685134, 0.700984,
		33.055382, 33.264736, 41.651478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745338, 32.755672, 41.608601>,  <33.193996, 32.785145, 41.160789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745338, 32.755672, 41.608601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493855, 32.964733, 41.838924>,  <33.342964, 33.090168, 41.977119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.493855, 32.964733, 41.838924>,  <33.745338, 32.755672, 41.608601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.493855, 32.964733, 41.838924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291345, -0.528212, 0.797565,
		0.720997, 0.669199, 0.179822,
		-0.628714, 0.522652, 0.575807,
		33.305241, 33.121529, 42.011665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180111, 33.065350, 42.160503>,  <33.745338, 32.755672, 41.608601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180111, 33.065350, 42.160503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806778, 33.068710, 42.304066>,  <33.582779, 33.070728, 42.390202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.806778, 33.068710, 42.304066>,  <34.180111, 33.065350, 42.160503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.806778, 33.068710, 42.304066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322672, -0.418613, 0.848908,
		0.157377, 0.908126, 0.387995,
		-0.933335, 0.008404, 0.358907,
		33.526779, 33.071232, 42.411739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317230, 33.182899, 42.817287>,  <34.180111, 33.065350, 42.160503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317230, 33.182899, 42.817287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942623, 33.042881, 42.825378>,  <33.717861, 32.958870, 42.830235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942623, 33.042881, 42.825378>,  <34.317230, 33.182899, 42.817287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942623, 33.042881, 42.825378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169293, -0.400901, 0.900343,
		-0.307049, 0.846610, 0.434710,
		-0.936515, -0.350043, 0.020228,
		33.661667, 32.937866, 42.831448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110199, 33.447105, 43.435520>,  <34.317230, 33.182899, 42.817287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110199, 33.447105, 43.435520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864155, 33.141876, 43.356167>,  <33.716530, 32.958736, 43.308556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.864155, 33.141876, 43.356167>,  <34.110199, 33.447105, 43.435520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864155, 33.141876, 43.356167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274081, -0.442868, 0.853667,
		-0.739272, 0.470724, 0.481556,
		-0.615107, -0.763077, -0.198383,
		33.679623, 32.912952, 43.296650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.617752, 33.326900, 43.988857>,  <34.110199, 33.447105, 43.435520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.617752, 33.326900, 43.988857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598911, 32.966869, 43.815586>,  <33.587608, 32.750851, 43.711624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598911, 32.966869, 43.815586>,  <33.617752, 33.326900, 43.988857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598911, 32.966869, 43.815586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086121, -0.435706, 0.895959,
		-0.995171, 0.004895, 0.098038,
		-0.047101, -0.900075, -0.433181,
		33.584782, 32.696846, 43.685631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116486, 32.816643, 44.354282>,  <33.617752, 33.326900, 43.988857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116486, 32.816643, 44.354282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354961, 32.571556, 44.146767>,  <33.498047, 32.424503, 44.022259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.354961, 32.571556, 44.146767>,  <33.116486, 32.816643, 44.354282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354961, 32.571556, 44.146767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233800, -0.485676, 0.842292,
		-0.768048, -0.623457, -0.146300,
		0.596187, -0.612716, -0.518787,
		33.533817, 32.387741, 43.991131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024315, 32.282478, 44.703266>,  <33.116486, 32.816643, 44.354282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024315, 32.282478, 44.703266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325127, 32.147388, 44.476852>,  <33.505611, 32.066334, 44.341003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325127, 32.147388, 44.476852>,  <33.024315, 32.282478, 44.703266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325127, 32.147388, 44.476852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349250, -0.524129, 0.776733,
		-0.558999, -0.781811, -0.276208,
		0.752027, -0.337728, -0.566035,
		33.550735, 32.046070, 44.307041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002739, 31.511921, 44.672890>,  <33.024315, 32.282478, 44.703266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002739, 31.511921, 44.672890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362675, 31.679071, 44.622818>,  <33.578636, 31.779362, 44.592773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362675, 31.679071, 44.622818>,  <33.002739, 31.511921, 44.672890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362675, 31.679071, 44.622818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358806, -0.545805, 0.757203,
		0.248094, -0.726275, -0.641073,
		0.899838, 0.417878, -0.125181,
		33.632626, 31.804436, 44.585262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367050, 30.962799, 44.674461>,  <33.002739, 31.511921, 44.672890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367050, 30.962799, 44.674461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611347, 31.265522, 44.767616>,  <33.757927, 31.447155, 44.823509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.611347, 31.265522, 44.767616>,  <33.367050, 30.962799, 44.674461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611347, 31.265522, 44.767616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453369, -0.575355, 0.680752,
		0.649193, -0.310178, -0.694506,
		0.610742, 0.756807, 0.232891,
		33.794571, 31.492563, 44.837482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.110668, 30.646254, 44.801479>,  <33.367050, 30.962799, 44.674461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.110668, 30.646254, 44.801479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099861, 31.013515, 44.959599>,  <34.093376, 31.233873, 45.054470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.099861, 31.013515, 44.959599>,  <34.110668, 30.646254, 44.801479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099861, 31.013515, 44.959599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495988, -0.331020, 0.802759,
		0.867909, 0.217753, -0.446450,
		-0.027020, 0.918155, 0.395298,
		34.091755, 31.288961, 45.078186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818901, 30.903399, 45.023624>,  <34.110668, 30.646254, 44.801479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818901, 30.903399, 45.023624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575424, 31.131578, 45.244202>,  <34.429340, 31.268486, 45.376549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575424, 31.131578, 45.244202>,  <34.818901, 30.903399, 45.023624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575424, 31.131578, 45.244202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411806, -0.366930, 0.834133,
		0.678170, 0.734814, -0.011568,
		-0.608688, 0.570448, 0.551442,
		34.392818, 31.302713, 45.409634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157940, 31.423994, 45.434761>,  <34.818901, 30.903399, 45.023624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157940, 31.423994, 45.434761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805252, 31.361704, 45.612892>,  <34.593639, 31.324329, 45.719772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805252, 31.361704, 45.612892>,  <35.157940, 31.423994, 45.434761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805252, 31.361704, 45.612892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463425, -0.462682, 0.755754,
		0.088356, 0.872740, 0.480123,
		-0.881720, -0.155725, 0.445330,
		34.540737, 31.314987, 45.746490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285046, 31.289291, 46.133186>,  <35.157940, 31.423994, 45.434761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285046, 31.289291, 46.133186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904766, 31.165380, 46.127449>,  <34.676598, 31.091034, 46.124008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.904766, 31.165380, 46.127449>,  <35.285046, 31.289291, 46.133186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904766, 31.165380, 46.127449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118780, -0.406476, 0.905908,
		-0.286461, 0.859543, 0.423233,
		-0.950700, -0.309779, -0.014343,
		34.619556, 31.072447, 46.123146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981693, 31.473999, 46.774792>,  <35.285046, 31.289291, 46.133186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981693, 31.473999, 46.774792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792423, 31.162416, 46.610191>,  <34.678860, 30.975468, 46.511433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.792423, 31.162416, 46.610191>,  <34.981693, 31.473999, 46.774792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792423, 31.162416, 46.610191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149107, -0.531174, 0.834039,
		-0.868259, 0.333288, 0.367485,
		-0.473174, -0.778956, -0.411502,
		34.650471, 30.928730, 46.486740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609493, 31.234249, 47.311329>,  <34.981693, 31.473999, 46.774792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609493, 31.234249, 47.311329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549232, 30.926950, 47.062458>,  <34.513077, 30.742571, 46.913136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.549232, 30.926950, 47.062458>,  <34.609493, 31.234249, 47.311329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549232, 30.926950, 47.062458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184652, -0.640150, 0.745729,
		-0.971189, -0.002543, 0.238296,
		-0.150649, -0.768246, -0.622176,
		34.504036, 30.696476, 46.875805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107235, 30.846128, 47.597321>,  <34.609493, 31.234249, 47.311329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107235, 30.846128, 47.597321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268795, 30.596815, 47.329475>,  <34.365730, 30.447227, 47.168770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268795, 30.596815, 47.329475>,  <34.107235, 30.846128, 47.597321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268795, 30.596815, 47.329475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213141, -0.647714, 0.731462,
		-0.889626, -0.438160, -0.128765,
		0.403901, -0.623283, -0.669614,
		34.389965, 30.409830, 47.128590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762569, 30.108589, 47.704124>,  <34.107235, 30.846128, 47.597321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762569, 30.108589, 47.704124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087326, 30.054369, 47.476982>,  <34.282181, 30.021837, 47.340694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087326, 30.054369, 47.476982>,  <33.762569, 30.108589, 47.704124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087326, 30.054369, 47.476982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130146, -0.906173, 0.402384,
		-0.569121, -0.400596, -0.718071,
		0.811889, -0.135551, -0.567857,
		34.330894, 30.013704, 47.306625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643372, 29.460041, 47.343876>,  <33.762569, 30.108589, 47.704124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643372, 29.460041, 47.343876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037922, 29.516888, 47.377010>,  <34.274654, 29.550995, 47.396893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.037922, 29.516888, 47.377010>,  <33.643372, 29.460041, 47.343876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037922, 29.516888, 47.377010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092724, -0.896313, 0.433619,
		0.135875, -0.420030, -0.897281,
		0.986377, 0.142117, 0.082839,
		34.333836, 29.559523, 47.401863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.021969, 28.740694, 47.234627>,  <33.643372, 29.460041, 47.343876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.021969, 28.740694, 47.234627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304741, 28.965651, 47.406193>,  <34.474403, 29.100624, 47.509132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304741, 28.965651, 47.406193>,  <34.021969, 28.740694, 47.234627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304741, 28.965651, 47.406193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333999, -0.799991, 0.498457,
		0.623457, -0.209115, -0.753374,
		0.706927, 0.562393, 0.428916,
		34.516819, 29.134369, 47.534866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647591, 28.307299, 47.235165>,  <34.021969, 28.740694, 47.234627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647591, 28.307299, 47.235165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723045, 28.585960, 47.512028>,  <34.768318, 28.753159, 47.678146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.723045, 28.585960, 47.512028>,  <34.647591, 28.307299, 47.235165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723045, 28.585960, 47.512028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264732, -0.714796, 0.647289,
		0.945692, 0.061137, -0.319262,
		0.188634, 0.696655, 0.692162,
		34.779636, 28.794956, 47.719677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.404385, 28.293291, 47.424587>,  <34.647591, 28.307299, 47.235165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.404385, 28.293291, 47.424587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187836, 28.450573, 47.721859>,  <35.057907, 28.544941, 47.900223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187836, 28.450573, 47.721859>,  <35.404385, 28.293291, 47.424587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187836, 28.450573, 47.721859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233998, -0.778524, 0.582362,
		0.807566, 0.489176, 0.329461,
		-0.541371, 0.393203, 0.743175,
		35.025425, 28.568533, 47.944813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893192, 28.253160, 48.039814>,  <35.404385, 28.293291, 47.424587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893192, 28.253160, 48.039814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522724, 28.299511, 48.183357>,  <35.300442, 28.327320, 48.269482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.522724, 28.299511, 48.183357>,  <35.893192, 28.253160, 48.039814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522724, 28.299511, 48.183357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156140, -0.748381, 0.644628,
		0.343260, 0.653068, 0.675037,
		-0.926171, 0.115875, 0.358859,
		35.244873, 28.334274, 48.291016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.307499, 28.792068, 48.250126>,  <35.893192, 28.253160, 48.039814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.307499, 28.792068, 48.250126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676743, 28.673746, 48.151848>,  <36.898289, 28.602753, 48.092880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676743, 28.673746, 48.151848>,  <36.307499, 28.792068, 48.250126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676743, 28.673746, 48.151848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142262, 0.330898, -0.932881,
		0.357254, 0.896105, 0.263373,
		0.923110, -0.295807, -0.245697,
		36.953674, 28.585005, 48.078140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644112, 29.374166, 47.976192>,  <36.307499, 28.792068, 48.250126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644112, 29.374166, 47.976192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812515, 29.043095, 47.827763>,  <36.913559, 28.844452, 47.738705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812515, 29.043095, 47.827763>,  <36.644112, 29.374166, 47.976192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812515, 29.043095, 47.827763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002770, 0.407925, -0.913011,
		0.907052, 0.385414, 0.169447,
		0.421009, -0.827679, -0.371077,
		36.938820, 28.794790, 47.716438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296288, 29.682076, 47.586590>,  <36.644112, 29.374166, 47.976192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296288, 29.682076, 47.586590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216274, 29.312809, 47.455292>,  <37.168266, 29.091249, 47.376511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.216274, 29.312809, 47.455292>,  <37.296288, 29.682076, 47.586590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216274, 29.312809, 47.455292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072310, 0.348017, -0.934695,
		0.977116, -0.163238, -0.136371,
		-0.200037, -0.923167, -0.328249,
		37.156261, 29.035858, 47.356815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723877, 29.604309, 46.976658>,  <37.296288, 29.682076, 47.586590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723877, 29.604309, 46.976658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436447, 29.329565, 46.933056>,  <37.263988, 29.164719, 46.906895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.436447, 29.329565, 46.933056>,  <37.723877, 29.604309, 46.976658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.436447, 29.329565, 46.933056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075172, 0.232530, -0.969680,
		0.691379, -0.688589, -0.218722,
		-0.718571, -0.686858, -0.109004,
		37.220875, 29.123508, 46.900356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974808, 29.169102, 46.432995>,  <37.723877, 29.604309, 46.976658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974808, 29.169102, 46.432995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576019, 29.153492, 46.459892>,  <37.336746, 29.144127, 46.476032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576019, 29.153492, 46.459892>,  <37.974808, 29.169102, 46.432995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576019, 29.153492, 46.459892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073907, 0.207239, -0.975495,
		0.024129, -0.977512, -0.209496,
		-0.996973, -0.039021, 0.067244,
		37.276928, 29.141785, 46.480064>
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
