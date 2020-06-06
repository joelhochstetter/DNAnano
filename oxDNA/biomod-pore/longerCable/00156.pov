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
	<24.438360, 34.748535, 34.656563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150257, 34.986954, 34.798523>,  <23.977396, 35.130005, 34.883701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.150257, 34.986954, 34.798523>,  <24.438360, 34.748535, 34.656563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.150257, 34.986954, 34.798523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485280, 0.067333, 0.871762,
		0.495715, 0.800121, -0.337746,
		-0.720257, 0.596047, 0.354905,
		23.934179, 35.165768, 34.904995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872183, 34.076084, 34.456345>,  <24.438360, 34.748535, 34.656563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872183, 34.076084, 34.456345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201847, 34.300953, 34.483852>,  <25.399645, 34.435875, 34.500355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201847, 34.300953, 34.483852>,  <24.872183, 34.076084, 34.456345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201847, 34.300953, 34.483852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403294, -0.497281, -0.768157,
		-0.397638, 0.660816, -0.636558,
		0.824159, 0.562169, 0.068766,
		25.449095, 34.469604, 34.504482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.063824, 34.463428, 33.818455>,  <24.872183, 34.076084, 34.456345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.063824, 34.463428, 33.818455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378225, 34.328003, 34.025364>,  <25.566866, 34.246746, 34.149509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.378225, 34.328003, 34.025364>,  <25.063824, 34.463428, 33.818455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.378225, 34.328003, 34.025364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356097, -0.436031, -0.826482,
		0.505368, 0.833816, -0.222158,
		0.786002, -0.338567, 0.517275,
		25.614025, 34.226433, 34.180546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698687, 34.650463, 33.514935>,  <25.063824, 34.463428, 33.818455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698687, 34.650463, 33.514935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734779, 34.307117, 33.716949>,  <25.756435, 34.101109, 33.838158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734779, 34.307117, 33.716949>,  <25.698687, 34.650463, 33.514935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734779, 34.307117, 33.716949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498066, -0.400246, -0.769242,
		0.862432, 0.320953, 0.391409,
		0.090230, -0.858366, 0.505041,
		25.761848, 34.049606, 33.868462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447701, 34.379959, 33.423618>,  <25.698687, 34.650463, 33.514935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447701, 34.379959, 33.423618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168489, 34.103588, 33.498859>,  <26.000963, 33.937767, 33.544003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.168489, 34.103588, 33.498859>,  <26.447701, 34.379959, 33.423618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.168489, 34.103588, 33.498859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224294, -0.460426, -0.858895,
		0.680037, -0.557343, 0.476360,
		-0.698027, -0.690925, 0.188098,
		25.959082, 33.896309, 33.555290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.653599, 33.658466, 33.458683>,  <26.447701, 34.379959, 33.423618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.653599, 33.658466, 33.458683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273331, 33.692226, 33.339279>,  <26.045170, 33.712482, 33.267635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.273331, 33.692226, 33.339279>,  <26.653599, 33.658466, 33.458683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.273331, 33.692226, 33.339279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253899, -0.341172, -0.905062,
		-0.178228, -0.936205, 0.302913,
		-0.950668, 0.084398, -0.298508,
		25.988131, 33.717545, 33.249725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612791, 33.029007, 33.142185>,  <26.653599, 33.658466, 33.458683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612791, 33.029007, 33.142185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337317, 33.273613, 32.986362>,  <26.172031, 33.420376, 32.892868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.337317, 33.273613, 32.986362>,  <26.612791, 33.029007, 33.142185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.337317, 33.273613, 32.986362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188049, -0.368248, -0.910511,
		-0.700250, -0.700312, 0.138611,
		-0.688686, 0.611519, -0.389559,
		26.130711, 33.457069, 32.869495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212687, 32.584194, 33.209385>,  <26.612791, 33.029007, 33.142185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212687, 32.584194, 33.209385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606768, 32.516075, 33.201710>,  <27.843216, 32.475204, 33.197105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.606768, 32.516075, 33.201710>,  <27.212687, 32.584194, 33.209385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.606768, 32.516075, 33.201710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168182, -0.982270, 0.082828,
		-0.032954, -0.078375, -0.996379,
		0.985205, -0.170302, -0.019188,
		27.902328, 32.464985, 33.195953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403246, 32.162861, 32.578316>,  <27.212687, 32.584194, 33.209385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403246, 32.162861, 32.578316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683544, 32.104313, 32.857609>,  <27.851723, 32.069183, 33.025185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683544, 32.104313, 32.857609>,  <27.403246, 32.162861, 32.578316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683544, 32.104313, 32.857609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131211, -0.988473, -0.075534,
		0.701241, -0.038686, -0.711874,
		0.700746, -0.146373, 0.698234,
		27.893768, 32.060402, 33.067078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.827702, 31.623867, 32.340675>,  <27.403246, 32.162861, 32.578316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.827702, 31.623867, 32.340675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914581, 31.622126, 32.731121>,  <27.966709, 31.621080, 32.965389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.914581, 31.622126, 32.731121>,  <27.827702, 31.623867, 32.340675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.914581, 31.622126, 32.731121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067444, -0.997667, 0.010559,
		0.973794, -0.068127, -0.216987,
		0.217200, -0.004352, 0.976118,
		27.979742, 31.620819, 33.023956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498161, 31.293896, 32.488731>,  <27.827702, 31.623867, 32.340675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498161, 31.293896, 32.488731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295618, 31.296024, 32.833652>,  <28.174091, 31.297302, 33.040607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295618, 31.296024, 32.833652>,  <28.498161, 31.293896, 32.488731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295618, 31.296024, 32.833652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016358, -0.999860, -0.003435,
		0.862168, -0.015845, 0.506374,
		-0.506358, 0.005322, 0.862307,
		28.143711, 31.297621, 33.092346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247435, 30.677530, 32.673412>,  <28.498161, 31.293896, 32.488731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247435, 30.677530, 32.673412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317713, 30.473593, 32.336559>,  <28.359880, 30.351231, 32.134449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317713, 30.473593, 32.336559>,  <28.247435, 30.677530, 32.673412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317713, 30.473593, 32.336559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558727, 0.652670, -0.511708,
		0.810528, 0.560428, -0.170192,
		0.175696, -0.509845, -0.842134,
		28.370422, 30.320639, 32.083920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508047, 30.157797, 33.158428>,  <28.247435, 30.677530, 32.673412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508047, 30.157797, 33.158428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219975, 29.910736, 33.284821>,  <28.047131, 29.762499, 33.360657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219975, 29.910736, 33.284821>,  <28.508047, 30.157797, 33.158428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219975, 29.910736, 33.284821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468820, 0.768980, 0.434601,
		-0.511414, 0.164854, -0.843373,
		-0.720183, -0.617651, 0.315980,
		28.003920, 29.725441, 33.379616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.745054, 30.209826, 32.848377>,  <28.508047, 30.157797, 33.158428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.745054, 30.209826, 32.848377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810694, 30.115168, 33.231434>,  <27.850077, 30.058372, 33.461266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.810694, 30.115168, 33.231434>,  <27.745054, 30.209826, 32.848377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.810694, 30.115168, 33.231434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310400, 0.909097, 0.277839,
		-0.936335, -0.342844, 0.075725,
		0.164097, -0.236645, 0.957638,
		27.859922, 30.044174, 33.518726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.212690, 30.545851, 33.223133>,  <27.745054, 30.209826, 32.848377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.212690, 30.545851, 33.223133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560791, 30.507568, 33.416424>,  <27.769651, 30.484598, 33.532398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.560791, 30.507568, 33.416424>,  <27.212690, 30.545851, 33.223133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.560791, 30.507568, 33.416424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105032, 0.994438, 0.007801,
		-0.481284, 0.043965, 0.875462,
		0.870250, -0.095706, 0.483225,
		27.821865, 30.478857, 33.561390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.134438, 30.954445, 33.805721>,  <27.212690, 30.545851, 33.223133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.134438, 30.954445, 33.805721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509878, 30.921890, 33.671616>,  <27.735144, 30.902357, 33.591152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509878, 30.921890, 33.671616>,  <27.134438, 30.954445, 33.805721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509878, 30.921890, 33.671616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124741, 0.986091, 0.109841,
		0.321660, -0.144918, 0.935699,
		0.938602, -0.081388, -0.335263,
		27.791458, 30.897474, 33.571037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487232, 31.429976, 34.156090>,  <27.134438, 30.954445, 33.805721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487232, 31.429976, 34.156090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756920, 31.364809, 33.867954>,  <27.918732, 31.325710, 33.695072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.756920, 31.364809, 33.867954>,  <27.487232, 31.429976, 34.156090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.756920, 31.364809, 33.867954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220360, 0.975313, -0.014330,
		0.704891, -0.149073, 0.693474,
		0.674218, -0.162915, -0.720339,
		27.959185, 31.315935, 33.651852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.046028, 31.813585, 34.289715>,  <27.487232, 31.429976, 34.156090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.046028, 31.813585, 34.289715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073399, 31.731836, 33.899117>,  <28.089821, 31.682787, 33.664757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073399, 31.731836, 33.899117>,  <28.046028, 31.813585, 34.289715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073399, 31.731836, 33.899117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273931, 0.945022, -0.178591,
		0.959312, -0.255273, 0.120649,
		0.068426, -0.204374, -0.976498,
		28.093927, 31.670525, 33.606167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793577, 31.968975, 33.989288>,  <28.046028, 31.813585, 34.289715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793577, 31.968975, 33.989288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526499, 31.981373, 33.691772>,  <28.366251, 31.988811, 33.513264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.526499, 31.981373, 33.691772>,  <28.793577, 31.968975, 33.989288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526499, 31.981373, 33.691772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279039, 0.936709, -0.211458,
		0.690158, -0.348735, -0.634087,
		-0.667698, 0.030995, -0.743787,
		28.326189, 31.990671, 33.468636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.163036, 32.096130, 33.424915>,  <28.793577, 31.968975, 33.989288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.163036, 32.096130, 33.424915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785315, 32.224121, 33.394176>,  <28.558681, 32.300915, 33.375732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.785315, 32.224121, 33.394176>,  <29.163036, 32.096130, 33.424915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.785315, 32.224121, 33.394176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327160, 0.887710, -0.323940,
		-0.035439, -0.331038, -0.942952,
		-0.944304, 0.319976, -0.076843,
		28.502024, 32.320114, 33.371124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.569733, 31.550539, 33.656776>,  <29.163036, 32.096130, 33.424915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.569733, 31.550539, 33.656776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380327, 31.296299, 33.412876>,  <29.266684, 31.143755, 33.266537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.380327, 31.296299, 33.412876>,  <29.569733, 31.550539, 33.656776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380327, 31.296299, 33.412876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672916, 0.185620, -0.716051,
		0.568305, -0.749370, 0.339813,
		-0.473511, -0.635601, -0.609752,
		29.238274, 31.105619, 33.229950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029455, 31.027338, 33.367668>,  <29.569733, 31.550539, 33.656776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029455, 31.027338, 33.367668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718227, 31.103964, 33.128368>,  <29.531490, 31.149940, 32.984787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.718227, 31.103964, 33.128368>,  <30.029455, 31.027338, 33.367668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.718227, 31.103964, 33.128368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625533, 0.323550, -0.709946,
		0.057563, -0.926616, -0.371576,
		-0.778071, 0.191566, -0.598254,
		29.484806, 31.161434, 32.948891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788092, 30.810757, 33.223709>,  <30.029455, 31.027338, 33.367668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788092, 30.810757, 33.223709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875044, 30.602844, 33.554180>,  <30.927216, 30.478098, 33.752464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875044, 30.602844, 33.554180>,  <30.788092, 30.810757, 33.223709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875044, 30.602844, 33.554180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903974, -0.212086, -0.371282,
		0.368207, 0.827556, 0.423763,
		0.217382, -0.519780, 0.826180,
		30.940258, 30.446911, 33.802032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441610, 31.050035, 33.477093>,  <30.788092, 30.810757, 33.223709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441610, 31.050035, 33.477093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389067, 30.707926, 33.677593>,  <31.357540, 30.502659, 33.797894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389067, 30.707926, 33.677593>,  <31.441610, 31.050035, 33.477093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389067, 30.707926, 33.677593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904554, -0.310296, -0.292401,
		0.405618, 0.414995, 0.814403,
		-0.131361, -0.855275, 0.501248,
		31.349659, 30.451344, 33.827969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.769274, 31.011179, 34.088673>,  <31.441610, 31.050035, 33.477093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.769274, 31.011179, 34.088673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750860, 30.637335, 33.947601>,  <31.739813, 30.413029, 33.862957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750860, 30.637335, 33.947601>,  <31.769274, 31.011179, 34.088673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750860, 30.637335, 33.947601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986502, 0.013007, -0.163233,
		0.157146, -0.355434, 0.921397,
		-0.046034, -0.934611, -0.352680,
		31.737049, 30.356951, 33.841797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.467655, 30.590612, 34.285305>,  <31.769274, 31.011179, 34.088673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.467655, 30.590612, 34.285305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288296, 30.376841, 33.998718>,  <32.180679, 30.248577, 33.826767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288296, 30.376841, 33.998718>,  <32.467655, 30.590612, 34.285305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288296, 30.376841, 33.998718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.891585, -0.324225, -0.316156,
		-0.063332, -0.780553, 0.621873,
		-0.448403, -0.534430, -0.716464,
		32.153774, 30.216513, 33.783779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819923, 29.956854, 34.119328>,  <32.467655, 30.590612, 34.285305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819923, 29.956854, 34.119328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604504, 30.025110, 33.789272>,  <32.475250, 30.066065, 33.591240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.604504, 30.025110, 33.789272>,  <32.819923, 29.956854, 34.119328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.604504, 30.025110, 33.789272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786450, -0.249686, -0.564936,
		-0.302426, -0.953173, 0.000267,
		-0.538548, 0.170641, -0.825135,
		32.442940, 30.076303, 33.541733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220726, 29.614681, 33.673298>,  <32.819923, 29.956854, 34.119328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220726, 29.614681, 33.673298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962563, 29.820078, 33.447105>,  <32.807663, 29.943316, 33.311390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962563, 29.820078, 33.447105>,  <33.220726, 29.614681, 33.673298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962563, 29.820078, 33.447105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595318, -0.125687, -0.793599,
		-0.478579, -0.848840, -0.224570,
		-0.645413, 0.513491, -0.565481,
		32.768940, 29.974125, 33.277462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939438, 29.156960, 33.125416>,  <33.220726, 29.614681, 33.673298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939438, 29.156960, 33.125416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929455, 29.542904, 33.020790>,  <32.923466, 29.774471, 32.958015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929455, 29.542904, 33.020790>,  <32.939438, 29.156960, 33.125416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929455, 29.542904, 33.020790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701344, -0.169550, -0.692365,
		-0.712386, -0.200729, -0.672469,
		-0.024961, 0.964863, -0.261565,
		32.921967, 29.832363, 32.942322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116806, 29.101141, 32.477207>,  <32.939438, 29.156960, 33.125416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116806, 29.101141, 32.477207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196075, 29.481430, 32.572582>,  <33.243637, 29.709604, 32.629807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196075, 29.481430, 32.572582>,  <33.116806, 29.101141, 32.477207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196075, 29.481430, 32.572582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817829, -0.026298, -0.574860,
		-0.540263, 0.308919, -0.782742,
		0.198170, 0.950725, 0.238435,
		33.255527, 29.766647, 32.644112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.030273, 29.549496, 31.868288>,  <33.116806, 29.101141, 32.477207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.030273, 29.549496, 31.868288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314056, 29.645233, 32.133430>,  <33.484325, 29.702675, 32.292515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.314056, 29.645233, 32.133430>,  <33.030273, 29.549496, 31.868288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314056, 29.645233, 32.133430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678673, 0.021435, -0.734128,
		-0.189916, 0.970699, -0.147228,
		0.709461, 0.239343, 0.662857,
		33.526894, 29.717035, 32.332287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.368267, 30.266823, 31.850334>,  <33.030273, 29.549496, 31.868288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.368267, 30.266823, 31.850334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634151, 29.987003, 31.955246>,  <33.793682, 29.819111, 32.018192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634151, 29.987003, 31.955246>,  <33.368267, 30.266823, 31.850334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634151, 29.987003, 31.955246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523264, 0.185351, -0.831769,
		0.533249, 0.690128, 0.489254,
		0.664711, -0.699549, 0.262280,
		33.833565, 29.777138, 32.033932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067081, 30.420906, 31.825993>,  <33.368267, 30.266823, 31.850334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067081, 30.420906, 31.825993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130970, 30.029037, 31.777437>,  <34.169304, 29.793917, 31.748304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.130970, 30.029037, 31.777437>,  <34.067081, 30.420906, 31.825993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130970, 30.029037, 31.777437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582432, 0.192806, -0.789683,
		0.797032, 0.055433, 0.601387,
		0.159726, -0.979670, -0.121387,
		34.178886, 29.735136, 31.741020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729145, 30.230410, 31.445442>,  <34.067081, 30.420906, 31.825993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729145, 30.230410, 31.445442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605560, 30.547504, 31.655628>,  <34.531410, 30.737761, 31.781740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605560, 30.547504, 31.655628>,  <34.729145, 30.230410, 31.445442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605560, 30.547504, 31.655628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329709, -0.428960, 0.841003,
		0.892097, 0.433086, -0.128842,
		-0.308959, 0.792736, 0.525466,
		34.512875, 30.785326, 31.813269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296917, 29.880722, 31.778534>,  <34.729145, 30.230410, 31.445442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296917, 29.880722, 31.778534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289543, 30.211660, 31.553978>,  <35.285118, 30.410223, 31.419245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289543, 30.211660, 31.553978>,  <35.296917, 29.880722, 31.778534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289543, 30.211660, 31.553978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956499, 0.178102, 0.231062,
		0.291153, -0.532709, -0.794639,
		-0.018439, 0.827346, -0.561390,
		35.284012, 30.459864, 31.385561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813435, 29.810606, 31.250740>,  <35.296917, 29.880722, 31.778534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813435, 29.810606, 31.250740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718235, 30.190388, 31.332615>,  <35.661118, 30.418257, 31.381739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718235, 30.190388, 31.332615>,  <35.813435, 29.810606, 31.250740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718235, 30.190388, 31.332615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946531, 0.179470, 0.268085,
		0.217799, 0.257545, -0.941400,
		-0.237997, 0.949453, 0.204686,
		35.646835, 30.475224, 31.394020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615799, 29.690258, 31.244549>,  <35.813435, 29.810606, 31.250740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615799, 29.690258, 31.244549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478508, 29.831032, 30.896217>,  <36.396133, 29.915497, 30.687220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.478508, 29.831032, 30.896217>,  <36.615799, 29.690258, 31.244549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478508, 29.831032, 30.896217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539537, 0.832794, 0.123913,
		0.768829, -0.427314, -0.475715,
		-0.343223, 0.351934, -0.870827,
		36.375542, 29.936611, 30.634970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219151, 30.008425, 30.944433>,  <36.615799, 29.690258, 31.244549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219151, 30.008425, 30.944433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893364, 30.174210, 30.782015>,  <36.697891, 30.273680, 30.684565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.893364, 30.174210, 30.782015>,  <37.219151, 30.008425, 30.944433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893364, 30.174210, 30.782015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484298, 0.871019, -0.082355,
		0.319540, -0.263721, -0.910135,
		-0.814463, 0.414460, -0.406045,
		36.649025, 30.298548, 30.660202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444183, 30.239571, 30.319618>,  <37.219151, 30.008425, 30.944433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444183, 30.239571, 30.319618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141796, 30.465946, 30.451212>,  <36.960365, 30.601770, 30.530169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141796, 30.465946, 30.451212>,  <37.444183, 30.239571, 30.319618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141796, 30.465946, 30.451212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567891, 0.816954, -0.100424,
		-0.325597, 0.110909, -0.938981,
		-0.755967, 0.565937, 0.328982,
		36.915005, 30.635727, 30.549906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.429794, 30.862963, 29.927387>,  <37.444183, 30.239571, 30.319618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.429794, 30.862963, 29.927387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265045, 30.939430, 30.283773>,  <37.166195, 30.985312, 30.497604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.265045, 30.939430, 30.283773>,  <37.429794, 30.862963, 29.927387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265045, 30.939430, 30.283773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078299, 0.981555, -0.174412,
		-0.907873, -0.002073, -0.419241,
		-0.411870, 0.191170, 0.890964,
		37.141483, 30.996780, 30.551064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800041, 31.303717, 29.832165>,  <37.429794, 30.862963, 29.927387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800041, 31.303717, 29.832165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980473, 31.382185, 30.180428>,  <37.088734, 31.429266, 30.389385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980473, 31.382185, 30.180428>,  <36.800041, 31.303717, 29.832165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980473, 31.382185, 30.180428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040046, 0.979011, -0.199836,
		-0.891583, 0.055277, 0.449471,
		0.451083, 0.196170, 0.870656,
		37.115799, 31.441036, 30.441624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823475, 31.882622, 30.414486>,  <36.800041, 31.303717, 29.832165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823475, 31.882622, 30.414486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112198, 31.673471, 30.595854>,  <37.285431, 31.547981, 30.704676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112198, 31.673471, 30.595854>,  <36.823475, 31.882622, 30.414486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112198, 31.673471, 30.595854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585537, 0.810641, 0.002685,
		-0.368967, 0.263557, 0.891292,
		0.721810, -0.522875, 0.453422,
		37.328739, 31.516609, 30.731880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084213, 32.300488, 30.976276>,  <36.823475, 31.882622, 30.414486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084213, 32.300488, 30.976276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353401, 32.029537, 30.857430>,  <37.514915, 31.866968, 30.786121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.353401, 32.029537, 30.857430>,  <37.084213, 32.300488, 30.976276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353401, 32.029537, 30.857430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710361, 0.703824, 0.004383,
		0.206149, -0.214010, 0.954831,
		0.672971, -0.677371, -0.297117,
		37.555294, 31.826326, 30.768295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706326, 32.445023, 31.387016>,  <37.084213, 32.300488, 30.976276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706326, 32.445023, 31.387016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819691, 32.235432, 31.065739>,  <37.887711, 32.109676, 30.872972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819691, 32.235432, 31.065739>,  <37.706326, 32.445023, 31.387016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819691, 32.235432, 31.065739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879896, 0.475167, 0.000500,
		0.381390, -0.706870, 0.595716,
		0.283418, -0.523977, -0.803195,
		37.904716, 32.078239, 30.824780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264385, 31.965958, 31.433796>,  <37.706326, 32.445023, 31.387016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264385, 31.965958, 31.433796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247593, 32.154068, 31.081188>,  <38.237518, 32.266933, 30.869623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247593, 32.154068, 31.081188>,  <38.264385, 31.965958, 31.433796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247593, 32.154068, 31.081188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951663, 0.287507, 0.108062,
		0.304262, -0.834374, -0.459613,
		-0.041977, 0.470276, -0.881521,
		38.235001, 32.295151, 30.816732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890869, 31.876637, 31.088543>,  <38.264385, 31.965958, 31.433796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890869, 31.876637, 31.088543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733978, 32.210644, 30.934191>,  <38.639843, 32.411049, 30.841579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733978, 32.210644, 30.934191>,  <38.890869, 31.876637, 31.088543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733978, 32.210644, 30.934191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836614, 0.498215, 0.227725,
		0.382405, -0.233511, -0.894002,
		-0.392229, 0.835018, -0.385878,
		38.616310, 32.461147, 30.818428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232533, 32.299675, 30.608747>,  <38.890869, 31.876637, 31.088543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232533, 32.299675, 30.608747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014061, 32.519241, 30.861851>,  <38.882977, 32.650982, 31.013712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.014061, 32.519241, 30.861851>,  <39.232533, 32.299675, 30.608747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.014061, 32.519241, 30.861851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835463, 0.302220, 0.458982,
		0.060709, 0.779333, -0.623663,
		-0.546183, 0.548912, 0.632756,
		38.850204, 32.683914, 31.051678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516228, 32.989601, 30.653673>,  <39.232533, 32.299675, 30.608747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516228, 32.989601, 30.653673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326847, 32.957081, 31.004498>,  <39.213219, 32.937569, 31.214993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.326847, 32.957081, 31.004498>,  <39.516228, 32.989601, 30.653673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326847, 32.957081, 31.004498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786556, 0.409149, 0.462522,
		-0.396451, 0.908838, -0.129766,
		-0.473452, -0.081300, 0.877060,
		39.184811, 32.932690, 31.267616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.502663, 33.676544, 30.900562>,  <39.516228, 32.989601, 30.653673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.502663, 33.676544, 30.900562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437584, 33.414688, 31.195850>,  <39.398537, 33.257572, 31.373024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.437584, 33.414688, 31.195850>,  <39.502663, 33.676544, 30.900562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437584, 33.414688, 31.195850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599806, 0.528448, 0.600813,
		-0.783430, 0.540540, 0.306683,
		-0.162697, -0.654645, 0.738221,
		39.388775, 33.218296, 31.417316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277500, 33.986225, 31.533300>,  <39.502663, 33.676544, 30.900562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277500, 33.986225, 31.533300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460838, 33.648628, 31.644724>,  <39.570843, 33.446068, 31.711578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460838, 33.648628, 31.644724>,  <39.277500, 33.986225, 31.533300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460838, 33.648628, 31.644724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717134, 0.536336, 0.445043,
		-0.525013, -0.004221, 0.851083,
		0.458345, -0.843994, 0.278557,
		39.598343, 33.395432, 31.728291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.444366, 34.100384, 32.240860>,  <39.277500, 33.986225, 31.533300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.444366, 34.100384, 32.240860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699944, 33.821297, 32.111286>,  <39.853291, 33.653843, 32.033543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.699944, 33.821297, 32.111286>,  <39.444366, 34.100384, 32.240860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.699944, 33.821297, 32.111286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733011, 0.424495, 0.531506,
		-0.233332, -0.577054, 0.782665,
		0.638945, -0.697720, -0.323938,
		39.891628, 33.611980, 32.014103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936817, 33.790142, 32.844505>,  <39.444366, 34.100384, 32.240860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936817, 33.790142, 32.844505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090221, 33.763775, 32.476032>,  <40.182266, 33.747955, 32.254948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.090221, 33.763775, 32.476032>,  <39.936817, 33.790142, 32.844505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090221, 33.763775, 32.476032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817310, 0.488668, 0.305300,
		0.430026, -0.869976, 0.241287,
		0.383512, -0.065920, -0.921180,
		40.205276, 33.743999, 32.199677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339832, 33.314960, 33.260841>,  <39.936817, 33.790142, 32.844505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339832, 33.314960, 33.260841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428452, 33.183517, 32.893597>,  <40.481625, 33.104652, 32.673248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428452, 33.183517, 32.893597>,  <40.339832, 33.314960, 33.260841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428452, 33.183517, 32.893597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941416, 0.317569, 0.113513,
		0.254263, -0.889477, 0.379712,
		0.221552, -0.328605, -0.918114,
		40.494919, 33.084934, 32.618164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890316, 32.737106, 33.220192>,  <40.339832, 33.314960, 33.260841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890316, 32.737106, 33.220192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887188, 32.973034, 32.897194>,  <40.885311, 33.114590, 32.703396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.887188, 32.973034, 32.897194>,  <40.890316, 32.737106, 33.220192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.887188, 32.973034, 32.897194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.978063, 0.172616, 0.116605,
		0.208163, -0.788872, -0.578229,
		-0.007825, 0.589817, -0.807499,
		40.884842, 33.149979, 32.654945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534908, 32.506847, 32.778522>,  <40.890316, 32.737106, 33.220192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534908, 32.506847, 32.778522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402302, 32.870655, 32.678230>,  <41.322739, 33.088940, 32.618053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.402302, 32.870655, 32.678230>,  <41.534908, 32.506847, 32.778522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.402302, 32.870655, 32.678230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939296, 0.343097, 0.002619,
		0.088408, -0.234645, -0.968053,
		-0.331521, 0.909520, -0.250734,
		41.302845, 33.143513, 32.603012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.938625, 32.252823, 32.202915>,  <41.534908, 32.506847, 32.778522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.938625, 32.252823, 32.202915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147667, 31.912519, 32.180698>,  <42.273094, 31.708336, 32.167366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.147667, 31.912519, 32.180698>,  <41.938625, 32.252823, 32.202915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147667, 31.912519, 32.180698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840235, -0.502904, -0.202711,
		0.144525, 0.152610, -0.977662,
		0.522606, -0.850763, -0.055546,
		42.304447, 31.657291, 32.164036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886925, 33.030468, 32.308426>,  <41.938625, 32.252823, 32.202915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886925, 33.030468, 32.308426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693665, 32.795658, 32.048588>,  <41.577709, 32.654774, 31.892687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.693665, 32.795658, 32.048588>,  <41.886925, 33.030468, 32.308426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.693665, 32.795658, 32.048588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418932, -0.806490, 0.417217,
		-0.768804, -0.070555, 0.635580,
		-0.483152, -0.587023, -0.649591,
		41.548717, 32.619553, 31.853710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.318913, 33.277473, 32.929359>,  <41.886925, 33.030468, 32.308426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.318913, 33.277473, 32.929359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327454, 33.515045, 32.607666>,  <42.332577, 33.657589, 32.414650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.327454, 33.515045, 32.607666>,  <42.318913, 33.277473, 32.929359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.327454, 33.515045, 32.607666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.945489, -0.249460, -0.209334,
		-0.324954, 0.764861, 0.556231,
		0.021353, 0.593934, -0.804230,
		42.333858, 33.693226, 32.366398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773392, 33.723244, 32.990555>,  <42.318913, 33.277473, 32.929359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773392, 33.723244, 32.990555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867584, 33.663383, 32.606438>,  <41.924099, 33.627468, 32.375969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.867584, 33.663383, 32.606438>,  <41.773392, 33.723244, 32.990555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.867584, 33.663383, 32.606438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961363, -0.180832, -0.207562,
		-0.142590, 0.972063, -0.186448,
		0.235479, -0.149648, -0.960289,
		41.938229, 33.618488, 32.318352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.651054, 34.266212, 32.475574>,  <41.773392, 33.723244, 32.990555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.651054, 34.266212, 32.475574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608540, 33.903408, 32.312580>,  <41.583031, 33.685726, 32.214783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608540, 33.903408, 32.312580>,  <41.651054, 34.266212, 32.475574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608540, 33.903408, 32.312580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991802, 0.125938, -0.021628,
		0.070935, 0.401844, -0.912956,
		-0.106285, -0.907006, -0.407484,
		41.576653, 33.631306, 32.190334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000977, 34.317230, 32.098995>,  <41.651054, 34.266212, 32.475574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000977, 34.317230, 32.098995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101067, 33.934586, 32.158695>,  <41.161121, 33.704998, 32.194515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101067, 33.934586, 32.158695>,  <41.000977, 34.317230, 32.098995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101067, 33.934586, 32.158695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966812, -0.255098, -0.014124,
		0.051586, -0.140766, -0.988698,
		0.250227, -0.956614, 0.149253,
		41.176136, 33.647602, 32.203472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847530, 33.813126, 31.534273>,  <41.000977, 34.317230, 32.098995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847530, 33.813126, 31.534273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849518, 33.607765, 31.877527>,  <40.850712, 33.484550, 32.083481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.849518, 33.607765, 31.877527>,  <40.847530, 33.813126, 31.534273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849518, 33.607765, 31.877527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940578, -0.293778, -0.170315,
		0.339541, -0.806297, -0.484352,
		0.004967, -0.513400, 0.858135,
		40.851009, 33.453747, 32.134968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828465, 33.043560, 31.327497>,  <40.847530, 33.813126, 31.534273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828465, 33.043560, 31.327497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651936, 33.191753, 31.654417>,  <40.546021, 33.280670, 31.850569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.651936, 33.191753, 31.654417>,  <40.828465, 33.043560, 31.327497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.651936, 33.191753, 31.654417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889793, -0.298631, -0.345092,
		0.116220, -0.879523, 0.461446,
		-0.441318, 0.370484, 0.817300,
		40.519539, 33.302898, 31.899607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480896, 32.507908, 31.652979>,  <40.828465, 33.043560, 31.327497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480896, 32.507908, 31.652979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294685, 32.845333, 31.760075>,  <40.182957, 33.047787, 31.824333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.294685, 32.845333, 31.760075>,  <40.480896, 32.507908, 31.652979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294685, 32.845333, 31.760075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881363, -0.469397, -0.053538,
		0.080514, -0.260900, 0.962002,
		-0.465529, 0.843562, 0.267740,
		40.155025, 33.098400, 31.840397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.109001, 32.285625, 32.122986>,  <40.480896, 32.507908, 31.652979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.109001, 32.285625, 32.122986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959599, 32.628979, 31.982319>,  <39.869957, 32.834991, 31.897919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959599, 32.628979, 31.982319>,  <40.109001, 32.285625, 32.122986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959599, 32.628979, 31.982319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.894709, -0.433460, -0.107745,
		-0.244921, 0.274398, 0.929903,
		-0.373511, 0.858381, -0.351669,
		39.847546, 32.886494, 31.876818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.510342, 32.552048, 32.493401>,  <40.109001, 32.285625, 32.122986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.510342, 32.552048, 32.493401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488743, 32.622795, 32.100300>,  <39.475784, 32.665241, 31.864439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488743, 32.622795, 32.100300>,  <39.510342, 32.552048, 32.493401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488743, 32.622795, 32.100300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.843679, -0.534530, -0.049840,
		-0.534126, 0.826438, 0.178075,
		-0.053996, 0.176859, -0.982754,
		39.472542, 32.675854, 31.805473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.817150, 32.888611, 32.328045>,  <39.510342, 32.552048, 32.493401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.817150, 32.888611, 32.328045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961906, 32.701553, 32.005470>,  <39.048759, 32.589317, 31.811926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.961906, 32.701553, 32.005470>,  <38.817150, 32.888611, 32.328045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.961906, 32.701553, 32.005470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826374, -0.561293, -0.045351,
		-0.431439, 0.682831, -0.589578,
		0.361893, -0.467645, -0.806437,
		39.070473, 32.561260, 31.763538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066002, 32.958118, 32.036888>,  <38.817150, 32.888611, 32.328045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066002, 32.958118, 32.036888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945114, 33.278316, 32.243912>,  <37.872581, 33.470436, 32.368126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945114, 33.278316, 32.243912>,  <38.066002, 32.958118, 32.036888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945114, 33.278316, 32.243912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421004, 0.375035, -0.825896,
		-0.855231, -0.467495, 0.223670,
		-0.302218, 0.800498, 0.517559,
		37.854450, 33.518467, 32.399178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.376083, 32.926117, 31.922802>,  <38.066002, 32.958118, 32.036888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.376083, 32.926117, 31.922802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432289, 33.299870, 32.053764>,  <37.466011, 33.524120, 32.132343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432289, 33.299870, 32.053764>,  <37.376083, 32.926117, 31.922802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432289, 33.299870, 32.053764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500653, 0.352350, -0.790694,
		-0.854168, -0.052813, 0.517309,
		0.140516, 0.934377, 0.327407,
		37.474445, 33.580181, 32.151985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795807, 33.284782, 31.648010>,  <37.376083, 32.926117, 31.922802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795807, 33.284782, 31.648010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030621, 33.590324, 31.755281>,  <37.171509, 33.773651, 31.819645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.030621, 33.590324, 31.755281>,  <36.795807, 33.284782, 31.648010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.030621, 33.590324, 31.755281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350543, 0.538432, -0.766297,
		-0.729735, 0.355833, 0.583841,
		0.587033, 0.763854, 0.268178,
		37.206730, 33.819481, 31.835735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421177, 33.850079, 31.675554>,  <36.795807, 33.284782, 31.648010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421177, 33.850079, 31.675554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787128, 34.006992, 31.637373>,  <37.006699, 34.101143, 31.614464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.787128, 34.006992, 31.637373>,  <36.421177, 33.850079, 31.675554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787128, 34.006992, 31.637373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299182, 0.499988, -0.812713,
		-0.271094, 0.772089, 0.574793,
		0.914876, 0.392289, -0.095452,
		37.061592, 34.124680, 31.608738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.338146, 34.475304, 31.458281>,  <36.421177, 33.850079, 31.675554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.338146, 34.475304, 31.458281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718605, 34.413490, 31.351374>,  <36.946880, 34.376404, 31.287230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718605, 34.413490, 31.351374>,  <36.338146, 34.475304, 31.458281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718605, 34.413490, 31.351374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174974, 0.443416, -0.879071,
		0.254355, 0.882894, 0.394717,
		0.951151, -0.154531, -0.267269,
		37.003952, 34.367130, 31.271193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.643135, 35.160339, 31.221954>,  <36.338146, 34.475304, 31.458281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.643135, 35.160339, 31.221954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853512, 34.873398, 31.039185>,  <36.979740, 34.701233, 30.929522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.853512, 34.873398, 31.039185>,  <36.643135, 35.160339, 31.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853512, 34.873398, 31.039185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269848, 0.368732, -0.889505,
		0.806574, 0.591132, 0.000356,
		0.525947, -0.717356, -0.456925,
		37.011295, 34.658192, 30.902107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094753, 35.515144, 30.820498>,  <36.643135, 35.160339, 31.221954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094753, 35.515144, 30.820498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077251, 35.154858, 30.647621>,  <37.066750, 34.938686, 30.543896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.077251, 35.154858, 30.647621>,  <37.094753, 35.515144, 30.820498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.077251, 35.154858, 30.647621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151661, 0.433580, -0.888261,
		0.987464, 0.026685, -0.155574,
		-0.043751, -0.900720, -0.432192,
		37.064125, 34.884644, 30.517963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.321022, 35.690258, 30.093184>,  <37.094753, 35.515144, 30.820498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.321022, 35.690258, 30.093184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171982, 35.319946, 30.067566>,  <37.082558, 35.097759, 30.052195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.171982, 35.319946, 30.067566>,  <37.321022, 35.690258, 30.093184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.171982, 35.319946, 30.067566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348253, 0.203465, -0.915053,
		0.860168, -0.318644, -0.398216,
		-0.372599, -0.925780, -0.064045,
		37.060204, 35.042213, 30.048353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644913, 35.446777, 29.491127>,  <37.321022, 35.690258, 30.093184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644913, 35.446777, 29.491127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328720, 35.211353, 29.558928>,  <37.139004, 35.070099, 29.599607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.328720, 35.211353, 29.558928>,  <37.644913, 35.446777, 29.491127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328720, 35.211353, 29.558928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222476, 0.018073, -0.974771,
		0.570648, -0.808251, -0.145227,
		-0.790484, -0.588561, 0.169503,
		37.091576, 35.034786, 29.609779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683430, 34.987541, 29.033012>,  <37.644913, 35.446777, 29.491127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683430, 34.987541, 29.033012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297153, 34.989365, 29.136869>,  <37.065388, 34.990459, 29.199183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.297153, 34.989365, 29.136869>,  <37.683430, 34.987541, 29.033012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297153, 34.989365, 29.136869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259150, 0.046989, -0.964694,
		-0.016598, -0.998885, -0.044196,
		-0.965695, 0.004559, 0.259641,
		37.007446, 34.990734, 29.214762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.383205, 34.558064, 28.603252>,  <37.683430, 34.987541, 29.033012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.383205, 34.558064, 28.603252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081085, 34.783848, 28.736462>,  <36.899815, 34.919319, 28.816387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.081085, 34.783848, 28.736462>,  <37.383205, 34.558064, 28.603252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.081085, 34.783848, 28.736462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363719, 0.061684, -0.929464,
		-0.545193, -0.823149, 0.158717,
		-0.755297, 0.564465, 0.333024,
		36.854496, 34.953186, 28.836369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803478, 34.542202, 28.071606>,  <37.383205, 34.558064, 28.603252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803478, 34.542202, 28.071606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660370, 34.851234, 28.281412>,  <36.574505, 35.036655, 28.407295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.660370, 34.851234, 28.281412>,  <36.803478, 34.542202, 28.071606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.660370, 34.851234, 28.281412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553973, 0.276578, -0.785250,
		-0.751740, -0.571509, 0.329038,
		-0.357773, 0.772582, 0.524515,
		36.553040, 35.083008, 28.438766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056797, 34.470192, 28.231867>,  <36.803478, 34.542202, 28.071606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056797, 34.470192, 28.231867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109066, 34.865849, 28.258781>,  <36.140427, 35.103241, 28.274931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109066, 34.865849, 28.258781>,  <36.056797, 34.470192, 28.231867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109066, 34.865849, 28.258781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685027, 0.139144, -0.715106,
		-0.716702, 0.047354, 0.695770,
		0.130675, 0.989139, 0.067286,
		36.148270, 35.162590, 28.278967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295177, 34.893833, 28.284405>,  <36.056797, 34.470192, 28.231867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295177, 34.893833, 28.284405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558376, 35.178741, 28.186668>,  <35.716297, 35.349686, 28.128027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.558376, 35.178741, 28.186668>,  <35.295177, 34.893833, 28.284405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558376, 35.178741, 28.186668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617946, 0.325326, -0.715756,
		-0.430324, 0.621956, 0.654211,
		0.658000, 0.712274, -0.244340,
		35.755775, 35.392426, 28.113367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896748, 35.489788, 28.165348>,  <35.295177, 34.893833, 28.284405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896748, 35.489788, 28.165348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245190, 35.585354, 27.993725>,  <35.454254, 35.642693, 27.890751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245190, 35.585354, 27.993725>,  <34.896748, 35.489788, 28.165348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245190, 35.585354, 27.993725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490489, 0.380029, -0.784218,
		-0.024306, 0.893587, 0.448231,
		0.871109, 0.238914, -0.429057,
		35.506523, 35.657028, 27.865007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801327, 36.108894, 27.909859>,  <34.896748, 35.489788, 28.165348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801327, 36.108894, 27.909859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107887, 35.950287, 27.707710>,  <35.291824, 35.855122, 27.586420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107887, 35.950287, 27.707710>,  <34.801327, 36.108894, 27.909859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107887, 35.950287, 27.707710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448613, 0.232699, -0.862901,
		0.459755, 0.888046, 0.000458,
		0.766402, -0.396517, -0.505373,
		35.337807, 35.831333, 27.556099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052059, 36.685783, 27.418917>,  <34.801327, 36.108894, 27.909859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052059, 36.685783, 27.418917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162262, 36.323051, 27.291323>,  <35.228382, 36.105412, 27.214766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.162262, 36.323051, 27.291323>,  <35.052059, 36.685783, 27.418917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162262, 36.323051, 27.291323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525199, 0.135933, -0.840052,
		0.805148, 0.398970, -0.438817,
		0.275506, -0.906833, -0.318985,
		35.244915, 36.051003, 27.195627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945686, 36.719398, 26.760714>,  <35.052059, 36.685783, 27.418917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945686, 36.719398, 26.760714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995804, 36.323097, 26.781574>,  <35.025875, 36.085316, 26.794090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.995804, 36.323097, 26.781574>,  <34.945686, 36.719398, 26.760714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.995804, 36.323097, 26.781574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612868, -0.118625, -0.781231,
		0.780190, 0.065919, -0.622060,
		0.125290, -0.990749, 0.052150,
		35.033390, 36.025871, 26.797220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184284, 36.575161, 26.112053>,  <34.945686, 36.719398, 26.760714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184284, 36.575161, 26.112053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031841, 36.254852, 26.296885>,  <34.940376, 36.062668, 26.407784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031841, 36.254852, 26.296885>,  <35.184284, 36.575161, 26.112053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031841, 36.254852, 26.296885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696279, -0.080213, -0.713275,
		0.608238, -0.593568, -0.526994,
		-0.381106, -0.800777, 0.462077,
		34.917511, 36.014618, 26.435509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150528, 36.052704, 25.595671>,  <35.184284, 36.575161, 26.112053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150528, 36.052704, 25.595671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880337, 35.918953, 25.858555>,  <34.718224, 35.838703, 26.016285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880337, 35.918953, 25.858555>,  <35.150528, 36.052704, 25.595671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880337, 35.918953, 25.858555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605298, -0.257579, -0.753171,
		0.421124, -0.906558, -0.028407,
		-0.675476, -0.334373, 0.657211,
		34.677692, 35.818642, 26.055717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852116, 35.523460, 25.225559>,  <35.150528, 36.052704, 25.595671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852116, 35.523460, 25.225559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605198, 35.633198, 25.520500>,  <34.457047, 35.699039, 25.697464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.605198, 35.633198, 25.520500>,  <34.852116, 35.523460, 25.225559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605198, 35.633198, 25.520500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742732, 0.105830, -0.661172,
		-0.259422, -0.955791, 0.138436,
		-0.617292, 0.274344, 0.737351,
		34.420010, 35.715500, 25.741705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229771, 35.146694, 25.167606>,  <34.852116, 35.523460, 25.225559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229771, 35.146694, 25.167606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138130, 35.477940, 25.372252>,  <34.083145, 35.676685, 25.495039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.138130, 35.477940, 25.372252>,  <34.229771, 35.146694, 25.167606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138130, 35.477940, 25.372252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756107, 0.179616, -0.629317,
		-0.613037, -0.531012, 0.584989,
		-0.229101, 0.828109, 0.511613,
		34.069401, 35.726372, 25.525736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531693, 35.223690, 25.127522>,  <34.229771, 35.146694, 25.167606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531693, 35.223690, 25.127522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618839, 35.600334, 25.230213>,  <33.671127, 35.826321, 25.291828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.618839, 35.600334, 25.230213>,  <33.531693, 35.223690, 25.127522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.618839, 35.600334, 25.230213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.908255, 0.291891, -0.299790,
		-0.357220, -0.167858, 0.918813,
		0.217871, 0.941607, 0.256727,
		33.684200, 35.882816, 25.307232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929417, 35.426163, 25.406418>,  <33.531693, 35.223690, 25.127522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929417, 35.426163, 25.406418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150654, 35.740582, 25.295994>,  <33.283398, 35.929234, 25.229738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.150654, 35.740582, 25.295994>,  <32.929417, 35.426163, 25.406418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.150654, 35.740582, 25.295994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759790, 0.339983, -0.554193,
		-0.341768, 0.516270, 0.785277,
		0.553095, 0.786051, -0.276062,
		33.316582, 35.976398, 25.213175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488941, 35.973442, 25.518850>,  <32.929417, 35.426163, 25.406418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488941, 35.973442, 25.518850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763897, 36.085564, 25.250843>,  <32.928871, 36.152836, 25.090038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763897, 36.085564, 25.250843>,  <32.488941, 35.973442, 25.518850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763897, 36.085564, 25.250843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720645, 0.378032, -0.581173,
		0.090383, 0.882338, 0.461855,
		0.687387, 0.280306, -0.670021,
		32.970112, 36.169655, 25.049837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224957, 36.569073, 25.283865>,  <32.488941, 35.973442, 25.518850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224957, 36.569073, 25.283865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519829, 36.517384, 25.018574>,  <32.696751, 36.486370, 24.859400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.519829, 36.517384, 25.018574>,  <32.224957, 36.569073, 25.283865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519829, 36.517384, 25.018574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560060, 0.432277, -0.706731,
		0.378024, 0.892434, 0.246292,
		0.737177, -0.129223, -0.663228,
		32.740982, 36.478615, 24.819605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419117, 37.249802, 25.029974>,  <32.224957, 36.569073, 25.283865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419117, 37.249802, 25.029974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501450, 36.982231, 24.744268>,  <32.550850, 36.821690, 24.572845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.501450, 36.982231, 24.744268>,  <32.419117, 37.249802, 25.029974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501450, 36.982231, 24.744268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465568, 0.575058, -0.672722,
		0.860745, 0.471002, -0.193069,
		0.205827, -0.668928, -0.714262,
		32.563198, 36.781551, 24.529989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566505, 37.688332, 24.407887>,  <32.419117, 37.249802, 25.029974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566505, 37.688332, 24.407887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480709, 37.316669, 24.287441>,  <32.429230, 37.093674, 24.215176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.480709, 37.316669, 24.287441>,  <32.566505, 37.688332, 24.407887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480709, 37.316669, 24.287441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454406, 0.367820, -0.811310,
		0.864586, -0.037193, -0.501107,
		-0.214492, -0.929153, -0.301111,
		32.416363, 37.037922, 24.197107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778923, 37.721584, 23.649858>,  <32.566505, 37.688332, 24.407887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778923, 37.721584, 23.649858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550999, 37.402340, 23.728167>,  <32.414242, 37.210793, 23.775152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.550999, 37.402340, 23.728167>,  <32.778923, 37.721584, 23.649858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.550999, 37.402340, 23.728167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512459, 0.158871, -0.843887,
		0.642415, -0.581184, -0.499527,
		-0.569814, -0.798114, 0.195772,
		32.380054, 37.162907, 23.786898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780674, 37.385441, 23.083618>,  <32.778923, 37.721584, 23.649858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780674, 37.385441, 23.083618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449154, 37.270493, 23.275661>,  <32.250240, 37.201523, 23.390888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.449154, 37.270493, 23.275661>,  <32.780674, 37.385441, 23.083618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.449154, 37.270493, 23.275661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559260, 0.452718, -0.694460,
		-0.017788, -0.844076, -0.535929,
		-0.828802, -0.287371, 0.480110,
		32.200512, 37.184280, 23.419695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410259, 37.100937, 22.519897>,  <32.780674, 37.385441, 23.083618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410259, 37.100937, 22.519897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157101, 37.190849, 22.816252>,  <32.005207, 37.244797, 22.994064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.157101, 37.190849, 22.816252>,  <32.410259, 37.100937, 22.519897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.157101, 37.190849, 22.816252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700553, 0.241168, -0.671612,
		-0.329646, -0.944092, 0.004840,
		-0.632897, 0.224785, 0.740887,
		31.967232, 37.258286, 23.038517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723383, 36.758965, 22.313639>,  <32.410259, 37.100937, 22.519897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723383, 36.758965, 22.313639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628962, 37.025570, 22.596493>,  <31.572308, 37.185532, 22.766205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628962, 37.025570, 22.596493>,  <31.723383, 36.758965, 22.313639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628962, 37.025570, 22.596493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731688, 0.356956, -0.580702,
		-0.639461, -0.654480, 0.403418,
		-0.236055, 0.666512, 0.707134,
		31.558146, 37.225525, 22.808634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.008354, 36.811630, 22.291447>,  <31.723383, 36.758965, 22.313639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.008354, 36.811630, 22.291447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143335, 37.148193, 22.460285>,  <31.224323, 37.350132, 22.561588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143335, 37.148193, 22.460285>,  <31.008354, 36.811630, 22.291447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143335, 37.148193, 22.460285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602299, 0.537590, -0.590113,
		-0.723439, -0.055094, 0.688187,
		0.337451, 0.841405, 0.422096,
		31.244570, 37.400616, 22.586914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352238, 37.038322, 22.434214>,  <31.008354, 36.811630, 22.291447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352238, 37.038322, 22.434214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599079, 37.353050, 22.430317>,  <30.747183, 37.541889, 22.427979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599079, 37.353050, 22.430317>,  <30.352238, 37.038322, 22.434214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599079, 37.353050, 22.430317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640854, 0.495359, -0.586452,
		-0.456608, 0.368144, 0.809925,
		0.617102, 0.786823, -0.009741,
		30.784210, 37.589096, 22.427395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901585, 37.783302, 22.627466>,  <30.352238, 37.038322, 22.434214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.901585, 37.783302, 22.627466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233913, 37.907997, 22.443052>,  <30.433311, 37.982815, 22.332405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.233913, 37.907997, 22.443052>,  <29.901585, 37.783302, 22.627466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233913, 37.907997, 22.443052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526703, 0.708014, -0.470425,
		0.179769, 0.633668, 0.752428,
		0.830824, 0.311738, -0.461033,
		30.483160, 38.001518, 22.304743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903482, 38.481804, 22.583700>,  <29.901585, 37.783302, 22.627466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903482, 38.481804, 22.583700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167141, 38.434368, 22.286657>,  <30.325336, 38.405907, 22.108433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167141, 38.434368, 22.286657>,  <29.903482, 38.481804, 22.583700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167141, 38.434368, 22.286657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316891, 0.851730, -0.417295,
		0.681988, 0.510383, 0.523833,
		0.659145, -0.118592, -0.742606,
		30.364885, 38.398792, 22.063875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.411530, 38.900509, 22.607759>,  <29.903482, 38.481804, 22.583700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.411530, 38.900509, 22.607759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366594, 38.805676, 22.221769>,  <30.339634, 38.748775, 21.990175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.366594, 38.805676, 22.221769>,  <30.411530, 38.900509, 22.607759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.366594, 38.805676, 22.221769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347203, 0.919274, -0.185431,
		0.931037, 0.314212, -0.185583,
		-0.112337, -0.237079, -0.964974,
		30.332893, 38.734550, 21.932278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450268, 39.562614, 22.289003>,  <30.411530, 38.900509, 22.607759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450268, 39.562614, 22.289003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345818, 39.343548, 21.971041>,  <30.283148, 39.212109, 21.780262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345818, 39.343548, 21.971041>,  <30.450268, 39.562614, 22.289003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345818, 39.343548, 21.971041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418879, 0.806195, -0.417840,
		0.869686, 0.223862, -0.439922,
		-0.261124, -0.547663, -0.794908,
		30.267481, 39.179249, 21.732569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.589224, 39.993271, 21.728008>,  <30.450268, 39.562614, 22.289003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.589224, 39.993271, 21.728008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334167, 39.734940, 21.560049>,  <30.181133, 39.579941, 21.459272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.334167, 39.734940, 21.560049>,  <30.589224, 39.993271, 21.728008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.334167, 39.734940, 21.560049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541103, 0.763479, -0.352573,
		0.548286, 0.002393, -0.836287,
		-0.637644, -0.645829, -0.419899,
		30.142874, 39.541191, 21.434078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.583488, 40.171558, 20.999596>,  <30.589224, 39.993271, 21.728008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.583488, 40.171558, 20.999596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250519, 39.971924, 21.095915>,  <30.050737, 39.852142, 21.153706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250519, 39.971924, 21.095915>,  <30.583488, 40.171558, 20.999596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250519, 39.971924, 21.095915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553688, 0.766650, -0.325080,
		-0.022365, -0.403931, -0.914516,
		-0.832423, -0.499086, 0.240798,
		30.000792, 39.822197, 21.168154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184132, 40.434910, 20.456177>,  <30.583488, 40.171558, 20.999596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184132, 40.434910, 20.456177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934639, 40.274807, 20.724730>,  <29.784943, 40.178745, 20.885860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934639, 40.274807, 20.724730>,  <30.184132, 40.434910, 20.456177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934639, 40.274807, 20.724730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684205, 0.694878, -0.221377,
		-0.377919, -0.597441, -0.707277,
		-0.623731, -0.400260, 0.671380,
		29.747520, 40.154728, 20.926144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.545425, 40.190540, 20.072916>,  <30.184132, 40.434910, 20.456177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.545425, 40.190540, 20.072916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457867, 40.266949, 20.455664>,  <29.405333, 40.312794, 20.685312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.457867, 40.266949, 20.455664>,  <29.545425, 40.190540, 20.072916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.457867, 40.266949, 20.455664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754976, 0.588088, -0.290110,
		-0.618139, -0.785916, 0.015485,
		-0.218895, 0.191019, 0.956868,
		29.392199, 40.324253, 20.742723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852709, 40.076790, 20.108004>,  <29.545425, 40.190540, 20.072916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852709, 40.076790, 20.108004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958973, 40.327446, 20.401054>,  <29.022732, 40.477840, 20.576885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958973, 40.327446, 20.401054>,  <28.852709, 40.076790, 20.108004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958973, 40.327446, 20.401054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809316, 0.557902, -0.183722,
		-0.523863, -0.544119, 0.655364,
		0.265662, 0.626642, 0.732628,
		29.038671, 40.515438, 20.620842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.300846, 40.151051, 20.447376>,  <28.852709, 40.076790, 20.108004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.300846, 40.151051, 20.447376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497570, 40.463009, 20.602238>,  <28.615604, 40.650185, 20.695154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.497570, 40.463009, 20.602238>,  <28.300846, 40.151051, 20.447376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.497570, 40.463009, 20.602238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832794, 0.551111, -0.052264,
		-0.254124, -0.296714, 0.920534,
		0.491809, 0.779896, 0.387151,
		28.645113, 40.696980, 20.718384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.776285, 40.632057, 20.555387>,  <28.300846, 40.151051, 20.447376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.776285, 40.632057, 20.555387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076336, 40.870941, 20.668982>,  <28.256367, 41.014271, 20.737139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.076336, 40.870941, 20.668982>,  <27.776285, 40.632057, 20.555387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.076336, 40.870941, 20.668982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632170, 0.773643, 0.042877,
		-0.194097, -0.211690, 0.957869,
		0.750125, 0.597214, 0.283986,
		28.301373, 41.050106, 20.754177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.668846, 40.860863, 21.206760>,  <27.776285, 40.632057, 20.555387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.668846, 40.860863, 21.206760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890394, 41.119446, 20.996876>,  <28.023323, 41.274593, 20.870945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.890394, 41.119446, 20.996876>,  <27.668846, 40.860863, 21.206760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.890394, 41.119446, 20.996876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830892, 0.469537, -0.298588,
		0.053349, 0.601358, 0.797197,
		0.553871, 0.646455, -0.524712,
		28.056555, 41.313381, 20.839462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250971, 41.444145, 21.177650>,  <27.668846, 40.860863, 21.206760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250971, 41.444145, 21.177650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534697, 41.485764, 20.898781>,  <27.704931, 41.510735, 20.731459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534697, 41.485764, 20.898781>,  <27.250971, 41.444145, 21.177650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534697, 41.485764, 20.898781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656370, 0.458110, -0.599428,
		0.257012, 0.882785, 0.393237,
		0.709312, 0.104049, -0.697173,
		27.747490, 41.516979, 20.689629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876266, 41.905964, 21.628090>,  <27.250971, 41.444145, 21.177650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876266, 41.905964, 21.628090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001680, 42.271915, 21.526348>,  <27.076929, 42.491486, 21.465303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.001680, 42.271915, 21.526348>,  <26.876266, 41.905964, 21.628090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001680, 42.271915, 21.526348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505939, 0.065725, 0.860062,
		0.803568, -0.398346, -0.442265,
		0.313534, 0.914877, -0.254353,
		27.095741, 42.546379, 21.450043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608763, 41.964321, 21.548223>,  <26.876266, 41.905964, 21.628090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608763, 41.964321, 21.548223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474533, 42.325588, 21.655310>,  <27.393995, 42.542351, 21.719561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.474533, 42.325588, 21.655310>,  <27.608763, 41.964321, 21.548223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.474533, 42.325588, 21.655310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704375, 0.051870, 0.707931,
		0.625496, 0.426135, -0.653578,
		-0.335575, 0.903171, 0.267714,
		27.373861, 42.596539, 21.735624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.150955, 42.665993, 21.560183>,  <27.608763, 41.964321, 21.548223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.150955, 42.665993, 21.560183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852383, 42.681259, 21.825930>,  <27.673239, 42.690418, 21.985378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.852383, 42.681259, 21.825930>,  <28.150955, 42.665993, 21.560183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.852383, 42.681259, 21.825930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664681, 0.091156, 0.741545,
		-0.032256, 0.995105, -0.093413,
		-0.746430, 0.038170, 0.664368,
		27.628454, 42.692711, 22.025240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.237560, 43.290722, 21.968935>,  <28.150955, 42.665993, 21.560183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.237560, 43.290722, 21.968935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010263, 43.040619, 22.182911>,  <27.873886, 42.890556, 22.311296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.010263, 43.040619, 22.182911>,  <28.237560, 43.290722, 21.968935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.010263, 43.040619, 22.182911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637357, 0.076747, 0.766737,
		-0.520460, 0.776639, 0.354899,
		-0.568241, -0.625254, 0.534940,
		27.839790, 42.853043, 22.343393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356800, 43.524120, 22.570469>,  <28.237560, 43.290722, 21.968935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356800, 43.524120, 22.570469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230183, 43.145134, 22.588827>,  <28.154211, 42.917744, 22.599842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230183, 43.145134, 22.588827>,  <28.356800, 43.524120, 22.570469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230183, 43.145134, 22.588827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552050, -0.144660, 0.821166,
		-0.771388, 0.285273, 0.568841,
		-0.316545, -0.947467, 0.045896,
		28.135220, 42.860893, 22.602596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.890038, 43.276123, 23.075329>,  <28.356800, 43.524120, 22.570469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.890038, 43.276123, 23.075329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648550, 42.964558, 23.007427>,  <28.503658, 42.777618, 22.966686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648550, 42.964558, 23.007427>,  <28.890038, 43.276123, 23.075329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648550, 42.964558, 23.007427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508671, -0.540338, 0.670290,
		-0.613822, 0.318319, 0.722424,
		-0.603719, -0.778914, -0.169752,
		28.467434, 42.730885, 22.956501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.876211, 43.000378, 23.720121>,  <28.890038, 43.276123, 23.075329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.876211, 43.000378, 23.720121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810389, 42.708565, 23.454580>,  <28.770895, 42.533478, 23.295256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.810389, 42.708565, 23.454580>,  <28.876211, 43.000378, 23.720121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.810389, 42.708565, 23.454580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562489, -0.622272, 0.544411,
		-0.810264, -0.283823, 0.512755,
		-0.164557, -0.729535, -0.663852,
		28.761021, 42.489704, 23.255424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522783, 42.430977, 24.033430>,  <28.876211, 43.000378, 23.720121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522783, 42.430977, 24.033430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764620, 42.314747, 23.736773>,  <28.909721, 42.245010, 23.558777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.764620, 42.314747, 23.736773>,  <28.522783, 42.430977, 24.033430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764620, 42.314747, 23.736773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525924, -0.553656, 0.645654,
		-0.598225, -0.780406, -0.181918,
		0.604592, -0.290571, -0.741645,
		28.945997, 42.227573, 23.514278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620443, 41.752998, 24.142105>,  <28.522783, 42.430977, 24.033430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620443, 41.752998, 24.142105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931471, 41.814884, 23.898317>,  <29.118088, 41.852016, 23.752045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931471, 41.814884, 23.898317>,  <28.620443, 41.752998, 24.142105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931471, 41.814884, 23.898317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606723, -0.439187, 0.662572,
		-0.165159, -0.884973, -0.435368,
		0.777566, 0.154718, -0.609469,
		29.164742, 41.861298, 23.715477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909214, 41.091053, 23.880756>,  <28.620443, 41.752998, 24.142105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909214, 41.091053, 23.880756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189749, 41.374538, 23.911364>,  <29.358070, 41.544628, 23.929728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.189749, 41.374538, 23.911364>,  <28.909214, 41.091053, 23.880756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189749, 41.374538, 23.911364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568240, -0.620661, 0.540263,
		0.430381, -0.335427, -0.838010,
		0.701339, 0.708709, 0.076517,
		29.400150, 41.587151, 23.934319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.464674, 40.687180, 24.143099>,  <28.909214, 41.091053, 23.880756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.464674, 40.687180, 24.143099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631956, 41.050518, 24.141390>,  <29.732325, 41.268520, 24.140364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.631956, 41.050518, 24.141390>,  <29.464674, 40.687180, 24.143099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631956, 41.050518, 24.141390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745160, -0.340376, 0.573482,
		0.519464, -0.243015, -0.819207,
		0.418203, 0.908344, -0.004272,
		29.757418, 41.323021, 24.140108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.072384, 40.655289, 23.742624>,  <29.464674, 40.687180, 24.143099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.072384, 40.655289, 23.742624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138741, 40.959534, 23.993687>,  <30.178555, 41.142082, 24.144323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138741, 40.959534, 23.993687>,  <30.072384, 40.655289, 23.742624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138741, 40.959534, 23.993687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802560, -0.473984, 0.362267,
		0.573042, 0.443632, -0.689067,
		0.165894, 0.760611, 0.627654,
		30.188509, 41.187717, 24.181982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794205, 40.701786, 23.789803>,  <30.072384, 40.655289, 23.742624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794205, 40.701786, 23.789803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665134, 40.935047, 24.088015>,  <30.587692, 41.075005, 24.266941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665134, 40.935047, 24.088015>,  <30.794205, 40.701786, 23.789803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665134, 40.935047, 24.088015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726463, -0.352327, 0.590015,
		0.606738, 0.731983, -0.309950,
		-0.322678, 0.583152, 0.745528,
		30.568331, 41.109993, 24.311672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.386583, 41.004681, 24.111294>,  <30.794205, 40.701786, 23.789803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.386583, 41.004681, 24.111294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083414, 41.010487, 24.372166>,  <30.901512, 41.013969, 24.528688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.083414, 41.010487, 24.372166>,  <31.386583, 41.004681, 24.111294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.083414, 41.010487, 24.372166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633408, -0.222746, 0.741066,
		0.156027, 0.974768, 0.159632,
		-0.757925, 0.014514, 0.652180,
		30.856037, 41.014839, 24.567820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670086, 41.266499, 24.740007>,  <31.386583, 41.004681, 24.111294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670086, 41.266499, 24.740007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325096, 41.084679, 24.829020>,  <31.118101, 40.975586, 24.882427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325096, 41.084679, 24.829020>,  <31.670086, 41.266499, 24.740007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325096, 41.084679, 24.829020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398992, -0.340190, 0.851514,
		-0.311354, 0.823197, 0.474768,
		-0.862476, -0.454551, 0.222530,
		31.066353, 40.948315, 24.895779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610970, 41.313705, 25.525877>,  <31.670086, 41.266499, 24.740007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610970, 41.313705, 25.525877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377792, 41.017334, 25.392488>,  <31.237886, 40.839512, 25.312456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377792, 41.017334, 25.392488>,  <31.610970, 41.313705, 25.525877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377792, 41.017334, 25.392488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227481, -0.542834, 0.808445,
		-0.780020, 0.395418, 0.484988,
		-0.582941, -0.740929, -0.333472,
		31.202909, 40.795055, 25.292446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442860, 40.906002, 26.081503>,  <31.610970, 41.313705, 25.525877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442860, 40.906002, 26.081503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322245, 40.659214, 25.790731>,  <31.249876, 40.511143, 25.616268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322245, 40.659214, 25.790731>,  <31.442860, 40.906002, 26.081503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322245, 40.659214, 25.790731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406231, -0.772886, 0.487466,
		-0.862585, -0.148312, 0.483685,
		-0.301537, -0.616969, -0.726929,
		31.231783, 40.474125, 25.572653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.879143, 40.524681, 26.357172>,  <31.442860, 40.906002, 26.081503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.879143, 40.524681, 26.357172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075062, 40.317268, 26.076824>,  <31.192614, 40.192822, 25.908615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075062, 40.317268, 26.076824>,  <30.879143, 40.524681, 26.357172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075062, 40.317268, 26.076824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240506, -0.692346, 0.680304,
		-0.838008, -0.501774, -0.214396,
		0.489795, -0.518537, -0.700871,
		31.222000, 40.161709, 25.866562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861460, 39.828899, 26.463572>,  <30.879143, 40.524681, 26.357172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.861460, 39.828899, 26.463572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171522, 39.821491, 26.210974>,  <31.357559, 39.817047, 26.059414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.171522, 39.821491, 26.210974>,  <30.861460, 39.828899, 26.463572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171522, 39.821491, 26.210974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429012, -0.718333, 0.547673,
		-0.463767, -0.695453, -0.548878,
		0.775158, -0.018518, -0.631496,
		31.404070, 39.815937, 26.021524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.960667, 39.143463, 26.351789>,  <30.861460, 39.828899, 26.463572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.960667, 39.143463, 26.351789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306532, 39.325356, 26.266392>,  <31.514051, 39.434490, 26.215153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.306532, 39.325356, 26.266392>,  <30.960667, 39.143463, 26.351789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306532, 39.325356, 26.266392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480927, -0.626512, 0.613345,
		0.145147, -0.633013, -0.760412,
		0.864663, 0.454728, -0.213496,
		31.565931, 39.461773, 26.202343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388210, 38.651199, 26.519102>,  <30.960667, 39.143463, 26.351789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388210, 38.651199, 26.519102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636583, 38.963894, 26.496029>,  <31.785606, 39.151512, 26.482185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636583, 38.963894, 26.496029>,  <31.388210, 38.651199, 26.519102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636583, 38.963894, 26.496029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572096, -0.401648, 0.715112,
		0.535864, -0.477035, -0.696626,
		0.620932, 0.781740, -0.057681,
		31.822863, 39.198418, 26.478724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140873, 38.456055, 26.513882>,  <31.388210, 38.651199, 26.519102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140873, 38.456055, 26.513882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154396, 38.835888, 26.638552>,  <32.162510, 39.063789, 26.713354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.154396, 38.835888, 26.638552>,  <32.140873, 38.456055, 26.513882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.154396, 38.835888, 26.638552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651863, -0.257343, 0.713336,
		0.757582, 0.179050, -0.627702,
		0.033812, 0.949587, 0.311674,
		32.164539, 39.120766, 26.732054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.851173, 38.520706, 26.718369>,  <32.140873, 38.456055, 26.513882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.851173, 38.520706, 26.718369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678631, 38.822056, 26.916904>,  <32.575104, 39.002865, 27.036026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.678631, 38.822056, 26.916904>,  <32.851173, 38.520706, 26.718369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.678631, 38.822056, 26.916904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533058, -0.231020, 0.813928,
		0.727858, 0.615674, -0.301940,
		-0.431361, 0.753375, 0.496340,
		32.549221, 39.048069, 27.065807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370827, 38.857841, 27.081501>,  <32.851173, 38.520706, 26.718369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370827, 38.857841, 27.081501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024971, 38.963230, 27.252607>,  <32.817459, 39.026463, 27.355270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024971, 38.963230, 27.252607>,  <33.370827, 38.857841, 27.081501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024971, 38.963230, 27.252607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385670, -0.197561, 0.901237,
		0.321956, 0.944222, 0.069207,
		-0.864640, 0.263468, 0.427764,
		32.765579, 39.042271, 27.380936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568863, 39.148548, 27.631907>,  <33.370827, 38.857841, 27.081501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568863, 39.148548, 27.631907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190502, 39.039146, 27.701717>,  <32.963486, 38.973503, 27.743603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190502, 39.039146, 27.701717>,  <33.568863, 39.148548, 27.631907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190502, 39.039146, 27.701717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273163, -0.381114, 0.883252,
		-0.175061, 0.883146, 0.435209,
		-0.945905, -0.273506, 0.174525,
		32.906731, 38.957096, 27.754074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442982, 39.312790, 28.346252>,  <33.568863, 39.148548, 27.631907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442982, 39.312790, 28.346252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153946, 39.063206, 28.227238>,  <32.980522, 38.913456, 28.155828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153946, 39.063206, 28.227238>,  <33.442982, 39.312790, 28.346252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153946, 39.063206, 28.227238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092725, -0.514018, 0.852753,
		-0.685028, 0.588603, 0.429283,
		-0.722592, -0.623965, -0.297539,
		32.937168, 38.876015, 28.137976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054470, 39.206383, 28.929676>,  <33.442982, 39.312790, 28.346252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054470, 39.206383, 28.929676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965279, 38.883842, 28.710558>,  <32.911766, 38.690319, 28.579088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965279, 38.883842, 28.710558>,  <33.054470, 39.206383, 28.929676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965279, 38.883842, 28.710558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134384, -0.582002, 0.802007,
		-0.965517, 0.105214, 0.238133,
		-0.222977, -0.806352, -0.547793,
		32.898384, 38.641937, 28.546221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668381, 38.832142, 29.430325>,  <33.054470, 39.206383, 28.929676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668381, 38.832142, 29.430325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780735, 38.572758, 29.147310>,  <32.848148, 38.417130, 28.977503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.780735, 38.572758, 29.147310>,  <32.668381, 38.832142, 29.430325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780735, 38.572758, 29.147310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238341, -0.666988, 0.705918,
		-0.929676, -0.366917, -0.032794,
		0.280887, -0.648458, -0.707534,
		32.865002, 38.378220, 28.935051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.290047, 38.142010, 29.663826>,  <32.668381, 38.832142, 29.430325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.290047, 38.142010, 29.663826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596783, 38.053951, 29.422667>,  <32.780827, 38.001118, 29.277971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.596783, 38.053951, 29.422667>,  <32.290047, 38.142010, 29.663826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596783, 38.053951, 29.422667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408786, -0.556657, 0.723206,
		-0.494815, -0.801043, -0.336880,
		0.766846, -0.220141, -0.602898,
		32.826836, 37.987907, 29.241796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365234, 37.390770, 29.800100>,  <32.290047, 38.142010, 29.663826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365234, 37.390770, 29.800100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709637, 37.516655, 29.640287>,  <32.916279, 37.592186, 29.544399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.709637, 37.516655, 29.640287>,  <32.365234, 37.390770, 29.800100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709637, 37.516655, 29.640287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508512, -0.547232, 0.664795,
		-0.009416, -0.775558, -0.631205,
		0.861003, 0.314716, -0.399533,
		32.967937, 37.611069, 29.520428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.748760, 36.882912, 29.884354>,  <32.365234, 37.390770, 29.800100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.748760, 36.882912, 29.884354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005695, 37.182861, 29.820990>,  <33.159859, 37.362831, 29.782972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005695, 37.182861, 29.820990>,  <32.748760, 36.882912, 29.884354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005695, 37.182861, 29.820990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604319, -0.368427, 0.706442,
		0.471378, -0.549506, -0.689816,
		0.642341, 0.749870, -0.158409,
		33.198399, 37.407822, 29.773466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337242, 36.540562, 29.889780>,  <32.748760, 36.882912, 29.884354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337242, 36.540562, 29.889780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415260, 36.926159, 29.962091>,  <33.462070, 37.157516, 30.005478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415260, 36.926159, 29.962091>,  <33.337242, 36.540562, 29.889780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415260, 36.926159, 29.962091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548267, -0.259994, 0.794863,
		0.813240, -0.055922, -0.579234,
		0.195048, 0.963989, 0.180778,
		33.473774, 37.215355, 30.016325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019901, 36.564980, 29.865843>,  <33.337242, 36.540562, 29.889780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019901, 36.564980, 29.865843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940010, 36.899673, 30.069799>,  <33.892075, 37.100491, 30.192173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940010, 36.899673, 30.069799>,  <34.019901, 36.564980, 29.865843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940010, 36.899673, 30.069799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613917, -0.298714, 0.730668,
		0.763684, 0.458968, -0.454020,
		-0.199731, 0.836730, 0.509892,
		33.880089, 37.150692, 30.222767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618286, 36.843994, 30.015396>,  <34.019901, 36.564980, 29.865843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618286, 36.843994, 30.015396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399258, 36.997330, 30.312910>,  <34.267841, 37.089333, 30.491419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.399258, 36.997330, 30.312910>,  <34.618286, 36.843994, 30.015396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399258, 36.997330, 30.312910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697976, -0.281021, 0.658678,
		0.461517, 0.879817, -0.113682,
		-0.547570, 0.383339, 0.743787,
		34.234985, 37.112331, 30.536047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111698, 37.195496, 30.490044>,  <34.618286, 36.843994, 30.015396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111698, 37.195496, 30.490044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771450, 37.138359, 30.692448>,  <34.567303, 37.104076, 30.813890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.771450, 37.138359, 30.692448>,  <35.111698, 37.195496, 30.490044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771450, 37.138359, 30.692448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521510, -0.106731, 0.846543,
		-0.066916, 0.983974, 0.165281,
		-0.850617, -0.142843, 0.506011,
		34.516266, 37.095505, 30.844252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263142, 37.698620, 31.002623>,  <35.111698, 37.195496, 30.490044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263142, 37.698620, 31.002623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987366, 37.427570, 31.105000>,  <34.821899, 37.264942, 31.166426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987366, 37.427570, 31.105000>,  <35.263142, 37.698620, 31.002623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987366, 37.427570, 31.105000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418395, -0.084108, 0.904362,
		-0.591289, 0.730585, 0.341501,
		-0.689437, -0.677622, 0.255941,
		34.780533, 37.224285, 31.181782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125942, 37.931458, 31.666193>,  <35.263142, 37.698620, 31.002623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125942, 37.931458, 31.666193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987808, 37.557220, 31.636766>,  <34.904930, 37.332680, 31.619110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.987808, 37.557220, 31.636766>,  <35.125942, 37.931458, 31.666193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987808, 37.557220, 31.636766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502056, -0.250402, 0.827791,
		-0.792898, 0.248926, 0.556192,
		-0.345331, -0.935593, -0.073568,
		34.884209, 37.276543, 31.614697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860222, 37.784252, 32.315250>,  <35.125942, 37.931458, 31.666193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860222, 37.784252, 32.315250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933800, 37.440449, 32.124500>,  <34.977947, 37.234165, 32.010052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933800, 37.440449, 32.124500>,  <34.860222, 37.784252, 32.315250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933800, 37.440449, 32.124500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441859, -0.361060, 0.821216,
		-0.878022, -0.361772, 0.313365,
		0.183949, -0.859510, -0.476871,
		34.988983, 37.182594, 31.981440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818821, 37.152290, 32.799431>,  <34.860222, 37.784252, 32.315250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818821, 37.152290, 32.799431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012066, 37.001225, 32.483463>,  <35.128014, 36.910583, 32.293880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.012066, 37.001225, 32.483463>,  <34.818821, 37.152290, 32.799431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012066, 37.001225, 32.483463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668888, -0.422961, 0.611304,
		-0.564974, -0.823695, 0.048278,
		0.483109, -0.377664, -0.789922,
		35.156998, 36.887924, 32.246487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902355, 36.421719, 32.935036>,  <34.818821, 37.152290, 32.799431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902355, 36.421719, 32.935036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189156, 36.530724, 32.678398>,  <35.361237, 36.596127, 32.524414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189156, 36.530724, 32.678398>,  <34.902355, 36.421719, 32.935036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189156, 36.530724, 32.678398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683734, -0.454107, 0.571222,
		-0.135689, -0.848249, -0.511921,
		0.717005, 0.272509, -0.641594,
		35.404259, 36.612476, 32.485920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293331, 35.853699, 32.758442>,  <34.902355, 36.421719, 32.935036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293331, 35.853699, 32.758442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535843, 36.159164, 32.669674>,  <35.681351, 36.342445, 32.616413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535843, 36.159164, 32.669674>,  <35.293331, 35.853699, 32.758442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535843, 36.159164, 32.669674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772344, -0.498918, 0.393148,
		0.189512, -0.409756, -0.892292,
		0.606275, 0.763663, -0.221921,
		35.717724, 36.388264, 32.603096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893116, 35.532906, 32.731510>,  <35.293331, 35.853699, 32.758442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893116, 35.532906, 32.731510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005360, 35.915546, 32.762959>,  <36.072704, 36.145130, 32.781826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.005360, 35.915546, 32.762959>,  <35.893116, 35.532906, 32.731510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005360, 35.915546, 32.762959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727301, -0.265364, 0.632942,
		0.626334, -0.120425, -0.770197,
		0.280605, 0.956598, 0.078621,
		36.089542, 36.202526, 32.786545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603035, 35.574936, 32.543804>,  <35.893116, 35.532906, 32.731510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603035, 35.574936, 32.543804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500797, 35.878094, 32.783894>,  <36.439453, 36.059986, 32.927948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500797, 35.878094, 32.783894>,  <36.603035, 35.574936, 32.543804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500797, 35.878094, 32.783894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766998, -0.218989, 0.603123,
		0.588544, 0.614529, -0.525328,
		-0.255595, 0.757891, 0.600227,
		36.424118, 36.105461, 32.963963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379749, 35.909012, 32.724743>,  <36.603035, 35.574936, 32.543804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379749, 35.909012, 32.724743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100277, 36.015717, 32.990280>,  <36.932594, 36.079739, 33.149601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100277, 36.015717, 32.990280>,  <37.379749, 35.909012, 32.724743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100277, 36.015717, 32.990280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522662, -0.443290, 0.728229,
		0.488541, 0.855763, 0.170288,
		-0.698679, 0.266766, 0.663840,
		36.890675, 36.095745, 33.189434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.746754, 36.218632, 33.334236>,  <37.379749, 35.909012, 32.724743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.746754, 36.218632, 33.334236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408150, 36.110363, 33.517605>,  <37.204987, 36.045403, 33.627628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.408150, 36.110363, 33.517605>,  <37.746754, 36.218632, 33.334236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.408150, 36.110363, 33.517605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529683, -0.341803, 0.776277,
		-0.053426, 0.899948, 0.432711,
		-0.846511, -0.270673, 0.458426,
		37.154198, 36.029160, 33.655132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.615391, 36.914558, 33.460812>,  <37.746754, 36.218632, 33.334236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.615391, 36.914558, 33.460812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922173, 37.105255, 33.289001>,  <38.106243, 37.219673, 33.185913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922173, 37.105255, 33.289001>,  <37.615391, 36.914558, 33.460812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922173, 37.105255, 33.289001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584292, 0.242092, -0.774593,
		-0.265299, 0.845048, 0.464232,
		0.766955, 0.476745, -0.429528,
		38.152260, 37.248280, 33.160145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310734, 37.491592, 33.144165>,  <37.615391, 36.914558, 33.460812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310734, 37.491592, 33.144165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678364, 37.511150, 32.987751>,  <37.898941, 37.522884, 32.893902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678364, 37.511150, 32.987751>,  <37.310734, 37.491592, 33.144165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678364, 37.511150, 32.987751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372587, 0.431052, -0.821811,
		0.128376, 0.901001, 0.414387,
		0.919075, 0.048894, -0.391038,
		37.954086, 37.525818, 32.870441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.441635, 38.189373, 33.023846>,  <37.310734, 37.491592, 33.144165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.441635, 38.189373, 33.023846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694656, 37.998737, 32.779636>,  <37.846470, 37.884357, 32.633110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694656, 37.998737, 32.779636>,  <37.441635, 38.189373, 33.023846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694656, 37.998737, 32.779636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335794, 0.541578, -0.770673,
		0.697942, 0.692500, 0.182539,
		0.632550, -0.476590, -0.610527,
		37.884422, 37.855759, 32.596478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.876175, 38.738625, 32.703213>,  <37.441635, 38.189373, 33.023846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.876175, 38.738625, 32.703213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874363, 38.406143, 32.480835>,  <37.873276, 38.206654, 32.347408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.874363, 38.406143, 32.480835>,  <37.876175, 38.738625, 32.703213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.874363, 38.406143, 32.480835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325437, 0.526915, -0.785144,
		0.945553, 0.177370, -0.272891,
		-0.004530, -0.831204, -0.555948,
		37.873005, 38.156780, 32.314049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255737, 38.848675, 32.079094>,  <37.876175, 38.738625, 32.703213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255737, 38.848675, 32.079094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004921, 38.547207, 32.000301>,  <37.854431, 38.366325, 31.953026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004921, 38.547207, 32.000301>,  <38.255737, 38.848675, 32.079094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004921, 38.547207, 32.000301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387114, 0.520912, -0.760785,
		0.675989, -0.400791, -0.618390,
		-0.627042, -0.753670, -0.196979,
		37.816807, 38.321106, 31.941208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405636, 38.814499, 31.399961>,  <38.255737, 38.848675, 32.079094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405636, 38.814499, 31.399961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065552, 38.611454, 31.455776>,  <37.861500, 38.489628, 31.489265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.065552, 38.611454, 31.455776>,  <38.405636, 38.814499, 31.399961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065552, 38.611454, 31.455776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292398, 0.234921, -0.926993,
		0.437772, -0.828940, -0.348157,
		-0.850211, -0.507612, 0.139538,
		37.810490, 38.459171, 31.497639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384483, 38.496246, 30.819744>,  <38.405636, 38.814499, 31.399961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384483, 38.496246, 30.819744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011181, 38.506390, 30.963066>,  <37.787197, 38.512474, 31.049059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.011181, 38.506390, 30.963066>,  <38.384483, 38.496246, 30.819744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.011181, 38.506390, 30.963066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332236, 0.318266, -0.887877,
		-0.136552, -0.947662, -0.288600,
		-0.933259, 0.025358, 0.358307,
		37.731201, 38.513996, 31.070559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.009109, 38.231266, 30.281492>,  <38.384483, 38.496246, 30.819744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.009109, 38.231266, 30.281492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725170, 38.400059, 30.507076>,  <37.554806, 38.501335, 30.642427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.725170, 38.400059, 30.507076>,  <38.009109, 38.231266, 30.281492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725170, 38.400059, 30.507076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496647, 0.267900, -0.825573,
		-0.499459, -0.866120, 0.019407,
		-0.709847, 0.421978, 0.563961,
		37.512215, 38.526653, 30.676264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313240, 38.064228, 30.037853>,  <38.009109, 38.231266, 30.281492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313240, 38.064228, 30.037853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262905, 38.427582, 30.197353>,  <37.232704, 38.645596, 30.293053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.262905, 38.427582, 30.197353>,  <37.313240, 38.064228, 30.037853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.262905, 38.427582, 30.197353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447767, 0.306666, -0.839917,
		-0.885252, -0.284238, 0.368156,
		-0.125836, 0.908386, 0.398749,
		37.225155, 38.700096, 30.316978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648048, 38.247208, 29.803694>,  <37.313240, 38.064228, 30.037853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648048, 38.247208, 29.803694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802498, 38.587681, 29.945906>,  <36.895168, 38.791965, 30.031233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.802498, 38.587681, 29.945906>,  <36.648048, 38.247208, 29.803694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.802498, 38.587681, 29.945906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422234, 0.505760, -0.752280,
		-0.820137, 0.140359, 0.554684,
		0.386126, 0.851179, 0.355528,
		36.918335, 38.843033, 30.052565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096729, 38.695141, 29.993259>,  <36.648048, 38.247208, 29.803694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096729, 38.695141, 29.993259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410892, 38.940941, 29.963524>,  <36.599388, 39.088421, 29.945683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.410892, 38.940941, 29.963524>,  <36.096729, 38.695141, 29.993259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.410892, 38.940941, 29.963524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492150, 0.547109, -0.677096,
		-0.375406, 0.568380, 0.732130,
		0.785403, 0.614504, -0.074340,
		36.646515, 39.125294, 29.941221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874016, 39.446583, 30.103086>,  <36.096729, 38.695141, 29.993259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874016, 39.446583, 30.103086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178070, 39.407738, 29.846102>,  <36.360504, 39.384430, 29.691912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.178070, 39.407738, 29.846102>,  <35.874016, 39.446583, 30.103086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178070, 39.407738, 29.846102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521341, 0.498980, -0.692259,
		0.387806, 0.861154, 0.328663,
		0.760139, -0.097117, -0.642462,
		36.406113, 39.378601, 29.653362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763798, 40.076405, 29.713047>,  <35.874016, 39.446583, 30.103086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763798, 40.076405, 29.713047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036697, 39.890968, 29.486908>,  <36.200436, 39.779705, 29.351225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.036697, 39.890968, 29.486908>,  <35.763798, 40.076405, 29.713047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036697, 39.890968, 29.486908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383108, 0.431912, -0.816505,
		0.622706, 0.773649, 0.117066,
		0.682250, -0.463594, -0.565346,
		36.241371, 39.751892, 29.317305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976051, 40.496014, 29.194983>,  <35.763798, 40.076405, 29.713047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976051, 40.496014, 29.194983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091896, 40.141479, 29.050459>,  <36.161404, 39.928761, 28.963745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.091896, 40.141479, 29.050459>,  <35.976051, 40.496014, 29.194983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091896, 40.141479, 29.050459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288368, 0.279149, -0.915926,
		0.912673, 0.369449, -0.174746,
		0.289607, -0.886331, -0.361309,
		36.178780, 39.875580, 28.942066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345947, 40.675533, 28.573782>,  <35.976051, 40.496014, 29.194983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345947, 40.675533, 28.573782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227345, 40.294678, 28.544064>,  <36.156185, 40.066166, 28.526234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227345, 40.294678, 28.544064>,  <36.345947, 40.675533, 28.573782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227345, 40.294678, 28.544064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391028, 0.192005, -0.900128,
		0.871311, -0.237839, -0.429243,
		-0.296503, -0.952138, -0.074295,
		36.138393, 40.009037, 28.521774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497589, 40.581356, 27.903303>,  <36.345947, 40.675533, 28.573782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497589, 40.581356, 27.903303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250828, 40.276146, 27.980465>,  <36.102772, 40.093018, 28.026762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250828, 40.276146, 27.980465>,  <36.497589, 40.581356, 27.903303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250828, 40.276146, 27.980465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398776, 0.091726, -0.912449,
		0.678531, -0.639822, -0.360864,
		-0.616906, -0.763029, 0.192907,
		36.065754, 40.047237, 28.038338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450142, 40.157131, 27.297401>,  <36.497589, 40.581356, 27.903303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450142, 40.157131, 27.297401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135376, 40.023022, 27.504614>,  <35.946514, 39.942558, 27.628941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.135376, 40.023022, 27.504614>,  <36.450142, 40.157131, 27.297401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135376, 40.023022, 27.504614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554676, 0.016507, -0.831902,
		0.270362, -0.941977, -0.198957,
		-0.786917, -0.335272, 0.518029,
		35.899300, 39.922440, 27.660023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140198, 39.722488, 26.786448>,  <36.450142, 40.157131, 27.297401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140198, 39.722488, 26.786448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873924, 39.830547, 27.064693>,  <35.714161, 39.895382, 27.231642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.873924, 39.830547, 27.064693>,  <36.140198, 39.722488, 26.786448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873924, 39.830547, 27.064693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639285, 0.274397, -0.718346,
		-0.384935, -0.922890, -0.009961,
		-0.665688, 0.270148, 0.695615,
		35.674217, 39.911591, 27.273378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620621, 39.384377, 26.686840>,  <36.140198, 39.722488, 26.786448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620621, 39.384377, 26.686840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455780, 39.675404, 26.906227>,  <35.356876, 39.850021, 27.037859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455780, 39.675404, 26.906227>,  <35.620621, 39.384377, 26.686840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455780, 39.675404, 26.906227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758798, 0.059172, -0.648633,
		-0.504380, -0.683477, 0.527694,
		-0.412100, 0.727570, 0.548466,
		35.332150, 39.893673, 27.070766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896790, 39.322697, 26.752775>,  <35.620621, 39.384377, 26.686840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896790, 39.322697, 26.752775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910809, 39.714455, 26.832336>,  <34.919220, 39.949509, 26.880074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910809, 39.714455, 26.832336>,  <34.896790, 39.322697, 26.752775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910809, 39.714455, 26.832336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715452, 0.163548, -0.679249,
		-0.697782, -0.118500, 0.706441,
		0.035046, 0.979393, 0.198902,
		34.921322, 40.008274, 26.892008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.220654, 39.576591, 26.681273>,  <34.896790, 39.322697, 26.752775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.220654, 39.576591, 26.681273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457245, 39.897839, 26.652565>,  <34.599201, 40.090588, 26.635342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457245, 39.897839, 26.652565>,  <34.220654, 39.576591, 26.681273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457245, 39.897839, 26.652565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644019, 0.416991, -0.641372,
		-0.485173, 0.425578, 0.763866,
		0.591479, 0.803120, -0.071768,
		34.634689, 40.138775, 26.631035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783394, 40.263012, 26.751444>,  <34.220654, 39.576591, 26.681273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783394, 40.263012, 26.751444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119724, 40.331841, 26.546150>,  <34.321522, 40.373138, 26.422974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.119724, 40.331841, 26.546150>,  <33.783394, 40.263012, 26.751444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.119724, 40.331841, 26.546150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529809, 0.456011, -0.715092,
		0.110997, 0.873182, 0.474587,
		0.840822, 0.172068, -0.513236,
		34.371971, 40.383461, 26.392179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.718971, 40.857414, 26.591438>,  <33.783394, 40.263012, 26.751444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.718971, 40.857414, 26.591438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024876, 40.771004, 26.348629>,  <34.208416, 40.719158, 26.202944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024876, 40.771004, 26.348629>,  <33.718971, 40.857414, 26.591438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024876, 40.771004, 26.348629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515338, 0.360420, -0.777511,
		0.386746, 0.907431, 0.164309,
		0.764758, -0.216025, -0.607024,
		34.254303, 40.706196, 26.166521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860050, 41.366913, 26.141951>,  <33.718971, 40.857414, 26.591438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860050, 41.366913, 26.141951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997532, 41.050575, 25.939396>,  <34.080021, 40.860771, 25.817863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.997532, 41.050575, 25.939396>,  <33.860050, 41.366913, 26.141951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.997532, 41.050575, 25.939396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469407, 0.322355, -0.822037,
		0.813343, 0.520237, -0.260435,
		0.343702, -0.790848, -0.506388,
		34.100643, 40.813320, 25.787479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149792, 41.676083, 25.643759>,  <33.860050, 41.366913, 26.141951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149792, 41.676083, 25.643759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059742, 41.302891, 25.531422>,  <34.005714, 41.078976, 25.464020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059742, 41.302891, 25.531422>,  <34.149792, 41.676083, 25.643759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059742, 41.302891, 25.531422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330796, 0.344308, -0.878650,
		0.916458, -0.104899, -0.386136,
		-0.225120, -0.932978, -0.280843,
		33.992207, 41.022999, 25.447168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962692, 41.729813, 24.949276>,  <34.149792, 41.676083, 25.643759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962692, 41.729813, 24.949276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831501, 41.354271, 24.991186>,  <33.752785, 41.128944, 25.016333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.831501, 41.354271, 24.991186>,  <33.962692, 41.729813, 24.949276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831501, 41.354271, 24.991186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370926, 0.025984, -0.928299,
		0.868816, -0.343329, -0.356768,
		-0.327982, -0.938856, 0.104774,
		33.733105, 41.072613, 25.022619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018372, 41.471897, 24.343578>,  <33.962692, 41.729813, 24.949276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018372, 41.471897, 24.343578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732407, 41.254475, 24.519510>,  <33.560829, 41.124020, 24.625069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732407, 41.254475, 24.519510>,  <34.018372, 41.471897, 24.343578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732407, 41.254475, 24.519510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509277, -0.026227, -0.860203,
		0.479106, -0.838962, -0.258071,
		-0.714909, -0.543558, 0.439830,
		33.517933, 41.091408, 24.651459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961391, 40.760368, 23.963923>,  <34.018372, 41.471897, 24.343578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961391, 40.760368, 23.963923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632313, 40.908577, 24.136377>,  <33.434864, 40.997501, 24.239851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632313, 40.908577, 24.136377>,  <33.961391, 40.760368, 23.963923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632313, 40.908577, 24.136377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499740, -0.109873, -0.859178,
		-0.270976, -0.922301, 0.275558,
		-0.822698, 0.370525, 0.431138,
		33.385502, 41.019733, 24.265718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475269, 40.359066, 23.621494>,  <33.961391, 40.760368, 23.963923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475269, 40.359066, 23.621494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270653, 40.649979, 23.804531>,  <33.147884, 40.824528, 23.914352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270653, 40.649979, 23.804531>,  <33.475269, 40.359066, 23.621494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270653, 40.649979, 23.804531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638636, 0.034484, -0.768736,
		-0.574869, -0.685470, 0.446829,
		-0.511537, 0.727284, 0.457590,
		33.117191, 40.868164, 23.941809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820683, 40.174706, 23.468332>,  <33.475269, 40.359066, 23.621494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820683, 40.174706, 23.468332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806892, 40.564236, 23.558203>,  <32.798618, 40.797955, 23.612125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.806892, 40.564236, 23.558203>,  <32.820683, 40.174706, 23.468332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.806892, 40.564236, 23.558203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796818, 0.108913, -0.594323,
		-0.603235, -0.199515, 0.772205,
		-0.034474, 0.973823, 0.224677,
		32.796551, 40.856384, 23.625607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148438, 40.389694, 23.432005>,  <32.820683, 40.174706, 23.468332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148438, 40.389694, 23.432005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339214, 40.741093, 23.420969>,  <32.453682, 40.951931, 23.414349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.339214, 40.741093, 23.420969>,  <32.148438, 40.389694, 23.432005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.339214, 40.741093, 23.420969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655888, 0.334841, -0.676530,
		-0.585094, 0.340762, 0.735898,
		0.476945, 0.878500, -0.027588,
		32.482296, 41.004642, 23.412693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573570, 40.854660, 23.429295>,  <32.148438, 40.389694, 23.432005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573570, 40.854660, 23.429295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893543, 41.059650, 23.304407>,  <32.085526, 41.182644, 23.229475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893543, 41.059650, 23.304407>,  <31.573570, 40.854660, 23.429295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893543, 41.059650, 23.304407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551110, 0.421495, -0.720153,
		-0.237461, 0.748139, 0.619597,
		0.799931, 0.512474, -0.312218,
		32.133522, 41.213394, 23.210741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316643, 41.642025, 23.250313>,  <31.573570, 40.854660, 23.429295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316643, 41.642025, 23.250313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654554, 41.560677, 23.052326>,  <31.857302, 41.511868, 22.933535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.654554, 41.560677, 23.052326>,  <31.316643, 41.642025, 23.250313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.654554, 41.560677, 23.052326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337669, 0.514968, -0.787901,
		0.415125, 0.832736, 0.366363,
		0.844779, -0.203367, -0.494965,
		31.907988, 41.499668, 22.903837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600821, 42.234241, 22.927429>,  <31.316643, 41.642025, 23.250313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600821, 42.234241, 22.927429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704424, 41.910442, 22.716667>,  <31.766586, 41.716164, 22.590210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.704424, 41.910442, 22.716667>,  <31.600821, 42.234241, 22.927429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.704424, 41.910442, 22.716667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261706, 0.466295, -0.845031,
		0.929745, 0.356763, -0.091077,
		0.259008, -0.809499, -0.526903,
		31.782125, 41.667591, 22.558596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225018, 42.406796, 22.397429>,  <31.600821, 42.234241, 22.927429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225018, 42.406796, 22.397429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925007, 42.154442, 22.317984>,  <31.745001, 42.003029, 22.270317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.925007, 42.154442, 22.317984>,  <32.225018, 42.406796, 22.397429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.925007, 42.154442, 22.317984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155603, 0.460165, -0.874091,
		0.642845, -0.624686, -0.443303,
		-0.750026, -0.630885, -0.198612,
		31.699999, 41.965176, 22.258400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393955, 42.149010, 21.792768>,  <32.225018, 42.406796, 22.397429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393955, 42.149010, 21.792768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000015, 42.163837, 21.860519>,  <31.763651, 42.172733, 21.901171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.000015, 42.163837, 21.860519>,  <32.393955, 42.149010, 21.792768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000015, 42.163837, 21.860519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131621, 0.476068, -0.869503,
		-0.112871, -0.878627, -0.463977,
		-0.984853, 0.037073, 0.169380,
		31.704559, 42.174957, 21.911333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300945, 42.160561, 21.117630>,  <32.393955, 42.149010, 21.792768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300945, 42.160561, 21.117630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955566, 42.279396, 21.280697>,  <31.748339, 42.350697, 21.378538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.955566, 42.279396, 21.280697>,  <32.300945, 42.160561, 21.117630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955566, 42.279396, 21.280697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141552, 0.632999, -0.761101,
		-0.484165, -0.714880, -0.504510,
		-0.863451, 0.297084, 0.407669,
		31.696531, 42.368523, 21.402998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498337, 41.738945, 20.455997>,  <32.300945, 42.160561, 21.117630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498337, 41.738945, 20.455997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746124, 41.833126, 20.156446>,  <32.894798, 41.889633, 19.976715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746124, 41.833126, 20.156446>,  <32.498337, 41.738945, 20.455997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746124, 41.833126, 20.156446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670829, 0.336709, 0.660769,
		0.407735, -0.911696, 0.050632,
		0.619469, 0.235453, -0.748880,
		32.931965, 41.903763, 19.931782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980576, 41.255421, 20.475035>,  <32.498337, 41.738945, 20.455997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980576, 41.255421, 20.475035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116817, 41.591961, 20.307165>,  <33.198563, 41.793884, 20.206444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116817, 41.591961, 20.307165>,  <32.980576, 41.255421, 20.475035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116817, 41.591961, 20.307165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670662, 0.095421, 0.735600,
		0.658940, -0.532006, -0.531759,
		0.340602, 0.841347, -0.419673,
		33.218998, 41.844364, 20.181263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625690, 41.114841, 20.349369>,  <32.980576, 41.255421, 20.475035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625690, 41.114841, 20.349369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588997, 41.512409, 20.373755>,  <33.566978, 41.750950, 20.388386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588997, 41.512409, 20.373755>,  <33.625690, 41.114841, 20.349369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588997, 41.512409, 20.373755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727871, 0.025149, 0.685253,
		0.679550, 0.107236, -0.725749,
		-0.091736, 0.993915, 0.060964,
		33.561478, 41.810585, 20.392044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236378, 41.297066, 20.515385>,  <33.625690, 41.114841, 20.349369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236378, 41.297066, 20.515385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058727, 41.647816, 20.588970>,  <33.952137, 41.858265, 20.633121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058727, 41.647816, 20.588970>,  <34.236378, 41.297066, 20.515385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058727, 41.647816, 20.588970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655198, 0.177808, 0.734234,
		0.611122, 0.446623, -0.653496,
		-0.444122, 0.876877, 0.183964,
		33.925491, 41.910877, 20.644159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730816, 41.765358, 20.504606>,  <34.236378, 41.297066, 20.515385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730816, 41.765358, 20.504606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435318, 41.934753, 20.714334>,  <34.258018, 42.036392, 20.840172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435318, 41.934753, 20.714334>,  <34.730816, 41.765358, 20.504606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435318, 41.934753, 20.714334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654355, 0.264285, 0.708501,
		0.161472, 0.866494, -0.472351,
		-0.738747, 0.423488, 0.524320,
		34.213696, 42.061798, 20.871630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039093, 42.512295, 20.648525>,  <34.730816, 41.765358, 20.504606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039093, 42.512295, 20.648525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761585, 42.419819, 20.921360>,  <34.595081, 42.364334, 21.085060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761585, 42.419819, 20.921360>,  <35.039093, 42.512295, 20.648525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761585, 42.419819, 20.921360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653333, 0.196505, 0.731123,
		-0.303060, 0.952858, 0.014714,
		-0.693765, -0.231188, 0.682087,
		34.553455, 42.350464, 21.125986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.152729, 42.978043, 21.272678>,  <35.039093, 42.512295, 20.648525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.152729, 42.978043, 21.272678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957237, 42.661102, 21.418732>,  <34.839943, 42.470940, 21.506363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.957237, 42.661102, 21.418732>,  <35.152729, 42.978043, 21.272678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957237, 42.661102, 21.418732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478690, 0.106354, 0.871519,
		-0.729382, 0.600724, 0.327312,
		-0.488731, -0.792351, 0.365133,
		34.810619, 42.423397, 21.528271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158997, 43.189716, 22.012920>,  <35.152729, 42.978043, 21.272678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158997, 43.189716, 22.012920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041401, 42.811058, 21.960100>,  <34.970844, 42.583862, 21.928408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041401, 42.811058, 21.960100>,  <35.158997, 43.189716, 22.012920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041401, 42.811058, 21.960100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306130, -0.224135, 0.925228,
		-0.905459, 0.231581, 0.355689,
		-0.293988, -0.946643, -0.132051,
		34.953205, 42.527065, 21.920485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798004, 42.953773, 22.696850>,  <35.158997, 43.189716, 22.012920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798004, 42.953773, 22.696850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924049, 42.629749, 22.499062>,  <34.999676, 42.435333, 22.380388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924049, 42.629749, 22.499062>,  <34.798004, 42.953773, 22.696850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924049, 42.629749, 22.499062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492704, -0.305667, 0.814746,
		-0.811138, -0.500367, 0.302800,
		0.315116, -0.810062, -0.494471,
		35.018585, 42.386730, 22.350719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.681076, 42.334419, 23.085751>,  <34.798004, 42.953773, 22.696850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.681076, 42.334419, 23.085751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967411, 42.188484, 22.847601>,  <35.139214, 42.100922, 22.704712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.967411, 42.188484, 22.847601>,  <34.681076, 42.334419, 23.085751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967411, 42.188484, 22.847601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441711, -0.423766, 0.790768,
		-0.540803, -0.829044, -0.142193,
		0.715837, -0.364842, -0.595372,
		35.182163, 42.079033, 22.668989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845016, 41.725391, 23.390823>,  <34.681076, 42.334419, 23.085751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845016, 41.725391, 23.390823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161713, 41.803101, 23.159166>,  <35.351730, 41.849724, 23.020172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.161713, 41.803101, 23.159166>,  <34.845016, 41.725391, 23.390823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161713, 41.803101, 23.159166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610455, -0.217168, 0.761697,
		0.022204, -0.956607, -0.290534,
		0.791740, 0.194271, -0.579143,
		35.399235, 41.861382, 22.985424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.251530, 41.184231, 23.373503>,  <34.845016, 41.725391, 23.390823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.251530, 41.184231, 23.373503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510502, 41.465263, 23.255375>,  <35.665886, 41.633884, 23.184498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.510502, 41.465263, 23.255375>,  <35.251530, 41.184231, 23.373503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.510502, 41.465263, 23.255375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641218, -0.292722, 0.709333,
		0.411919, -0.648606, -0.640026,
		0.647427, 0.702584, -0.295321,
		35.704731, 41.676037, 23.166779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884315, 40.834591, 23.318670>,  <35.251530, 41.184231, 23.373503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884315, 40.834591, 23.318670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977566, 41.219341, 23.375860>,  <36.033516, 41.450191, 23.410175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977566, 41.219341, 23.375860>,  <35.884315, 40.834591, 23.318670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977566, 41.219341, 23.375860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713067, -0.269056, 0.647414,
		0.661202, -0.048977, -0.748608,
		0.233126, 0.961879, 0.142976,
		36.047504, 41.507904, 23.418753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673416, 40.962585, 23.234604>,  <35.884315, 40.834591, 23.318670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673416, 40.962585, 23.234604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494789, 41.235325, 23.466351>,  <36.387611, 41.398968, 23.605398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.494789, 41.235325, 23.466351>,  <36.673416, 40.962585, 23.234604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.494789, 41.235325, 23.466351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655760, -0.191120, 0.730378,
		0.608733, 0.706087, -0.361779,
		-0.446567, 0.681846, 0.579365,
		36.360821, 41.439880, 23.640160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.179176, 41.353928, 23.457478>,  <36.673416, 40.962585, 23.234604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.179176, 41.353928, 23.457478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904106, 41.456356, 23.729221>,  <36.739063, 41.517815, 23.892267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904106, 41.456356, 23.729221>,  <37.179176, 41.353928, 23.457478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904106, 41.456356, 23.729221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689856, -0.061172, 0.721358,
		0.226278, 0.964720, -0.134588,
		-0.687675, 0.256074, 0.679360,
		36.697803, 41.533176, 23.933029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.551239, 41.856777, 23.962975>,  <37.179176, 41.353928, 23.457478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.551239, 41.856777, 23.962975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227104, 41.737789, 24.164915>,  <37.032623, 41.666397, 24.286079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227104, 41.737789, 24.164915>,  <37.551239, 41.856777, 23.962975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227104, 41.737789, 24.164915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549536, -0.086720, 0.830957,
		-0.203402, 0.950785, 0.233741,
		-0.810332, -0.297467, 0.504851,
		36.984005, 41.648548, 24.316370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564541, 42.249584, 24.608744>,  <37.551239, 41.856777, 23.962975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564541, 42.249584, 24.608744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351830, 41.915829, 24.666729>,  <37.224205, 41.715576, 24.701521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351830, 41.915829, 24.666729>,  <37.564541, 42.249584, 24.608744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351830, 41.915829, 24.666729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464308, -0.144091, 0.873874,
		-0.708261, 0.532012, 0.464036,
		-0.531775, -0.834387, 0.144963,
		37.192299, 41.665512, 24.710218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279121, 42.355278, 25.181536>,  <37.564541, 42.249584, 24.608744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279121, 42.355278, 25.181536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258671, 41.957550, 25.144196>,  <37.246403, 41.718914, 25.121792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.258671, 41.957550, 25.144196>,  <37.279121, 42.355278, 25.181536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.258671, 41.957550, 25.144196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363961, -0.105592, 0.925410,
		-0.930010, 0.013336, 0.367292,
		-0.051125, -0.994320, -0.093348,
		37.243332, 41.659252, 25.116192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.947533, 42.180389, 25.786003>,  <37.279121, 42.355278, 25.181536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.947533, 42.180389, 25.786003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108513, 41.838039, 25.656078>,  <37.205101, 41.632629, 25.578123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.108513, 41.838039, 25.656078>,  <36.947533, 42.180389, 25.786003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.108513, 41.838039, 25.656078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263014, -0.231748, 0.936545,
		-0.876844, -0.462345, 0.131840,
		0.402453, -0.855880, -0.324810,
		37.229248, 41.581276, 25.558636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676659, 41.652760, 26.135359>,  <36.947533, 42.180389, 25.786003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676659, 41.652760, 26.135359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001984, 41.478115, 25.981527>,  <37.197178, 41.373329, 25.889229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001984, 41.478115, 25.981527>,  <36.676659, 41.652760, 26.135359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001984, 41.478115, 25.981527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195681, -0.417212, 0.887492,
		-0.547940, -0.797059, -0.253886,
		0.813308, -0.436612, -0.384577,
		37.245975, 41.347130, 25.866154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803810, 41.104607, 26.618290>,  <36.676659, 41.652760, 26.135359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803810, 41.104607, 26.618290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149097, 41.105892, 26.416363>,  <37.356270, 41.106663, 26.295206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.149097, 41.105892, 26.416363>,  <36.803810, 41.104607, 26.618290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149097, 41.105892, 26.416363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464337, -0.397450, 0.791470,
		-0.198096, -0.917618, -0.344580,
		0.863220, 0.003214, -0.504818,
		37.408062, 41.106857, 26.264917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.110924, 40.413448, 26.568262>,  <36.803810, 41.104607, 26.618290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.110924, 40.413448, 26.568262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428570, 40.650658, 26.515049>,  <37.619160, 40.792984, 26.483120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.428570, 40.650658, 26.515049>,  <37.110924, 40.413448, 26.568262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.428570, 40.650658, 26.515049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399031, -0.343633, 0.850112,
		0.458424, -0.728173, -0.509521,
		0.794117, 0.593026, -0.133034,
		37.666805, 40.828564, 26.475140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669495, 40.002617, 26.599216>,  <37.110924, 40.413448, 26.568262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669495, 40.002617, 26.599216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826370, 40.356518, 26.699928>,  <37.920494, 40.568859, 26.760355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.826370, 40.356518, 26.699928>,  <37.669495, 40.002617, 26.599216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826370, 40.356518, 26.699928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359348, -0.399316, 0.843455,
		0.846792, -0.240318, -0.474543,
		0.392190, 0.884756, 0.251780,
		37.944027, 40.621944, 26.775463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331097, 39.845097, 26.821875>,  <37.669495, 40.002617, 26.599216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331097, 39.845097, 26.821875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215618, 40.192318, 26.983437>,  <38.146332, 40.400650, 27.080374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215618, 40.192318, 26.983437>,  <38.331097, 39.845097, 26.821875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215618, 40.192318, 26.983437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457623, -0.245446, 0.854598,
		0.840971, 0.431559, -0.326380,
		-0.288701, 0.868051, 0.403904,
		38.129009, 40.452732, 27.104609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.916916, 40.164677, 27.254223>,  <38.331097, 39.845097, 26.821875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.916916, 40.164677, 27.254223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608593, 40.381546, 27.388033>,  <38.423599, 40.511669, 27.468319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608593, 40.381546, 27.388033>,  <38.916916, 40.164677, 27.254223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608593, 40.381546, 27.388033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312838, -0.135300, 0.940120,
		0.554971, 0.829301, -0.065323,
		-0.770805, 0.542175, 0.334524,
		38.377350, 40.544197, 27.488390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228989, 40.572124, 27.734610>,  <38.916916, 40.164677, 27.254223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228989, 40.572124, 27.734610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845585, 40.590755, 27.847105>,  <38.615543, 40.601936, 27.914602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845585, 40.590755, 27.847105>,  <39.228989, 40.572124, 27.734610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845585, 40.590755, 27.847105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280422, -0.023393, 0.959592,
		0.051278, 0.998640, 0.009360,
		-0.958506, 0.046582, 0.281240,
		38.558033, 40.604729, 27.931477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155426, 41.180241, 28.202339>,  <39.228989, 40.572124, 27.734610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155426, 41.180241, 28.202339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855145, 40.923954, 28.266741>,  <38.674976, 40.770184, 28.305382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.855145, 40.923954, 28.266741>,  <39.155426, 41.180241, 28.202339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.855145, 40.923954, 28.266741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272851, -0.078746, 0.958828,
		-0.601658, 0.763729, 0.233935,
		-0.750706, -0.640716, 0.161006,
		38.629932, 40.731739, 28.315042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885151, 41.428268, 28.853111>,  <39.155426, 41.180241, 28.202339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885151, 41.428268, 28.853111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793049, 41.041798, 28.806656>,  <38.737789, 40.809917, 28.778782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793049, 41.041798, 28.806656>,  <38.885151, 41.428268, 28.853111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793049, 41.041798, 28.806656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049289, -0.130771, 0.990187,
		-0.971881, 0.222273, 0.077732,
		-0.230257, -0.966175, -0.116138,
		38.723972, 40.751945, 28.771814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489735, 41.366428, 29.397467>,  <38.885151, 41.428268, 28.853111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489735, 41.366428, 29.397467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646671, 41.010994, 29.302397>,  <38.740833, 40.797733, 29.245356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646671, 41.010994, 29.302397>,  <38.489735, 41.366428, 29.397467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646671, 41.010994, 29.302397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216194, -0.162070, 0.962805,
		-0.894054, -0.429128, 0.128521,
		0.392337, -0.888585, -0.237674,
		38.764374, 40.744419, 29.231094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311497, 40.869293, 29.990284>,  <38.489735, 41.366428, 29.397467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311497, 40.869293, 29.990284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615223, 40.693871, 29.797991>,  <38.797459, 40.588615, 29.682613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.615223, 40.693871, 29.797991>,  <38.311497, 40.869293, 29.990284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.615223, 40.693871, 29.797991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449972, -0.179805, 0.874754,
		-0.470071, -0.880531, 0.060811,
		0.759314, -0.438561, -0.480735,
		38.843018, 40.562302, 29.653770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526348, 40.385410, 30.437336>,  <38.311497, 40.869293, 29.990284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526348, 40.385410, 30.437336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839439, 40.325111, 30.195803>,  <39.027294, 40.288933, 30.050882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.839439, 40.325111, 30.195803>,  <38.526348, 40.385410, 30.437336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.839439, 40.325111, 30.195803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567227, -0.226458, 0.791814,
		-0.256109, -0.962285, -0.091745,
		0.782727, -0.150751, -0.603832,
		39.074257, 40.279888, 30.014652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766220, 39.636742, 30.514486>,  <38.526348, 40.385410, 30.437336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766220, 39.636742, 30.514486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065601, 39.844547, 30.349594>,  <39.245228, 39.969231, 30.250660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.065601, 39.844547, 30.349594>,  <38.766220, 39.636742, 30.514486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065601, 39.844547, 30.349594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635345, -0.383453, 0.670299,
		0.190157, -0.763592, -0.617063,
		0.748449, 0.519510, -0.412229,
		39.290134, 40.000401, 30.225925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243454, 39.212543, 30.422625>,  <38.766220, 39.636742, 30.514486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243454, 39.212543, 30.422625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447693, 39.556461, 30.420225>,  <39.570236, 39.762814, 30.418785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.447693, 39.556461, 30.420225>,  <39.243454, 39.212543, 30.422625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.447693, 39.556461, 30.420225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745533, -0.439243, 0.501245,
		0.428336, -0.260405, -0.865285,
		0.510597, 0.859799, -0.005996,
		39.600872, 39.814400, 30.418427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.982292, 39.037228, 30.383490>,  <39.243454, 39.212543, 30.422625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.982292, 39.037228, 30.383490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977367, 39.399055, 30.553946>,  <39.974415, 39.616154, 30.656219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977367, 39.399055, 30.553946>,  <39.982292, 39.037228, 30.383490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977367, 39.399055, 30.553946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623459, -0.326247, 0.710536,
		0.781759, 0.274429, -0.559948,
		-0.012310, 0.904572, 0.426142,
		39.973675, 39.670425, 30.681787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.624203, 39.202969, 30.460716>,  <39.982292, 39.037228, 30.383490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.624203, 39.202969, 30.460716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456825, 39.439716, 30.736279>,  <40.356400, 39.581764, 30.901617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.456825, 39.439716, 30.736279>,  <40.624203, 39.202969, 30.460716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456825, 39.439716, 30.736279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679355, -0.299464, 0.669924,
		0.602811, 0.748339, -0.276781,
		-0.418444, 0.591870, 0.688908,
		40.331291, 39.617279, 30.942951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.156330, 39.533703, 30.791998>,  <40.624203, 39.202969, 30.460716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.156330, 39.533703, 30.791998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850044, 39.614483, 31.036259>,  <40.666271, 39.662952, 31.182816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.850044, 39.614483, 31.036259>,  <41.156330, 39.533703, 30.791998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850044, 39.614483, 31.036259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601894, -0.109683, 0.791007,
		0.226723, 0.973235, -0.037566,
		-0.765715, 0.201950, 0.610652,
		40.620331, 39.675068, 31.219454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363632, 39.926273, 31.372356>,  <41.156330, 39.533703, 30.791998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363632, 39.926273, 31.372356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017582, 39.790348, 31.519913>,  <40.809952, 39.708794, 31.608446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.017582, 39.790348, 31.519913>,  <41.363632, 39.926273, 31.372356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017582, 39.790348, 31.519913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338559, 0.146987, 0.929393,
		-0.370047, 0.928934, -0.012114,
		-0.865126, -0.339818, 0.368891,
		40.758045, 39.688404, 31.630581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119049, 40.460560, 31.815687>,  <41.363632, 39.926273, 31.372356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119049, 40.460560, 31.815687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956543, 40.110729, 31.921562>,  <40.859039, 39.900829, 31.985086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.956543, 40.110729, 31.921562>,  <41.119049, 40.460560, 31.815687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.956543, 40.110729, 31.921562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365683, 0.109845, 0.924235,
		-0.837392, 0.472275, 0.275193,
		-0.406265, -0.874580, 0.264686,
		40.834663, 39.848354, 32.000969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.138603, 40.409115, 32.517117>,  <41.119049, 40.460560, 31.815687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.138603, 40.409115, 32.517117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091072, 40.021343, 32.431248>,  <41.062553, 39.788681, 32.379726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.091072, 40.021343, 32.431248>,  <41.138603, 40.409115, 32.517117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091072, 40.021343, 32.431248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601435, -0.242307, 0.761290,
		-0.790035, -0.038649, 0.611842,
		-0.118830, -0.969429, -0.214676,
		41.055424, 39.730515, 32.366844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.026005, 40.100540, 33.256866>,  <41.138603, 40.409115, 32.517117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.026005, 40.100540, 33.256866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124187, 39.799274, 33.012737>,  <41.183098, 39.618515, 32.866261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124187, 39.799274, 33.012737>,  <41.026005, 40.100540, 33.256866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124187, 39.799274, 33.012737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796620, -0.202048, 0.569713,
		-0.552402, -0.626034, 0.550393,
		0.245454, -0.753165, -0.610324,
		41.197823, 39.573326, 32.829639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754124, 40.049442, 33.509335>,  <41.026005, 40.100540, 33.256866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754124, 40.049442, 33.509335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031025, 40.328064, 33.584801>,  <42.197166, 40.495235, 33.630081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.031025, 40.328064, 33.584801>,  <41.754124, 40.049442, 33.509335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.031025, 40.328064, 33.584801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095456, -0.170754, 0.980679,
		0.715310, -0.696891, -0.051716,
		0.692257, 0.696553, 0.188664,
		42.238701, 40.537029, 33.641399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.269367, 39.845440, 34.061565>,  <41.754124, 40.049442, 33.509335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.269367, 39.845440, 34.061565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271221, 40.245159, 34.076397>,  <42.272335, 40.484993, 34.085297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.271221, 40.245159, 34.076397>,  <42.269367, 39.845440, 34.061565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.271221, 40.245159, 34.076397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026244, -0.036942, 0.998973,
		0.999645, -0.005606, 0.026054,
		0.004638, 0.999302, 0.037076,
		42.272614, 40.544949, 34.087521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.821747, 40.045456, 34.500202>,  <42.269367, 39.845440, 34.061565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.821747, 40.045456, 34.500202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607182, 40.382458, 34.480427>,  <42.478443, 40.584660, 34.468563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607182, 40.382458, 34.480427>,  <42.821747, 40.045456, 34.500202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607182, 40.382458, 34.480427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011044, 0.051564, 0.998609,
		0.843886, 0.536208, -0.018354,
		-0.536409, 0.842509, -0.049436,
		42.446259, 40.635212, 34.465595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205883, 40.472198, 34.949703>,  <42.821747, 40.045456, 34.500202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205883, 40.472198, 34.949703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830662, 40.606140, 34.914066>,  <42.605530, 40.686504, 34.892685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830662, 40.606140, 34.914066>,  <43.205883, 40.472198, 34.949703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830662, 40.606140, 34.914066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024515, 0.192329, 0.981024,
		0.345635, 0.922432, -0.172205,
		-0.938049, 0.334855, -0.089089,
		42.549248, 40.706596, 34.887341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.199722, 40.610962, 35.643780>,  <43.205883, 40.472198, 34.949703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.199722, 40.610962, 35.643780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819607, 40.674820, 35.536850>,  <42.591537, 40.713135, 35.472694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819607, 40.674820, 35.536850>,  <43.199722, 40.610962, 35.643780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819607, 40.674820, 35.536850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243384, 0.154612, 0.957528,
		0.194193, 0.974992, -0.108072,
		-0.950291, 0.159642, -0.267322,
		42.534519, 40.722713, 35.456654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996201, 41.224506, 35.964165>,  <43.199722, 40.610962, 35.643780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996201, 41.224506, 35.964165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668854, 41.008778, 35.884758>,  <42.472446, 40.879341, 35.837116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.668854, 41.008778, 35.884758>,  <42.996201, 41.224506, 35.964165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.668854, 41.008778, 35.884758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243319, 0.012225, 0.969869,
		-0.520647, 0.842009, -0.141233,
		-0.818366, -0.539324, -0.198512,
		42.423344, 40.846981, 35.825203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.374798, 41.523983, 36.326271>,  <42.996201, 41.224506, 35.964165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.374798, 41.523983, 36.326271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284420, 41.143414, 36.242611>,  <42.230194, 40.915073, 36.192417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.284420, 41.143414, 36.242611>,  <42.374798, 41.523983, 36.326271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.284420, 41.143414, 36.242611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319525, -0.130436, 0.938558,
		-0.920245, 0.278893, -0.274531,
		-0.225949, -0.951423, -0.209146,
		42.216637, 40.857986, 36.179867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825756, 41.387970, 36.785011>,  <42.374798, 41.523983, 36.326271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825756, 41.387970, 36.785011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945587, 41.019184, 36.686840>,  <42.017487, 40.797913, 36.627937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.945587, 41.019184, 36.686840>,  <41.825756, 41.387970, 36.785011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.945587, 41.019184, 36.686840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263075, -0.327095, 0.907634,
		-0.917084, -0.207345, -0.340537,
		0.299581, -0.921964, -0.245427,
		42.035461, 40.742596, 36.613213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280289, 40.955246, 36.909447>,  <41.825756, 41.387970, 36.785011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280289, 40.955246, 36.909447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581238, 40.691772, 36.906227>,  <41.761806, 40.533688, 36.904297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.581238, 40.691772, 36.906227>,  <41.280289, 40.955246, 36.909447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.581238, 40.691772, 36.906227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344114, -0.403419, 0.847843,
		-0.561707, -0.635129, -0.530186,
		0.752377, -0.658684, -0.008047,
		41.806950, 40.494167, 36.903812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.961060, 40.456333, 37.097618>,  <41.280289, 40.955246, 36.909447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.961060, 40.456333, 37.097618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350636, 40.414780, 37.178265>,  <41.584381, 40.389847, 37.226650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.350636, 40.414780, 37.178265>,  <40.961060, 40.456333, 37.097618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.350636, 40.414780, 37.178265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225550, -0.536953, 0.812901,
		0.023811, -0.837192, -0.546391,
		0.973941, -0.103883, 0.201614,
		41.642818, 40.383614, 37.238750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035633, 39.737846, 37.227348>,  <40.961060, 40.456333, 37.097618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035633, 39.737846, 37.227348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347176, 39.905617, 37.413879>,  <41.534100, 40.006279, 37.525799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347176, 39.905617, 37.413879>,  <41.035633, 39.737846, 37.227348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347176, 39.905617, 37.413879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159922, -0.586135, 0.794274,
		0.606470, -0.693203, -0.389440,
		0.778857, 0.419423, 0.466332,
		41.580833, 40.031445, 37.553780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.261562, 39.302471, 37.805729>,  <41.035633, 39.737846, 37.227348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.261562, 39.302471, 37.805729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519642, 39.592617, 37.901703>,  <41.674488, 39.766705, 37.959286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.519642, 39.592617, 37.901703>,  <41.261562, 39.302471, 37.805729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.519642, 39.592617, 37.901703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021674, -0.331292, 0.943279,
		0.763707, -0.603403, -0.229471,
		0.645199, 0.725362, 0.239932,
		41.713203, 39.810226, 37.973682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708641, 39.026451, 38.294231>,  <41.261562, 39.302471, 37.805729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708641, 39.026451, 38.294231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782959, 39.406651, 38.393860>,  <41.827549, 39.634769, 38.453636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.782959, 39.406651, 38.393860>,  <41.708641, 39.026451, 38.294231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782959, 39.406651, 38.393860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124956, -0.274281, 0.953497,
		0.974611, -0.146033, -0.169730,
		0.185796, 0.950497, 0.249069,
		41.838699, 39.691799, 38.468582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314999, 39.020954, 38.720779>,  <41.708641, 39.026451, 38.294231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314999, 39.020954, 38.720779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078854, 39.337967, 38.781918>,  <41.937164, 39.528175, 38.818600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.078854, 39.337967, 38.781918>,  <42.314999, 39.020954, 38.720779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.078854, 39.337967, 38.781918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009911, -0.196474, 0.980459,
		0.807074, 0.577315, 0.123846,
		-0.590367, 0.792531, 0.152848,
		41.901745, 39.575726, 38.827770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.639847, 39.356255, 39.301418>,  <42.314999, 39.020954, 38.720779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.639847, 39.356255, 39.301418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264107, 39.493164, 39.292835>,  <42.038662, 39.575310, 39.287685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264107, 39.493164, 39.292835>,  <42.639847, 39.356255, 39.301418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264107, 39.493164, 39.292835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065134, -0.116617, 0.991039,
		0.336709, 0.932334, 0.131838,
		-0.939353, 0.342278, -0.021460,
		41.982300, 39.595848, 39.286396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567921, 39.912365, 39.728035>,  <42.639847, 39.356255, 39.301418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567921, 39.912365, 39.728035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227070, 39.703911, 39.708843>,  <42.022560, 39.578838, 39.697327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.227070, 39.703911, 39.708843>,  <42.567921, 39.912365, 39.728035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.227070, 39.703911, 39.708843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011953, -0.111042, 0.993744,
		-0.523206, 0.846218, 0.100851,
		-0.852122, -0.521138, -0.047983,
		41.971432, 39.547569, 39.694447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324413, 40.332199, 40.313328>,  <42.567921, 39.912365, 39.728035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324413, 40.332199, 40.313328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133511, 39.983994, 40.265289>,  <42.018967, 39.775070, 40.236465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.133511, 39.983994, 40.265289>,  <42.324413, 40.332199, 40.313328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.133511, 39.983994, 40.265289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066662, -0.100401, 0.992711,
		-0.876230, 0.481788, -0.010113,
		-0.477260, -0.870517, -0.120092,
		41.990334, 39.722839, 40.229263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760136, 40.329861, 40.778824>,  <42.324413, 40.332199, 40.313328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760136, 40.329861, 40.778824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881584, 39.957535, 40.697441>,  <41.954453, 39.734138, 40.648613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881584, 39.957535, 40.697441>,  <41.760136, 40.329861, 40.778824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881584, 39.957535, 40.697441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066376, -0.233681, 0.970045,
		-0.950477, -0.281025, -0.132736,
		0.303624, -0.930816, -0.203455,
		41.972672, 39.678291, 40.636406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367519, 39.676205, 41.158581>,  <41.760136, 40.329861, 40.778824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367519, 39.676205, 41.158581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740498, 39.555546, 41.079025>,  <41.964283, 39.483150, 41.031292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740498, 39.555546, 41.079025>,  <41.367519, 39.676205, 41.158581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740498, 39.555546, 41.079025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004692, -0.540307, 0.841455,
		-0.361288, -0.785542, -0.502389,
		0.932442, -0.301651, -0.198892,
		42.020229, 39.465050, 41.019356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253857, 39.207779, 41.519226>,  <41.367519, 39.676205, 41.158581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253857, 39.207779, 41.519226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647545, 39.169842, 41.459473>,  <41.883759, 39.147079, 41.423622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.647545, 39.169842, 41.459473>,  <41.253857, 39.207779, 41.519226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.647545, 39.169842, 41.459473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070456, -0.564340, 0.822531,
		-0.162313, -0.820076, -0.548752,
		0.984221, -0.094845, -0.149379,
		41.942810, 39.141388, 41.414658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.394180, 38.602676, 41.869476>,  <41.253857, 39.207779, 41.519226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.394180, 38.602676, 41.869476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762165, 38.747044, 41.808277>,  <41.982956, 38.833664, 41.771557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.762165, 38.747044, 41.808277>,  <41.394180, 38.602676, 41.869476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.762165, 38.747044, 41.808277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331591, -0.508294, 0.794786,
		0.209086, -0.781905, -0.587289,
		0.919962, 0.360918, -0.152995,
		42.038155, 38.855320, 41.762379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.691624, 37.947197, 41.952595>,  <41.394180, 38.602676, 41.869476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.691624, 37.947197, 41.952595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907448, 38.277866, 42.016441>,  <42.036942, 38.476269, 42.054749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.907448, 38.277866, 42.016441>,  <41.691624, 37.947197, 41.952595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.907448, 38.277866, 42.016441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338978, -0.386834, 0.857586,
		0.770694, -0.408611, -0.488946,
		0.539560, 0.826678, 0.159621,
		42.069317, 38.525871, 42.064327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351246, 37.805363, 41.960754>,  <41.691624, 37.947197, 41.952595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351246, 37.805363, 41.960754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230492, 38.107601, 42.193287>,  <42.158039, 38.288944, 42.332806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230492, 38.107601, 42.193287>,  <42.351246, 37.805363, 41.960754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230492, 38.107601, 42.193287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405288, -0.450215, 0.795643,
		0.862906, 0.475798, -0.170321,
		-0.301885, 0.755594, 0.581328,
		42.139927, 38.334278, 42.367687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861240, 37.858650, 42.429363>,  <42.351246, 37.805363, 41.960754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861240, 37.858650, 42.429363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568340, 38.062984, 42.609524>,  <42.392601, 38.185585, 42.717621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.568340, 38.062984, 42.609524>,  <42.861240, 37.858650, 42.429363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568340, 38.062984, 42.609524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308529, -0.340762, 0.888083,
		0.607143, 0.789259, 0.091915,
		-0.732248, 0.510834, 0.450401,
		42.348667, 38.216236, 42.744644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162220, 38.403702, 42.997284>,  <42.861240, 37.858650, 42.429363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162220, 38.403702, 42.997284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788776, 38.274792, 43.059910>,  <42.564709, 38.197445, 43.097485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.788776, 38.274792, 43.059910>,  <43.162220, 38.403702, 42.997284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.788776, 38.274792, 43.059910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299685, -0.462913, 0.834206,
		-0.196371, 0.825742, 0.528761,
		-0.933610, -0.322276, 0.156561,
		42.508694, 38.178108, 43.106876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140308, 38.937469, 42.360817>,  <43.162220, 38.403702, 42.997284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140308, 38.937469, 42.360817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794861, 38.804249, 42.209427>,  <42.587593, 38.724316, 42.118595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.794861, 38.804249, 42.209427>,  <43.140308, 38.937469, 42.360817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.794861, 38.804249, 42.209427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312724, 0.234937, -0.920331,
		0.395433, -0.913172, -0.098743,
		-0.863618, -0.333050, -0.378472,
		42.535774, 38.704334, 42.095886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272915, 38.766819, 41.697227>,  <43.140308, 38.937469, 42.360817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272915, 38.766819, 41.697227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873840, 38.771156, 41.670372>,  <42.634396, 38.773758, 41.654259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.873840, 38.771156, 41.670372>,  <43.272915, 38.766819, 41.697227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.873840, 38.771156, 41.670372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063614, 0.498077, -0.864796,
		0.024064, -0.867065, -0.497614,
		-0.997684, 0.010844, -0.067143,
		42.574535, 38.774410, 41.650230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.213383, 39.143070, 41.051624>,  <43.272915, 38.766819, 41.697227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.213383, 39.143070, 41.051624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829281, 39.086952, 41.148144>,  <42.598820, 39.053280, 41.206055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.829281, 39.086952, 41.148144>,  <43.213383, 39.143070, 41.051624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829281, 39.086952, 41.148144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278760, 0.525881, -0.803581,
		-0.014153, -0.838907, -0.544090,
		-0.960256, -0.140298, 0.241297,
		42.541203, 39.044865, 41.220531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.951843, 38.832798, 40.495060>,  <43.213383, 39.143070, 41.051624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.951843, 38.832798, 40.495060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654613, 38.995712, 40.707455>,  <42.476276, 39.093460, 40.834892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.654613, 38.995712, 40.707455>,  <42.951843, 38.832798, 40.495060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.654613, 38.995712, 40.707455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436442, 0.306546, -0.845901,
		-0.507300, -0.860316, -0.050029,
		-0.743079, 0.407290, 0.530989,
		42.431690, 39.117901, 40.866753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.398861, 38.398361, 40.518150>,  <42.951843, 38.832798, 40.495060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.398861, 38.398361, 40.518150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264164, 38.773739, 40.548946>,  <42.183346, 38.998966, 40.567425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.264164, 38.773739, 40.548946>,  <42.398861, 38.398361, 40.518150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.264164, 38.773739, 40.548946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353476, -0.050206, -0.934095,
		-0.872731, -0.341762, 0.348624,
		-0.336742, 0.938444, 0.076988,
		42.163143, 39.055271, 40.572044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685226, 38.440220, 40.471779>,  <42.398861, 38.398361, 40.518150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685226, 38.440220, 40.471779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879410, 38.750549, 40.310570>,  <41.995922, 38.936745, 40.213844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.879410, 38.750549, 40.310570>,  <41.685226, 38.440220, 40.471779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.879410, 38.750549, 40.310570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525101, -0.109824, -0.843924,
		-0.698995, 0.621322, 0.354069,
		0.485463, 0.775821, -0.403024,
		42.025047, 38.983295, 40.189663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214249, 38.810692, 40.023987>,  <41.685226, 38.440220, 40.471779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214249, 38.810692, 40.023987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567719, 38.874836, 39.848080>,  <41.779800, 38.913322, 39.742535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567719, 38.874836, 39.848080>,  <41.214249, 38.810692, 40.023987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567719, 38.874836, 39.848080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426454, -0.111545, -0.897605,
		-0.192997, 0.980735, -0.030182,
		0.883679, 0.160364, -0.439766,
		41.832821, 38.922947, 39.716148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.858044, 39.544323, 39.877831>,  <41.214249, 38.810692, 40.023987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.858044, 39.544323, 39.877831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229332, 39.672668, 39.802517>,  <41.452106, 39.749676, 39.757328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229332, 39.672668, 39.802517>,  <40.858044, 39.544323, 39.877831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229332, 39.672668, 39.802517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166538, -0.094189, -0.981526,
		-0.332667, 0.942432, -0.033993,
		0.928223, 0.320860, -0.188284,
		41.507797, 39.768925, 39.746033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.796803, 40.129860, 39.522720>,  <40.858044, 39.544323, 39.877831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.796803, 40.129860, 39.522720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152554, 39.968155, 39.437321>,  <41.366005, 39.871132, 39.386082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.152554, 39.968155, 39.437321>,  <40.796803, 40.129860, 39.522720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.152554, 39.968155, 39.437321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119359, 0.245482, -0.962025,
		0.441324, 0.881084, 0.170073,
		0.889374, -0.404265, -0.213502,
		41.419365, 39.846874, 39.373272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211285, 40.613647, 39.099659>,  <40.796803, 40.129860, 39.522720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211285, 40.613647, 39.099659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414974, 40.279388, 39.017300>,  <41.537189, 40.078835, 38.967884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.414974, 40.279388, 39.017300>,  <41.211285, 40.613647, 39.099659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.414974, 40.279388, 39.017300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312946, 0.402647, -0.860197,
		0.801721, 0.373599, 0.466549,
		0.509223, -0.835643, -0.205894,
		41.567741, 40.028694, 38.955532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767159, 40.840580, 38.932976>,  <41.211285, 40.613647, 39.099659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767159, 40.840580, 38.932976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749416, 40.489048, 38.742947>,  <41.738770, 40.278130, 38.628929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.749416, 40.489048, 38.742947>,  <41.767159, 40.840580, 38.932976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.749416, 40.489048, 38.742947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173519, 0.461535, -0.869986,
		0.983831, -0.121023, 0.132021,
		-0.044356, -0.878828, -0.475073,
		41.736111, 40.225399, 38.600426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246162, 40.927113, 38.408989>,  <41.767159, 40.840580, 38.932976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246162, 40.927113, 38.408989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097660, 40.578735, 38.280220>,  <42.008560, 40.369709, 38.202957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.097660, 40.578735, 38.280220>,  <42.246162, 40.927113, 38.408989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.097660, 40.578735, 38.280220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266228, 0.232301, -0.935499,
		0.889548, -0.433010, 0.145627,
		-0.371252, -0.870941, -0.321922,
		41.986286, 40.317451, 38.183643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750599, 40.524593, 37.961292>,  <42.246162, 40.927113, 38.408989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750599, 40.524593, 37.961292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390812, 40.382408, 37.859619>,  <42.174942, 40.297096, 37.798615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.390812, 40.382408, 37.859619>,  <42.750599, 40.524593, 37.961292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.390812, 40.382408, 37.859619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267608, 0.011793, -0.963456,
		0.345469, -0.934617, 0.084517,
		-0.899465, -0.355461, -0.254185,
		42.120972, 40.275768, 37.783363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846062, 39.956680, 37.634613>,  <42.750599, 40.524593, 37.961292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846062, 39.956680, 37.634613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491184, 40.085560, 37.502506>,  <42.278255, 40.162888, 37.423244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.491184, 40.085560, 37.502506>,  <42.846062, 39.956680, 37.634613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.491184, 40.085560, 37.502506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361596, 0.040926, -0.931436,
		-0.286588, -0.945788, -0.152814,
		-0.887195, 0.322195, -0.330264,
		42.225025, 40.182217, 37.403427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849869, 39.737823, 36.948540>,  <42.846062, 39.956680, 37.634613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849869, 39.737823, 36.948540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528046, 39.975220, 36.940109>,  <42.334949, 40.117657, 36.935051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528046, 39.975220, 36.940109>,  <42.849869, 39.737823, 36.948540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528046, 39.975220, 36.940109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131279, 0.143129, -0.980958,
		-0.579177, -0.792008, -0.193070,
		-0.804561, 0.593495, -0.021077,
		42.286678, 40.153267, 36.933784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.426746, 39.544476, 36.512901>,  <42.849869, 39.737823, 36.948540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.426746, 39.544476, 36.512901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333427, 39.932693, 36.536930>,  <42.277435, 40.165627, 36.551346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.333427, 39.932693, 36.536930>,  <42.426746, 39.544476, 36.512901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.333427, 39.932693, 36.536930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043926, 0.072229, -0.996420,
		-0.971412, -0.229827, -0.059484,
		-0.233301, 0.970547, 0.060069,
		42.263435, 40.223858, 36.554951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827202, 39.636566, 36.022942>,  <42.426746, 39.544476, 36.512901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827202, 39.636566, 36.022942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982338, 40.004559, 36.045635>,  <42.075420, 40.225353, 36.059250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.982338, 40.004559, 36.045635>,  <41.827202, 39.636566, 36.022942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.982338, 40.004559, 36.045635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065125, 0.088745, -0.993923,
		-0.919423, 0.381788, 0.094332,
		0.387840, 0.919979, 0.056731,
		42.098690, 40.280552, 36.062653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.509136, 40.040474, 35.463703>,  <41.827202, 39.636566, 36.022942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.509136, 40.040474, 35.463703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793797, 40.294926, 35.582962>,  <41.964592, 40.447598, 35.654518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.793797, 40.294926, 35.582962>,  <41.509136, 40.040474, 35.463703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.793797, 40.294926, 35.582962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063023, 0.364873, -0.928922,
		-0.699705, 0.679855, 0.219570,
		0.711647, 0.636133, 0.298150,
		42.007290, 40.485767, 35.672405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.252491, 40.697926, 35.253757>,  <41.509136, 40.040474, 35.463703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.252491, 40.697926, 35.253757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651745, 40.716503, 35.269615>,  <41.891296, 40.727650, 35.279129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651745, 40.716503, 35.269615>,  <41.252491, 40.697926, 35.253757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651745, 40.716503, 35.269615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027420, 0.239161, -0.970593,
		-0.054556, 0.969869, 0.237441,
		0.998134, 0.046441, 0.039641,
		41.951183, 40.730434, 35.281509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424625, 41.275234, 34.934132>,  <41.252491, 40.697926, 35.253757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424625, 41.275234, 34.934132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779198, 41.090126, 34.937721>,  <41.991943, 40.979061, 34.939877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.779198, 41.090126, 34.937721>,  <41.424625, 41.275234, 34.934132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.779198, 41.090126, 34.937721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175181, 0.317482, -0.931943,
		0.428424, 0.827678, 0.362495,
		0.886434, -0.462769, 0.008977,
		42.045128, 40.951294, 34.940414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.650192, 41.696354, 34.466389>,  <41.424625, 41.275234, 34.934132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.650192, 41.696354, 34.466389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908772, 41.391289, 34.474876>,  <42.063919, 41.208248, 34.479969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908772, 41.391289, 34.474876>,  <41.650192, 41.696354, 34.466389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908772, 41.391289, 34.474876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153484, 0.102747, -0.982795,
		0.747363, 0.638580, 0.183477,
		0.646444, -0.762666, 0.021223,
		42.102703, 41.162491, 34.481243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.312416, 41.868137, 34.174183>,  <41.650192, 41.696354, 34.466389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.312416, 41.868137, 34.174183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275295, 41.471497, 34.138157>,  <42.253021, 41.233513, 34.116543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275295, 41.471497, 34.138157>,  <42.312416, 41.868137, 34.174183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275295, 41.471497, 34.138157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433025, 0.041257, -0.900437,
		0.896592, -0.122560, 0.425560,
		-0.092800, -0.991603, -0.090062,
		42.247456, 41.174015, 34.111137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.861748, 42.013123, 33.519714>,  <42.312416, 41.868137, 34.174183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.861748, 42.013123, 33.519714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215969, 41.920834, 33.358437>,  <43.428501, 41.865459, 33.261669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215969, 41.920834, 33.358437>,  <42.861748, 42.013123, 33.519714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215969, 41.920834, 33.358437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463129, 0.506122, 0.727566,
		0.036200, -0.831028, 0.555051,
		0.885551, -0.230722, -0.403195,
		43.481636, 41.851616, 33.237476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052990, 41.549416, 34.124722>,  <42.861748, 42.013123, 33.519714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052990, 41.549416, 34.124722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443455, 41.560089, 34.210888>,  <43.677734, 41.566494, 34.262589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443455, 41.560089, 34.210888>,  <43.052990, 41.549416, 34.124722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443455, 41.560089, 34.210888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213279, -0.066581, 0.974720,
		0.040351, -0.997424, -0.059303,
		0.976158, 0.026682, 0.215417,
		43.736301, 41.568092, 34.275513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.321083, 40.927738, 34.420158>,  <43.052990, 41.549416, 34.124722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.321083, 40.927738, 34.420158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514473, 41.251881, 34.552563>,  <43.630508, 41.446365, 34.632008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.514473, 41.251881, 34.552563>,  <43.321083, 40.927738, 34.420158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.514473, 41.251881, 34.552563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272277, -0.220172, 0.936691,
		0.831935, -0.542995, 0.114194,
		0.483477, 0.810358, 0.331013,
		43.659515, 41.494987, 34.651867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.878242, 40.698704, 34.943153>,  <43.321083, 40.927738, 34.420158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.878242, 40.698704, 34.943153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764679, 41.076923, 35.006828>,  <43.696541, 41.303856, 35.045033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764679, 41.076923, 35.006828>,  <43.878242, 40.698704, 34.943153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764679, 41.076923, 35.006828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139780, -0.205057, 0.968717,
		0.948607, 0.252779, 0.190386,
		-0.283912, 0.945544, 0.159185,
		43.679504, 41.360588, 35.054585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.410980, 40.363205, 34.531937>,  <43.878242, 40.698704, 34.943153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.410980, 40.363205, 34.531937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493214, 40.003735, 34.376953>,  <44.542553, 39.788052, 34.283962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493214, 40.003735, 34.376953>,  <44.410980, 40.363205, 34.531937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493214, 40.003735, 34.376953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965893, 0.122630, 0.228064,
		-0.157441, -0.421127, 0.893232,
		0.205581, -0.898673, -0.387457,
		44.554890, 39.734131, 34.260715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.826210, 40.033546, 34.051979>,  <44.410980, 40.363205, 34.531937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.826210, 40.033546, 34.051979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540680, 39.755421, 34.085407>,  <43.369362, 39.588547, 34.105465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.540680, 39.755421, 34.085407>,  <43.826210, 40.033546, 34.051979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.540680, 39.755421, 34.085407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690050, -0.677976, 0.253336,
		-0.119491, 0.238505, 0.963762,
		-0.713830, -0.695315, 0.083569,
		43.326530, 39.546825, 34.110477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.712772, 39.647709, 34.676571>,  <43.826210, 40.033546, 34.051979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.712772, 39.647709, 34.676571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597134, 39.378651, 34.404106>,  <43.527752, 39.217216, 34.240627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.597134, 39.378651, 34.404106>,  <43.712772, 39.647709, 34.676571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.597134, 39.378651, 34.404106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666975, -0.651941, 0.360718,
		-0.686709, -0.350034, 0.637108,
		-0.289093, -0.672643, -0.681158,
		43.510406, 39.176857, 34.199760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.602459, 39.019905, 34.923885>,  <43.712772, 39.647709, 34.676571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.602459, 39.019905, 34.923885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700016, 38.916080, 34.550117>,  <43.758549, 38.853786, 34.325855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.700016, 38.916080, 34.550117>,  <43.602459, 39.019905, 34.923885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.700016, 38.916080, 34.550117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701217, -0.618395, 0.354799,
		-0.669933, -0.741766, 0.031184,
		0.243894, -0.259558, -0.934423,
		43.773186, 38.838215, 34.269791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680534, 38.298817, 34.768646>,  <43.602459, 39.019905, 34.923885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680534, 38.298817, 34.768646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946217, 38.484337, 34.534134>,  <44.105625, 38.595650, 34.393429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.946217, 38.484337, 34.534134>,  <43.680534, 38.298817, 34.768646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.946217, 38.484337, 34.534134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685071, -0.691527, 0.229062,
		-0.299186, -0.553785, -0.777052,
		0.664203, 0.463803, -0.586277,
		44.145477, 38.623478, 34.358250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.884357, 37.798454, 34.309711>,  <43.680534, 38.298817, 34.768646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.884357, 37.798454, 34.309711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172535, 38.071323, 34.359661>,  <44.345444, 38.235046, 34.389629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.172535, 38.071323, 34.359661>,  <43.884357, 37.798454, 34.309711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.172535, 38.071323, 34.359661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693507, -0.708035, -0.133169,
		-0.002432, 0.182540, -0.983195,
		0.720446, 0.682177, 0.124871,
		44.388668, 38.275978, 34.397121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423733, 37.888111, 33.724426>,  <43.884357, 37.798454, 34.309711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423733, 37.888111, 33.724426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617233, 37.991226, 34.058979>,  <44.733334, 38.053097, 34.259708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.617233, 37.991226, 34.058979>,  <44.423733, 37.888111, 33.724426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.617233, 37.991226, 34.058979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724492, -0.654091, -0.217430,
		0.491017, 0.711132, -0.503184,
		0.483749, 0.257791, 0.836379,
		44.762360, 38.068565, 34.309895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.193695, 37.934788, 33.733006>,  <44.423733, 37.888111, 33.724426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.193695, 37.934788, 33.733006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039879, 37.801685, 34.077423>,  <44.947590, 37.721825, 34.284073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039879, 37.801685, 34.077423>,  <45.193695, 37.934788, 33.733006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039879, 37.801685, 34.077423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629312, -0.776915, -0.019198,
		0.675350, 0.534485, 0.508161,
		-0.384537, -0.332758, 0.861048,
		44.924519, 37.701859, 34.335739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.671745, 37.468597, 33.952412>,  <45.193695, 37.934788, 33.733006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.671745, 37.468597, 33.952412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389481, 37.306572, 34.184952>,  <45.220123, 37.209354, 34.324474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.389481, 37.306572, 34.184952>,  <45.671745, 37.468597, 33.952412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.389481, 37.306572, 34.184952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538581, -0.839775, 0.068617,
		0.460408, 0.361523, 0.810756,
		-0.705659, -0.405066, 0.581349,
		45.177784, 37.185051, 34.359356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.011234, 37.083042, 34.336285>,  <45.671745, 37.468597, 33.952412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.011234, 37.083042, 34.336285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657207, 36.897701, 34.318592>,  <45.444790, 36.786495, 34.307976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.657207, 36.897701, 34.318592>,  <46.011234, 37.083042, 34.336285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.657207, 36.897701, 34.318592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459753, -0.855416, -0.238517,
		0.072680, -0.231440, 0.970130,
		-0.885067, -0.463356, -0.044234,
		45.391685, 36.758694, 34.305321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.031246, 36.450531, 34.831455>,  <46.011234, 37.083042, 34.336285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.031246, 36.450531, 34.831455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794350, 36.414188, 34.511208>,  <45.652210, 36.392384, 34.319057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.794350, 36.414188, 34.511208>,  <46.031246, 36.450531, 34.831455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.794350, 36.414188, 34.511208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425004, -0.879387, -0.214592,
		-0.684558, -0.467357, 0.559426,
		-0.592243, -0.090858, -0.800620,
		45.616676, 36.386932, 34.271023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541393, 36.356716, 34.248230>,  <46.031246, 36.450531, 34.831455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541393, 36.356716, 34.248230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719093, 36.243553, 33.908203>,  <46.825714, 36.175655, 33.704189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.719093, 36.243553, 33.908203>,  <46.541393, 36.356716, 34.248230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.719093, 36.243553, 33.908203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452132, -0.748346, 0.485340,
		-0.773447, -0.599953, -0.204542,
		0.444249, -0.282905, -0.850063,
		46.852367, 36.158684, 33.653183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.395557, 35.644295, 34.092178>,  <46.541393, 36.356716, 34.248230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.395557, 35.644295, 34.092178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752583, 35.767670, 33.960602>,  <46.966797, 35.841694, 33.881657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.752583, 35.767670, 33.960602>,  <46.395557, 35.644295, 34.092178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.752583, 35.767670, 33.960602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444429, -0.725125, 0.526001,
		-0.076281, -0.615677, -0.784298,
		0.892561, 0.308441, -0.328938,
		47.020351, 35.860203, 33.861919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.654701, 35.120319, 33.689106>,  <46.395557, 35.644295, 34.092178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.654701, 35.120319, 33.689106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937832, 35.342506, 33.863663>,  <47.107708, 35.475819, 33.968399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.937832, 35.342506, 33.863663>,  <46.654701, 35.120319, 33.689106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.937832, 35.342506, 33.863663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126536, -0.707491, 0.695302,
		0.694964, -0.436932, -0.571065,
		0.707823, 0.555470, 0.436394,
		47.150177, 35.509148, 33.994579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.351799, 34.811825, 33.867611>,  <46.654701, 35.120319, 33.689106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.351799, 34.811825, 33.867611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277328, 35.102638, 34.131962>,  <47.232647, 35.277126, 34.290573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.277328, 35.102638, 34.131962>,  <47.351799, 34.811825, 33.867611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.277328, 35.102638, 34.131962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121187, -0.650507, 0.749769,
		0.975013, 0.219682, 0.033004,
		-0.186180, 0.727035, 0.660876,
		47.221474, 35.320747, 34.330223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.791504, 34.612679, 34.373592>,  <47.351799, 34.811825, 33.867611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.791504, 34.612679, 34.373592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528976, 34.872017, 34.527943>,  <47.371460, 35.027618, 34.620552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.528976, 34.872017, 34.527943>,  <47.791504, 34.612679, 34.373592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.528976, 34.872017, 34.527943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024021, -0.529139, 0.848195,
		0.754103, 0.547415, 0.362857,
		-0.656317, 0.648343, 0.385876,
		47.332081, 35.066521, 34.643707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.018433, 34.985748, 35.033966>,  <47.791504, 34.612679, 34.373592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.018433, 34.985748, 35.033966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625870, 34.910435, 35.019043>,  <47.390331, 34.865246, 35.010090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.625870, 34.910435, 35.019043>,  <48.018433, 34.985748, 35.033966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.625870, 34.910435, 35.019043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100722, -0.670608, 0.734942,
		-0.163393, 0.717520, 0.677103,
		-0.981406, -0.188283, -0.037303,
		47.331448, 34.853951, 35.007851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.632648, 36.452744, 23.301029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312244, 36.367897, 23.524954>,  <36.120003, 36.316990, 23.659307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.312244, 36.367897, 23.524954>,  <36.632648, 36.452744, 23.301029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312244, 36.367897, 23.524954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591051, -0.428715, 0.683273,
		0.095068, 0.878187, 0.468776,
		-0.801013, -0.212113, 0.559810,
		36.071941, 36.304264, 23.692896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640873, 36.853405, 23.984161>,  <36.632648, 36.452744, 23.301029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640873, 36.853405, 23.984161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438435, 36.514629, 24.049347>,  <36.316971, 36.311363, 24.088459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.438435, 36.514629, 24.049347>,  <36.640873, 36.853405, 23.984161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.438435, 36.514629, 24.049347> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518197, -0.147556, 0.842437,
		-0.689449, 0.510801, 0.513559,
		-0.506096, -0.846942, 0.162963,
		36.286606, 36.260548, 24.098236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603451, 36.939724, 24.619518>,  <36.640873, 36.853405, 23.984161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603451, 36.939724, 24.619518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515224, 36.558720, 24.535543>,  <36.462288, 36.330116, 24.485159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515224, 36.558720, 24.535543>,  <36.603451, 36.939724, 24.619518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515224, 36.558720, 24.535543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442925, -0.289579, 0.848505,
		-0.869004, 0.094166, 0.485763,
		-0.220567, -0.952511, -0.209937,
		36.449055, 36.272968, 24.472563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224121, 36.588436, 25.274431>,  <36.603451, 36.939724, 24.619518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224121, 36.588436, 25.274431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396503, 36.296219, 25.062553>,  <36.499935, 36.120888, 24.935427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.396503, 36.296219, 25.062553>,  <36.224121, 36.588436, 25.274431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396503, 36.296219, 25.062553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376475, -0.387911, 0.841303,
		-0.820085, -0.561985, 0.107859,
		0.430960, -0.730546, -0.529694,
		36.525791, 36.077057, 24.903645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.985046, 36.012379, 25.558308>,  <36.224121, 36.588436, 25.274431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.985046, 36.012379, 25.558308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330570, 35.927162, 25.375683>,  <36.537884, 35.876034, 25.266108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.330570, 35.927162, 25.375683>,  <35.985046, 36.012379, 25.558308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330570, 35.927162, 25.375683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295166, -0.520411, 0.801280,
		-0.408301, -0.826915, -0.386655,
		0.863810, -0.213036, -0.456561,
		36.589714, 35.863251, 25.238714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222660, 35.485767, 25.825848>,  <35.985046, 36.012379, 25.558308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222660, 35.485767, 25.825848> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578621, 35.558331, 25.658438>,  <36.792198, 35.601868, 25.557991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.578621, 35.558331, 25.658438>,  <36.222660, 35.485767, 25.825848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578621, 35.558331, 25.658438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449386, -0.506043, 0.736188,
		-0.078243, -0.843216, -0.531851,
		0.889904, 0.181405, -0.418524,
		36.845592, 35.612751, 25.532881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648472, 34.931145, 26.054663>,  <36.222660, 35.485767, 25.825848>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648472, 34.931145, 26.054663> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892784, 35.227737, 25.943558>,  <37.039371, 35.405693, 25.876894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.892784, 35.227737, 25.943558>,  <36.648472, 34.931145, 26.054663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.892784, 35.227737, 25.943558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631005, -0.243896, 0.736443,
		0.478316, -0.625071, -0.616847,
		0.610776, 0.741485, -0.277763,
		37.076015, 35.450184, 25.860229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310452, 34.653114, 26.113018>,  <36.648472, 34.931145, 26.054663>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310452, 34.653114, 26.113018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.404987, 35.041595, 26.100950>,  <37.461708, 35.274685, 26.093710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.404987, 35.041595, 26.100950>,  <37.310452, 34.653114, 26.113018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.404987, 35.041595, 26.100950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721698, -0.154664, 0.674708,
		0.650612, -0.181234, -0.737468,
		0.236340, 0.971202, -0.030170,
		37.475891, 35.332954, 26.091900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967194, 34.667377, 26.315212>,  <37.310452, 34.653114, 26.113018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967194, 34.667377, 26.315212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883465, 35.055088, 26.366873>,  <37.833229, 35.287716, 26.397869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.883465, 35.055088, 26.366873>,  <37.967194, 34.667377, 26.315212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.883465, 35.055088, 26.366873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703614, 0.057581, 0.708246,
		0.679052, 0.239124, -0.694052,
		-0.209323, 0.969280, 0.129150,
		37.820667, 35.345871, 26.405619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577503, 35.002724, 26.437571>,  <37.967194, 34.667377, 26.315212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577503, 35.002724, 26.437571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300133, 35.246342, 26.591566>,  <38.133709, 35.392513, 26.683964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.300133, 35.246342, 26.591566>,  <38.577503, 35.002724, 26.437571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300133, 35.246342, 26.591566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591965, 0.176951, 0.786299,
		0.410769, 0.773143, -0.483237,
		-0.693431, 0.609047, 0.384988,
		38.092102, 35.429054, 26.707062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893154, 35.681934, 26.521227>,  <38.577503, 35.002724, 26.437571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893154, 35.681934, 26.521227> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598736, 35.686581, 26.791960>,  <38.422085, 35.689369, 26.954399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.598736, 35.686581, 26.791960>,  <38.893154, 35.681934, 26.521227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.598736, 35.686581, 26.791960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667472, 0.179026, 0.722794,
		-0.112774, 0.983776, -0.139525,
		-0.736045, 0.011616, 0.676832,
		38.377922, 35.690067, 26.995010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014225, 36.223595, 26.986740>,  <38.893154, 35.681934, 26.521227>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014225, 36.223595, 26.986740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750305, 36.021824, 27.209532>,  <38.591953, 35.900761, 27.343206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.750305, 36.021824, 27.209532>,  <39.014225, 36.223595, 26.986740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.750305, 36.021824, 27.209532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565750, 0.154372, 0.809997,
		-0.494564, 0.849544, 0.183523,
		-0.659798, -0.504424, 0.556977,
		38.552364, 35.870495, 27.376625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953526, 36.617126, 27.546301>,  <39.014225, 36.223595, 26.986740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953526, 36.617126, 27.546301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815636, 36.266518, 27.680683>,  <38.732903, 36.056152, 27.761312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.815636, 36.266518, 27.680683>,  <38.953526, 36.617126, 27.546301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815636, 36.266518, 27.680683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521232, 0.118916, 0.845090,
		-0.780694, 0.466435, 0.415880,
		-0.344725, -0.876526, 0.335957,
		38.712219, 36.003559, 27.781469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830704, 36.764370, 28.194260>,  <38.953526, 36.617126, 27.546301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830704, 36.764370, 28.194260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848667, 36.364986, 28.207273>,  <38.859444, 36.125355, 28.215082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.848667, 36.364986, 28.207273>,  <38.830704, 36.764370, 28.194260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.848667, 36.364986, 28.207273> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407390, 0.048039, 0.911990,
		-0.912149, -0.027699, 0.408921,
		0.044905, -0.998461, 0.032534,
		38.862137, 36.065449, 28.217033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563587, 36.605270, 28.913303>,  <38.830704, 36.764370, 28.194260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563587, 36.605270, 28.913303> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780674, 36.304520, 28.763561>,  <38.910927, 36.124069, 28.673716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.780674, 36.304520, 28.763561>,  <38.563587, 36.605270, 28.913303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780674, 36.304520, 28.763561> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532721, -0.036449, 0.845505,
		-0.649361, -0.658295, 0.380760,
		0.542713, -0.751877, -0.374356,
		38.943489, 36.078957, 28.651255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500633, 36.087376, 29.441103>,  <38.563587, 36.605270, 28.913303>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500633, 36.087376, 29.441103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820194, 36.014202, 29.211916>,  <39.011932, 35.970299, 29.074404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.820194, 36.014202, 29.211916>,  <38.500633, 36.087376, 29.441103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820194, 36.014202, 29.211916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543046, -0.190145, 0.817891,
		-0.258568, -0.964562, -0.052564,
		0.798901, -0.182936, -0.572967,
		39.059864, 35.959320, 29.040026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872955, 35.491821, 29.803673>,  <38.500633, 36.087376, 29.441103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872955, 35.491821, 29.803673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151089, 35.628029, 29.550516>,  <39.317970, 35.709751, 29.398623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.151089, 35.628029, 29.550516>,  <38.872955, 35.491821, 29.803673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151089, 35.628029, 29.550516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696753, -0.103520, 0.709802,
		0.176182, -0.934522, -0.309237,
		0.695338, 0.340517, -0.632893,
		39.359692, 35.730183, 29.360649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388123, 34.983810, 29.746153>,  <38.872955, 35.491821, 29.803673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388123, 34.983810, 29.746153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.575779, 35.327065, 29.662725>,  <39.688374, 35.533016, 29.612669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.575779, 35.327065, 29.662725>,  <39.388123, 34.983810, 29.746153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.575779, 35.327065, 29.662725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756703, -0.268851, 0.595919,
		0.455307, -0.437398, -0.775486,
		0.469145, 0.858139, -0.208571,
		39.716522, 35.584507, 29.600155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099186, 34.869507, 29.748840>,  <39.388123, 34.983810, 29.746153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099186, 34.869507, 29.748840> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110535, 35.265785, 29.802080>,  <40.117344, 35.503551, 29.834024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.110535, 35.265785, 29.802080>,  <40.099186, 34.869507, 29.748840>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.110535, 35.265785, 29.802080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643634, -0.119979, 0.755871,
		0.764808, 0.064224, -0.641050,
		0.028368, 0.990697, 0.133098,
		40.119045, 35.562996, 29.842009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.756168, 35.041515, 29.999903>,  <40.099186, 34.869507, 29.748840>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.756168, 35.041515, 29.999903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564686, 35.380531, 30.091576>,  <40.449795, 35.583939, 30.146580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.564686, 35.380531, 30.091576>,  <40.756168, 35.041515, 29.999903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564686, 35.380531, 30.091576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596527, 0.122444, 0.793198,
		0.644202, 0.516421, -0.564193,
		-0.478706, 0.847536, 0.229180,
		40.421074, 35.634792, 30.160330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282692, 35.562962, 30.260075>,  <40.756168, 35.041515, 29.999903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282692, 35.562962, 30.260075> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.931488, 35.694462, 30.399231>,  <40.720768, 35.773361, 30.482725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.931488, 35.694462, 30.399231>,  <41.282692, 35.562962, 30.260075>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931488, 35.694462, 30.399231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389569, 0.068527, 0.918444,
		0.278098, 0.941928, -0.188237,
		-0.878008, 0.328749, 0.347889,
		40.668087, 35.793087, 30.503597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.479557, 36.207577, 30.528856>,  <41.282692, 35.562962, 30.260075>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.479557, 36.207577, 30.528856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.128490, 36.122372, 30.700588>,  <40.917850, 36.071247, 30.803627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.128490, 36.122372, 30.700588>,  <41.479557, 36.207577, 30.528856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128490, 36.122372, 30.700588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368601, 0.272537, 0.888739,
		-0.306320, 0.938270, -0.160680,
		-0.877668, -0.213011, 0.429331,
		40.865189, 36.058468, 30.829388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931141, 36.847427, 30.318539>,  <41.479557, 36.207577, 30.528856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931141, 36.847427, 30.318539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.257431, 37.076351, 30.284950>,  <41.453205, 37.213707, 30.264797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.257431, 37.076351, 30.284950>,  <40.931141, 36.847427, 30.318539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257431, 37.076351, 30.284950> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138616, 0.052467, -0.988955,
		-0.561585, 0.818356, 0.122130,
		0.815725, 0.572312, -0.083972,
		41.502148, 37.248043, 30.259758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.761673, 37.396042, 29.836958>,  <40.931141, 36.847427, 30.318539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.761673, 37.396042, 29.836958> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.161438, 37.384777, 29.844749>,  <41.401299, 37.378017, 29.849424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.161438, 37.384777, 29.844749>,  <40.761673, 37.396042, 29.836958>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161438, 37.384777, 29.844749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013881, -0.186810, -0.982298,
		0.031303, 0.981992, -0.186309,
		0.999413, -0.028162, 0.019479,
		41.461262, 37.376328, 29.850594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.895607, 37.910587, 29.481329>,  <40.761673, 37.396042, 29.836958>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.895607, 37.910587, 29.481329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211571, 37.669765, 29.434725>,  <41.401150, 37.525272, 29.406763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.211571, 37.669765, 29.434725>,  <40.895607, 37.910587, 29.481329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.211571, 37.669765, 29.434725> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194415, -0.065675, -0.978718,
		0.581593, 0.795747, -0.168926,
		0.789907, -0.602057, -0.116509,
		41.448544, 37.489147, 29.399773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.277706, 38.205650, 28.861422>,  <40.895607, 37.910587, 29.481329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.277706, 38.205650, 28.861422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.422722, 37.837933, 28.922686>,  <41.509731, 37.617302, 28.959444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.422722, 37.837933, 28.922686>,  <41.277706, 38.205650, 28.861422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.422722, 37.837933, 28.922686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289153, -0.045280, -0.956212,
		0.885979, 0.390948, 0.249402,
		0.362536, -0.919298, 0.153161,
		41.531483, 37.562141, 28.968634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.811104, 38.192600, 28.495335>,  <41.277706, 38.205650, 28.861422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.811104, 38.192600, 28.495335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.741177, 37.800949, 28.536787>,  <41.699219, 37.565956, 28.561659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.741177, 37.800949, 28.536787>,  <41.811104, 38.192600, 28.495335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.741177, 37.800949, 28.536787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155282, -0.131350, -0.979099,
		0.972279, -0.155071, 0.175004,
		-0.174816, -0.979132, 0.103629,
		41.688732, 37.507210, 28.567877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.162224, 37.990726, 28.028131>,  <41.811104, 38.192600, 28.495335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.162224, 37.990726, 28.028131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.969299, 37.647423, 28.098289>,  <41.853546, 37.441441, 28.140385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.969299, 37.647423, 28.098289>,  <42.162224, 37.990726, 28.028131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969299, 37.647423, 28.098289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253879, -0.054677, -0.965690,
		0.838404, -0.510291, -0.191523,
		-0.482311, -0.858262, 0.175393,
		41.824608, 37.389946, 28.150908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357758, 37.529541, 27.466164>,  <42.162224, 37.990726, 28.028131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357758, 37.529541, 27.466164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.000965, 37.424587, 27.613419>,  <41.786888, 37.361614, 27.701771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.000965, 37.424587, 27.613419>,  <42.357758, 37.529541, 27.466164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000965, 37.424587, 27.613419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433300, 0.263968, -0.861726,
		0.128923, -0.928158, -0.349144,
		-0.891981, -0.262380, 0.368139,
		41.733372, 37.345871, 27.723860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.140823, 37.141201, 26.958128>,  <42.357758, 37.529541, 27.466164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.140823, 37.141201, 26.958128> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.792114, 37.224701, 27.135414>,  <41.582890, 37.274803, 27.241785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.792114, 37.224701, 27.135414>,  <42.140823, 37.141201, 26.958128>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.792114, 37.224701, 27.135414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415204, 0.165384, -0.894569,
		-0.260046, -0.963883, -0.057501,
		-0.871770, 0.208754, 0.443215,
		41.530582, 37.287327, 27.268379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609264, 36.701950, 26.751070>,  <42.140823, 37.141201, 26.958128>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609264, 36.701950, 26.751070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.377430, 37.007679, 26.864134>,  <41.238327, 37.191116, 26.931973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.377430, 37.007679, 26.864134>,  <41.609264, 36.701950, 26.751070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.377430, 37.007679, 26.864134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500674, -0.060315, -0.863532,
		-0.642965, -0.642012, 0.417632,
		-0.579588, 0.764318, 0.282658,
		41.203552, 37.236973, 26.948931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861046, 36.539326, 26.539854>,  <41.609264, 36.701950, 26.751070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861046, 36.539326, 26.539854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.866547, 36.936253, 26.589029>,  <40.869846, 37.174408, 26.618534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.866547, 36.936253, 26.589029>,  <40.861046, 36.539326, 26.539854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.866547, 36.936253, 26.589029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625347, 0.104474, -0.773322,
		-0.780226, -0.066246, 0.621980,
		0.013752, 0.992319, 0.122940,
		40.870670, 37.233948, 26.625912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135799, 36.718285, 26.475492>,  <40.861046, 36.539326, 26.539854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135799, 36.718285, 26.475492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.319599, 37.072315, 26.445852>,  <40.429878, 37.284733, 26.428068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.319599, 37.072315, 26.445852>,  <40.135799, 36.718285, 26.475492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.319599, 37.072315, 26.445852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598045, 0.246641, -0.762568,
		-0.656659, 0.394716, 0.642650,
		0.459501, 0.885081, -0.074099,
		40.457451, 37.337841, 26.423622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652359, 37.352123, 26.528080>,  <40.135799, 36.718285, 26.475492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652359, 37.352123, 26.528080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973541, 37.476471, 26.324659>,  <40.166252, 37.551079, 26.202608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.973541, 37.476471, 26.324659>,  <39.652359, 37.352123, 26.528080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973541, 37.476471, 26.324659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579266, 0.206023, -0.788673,
		-0.140400, 0.927855, 0.345503,
		0.802956, 0.310868, -0.508550,
		40.214428, 37.569733, 26.172094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445805, 38.026356, 26.232374>,  <39.652359, 37.352123, 26.528080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445805, 38.026356, 26.232374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752228, 37.913368, 26.001421>,  <39.936081, 37.845573, 25.862848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.752228, 37.913368, 26.001421>,  <39.445805, 38.026356, 26.232374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752228, 37.913368, 26.001421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468644, 0.369338, -0.802473,
		0.439924, 0.885325, 0.150555,
		0.766055, -0.282471, -0.577382,
		39.982044, 37.828629, 25.828207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397491, 38.511230, 25.678347>,  <39.445805, 38.026356, 26.232374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397491, 38.511230, 25.678347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614021, 38.197910, 25.556093>,  <39.743938, 38.009918, 25.482740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.614021, 38.197910, 25.556093>,  <39.397491, 38.511230, 25.678347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.614021, 38.197910, 25.556093> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314280, 0.148657, -0.937619,
		0.779871, 0.603609, -0.165704,
		0.541323, -0.783299, -0.305635,
		39.776417, 37.962921, 25.464403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478897, 38.636600, 25.062210>,  <39.397491, 38.511230, 25.678347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478897, 38.636600, 25.062210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577892, 38.251144, 25.021912>,  <39.637287, 38.019871, 24.997732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.577892, 38.251144, 25.021912>,  <39.478897, 38.636600, 25.062210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.577892, 38.251144, 25.021912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450838, -0.022498, -0.892322,
		0.857611, 0.266256, -0.440014,
		0.247485, -0.963640, -0.100744,
		39.652138, 37.962051, 24.991688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.937363, 38.542091, 24.442476>,  <39.478897, 38.636600, 25.062210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.937363, 38.542091, 24.442476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705379, 38.230595, 24.538149>,  <39.566189, 38.043697, 24.595552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.705379, 38.230595, 24.538149>,  <39.937363, 38.542091, 24.442476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705379, 38.230595, 24.538149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431703, 0.044805, -0.900902,
		0.690852, -0.625745, -0.362170,
		-0.579962, -0.778739, 0.239183,
		39.531391, 37.996971, 24.609903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.807049, 38.317757, 23.869799>,  <39.937363, 38.542091, 24.442476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.807049, 38.317757, 23.869799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.568974, 38.081501, 24.087755>,  <39.426128, 37.939747, 24.218529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.568974, 38.081501, 24.087755>,  <39.807049, 38.317757, 23.869799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568974, 38.081501, 24.087755> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694687, 0.037334, -0.718343,
		0.403936, -0.806074, -0.432528,
		-0.595185, -0.590636, 0.544889,
		39.390419, 37.904312, 24.251223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543919, 37.753254, 23.429153>,  <39.807049, 38.317757, 23.869799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543919, 37.753254, 23.429153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294968, 37.797039, 23.739162>,  <39.145596, 37.823311, 23.925167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.294968, 37.797039, 23.739162>,  <39.543919, 37.753254, 23.429153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294968, 37.797039, 23.739162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751467, 0.193422, -0.630782,
		-0.218952, -0.974990, -0.038127,
		-0.622381, 0.109460, 0.775023,
		39.108253, 37.829876, 23.971670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.009453, 37.263874, 23.152679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856548, 37.466537, 23.461786>,  <38.764805, 37.588135, 23.647251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.856548, 37.466537, 23.461786>,  <39.009453, 37.263874, 23.152679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856548, 37.466537, 23.461786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758590, 0.305467, -0.575527,
		-0.527650, -0.806219, 0.267576,
		-0.382265, 0.506657, 0.772769,
		38.741867, 37.618534, 23.693617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354958, 37.107067, 23.196915>,  <39.009453, 37.263874, 23.152679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354958, 37.107067, 23.196915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364456, 37.461376, 23.382320>,  <38.370155, 37.673962, 23.493565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.364456, 37.461376, 23.382320>,  <38.354958, 37.107067, 23.196915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364456, 37.461376, 23.382320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817600, 0.284020, -0.500862,
		-0.575297, -0.367076, 0.730951,
		0.023750, 0.885770, 0.463517,
		38.371582, 37.727108, 23.521376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702782, 37.250992, 23.404678>,  <38.354958, 37.107067, 23.196915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702782, 37.250992, 23.404678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891594, 37.602737, 23.379696>,  <38.004879, 37.813786, 23.364706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.891594, 37.602737, 23.379696>,  <37.702782, 37.250992, 23.404678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891594, 37.602737, 23.379696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759970, 0.369983, -0.534377,
		-0.446807, 0.299707, 0.842935,
		0.472028, 0.879368, -0.062457,
		38.033203, 37.866547, 23.360958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093418, 37.577976, 23.413986>,  <37.702782, 37.250992, 23.404678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093418, 37.577976, 23.413986> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390675, 37.823605, 23.307655>,  <37.569027, 37.970982, 23.243856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.390675, 37.823605, 23.307655>,  <37.093418, 37.577976, 23.413986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390675, 37.823605, 23.307655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604826, 0.446503, -0.659409,
		-0.286229, 0.650812, 0.703219,
		0.743141, 0.614067, -0.265826,
		37.613617, 38.007824, 23.227907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.825287, 38.327808, 23.566442>,  <37.093418, 37.577976, 23.413986>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.825287, 38.327808, 23.566442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091427, 38.323570, 23.267860>,  <37.251110, 38.321030, 23.088711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.091427, 38.323570, 23.267860>,  <36.825287, 38.327808, 23.566442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091427, 38.323570, 23.267860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619047, 0.551017, -0.559608,
		0.417236, 0.834427, 0.360064,
		0.665353, -0.010592, -0.746454,
		37.291031, 38.320393, 23.043924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809547, 39.048504, 23.246479>,  <36.825287, 38.327808, 23.566442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809547, 39.048504, 23.246479> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970112, 38.801929, 22.975519>,  <37.066452, 38.653984, 22.812943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.970112, 38.801929, 22.975519>,  <36.809547, 39.048504, 23.246479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.970112, 38.801929, 22.975519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435168, 0.522426, -0.733281,
		0.805915, 0.589129, -0.058548,
		0.401410, -0.616440, -0.677401,
		37.090534, 38.616997, 22.772299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744022, 39.394676, 22.604914>,  <36.809547, 39.048504, 23.246479>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744022, 39.394676, 22.604914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811485, 39.016220, 22.494371>,  <36.851963, 38.789146, 22.428045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.811485, 39.016220, 22.494371>,  <36.744022, 39.394676, 22.604914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811485, 39.016220, 22.494371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596102, 0.125382, -0.793058,
		0.784995, 0.298493, -0.542849,
		0.168659, -0.946140, -0.276357,
		36.862083, 38.732380, 22.411465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029186, 39.426918, 21.962521>,  <36.744022, 39.394676, 22.604914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029186, 39.426918, 21.962521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883263, 39.055538, 21.990519>,  <36.795708, 38.832710, 22.007317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.883263, 39.055538, 21.990519>,  <37.029186, 39.426918, 21.962521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883263, 39.055538, 21.990519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396401, 0.086852, -0.913960,
		0.842485, -0.361165, -0.399722,
		-0.364807, -0.928449, 0.069995,
		36.773819, 38.777004, 22.011517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277195, 39.014362, 21.425552>,  <37.029186, 39.426918, 21.962521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277195, 39.014362, 21.425552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.937061, 38.832088, 21.530840>,  <36.732983, 38.722725, 21.594013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.937061, 38.832088, 21.530840>,  <37.277195, 39.014362, 21.425552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937061, 38.832088, 21.530840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285826, -0.020046, -0.958072,
		0.441856, -0.889915, -0.113201,
		-0.850333, -0.455685, 0.263218,
		36.681961, 38.695385, 21.609806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106102, 38.484921, 20.925535>,  <37.277195, 39.014362, 21.425552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106102, 38.484921, 20.925535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752140, 38.557766, 21.097015>,  <36.539764, 38.601471, 21.199903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.752140, 38.557766, 21.097015>,  <37.106102, 38.484921, 20.925535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752140, 38.557766, 21.097015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434229, 0.010414, -0.900742,
		-0.168502, -0.983222, 0.069863,
		-0.884902, 0.182114, 0.428698,
		36.486668, 38.612400, 21.225624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565407, 38.056236, 20.500301>,  <37.106102, 38.484921, 20.925535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565407, 38.056236, 20.500301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361073, 38.349037, 20.680622>,  <36.238472, 38.524715, 20.788815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.361073, 38.349037, 20.680622>,  <36.565407, 38.056236, 20.500301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361073, 38.349037, 20.680622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538532, 0.136262, -0.831514,
		-0.670095, -0.667540, 0.324597,
		-0.510839, 0.731999, 0.450801,
		36.207821, 38.568638, 20.815863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.886784, 38.026024, 20.253860>,  <36.565407, 38.056236, 20.500301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.886784, 38.026024, 20.253860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887817, 38.386211, 20.427822>,  <35.888439, 38.602325, 20.532200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.887817, 38.386211, 20.427822>,  <35.886784, 38.026024, 20.253860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887817, 38.386211, 20.427822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543734, 0.366263, -0.755119,
		-0.839254, -0.234522, 0.490564,
		0.002583, 0.900472, 0.434905,
		35.888592, 38.656353, 20.558294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121376, 38.200443, 20.127270>,  <35.886784, 38.026024, 20.253860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121376, 38.200443, 20.127270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331959, 38.529243, 20.214130>,  <35.458309, 38.726524, 20.266247>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331959, 38.529243, 20.214130>,  <35.121376, 38.200443, 20.127270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331959, 38.529243, 20.214130> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545026, 0.522321, -0.655841,
		-0.652525, 0.226921, 0.722992,
		0.526458, 0.822003, 0.217150,
		35.489895, 38.775845, 20.279276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755962, 38.685162, 20.187450>,  <35.121376, 38.200443, 20.127270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755962, 38.685162, 20.187450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070198, 38.927868, 20.138968>,  <35.258739, 39.073490, 20.109879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.070198, 38.927868, 20.138968>,  <34.755962, 38.685162, 20.187450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070198, 38.927868, 20.138968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527832, 0.554952, -0.642979,
		-0.322873, 0.569093, 0.756232,
		0.785587, 0.606763, -0.121207,
		35.305874, 39.109898, 20.102606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470047, 39.316875, 20.157665>,  <34.755962, 38.685162, 20.187450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470047, 39.316875, 20.157665> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831188, 39.411480, 20.014046>,  <35.047874, 39.468243, 19.927874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831188, 39.411480, 20.014046>,  <34.470047, 39.316875, 20.157665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831188, 39.411480, 20.014046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422735, 0.640643, -0.640993,
		0.078420, 0.730506, 0.678389,
		0.902854, 0.236512, -0.359050,
		35.102043, 39.482433, 19.906330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.660950, 40.020912, 20.230627>,  <34.470047, 39.316875, 20.157665>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.660950, 40.020912, 20.230627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904232, 39.901520, 19.936419>,  <35.050201, 39.829884, 19.759893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.904232, 39.901520, 19.936419>,  <34.660950, 40.020912, 20.230627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904232, 39.901520, 19.936419> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543292, 0.519033, -0.659878,
		0.578718, 0.800947, 0.153521,
		0.608210, -0.298476, -0.735522,
		35.086697, 39.811977, 19.715761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828178, 40.622936, 19.761024>,  <34.660950, 40.020912, 20.230627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828178, 40.622936, 19.761024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.873119, 40.276150, 19.566811>,  <34.900085, 40.068077, 19.450283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.873119, 40.276150, 19.566811>,  <34.828178, 40.622936, 19.761024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873119, 40.276150, 19.566811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423268, 0.400323, -0.812764,
		0.899011, 0.296829, -0.321981,
		0.112356, -0.866968, -0.485533,
		34.906826, 40.016060, 19.421150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166672, 40.806789, 19.165625>,  <34.828178, 40.622936, 19.761024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166672, 40.806789, 19.165625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.010471, 40.446819, 19.088011>,  <34.916752, 40.230839, 19.041443>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.010471, 40.446819, 19.088011>,  <35.166672, 40.806789, 19.165625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010471, 40.446819, 19.088011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491836, 0.382107, -0.782363,
		0.778209, -0.210078, -0.591826,
		-0.390498, -0.899923, -0.194035,
		34.893322, 40.176842, 19.029800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147518, 40.801144, 18.470112>,  <35.166672, 40.806789, 19.165625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147518, 40.801144, 18.470112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887810, 40.517330, 18.579666>,  <34.731987, 40.347042, 18.645399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.887810, 40.517330, 18.579666>,  <35.147518, 40.801144, 18.470112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887810, 40.517330, 18.579666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646197, 0.324721, -0.690642,
		0.401100, -0.625393, -0.669330,
		-0.649268, -0.709536, 0.273882,
		34.693027, 40.304470, 18.661831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918957, 40.534016, 17.884190>,  <35.147518, 40.801144, 18.470112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918957, 40.534016, 17.884190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630867, 40.396988, 18.125496>,  <34.458015, 40.314774, 18.270281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.630867, 40.396988, 18.125496>,  <34.918957, 40.534016, 17.884190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.630867, 40.396988, 18.125496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678645, 0.167450, -0.715123,
		0.143948, -0.924456, -0.353072,
		-0.720222, -0.342552, 0.603274,
		34.414803, 40.294220, 18.306477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.499557, 40.071297, 17.453123>,  <34.918957, 40.534016, 17.884190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.499557, 40.071297, 17.453123> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.265678, 40.165966, 17.763508>,  <34.125351, 40.222767, 17.949738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.265678, 40.165966, 17.763508>,  <34.499557, 40.071297, 17.453123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265678, 40.165966, 17.763508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729391, 0.265347, -0.630540,
		-0.355129, -0.934654, 0.017477,
		-0.584699, 0.236671, 0.775960,
		34.090267, 40.236969, 17.996296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.939030, 39.559483, 17.397486>,  <34.499557, 40.071297, 17.453123>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.939030, 39.559483, 17.397486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817764, 39.882542, 17.599792>,  <33.745003, 40.076378, 17.721176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.817764, 39.882542, 17.599792>,  <33.939030, 39.559483, 17.397486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.817764, 39.882542, 17.599792> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883866, -0.039939, -0.466031,
		-0.356188, -0.588314, 0.725959,
		-0.303167, 0.807645, 0.505765,
		33.726814, 40.124836, 17.751522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267597, 39.405239, 17.887737>,  <33.939030, 39.559483, 17.397486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267597, 39.405239, 17.887737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333138, 39.763020, 17.721308>,  <33.372463, 39.977688, 17.621450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.333138, 39.763020, 17.721308>,  <33.267597, 39.405239, 17.887737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333138, 39.763020, 17.721308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811688, -0.117462, -0.572158,
		-0.560638, 0.431469, 0.706767,
		0.163850, 0.894448, -0.416072,
		33.382294, 40.031353, 17.596487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.603733, 39.433784, 17.425358>,  <33.267597, 39.405239, 17.887737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.603733, 39.433784, 17.425358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.218269, 39.452579, 17.530550>,  <31.986992, 39.463856, 17.593664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.218269, 39.452579, 17.530550>,  <32.603733, 39.433784, 17.425358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218269, 39.452579, 17.530550> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188721, -0.576993, 0.794647,
		0.189078, 0.815396, 0.547155,
		-0.963657, 0.046991, 0.262979,
		31.929173, 39.466679, 17.609444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570908, 39.442425, 18.212149>,  <32.603733, 39.433784, 17.425358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570908, 39.442425, 18.212149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199810, 39.343075, 18.100723>,  <31.977152, 39.283466, 18.033867>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.199810, 39.343075, 18.100723>,  <32.570908, 39.442425, 18.212149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.199810, 39.343075, 18.100723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115473, -0.518739, 0.847098,
		-0.354900, 0.818058, 0.452578,
		-0.927746, -0.248375, -0.278564,
		31.921486, 39.268562, 18.017155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036224, 39.754314, 18.693569>,  <32.570908, 39.442425, 18.212149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036224, 39.754314, 18.693569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916868, 39.412910, 18.522697>,  <31.845255, 39.208069, 18.420176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.916868, 39.412910, 18.522697>,  <32.036224, 39.754314, 18.693569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916868, 39.412910, 18.522697> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005118, -0.448992, 0.893521,
		-0.954430, 0.264433, 0.138343,
		-0.298391, -0.853511, -0.427178,
		31.827351, 39.156857, 18.394545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.628437, 39.657066, 19.159777>,  <32.036224, 39.754314, 18.693569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.628437, 39.657066, 19.159777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.664406, 39.316769, 18.952644>,  <31.685987, 39.112591, 18.828365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.664406, 39.316769, 18.952644>,  <31.628437, 39.657066, 19.159777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.664406, 39.316769, 18.952644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143413, -0.503456, 0.852035,
		-0.985569, -0.150880, 0.076736,
		0.089922, -0.850745, -0.517829,
		31.691383, 39.061546, 18.797297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156029, 39.148983, 19.444994>,  <31.628437, 39.657066, 19.159777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156029, 39.148983, 19.444994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454321, 38.957035, 19.260124>,  <31.633297, 38.841866, 19.149202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.454321, 38.957035, 19.260124>,  <31.156029, 39.148983, 19.444994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454321, 38.957035, 19.260124> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161880, -0.542407, 0.824372,
		-0.646282, -0.689577, -0.326807,
		0.745731, -0.479874, -0.462177,
		31.678040, 38.813072, 19.121471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169167, 38.427231, 19.632624>,  <31.156029, 39.148983, 19.444994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169167, 38.427231, 19.632624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.543154, 38.450752, 19.492693>,  <31.767546, 38.464867, 19.408733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.543154, 38.450752, 19.492693>,  <31.169167, 38.427231, 19.632624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.543154, 38.450752, 19.492693> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319332, -0.568980, 0.757818,
		-0.154482, -0.820246, -0.550756,
		0.934966, 0.058805, -0.349828,
		31.823643, 38.468395, 19.387745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.483446, 37.767551, 20.034014>,  <31.169167, 38.427231, 19.632624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.483446, 37.767551, 20.034014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794373, 37.967415, 19.881113>,  <31.980928, 38.087334, 19.789373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.794373, 37.967415, 19.881113>,  <31.483446, 37.767551, 20.034014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794373, 37.967415, 19.881113> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610354, -0.451714, 0.650709,
		0.152468, -0.739115, -0.656096,
		0.777317, 0.499663, -0.382250,
		32.027569, 38.117313, 19.766438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026749, 37.364582, 19.864782>,  <31.483446, 37.767551, 20.034014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026749, 37.364582, 19.864782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195759, 37.724125, 19.911308>,  <32.297165, 37.939850, 19.939224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195759, 37.724125, 19.911308>,  <32.026749, 37.364582, 19.864782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195759, 37.724125, 19.911308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603507, -0.374768, 0.703795,
		0.676201, -0.227178, -0.700816,
		0.422530, 0.898854, 0.116315,
		32.322517, 37.993782, 19.946203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.781200, 37.185108, 19.995642>,  <32.026749, 37.364582, 19.864782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.781200, 37.185108, 19.995642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696251, 37.558540, 20.111099>,  <32.645283, 37.782600, 20.180374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696251, 37.558540, 20.111099>,  <32.781200, 37.185108, 19.995642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696251, 37.558540, 20.111099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594792, -0.110863, 0.796199,
		0.775319, 0.340776, -0.531744,
		-0.212375, 0.933585, 0.288645,
		32.632538, 37.838615, 20.197693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384789, 37.606590, 20.133234>,  <32.781200, 37.185108, 19.995642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384789, 37.606590, 20.133234> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105057, 37.794125, 20.349060>,  <32.937218, 37.906647, 20.478556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.105057, 37.794125, 20.349060>,  <33.384789, 37.606590, 20.133234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105057, 37.794125, 20.349060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572800, -0.083984, 0.815381,
		0.427594, 0.879284, -0.209816,
		-0.699331, 0.468834, 0.539565,
		32.895256, 37.934776, 20.510929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787949, 38.098656, 20.471920>,  <33.384789, 37.606590, 20.133234>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787949, 38.098656, 20.471920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452991, 38.042225, 20.683149>,  <33.252018, 38.008366, 20.809887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.452991, 38.042225, 20.683149>,  <33.787949, 38.098656, 20.471920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452991, 38.042225, 20.683149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535552, -0.018544, 0.844299,
		-0.109321, 0.989825, 0.091085,
		-0.837397, -0.141080, 0.528075,
		33.201771, 37.999901, 20.841572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833233, 38.556015, 21.037186>,  <33.787949, 38.098656, 20.471920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833233, 38.556015, 21.037186> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570065, 38.277794, 21.152660>,  <33.412163, 38.110859, 21.221945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570065, 38.277794, 21.152660>,  <33.833233, 38.556015, 21.037186>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570065, 38.277794, 21.152660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524610, -0.148284, 0.838329,
		-0.540296, 0.703004, 0.462455,
		-0.657924, -0.695555, 0.288686,
		33.372688, 38.069126, 21.239265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768379, 38.629078, 21.767765>,  <33.833233, 38.556015, 21.037186>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768379, 38.629078, 21.767765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641529, 38.261620, 21.673519>,  <33.565418, 38.041145, 21.616972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.641529, 38.261620, 21.673519>,  <33.768379, 38.629078, 21.767765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.641529, 38.261620, 21.673519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583663, -0.384866, 0.714993,
		-0.747509, 0.089221, 0.658232,
		-0.317124, -0.918650, -0.235616,
		33.546391, 37.986023, 21.602835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504875, 38.270111, 22.398626>,  <33.768379, 38.629078, 21.767765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504875, 38.270111, 22.398626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.628555, 37.993389, 22.137613>,  <33.702763, 37.827354, 21.981005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.628555, 37.993389, 22.137613>,  <33.504875, 38.270111, 22.398626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628555, 37.993389, 22.137613> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647730, -0.349195, 0.677134,
		-0.696305, -0.632037, 0.340131,
		0.309201, -0.691804, -0.652535,
		33.721317, 37.785847, 21.941853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730587, 37.724697, 22.784082>,  <33.504875, 38.270111, 22.398626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730587, 37.724697, 22.784082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904312, 37.563869, 22.461662>,  <34.008545, 37.467373, 22.268211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.904312, 37.563869, 22.461662>,  <33.730587, 37.724697, 22.784082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.904312, 37.563869, 22.461662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557755, -0.582626, 0.591148,
		-0.707308, -0.706320, -0.028785,
		0.434310, -0.402068, -0.806049,
		34.034607, 37.443249, 22.219847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707447, 36.919281, 22.768290>,  <33.730587, 37.724697, 22.784082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707447, 36.919281, 22.768290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027550, 37.007973, 22.545427>,  <34.219612, 37.061188, 22.411711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.027550, 37.007973, 22.545427>,  <33.707447, 36.919281, 22.768290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027550, 37.007973, 22.545427> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544903, -0.656767, 0.521285,
		-0.250337, -0.720758, -0.646405,
		0.800258, 0.221731, -0.557156,
		34.267628, 37.074493, 22.378281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005077, 36.579689, 23.138577>,  <33.707447, 36.919281, 22.768290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005077, 36.579689, 23.138577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277714, 36.741833, 22.894896>,  <34.441296, 36.839119, 22.748688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.277714, 36.741833, 22.894896>,  <34.005077, 36.579689, 23.138577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277714, 36.741833, 22.894896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716614, -0.538159, 0.443677,
		-0.147999, -0.738965, -0.657287,
		0.681587, 0.405357, -0.609200,
		34.482189, 36.863441, 22.712135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285328, 36.030170, 22.797909>,  <34.005077, 36.579689, 23.138577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285328, 36.030170, 22.797909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.538258, 36.337162, 22.755690>,  <34.690014, 36.521358, 22.730358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.538258, 36.337162, 22.755690>,  <34.285328, 36.030170, 22.797909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.538258, 36.337162, 22.755690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706096, -0.514897, 0.486117,
		0.318739, -0.381910, -0.867497,
		0.632324, 0.767480, -0.105547,
		34.727955, 36.567406, 22.724026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892273, 35.733093, 22.746315>,  <34.285328, 36.030170, 22.797909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892273, 35.733093, 22.746315> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986069, 36.109318, 22.844589>,  <35.042347, 36.335052, 22.903553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.986069, 36.109318, 22.844589>,  <34.892273, 35.733093, 22.746315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.986069, 36.109318, 22.844589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683621, -0.339228, 0.646209,
		0.691142, 0.016426, -0.722532,
		0.234489, 0.940560, 0.245684,
		35.056416, 36.391487, 22.918295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568230, 35.640766, 22.782417>,  <34.892273, 35.733093, 22.746315>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568230, 35.640766, 22.782417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481731, 35.962036, 23.004465>,  <35.429832, 36.154797, 23.137693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481731, 35.962036, 23.004465>,  <35.568230, 35.640766, 22.782417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481731, 35.962036, 23.004465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551121, -0.368911, 0.748445,
		0.805918, 0.467783, -0.362870,
		-0.216243, 0.803171, 0.555118,
		35.416859, 36.202988, 23.171000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244709, 35.864239, 23.033583>,  <35.568230, 35.640766, 22.782417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244709, 35.864239, 23.033583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961533, 36.024601, 23.266167>,  <35.791626, 36.120819, 23.405716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.961533, 36.024601, 23.266167>,  <36.244709, 35.864239, 23.033583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961533, 36.024601, 23.266167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575025, -0.150840, 0.804110,
		0.410076, 0.903618, -0.123742,
		-0.707943, 0.400902, 0.581459,
		35.749149, 36.144871, 23.440605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.234371, 38.038399, 25.589800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904587, 37.890541, 25.761209>,  <40.706718, 37.801826, 25.864056>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.904587, 37.890541, 25.761209>,  <41.234371, 38.038399, 25.589800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904587, 37.890541, 25.761209> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474535, -0.038964, 0.879374,
		-0.308361, 0.928355, 0.207535,
		-0.824457, -0.369648, 0.428522,
		40.657249, 37.779648, 25.889767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.149456, 38.477665, 26.235094>,  <41.234371, 38.038399, 25.589800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.149456, 38.477665, 26.235094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960171, 38.125469, 26.246416>,  <40.846600, 37.914150, 26.253210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.960171, 38.125469, 26.246416>,  <41.149456, 38.477665, 26.235094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960171, 38.125469, 26.246416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378771, -0.174348, 0.908920,
		-0.795361, 0.440837, 0.416009,
		-0.473216, -0.880492, 0.028306,
		40.818207, 37.861320, 26.254908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723286, 38.542160, 26.764893>,  <41.149456, 38.477665, 26.235094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723286, 38.542160, 26.764893> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766319, 38.145771, 26.732912>,  <40.792141, 37.907936, 26.713724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.766319, 38.145771, 26.732912>,  <40.723286, 38.542160, 26.764893>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766319, 38.145771, 26.732912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272678, -0.047922, 0.960911,
		-0.956071, -0.125182, 0.265061,
		0.107587, -0.990976, -0.079951,
		40.798595, 37.848476, 26.708927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492916, 38.221085, 27.437637>,  <40.723286, 38.542160, 26.764893>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492916, 38.221085, 27.437637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727634, 37.945225, 27.267908>,  <40.868465, 37.779709, 27.166071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.727634, 37.945225, 27.267908>,  <40.492916, 38.221085, 27.437637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727634, 37.945225, 27.267908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459401, -0.147982, 0.875815,
		-0.666801, -0.708858, 0.229993,
		0.586794, -0.689653, -0.424325,
		40.903671, 37.738331, 27.140610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405396, 37.633038, 27.814201>,  <40.492916, 38.221085, 27.437637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405396, 37.633038, 27.814201> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.756897, 37.531658, 27.652431>,  <40.967796, 37.470829, 27.555370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.756897, 37.531658, 27.652431>,  <40.405396, 37.633038, 27.814201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.756897, 37.531658, 27.652431> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279793, -0.412924, 0.866724,
		-0.386667, -0.874790, -0.291945,
		0.878752, -0.253449, -0.404424,
		41.020523, 37.455624, 27.531105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.555508, 37.007973, 28.164114>,  <40.405396, 37.633038, 27.814201>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.555508, 37.007973, 28.164114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.903122, 37.137482, 28.014477>,  <41.111691, 37.215187, 27.924694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.903122, 37.137482, 28.014477>,  <40.555508, 37.007973, 28.164114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903122, 37.137482, 28.014477> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450746, -0.206399, 0.868463,
		0.203975, -0.923346, -0.325310,
		0.869035, 0.323777, -0.374094,
		41.163834, 37.234615, 27.902248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946865, 36.396343, 28.350262>,  <40.555508, 37.007973, 28.164114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946865, 36.396343, 28.350262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.200035, 36.703762, 28.312862>,  <41.351936, 36.888214, 28.290422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.200035, 36.703762, 28.312862>,  <40.946865, 36.396343, 28.350262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.200035, 36.703762, 28.312862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353800, -0.179698, 0.917897,
		0.688649, -0.614034, -0.385648,
		0.632920, 0.768551, -0.093496,
		41.389912, 36.934326, 28.284813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429111, 36.210808, 28.863520>,  <40.946865, 36.396343, 28.350262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429111, 36.210808, 28.863520> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.518135, 36.588806, 28.767645>,  <41.571548, 36.815605, 28.710119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.518135, 36.588806, 28.767645>,  <41.429111, 36.210808, 28.863520>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.518135, 36.588806, 28.767645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495984, 0.101911, 0.862331,
		0.839326, -0.310800, -0.446022,
		0.222558, 0.944996, -0.239688,
		41.584904, 36.872307, 28.695738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.996925, 36.374207, 29.212612>,  <41.429111, 36.210808, 28.863520>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.996925, 36.374207, 29.212612> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.866776, 36.744049, 29.133389>,  <41.788685, 36.965954, 29.085854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.866776, 36.744049, 29.133389>,  <41.996925, 36.374207, 29.212612>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.866776, 36.744049, 29.133389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222195, 0.278354, 0.934424,
		0.919107, 0.260035, -0.296014,
		-0.325379, 0.924609, -0.198059,
		41.769161, 37.021431, 29.073971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549126, 36.764282, 29.436190>,  <41.996925, 36.374207, 29.212612>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549126, 36.764282, 29.436190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232758, 37.008911, 29.428022>,  <42.042934, 37.155689, 29.423122>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232758, 37.008911, 29.428022>,  <42.549126, 36.764282, 29.436190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232758, 37.008911, 29.428022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206552, 0.298236, 0.931875,
		0.575999, 0.732826, -0.362204,
		-0.790924, 0.611574, -0.020417,
		41.995480, 37.192383, 29.421898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.761871, 37.190815, 29.782616>,  <42.549126, 36.764282, 29.436190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.761871, 37.190815, 29.782616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369652, 37.262699, 29.814175>,  <42.134319, 37.305828, 29.833111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.369652, 37.262699, 29.814175>,  <42.761871, 37.190815, 29.782616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.369652, 37.262699, 29.814175> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129980, 0.293410, 0.947109,
		0.147054, 0.938944, -0.311062,
		-0.980551, 0.179708, 0.078897,
		42.075485, 37.316612, 29.837843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626751, 37.883862, 30.076969>,  <42.761871, 37.190815, 29.782616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626751, 37.883862, 30.076969> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304356, 37.659088, 30.151388>,  <42.110920, 37.524223, 30.196039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.304356, 37.659088, 30.151388>,  <42.626751, 37.883862, 30.076969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304356, 37.659088, 30.151388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104140, 0.174789, 0.979083,
		-0.582700, 0.808504, -0.082358,
		-0.805987, -0.561935, 0.186047,
		42.062561, 37.490509, 30.207203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221809, 38.269096, 30.543043>,  <42.626751, 37.883862, 30.076969>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221809, 38.269096, 30.543043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.148346, 37.876492, 30.564602>,  <42.104267, 37.640930, 30.577538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.148346, 37.876492, 30.564602>,  <42.221809, 38.269096, 30.543043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.148346, 37.876492, 30.564602> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207274, 0.014928, 0.978169,
		-0.960888, 0.190824, 0.200700,
		-0.183662, -0.981511, 0.053897,
		42.093246, 37.582039, 30.580770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.294441, 38.196297, 31.241135>,  <42.221809, 38.269096, 30.543043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.294441, 38.196297, 31.241135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240780, 37.822525, 31.109173>,  <42.208584, 37.598263, 31.029997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.240780, 37.822525, 31.109173>,  <42.294441, 38.196297, 31.241135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.240780, 37.822525, 31.109173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203256, -0.351781, 0.913749,
		-0.969892, 0.055527, 0.237122,
		-0.134153, -0.934434, -0.329904,
		42.200535, 37.542194, 31.010202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.637409, 37.981426, 31.512749>,  <42.294441, 38.196297, 31.241135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.637409, 37.981426, 31.512749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.776642, 38.312382, 31.336443>,  <41.860180, 38.510956, 31.230659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.776642, 38.312382, 31.336443>,  <41.637409, 37.981426, 31.512749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.776642, 38.312382, 31.336443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603238, 0.162215, 0.780891,
		0.717597, -0.537697, -0.442647,
		0.348079, 0.827386, -0.440764,
		41.881065, 38.560596, 31.204214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554886, 38.570232, 32.062912>,  <41.637409, 37.981426, 31.512749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554886, 38.570232, 32.062912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415085, 38.872208, 32.284870>,  <41.331203, 39.053394, 32.418045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415085, 38.872208, 32.284870>,  <41.554886, 38.570232, 32.062912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415085, 38.872208, 32.284870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642993, 0.237503, -0.728115,
		-0.681474, -0.611275, 0.402413,
		-0.349505, 0.754940, 0.554898,
		41.310234, 39.098690, 32.451340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833870, 38.512234, 32.193535>,  <41.554886, 38.570232, 32.062912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833870, 38.512234, 32.193535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920586, 38.901306, 32.226761>,  <40.972614, 39.134750, 32.246696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.920586, 38.901306, 32.226761>,  <40.833870, 38.512234, 32.193535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920586, 38.901306, 32.226761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809165, 0.226644, -0.542111,
		-0.546125, 0.050311, 0.836191,
		0.216792, 0.972677, 0.083066,
		40.985622, 39.193108, 32.251682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245319, 38.730755, 32.505077>,  <40.833870, 38.512234, 32.193535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245319, 38.730755, 32.505077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.429161, 39.044426, 32.338310>,  <40.539467, 39.232628, 32.238251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.429161, 39.044426, 32.338310>,  <40.245319, 38.730755, 32.505077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.429161, 39.044426, 32.338310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810499, 0.178414, -0.557906,
		-0.363114, 0.594333, 0.717577,
		0.459608, 0.784179, -0.416922,
		40.567043, 39.279678, 32.213234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763371, 39.126526, 32.237968>,  <40.245319, 38.730755, 32.505077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763371, 39.126526, 32.237968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075722, 39.278744, 32.039814>,  <40.263134, 39.370075, 31.920919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075722, 39.278744, 32.039814>,  <39.763371, 39.126526, 32.237968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075722, 39.278744, 32.039814> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579029, 0.143346, -0.802607,
		-0.234414, 0.913586, 0.332282,
		0.780881, 0.380543, -0.495390,
		40.309986, 39.392906, 31.891197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576771, 39.776764, 31.991892>,  <39.763371, 39.126526, 32.237968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576771, 39.776764, 31.991892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914688, 39.737621, 31.781466>,  <40.117439, 39.714134, 31.655209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.914688, 39.737621, 31.781466>,  <39.576771, 39.776764, 31.991892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.914688, 39.737621, 31.781466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447390, 0.410150, -0.794745,
		0.293540, 0.906753, 0.302712,
		0.844794, -0.097859, -0.526067,
		40.168125, 39.708263, 31.623646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774109, 40.423733, 31.752075>,  <39.576771, 39.776764, 31.991892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774109, 40.423733, 31.752075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957970, 40.179089, 31.494501>,  <40.068287, 40.032303, 31.339956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.957970, 40.179089, 31.494501>,  <39.774109, 40.423733, 31.752075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.957970, 40.179089, 31.494501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358612, 0.535505, -0.764612,
		0.812475, 0.582378, 0.026815,
		0.459653, -0.611612, -0.643933,
		40.095867, 39.995605, 31.301321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055561, 40.871574, 31.214539>,  <39.774109, 40.423733, 31.752075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055561, 40.871574, 31.214539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.053165, 40.508904, 31.045830>,  <40.051727, 40.291302, 30.944605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.053165, 40.508904, 31.045830>,  <40.055561, 40.871574, 31.214539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053165, 40.508904, 31.045830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412017, 0.386553, -0.825118,
		0.911157, 0.168837, -0.375883,
		-0.005988, -0.906681, -0.421774,
		40.051369, 40.236900, 30.919298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185173, 40.990986, 30.478903>,  <40.055561, 40.871574, 31.214539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185173, 40.990986, 30.478903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.022945, 40.625481, 30.469469>,  <39.925610, 40.406178, 30.463808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.022945, 40.625481, 30.469469>,  <40.185173, 40.990986, 30.478903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022945, 40.625481, 30.469469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316541, 0.164606, -0.934188,
		0.857507, -0.371410, -0.356001,
		-0.405567, -0.913761, -0.023585,
		39.901276, 40.351353, 30.462393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.171532, 40.827988, 29.808701>,  <40.185173, 40.990986, 30.478903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.171532, 40.827988, 29.808701> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910702, 40.557312, 29.945450>,  <39.754204, 40.394905, 30.027500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.910702, 40.557312, 29.945450>,  <40.171532, 40.827988, 29.808701>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910702, 40.557312, 29.945450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491704, 0.034237, -0.870089,
		0.577079, -0.735468, -0.355058,
		-0.652079, -0.676694, 0.341875,
		39.715076, 40.354305, 30.048012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082401, 40.281139, 29.233381>,  <40.171532, 40.827988, 29.808701>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082401, 40.281139, 29.233381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769588, 40.254227, 29.481218>,  <39.581902, 40.238079, 29.629921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.769588, 40.254227, 29.481218>,  <40.082401, 40.281139, 29.233381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769588, 40.254227, 29.481218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621264, 0.005164, -0.783584,
		0.049526, -0.997720, -0.045842,
		-0.782034, -0.067288, 0.619592,
		39.534977, 40.234043, 29.667095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.653328, 39.839001, 28.884542>,  <40.082401, 40.281139, 29.233381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.653328, 39.839001, 28.884542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413002, 40.056725, 29.118721>,  <39.268806, 40.187359, 29.259228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.413002, 40.056725, 29.118721>,  <39.653328, 39.839001, 28.884542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.413002, 40.056725, 29.118721> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627394, 0.132763, -0.767301,
		-0.495378, -0.828309, 0.261734,
		-0.600813, 0.544315, 0.585444,
		39.232758, 40.220020, 29.294353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001499, 39.579578, 28.768663>,  <39.653328, 39.839001, 28.884542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001499, 39.579578, 28.768663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914696, 39.935719, 28.928759>,  <38.862614, 40.149403, 29.024815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.914696, 39.935719, 28.928759>,  <39.001499, 39.579578, 28.768663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.914696, 39.935719, 28.928759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678893, 0.156959, -0.717264,
		-0.701435, -0.427370, 0.570389,
		-0.217010, 0.890347, 0.400235,
		38.849594, 40.202824, 29.048830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214321, 39.525089, 28.638105>,  <39.001499, 39.579578, 28.768663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214321, 39.525089, 28.638105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380344, 39.887672, 28.669226>,  <38.479958, 40.105225, 28.687899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.380344, 39.887672, 28.669226>,  <38.214321, 39.525089, 28.638105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380344, 39.887672, 28.669226> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488100, 0.294027, -0.821771,
		-0.767779, 0.303109, 0.564482,
		0.415059, 0.906462, 0.077801,
		38.504864, 40.159611, 28.692566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587940, 39.431988, 29.125336>,  <38.214321, 39.525089, 28.638105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587940, 39.431988, 29.125336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.220036, 39.418446, 29.281746>,  <36.999294, 39.410320, 29.375591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.220036, 39.418446, 29.281746>,  <37.587940, 39.431988, 29.125336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.220036, 39.418446, 29.281746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389590, -0.199598, 0.899100,
		0.047612, 0.979293, 0.196770,
		-0.919757, -0.033852, 0.391026,
		36.944107, 39.408291, 29.399054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679562, 39.789902, 29.711578>,  <37.587940, 39.431988, 29.125336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679562, 39.789902, 29.711578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.340816, 39.600082, 29.807606>,  <37.137569, 39.486191, 29.865221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.340816, 39.600082, 29.807606>,  <37.679562, 39.789902, 29.711578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340816, 39.600082, 29.807606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427099, -0.337905, 0.838693,
		-0.316878, 0.812789, 0.488837,
		-0.846862, -0.474545, 0.240067,
		37.086758, 39.457718, 29.879625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514473, 39.933849, 30.388824>,  <37.679562, 39.789902, 29.711578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514473, 39.933849, 30.388824> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.333385, 39.588825, 30.298452>,  <37.224735, 39.381813, 30.244228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.333385, 39.588825, 30.298452>,  <37.514473, 39.933849, 30.388824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333385, 39.588825, 30.298452> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289362, -0.381790, 0.877785,
		-0.843397, 0.332010, 0.422434,
		-0.452714, -0.862558, -0.225930,
		37.197571, 39.330059, 30.230673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152557, 39.794220, 30.951027>,  <37.514473, 39.933849, 30.388824>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152557, 39.794220, 30.951027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.162029, 39.441162, 30.763252>,  <37.167713, 39.229328, 30.650587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.162029, 39.441162, 30.763252>,  <37.152557, 39.794220, 30.951027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162029, 39.441162, 30.763252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314194, -0.439206, 0.841653,
		-0.949063, -0.167426, 0.266922,
		0.023681, -0.882648, -0.469438,
		37.169132, 39.176369, 30.622421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772381, 39.273380, 31.409237>,  <37.152557, 39.794220, 30.951027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772381, 39.273380, 31.409237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.988613, 39.024719, 31.182501>,  <37.118355, 38.875523, 31.046459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.988613, 39.024719, 31.182501>,  <36.772381, 39.273380, 31.409237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988613, 39.024719, 31.182501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264758, -0.513832, 0.816015,
		-0.798543, -0.591201, -0.113181,
		0.540585, -0.621658, -0.566842,
		37.150787, 38.838223, 31.012447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.514935, 38.613670, 31.499409>,  <36.772381, 39.273380, 31.409237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.514935, 38.613670, 31.499409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.893642, 38.575535, 31.376423>,  <37.120869, 38.552654, 31.302631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.893642, 38.575535, 31.376423>,  <36.514935, 38.613670, 31.499409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.893642, 38.575535, 31.376423> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193974, -0.593283, 0.781274,
		-0.256902, -0.799328, -0.543209,
		0.946771, -0.095343, -0.307464,
		37.177673, 38.546932, 31.284184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647850, 37.895943, 31.629251>,  <36.514935, 38.613670, 31.499409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647850, 37.895943, 31.629251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007999, 38.062416, 31.578457>,  <37.224087, 38.162300, 31.547979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.007999, 38.062416, 31.578457>,  <36.647850, 37.895943, 31.629251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007999, 38.062416, 31.578457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395995, -0.662788, 0.635532,
		0.180328, -0.622501, -0.761560,
		0.900372, 0.416179, -0.126988,
		37.278111, 38.187271, 31.540359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.162350, 37.276749, 31.585442>,  <36.647850, 37.895943, 31.629251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.162350, 37.276749, 31.585442> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.365120, 37.607849, 31.681660>,  <37.486782, 37.806507, 31.739391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.365120, 37.607849, 31.681660>,  <37.162350, 37.276749, 31.585442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365120, 37.607849, 31.681660> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485989, -0.504926, 0.713347,
		0.711930, -0.244710, -0.658235,
		0.506923, 0.827748, 0.240546,
		37.517197, 37.856174, 31.753824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912617, 37.094604, 31.514921>,  <37.162350, 37.276749, 31.585442>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912617, 37.094604, 31.514921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.888985, 37.411491, 31.757870>,  <37.874805, 37.601624, 31.903639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.888985, 37.411491, 31.757870>,  <37.912617, 37.094604, 31.514921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888985, 37.411491, 31.757870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498461, -0.503741, 0.705536,
		0.864897, 0.344431, -0.365131,
		-0.059077, 0.792220, 0.607370,
		37.871262, 37.649158, 31.940081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.598431, 37.245804, 31.698914>,  <37.912617, 37.094604, 31.514921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.598431, 37.245804, 31.698914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375744, 37.419880, 31.981949>,  <38.242134, 37.524326, 32.151772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375744, 37.419880, 31.981949>,  <38.598431, 37.245804, 31.698914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375744, 37.419880, 31.981949> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637953, -0.321589, 0.699712,
		0.532058, 0.840948, -0.098595,
		-0.556714, 0.435187, 0.707589,
		38.208729, 37.550434, 32.194225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028313, 37.559132, 32.144867>,  <38.598431, 37.245804, 31.698914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.028313, 37.559132, 32.144867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.710136, 37.540516, 32.386562>,  <38.519230, 37.529346, 32.531578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.710136, 37.540516, 32.386562>,  <39.028313, 37.559132, 32.144867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.710136, 37.540516, 32.386562> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603524, -0.151323, 0.782854,
		0.055003, 0.987388, 0.148456,
		-0.795445, -0.046537, 0.604236,
		38.471504, 37.526554, 32.567833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103813, 38.077763, 32.689651>,  <39.028313, 37.559132, 32.144867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103813, 38.077763, 32.689651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.844124, 37.804459, 32.823318>,  <38.688309, 37.640476, 32.903519>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.844124, 37.804459, 32.823318>,  <39.103813, 38.077763, 32.689651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844124, 37.804459, 32.823318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534005, -0.096604, 0.839945,
		-0.541617, 0.723758, 0.427580,
		-0.649223, -0.683258, 0.334168,
		38.649357, 37.599480, 32.923569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.448864, 41.096287, 26.358570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199352, 40.798618, 26.454159>,  <35.049644, 40.620018, 26.511513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199352, 40.798618, 26.454159>,  <35.448864, 41.096287, 26.358570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199352, 40.798618, 26.454159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422207, -0.063515, 0.904271,
		-0.657758, 0.664958, 0.353815,
		-0.623775, -0.744175, 0.238973,
		35.012218, 40.575367, 26.525850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155880, 41.226131, 27.058146>,  <35.448864, 41.096287, 26.358570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155880, 41.226131, 27.058146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113483, 40.832390, 27.001837>,  <35.088047, 40.596146, 26.968052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.113483, 40.832390, 27.001837>,  <35.155880, 41.226131, 27.058146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113483, 40.832390, 27.001837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447814, -0.173653, 0.877102,
		-0.887822, 0.029927, 0.459212,
		-0.105992, -0.984352, -0.140771,
		35.081684, 40.537083, 26.959606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987530, 40.921658, 27.752775>,  <35.155880, 41.226131, 27.058146>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987530, 40.921658, 27.752775> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076496, 40.594475, 27.540556>,  <35.129875, 40.398167, 27.413225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.076496, 40.594475, 27.540556>,  <34.987530, 40.921658, 27.752775>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076496, 40.594475, 27.540556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582419, -0.324935, 0.745121,
		-0.781869, -0.474729, 0.404121,
		0.222417, -0.817955, -0.530548,
		35.143223, 40.349087, 27.381392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738205, 40.282761, 28.116331>,  <34.987530, 40.921658, 27.752775>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738205, 40.282761, 28.116331> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035809, 40.172096, 27.873049>,  <35.214371, 40.105698, 27.727079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.035809, 40.172096, 27.873049>,  <34.738205, 40.282761, 28.116331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.035809, 40.172096, 27.873049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500131, -0.373028, 0.781485,
		-0.443086, -0.885611, -0.139167,
		0.744005, -0.276664, -0.608205,
		35.259010, 40.089100, 27.690588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849312, 39.596603, 28.351898>,  <34.738205, 40.282761, 28.116331>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849312, 39.596603, 28.351898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172508, 39.708836, 28.144661>,  <35.366428, 39.776176, 28.020319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172508, 39.708836, 28.144661>,  <34.849312, 39.596603, 28.351898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172508, 39.708836, 28.144661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588849, -0.354670, 0.726269,
		0.020025, -0.891899, -0.451791,
		0.807995, 0.280580, -0.518092,
		35.414906, 39.793011, 27.989233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336426, 39.042702, 28.462198>,  <34.849312, 39.596603, 28.351898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336426, 39.042702, 28.462198> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545475, 39.359730, 28.336536>,  <35.670906, 39.549946, 28.261139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545475, 39.359730, 28.336536>,  <35.336426, 39.042702, 28.462198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545475, 39.359730, 28.336536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742992, -0.242690, 0.623750,
		0.418125, -0.559402, -0.715710,
		0.522623, 0.792573, -0.314156,
		35.702263, 39.597500, 28.242289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838367, 38.734245, 28.381893>,  <35.336426, 39.042702, 28.462198>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838367, 38.734245, 28.381893> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923885, 39.121712, 28.432442>,  <35.975197, 39.354191, 28.462770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.923885, 39.121712, 28.432442>,  <35.838367, 38.734245, 28.381893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.923885, 39.121712, 28.432442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636524, -0.236266, 0.734177,
		0.741033, -0.076524, -0.667094,
		0.213794, 0.968670, 0.126371,
		35.988022, 39.412312, 28.470352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593651, 38.776855, 28.379654>,  <35.838367, 38.734245, 28.381893>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593651, 38.776855, 28.379654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462559, 39.115578, 28.547228>,  <36.383904, 39.318813, 28.647772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462559, 39.115578, 28.547228>,  <36.593651, 38.776855, 28.379654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462559, 39.115578, 28.547228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622288, -0.140167, 0.770137,
		0.710879, 0.513099, -0.481021,
		-0.327733, 0.846808, 0.418937,
		36.364239, 39.369621, 28.672909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174759, 39.177849, 28.589008>,  <36.593651, 38.776855, 28.379654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174759, 39.177849, 28.589008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890457, 39.338470, 28.820036>,  <36.719875, 39.434845, 28.958652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890457, 39.338470, 28.820036>,  <37.174759, 39.177849, 28.589008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890457, 39.338470, 28.820036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520832, -0.251481, 0.815776,
		0.472825, 0.880632, -0.030401,
		-0.710754, 0.401553, 0.577568,
		36.677231, 39.458935, 28.993307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607201, 39.882263, 28.439039>,  <37.174759, 39.177849, 28.589008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607201, 39.882263, 28.439039> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904591, 40.149769, 28.439348>,  <38.083023, 40.310272, 28.439533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.904591, 40.149769, 28.439348>,  <37.607201, 39.882263, 28.439039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904591, 40.149769, 28.439348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405089, 0.451258, -0.795153,
		-0.532123, 0.590860, 0.606408,
		0.743471, 0.668768, 0.000774,
		38.127632, 40.350399, 28.439581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.340919, 40.545452, 28.307682>,  <37.607201, 39.882263, 28.439039>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.340919, 40.545452, 28.307682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720524, 40.563725, 28.182919>,  <37.948288, 40.574688, 28.108061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720524, 40.563725, 28.182919>,  <37.340919, 40.545452, 28.307682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720524, 40.563725, 28.182919> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295930, 0.470046, -0.831554,
		0.108628, 0.881459, 0.459597,
		0.949013, 0.045679, -0.311911,
		38.005226, 40.577427, 28.089346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.418087, 41.179352, 27.981211>,  <37.340919, 40.545452, 28.307682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.418087, 41.179352, 27.981211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726162, 40.977463, 27.825226>,  <37.911007, 40.856327, 27.731636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726162, 40.977463, 27.825226>,  <37.418087, 41.179352, 27.981211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726162, 40.977463, 27.825226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247044, 0.327609, -0.911944,
		0.588036, 0.798701, 0.127630,
		0.770184, -0.504726, -0.389960,
		37.957218, 40.826046, 27.708239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786201, 41.715893, 27.477604>,  <37.418087, 41.179352, 27.981211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786201, 41.715893, 27.477604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901283, 41.351143, 27.360497>,  <37.970333, 41.132294, 27.290232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901283, 41.351143, 27.360497>,  <37.786201, 41.715893, 27.477604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901283, 41.351143, 27.360497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129102, 0.265974, -0.955296,
		0.948977, 0.312641, -0.041202,
		0.287706, -0.911873, -0.292766,
		37.987595, 41.077579, 27.272667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358521, 41.803108, 27.043022>,  <37.786201, 41.715893, 27.477604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358521, 41.803108, 27.043022> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201649, 41.445122, 26.957958>,  <38.107525, 41.230328, 26.906919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201649, 41.445122, 26.957958>,  <38.358521, 41.803108, 27.043022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201649, 41.445122, 26.957958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051310, 0.252105, -0.966339,
		0.918455, -0.368070, -0.144792,
		-0.392183, -0.894968, -0.212661,
		38.083992, 41.176632, 26.894159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591461, 41.734608, 26.410372>,  <38.358521, 41.803108, 27.043022>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591461, 41.734608, 26.410372> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292553, 41.469788, 26.433231>,  <38.113209, 41.310894, 26.446947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292553, 41.469788, 26.433231>,  <38.591461, 41.734608, 26.410372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292553, 41.469788, 26.433231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222389, 0.168115, -0.960354,
		0.626198, -0.730358, -0.272862,
		-0.747274, -0.662053, 0.057150,
		38.068371, 41.271172, 26.450377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610046, 41.311073, 25.857801>,  <38.591461, 41.734608, 26.410372>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.610046, 41.311073, 25.857801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226967, 41.261158, 25.961521>,  <37.997120, 41.231209, 26.023754>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.226967, 41.261158, 25.961521>,  <38.610046, 41.311073, 25.857801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226967, 41.261158, 25.961521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265357, 0.034356, -0.963538,
		0.111335, -0.991588, -0.066018,
		-0.957701, -0.124794, 0.259300,
		37.939655, 41.223721, 26.039310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380997, 40.942997, 25.365822>,  <38.610046, 41.311073, 25.857801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380997, 40.942997, 25.365822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036041, 41.056988, 25.533192>,  <37.829067, 41.125381, 25.633614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.036041, 41.056988, 25.533192>,  <38.380997, 40.942997, 25.365822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036041, 41.056988, 25.533192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420703, 0.056340, -0.905447,
		-0.281608, -0.956877, 0.071305,
		-0.862384, 0.284979, 0.418427,
		37.777325, 41.142483, 25.658720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913540, 40.567562, 24.931231>,  <38.380997, 40.942997, 25.365822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913540, 40.567562, 24.931231> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720524, 40.860542, 25.123339>,  <37.604713, 41.036331, 25.238604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720524, 40.860542, 25.123339>,  <37.913540, 40.567562, 24.931231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720524, 40.860542, 25.123339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674722, 0.038778, -0.737052,
		-0.558482, -0.679710, 0.475491,
		-0.482544, 0.732455, 0.480273,
		37.575760, 41.080280, 25.267420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226959, 40.365246, 24.958546>,  <37.913540, 40.567562, 24.931231>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226959, 40.365246, 24.958546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219669, 40.763023, 25.000011>,  <37.215298, 41.001690, 25.024891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219669, 40.763023, 25.000011>,  <37.226959, 40.365246, 24.958546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219669, 40.763023, 25.000011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716335, 0.059348, -0.695228,
		-0.697519, -0.086929, 0.711274,
		-0.018223, 0.994445, 0.103667,
		37.214203, 41.061356, 25.031111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.451893, 40.669231, 24.987911>,  <37.226959, 40.365246, 24.958546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.451893, 40.669231, 24.987911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692371, 40.972145, 24.885862>,  <36.836658, 41.153893, 24.824633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692371, 40.972145, 24.885862>,  <36.451893, 40.669231, 24.987911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692371, 40.972145, 24.885862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696743, 0.340424, -0.631397,
		-0.391295, 0.557348, 0.732292,
		0.601197, 0.757281, -0.255122,
		36.872730, 41.199329, 24.809326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019497, 41.131809, 24.925953>,  <36.451893, 40.669231, 24.987911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019497, 41.131809, 24.925953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325874, 41.286156, 24.720261>,  <36.509701, 41.378761, 24.596846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325874, 41.286156, 24.720261>,  <36.019497, 41.131809, 24.925953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325874, 41.286156, 24.720261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639555, 0.375803, -0.670628,
		-0.065520, 0.842545, 0.534626,
		0.765948, 0.385862, -0.514231,
		36.555660, 41.401913, 24.565990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849751, 41.829472, 24.827955>,  <36.019497, 41.131809, 24.925953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849751, 41.829472, 24.827955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107399, 41.724792, 24.540449>,  <36.261990, 41.661987, 24.367945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.107399, 41.724792, 24.540449>,  <35.849751, 41.829472, 24.827955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107399, 41.724792, 24.540449> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639079, 0.332250, -0.693677,
		0.420341, 0.906160, 0.046766,
		0.644121, -0.261694, -0.718766,
		36.300636, 41.646286, 24.324820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883728, 42.424961, 24.365557>,  <35.849751, 41.829472, 24.827955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883728, 42.424961, 24.365557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984406, 42.094185, 24.164433>,  <36.044811, 41.895718, 24.043758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984406, 42.094185, 24.164433>,  <35.883728, 42.424961, 24.365557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.984406, 42.094185, 24.164433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640591, 0.247091, -0.727041,
		0.725459, 0.505091, -0.467538,
		0.251698, -0.826940, -0.502811,
		36.059914, 41.846104, 24.013590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.216969, 35.816708, 23.682377> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.319839, 36.182381, 23.807674>,  <32.381561, 36.401787, 23.882853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.319839, 36.182381, 23.807674>,  <32.216969, 35.816708, 23.682377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319839, 36.182381, 23.807674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755790, -0.392273, 0.524313,
		0.602197, 0.101903, -0.791818,
		0.257180, 0.914187, 0.313243,
		32.396992, 36.456638, 23.901648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919731, 35.886425, 23.589922>,  <32.216969, 35.816708, 23.682377>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919731, 35.886425, 23.589922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.813690, 36.142246, 23.878559>,  <32.750065, 36.295738, 24.051741>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.813690, 36.142246, 23.878559>,  <32.919731, 35.886425, 23.589922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813690, 36.142246, 23.878559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718431, -0.368119, 0.590208,
		0.643101, 0.674878, -0.361885,
		-0.265102, 0.639553, 0.721591,
		32.734161, 36.334110, 24.095036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561176, 36.057079, 23.959784>,  <32.919731, 35.886425, 23.589922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561176, 36.057079, 23.959784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.303871, 36.206863, 24.226915>,  <33.149490, 36.296734, 24.387196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.303871, 36.206863, 24.226915>,  <33.561176, 36.057079, 23.959784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303871, 36.206863, 24.226915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677213, -0.128679, 0.724447,
		0.357210, 0.918272, -0.170814,
		-0.643260, 0.374457, 0.667831,
		33.110893, 36.319202, 24.427265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901043, 36.660244, 24.262466>,  <33.561176, 36.057079, 23.959784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901043, 36.660244, 24.262466> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.621197, 36.517700, 24.510191>,  <33.453289, 36.432175, 24.658825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.621197, 36.517700, 24.510191>,  <33.901043, 36.660244, 24.262466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621197, 36.517700, 24.510191> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703602, -0.192674, 0.683974,
		-0.124415, 0.914268, 0.385532,
		-0.699617, -0.356358, 0.619310,
		33.411312, 36.410793, 24.695984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968311, 37.052677, 24.852407>,  <33.901043, 36.660244, 24.262466>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968311, 37.052677, 24.852407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782249, 36.708813, 24.936895>,  <33.670612, 36.502495, 24.987589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.782249, 36.708813, 24.936895>,  <33.968311, 37.052677, 24.852407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782249, 36.708813, 24.936895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685597, -0.198904, 0.700282,
		-0.559993, 0.470549, 0.681903,
		-0.465150, -0.859663, 0.211222,
		33.642704, 36.450912, 25.000261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003494, 37.108780, 25.571367>,  <33.968311, 37.052677, 24.852407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003494, 37.108780, 25.571367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.914173, 36.727364, 25.490467>,  <33.860580, 36.498516, 25.441927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.914173, 36.727364, 25.490467>,  <34.003494, 37.108780, 25.571367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914173, 36.727364, 25.490467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370194, -0.274904, 0.887347,
		-0.901717, 0.123273, 0.414380,
		-0.223300, -0.953536, -0.202250,
		33.847183, 36.441303, 25.429792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.922325, 36.720024, 26.323036>,  <34.003494, 37.108780, 25.571367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.922325, 36.720024, 26.323036> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950127, 36.422886, 26.056700>,  <33.966808, 36.244602, 25.896898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.950127, 36.422886, 26.056700>,  <33.922325, 36.720024, 26.323036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950127, 36.422886, 26.056700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489376, -0.556235, 0.671650,
		-0.869299, -0.372528, 0.324872,
		0.069503, -0.742849, -0.665841,
		33.970978, 36.200031, 25.856947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657349, 36.103268, 26.758217>,  <33.922325, 36.720024, 26.323036>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657349, 36.103268, 26.758217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.875351, 35.983238, 26.445057>,  <34.006149, 35.911221, 26.257162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.875351, 35.983238, 26.445057>,  <33.657349, 36.103268, 26.758217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.875351, 35.983238, 26.445057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598148, -0.515177, 0.613850,
		-0.587530, -0.802838, -0.101285,
		0.545002, -0.300072, -0.782899,
		34.038853, 35.893215, 26.210188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781895, 35.419937, 26.843332>,  <33.657349, 36.103268, 26.758217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781895, 35.419937, 26.843332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.080845, 35.518261, 26.596428>,  <34.260216, 35.577255, 26.448286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.080845, 35.518261, 26.596428>,  <33.781895, 35.419937, 26.843332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080845, 35.518261, 26.596428> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663348, -0.328457, 0.672373,
		-0.037466, -0.911972, -0.408539,
		0.747373, 0.245812, -0.617260,
		34.305058, 35.592003, 26.411249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260406, 34.934708, 26.909811>,  <33.781895, 35.419937, 26.843332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260406, 34.934708, 26.909811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.469013, 35.246090, 26.770084>,  <34.594177, 35.432919, 26.686249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.469013, 35.246090, 26.770084>,  <34.260406, 34.934708, 26.909811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.469013, 35.246090, 26.770084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738816, -0.207211, 0.641260,
		0.426812, -0.592508, -0.683202,
		0.521519, 0.778458, -0.349314,
		34.625469, 35.479626, 26.665291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958130, 34.756638, 27.013670>,  <34.260406, 34.934708, 26.909811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958130, 34.756638, 27.013670> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003002, 35.146217, 26.934834>,  <35.029926, 35.379963, 26.887531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.003002, 35.146217, 26.934834>,  <34.958130, 34.756638, 27.013670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.003002, 35.146217, 26.934834> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823906, 0.019715, 0.566384,
		0.555513, -0.225921, -0.800228,
		0.112181, 0.973946, -0.197089,
		35.036655, 35.438400, 26.875708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672279, 34.820770, 26.857006>,  <34.958130, 34.756638, 27.013670>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672279, 34.820770, 26.857006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541893, 35.181461, 26.970591>,  <35.463661, 35.397877, 27.038742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.541893, 35.181461, 26.970591>,  <35.672279, 34.820770, 26.857006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541893, 35.181461, 26.970591> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780895, 0.087510, 0.618502,
		0.532871, 0.423354, -0.732680,
		-0.325962, 0.901728, 0.283963,
		35.444103, 35.451981, 27.055780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285255, 35.161358, 26.938181>,  <35.672279, 34.820770, 26.857006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285255, 35.161358, 26.938181> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990364, 35.366653, 27.113945>,  <35.813427, 35.489830, 27.219404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.990364, 35.366653, 27.113945>,  <36.285255, 35.161358, 26.938181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990364, 35.366653, 27.113945> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604953, 0.211814, 0.767572,
		0.300871, 0.831700, -0.466639,
		-0.737230, 0.513235, 0.439411,
		35.769196, 35.520622, 27.245768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531307, 35.795620, 27.033937>,  <36.285255, 35.161358, 26.938181>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531307, 35.795620, 27.033937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.243126, 35.771366, 27.310276>,  <36.070217, 35.756813, 27.476078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.243126, 35.771366, 27.310276>,  <36.531307, 35.795620, 27.033937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243126, 35.771366, 27.310276> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675834, 0.162026, 0.719024,
		-0.155536, 0.984922, -0.075751,
		-0.720456, -0.060639, 0.690845,
		36.026989, 35.753174, 27.517529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.181858, 36.243805, 27.161142>,  <36.531307, 35.795620, 27.033937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.181858, 36.243805, 27.161142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468208, 35.999386, 27.026001>,  <37.640018, 35.852734, 26.944916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.468208, 35.999386, 27.026001>,  <37.181858, 36.243805, 27.161142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.468208, 35.999386, 27.026001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381781, 0.062572, -0.922132,
		0.584603, 0.789120, -0.188491,
		0.715879, -0.611044, -0.337851,
		37.682972, 35.816074, 26.924646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463997, 36.572395, 26.657164>,  <37.181858, 36.243805, 27.161142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463997, 36.572395, 26.657164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566765, 36.196075, 26.568718>,  <37.628426, 35.970284, 26.515652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.566765, 36.196075, 26.568718>,  <37.463997, 36.572395, 26.657164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566765, 36.196075, 26.568718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363541, 0.117906, -0.924087,
		0.895449, 0.317802, -0.311725,
		0.256922, -0.940798, -0.221113,
		37.643841, 35.913837, 26.502384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.705784, 36.590359, 26.077066>,  <37.463997, 36.572395, 26.657164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.705784, 36.590359, 26.077066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625225, 36.198631, 26.084753>,  <37.576889, 35.963593, 26.089365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.625225, 36.198631, 26.084753>,  <37.705784, 36.590359, 26.077066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.625225, 36.198631, 26.084753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291984, 0.041296, -0.955531,
		0.934977, -0.198057, -0.294263,
		-0.201401, -0.979320, 0.019219,
		37.564804, 35.904835, 26.090519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066807, 36.270695, 25.512936>,  <37.705784, 36.590359, 26.077066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066807, 36.270695, 25.512936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744823, 36.055340, 25.612682>,  <37.551636, 35.926128, 25.672531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.744823, 36.055340, 25.612682>,  <38.066807, 36.270695, 25.512936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.744823, 36.055340, 25.612682> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267827, -0.045327, -0.962400,
		0.529448, -0.841477, -0.107708,
		-0.804956, -0.538388, 0.249368,
		37.503338, 35.893822, 25.687492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.983372, 35.755165, 24.997200>,  <38.066807, 36.270695, 25.512936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.983372, 35.755165, 24.997200> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620949, 35.731251, 25.164761>,  <37.403496, 35.716904, 25.265297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.620949, 35.731251, 25.164761>,  <37.983372, 35.755165, 24.997200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620949, 35.731251, 25.164761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405311, -0.161757, -0.899754,
		0.121554, -0.985018, 0.122329,
		-0.906062, -0.059787, 0.418901,
		37.349129, 35.713314, 25.290430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.592236, 35.365913, 24.593954>,  <37.983372, 35.755165, 24.997200>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.592236, 35.365913, 24.593954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300762, 35.550472, 24.796394>,  <37.125877, 35.661209, 24.917858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.300762, 35.550472, 24.796394>,  <37.592236, 35.365913, 24.593954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300762, 35.550472, 24.796394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525789, 0.096614, -0.845110,
		-0.438828, -0.881917, 0.172197,
		-0.728681, 0.461398, 0.506099,
		37.082157, 35.688892, 24.948225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928658, 35.081177, 24.262386>,  <37.592236, 35.365913, 24.593954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928658, 35.081177, 24.262386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.823196, 35.414043, 24.457523>,  <36.759922, 35.613762, 24.574606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.823196, 35.414043, 24.457523>,  <36.928658, 35.081177, 24.262386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823196, 35.414043, 24.457523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690258, 0.190516, -0.698031,
		-0.673819, -0.520772, 0.524179,
		-0.263650, 0.832165, 0.487841,
		36.744102, 35.663692, 24.603876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227383, 35.010368, 24.363123>,  <36.928658, 35.081177, 24.262386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227383, 35.010368, 24.363123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292343, 35.403858, 24.393858>,  <36.331318, 35.639954, 24.412298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.292343, 35.403858, 24.393858>,  <36.227383, 35.010368, 24.363123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292343, 35.403858, 24.393858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658180, 0.166014, -0.734328,
		-0.735136, 0.068683, 0.674432,
		0.162401, 0.983729, 0.076837,
		36.341064, 35.698978, 24.416908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526699, 35.226143, 24.277494>,  <36.227383, 35.010368, 24.363123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526699, 35.226143, 24.277494> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.764053, 35.542900, 24.219790>,  <35.906464, 35.732952, 24.185167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.764053, 35.542900, 24.219790>,  <35.526699, 35.226143, 24.277494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764053, 35.542900, 24.219790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765057, 0.499157, -0.406853,
		-0.250173, 0.351788, 0.902030,
		0.593381, 0.791888, -0.144262,
		35.942066, 35.780468, 24.176510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106289, 35.866661, 24.544083>,  <35.526699, 35.226143, 24.277494>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106289, 35.866661, 24.544083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377380, 36.002895, 24.283411>,  <35.540035, 36.084637, 24.127008>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377380, 36.002895, 24.283411>,  <35.106289, 35.866661, 24.544083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377380, 36.002895, 24.283411> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699787, 0.570894, -0.429393,
		0.225794, 0.747048, 0.625249,
		0.677728, 0.340586, -0.651679,
		35.580700, 36.105072, 24.087908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929871, 36.603264, 24.322474>,  <35.106289, 35.866661, 24.544083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929871, 36.603264, 24.322474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.174721, 36.473701, 24.033922>,  <35.321632, 36.395966, 23.860790>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.174721, 36.473701, 24.033922>,  <34.929871, 36.603264, 24.322474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174721, 36.473701, 24.033922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522167, 0.519514, -0.676348,
		0.593838, 0.790691, 0.148877,
		0.612126, -0.323902, -0.721380,
		35.358360, 36.376530, 23.817509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184052, 37.162441, 23.991367>,  <34.929871, 36.603264, 24.322474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184052, 37.162441, 23.991367> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250820, 36.877605, 23.718584>,  <35.290882, 36.706703, 23.554914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.250820, 36.877605, 23.718584>,  <35.184052, 37.162441, 23.991367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250820, 36.877605, 23.718584> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291204, 0.625201, -0.724103,
		0.941987, 0.319455, -0.103006,
		0.166919, -0.712091, -0.681957,
		35.300896, 36.663979, 23.513996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410427, 37.560837, 23.350958>,  <35.184052, 37.162441, 23.991367>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410427, 37.560837, 23.350958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.298279, 37.195492, 23.232870>,  <35.230991, 36.976284, 23.162018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.298279, 37.195492, 23.232870>,  <35.410427, 37.560837, 23.350958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298279, 37.195492, 23.232870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434383, 0.394990, -0.809502,
		0.855981, -0.098723, -0.507494,
		-0.280371, -0.913365, -0.295220,
		35.214169, 36.921482, 23.144304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714287, 37.398079, 22.701624>,  <35.410427, 37.560837, 23.350958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714287, 37.398079, 22.701624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.379135, 37.183781, 22.743467>,  <35.178043, 37.055202, 22.768574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.379135, 37.183781, 22.743467>,  <35.714287, 37.398079, 22.701624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379135, 37.183781, 22.743467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361515, 0.401039, -0.841709,
		0.409010, -0.743051, -0.529704,
		-0.837865, -0.535763, 0.104595,
		35.127773, 37.023060, 22.774851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172295, 37.676983, 22.141010>,  <35.714287, 37.398079, 22.701624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172295, 37.676983, 22.141010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347725, 38.032650, 22.088806>,  <36.452984, 38.246052, 22.057484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.347725, 38.032650, 22.088806>,  <36.172295, 37.676983, 22.141010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347725, 38.032650, 22.088806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661572, -0.221146, 0.716532,
		0.608255, -0.400596, -0.685237,
		0.438577, 0.889167, -0.130510,
		36.479298, 38.299400, 22.049654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864628, 37.556217, 21.899792>,  <36.172295, 37.676983, 22.141010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864628, 37.556217, 21.899792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881561, 37.908253, 22.088959>,  <36.891720, 38.119473, 22.202459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.881561, 37.908253, 22.088959>,  <36.864628, 37.556217, 21.899792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.881561, 37.908253, 22.088959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830281, -0.294276, 0.473325,
		0.555736, 0.372617, -0.743178,
		0.042330, 0.880090, 0.472916,
		36.894260, 38.172279, 22.230833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608158, 37.814556, 21.825535>,  <36.864628, 37.556217, 21.899792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608158, 37.814556, 21.825535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.442566, 38.032944, 22.116888>,  <37.343212, 38.163975, 22.291700>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.442566, 38.032944, 22.116888>,  <37.608158, 37.814556, 21.825535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442566, 38.032944, 22.116888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796998, -0.169194, 0.579800,
		0.439789, 0.820545, -0.365091,
		-0.413981, 0.545967, 0.728382,
		37.318371, 38.196735, 22.335403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.221249, 38.267704, 22.160753>,  <37.608158, 37.814556, 21.825535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.221249, 38.267704, 22.160753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.931091, 38.277531, 22.435913>,  <37.756996, 38.283428, 22.601009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.931091, 38.277531, 22.435913>,  <38.221249, 38.267704, 22.160753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931091, 38.277531, 22.435913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682977, -0.098779, 0.723730,
		0.085732, 0.994806, 0.054873,
		-0.725392, 0.024570, 0.687898,
		37.713474, 38.284901, 22.642282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416904, 38.759090, 22.591578>,  <38.221249, 38.267704, 22.160753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416904, 38.759090, 22.591578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176907, 38.559895, 22.842022>,  <38.032906, 38.440376, 22.992289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.176907, 38.559895, 22.842022>,  <38.416904, 38.759090, 22.591578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.176907, 38.559895, 22.842022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750690, -0.079944, 0.655800,
		-0.276525, 0.863493, 0.421799,
		-0.599998, -0.497985, 0.626109,
		37.996906, 38.410500, 23.029854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.548588, 39.055286, 23.317516>,  <38.416904, 38.759090, 22.591578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.548588, 39.055286, 23.317516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391315, 38.689743, 23.358067>,  <38.296951, 38.470417, 23.382397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.391315, 38.689743, 23.358067>,  <38.548588, 39.055286, 23.317516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391315, 38.689743, 23.358067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624626, -0.184567, 0.758800,
		-0.674722, 0.361668, 0.643387,
		-0.393181, -0.913855, 0.101376,
		38.273361, 38.415585, 23.388479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418827, 38.866562, 24.090590>,  <38.548588, 39.055286, 23.317516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418827, 38.866562, 24.090590> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396534, 38.504009, 23.923084>,  <38.383160, 38.286476, 23.822580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.396534, 38.504009, 23.923084>,  <38.418827, 38.866562, 24.090590>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396534, 38.504009, 23.923084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539859, -0.380174, 0.751013,
		-0.839909, -0.184221, 0.510505,
		-0.055728, -0.906383, -0.418765,
		38.379814, 38.232094, 23.797455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191093, 38.446873, 24.585129>,  <38.418827, 38.866562, 24.090590>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191093, 38.446873, 24.585129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346848, 38.186096, 24.324869>,  <38.440300, 38.029629, 24.168713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.346848, 38.186096, 24.324869>,  <38.191093, 38.446873, 24.585129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346848, 38.186096, 24.324869> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559516, -0.393710, 0.729339,
		-0.731656, -0.648044, 0.211468,
		0.389386, -0.651945, -0.650651,
		38.463665, 37.990513, 24.129673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177212, 37.712234, 24.907682>,  <38.191093, 38.446873, 24.585129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.177212, 37.712234, 24.907682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460022, 37.784916, 24.634302>,  <38.629707, 37.828526, 24.470274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.460022, 37.784916, 24.634302>,  <38.177212, 37.712234, 24.907682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460022, 37.784916, 24.634302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700884, -0.308807, 0.642962,
		-0.094227, -0.933608, -0.345685,
		0.707024, 0.181701, -0.683449,
		38.672131, 37.839424, 24.429268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628735, 37.186886, 25.012161>,  <38.177212, 37.712234, 24.907682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628735, 37.186886, 25.012161> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856960, 37.412453, 24.773346>,  <38.993896, 37.547791, 24.630056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.856960, 37.412453, 24.773346>,  <38.628735, 37.186886, 25.012161>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856960, 37.412453, 24.773346> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804667, -0.238502, 0.543717,
		0.164215, -0.790644, -0.589844,
		0.570565, 0.563914, -0.597040,
		39.028130, 37.581627, 24.594234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.174656, 36.778572, 24.940939>,  <38.628735, 37.186886, 25.012161>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.174656, 36.778572, 24.940939> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298641, 37.140961, 24.825607>,  <39.373032, 37.358395, 24.756409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.298641, 37.140961, 24.825607>,  <39.174656, 36.778572, 24.940939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298641, 37.140961, 24.825607> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832038, -0.111744, 0.543347,
		0.460041, -0.408316, -0.788442,
		0.309961, 0.905975, -0.288327,
		39.391628, 37.412754, 24.739109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839355, 36.701271, 24.911358>,  <39.174656, 36.778572, 24.940939>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839355, 36.701271, 24.911358> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790897, 37.097775, 24.932291>,  <39.761822, 37.335674, 24.944851>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.790897, 37.097775, 24.932291>,  <39.839355, 36.701271, 24.911358>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.790897, 37.097775, 24.932291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717547, 0.051020, 0.694639,
		0.685894, 0.121700, -0.717453,
		-0.121143, 0.991255, 0.052331,
		39.754555, 37.395149, 24.947990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.484085, 37.086304, 24.839354>,  <39.839355, 36.701271, 24.911358>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.484085, 37.086304, 24.839354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245075, 37.333614, 25.043589>,  <40.101669, 37.481998, 25.166130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.245075, 37.333614, 25.043589>,  <40.484085, 37.086304, 24.839354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.245075, 37.333614, 25.043589> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720411, 0.134326, 0.680415,
		0.352098, 0.774399, -0.525675,
		-0.597524, 0.618274, 0.510590,
		40.065819, 37.519096, 25.196766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.009789, 37.475529, 25.139412>,  <40.484085, 37.086304, 24.839354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.009789, 37.475529, 25.139412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.683144, 37.548534, 25.358440>,  <40.487156, 37.592339, 25.489859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.683144, 37.548534, 25.358440>,  <41.009789, 37.475529, 25.139412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683144, 37.548534, 25.358440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565852, 0.066031, 0.821859,
		0.113847, 0.980983, -0.157200,
		-0.816609, 0.182518, 0.547573,
		40.438160, 37.603291, 25.522713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.401386, 42.714439, 23.389904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336796, 42.320271, 23.368481>,  <36.298042, 42.083771, 23.355627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.336796, 42.320271, 23.368481>,  <36.401386, 42.714439, 23.389904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.336796, 42.320271, 23.368481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510359, 0.129834, -0.850104,
		0.844665, -0.109941, -0.523884,
		-0.161479, -0.985422, -0.053557,
		36.288353, 42.024643, 23.352413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632698, 42.460644, 22.730293>,  <36.401386, 42.714439, 23.389904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632698, 42.460644, 22.730293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335876, 42.235508, 22.875933>,  <36.157784, 42.100426, 22.963316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.335876, 42.235508, 22.875933>,  <36.632698, 42.460644, 22.730293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335876, 42.235508, 22.875933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543657, 0.187544, -0.818086,
		0.392169, -0.805007, -0.445161,
		-0.742052, -0.562842, 0.364098,
		36.113262, 42.066654, 22.985163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412590, 42.141167, 22.227936>,  <36.632698, 42.460644, 22.730293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412590, 42.141167, 22.227936> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.105991, 42.077610, 22.476851>,  <35.922031, 42.039478, 22.626200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.105991, 42.077610, 22.476851>,  <36.412590, 42.141167, 22.227936>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105991, 42.077610, 22.476851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640063, 0.109021, -0.760548,
		0.052997, -0.981259, -0.185260,
		-0.766492, -0.158885, 0.622290,
		35.876045, 42.029942, 22.663538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061653, 41.654026, 21.853615>,  <36.412590, 42.141167, 22.227936>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061653, 41.654026, 21.853615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793995, 41.806179, 22.108974>,  <35.633400, 41.897472, 22.262190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.793995, 41.806179, 22.108974>,  <36.061653, 41.654026, 21.853615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793995, 41.806179, 22.108974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647642, 0.122782, -0.751987,
		-0.364430, -0.916641, 0.164196,
		-0.669142, 0.380387, 0.638401,
		35.593254, 41.920296, 22.300495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373543, 41.247265, 21.887533>,  <36.061653, 41.654026, 21.853615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373543, 41.247265, 21.887533> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294346, 41.622627, 22.000801>,  <35.246826, 41.847847, 22.068762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.294346, 41.622627, 22.000801>,  <35.373543, 41.247265, 21.887533>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294346, 41.622627, 22.000801> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686348, 0.073521, -0.723547,
		-0.699802, -0.337614, 0.629519,
		-0.197997, 0.938409, 0.283171,
		35.234947, 41.904148, 22.085752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688763, 41.216965, 21.796597>,  <35.373543, 41.247265, 21.887533>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688763, 41.216965, 21.796597> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754570, 41.609852, 21.832792>,  <34.794052, 41.845585, 21.854509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.754570, 41.609852, 21.832792>,  <34.688763, 41.216965, 21.796597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754570, 41.609852, 21.832792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740012, 0.183561, -0.647061,
		-0.652164, 0.039487, 0.757049,
		0.164515, 0.982215, 0.090491,
		34.803925, 41.904518, 21.859940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.997459, 41.563297, 21.927689>,  <34.688763, 41.216965, 21.796597>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.997459, 41.563297, 21.927689> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259357, 41.838371, 21.802216>,  <34.416496, 42.003414, 21.726931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.259357, 41.838371, 21.802216>,  <33.997459, 41.563297, 21.927689>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259357, 41.838371, 21.802216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595112, 0.213164, -0.774856,
		-0.465988, 0.694014, 0.548817,
		0.654749, 0.687681, -0.313684,
		34.455784, 42.044674, 21.708111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655998, 42.154068, 22.010067>,  <33.997459, 41.563297, 21.927689>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655998, 42.154068, 22.010067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922596, 42.173702, 21.712509>,  <34.082554, 42.185482, 21.533974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.922596, 42.173702, 21.712509>,  <33.655998, 42.154068, 22.010067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.922596, 42.173702, 21.712509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745436, 0.029420, -0.665928,
		-0.010804, 0.998361, 0.056200,
		0.666490, 0.049088, -0.743896,
		34.122543, 42.188427, 21.489340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403744, 42.735893, 21.647207>,  <33.655998, 42.154068, 22.010067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403744, 42.735893, 21.647207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631477, 42.495121, 21.423229>,  <33.768116, 42.350658, 21.288843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.631477, 42.495121, 21.423229>,  <33.403744, 42.735893, 21.647207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631477, 42.495121, 21.423229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668225, 0.057925, -0.741700,
		0.478888, 0.796443, -0.369248,
		0.569334, -0.601932, -0.559943,
		33.802277, 42.314541, 21.255247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513561, 43.138905, 21.013056>,  <33.403744, 42.735893, 21.647207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513561, 43.138905, 21.013056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560276, 42.753201, 20.917919>,  <33.588306, 42.521778, 20.860838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.560276, 42.753201, 20.917919>,  <33.513561, 43.138905, 21.013056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.560276, 42.753201, 20.917919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504398, 0.148708, -0.850570,
		0.855537, 0.219302, -0.469002,
		0.116787, -0.964258, -0.237841,
		33.595314, 42.463924, 20.846567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.495529, 43.132236, 20.362167>,  <33.513561, 43.138905, 21.013056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.495529, 43.132236, 20.362167> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530075, 42.733856, 20.372112>,  <33.550800, 42.494827, 20.378080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.530075, 42.733856, 20.372112>,  <33.495529, 43.132236, 20.362167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.530075, 42.733856, 20.372112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427413, -0.059583, -0.902091,
		0.899922, 0.067279, -0.430829,
		0.086362, -0.995953, 0.024864,
		33.555984, 42.435070, 20.379572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.905918, 42.826717, 19.695160>,  <33.495529, 43.132236, 20.362167>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.905918, 42.826717, 19.695160> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.653000, 42.548214, 19.831064>,  <33.501251, 42.381111, 19.912607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.653000, 42.548214, 19.831064>,  <33.905918, 42.826717, 19.695160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653000, 42.548214, 19.831064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384463, -0.098746, -0.917844,
		0.672603, -0.710970, -0.205247,
		-0.632292, -0.696254, 0.339759,
		33.463310, 42.339336, 19.932991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883503, 42.313129, 19.170858>,  <33.905918, 42.826717, 19.695160>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883503, 42.313129, 19.170858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565151, 42.214722, 19.392145>,  <33.374142, 42.155678, 19.524918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565151, 42.214722, 19.392145>,  <33.883503, 42.313129, 19.170858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565151, 42.214722, 19.392145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485110, -0.287606, -0.825803,
		0.362275, -0.925611, 0.109552,
		-0.795880, -0.246023, 0.553216,
		33.326385, 42.140915, 19.558109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654118, 41.819649, 18.759127>,  <33.883503, 42.313129, 19.170858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654118, 41.819649, 18.759127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.352718, 41.914852, 19.004271>,  <33.171879, 41.971973, 19.151358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.352718, 41.914852, 19.004271>,  <33.654118, 41.819649, 18.759127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352718, 41.914852, 19.004271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642679, -0.463140, -0.610299,
		0.138585, -0.853730, 0.501935,
		-0.753497, 0.238005, 0.612859,
		33.126671, 41.986252, 19.188128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408810, 41.119705, 18.482958>,  <33.654118, 41.819649, 18.759127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408810, 41.119705, 18.482958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495457, 40.794220, 18.267200>,  <33.547447, 40.598930, 18.137747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495457, 40.794220, 18.267200>,  <33.408810, 41.119705, 18.482958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495457, 40.794220, 18.267200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657148, -0.287058, 0.696961,
		-0.721964, -0.505438, 0.472547,
		0.216622, -0.813714, -0.539393,
		33.560444, 40.550106, 18.105383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323982, 40.545139, 19.008038>,  <33.408810, 41.119705, 18.482958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323982, 40.545139, 19.008038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546825, 40.441410, 18.692472>,  <33.680531, 40.379173, 18.503134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.546825, 40.441410, 18.692472>,  <33.323982, 40.545139, 19.008038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.546825, 40.441410, 18.692472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646274, -0.461189, 0.607975,
		-0.521499, -0.848562, -0.089339,
		0.557107, -0.259321, -0.788914,
		33.713959, 40.363613, 18.455799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397636, 39.835564, 19.054295>,  <33.323982, 40.545139, 19.008038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397636, 39.835564, 19.054295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708160, 39.996330, 18.860052>,  <33.894474, 40.092789, 18.743507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.708160, 39.996330, 18.860052>,  <33.397636, 39.835564, 19.054295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708160, 39.996330, 18.860052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627766, -0.562715, 0.537831,
		-0.057096, -0.722368, -0.689148,
		0.776305, 0.401915, -0.485607,
		33.941051, 40.116905, 18.714371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893433, 39.333431, 18.928843>,  <33.397636, 39.835564, 19.054295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893433, 39.333431, 18.928843> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146473, 39.637459, 18.869360>,  <34.298298, 39.819874, 18.833672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.146473, 39.637459, 18.869360>,  <33.893433, 39.333431, 18.928843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146473, 39.637459, 18.869360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744462, -0.543830, 0.387330,
		0.213527, -0.355730, -0.909869,
		0.632599, 0.760069, -0.148705,
		34.336254, 39.865479, 18.824749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.451824, 38.959759, 18.568800>,  <33.893433, 39.333431, 18.928843>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.451824, 38.959759, 18.568800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.551910, 39.311722, 18.730366>,  <34.611961, 39.522900, 18.827305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.551910, 39.311722, 18.730366>,  <34.451824, 38.959759, 18.568800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551910, 39.311722, 18.730366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697839, -0.453091, 0.554734,
		0.671127, 0.143063, -0.727408,
		0.250220, 0.879910, 0.403917,
		34.626976, 39.575695, 18.851542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189762, 38.928139, 18.692610>,  <34.451824, 38.959759, 18.568800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189762, 38.928139, 18.692610> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.113396, 39.259056, 18.903942>,  <35.067577, 39.457607, 19.030743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.113396, 39.259056, 18.903942>,  <35.189762, 38.928139, 18.692610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113396, 39.259056, 18.903942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751521, -0.223067, 0.620852,
		0.631481, 0.515581, -0.579143,
		-0.190912, 0.827295, 0.528333,
		35.056122, 39.507244, 19.062443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841080, 39.266575, 18.807659>,  <35.189762, 38.928139, 18.692610>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841080, 39.266575, 18.807659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.588367, 39.402653, 19.086264>,  <35.436741, 39.484299, 19.253426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.588367, 39.402653, 19.086264>,  <35.841080, 39.266575, 18.807659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588367, 39.402653, 19.086264> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676388, -0.196955, 0.709724,
		0.378626, 0.919497, -0.105674,
		-0.631776, 0.340197, 0.696509,
		35.398834, 39.504711, 19.295216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267075, 39.520252, 19.310671>,  <35.841080, 39.266575, 18.807659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267075, 39.520252, 19.310671> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909756, 39.483250, 19.486612>,  <35.695366, 39.461048, 19.592176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.909756, 39.483250, 19.486612>,  <36.267075, 39.520252, 19.310671>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.909756, 39.483250, 19.486612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448080, -0.260337, 0.855248,
		0.035391, 0.961076, 0.274009,
		-0.893293, -0.092509, 0.439852,
		35.641769, 39.455498, 19.618568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311794, 39.798698, 19.906151>,  <36.267075, 39.520252, 19.310671>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311794, 39.798698, 19.906151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978264, 39.584419, 19.959475>,  <35.778145, 39.455853, 19.991468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.978264, 39.584419, 19.959475>,  <36.311794, 39.798698, 19.906151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978264, 39.584419, 19.959475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333914, -0.297133, 0.894547,
		-0.439593, 0.790407, 0.426632,
		-0.833822, -0.535695, 0.133310,
		35.728119, 39.423710, 19.999468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153488, 39.864693, 20.594618>,  <36.311794, 39.798698, 19.906151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153488, 39.864693, 20.594618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.963085, 39.533939, 20.474829>,  <35.848843, 39.335487, 20.402954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.963085, 39.533939, 20.474829>,  <36.153488, 39.864693, 20.594618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963085, 39.533939, 20.474829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255334, -0.455801, 0.852672,
		-0.841559, 0.329412, 0.428095,
		-0.476006, -0.826882, -0.299474,
		35.820282, 39.285873, 20.384987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697937, 39.809662, 21.078991>,  <36.153488, 39.864693, 20.594618>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697937, 39.809662, 21.078991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.752586, 39.451317, 20.909868>,  <35.785378, 39.236309, 20.808395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.752586, 39.451317, 20.909868>,  <35.697937, 39.809662, 21.078991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752586, 39.451317, 20.909868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244898, -0.383015, 0.890687,
		-0.959874, -0.225235, 0.167065,
		0.136626, -0.895862, -0.422806,
		35.793575, 39.182560, 20.783026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389885, 39.364254, 21.476738>,  <35.697937, 39.809662, 21.078991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389885, 39.364254, 21.476738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641636, 39.127586, 21.275217>,  <35.792686, 38.985588, 21.154305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641636, 39.127586, 21.275217>,  <35.389885, 39.364254, 21.476738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641636, 39.127586, 21.275217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255581, -0.454641, 0.853217,
		-0.733869, -0.665756, -0.134922,
		0.629376, -0.591667, -0.503802,
		35.830448, 38.950085, 21.124077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342136, 38.726963, 21.757343>,  <35.389885, 39.364254, 21.476738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342136, 38.726963, 21.757343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.700764, 38.683033, 21.585714>,  <35.915939, 38.656673, 21.482737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.700764, 38.683033, 21.585714>,  <35.342136, 38.726963, 21.757343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.700764, 38.683033, 21.585714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377323, -0.317904, 0.869807,
		-0.231931, -0.941741, -0.243583,
		0.896569, -0.109826, -0.429072,
		35.969734, 38.650085, 21.456993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553318, 38.068840, 21.964462>,  <35.342136, 38.726963, 21.757343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553318, 38.068840, 21.964462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876087, 38.281986, 21.862541>,  <36.069748, 38.409874, 21.801388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.876087, 38.281986, 21.862541>,  <35.553318, 38.068840, 21.964462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876087, 38.281986, 21.862541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462531, -0.301775, 0.833665,
		0.367341, -0.790558, -0.489978,
		0.806924, 0.532869, -0.254804,
		36.118164, 38.441849, 21.786100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500004, 37.331989, 21.947905>,  <35.553318, 38.068840, 21.964462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500004, 37.331989, 21.947905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188671, 37.203606, 22.163752>,  <35.001873, 37.126575, 22.293261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.188671, 37.203606, 22.163752>,  <35.500004, 37.331989, 21.947905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.188671, 37.203606, 22.163752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618084, 0.240631, -0.748378,
		0.110351, -0.916014, -0.385670,
		-0.778328, -0.320961, 0.539620,
		34.955173, 37.107319, 22.325638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134953, 37.157593, 21.443178>,  <35.500004, 37.331989, 21.947905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134953, 37.157593, 21.443178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868359, 37.155262, 21.741377>,  <34.708401, 37.153862, 21.920296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.868359, 37.155262, 21.741377>,  <35.134953, 37.157593, 21.443178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868359, 37.155262, 21.741377> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720682, 0.260992, -0.642262,
		-0.190823, -0.965323, -0.178149,
		-0.666486, -0.005830, 0.745495,
		34.668411, 37.153511, 21.965025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500301, 36.991295, 21.101803>,  <35.134953, 37.157593, 21.443178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500301, 36.991295, 21.101803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356129, 37.123154, 21.450840>,  <34.269627, 37.202271, 21.660263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.356129, 37.123154, 21.450840>,  <34.500301, 36.991295, 21.101803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356129, 37.123154, 21.450840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835226, 0.302458, -0.459256,
		-0.415318, -0.894343, 0.166318,
		-0.360428, 0.329650, 0.872595,
		34.248001, 37.222050, 21.712618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817837, 36.824875, 21.101379>,  <34.500301, 36.991295, 21.101803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817837, 36.824875, 21.101379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.813118, 37.115749, 21.375916>,  <33.810287, 37.290276, 21.540638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.813118, 37.115749, 21.375916>,  <33.817837, 36.824875, 21.101379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813118, 37.115749, 21.375916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755558, 0.443118, -0.482470,
		-0.654975, -0.524260, 0.544205,
		-0.011793, 0.727185, 0.686340,
		33.809582, 37.333904, 21.581818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063873, 36.812443, 21.299351>,  <33.817837, 36.824875, 21.101379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063873, 36.812443, 21.299351> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.200806, 37.167194, 21.423447>,  <33.282967, 37.380047, 21.497904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.200806, 37.167194, 21.423447>,  <33.063873, 36.812443, 21.299351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200806, 37.167194, 21.423447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742121, 0.457733, -0.489629,
		-0.576249, -0.062618, 0.814872,
		0.342334, 0.886882, 0.310238,
		33.303505, 37.433258, 21.516518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435413, 37.278248, 21.559740>,  <33.063873, 36.812443, 21.299351>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435413, 37.278248, 21.559740> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725040, 37.540432, 21.473860>,  <32.898819, 37.697742, 21.422333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.725040, 37.540432, 21.473860>,  <32.435413, 37.278248, 21.559740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.725040, 37.540432, 21.473860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585706, 0.419940, -0.693253,
		-0.364237, 0.627715, 0.687972,
		0.724072, 0.655458, -0.214699,
		32.942261, 37.737068, 21.409451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045391, 37.967384, 21.536539>,  <32.435413, 37.278248, 21.559740>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045391, 37.967384, 21.536539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.381287, 37.948517, 21.320162>,  <32.582825, 37.937199, 21.190334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.381287, 37.948517, 21.320162>,  <32.045391, 37.967384, 21.536539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381287, 37.948517, 21.320162> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449994, 0.497100, -0.741887,
		0.303894, 0.866410, 0.396208,
		0.839734, -0.047164, -0.540945,
		32.633205, 37.934368, 21.157879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570391, 38.542393, 21.804226>,  <32.045391, 37.967384, 21.536539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570391, 38.542393, 21.804226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233612, 38.378407, 21.944540>,  <31.031546, 38.280014, 22.028728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.233612, 38.378407, 21.944540>,  <31.570391, 38.542393, 21.804226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233612, 38.378407, 21.944540> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503733, -0.364294, 0.783290,
		-0.193336, 0.836191, 0.513231,
		-0.841947, -0.409969, 0.350786,
		30.981028, 38.255417, 22.049776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658543, 38.557987, 22.418997>,  <31.570391, 38.542393, 21.804226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658543, 38.557987, 22.418997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.388828, 38.263241, 22.438469>,  <31.226999, 38.086391, 22.450153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.388828, 38.263241, 22.438469>,  <31.658543, 38.557987, 22.418997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388828, 38.263241, 22.438469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400927, -0.309921, 0.862094,
		-0.620160, 0.600815, 0.504404,
		-0.674285, -0.736865, 0.048682,
		31.186543, 38.042183, 22.453074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457163, 38.525986, 23.145184>,  <31.658543, 38.557987, 22.418997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457163, 38.525986, 23.145184> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405367, 38.164284, 22.982426>,  <31.374289, 37.947262, 22.884771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.405367, 38.164284, 22.982426>,  <31.457163, 38.525986, 23.145184>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405367, 38.164284, 22.982426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380552, -0.424245, 0.821703,
		-0.915649, -0.048443, 0.399050,
		-0.129489, -0.904251, -0.406895,
		31.366520, 37.893009, 22.860357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172739, 38.021675, 23.636837>,  <31.457163, 38.525986, 23.145184>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172739, 38.021675, 23.636837> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353741, 37.782375, 23.372311>,  <31.462341, 37.638794, 23.213594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.353741, 37.782375, 23.372311>,  <31.172739, 38.021675, 23.636837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353741, 37.782375, 23.372311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377596, -0.543283, 0.749843,
		-0.807874, -0.589018, -0.019942,
		0.452505, -0.598249, -0.661315,
		31.489492, 37.602901, 23.173916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049984, 37.375420, 23.896559>,  <31.172739, 38.021675, 23.636837>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049984, 37.375420, 23.896559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.356092, 37.323940, 23.644274>,  <31.539757, 37.293053, 23.492903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.356092, 37.323940, 23.644274>,  <31.049984, 37.375420, 23.896559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.356092, 37.323940, 23.644274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450102, -0.593471, 0.667233,
		-0.460182, -0.794499, -0.396237,
		0.765271, -0.128701, -0.630710,
		31.585674, 37.285332, 23.455061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172209, 36.685581, 23.923569>,  <31.049984, 37.375420, 23.896559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172209, 36.685581, 23.923569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.503843, 36.827785, 23.750952>,  <31.702824, 36.913109, 23.647383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.503843, 36.827785, 23.750952>,  <31.172209, 36.685581, 23.923569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.503843, 36.827785, 23.750952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558220, -0.482563, 0.674924,
		0.031697, -0.800465, -0.598540,
		0.829087, 0.355511, -0.431540,
		31.752569, 36.934437, 23.621490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612343, 36.095985, 23.947063>,  <31.172209, 36.685581, 23.923569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612343, 36.095985, 23.947063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.822849, 36.431602, 23.891867>,  <31.949154, 36.632973, 23.858747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.822849, 36.431602, 23.891867>,  <31.612343, 36.095985, 23.947063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822849, 36.431602, 23.891867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736396, -0.368576, 0.567338,
		0.425162, -0.400190, -0.811841,
		0.526267, 0.839047, -0.137994,
		31.980730, 36.683315, 23.850468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.008287, 42.262245, 21.289965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979477, 41.901581, 21.119402>,  <30.962191, 41.685181, 21.017065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979477, 41.901581, 21.119402>,  <31.008287, 42.262245, 21.289965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979477, 41.901581, 21.119402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709844, -0.346665, 0.613143,
		-0.700666, -0.258520, 0.665007,
		-0.072025, -0.901660, -0.426406,
		30.957869, 41.631084, 20.991480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.183834, 41.829678, 21.846361>,  <31.008287, 42.262245, 21.289965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.183834, 41.829678, 21.846361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.269148, 41.590424, 21.537365>,  <31.320335, 41.446873, 21.351967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.269148, 41.590424, 21.537365>,  <31.183834, 41.829678, 21.846361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269148, 41.590424, 21.537365> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644072, -0.508460, 0.571524,
		-0.734630, -0.619437, 0.276797,
		0.213283, -0.598136, -0.772492,
		31.333132, 41.410984, 21.305616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131649, 41.111526, 22.070255>,  <31.183834, 41.829678, 21.846361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131649, 41.111526, 22.070255> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.406399, 41.201130, 21.793697>,  <31.571249, 41.254890, 21.627764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.406399, 41.201130, 21.793697>,  <31.131649, 41.111526, 22.070255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406399, 41.201130, 21.793697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725123, -0.147112, 0.672722,
		0.048982, -0.963420, -0.263481,
		0.686875, 0.224008, -0.691392,
		31.612461, 41.268333, 21.586279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640619, 40.545956, 21.874367>,  <31.131649, 41.111526, 22.070255>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640619, 40.545956, 21.874367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720209, 40.937061, 21.900835>,  <31.767963, 41.171726, 21.916716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.720209, 40.937061, 21.900835>,  <31.640619, 40.545956, 21.874367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720209, 40.937061, 21.900835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582461, -0.172290, 0.794390,
		0.788130, -0.119521, -0.603793,
		0.198974, 0.977768, 0.066170,
		31.779902, 41.230392, 21.920687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430767, 40.821236, 21.883280>,  <31.640619, 40.545956, 21.874367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430767, 40.821236, 21.883280> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.217316, 41.085873, 22.094004>,  <32.089245, 41.244656, 22.220438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.217316, 41.085873, 22.094004>,  <32.430767, 40.821236, 21.883280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217316, 41.085873, 22.094004> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556609, -0.194233, 0.807750,
		0.636728, 0.724268, -0.264601,
		-0.533633, 0.661596, 0.526808,
		32.057224, 41.284351, 22.252047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952545, 41.182503, 22.228233>,  <32.430767, 40.821236, 21.883280>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952545, 41.182503, 22.228233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.628933, 41.292492, 22.436024>,  <32.434765, 41.358486, 22.560698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.628933, 41.292492, 22.436024>,  <32.952545, 41.182503, 22.228233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628933, 41.292492, 22.436024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524324, -0.061756, 0.849276,
		0.265612, 0.959466, -0.094214,
		-0.809033, 0.274977, 0.519474,
		32.386223, 41.374985, 22.591866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189476, 41.685833, 22.678902>,  <32.952545, 41.182503, 22.228233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189476, 41.685833, 22.678902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.833889, 41.594345, 22.837612>,  <32.620537, 41.539452, 22.932838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.833889, 41.594345, 22.837612>,  <33.189476, 41.685833, 22.678902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833889, 41.594345, 22.837612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392919, 0.064195, 0.917329,
		-0.235282, 0.971373, 0.032801,
		-0.888964, -0.228719, 0.396775,
		32.567200, 41.525730, 22.956644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098389, 42.105099, 23.281363>,  <33.189476, 41.685833, 22.678902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098389, 42.105099, 23.281363> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.876667, 41.776073, 23.332176>,  <32.743633, 41.578659, 23.362665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.876667, 41.776073, 23.332176>,  <33.098389, 42.105099, 23.281363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876667, 41.776073, 23.332176> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383718, -0.117114, 0.915994,
		-0.738584, 0.556486, 0.380548,
		-0.554306, -0.822561, 0.127035,
		32.710377, 41.529305, 23.370287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811455, 42.173294, 24.013409>,  <33.098389, 42.105099, 23.281363>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811455, 42.173294, 24.013409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.784599, 41.789482, 23.904016>,  <32.768486, 41.559196, 23.838381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.784599, 41.789482, 23.904016>,  <32.811455, 42.173294, 24.013409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784599, 41.789482, 23.904016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357492, -0.279037, 0.891256,
		-0.931500, -0.037927, 0.361760,
		-0.067141, -0.959531, -0.273481,
		32.764458, 41.501621, 23.821972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.459038, 41.872547, 24.650869>,  <32.811455, 42.173294, 24.013409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.459038, 41.872547, 24.650869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.616886, 41.587200, 24.419222>,  <32.711597, 41.415993, 24.280233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.616886, 41.587200, 24.419222>,  <32.459038, 41.872547, 24.650869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.616886, 41.587200, 24.419222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403719, -0.431558, 0.806703,
		-0.825398, -0.552146, 0.117696,
		0.394625, -0.713367, -0.579119,
		32.735275, 41.373192, 24.245487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.341454, 41.302822, 25.015797>,  <32.459038, 41.872547, 24.650869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.341454, 41.302822, 25.015797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.644161, 41.176754, 24.786724>,  <32.825787, 41.101112, 24.649281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.644161, 41.176754, 24.786724>,  <32.341454, 41.302822, 25.015797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644161, 41.176754, 24.786724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471256, -0.344092, 0.812107,
		-0.453010, -0.884458, -0.111871,
		0.756769, -0.315173, -0.572684,
		32.871193, 41.082203, 24.614920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521812, 40.538544, 25.176050>,  <32.341454, 41.302822, 25.015797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521812, 40.538544, 25.176050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.839916, 40.732285, 25.030191>,  <33.030777, 40.848530, 24.942677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.839916, 40.732285, 25.030191>,  <32.521812, 40.538544, 25.176050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839916, 40.732285, 25.030191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514217, -0.220250, 0.828897,
		0.321166, -0.846694, -0.424218,
		0.795257, 0.484354, -0.364648,
		33.078495, 40.877590, 24.920797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397915, 39.823200, 25.201412>,  <32.521812, 40.538544, 25.176050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397915, 39.823200, 25.201412> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.085205, 39.799442, 25.449703>,  <31.897579, 39.785187, 25.598679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.085205, 39.799442, 25.449703>,  <32.397915, 39.823200, 25.201412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.085205, 39.799442, 25.449703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574212, 0.456698, -0.679491,
		-0.243130, -0.887637, -0.391136,
		-0.781773, -0.059390, 0.620729,
		31.850674, 39.781624, 25.635921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796480, 39.606339, 24.825922>,  <32.397915, 39.823200, 25.201412>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796480, 39.606339, 24.825922> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629517, 39.782738, 25.143738>,  <31.529339, 39.888577, 25.334427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629517, 39.782738, 25.143738>,  <31.796480, 39.606339, 24.825922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629517, 39.782738, 25.143738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584556, 0.539130, -0.606328,
		-0.695749, -0.717538, 0.032751,
		-0.417406, 0.440996, 0.794540,
		31.504295, 39.915035, 25.382099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053343, 39.588833, 24.708256>,  <31.796480, 39.606339, 24.825922>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053343, 39.588833, 24.708256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105303, 39.882072, 24.975298>,  <31.136478, 40.058014, 25.135523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105303, 39.882072, 24.975298>,  <31.053343, 39.588833, 24.708256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105303, 39.882072, 24.975298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587506, 0.599294, -0.543767,
		-0.798725, -0.321588, 0.508546,
		0.129900, 0.733095, 0.667607,
		31.144272, 40.102001, 25.175579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356253, 39.835590, 24.802336>,  <31.053343, 39.588833, 24.708256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356253, 39.835590, 24.802336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.607822, 40.115280, 24.938299>,  <30.758764, 40.283092, 25.019878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.607822, 40.115280, 24.938299>,  <30.356253, 39.835590, 24.802336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.607822, 40.115280, 24.938299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615245, 0.714902, -0.332248,
		-0.475318, -0.000169, 0.879814,
		0.628925, 0.699225, 0.339909,
		30.796499, 40.325047, 25.040272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964008, 40.338097, 25.219999>,  <30.356253, 39.835590, 24.802336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964008, 40.338097, 25.219999> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302158, 40.527252, 25.120632>,  <30.505049, 40.640747, 25.061012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.302158, 40.527252, 25.120632>,  <29.964008, 40.338097, 25.219999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302158, 40.527252, 25.120632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533919, 0.733801, -0.420080,
		-0.016365, 0.487760, 0.872824,
		0.845377, 0.472892, -0.248416,
		30.555771, 40.669121, 25.046108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.863184, 41.098778, 25.382227>,  <29.964008, 40.338097, 25.219999>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.863184, 41.098778, 25.382227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169510, 41.070503, 25.126562>,  <30.353306, 41.053539, 24.973164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.169510, 41.070503, 25.126562>,  <29.863184, 41.098778, 25.382227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.169510, 41.070503, 25.126562> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305905, 0.834234, -0.458776,
		0.565639, 0.546861, 0.617248,
		0.765816, -0.070683, -0.639163,
		30.399254, 41.049297, 24.934813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.043089, 41.835285, 25.245310>,  <29.863184, 41.098778, 25.382227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.043089, 41.835285, 25.245310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190620, 41.600773, 24.956799>,  <30.279139, 41.460064, 24.783691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.190620, 41.600773, 24.956799>,  <30.043089, 41.835285, 25.245310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190620, 41.600773, 24.956799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171036, 0.719927, -0.672645,
		0.913626, 0.371455, 0.165254,
		0.368828, -0.586282, -0.721276,
		30.301270, 41.424889, 24.740416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438675, 42.288944, 24.854364>,  <30.043089, 41.835285, 25.245310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438675, 42.288944, 24.854364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340475, 41.969593, 24.634428>,  <30.281555, 41.777981, 24.502466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.340475, 41.969593, 24.634428>,  <30.438675, 42.288944, 24.854364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.340475, 41.969593, 24.634428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507624, 0.589090, -0.628722,
		0.825862, 0.124762, -0.549896,
		-0.245498, -0.798378, -0.549839,
		30.266827, 41.730080, 24.469477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350424, 42.488106, 24.228722>,  <30.438675, 42.288944, 24.854364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350424, 42.488106, 24.228722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.167824, 42.133419, 24.199499>,  <30.058264, 41.920609, 24.181965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.167824, 42.133419, 24.199499>,  <30.350424, 42.488106, 24.228722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167824, 42.133419, 24.199499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605092, 0.369614, -0.705159,
		0.652281, -0.277699, -0.705275,
		-0.456501, -0.886718, -0.073059,
		30.030872, 41.867405, 24.177582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467888, 42.262047, 23.577879>,  <30.350424, 42.488106, 24.228722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467888, 42.262047, 23.577879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.116217, 42.129406, 23.714750>,  <29.905214, 42.049820, 23.796873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.116217, 42.129406, 23.714750>,  <30.467888, 42.262047, 23.577879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.116217, 42.129406, 23.714750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464963, 0.440005, -0.768248,
		0.104191, -0.834528, -0.541025,
		-0.879178, -0.331601, 0.342180,
		29.852463, 42.029926, 23.817404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110134, 42.287598, 22.967207>,  <30.467888, 42.262047, 23.577879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110134, 42.287598, 22.967207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816677, 42.133991, 23.191458>,  <29.640602, 42.041828, 23.326008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.816677, 42.133991, 23.191458>,  <30.110134, 42.287598, 22.967207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.816677, 42.133991, 23.191458> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671668, 0.284603, -0.684005,
		0.103109, -0.878371, -0.466725,
		-0.733642, -0.384011, 0.560629,
		29.596584, 42.018787, 23.359646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.699852, 41.988045, 22.492771>,  <30.110134, 42.287598, 22.967207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.699852, 41.988045, 22.492771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463881, 42.059265, 22.807802>,  <29.322298, 42.101997, 22.996820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.463881, 42.059265, 22.807802>,  <29.699852, 41.988045, 22.492771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463881, 42.059265, 22.807802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642505, 0.487250, -0.591417,
		-0.489051, -0.854918, -0.173043,
		-0.589928, 0.178052, 0.787580,
		29.286901, 42.112682, 23.044077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075518, 41.732521, 22.278599>,  <29.699852, 41.988045, 22.492771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075518, 41.732521, 22.278599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985065, 41.980427, 22.579199>,  <28.930794, 42.129169, 22.759560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985065, 41.980427, 22.579199>,  <29.075518, 41.732521, 22.278599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985065, 41.980427, 22.579199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613608, 0.508547, -0.604041,
		-0.756539, -0.597717, 0.265298,
		-0.226129, 0.619769, 0.751499,
		28.917227, 42.166359, 22.804649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087337, 41.108723, 21.812626>,  <29.075518, 41.732521, 22.278599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087337, 41.108723, 21.812626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081757, 40.911701, 21.464558>,  <29.078407, 40.793488, 21.255716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081757, 40.911701, 21.464558>,  <29.087337, 41.108723, 21.812626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081757, 40.911701, 21.464558> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481831, -0.765863, 0.425786,
		-0.876153, -0.413334, 0.248013,
		-0.013952, -0.492554, -0.870170,
		29.077570, 40.763935, 21.203506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952681, 40.378487, 21.954149>,  <29.087337, 41.108723, 21.812626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952681, 40.378487, 21.954149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081928, 40.366787, 21.575787>,  <29.159477, 40.359768, 21.348770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.081928, 40.366787, 21.575787>,  <28.952681, 40.378487, 21.954149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.081928, 40.366787, 21.575787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461693, -0.867631, 0.184545,
		-0.826095, -0.496348, -0.266845,
		0.323121, -0.029251, -0.945906,
		29.178865, 40.358013, 21.292015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840874, 39.718735, 21.794538>,  <28.952681, 40.378487, 21.954149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840874, 39.718735, 21.794538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116037, 39.824818, 21.524294>,  <29.281136, 39.888466, 21.362148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.116037, 39.824818, 21.524294>,  <28.840874, 39.718735, 21.794538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.116037, 39.824818, 21.524294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424090, -0.902287, 0.077623,
		-0.589008, -0.339917, -0.733162,
		0.687908, 0.265206, -0.675610,
		29.322411, 39.904381, 21.321611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903027, 39.140987, 21.494259>,  <28.840874, 39.718735, 21.794538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.903027, 39.140987, 21.494259> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228922, 39.347717, 21.389116>,  <29.424459, 39.471756, 21.326031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228922, 39.347717, 21.389116>,  <28.903027, 39.140987, 21.494259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228922, 39.347717, 21.389116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533379, -0.845820, -0.009799,
		-0.227395, -0.132219, -0.964785,
		0.814738, 0.516824, -0.262858,
		29.473343, 39.502766, 21.310259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.193733, 38.761440, 20.966700>,  <28.903027, 39.140987, 21.494259>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.193733, 38.761440, 20.966700> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.483513, 38.991539, 21.118629>,  <29.657381, 39.129597, 21.209787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.483513, 38.991539, 21.118629>,  <29.193733, 38.761440, 20.966700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.483513, 38.991539, 21.118629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582077, -0.805664, 0.109963,
		0.369268, 0.141425, -0.918499,
		0.724450, 0.575243, 0.379826,
		29.700848, 39.164112, 21.232576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.903164, 38.471291, 20.658131>,  <29.193733, 38.761440, 20.966700>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.903164, 38.471291, 20.658131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.995693, 38.690708, 20.979525>,  <30.051210, 38.822357, 21.172361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.995693, 38.690708, 20.979525>,  <29.903164, 38.471291, 20.658131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.995693, 38.690708, 20.979525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667955, -0.690016, 0.278772,
		0.707336, 0.472206, -0.526019,
		0.231324, 0.548543, 0.803486,
		30.065090, 38.855270, 21.220570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.650448, 38.410374, 20.705717>,  <29.903164, 38.471291, 20.658131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.650448, 38.410374, 20.705717> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.512554, 38.485363, 21.073633>,  <30.429817, 38.530357, 21.294382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.512554, 38.485363, 21.073633>,  <30.650448, 38.410374, 20.705717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512554, 38.485363, 21.073633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668839, -0.638465, 0.380811,
		0.658645, 0.746470, 0.094711,
		-0.344734, 0.187473, 0.919789,
		30.409134, 38.541603, 21.349569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247513, 38.311729, 21.128317>,  <30.650448, 38.410374, 20.705717>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247513, 38.311729, 21.128317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.980167, 38.343639, 21.424135>,  <30.819761, 38.362785, 21.601625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.980167, 38.343639, 21.424135>,  <31.247513, 38.311729, 21.128317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.980167, 38.343639, 21.424135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598377, -0.532934, 0.598269,
		0.441857, 0.842388, 0.308456,
		-0.668361, 0.079777, 0.739546,
		30.779659, 38.367573, 21.646000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014000, 38.584915, 21.193518>,  <31.247513, 38.311729, 21.128317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014000, 38.584915, 21.193518> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.295387, 38.382656, 20.993732>,  <32.464218, 38.261303, 20.873861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.295387, 38.382656, 20.993732>,  <32.014000, 38.584915, 21.193518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295387, 38.382656, 20.993732> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271054, 0.458764, -0.846207,
		0.657015, 0.730657, 0.185667,
		0.703464, -0.505645, -0.499462,
		32.506428, 38.230961, 20.843893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391048, 39.032200, 20.671055>,  <32.014000, 38.584915, 21.193518>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391048, 39.032200, 20.671055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.460392, 38.656662, 20.552046>,  <32.501999, 38.431339, 20.480640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.460392, 38.656662, 20.552046>,  <32.391048, 39.032200, 20.671055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.460392, 38.656662, 20.552046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264060, 0.246728, -0.932415,
		0.948798, 0.240209, -0.205138,
		0.173361, -0.938842, -0.297525,
		32.512402, 38.375008, 20.462788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670536, 39.214447, 20.085978>,  <32.391048, 39.032200, 20.671055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670536, 39.214447, 20.085978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.573555, 38.829060, 20.040476>,  <32.515366, 38.597828, 20.013176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.573555, 38.829060, 20.040476>,  <32.670536, 39.214447, 20.085978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573555, 38.829060, 20.040476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345735, 0.195360, -0.917770,
		0.906467, -0.183191, -0.380471,
		-0.242456, -0.963471, -0.113752,
		32.500816, 38.540020, 20.006350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.060551, 38.873177, 19.487423>,  <32.670536, 39.214447, 20.085978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.060551, 38.873177, 19.487423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.736626, 38.647861, 19.553030>,  <32.542271, 38.512672, 19.592394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.736626, 38.647861, 19.553030>,  <33.060551, 38.873177, 19.487423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736626, 38.647861, 19.553030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335494, 0.215278, -0.917115,
		0.481294, -0.797721, -0.363316,
		-0.809815, -0.563292, 0.164019,
		32.493683, 38.478874, 19.602236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058521, 38.379154, 18.983147>,  <33.060551, 38.873177, 19.487423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058521, 38.379154, 18.983147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.680061, 38.420723, 19.105783>,  <32.452984, 38.445663, 19.179365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.680061, 38.420723, 19.105783>,  <33.058521, 38.379154, 18.983147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680061, 38.420723, 19.105783> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287803, 0.163585, -0.943615,
		-0.148218, -0.981040, -0.124866,
		-0.946151, 0.103924, 0.306592,
		32.396217, 38.451900, 19.197762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.649345, 38.288841, 18.315418>,  <33.058521, 38.379154, 18.983147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.649345, 38.288841, 18.315418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.374580, 38.416821, 18.576427>,  <32.209721, 38.493607, 18.733032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.374580, 38.416821, 18.576427>,  <32.649345, 38.288841, 18.315418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.374580, 38.416821, 18.576427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577296, 0.305181, -0.757360,
		-0.441454, -0.896938, -0.024928,
		-0.686912, 0.319948, 0.652521,
		32.168507, 38.512806, 18.772184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.061024, 37.920860, 18.230333>,  <32.649345, 38.288841, 18.315418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.061024, 37.920860, 18.230333> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.997097, 38.284889, 18.383291>,  <31.958740, 38.503307, 18.475065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.997097, 38.284889, 18.383291>,  <32.061024, 37.920860, 18.230333>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997097, 38.284889, 18.383291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526842, 0.248955, -0.812686,
		-0.834802, -0.331344, 0.439677,
		-0.159819, 0.910073, 0.382395,
		31.949152, 38.557911, 18.498011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455503, 38.016632, 17.897331>,  <32.061024, 37.920860, 18.230333>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455503, 38.016632, 17.897331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.589607, 38.366642, 18.037006>,  <31.670069, 38.576649, 18.120811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.589607, 38.366642, 18.037006>,  <31.455503, 38.016632, 17.897331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.589607, 38.366642, 18.037006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545137, 0.482462, -0.685607,
		-0.768393, 0.039500, 0.638758,
		0.335259, 0.875026, 0.349188,
		31.690186, 38.629150, 18.141762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876093, 38.485260, 17.810928>,  <31.455503, 38.016632, 17.897331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876093, 38.485260, 17.810928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203573, 38.713097, 17.840042>,  <31.400061, 38.849800, 17.857510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.203573, 38.713097, 17.840042>,  <30.876093, 38.485260, 17.810928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203573, 38.713097, 17.840042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325662, 0.564965, -0.758128,
		-0.472944, 0.596976, 0.648031,
		0.818699, 0.569591, 0.072784,
		31.449183, 38.883972, 17.861877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.774448, 35.511593, 31.306128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.111210, 35.686813, 31.180067>,  <40.313267, 35.791946, 31.104431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.111210, 35.686813, 31.180067>,  <39.774448, 35.511593, 31.306128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111210, 35.686813, 31.180067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502904, 0.425120, -0.752570,
		-0.195686, 0.792078, 0.578204,
		0.841900, 0.438048, -0.315149,
		40.363781, 35.818230, 31.085522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545116, 36.235504, 30.981861>,  <39.774448, 35.511593, 31.306128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545116, 36.235504, 30.981861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.902748, 36.105278, 30.858812>,  <40.117325, 36.027142, 30.784983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.902748, 36.105278, 30.858812>,  <39.545116, 36.235504, 30.981861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.902748, 36.105278, 30.858812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149834, 0.429834, -0.890389,
		0.422110, 0.842169, 0.335523,
		0.894077, -0.325569, -0.307623,
		40.170971, 36.007607, 30.766525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.935532, 36.732853, 30.636171>,  <39.545116, 36.235504, 30.981861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.935532, 36.732853, 30.636171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.052147, 36.385368, 30.476004>,  <40.122116, 36.176876, 30.379904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.052147, 36.385368, 30.476004>,  <39.935532, 36.732853, 30.636171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052147, 36.385368, 30.476004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233148, 0.341446, -0.910525,
		0.927710, 0.358813, -0.102994,
		0.291542, -0.868716, -0.400419,
		40.139610, 36.124752, 30.355877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203640, 36.873280, 29.904810>,  <39.935532, 36.732853, 30.636171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203640, 36.873280, 29.904810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.156322, 36.476208, 29.895136>,  <40.127930, 36.237965, 29.889332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.156322, 36.476208, 29.895136>,  <40.203640, 36.873280, 29.904810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156322, 36.476208, 29.895136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372296, 0.066921, -0.925698,
		0.920544, -0.100501, -0.377489,
		-0.118295, -0.992684, -0.024187,
		40.120834, 36.178402, 29.887880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233944, 36.701378, 29.218699>,  <40.203640, 36.873280, 29.904810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233944, 36.701378, 29.218699> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.088322, 36.344471, 29.325521>,  <40.000950, 36.130325, 29.389614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.088322, 36.344471, 29.325521>,  <40.233944, 36.701378, 29.218699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088322, 36.344471, 29.325521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525851, -0.039746, -0.849648,
		0.768729, -0.449751, -0.454731,
		-0.364056, -0.892269, 0.267056,
		39.979103, 36.076790, 29.405638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244202, 36.268429, 28.592947>,  <40.233944, 36.701378, 29.218699>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244202, 36.268429, 28.592947> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976601, 36.101719, 28.839111>,  <39.816040, 36.001694, 28.986811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976601, 36.101719, 28.839111>,  <40.244202, 36.268429, 28.592947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976601, 36.101719, 28.839111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655192, -0.060257, -0.753056,
		0.350938, -0.907010, -0.232756,
		-0.669004, -0.416775, 0.615412,
		39.775898, 35.976688, 29.023735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.112694, 35.577801, 28.352198>,  <40.244202, 36.268429, 28.592947>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.112694, 35.577801, 28.352198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.791157, 35.689037, 28.562532>,  <39.598236, 35.755779, 28.688732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.791157, 35.689037, 28.562532>,  <40.112694, 35.577801, 28.352198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.791157, 35.689037, 28.562532> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584748, -0.207250, -0.784294,
		-0.109124, -0.937931, 0.329208,
		-0.803842, 0.278088, 0.525837,
		39.550003, 35.772465, 28.720284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.569904, 34.980057, 28.238247>,  <40.112694, 35.577801, 28.352198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.569904, 34.980057, 28.238247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.394936, 35.323463, 28.345297>,  <39.289955, 35.529507, 28.409527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.394936, 35.323463, 28.345297>,  <39.569904, 34.980057, 28.238247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394936, 35.323463, 28.345297> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694667, -0.133602, -0.706816,
		-0.571055, -0.495083, 0.654820,
		-0.437418, 0.858513, 0.267623,
		39.263710, 35.581017, 28.425585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.939743, 34.781643, 28.168341>,  <39.569904, 34.980057, 28.238247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.939743, 34.781643, 28.168341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.923988, 35.180893, 28.187084>,  <38.914536, 35.420444, 28.198330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.923988, 35.180893, 28.187084>,  <38.939743, 34.781643, 28.168341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.923988, 35.180893, 28.187084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754343, 0.001055, -0.656480,
		-0.655298, -0.061205, 0.752887,
		-0.039385, 0.998125, 0.046861,
		38.912174, 35.480331, 28.201143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.286480, 34.910862, 28.332380>,  <38.939743, 34.781643, 28.168341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.286480, 34.910862, 28.332380> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.402916, 35.248211, 28.151722>,  <38.472778, 35.450623, 28.043327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.402916, 35.248211, 28.151722>,  <38.286480, 34.910862, 28.332380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402916, 35.248211, 28.151722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733071, -0.106705, -0.671731,
		-0.614713, 0.526624, 0.587192,
		0.291093, 0.843375, -0.451645,
		38.490246, 35.501225, 28.016228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634537, 35.287083, 28.108868>,  <38.286480, 34.910862, 28.332380>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634537, 35.287083, 28.108868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919369, 35.437527, 27.871725>,  <38.090267, 35.527794, 27.729439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.919369, 35.437527, 27.871725>,  <37.634537, 35.287083, 28.108868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.919369, 35.437527, 27.871725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683268, 0.176991, -0.708392,
		-0.161504, 0.909513, 0.383017,
		0.712082, 0.376112, -0.592857,
		38.132992, 35.550362, 27.693869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252258, 35.750614, 27.658579>,  <37.634537, 35.287083, 28.108868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252258, 35.750614, 27.658579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.604931, 35.732944, 27.470669>,  <37.816532, 35.722343, 27.357922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.604931, 35.732944, 27.470669>,  <37.252258, 35.750614, 27.658579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.604931, 35.732944, 27.470669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449843, 0.221814, -0.865124,
		0.142420, 0.974088, 0.175697,
		0.881679, -0.044175, -0.469777,
		37.869434, 35.719692, 27.329735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.669636, 36.223579, 27.720659>,  <37.252258, 35.750614, 27.658579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.669636, 36.223579, 27.720659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386097, 35.965538, 27.834772>,  <36.215973, 35.810715, 27.903240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.386097, 35.965538, 27.834772>,  <36.669636, 36.223579, 27.720659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.386097, 35.965538, 27.834772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542806, -0.240599, 0.804657,
		-0.450446, 0.725230, 0.520712,
		-0.708844, -0.645100, 0.285282,
		36.173443, 35.772007, 27.920357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.477676, 36.423466, 28.372654>,  <36.669636, 36.223579, 27.720659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.477676, 36.423466, 28.372654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383202, 36.038002, 28.322742>,  <36.326515, 35.806725, 28.292795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.383202, 36.038002, 28.322742>,  <36.477676, 36.423466, 28.372654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.383202, 36.038002, 28.322742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485892, -0.228331, 0.843667,
		-0.841501, 0.138636, 0.522165,
		-0.236189, -0.963662, -0.124779,
		36.312344, 35.748905, 28.285309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306660, 36.193535, 28.968632>,  <36.477676, 36.423466, 28.372654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306660, 36.193535, 28.968632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356754, 35.829388, 28.810871>,  <36.386810, 35.610901, 28.716215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356754, 35.829388, 28.810871>,  <36.306660, 36.193535, 28.968632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356754, 35.829388, 28.810871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323146, -0.338423, 0.883768,
		-0.938026, -0.238130, 0.251798,
		0.125237, -0.910365, -0.394400,
		36.394325, 35.556278, 28.692551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889824, 35.648735, 29.327927>,  <36.306660, 36.193535, 28.968632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889824, 35.648735, 29.327927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193642, 35.441071, 29.171177>,  <36.375931, 35.316471, 29.077127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.193642, 35.441071, 29.171177>,  <35.889824, 35.648735, 29.327927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193642, 35.441071, 29.171177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213758, -0.369777, 0.904197,
		-0.614334, -0.770541, -0.169885,
		0.759541, -0.519164, -0.391876,
		36.421505, 35.285320, 29.053614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774040, 35.039150, 29.551146>,  <35.889824, 35.648735, 29.327927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774040, 35.039150, 29.551146> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153042, 35.004356, 29.428072>,  <36.380444, 34.983479, 29.354227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.153042, 35.004356, 29.428072>,  <35.774040, 35.039150, 29.551146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.153042, 35.004356, 29.428072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269704, -0.299441, 0.915202,
		-0.171744, -0.950141, -0.260260,
		0.947504, -0.086987, -0.307684,
		36.437294, 34.978260, 29.335766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048931, 34.287891, 29.556576>,  <35.774040, 35.039150, 29.551146>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048931, 34.287891, 29.556576> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356606, 34.534485, 29.623871>,  <36.541210, 34.682442, 29.664248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.356606, 34.534485, 29.623871>,  <36.048931, 34.287891, 29.556576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.356606, 34.534485, 29.623871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249725, -0.532322, 0.808870,
		0.588214, -0.580155, -0.563405,
		0.769183, 0.616484, 0.168240,
		36.587360, 34.719429, 29.674343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.427208, 33.856422, 29.952812>,  <36.048931, 34.287891, 29.556576>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.427208, 33.856422, 29.952812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618332, 34.204678, 29.999624>,  <36.733006, 34.413631, 30.027712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.618332, 34.204678, 29.999624>,  <36.427208, 33.856422, 29.952812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618332, 34.204678, 29.999624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451207, -0.357534, 0.817668,
		0.753731, -0.337884, -0.563669,
		0.477808, 0.870634, 0.117029,
		36.761673, 34.465866, 30.034733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140999, 33.631050, 30.130163>,  <36.427208, 33.856422, 29.952812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140999, 33.631050, 30.130163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116253, 34.017143, 30.231749>,  <37.101406, 34.248798, 30.292700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.116253, 34.017143, 30.231749>,  <37.140999, 33.631050, 30.130163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116253, 34.017143, 30.231749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542743, -0.181010, 0.820162,
		0.837618, 0.188574, -0.512676,
		-0.061862, 0.965233, 0.253964,
		37.097694, 34.306713, 30.307938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.846516, 33.974720, 30.288755>,  <37.140999, 33.631050, 30.130163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.846516, 33.974720, 30.288755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567505, 34.171165, 30.497471>,  <37.400097, 34.289032, 30.622700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.567505, 34.171165, 30.497471>,  <37.846516, 33.974720, 30.288755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.567505, 34.171165, 30.497471> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428427, -0.297858, 0.853071,
		0.574373, 0.818589, -0.002641,
		-0.697528, 0.491113, 0.521787,
		37.358246, 34.318501, 30.654007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214302, 34.249603, 30.817879>,  <37.846516, 33.974720, 30.288755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214302, 34.249603, 30.817879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837185, 34.242573, 30.951050>,  <37.610916, 34.238354, 31.030952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.837185, 34.242573, 30.951050>,  <38.214302, 34.249603, 30.817879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.837185, 34.242573, 30.951050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326224, -0.254577, 0.910367,
		0.068752, 0.966893, 0.245747,
		-0.942789, -0.017579, 0.332927,
		37.554348, 34.237301, 31.050928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334393, 34.299587, 31.432665>,  <38.214302, 34.249603, 30.817879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334393, 34.299587, 31.432665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941559, 34.246811, 31.486481>,  <37.705860, 34.215145, 31.518770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.941559, 34.246811, 31.486481>,  <38.334393, 34.299587, 31.432665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.941559, 34.246811, 31.486481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163296, -0.239588, 0.957043,
		-0.094037, 0.961868, 0.256841,
		-0.982085, -0.131939, 0.134539,
		37.646935, 34.207230, 31.526842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120670, 34.679222, 32.065960>,  <38.334393, 34.299587, 31.432665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120670, 34.679222, 32.065960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825165, 34.414024, 32.017513>,  <37.647861, 34.254906, 31.988445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825165, 34.414024, 32.017513>,  <38.120670, 34.679222, 32.065960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825165, 34.414024, 32.017513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159394, -0.346489, 0.924413,
		-0.654845, 0.663616, 0.361650,
		-0.738763, -0.662992, -0.121120,
		37.603535, 34.215126, 31.981176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640865, 34.751614, 32.601376>,  <38.120670, 34.679222, 32.065960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640865, 34.751614, 32.601376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610622, 34.382442, 32.450390>,  <37.592476, 34.160938, 32.359798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.610622, 34.382442, 32.450390>,  <37.640865, 34.751614, 32.601376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610622, 34.382442, 32.450390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430430, -0.371676, 0.822549,
		-0.899452, -0.100279, 0.425360,
		-0.075612, -0.922931, -0.377468,
		37.587940, 34.105564, 32.337151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.463440, 34.467827, 33.134224>,  <37.640865, 34.751614, 32.601376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.463440, 34.467827, 33.134224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596455, 34.179134, 32.891403>,  <37.676266, 34.005917, 32.745708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.596455, 34.179134, 32.891403>,  <37.463440, 34.467827, 33.134224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596455, 34.179134, 32.891403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550671, -0.373964, 0.746266,
		-0.765623, -0.582450, 0.273081,
		0.332540, -0.721736, -0.607053,
		37.696217, 33.962612, 32.709286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147812, 35.013863, 33.686394>,  <37.463440, 34.467827, 33.134224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147812, 35.013863, 33.686394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050076, 35.242840, 33.999470>,  <36.991432, 35.380226, 34.187317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.050076, 35.242840, 33.999470>,  <37.147812, 35.013863, 33.686394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.050076, 35.242840, 33.999470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239725, 0.746443, -0.620769,
		-0.939589, -0.339313, -0.045161,
		-0.244345, 0.572441, 0.782692,
		36.976772, 35.414574, 34.234276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.436184, 35.228550, 33.713490>,  <37.147812, 35.013863, 33.686394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.436184, 35.228550, 33.713490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621468, 35.507423, 33.932346>,  <36.732639, 35.674747, 34.063660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.621468, 35.507423, 33.932346>,  <36.436184, 35.228550, 33.713490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621468, 35.507423, 33.932346> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358514, 0.712009, -0.603746,
		-0.810495, 0.083505, 0.579763,
		0.463212, 0.697187, 0.547142,
		36.760433, 35.716579, 34.096489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934837, 35.797935, 34.039959>,  <36.436184, 35.228550, 33.713490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934837, 35.797935, 34.039959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308334, 35.898357, 33.937908>,  <36.532433, 35.958611, 33.876678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308334, 35.898357, 33.937908>,  <35.934837, 35.797935, 34.039959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308334, 35.898357, 33.937908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357433, 0.616207, -0.701806,
		-0.018986, 0.746497, 0.665117,
		0.933746, 0.251059, -0.255123,
		36.588459, 35.973675, 33.861370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968636, 36.594612, 33.993587>,  <35.934837, 35.797935, 34.039959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968636, 36.594612, 33.993587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264816, 36.459114, 33.761387>,  <36.442524, 36.377815, 33.622066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.264816, 36.459114, 33.761387>,  <35.968636, 36.594612, 33.993587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264816, 36.459114, 33.761387> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321083, 0.580489, -0.748290,
		0.590455, 0.740462, 0.321059,
		0.740451, -0.338745, -0.580503,
		36.486950, 36.357491, 33.587234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416386, 37.151089, 33.650200>,  <35.968636, 36.594612, 33.993587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.416386, 37.151089, 33.650200> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396278, 36.820644, 33.425694>,  <36.384212, 36.622379, 33.290989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396278, 36.820644, 33.425694>,  <36.416386, 37.151089, 33.650200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396278, 36.820644, 33.425694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349382, 0.541013, -0.765007,
		0.935631, 0.157639, -0.315824,
		-0.050270, -0.826108, -0.561265,
		36.381199, 36.572811, 33.257313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526646, 37.445854, 32.935303>,  <36.416386, 37.151089, 33.650200>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526646, 37.445854, 32.935303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381317, 37.076523, 32.885571>,  <36.294121, 36.854923, 32.855732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381317, 37.076523, 32.885571>,  <36.526646, 37.445854, 32.935303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381317, 37.076523, 32.885571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530644, 0.314773, -0.786978,
		0.765777, -0.219949, -0.604324,
		-0.363320, -0.923331, -0.124332,
		36.272320, 36.799522, 32.848270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452587, 37.348347, 32.150139>,  <36.526646, 37.445854, 32.935303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452587, 37.348347, 32.150139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226234, 37.050655, 32.292072>,  <36.090424, 36.872040, 32.377232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.226234, 37.050655, 32.292072>,  <36.452587, 37.348347, 32.150139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226234, 37.050655, 32.292072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666952, 0.160179, -0.727679,
		0.484720, -0.648438, -0.587005,
		-0.565881, -0.744225, 0.354835,
		36.056469, 36.827389, 32.398521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327488, 36.872841, 31.610043>,  <36.452587, 37.348347, 32.150139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327488, 36.872841, 31.610043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037792, 36.816071, 31.879957>,  <35.863976, 36.782009, 32.041904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.037792, 36.816071, 31.879957>,  <36.327488, 36.872841, 31.610043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037792, 36.816071, 31.879957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688990, 0.188369, -0.699864,
		-0.027783, -0.971790, -0.234207,
		-0.724238, -0.141922, 0.674787,
		35.820522, 36.773495, 32.082394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843685, 36.622940, 31.213770>,  <36.327488, 36.872841, 31.610043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843685, 36.622940, 31.213770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640717, 36.690437, 31.551777>,  <35.518936, 36.730934, 31.754581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.640717, 36.690437, 31.551777>,  <35.843685, 36.622940, 31.213770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640717, 36.690437, 31.551777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829305, 0.170725, -0.532078,
		-0.234048, -0.970762, 0.053308,
		-0.507420, 0.168740, 0.845016,
		35.488491, 36.741058, 31.805283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.304989, 36.111629, 31.295181>,  <35.843685, 36.622940, 31.213770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.304989, 36.111629, 31.295181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207764, 36.427631, 31.520327>,  <35.149429, 36.617233, 31.655413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.207764, 36.427631, 31.520327>,  <35.304989, 36.111629, 31.295181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.207764, 36.427631, 31.520327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871635, 0.076740, -0.484111,
		-0.425643, -0.608280, 0.669943,
		-0.243064, 0.790004, 0.562862,
		35.134846, 36.664631, 31.689184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558113, 36.038578, 31.508972>,  <35.304989, 36.111629, 31.295181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558113, 36.038578, 31.508972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641144, 36.428654, 31.539722>,  <34.690964, 36.662701, 31.558172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641144, 36.428654, 31.539722>,  <34.558113, 36.038578, 31.508972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641144, 36.428654, 31.539722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810441, 0.215453, -0.544761,
		-0.547811, 0.050777, 0.835060,
		0.207577, 0.975193, 0.076876,
		34.703419, 36.721210, 31.562786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780785, 36.396717, 31.470999>,  <34.558113, 36.038578, 31.508972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780785, 36.396717, 31.470999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083881, 36.646408, 31.394926>,  <34.265739, 36.796223, 31.349281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083881, 36.646408, 31.394926>,  <33.780785, 36.396717, 31.470999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083881, 36.646408, 31.394926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554420, 0.462137, -0.692132,
		-0.344155, 0.629900, 0.696264,
		0.757744, 0.624224, -0.190183,
		34.311203, 36.833675, 31.337872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407623, 37.077583, 31.486097>,  <33.780785, 36.396717, 31.470999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407623, 37.077583, 31.486097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750320, 37.078693, 31.279804>,  <33.955940, 37.079361, 31.156029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.750320, 37.078693, 31.279804>,  <33.407623, 37.077583, 31.486097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750320, 37.078693, 31.279804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449297, 0.495001, -0.743712,
		0.253223, 0.868888, 0.425337,
		0.856744, 0.002778, -0.515734,
		34.007343, 37.079525, 31.125084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534107, 37.819176, 31.383522>,  <33.407623, 37.077583, 31.486097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534107, 37.819176, 31.383522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723476, 37.598866, 31.108562>,  <33.837097, 37.466679, 30.943586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723476, 37.598866, 31.108562>,  <33.534107, 37.819176, 31.383522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723476, 37.598866, 31.108562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374196, 0.580714, -0.723013,
		0.797401, 0.599513, 0.068825,
		0.473423, -0.550777, -0.687397,
		33.865505, 37.433632, 30.902344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530266, 38.236462, 30.843454>,  <33.534107, 37.819176, 31.383522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530266, 38.236462, 30.843454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652218, 37.898617, 30.667418>,  <33.725388, 37.695911, 30.561796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.652218, 37.898617, 30.667418>,  <33.530266, 38.236462, 30.843454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652218, 37.898617, 30.667418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328119, 0.340652, -0.881076,
		0.894085, 0.413021, -0.173277,
		0.304876, -0.844612, -0.440092,
		33.743679, 37.645233, 30.535391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751740, 38.482681, 30.281988>,  <33.530266, 38.236462, 30.843454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751740, 38.482681, 30.281988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694054, 38.095478, 30.199850>,  <33.659443, 37.863155, 30.150566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.694054, 38.095478, 30.199850>,  <33.751740, 38.482681, 30.281988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694054, 38.095478, 30.199850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272664, 0.238356, -0.932116,
		0.951239, -0.078436, -0.298315,
		-0.144216, -0.968005, -0.205347,
		33.650787, 37.805077, 30.138247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105907, 38.422474, 29.650434>,  <33.751740, 38.482681, 30.281988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105907, 38.422474, 29.650434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825550, 38.140095, 29.691206>,  <33.657337, 37.970665, 29.715668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.825550, 38.140095, 29.691206>,  <34.105907, 38.422474, 29.650434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825550, 38.140095, 29.691206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202071, 0.059480, -0.977563,
		0.684048, -0.705760, -0.184340,
		-0.700889, -0.705950, 0.101927,
		33.615284, 37.928310, 29.721785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073013, 38.105083, 29.053785>,  <34.105907, 38.422474, 29.650434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073013, 38.105083, 29.053785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733528, 37.946747, 29.194069>,  <33.529839, 37.851746, 29.278240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.733528, 37.946747, 29.194069>,  <34.073013, 38.105083, 29.053785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.733528, 37.946747, 29.194069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441423, 0.164996, -0.881999,
		0.291271, -0.903372, -0.314770,
		-0.848709, -0.395848, 0.350711,
		33.478916, 37.827991, 29.299282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864395, 37.601814, 28.521721>,  <34.073013, 38.105083, 29.053785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864395, 37.601814, 28.521721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555748, 37.755821, 28.724253>,  <33.370560, 37.848225, 28.845772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.555748, 37.755821, 28.724253>,  <33.864395, 37.601814, 28.521721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.555748, 37.755821, 28.724253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439305, 0.253117, -0.861942,
		-0.460023, -0.887521, -0.026169,
		-0.771615, 0.385017, 0.506332,
		33.324265, 37.871326, 28.876152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196419, 37.423222, 28.113308>,  <33.864395, 37.601814, 28.521721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196419, 37.423222, 28.113308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121101, 37.734032, 28.353565>,  <33.075912, 37.920517, 28.497719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.121101, 37.734032, 28.353565>,  <33.196419, 37.423222, 28.113308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121101, 37.734032, 28.353565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465984, 0.467676, -0.751091,
		-0.864527, -0.421312, 0.274025,
		-0.188289, 0.777029, 0.600643,
		33.064613, 37.967140, 28.533758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.578556, 37.607327, 27.819620>,  <33.196419, 37.423222, 28.113308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.578556, 37.607327, 27.819620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680897, 37.921677, 28.044807>,  <32.742302, 38.110287, 28.179920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.680897, 37.921677, 28.044807>,  <32.578556, 37.607327, 27.819620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.680897, 37.921677, 28.044807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376738, 0.617365, -0.690600,
		-0.890287, -0.035404, 0.454022,
		0.255847, 0.785880, 0.562970,
		32.757652, 38.157440, 28.213697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.966406, 38.024525, 27.839109>,  <32.578556, 37.607327, 27.819620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.966406, 38.024525, 27.839109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259422, 38.281013, 27.930519>,  <32.435230, 38.434906, 27.985365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.259422, 38.281013, 27.930519>,  <31.966406, 38.024525, 27.839109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259422, 38.281013, 27.930519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354469, 0.645915, -0.676125,
		-0.581152, 0.414283, 0.700451,
		0.732539, 0.641220, 0.228525,
		32.479183, 38.473381, 27.999077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640930, 38.660583, 27.823912>,  <31.966406, 38.024525, 27.839109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640930, 38.660583, 27.823912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026520, 38.766899, 27.819708>,  <32.257874, 38.830688, 27.817186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.026520, 38.766899, 27.819708>,  <31.640930, 38.660583, 27.823912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026520, 38.766899, 27.819708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207649, 0.727238, -0.654222,
		-0.166244, 0.632835, 0.756230,
		0.963974, 0.265791, -0.010509,
		32.315712, 38.846638, 27.816555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596365, 39.335011, 27.983440>,  <31.640930, 38.660583, 27.823912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596365, 39.335011, 27.983440> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.928869, 39.233116, 27.785809>,  <32.128372, 39.171982, 27.667229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.928869, 39.233116, 27.785809>,  <31.596365, 39.335011, 27.983440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.928869, 39.233116, 27.785809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166622, 0.733778, -0.658641,
		0.530323, 0.629827, 0.567517,
		0.831261, -0.254732, -0.494082,
		32.178249, 39.156696, 27.637585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.835234, 39.916725, 27.763876>,  <31.596365, 39.335011, 27.983440>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.835234, 39.916725, 27.763876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.046467, 39.668705, 27.531784>,  <32.173206, 39.519894, 27.392529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.046467, 39.668705, 27.531784>,  <31.835234, 39.916725, 27.763876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046467, 39.668705, 27.531784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216879, 0.562135, -0.798103,
		0.821030, 0.547305, 0.162379,
		0.528084, -0.620050, -0.580229,
		32.204891, 39.482689, 27.357716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116302, 40.289108, 27.187046>,  <31.835234, 39.916725, 27.763876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116302, 40.289108, 27.187046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.138958, 39.916653, 27.042952>,  <32.152550, 39.693180, 26.956495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.138958, 39.916653, 27.042952>,  <32.116302, 40.289108, 27.187046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.138958, 39.916653, 27.042952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261367, 0.334403, -0.905462,
		0.963576, 0.145434, -0.224431,
		0.056635, -0.931141, -0.360235,
		32.155949, 39.637310, 26.934881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483700, 40.302002, 26.546764>,  <32.116302, 40.289108, 27.187046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483700, 40.302002, 26.546764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273472, 39.962524, 26.523138>,  <32.147335, 39.758839, 26.508963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.273472, 39.962524, 26.523138>,  <32.483700, 40.302002, 26.546764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273472, 39.962524, 26.523138> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262973, 0.228092, -0.937453,
		0.809087, -0.477164, -0.343063,
		-0.525569, -0.848698, -0.059065,
		32.115803, 39.707916, 26.505419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585445, 40.176491, 25.836943>,  <32.483700, 40.302002, 26.546764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585445, 40.176491, 25.836943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295368, 39.919350, 25.935608>,  <32.121323, 39.765064, 25.994806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.295368, 39.919350, 25.935608>,  <32.585445, 40.176491, 25.836943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295368, 39.919350, 25.935608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387567, 0.085005, -0.917914,
		0.569112, -0.761262, -0.310792,
		-0.725192, -0.642849, 0.246662,
		32.077812, 39.726494, 26.009607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129429, 39.973919, 25.283829>,  <32.585445, 40.176491, 25.836943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129429, 39.973919, 25.283829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306408, 40.324020, 25.205679>,  <33.412594, 40.534081, 25.158789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.306408, 40.324020, 25.205679>,  <33.129429, 39.973919, 25.283829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306408, 40.324020, 25.205679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772201, -0.261042, 0.579277,
		0.456015, -0.407166, -0.791370,
		0.442443, 0.875256, -0.195375,
		33.439140, 40.586597, 25.147066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758411, 39.773811, 25.048634>,  <33.129429, 39.973919, 25.283829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758411, 39.773811, 25.048634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841801, 40.148785, 25.160172>,  <33.891834, 40.373768, 25.227095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.841801, 40.148785, 25.160172>,  <33.758411, 39.773811, 25.048634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841801, 40.148785, 25.160172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740432, -0.337553, 0.581222,
		0.638983, 0.085295, -0.764478,
		0.208477, 0.937434, 0.278845,
		33.904343, 40.430016, 25.243826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466038, 39.770164, 25.119976>,  <33.758411, 39.773811, 25.048634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466038, 39.770164, 25.119976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356289, 40.096855, 25.323025>,  <34.290440, 40.292870, 25.444855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.356289, 40.096855, 25.323025>,  <34.466038, 39.770164, 25.119976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356289, 40.096855, 25.323025> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767514, -0.132038, 0.627286,
		0.579345, 0.561718, -0.590620,
		-0.274374, 0.816724, 0.507622,
		34.273975, 40.341873, 25.475311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090961, 40.100758, 25.311533>,  <34.466038, 39.770164, 25.119976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090961, 40.100758, 25.311533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820351, 40.279957, 25.545321>,  <34.657982, 40.387478, 25.685593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.820351, 40.279957, 25.545321>,  <35.090961, 40.100758, 25.311533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820351, 40.279957, 25.545321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664056, 0.028042, 0.747157,
		0.318336, 0.893595, -0.316467,
		-0.676530, 0.447998, 0.584470,
		34.617393, 40.414356, 25.720661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471165, 40.577785, 25.717606>,  <35.090961, 40.100758, 25.311533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471165, 40.577785, 25.717606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136303, 40.517834, 25.928019>,  <34.935387, 40.481861, 26.054266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.136303, 40.517834, 25.928019>,  <35.471165, 40.577785, 25.717606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136303, 40.517834, 25.928019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526308, 0.041084, 0.849301,
		-0.148904, 0.987850, 0.044489,
		-0.837154, -0.149880, 0.526031,
		34.885159, 40.472870, 26.085829>
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
