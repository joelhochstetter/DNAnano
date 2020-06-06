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
	<24.530708, 34.933319, 34.731956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336849, 35.158817, 34.999481>,  <24.220533, 35.294117, 35.159996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.336849, 35.158817, 34.999481>,  <24.530708, 34.933319, 34.731956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.336849, 35.158817, 34.999481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793474, 0.605132, 0.064914,
		-0.368123, 0.562144, -0.740594,
		-0.484649, 0.563746, 0.668810,
		24.191454, 35.327942, 35.200123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.596426, 35.531311, 34.359138>,  <24.530708, 34.933319, 34.731956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.596426, 35.531311, 34.359138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.551405, 35.523369, 34.756519>,  <24.524393, 35.518604, 34.994946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.551405, 35.523369, 34.756519>,  <24.596426, 35.531311, 34.359138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.551405, 35.523369, 34.756519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921404, 0.372169, 0.111829,
		-0.371951, 0.927953, -0.023593,
		-0.112552, -0.019856, 0.993447,
		24.517639, 35.517410, 35.054554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.633675, 36.143520, 34.700687>,  <24.596426, 35.531311, 34.359138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.633675, 36.143520, 34.700687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757933, 35.894840, 34.988293>,  <24.832487, 35.745632, 35.160858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.757933, 35.894840, 34.988293>,  <24.633675, 36.143520, 34.700687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.757933, 35.894840, 34.988293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896719, 0.442576, -0.004741,
		-0.315272, 0.646229, 0.694976,
		0.310643, -0.621703, 0.719017,
		24.851126, 35.708328, 35.203999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.899481, 36.515034, 35.189705>,  <24.633675, 36.143520, 34.700687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.899481, 36.515034, 35.189705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076025, 36.159950, 35.242123>,  <25.181952, 35.946899, 35.273575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.076025, 36.159950, 35.242123>,  <24.899481, 36.515034, 35.189705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.076025, 36.159950, 35.242123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895842, 0.444310, -0.007412,
		-0.051646, 0.120669, 0.991348,
		0.441361, -0.887709, 0.131047,
		25.208433, 35.893639, 35.281437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.506634, 36.781879, 35.557606>,  <24.899481, 36.515034, 35.189705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.506634, 36.781879, 35.557606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639402, 36.452415, 35.373688>,  <25.719063, 36.254738, 35.263336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.639402, 36.452415, 35.373688>,  <25.506634, 36.781879, 35.557606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.639402, 36.452415, 35.373688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876495, 0.449470, -0.172433,
		0.348690, -0.345774, 0.871123,
		0.331921, -0.823661, -0.459795,
		25.738979, 36.205318, 35.235748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243301, 36.747505, 35.709854>,  <25.506634, 36.781879, 35.557606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243301, 36.747505, 35.709854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184063, 36.564980, 35.358891>,  <26.148520, 36.455463, 35.148312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184063, 36.564980, 35.358891>,  <26.243301, 36.747505, 35.709854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184063, 36.564980, 35.358891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914450, 0.274681, -0.297205,
		0.376627, -0.846359, 0.376600,
		-0.148097, -0.456318, -0.877406,
		26.139633, 36.428085, 35.095669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.931532, 36.166832, 35.977200>,  <26.243301, 36.747505, 35.709854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.931532, 36.166832, 35.977200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697933, 35.884594, 36.137737>,  <25.557774, 35.715252, 36.234062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.697933, 35.884594, 36.137737>,  <25.931532, 36.166832, 35.977200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.697933, 35.884594, 36.137737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335695, 0.660083, 0.672011,
		-0.739092, 0.257723, -0.622352,
		-0.583997, -0.705599, 0.401346,
		25.522734, 35.672913, 36.258141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.133915, 36.603294, 36.447956>,  <25.931532, 36.166832, 35.977200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.133915, 36.603294, 36.447956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770113, 36.541359, 36.293644>,  <25.551832, 36.504200, 36.201057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.770113, 36.541359, 36.293644>,  <26.133915, 36.603294, 36.447956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.770113, 36.541359, 36.293644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140393, 0.759092, -0.635664,
		0.391264, -0.632301, -0.668661,
		-0.909507, -0.154837, -0.385776,
		25.497261, 36.494907, 36.177910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428692, 36.522575, 37.133904>,  <26.133915, 36.603294, 36.447956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428692, 36.522575, 37.133904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348696, 36.137562, 37.207142>,  <26.300699, 35.906551, 37.251087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.348696, 36.137562, 37.207142>,  <26.428692, 36.522575, 37.133904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348696, 36.137562, 37.207142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831718, -0.265556, -0.487571,
		0.517929, 0.054777, 0.853668,
		-0.199989, -0.962538, 0.183098,
		26.288700, 35.848801, 37.262070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949656, 36.880623, 37.314793>,  <26.428692, 36.522575, 37.133904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949656, 36.880623, 37.314793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100742, 36.609898, 37.062046>,  <27.191395, 36.447464, 36.910397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.100742, 36.609898, 37.062046>,  <26.949656, 36.880623, 37.314793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100742, 36.609898, 37.062046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921173, 0.343696, 0.182516,
		0.093641, -0.650997, 0.753282,
		0.377718, -0.676813, -0.631865,
		27.214058, 36.406853, 36.872486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494841, 36.561665, 37.681366>,  <26.949656, 36.880623, 37.314793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494841, 36.561665, 37.681366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556091, 36.577656, 37.286407>,  <27.592842, 36.587250, 37.049431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556091, 36.577656, 37.286407>,  <27.494841, 36.561665, 37.681366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556091, 36.577656, 37.286407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752115, 0.643400, 0.142691,
		0.640995, -0.764486, 0.068459,
		0.153132, 0.039975, -0.987397,
		27.602030, 36.589649, 36.990189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176474, 36.400639, 37.580936>,  <27.494841, 36.561665, 37.681366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176474, 36.400639, 37.580936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008787, 36.643791, 37.311199>,  <27.908175, 36.789684, 37.149357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.008787, 36.643791, 37.311199>,  <28.176474, 36.400639, 37.580936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.008787, 36.643791, 37.311199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576462, 0.752045, 0.319561,
		0.701391, -0.254767, -0.665691,
		-0.419216, 0.607883, -0.674341,
		27.883022, 36.826157, 37.108898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.936703, 36.340393, 37.653114>,  <28.176474, 36.400639, 37.580936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.936703, 36.340393, 37.653114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108229, 36.051929, 37.870754>,  <29.211143, 35.878849, 38.001339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.108229, 36.051929, 37.870754>,  <28.936703, 36.340393, 37.653114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.108229, 36.051929, 37.870754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845047, -0.107269, 0.523821,
		-0.319396, -0.684410, -0.655415,
		0.428814, -0.721163, 0.544097,
		29.236874, 35.835579, 38.033985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.789236, 35.867290, 37.148609>,  <28.936703, 36.340393, 37.653114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.789236, 35.867290, 37.148609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584030, 35.674908, 37.433002>,  <28.460907, 35.559479, 37.603638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.584030, 35.674908, 37.433002>,  <28.789236, 35.867290, 37.148609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584030, 35.674908, 37.433002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327642, 0.875292, 0.355688,
		-0.793390, -0.050477, -0.606617,
		-0.513013, -0.480953, 0.710986,
		28.430126, 35.530621, 37.646297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.501451, 36.030006, 37.340366>,  <28.789236, 35.867290, 37.148609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.501451, 36.030006, 37.340366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555859, 35.778008, 37.034527>,  <29.588503, 35.626808, 36.851025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.555859, 35.778008, 37.034527>,  <29.501451, 36.030006, 37.340366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.555859, 35.778008, 37.034527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820384, 0.504286, -0.269565,
		0.555399, -0.590597, 0.585428,
		0.136019, -0.629993, -0.764597,
		29.596664, 35.589008, 36.805149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.177000, 36.440960, 37.119152>,  <29.501451, 36.030006, 37.340366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.177000, 36.440960, 37.119152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100735, 36.343372, 37.499496>,  <30.054976, 36.284821, 37.727703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.100735, 36.343372, 37.499496>,  <30.177000, 36.440960, 37.119152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100735, 36.343372, 37.499496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560611, -0.768073, -0.309480,
		0.805830, -0.592067, 0.009673,
		-0.190663, -0.243966, 0.950857,
		30.043535, 36.270184, 37.784752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660046, 36.719990, 36.743279>,  <30.177000, 36.440960, 37.119152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660046, 36.719990, 36.743279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782625, 36.356129, 36.855434>,  <29.856173, 36.137814, 36.922729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.782625, 36.356129, 36.855434>,  <29.660046, 36.719990, 36.743279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.782625, 36.356129, 36.855434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896610, 0.176929, -0.405940,
		0.319655, 0.375803, 0.869823,
		0.306450, -0.909653, 0.280393,
		29.874559, 36.083233, 36.939552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.253904, 36.748165, 36.393970>,  <29.660046, 36.719990, 36.743279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.253904, 36.748165, 36.393970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360338, 37.122585, 36.301880>,  <30.424198, 37.347237, 36.246624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.360338, 37.122585, 36.301880>,  <30.253904, 36.748165, 36.393970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360338, 37.122585, 36.301880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876268, -0.334408, -0.346880,
		-0.401688, -0.109441, -0.909214,
		0.266085, 0.936052, -0.230227,
		30.440165, 37.403400, 36.232811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465475, 36.776844, 35.677872>,  <30.253904, 36.748165, 36.393970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465475, 36.776844, 35.677872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639605, 37.050850, 35.911537>,  <30.744083, 37.215252, 36.051739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639605, 37.050850, 35.911537>,  <30.465475, 36.776844, 35.677872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639605, 37.050850, 35.911537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895513, -0.396127, -0.202830,
		0.092463, 0.611425, -0.785881,
		0.435325, 0.685013, 0.584166,
		30.770203, 37.256355, 36.086788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131647, 36.830616, 35.320957>,  <30.465475, 36.776844, 35.677872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131647, 36.830616, 35.320957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132635, 36.973766, 35.694466>,  <31.133228, 37.059654, 35.918571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.132635, 36.973766, 35.694466>,  <31.131647, 36.830616, 35.320957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132635, 36.973766, 35.694466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977680, -0.197035, 0.072930,
		0.210085, 0.912746, -0.350370,
		0.002469, 0.357871, 0.933768,
		31.133375, 37.081127, 35.974594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636028, 37.431023, 34.994938>,  <31.131647, 36.830616, 35.320957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636028, 37.431023, 34.994938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708199, 37.185764, 34.687302>,  <30.751501, 37.038609, 34.502720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.708199, 37.185764, 34.687302>,  <30.636028, 37.431023, 34.994938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.708199, 37.185764, 34.687302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164788, 0.789714, -0.590928,
		0.969686, -0.020119, 0.243523,
		0.180425, -0.613145, -0.769091,
		30.762325, 37.001820, 34.456573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307955, 37.311428, 34.719597>,  <30.636028, 37.431023, 34.994938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307955, 37.311428, 34.719597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013691, 37.302399, 34.448807>,  <30.837133, 37.296982, 34.286331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.013691, 37.302399, 34.448807>,  <31.307955, 37.311428, 34.719597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013691, 37.302399, 34.448807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377600, 0.816072, -0.437543,
		0.562340, -0.577509, -0.591826,
		-0.735658, -0.022574, -0.676977,
		30.792994, 37.295628, 34.245712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532585, 37.117424, 33.964153>,  <31.307955, 37.311428, 34.719597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532585, 37.117424, 33.964153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239733, 37.387653, 33.998974>,  <31.064022, 37.549793, 34.019867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.239733, 37.387653, 33.998974>,  <31.532585, 37.117424, 33.964153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239733, 37.387653, 33.998974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606466, 0.704686, -0.368262,
		-0.310134, -0.216822, -0.925638,
		-0.732132, 0.675578, 0.087052,
		31.020094, 37.590328, 34.025089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567699, 37.541889, 33.376785>,  <31.532585, 37.117424, 33.964153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567699, 37.541889, 33.376785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358055, 37.744446, 33.650681>,  <31.232267, 37.865982, 33.815018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.358055, 37.744446, 33.650681>,  <31.567699, 37.541889, 33.376785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358055, 37.744446, 33.650681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689322, 0.724410, -0.008112,
		-0.500142, 0.467756, -0.728740,
		-0.524112, 0.506394, 0.684742,
		31.200821, 37.896362, 33.856102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513720, 38.235283, 33.231598>,  <31.567699, 37.541889, 33.376785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513720, 38.235283, 33.231598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490337, 38.173996, 33.626183>,  <31.476307, 38.137222, 33.862934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.490337, 38.173996, 33.626183>,  <31.513720, 38.235283, 33.231598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.490337, 38.173996, 33.626183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772996, 0.618349, 0.141849,
		-0.631712, 0.770824, 0.082289,
		-0.058458, -0.153217, 0.986462,
		31.472799, 38.128033, 33.922123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514156, 38.908966, 33.533184>,  <31.513720, 38.235283, 33.231598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514156, 38.908966, 33.533184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677277, 38.628716, 33.767391>,  <31.775148, 38.460567, 33.907913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677277, 38.628716, 33.767391>,  <31.514156, 38.908966, 33.533184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677277, 38.628716, 33.767391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881426, 0.469430, -0.052180,
		-0.238299, 0.537366, 0.808981,
		0.407800, -0.700623, 0.585514,
		31.799616, 38.418530, 33.943047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799896, 39.206581, 34.194210>,  <31.514156, 38.908966, 33.533184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799896, 39.206581, 34.194210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991552, 38.906555, 34.011856>,  <32.106544, 38.726540, 33.902443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.991552, 38.906555, 34.011856>,  <31.799896, 39.206581, 34.194210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991552, 38.906555, 34.011856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763927, 0.612130, -0.204236,
		0.432252, -0.250407, 0.866288,
		0.479139, -0.750062, -0.455887,
		32.135296, 38.681538, 33.875092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478886, 39.230598, 34.359715>,  <31.799896, 39.206581, 34.194210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478886, 39.230598, 34.359715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440292, 39.082924, 33.989983>,  <32.417137, 38.994320, 33.768143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440292, 39.082924, 33.989983>,  <32.478886, 39.230598, 34.359715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440292, 39.082924, 33.989983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666513, 0.665744, -0.335478,
		0.739223, -0.648448, 0.181834,
		-0.096485, -0.369188, -0.924333,
		32.411346, 38.972168, 33.712685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142906, 39.117672, 34.052361>,  <32.478886, 39.230598, 34.359715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142906, 39.117672, 34.052361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892376, 39.169628, 33.744896>,  <32.742058, 39.200802, 33.560417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892376, 39.169628, 33.744896>,  <33.142906, 39.117672, 34.052361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892376, 39.169628, 33.744896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635006, 0.656965, -0.406403,
		0.452200, -0.742648, -0.493953,
		-0.626325, 0.129888, -0.768666,
		32.704479, 39.208595, 33.514297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502457, 39.743931, 34.376663>,  <33.142906, 39.117672, 34.052361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502457, 39.743931, 34.376663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858418, 39.729000, 34.558510>,  <34.071995, 39.720043, 34.667618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858418, 39.729000, 34.558510>,  <33.502457, 39.743931, 34.376663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858418, 39.729000, 34.558510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299618, 0.799325, -0.520872,
		-0.343944, 0.599738, 0.722507,
		0.889905, -0.037325, 0.454616,
		34.125389, 39.717804, 34.694893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.036873, 40.211720, 34.061703>,  <33.502457, 39.743931, 34.376663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.036873, 40.211720, 34.061703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274445, 40.112904, 34.367962>,  <34.416988, 40.053616, 34.551716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274445, 40.112904, 34.367962>,  <34.036873, 40.211720, 34.061703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274445, 40.112904, 34.367962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711561, 0.605381, -0.356644,
		-0.375404, 0.756627, 0.535338,
		0.593930, -0.247040, 0.765649,
		34.452625, 40.038792, 34.597656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383919, 40.792999, 34.299828>,  <34.036873, 40.211720, 34.061703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383919, 40.792999, 34.299828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599575, 40.459091, 34.344509>,  <34.728970, 40.258747, 34.371319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599575, 40.459091, 34.344509>,  <34.383919, 40.792999, 34.299828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599575, 40.459091, 34.344509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697674, 0.368369, -0.614455,
		0.471782, 0.409213, 0.781003,
		0.539141, -0.834775, 0.111708,
		34.761318, 40.208660, 34.378021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982117, 41.015453, 34.737167>,  <34.383919, 40.792999, 34.299828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982117, 41.015453, 34.737167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984028, 40.712997, 34.475410>,  <34.985172, 40.531525, 34.318356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984028, 40.712997, 34.475410>,  <34.982117, 41.015453, 34.737167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984028, 40.712997, 34.475410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566524, 0.541296, -0.621329,
		0.824032, -0.367761, 0.430957,
		0.004775, -0.756142, -0.654390,
		34.985462, 40.486156, 34.279095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619106, 41.005409, 35.063137>,  <34.982117, 41.015453, 34.737167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619106, 41.005409, 35.063137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629215, 41.346596, 34.854595>,  <35.635281, 41.551308, 34.729469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.629215, 41.346596, 34.854595>,  <35.619106, 41.005409, 35.063137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629215, 41.346596, 34.854595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335713, -0.498472, -0.799264,
		-0.941625, -0.154828, -0.298949,
		0.025269, 0.852968, -0.521351,
		35.636795, 41.602486, 34.698189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854485, 41.091915, 35.727512>,  <35.619106, 41.005409, 35.063137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854485, 41.091915, 35.727512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245892, 41.163475, 35.768509>,  <36.480736, 41.206409, 35.793106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.245892, 41.163475, 35.768509>,  <35.854485, 41.091915, 35.727512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245892, 41.163475, 35.768509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198278, 0.952798, 0.229916,
		-0.056524, -0.245298, 0.967798,
		0.978515, 0.178898, 0.102493,
		36.539448, 41.217144, 35.799255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063492, 41.449738, 36.348747>,  <35.854485, 41.091915, 35.727512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063492, 41.449738, 36.348747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317604, 41.555489, 36.058498>,  <36.470070, 41.618938, 35.884350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317604, 41.555489, 36.058498>,  <36.063492, 41.449738, 36.348747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317604, 41.555489, 36.058498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060945, 0.953810, 0.294164,
		0.769874, -0.142653, 0.622048,
		0.635279, 0.264380, -0.725619,
		36.508186, 41.634804, 35.840813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.173260, 41.115623, 36.954956>,  <36.063492, 41.449738, 36.348747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.173260, 41.115623, 36.954956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945923, 41.052666, 37.277996>,  <35.809521, 41.014893, 37.471821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945923, 41.052666, 37.277996>,  <36.173260, 41.115623, 36.954956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945923, 41.052666, 37.277996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773423, 0.232683, 0.589640,
		-0.280719, 0.959733, -0.010514,
		-0.568343, -0.157391, 0.807598,
		35.775421, 41.005447, 37.520275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449356, 41.660542, 37.399895>,  <36.173260, 41.115623, 36.954956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449356, 41.660542, 37.399895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285358, 41.344593, 37.582325>,  <36.186958, 41.155022, 37.691784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.285358, 41.344593, 37.582325>,  <36.449356, 41.660542, 37.399895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285358, 41.344593, 37.582325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766550, -0.027429, 0.641598,
		-0.494273, 0.612654, 0.616725,
		-0.409993, -0.789875, 0.456073,
		36.162361, 41.107632, 37.719147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543865, 41.789280, 38.103081>,  <36.449356, 41.660542, 37.399895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543865, 41.789280, 38.103081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490475, 41.397049, 38.045597>,  <36.458439, 41.161709, 38.011108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.490475, 41.397049, 38.045597>,  <36.543865, 41.789280, 38.103081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490475, 41.397049, 38.045597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742032, -0.195004, 0.641376,
		-0.656942, -0.021025, 0.753648,
		-0.133479, -0.980577, -0.143707,
		36.450432, 41.102875, 38.002483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183971, 41.386120, 38.633175>,  <36.543865, 41.789280, 38.103081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183971, 41.386120, 38.633175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477615, 41.204178, 38.431507>,  <36.653801, 41.095013, 38.310505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477615, 41.204178, 38.431507>,  <36.183971, 41.386120, 38.633175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477615, 41.204178, 38.431507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513015, -0.114911, 0.850653,
		-0.444860, -0.883120, 0.148991,
		0.734108, -0.454857, -0.504173,
		36.697849, 41.067722, 38.280254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513432, 40.664078, 38.823658>,  <36.183971, 41.386120, 38.633175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513432, 40.664078, 38.823658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795631, 40.846954, 38.607052>,  <36.964951, 40.956680, 38.477089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795631, 40.846954, 38.607052>,  <36.513432, 40.664078, 38.823658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795631, 40.846954, 38.607052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505938, 0.210157, 0.836577,
		0.496281, -0.864181, -0.083045,
		0.705501, 0.457193, -0.541518,
		37.007282, 40.984112, 38.444595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100864, 40.395523, 39.037205>,  <36.513432, 40.664078, 38.823658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100864, 40.395523, 39.037205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205505, 40.755795, 38.898441>,  <37.268291, 40.971958, 38.815182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.205505, 40.755795, 38.898441>,  <37.100864, 40.395523, 39.037205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205505, 40.755795, 38.898441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511420, 0.175472, 0.841224,
		0.818544, -0.397483, -0.414720,
		0.261601, 0.900675, -0.346913,
		37.283985, 41.025997, 38.794369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836571, 40.646793, 39.087784>,  <37.100864, 40.395523, 39.037205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836571, 40.646793, 39.087784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595409, 40.965359, 39.106728>,  <37.450714, 41.156498, 39.118095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.595409, 40.965359, 39.106728>,  <37.836571, 40.646793, 39.087784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.595409, 40.965359, 39.106728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459427, 0.298041, 0.836719,
		0.652256, 0.526215, -0.545581,
		-0.602900, 0.796410, 0.047358,
		37.414539, 41.204281, 39.120934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240505, 41.238323, 39.428593>,  <37.836571, 40.646793, 39.087784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240505, 41.238323, 39.428593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850842, 41.325325, 39.452969>,  <37.617043, 41.377525, 39.467594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.850842, 41.325325, 39.452969>,  <38.240505, 41.238323, 39.428593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850842, 41.325325, 39.452969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118958, 0.264661, 0.956976,
		0.192016, 0.939493, -0.283695,
		-0.974155, 0.217502, 0.060941,
		37.558594, 41.390575, 39.471252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.173370, 41.839172, 39.864048>,  <38.240505, 41.238323, 39.428593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.173370, 41.839172, 39.864048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824333, 41.643814, 39.861000>,  <37.614910, 41.526600, 39.859173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824333, 41.643814, 39.861000>,  <38.173370, 41.839172, 39.864048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824333, 41.643814, 39.861000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006508, -0.027219, 0.999608,
		-0.488411, 0.872198, 0.026929,
		-0.872589, -0.488395, -0.007618,
		37.562557, 41.497295, 39.858715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653488, 42.210148, 40.335003>,  <38.173370, 41.839172, 39.864048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653488, 42.210148, 40.335003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568146, 41.823185, 40.280441>,  <37.516941, 41.591007, 40.247704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.568146, 41.823185, 40.280441>,  <37.653488, 42.210148, 40.335003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.568146, 41.823185, 40.280441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077918, -0.156023, 0.984675,
		-0.973862, 0.199460, 0.108667,
		-0.213358, -0.967405, -0.136403,
		37.504139, 41.532963, 40.239521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653511, 41.824745, 40.996044>,  <37.653488, 42.210148, 40.335003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653511, 41.824745, 40.996044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606758, 41.495548, 40.773685>,  <37.578709, 41.298031, 40.640270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.606758, 41.495548, 40.773685>,  <37.653511, 41.824745, 40.996044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.606758, 41.495548, 40.773685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118311, -0.567288, 0.814976,
		-0.986074, 0.029486, 0.163674,
		-0.116880, -0.822991, -0.555900,
		37.571693, 41.248650, 40.606915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065552, 41.400784, 41.225471>,  <37.653511, 41.824745, 40.996044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065552, 41.400784, 41.225471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361927, 41.191635, 41.056892>,  <37.539753, 41.066147, 40.955746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361927, 41.191635, 41.056892>,  <37.065552, 41.400784, 41.225471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361927, 41.191635, 41.056892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171585, -0.459328, 0.871537,
		-0.649282, -0.718070, -0.250618,
		0.740940, -0.522871, -0.421443,
		37.584209, 41.034775, 40.930458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957794, 40.762344, 41.313015>,  <37.065552, 41.400784, 41.225471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957794, 40.762344, 41.313015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352932, 40.708950, 41.281128>,  <37.590015, 40.676914, 41.261997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.352932, 40.708950, 41.281128>,  <36.957794, 40.762344, 41.313015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.352932, 40.708950, 41.281128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065661, -0.822943, 0.564318,
		-0.140927, -0.552221, -0.821700,
		0.987841, -0.133481, -0.079715,
		37.649284, 40.668907, 41.257214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131439, 39.982258, 41.135998>,  <36.957794, 40.762344, 41.313015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131439, 39.982258, 41.135998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473412, 40.151810, 41.255615>,  <37.678596, 40.253540, 41.327385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.473412, 40.151810, 41.255615>,  <37.131439, 39.982258, 41.135998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473412, 40.151810, 41.255615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213819, -0.813166, 0.541335,
		0.472628, -0.398863, -0.785832,
		0.854930, 0.423876, 0.299040,
		37.729889, 40.278973, 41.345325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676918, 39.460754, 40.969688>,  <37.131439, 39.982258, 41.135998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676918, 39.460754, 40.969688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778664, 39.704178, 41.270340>,  <37.839710, 39.850231, 41.450729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.778664, 39.704178, 41.270340>,  <37.676918, 39.460754, 40.969688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778664, 39.704178, 41.270340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313642, -0.787097, 0.531137,
		0.914837, 0.100639, -0.391083,
		0.254367, 0.608563, 0.751630,
		37.854973, 39.886745, 41.495831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533707, 39.512287, 41.103767>,  <37.676918, 39.460754, 40.969688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.533707, 39.512287, 41.103767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275902, 39.528194, 41.409191>,  <38.121220, 39.537739, 41.592445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.275902, 39.528194, 41.409191>,  <38.533707, 39.512287, 41.103767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.275902, 39.528194, 41.409191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277251, -0.918523, 0.281863,
		0.712552, 0.393362, 0.580978,
		-0.644516, 0.039766, 0.763556,
		38.082546, 39.540123, 41.638256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815891, 39.098633, 40.509483>,  <38.533707, 39.512287, 41.103767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815891, 39.098633, 40.509483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693989, 39.239288, 40.155426>,  <38.620846, 39.323681, 39.942993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.693989, 39.239288, 40.155426>,  <38.815891, 39.098633, 40.509483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693989, 39.239288, 40.155426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341277, 0.907957, 0.243195,
		0.889187, -0.227963, -0.396711,
		-0.304757, 0.351635, -0.885142,
		38.602562, 39.344780, 39.889885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751301, 38.286064, 40.749981>,  <38.815891, 39.098633, 40.509483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751301, 38.286064, 40.749981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829437, 38.018383, 41.036758>,  <38.876320, 37.857777, 41.208824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.829437, 38.018383, 41.036758>,  <38.751301, 38.286064, 40.749981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829437, 38.018383, 41.036758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171347, -0.696499, -0.696799,
		0.965650, 0.258963, -0.021392,
		0.195345, -0.669199, 0.716947,
		38.888042, 37.817623, 41.251842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.535103, 37.994812, 40.669937>,  <38.751301, 38.286064, 40.749981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.535103, 37.994812, 40.669937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187283, 37.812965, 40.747093>,  <38.978592, 37.703857, 40.793385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.187283, 37.812965, 40.747093>,  <39.535103, 37.994812, 40.669937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.187283, 37.812965, 40.747093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032527, -0.442457, -0.896200,
		0.492774, -0.773016, 0.399526,
		-0.869549, -0.454619, 0.192888,
		38.926418, 37.676579, 40.804958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659035, 37.227974, 40.644314>,  <39.535103, 37.994812, 40.669937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659035, 37.227974, 40.644314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274521, 37.319946, 40.583565>,  <39.043812, 37.375130, 40.547115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274521, 37.319946, 40.583565>,  <39.659035, 37.227974, 40.644314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274521, 37.319946, 40.583565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002088, -0.545050, -0.838401,
		-0.275554, -0.806258, 0.523468,
		-0.961283, 0.229931, -0.151874,
		38.986137, 37.388927, 40.538002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.694801, 36.472168, 40.543072>,  <39.659035, 37.227974, 40.644314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.694801, 36.472168, 40.543072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029076, 36.395771, 40.749043>,  <40.229641, 36.349934, 40.872627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029076, 36.395771, 40.749043>,  <39.694801, 36.472168, 40.543072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029076, 36.395771, 40.749043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100648, -0.868446, -0.485460,
		0.539910, 0.457518, -0.706523,
		0.835683, -0.190995, 0.514931,
		40.279781, 36.338474, 40.903522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229698, 36.406792, 40.088684>,  <39.694801, 36.472168, 40.543072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229698, 36.406792, 40.088684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314560, 36.174561, 40.403118>,  <40.365479, 36.035221, 40.591778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.314560, 36.174561, 40.403118>,  <40.229698, 36.406792, 40.088684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314560, 36.174561, 40.403118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031525, -0.799907, -0.599295,
		0.976727, 0.151926, -0.151402,
		0.212156, -0.580575, 0.786080,
		40.378208, 36.000389, 40.638943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905315, 36.039284, 39.922157>,  <40.229698, 36.406792, 40.088684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905315, 36.039284, 39.922157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701008, 35.826393, 40.192226>,  <40.578423, 35.698658, 40.354267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.701008, 35.826393, 40.192226>,  <40.905315, 36.039284, 39.922157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.701008, 35.826393, 40.192226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088635, -0.813752, -0.574414,
		0.855136, -0.233550, 0.462814,
		-0.510770, -0.532224, 0.675168,
		40.547775, 35.666725, 40.394775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.364624, 35.381382, 40.172260>,  <40.905315, 36.039284, 39.922157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.364624, 35.381382, 40.172260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980686, 35.296021, 40.245102>,  <40.750324, 35.244804, 40.288807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.980686, 35.296021, 40.245102>,  <41.364624, 35.381382, 40.172260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.980686, 35.296021, 40.245102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059996, -0.790257, -0.609832,
		0.274048, -0.574417, 0.771325,
		-0.959843, -0.213400, 0.182105,
		40.692734, 35.232002, 40.299732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345112, 34.754246, 40.403755>,  <41.364624, 35.381382, 40.172260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345112, 34.754246, 40.403755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973690, 34.793316, 40.260513>,  <40.750835, 34.816757, 40.174568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.973690, 34.793316, 40.260513>,  <41.345112, 34.754246, 40.403755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973690, 34.793316, 40.260513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132945, -0.813235, -0.566546,
		-0.346561, -0.573679, 0.742151,
		-0.928559, 0.097678, -0.358103,
		40.695122, 34.822620, 40.153084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014202, 34.111370, 40.426075>,  <41.345112, 34.754246, 40.403755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014202, 34.111370, 40.426075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798313, 34.292873, 40.142441>,  <40.668777, 34.401775, 39.972260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798313, 34.292873, 40.142441>,  <41.014202, 34.111370, 40.426075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798313, 34.292873, 40.142441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102580, -0.871470, -0.479601,
		-0.835569, -0.186114, 0.516900,
		-0.539724, 0.453763, -0.709082,
		40.636395, 34.429001, 39.929718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437626, 33.672722, 40.412369>,  <41.014202, 34.111370, 40.426075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437626, 33.672722, 40.412369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509193, 33.887653, 40.082699>,  <40.552132, 34.016613, 39.884895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.509193, 33.887653, 40.082699>,  <40.437626, 33.672722, 40.412369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.509193, 33.887653, 40.082699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058299, -0.842009, -0.536305,
		-0.982136, 0.047904, -0.181974,
		0.178915, 0.537333, -0.824174,
		40.562866, 34.048855, 39.835445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983627, 33.610836, 39.841614>,  <40.437626, 33.672722, 40.412369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983627, 33.610836, 39.841614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317436, 33.722282, 39.651482>,  <40.517723, 33.789150, 39.537403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317436, 33.722282, 39.651482>,  <39.983627, 33.610836, 39.841614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317436, 33.722282, 39.651482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197891, -0.653586, -0.730523,
		-0.514205, 0.703705, -0.490299,
		0.834525, 0.278613, -0.475334,
		40.567795, 33.805866, 39.508881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787830, 33.821175, 39.123318>,  <39.983627, 33.610836, 39.841614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787830, 33.821175, 39.123318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167694, 33.706833, 39.174580>,  <40.395615, 33.638226, 39.205338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.167694, 33.706833, 39.174580>,  <39.787830, 33.821175, 39.123318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.167694, 33.706833, 39.174580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088312, -0.636787, -0.765965,
		0.300566, 0.716092, -0.629978,
		0.949664, -0.285858, 0.128157,
		40.452595, 33.621075, 39.213028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181870, 33.864120, 38.500374>,  <39.787830, 33.821175, 39.123318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181870, 33.864120, 38.500374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302643, 33.569889, 38.742950>,  <40.375107, 33.393353, 38.888496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.302643, 33.569889, 38.742950>,  <40.181870, 33.864120, 38.500374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302643, 33.569889, 38.742950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176197, -0.668224, -0.722794,
		0.936905, 0.111383, -0.331365,
		0.301932, -0.735575, 0.606437,
		40.393223, 33.349216, 38.924881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678326, 33.469742, 38.257504>,  <40.181870, 33.864120, 38.500374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678326, 33.469742, 38.257504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501911, 33.213024, 38.508450>,  <40.396065, 33.058994, 38.659019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.501911, 33.213024, 38.508450>,  <40.678326, 33.469742, 38.257504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.501911, 33.213024, 38.508450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178886, -0.622138, -0.762197,
		0.879483, -0.448381, 0.159576,
		-0.441032, -0.641793, 0.627369,
		40.369602, 33.020485, 38.696659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939259, 32.686783, 38.233849>,  <40.678326, 33.469742, 38.257504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939259, 32.686783, 38.233849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552399, 32.731842, 38.325001>,  <40.320282, 32.758877, 38.379692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.552399, 32.731842, 38.325001>,  <40.939259, 32.686783, 38.233849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.552399, 32.731842, 38.325001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249734, -0.588363, -0.769065,
		0.047443, -0.800712, 0.597168,
		-0.967152, 0.112646, 0.227879,
		40.262253, 32.765636, 38.393364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613266, 32.072647, 38.091324>,  <40.939259, 32.686783, 38.233849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613266, 32.072647, 38.091324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292648, 32.310383, 38.117493>,  <40.100277, 32.453026, 38.133194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.292648, 32.310383, 38.117493>,  <40.613266, 32.072647, 38.091324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292648, 32.310383, 38.117493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476062, -0.568136, -0.671258,
		-0.361786, -0.569191, 0.738331,
		-0.801546, 0.594343, 0.065427,
		40.052185, 32.488686, 38.137119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068810, 31.618078, 38.151524>,  <40.613266, 32.072647, 38.091324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068810, 31.618078, 38.151524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916325, 31.965771, 38.025589>,  <39.824833, 32.174385, 37.950027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.916325, 31.965771, 38.025589>,  <40.068810, 31.618078, 38.151524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916325, 31.965771, 38.025589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476004, -0.476485, -0.739177,
		-0.792528, -0.131917, 0.595396,
		-0.381208, 0.869229, -0.314835,
		39.801964, 32.226540, 37.931137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278019, 31.517889, 37.993843>,  <40.068810, 31.618078, 38.151524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278019, 31.517889, 37.993843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371620, 31.848032, 37.788307>,  <39.427780, 32.046120, 37.664986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.371620, 31.848032, 37.788307>,  <39.278019, 31.517889, 37.993843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.371620, 31.848032, 37.788307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571521, -0.310776, -0.759462,
		-0.786516, 0.471382, 0.398988,
		0.234001, 0.825359, -0.513835,
		39.441822, 32.095638, 37.634155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717052, 31.713636, 37.771252>,  <39.278019, 31.517889, 37.993843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717052, 31.713636, 37.771252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927322, 31.943737, 37.520573>,  <39.053486, 32.081799, 37.370167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927322, 31.943737, 37.520573>,  <38.717052, 31.713636, 37.771252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927322, 31.943737, 37.520573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650704, -0.202622, -0.731798,
		-0.547953, 0.792482, 0.267807,
		0.525673, 0.575254, -0.626698,
		39.085026, 32.116314, 37.332561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273228, 32.179390, 37.356350>,  <38.717052, 31.713636, 37.771252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273228, 32.179390, 37.356350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603970, 32.151726, 37.133091>,  <38.802414, 32.135128, 36.999134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.603970, 32.151726, 37.133091>,  <38.273228, 32.179390, 37.356350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.603970, 32.151726, 37.133091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562328, -0.084257, -0.822610,
		0.009867, 0.994041, -0.108561,
		0.826855, -0.069163, -0.558146,
		38.852028, 32.130978, 36.965649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029888, 32.560280, 36.866463>,  <38.273228, 32.179390, 37.356350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029888, 32.560280, 36.866463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346600, 32.352634, 36.737713>,  <38.536629, 32.228046, 36.660465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.346600, 32.352634, 36.737713>,  <38.029888, 32.560280, 36.866463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.346600, 32.352634, 36.737713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403405, -0.048750, -0.913722,
		0.458637, 0.853312, -0.248013,
		0.791781, -0.519116, -0.321872,
		38.584133, 32.196899, 36.641151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.289955, 32.856575, 36.163216>,  <38.029888, 32.560280, 36.866463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.289955, 32.856575, 36.163216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409081, 32.475220, 36.182659>,  <38.480556, 32.246407, 36.194324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.409081, 32.475220, 36.182659>,  <38.289955, 32.856575, 36.163216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409081, 32.475220, 36.182659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400977, -0.171139, -0.899961,
		0.866328, 0.248530, -0.433254,
		0.297814, -0.953386, 0.048607,
		38.498425, 32.189205, 36.197243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341892, 32.700417, 35.488346>,  <38.289955, 32.856575, 36.163216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341892, 32.700417, 35.488346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364727, 32.332191, 35.642910>,  <38.378429, 32.111256, 35.735649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.364727, 32.332191, 35.642910>,  <38.341892, 32.700417, 35.488346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364727, 32.332191, 35.642910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556476, -0.350683, -0.753230,
		0.828900, -0.172027, -0.532289,
		0.057088, -0.920559, 0.386410,
		38.381855, 32.056023, 35.758835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.600475, 32.125721, 35.055992>,  <38.341892, 32.700417, 35.488346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.600475, 32.125721, 35.055992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391907, 31.901146, 35.313026>,  <38.266766, 31.766401, 35.467247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391907, 31.901146, 35.313026>,  <38.600475, 32.125721, 35.055992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391907, 31.901146, 35.313026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339541, -0.554356, -0.759869,
		0.782837, -0.614394, 0.098421,
		-0.521419, -0.561435, 0.642582,
		38.235481, 31.732716, 35.505802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657734, 31.458427, 34.773163>,  <38.600475, 32.125721, 35.055992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.657734, 31.458427, 34.773163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347771, 31.446381, 35.025707>,  <38.161793, 31.439152, 35.177235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347771, 31.446381, 35.025707>,  <38.657734, 31.458427, 34.773163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347771, 31.446381, 35.025707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539143, -0.489871, -0.685092,
		0.329918, -0.871275, 0.363366,
		-0.774906, -0.030118, 0.631359,
		38.115299, 31.437346, 35.215115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479637, 30.821312, 34.800198>,  <38.657734, 31.458427, 34.773163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479637, 30.821312, 34.800198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138718, 30.999689, 34.909534>,  <37.934166, 31.106716, 34.975136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138718, 30.999689, 34.909534>,  <38.479637, 30.821312, 34.800198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138718, 30.999689, 34.909534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501600, -0.548723, -0.668806,
		-0.148258, -0.707134, 0.691362,
		-0.852301, 0.445943, 0.273345,
		37.883026, 31.133472, 34.991539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893250, 30.281157, 34.761353>,  <38.479637, 30.821312, 34.800198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893250, 30.281157, 34.761353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664478, 30.608406, 34.785286>,  <37.527218, 30.804756, 34.799648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664478, 30.608406, 34.785286>,  <37.893250, 30.281157, 34.761353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664478, 30.608406, 34.785286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656651, -0.412885, -0.631138,
		-0.491643, -0.400253, 0.773359,
		-0.571923, 0.818122, 0.059835,
		37.492901, 30.853842, 34.803238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103348, 30.060728, 34.941570>,  <37.893250, 30.281157, 34.761353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103348, 30.060728, 34.941570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069618, 30.428547, 34.788040>,  <37.049381, 30.649239, 34.695923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.069618, 30.428547, 34.788040>,  <37.103348, 30.060728, 34.941570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069618, 30.428547, 34.788040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851927, -0.266322, -0.450880,
		-0.516826, 0.288969, 0.805846,
		-0.084324, 0.919549, -0.383823,
		37.044319, 30.704412, 34.672894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411106, 30.327694, 35.029354>,  <37.103348, 30.060728, 34.941570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411106, 30.327694, 35.029354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568821, 30.543142, 34.731514>,  <36.663448, 30.672411, 34.552811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.568821, 30.543142, 34.731514>,  <36.411106, 30.327694, 35.029354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568821, 30.543142, 34.731514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834169, -0.130224, -0.535915,
		-0.385619, 0.832424, 0.397955,
		0.394285, 0.538621, -0.744599,
		36.687107, 30.704729, 34.508133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.970558, 30.785151, 34.786095>,  <36.411106, 30.327694, 35.029354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.970558, 30.785151, 34.786095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220016, 30.754532, 34.474915>,  <36.369694, 30.736160, 34.288208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220016, 30.754532, 34.474915>,  <35.970558, 30.785151, 34.786095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220016, 30.754532, 34.474915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776566, -0.174585, -0.605364,
		-0.089480, 0.981662, -0.168322,
		0.623649, -0.076545, -0.777948,
		36.407112, 30.731567, 34.241531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495480, 31.002092, 34.336597>,  <35.970558, 30.785151, 34.786095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495480, 31.002092, 34.336597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795628, 30.805643, 34.159630>,  <35.975716, 30.687773, 34.053448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.795628, 30.805643, 34.159630>,  <35.495480, 31.002092, 34.336597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795628, 30.805643, 34.159630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629059, -0.324968, -0.706174,
		0.203046, 0.808203, -0.552793,
		0.750371, -0.491125, -0.442424,
		36.020741, 30.658306, 34.026901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463600, 31.149046, 33.655849>,  <35.495480, 31.002092, 34.336597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463600, 31.149046, 33.655849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673847, 30.809082, 33.670731>,  <35.799995, 30.605104, 33.679661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673847, 30.809082, 33.670731>,  <35.463600, 31.149046, 33.655849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673847, 30.809082, 33.670731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631424, -0.419056, -0.652454,
		0.570117, 0.319448, -0.756915,
		0.525614, -0.849909, 0.037204,
		35.831532, 30.554110, 33.681892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.767063, 31.074362, 33.019260>,  <35.463600, 31.149046, 33.655849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.767063, 31.074362, 33.019260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736561, 30.716673, 33.195694>,  <35.718262, 30.502060, 33.301556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736561, 30.716673, 33.195694>,  <35.767063, 31.074362, 33.019260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736561, 30.716673, 33.195694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625436, -0.301627, -0.719619,
		0.776541, -0.330742, -0.536278,
		-0.076252, -0.894221, 0.441083,
		35.713684, 30.448406, 33.328018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.880432, 30.554600, 32.463657>,  <35.767063, 31.074362, 33.019260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.880432, 30.554600, 32.463657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721157, 30.352390, 32.769833>,  <35.625591, 30.231064, 32.953537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721157, 30.352390, 32.769833>,  <35.880432, 30.554600, 32.463657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721157, 30.352390, 32.769833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429207, -0.634787, -0.642517,
		0.810697, -0.584371, 0.035788,
		-0.398186, -0.505526, 0.765436,
		35.601700, 30.200733, 32.999462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839092, 29.918375, 32.209122>,  <35.880432, 30.554600, 32.463657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839092, 29.918375, 32.209122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623325, 29.859386, 32.540733>,  <35.493866, 29.823994, 32.739700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.623325, 29.859386, 32.540733>,  <35.839092, 29.918375, 32.209122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.623325, 29.859386, 32.540733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585026, -0.642477, -0.494942,
		0.605619, -0.751981, 0.260288,
		-0.539417, -0.147471, 0.829025,
		35.461502, 29.815145, 32.789440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.856136, 29.182207, 32.390854>,  <35.839092, 29.918375, 32.209122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.856136, 29.182207, 32.390854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533257, 29.348745, 32.558231>,  <35.339531, 29.448669, 32.658657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.533257, 29.348745, 32.558231>,  <35.856136, 29.182207, 32.390854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.533257, 29.348745, 32.558231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582722, -0.675153, -0.452330,
		0.094185, -0.608953, 0.787595,
		-0.807195, 0.416347, 0.418439,
		35.291100, 29.473650, 32.683762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503746, 28.600269, 32.612553>,  <35.856136, 29.182207, 32.390854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503746, 28.600269, 32.612553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222431, 28.884537, 32.619827>,  <35.053642, 29.055098, 32.624191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.222431, 28.884537, 32.619827>,  <35.503746, 28.600269, 32.612553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222431, 28.884537, 32.619827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647231, -0.629510, -0.429893,
		-0.294066, -0.314109, 0.902696,
		-0.703290, 0.710670, 0.018184,
		35.011444, 29.097738, 32.625282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873409, 28.310968, 32.981735>,  <35.503746, 28.600269, 32.612553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873409, 28.310968, 32.981735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770294, 28.623617, 32.754539>,  <34.708424, 28.811207, 32.618221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770294, 28.623617, 32.754539>,  <34.873409, 28.310968, 32.981735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770294, 28.623617, 32.754539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737382, -0.539024, -0.407089,
		-0.624350, 0.313884, 0.715307,
		-0.257789, 0.781620, -0.567992,
		34.692959, 28.858103, 32.584141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182575, 28.222908, 32.892372>,  <34.873409, 28.310968, 32.981735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182575, 28.222908, 32.892372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237640, 28.496111, 32.605442>,  <34.270679, 28.660032, 32.433285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.237640, 28.496111, 32.605442>,  <34.182575, 28.222908, 32.892372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.237640, 28.496111, 32.605442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719117, -0.429100, -0.546575,
		-0.681118, 0.591079, 0.432092,
		0.137659, 0.683007, -0.717323,
		34.278938, 28.701014, 32.390244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.573578, 28.239088, 32.587551>,  <34.182575, 28.222908, 32.892372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.573578, 28.239088, 32.587551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821121, 28.371641, 32.302677>,  <33.969646, 28.451172, 32.131752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.821121, 28.371641, 32.302677>,  <33.573578, 28.239088, 32.587551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821121, 28.371641, 32.302677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521794, -0.504283, -0.688062,
		-0.587152, 0.797424, -0.139166,
		0.618857, 0.331381, -0.712182,
		34.006779, 28.471056, 32.089024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.180332, 28.443848, 31.979832>,  <33.573578, 28.239088, 32.587551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.180332, 28.443848, 31.979832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540203, 28.403576, 31.809917>,  <33.756126, 28.379414, 31.707970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540203, 28.403576, 31.809917>,  <33.180332, 28.443848, 31.979832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540203, 28.403576, 31.809917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421572, -0.453073, -0.785494,
		-0.113376, 0.885770, -0.450064,
		0.899679, -0.100678, -0.424784,
		33.810108, 28.373373, 31.682482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178818, 28.778362, 31.303436>,  <33.180332, 28.443848, 31.979832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178818, 28.778362, 31.303436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480656, 28.515896, 31.301121>,  <33.661758, 28.358418, 31.299730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480656, 28.515896, 31.301121>,  <33.178818, 28.778362, 31.303436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480656, 28.515896, 31.301121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341142, -0.384748, -0.857666,
		0.560541, 0.649168, -0.514174,
		0.754596, -0.656164, -0.005791,
		33.707035, 28.319046, 31.299383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396191, 28.734205, 30.604044>,  <33.178818, 28.778362, 31.303436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396191, 28.734205, 30.604044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501724, 28.398188, 30.793663>,  <33.565044, 28.196577, 30.907434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501724, 28.398188, 30.793663>,  <33.396191, 28.734205, 30.604044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501724, 28.398188, 30.793663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394148, -0.542449, -0.741888,
		0.880363, 0.008891, -0.474218,
		0.263835, -0.840042, 0.474047,
		33.580875, 28.146175, 30.935877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.820938, 28.295237, 30.146677>,  <33.396191, 28.734205, 30.604044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.820938, 28.295237, 30.146677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653950, 28.062849, 30.426159>,  <33.553757, 27.923416, 30.593847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.653950, 28.062849, 30.426159>,  <33.820938, 28.295237, 30.146677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.653950, 28.062849, 30.426159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349957, -0.606811, -0.713660,
		0.838597, -0.542452, 0.050014,
		-0.417476, -0.580970, 0.698704,
		33.528706, 27.888557, 30.635771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912685, 27.706825, 29.872118>,  <33.820938, 28.295237, 30.146677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912685, 27.706825, 29.872118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622509, 27.645241, 30.140455>,  <33.448402, 27.608290, 30.301456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.622509, 27.645241, 30.140455>,  <33.912685, 27.706825, 29.872118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622509, 27.645241, 30.140455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455350, -0.623522, -0.635513,
		0.516128, -0.766496, 0.382224,
		-0.725443, -0.153960, 0.670841,
		33.404877, 27.599052, 30.341707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757393, 27.000193, 29.813057>,  <33.912685, 27.706825, 29.872118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757393, 27.000193, 29.813057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433315, 27.091511, 30.029005>,  <33.238869, 27.146301, 30.158575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.433315, 27.091511, 30.029005>,  <33.757393, 27.000193, 29.813057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433315, 27.091511, 30.029005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581375, -0.430397, -0.690479,
		0.074726, -0.873293, 0.481431,
		-0.810197, 0.228295, 0.539872,
		33.190258, 27.160000, 30.190968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328201, 26.419436, 29.756462>,  <33.757393, 27.000193, 29.813057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328201, 26.419436, 29.756462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084774, 26.720417, 29.857227>,  <32.938717, 26.901005, 29.917686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084774, 26.720417, 29.857227>,  <33.328201, 26.419436, 29.756462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084774, 26.720417, 29.857227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726314, -0.400378, -0.558717,
		-0.319546, -0.522987, 0.790174,
		-0.608570, 0.752451, 0.251913,
		32.902203, 26.946152, 29.932800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678795, 26.107008, 29.840982>,  <33.328201, 26.419436, 29.756462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678795, 26.107008, 29.840982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615303, 26.497766, 29.783745>,  <32.577206, 26.732222, 29.749401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.615303, 26.497766, 29.783745>,  <32.678795, 26.107008, 29.840982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615303, 26.497766, 29.783745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690785, -0.213439, -0.690841,
		-0.705422, -0.010811, 0.708705,
		-0.158734, 0.976897, -0.143096,
		32.567684, 26.790836, 29.740816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067410, 26.203188, 29.886782>,  <32.678795, 26.107008, 29.840982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067410, 26.203188, 29.886782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119522, 26.553457, 29.700783>,  <32.150791, 26.763618, 29.589184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119522, 26.553457, 29.700783>,  <32.067410, 26.203188, 29.886782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119522, 26.553457, 29.700783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891640, -0.101622, -0.441192,
		-0.433594, 0.472092, 0.767545,
		0.130284, 0.875672, -0.464999,
		32.158607, 26.816158, 29.561283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443190, 26.517246, 30.004656>,  <32.067410, 26.203188, 29.886782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443190, 26.517246, 30.004656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636164, 26.668434, 29.688580>,  <31.751947, 26.759146, 29.498934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.636164, 26.668434, 29.688580>,  <31.443190, 26.517246, 30.004656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.636164, 26.668434, 29.688580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840091, -0.055761, -0.539572,
		-0.248003, 0.924138, 0.290626,
		0.482434, 0.377968, -0.790189,
		31.780893, 26.781824, 29.451523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968428, 26.981592, 29.586428>,  <31.443190, 26.517246, 30.004656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968428, 26.981592, 29.586428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241526, 26.871418, 29.315727>,  <31.405384, 26.805313, 29.153307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.241526, 26.871418, 29.315727>,  <30.968428, 26.981592, 29.586428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241526, 26.871418, 29.315727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727995, -0.177447, -0.662221,
		0.062311, 0.944801, -0.321666,
		0.682745, -0.275435, -0.676753,
		31.446350, 26.788788, 29.112701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759510, 27.287228, 28.976347>,  <30.968428, 26.981592, 29.586428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759510, 27.287228, 28.976347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006809, 26.993822, 28.863403>,  <31.155188, 26.817778, 28.795637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.006809, 26.993822, 28.863403>,  <30.759510, 27.287228, 28.976347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.006809, 26.993822, 28.863403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673263, -0.308857, -0.671807,
		0.405573, 0.605443, -0.684799,
		0.618246, -0.733516, -0.282358,
		31.192284, 26.773767, 28.778696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721481, 27.268572, 28.316828>,  <30.759510, 27.287228, 28.976347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721481, 27.268572, 28.316828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873608, 26.904762, 28.383913>,  <30.964884, 26.686478, 28.424164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.873608, 26.904762, 28.383913>,  <30.721481, 27.268572, 28.316828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.873608, 26.904762, 28.383913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607660, -0.382443, -0.696051,
		0.697214, 0.162808, -0.698130,
		0.380318, -0.909522, 0.167712,
		30.987703, 26.631905, 28.434227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.924091, 27.010389, 27.631758>,  <30.721481, 27.268572, 28.316828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.924091, 27.010389, 27.631758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870142, 26.707253, 27.887096>,  <30.837772, 26.525372, 28.040300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.870142, 26.707253, 27.887096>,  <30.924091, 27.010389, 27.631758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.870142, 26.707253, 27.887096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636637, -0.427386, -0.641900,
		0.759278, -0.492971, -0.424826,
		-0.134873, -0.757840, 0.638348,
		30.829679, 26.479900, 28.078600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964750, 26.465508, 27.224600>,  <30.924091, 27.010389, 27.631758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964750, 26.465508, 27.224600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791338, 26.313459, 27.551416>,  <30.687290, 26.222231, 27.747507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791338, 26.313459, 27.551416>,  <30.964750, 26.465508, 27.224600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791338, 26.313459, 27.551416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602159, -0.552333, -0.576483,
		0.670413, -0.741913, 0.010560,
		-0.433533, -0.380123, 0.817041,
		30.661278, 26.199423, 27.796528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870960, 25.795624, 27.036236>,  <30.964750, 26.465508, 27.224600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870960, 25.795624, 27.036236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612661, 25.832823, 27.339382>,  <30.457682, 25.855143, 27.521271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.612661, 25.832823, 27.339382>,  <30.870960, 25.795624, 27.036236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612661, 25.832823, 27.339382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697899, -0.474539, -0.536423,
		0.309752, -0.875309, 0.371334,
		-0.645748, 0.092995, 0.757867,
		30.418938, 25.860722, 27.566742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563015, 25.143848, 27.342115>,  <30.870960, 25.795624, 27.036236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563015, 25.143848, 27.342115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315985, 25.457693, 27.363977>,  <30.167767, 25.646000, 27.377094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315985, 25.457693, 27.363977>,  <30.563015, 25.143848, 27.342115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315985, 25.457693, 27.363977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709285, -0.525563, -0.469786,
		-0.339874, -0.328894, 0.881087,
		-0.617576, 0.784610, 0.054655,
		30.130713, 25.693075, 27.380373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.872435, 25.008682, 27.785845>,  <30.563015, 25.143848, 27.342115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.872435, 25.008682, 27.785845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804031, 25.272387, 27.492960>,  <29.762989, 25.430609, 27.317230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804031, 25.272387, 27.492960>,  <29.872435, 25.008682, 27.785845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804031, 25.272387, 27.492960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757980, -0.562810, -0.329713,
		-0.629462, 0.498618, 0.595951,
		-0.171006, 0.659261, -0.732210,
		29.752729, 25.470165, 27.273296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.149862, 25.392002, 27.680250>,  <29.872435, 25.008682, 27.785845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.149862, 25.392002, 27.680250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350756, 25.289640, 27.349850>,  <29.471292, 25.228224, 27.151609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.350756, 25.289640, 27.349850>,  <29.149862, 25.392002, 27.680250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350756, 25.289640, 27.349850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780816, -0.544687, -0.306011,
		-0.371602, 0.798642, -0.473374,
		0.502234, -0.255903, -0.825999,
		29.501427, 25.212870, 27.102051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768929, 25.537313, 27.086439>,  <29.149862, 25.392002, 27.680250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768929, 25.537313, 27.086439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029026, 25.237610, 27.036175>,  <29.185085, 25.057787, 27.006016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.029026, 25.237610, 27.036175>,  <28.768929, 25.537313, 27.086439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.029026, 25.237610, 27.036175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733302, -0.575744, -0.361645,
		0.198618, 0.327305, -0.923809,
		0.650246, -0.749260, -0.125660,
		29.224100, 25.012833, 26.998476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.875114, 25.432266, 26.341335>,  <28.768929, 25.537313, 27.086439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.875114, 25.432266, 26.341335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923071, 25.104441, 26.565458>,  <28.951845, 24.907745, 26.699932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.923071, 25.104441, 26.565458>,  <28.875114, 25.432266, 26.341335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.923071, 25.104441, 26.565458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855476, -0.371666, -0.360589,
		0.503772, -0.436098, -0.745676,
		0.119890, -0.819563, 0.560307,
		28.959038, 24.858572, 26.733551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246065, 25.095430, 26.516312>,  <28.875114, 25.432266, 26.341335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246065, 25.095430, 26.516312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492849, 24.798462, 26.620752>,  <28.640919, 24.620281, 26.683416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492849, 24.798462, 26.620752>,  <28.246065, 25.095430, 26.516312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492849, 24.798462, 26.620752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385777, 0.003876, 0.922584,
		-0.685958, -0.669922, -0.284018,
		0.616959, -0.742421, 0.261100,
		28.677937, 24.575735, 26.699081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.524488, 25.110289, 26.694901>,  <28.246065, 25.095430, 26.516312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.524488, 25.110289, 26.694901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644571, 25.355253, 26.987429>,  <27.716621, 25.502232, 27.162945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.644571, 25.355253, 26.987429>,  <27.524488, 25.110289, 26.694901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.644571, 25.355253, 26.987429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.947760, 0.278177, 0.156108,
		-0.107835, -0.739981, 0.663928,
		0.300206, 0.612410, 0.731321,
		27.734632, 25.538977, 27.206825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.004633, 24.948357, 27.241152>,  <27.524488, 25.110289, 26.694901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.004633, 24.948357, 27.241152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194933, 25.298979, 27.212011>,  <27.309113, 25.509352, 27.194527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.194933, 25.298979, 27.212011>,  <27.004633, 24.948357, 27.241152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194933, 25.298979, 27.212011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872036, 0.480876, 0.091167,
		0.114946, 0.020157, 0.993167,
		0.475752, 0.876557, -0.072852,
		27.337658, 25.561947, 27.190155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051802, 25.138390, 28.058975>,  <27.004633, 24.948357, 27.241152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051802, 25.138390, 28.058975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412329, 25.311592, 28.063559>,  <27.628645, 25.415514, 28.066309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.412329, 25.311592, 28.063559>,  <27.051802, 25.138390, 28.058975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412329, 25.311592, 28.063559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256267, 0.511731, 0.820036,
		0.349213, -0.742051, 0.572198,
		0.901320, 0.433003, 0.011460,
		27.682724, 25.441494, 28.066996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.005394, 25.590450, 28.575251>,  <27.051802, 25.138390, 28.058975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.005394, 25.590450, 28.575251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402603, 25.606104, 28.530760>,  <27.640928, 25.615496, 28.504065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.402603, 25.606104, 28.530760>,  <27.005394, 25.590450, 28.575251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402603, 25.606104, 28.530760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063312, 0.618828, 0.782971,
		0.099471, -0.784551, 0.612033,
		0.993024, 0.039134, -0.111227,
		27.700510, 25.617844, 28.497391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.281847, 25.765570, 29.230507>,  <27.005394, 25.590450, 28.575251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.281847, 25.765570, 29.230507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584406, 25.842730, 28.980497>,  <27.765942, 25.889025, 28.830492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584406, 25.842730, 28.980497>,  <27.281847, 25.765570, 29.230507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584406, 25.842730, 28.980497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436250, 0.563212, 0.701768,
		0.487393, -0.803481, 0.341858,
		0.756396, 0.192901, -0.625024,
		27.811325, 25.900600, 28.792990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.794373, 25.828436, 29.691950>,  <27.281847, 25.765570, 29.230507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.794373, 25.828436, 29.691950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962214, 25.981026, 29.362488>,  <28.062918, 26.072580, 29.164810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962214, 25.981026, 29.362488>,  <27.794373, 25.828436, 29.691950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962214, 25.981026, 29.362488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552950, 0.612183, 0.565225,
		0.719849, -0.692609, 0.045935,
		0.419601, 0.381476, -0.823657,
		28.088095, 26.095469, 29.115391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498520, 25.703863, 29.851494>,  <27.794373, 25.828436, 29.691950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498520, 25.703863, 29.851494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442070, 26.007257, 29.597004>,  <28.408199, 26.189295, 29.444311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.442070, 26.007257, 29.597004>,  <28.498520, 25.703863, 29.851494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.442070, 26.007257, 29.597004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633640, 0.562980, 0.530616,
		0.760647, -0.328252, -0.560059,
		-0.141126, 0.758488, -0.636223,
		28.399733, 26.234804, 29.406137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.159853, 26.055021, 29.822325>,  <28.498520, 25.703863, 29.851494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.159853, 26.055021, 29.822325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930906, 26.326431, 29.638151>,  <28.793539, 26.489277, 29.527647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.930906, 26.326431, 29.638151>,  <29.159853, 26.055021, 29.822325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.930906, 26.326431, 29.638151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543373, 0.734372, 0.406748,
		0.614119, -0.017378, -0.789023,
		-0.572367, 0.678525, -0.460434,
		28.759195, 26.529989, 29.500021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.510025, 26.583572, 29.657211>,  <29.159853, 26.055021, 29.822325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.510025, 26.583572, 29.657211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144289, 26.745338, 29.665552>,  <28.924849, 26.842398, 29.670557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.144289, 26.745338, 29.665552>,  <29.510025, 26.583572, 29.657211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144289, 26.745338, 29.665552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353413, 0.771771, 0.528649,
		0.197701, 0.490733, -0.848585,
		-0.914338, 0.404415, 0.020851,
		28.869987, 26.866663, 29.671808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.649542, 27.256872, 29.486683>,  <29.510025, 26.583572, 29.657211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.649542, 27.256872, 29.486683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283667, 27.270149, 29.647800>,  <29.064142, 27.278116, 29.744471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.283667, 27.270149, 29.647800>,  <29.649542, 27.256872, 29.486683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283667, 27.270149, 29.647800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223372, 0.872096, 0.435377,
		-0.336824, 0.488208, -0.805110,
		-0.914688, 0.033193, 0.402795,
		29.009260, 27.280107, 29.768639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469036, 27.979918, 29.526148>,  <29.649542, 27.256872, 29.486683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469036, 27.979918, 29.526148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214235, 27.835726, 29.798700>,  <29.061354, 27.749210, 29.962233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.214235, 27.835726, 29.798700>,  <29.469036, 27.979918, 29.526148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.214235, 27.835726, 29.798700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186400, 0.785663, 0.589906,
		-0.747985, 0.502782, -0.433277,
		-0.637004, -0.360478, 0.681382,
		29.023134, 27.727583, 30.003115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.937965, 28.518217, 29.754610>,  <29.469036, 27.979918, 29.526148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.937965, 28.518217, 29.754610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972565, 28.235575, 30.035530>,  <28.993324, 28.065989, 30.204082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.972565, 28.235575, 30.035530>,  <28.937965, 28.518217, 29.754610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.972565, 28.235575, 30.035530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420691, 0.664916, 0.617176,
		-0.903071, 0.242067, 0.354778,
		0.086499, -0.706605, 0.702301,
		28.998514, 28.023594, 30.246220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.687416, 28.792109, 30.453054>,  <28.937965, 28.518217, 29.754610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.687416, 28.792109, 30.453054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932941, 28.489403, 30.542978>,  <29.080257, 28.307779, 30.596933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.932941, 28.489403, 30.542978>,  <28.687416, 28.792109, 30.453054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932941, 28.489403, 30.542978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412505, 0.550250, 0.725992,
		-0.673107, -0.352889, 0.649920,
		0.613813, -0.756766, 0.224809,
		29.117085, 28.262373, 30.610420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.653482, 28.851940, 31.080299>,  <28.687416, 28.792109, 30.453054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.653482, 28.851940, 31.080299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983221, 28.629805, 31.036392>,  <29.181065, 28.496523, 31.010048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.983221, 28.629805, 31.036392>,  <28.653482, 28.851940, 31.080299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.983221, 28.629805, 31.036392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452785, 0.530459, 0.716658,
		-0.339760, -0.640477, 0.688732,
		0.824348, -0.555339, -0.109769,
		29.230526, 28.463203, 31.003462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925056, 28.901819, 31.773062>,  <28.653482, 28.851940, 31.080299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925056, 28.901819, 31.773062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236719, 28.777277, 31.555449>,  <29.423717, 28.702553, 31.424881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.236719, 28.777277, 31.555449>,  <28.925056, 28.901819, 31.773062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236719, 28.777277, 31.555449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590733, 0.655000, 0.471179,
		0.209639, -0.688501, 0.694275,
		0.779158, -0.311354, -0.544033,
		29.470467, 28.683870, 31.392239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.451571, 28.714464, 32.298927>,  <28.925056, 28.901819, 31.773062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.451571, 28.714464, 32.298927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633434, 28.747150, 31.944162>,  <29.742552, 28.766762, 31.731304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633434, 28.747150, 31.944162>,  <29.451571, 28.714464, 32.298927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633434, 28.747150, 31.944162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734139, 0.529442, 0.425125,
		0.504305, -0.844402, 0.180728,
		0.454661, 0.081713, -0.886909,
		29.769833, 28.771666, 31.678089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112110, 28.637983, 32.506210>,  <29.451571, 28.714464, 32.298927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112110, 28.637983, 32.506210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113207, 28.810141, 32.145157>,  <30.113865, 28.913435, 31.928524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113207, 28.810141, 32.145157>,  <30.112110, 28.637983, 32.506210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113207, 28.810141, 32.145157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686008, 0.655944, 0.314851,
		0.727589, -0.620080, -0.293453,
		0.002744, 0.430393, -0.902638,
		30.114031, 28.939259, 31.874365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835325, 28.803219, 32.280651>,  <30.112110, 28.637983, 32.506210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835325, 28.803219, 32.280651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599384, 29.054342, 32.077503>,  <30.457819, 29.205017, 31.955616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.599384, 29.054342, 32.077503>,  <30.835325, 28.803219, 32.280651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.599384, 29.054342, 32.077503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588165, 0.764955, 0.262500,
		0.553295, -0.143873, -0.820466,
		-0.589853, 0.627810, -0.507867,
		30.422428, 29.242685, 31.925142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295996, 29.185707, 31.971382>,  <30.835325, 28.803219, 32.280651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295996, 29.185707, 31.971382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962542, 29.399532, 32.026939>,  <30.762468, 29.527828, 32.060272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.962542, 29.399532, 32.026939>,  <31.295996, 29.185707, 31.971382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.962542, 29.399532, 32.026939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551968, 0.797443, 0.243754,
		0.019542, 0.279867, -0.959840,
		-0.833636, 0.534565, 0.138894,
		30.712450, 29.559902, 32.068607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506428, 29.834579, 31.782879>,  <31.295996, 29.185707, 31.971382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506428, 29.834579, 31.782879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168970, 29.953819, 31.961496>,  <30.966496, 30.025364, 32.068668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.168970, 29.953819, 31.961496>,  <31.506428, 29.834579, 31.782879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168970, 29.953819, 31.961496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514561, 0.686347, 0.513960,
		-0.153271, 0.663373, -0.732424,
		-0.843644, 0.298102, 0.446543,
		30.915876, 30.043249, 32.095459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466085, 30.565989, 31.772615>,  <31.506428, 29.834579, 31.782879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466085, 30.565989, 31.772615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228710, 30.463310, 32.077755>,  <31.086285, 30.401703, 32.260838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.228710, 30.463310, 32.077755>,  <31.466085, 30.565989, 31.772615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228710, 30.463310, 32.077755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422845, 0.707023, 0.566852,
		-0.684861, 0.658958, -0.311031,
		-0.593438, -0.256697, 0.762849,
		31.050678, 30.386301, 32.306610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302628, 31.204794, 32.094093>,  <31.466085, 30.565989, 31.772615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302628, 31.204794, 32.094093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203251, 30.929867, 32.367111>,  <31.143625, 30.764910, 32.530922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203251, 30.929867, 32.367111>,  <31.302628, 31.204794, 32.094093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203251, 30.929867, 32.367111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233819, 0.641250, 0.730840,
		-0.940003, 0.341164, 0.001395,
		-0.248442, -0.687318, 0.682548,
		31.128719, 30.723671, 32.571877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943882, 31.577940, 32.532070>,  <31.302628, 31.204794, 32.094093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943882, 31.577940, 32.532070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077950, 31.256184, 32.728279>,  <31.158390, 31.063129, 32.846004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.077950, 31.256184, 32.728279>,  <30.943882, 31.577940, 32.532070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077950, 31.256184, 32.728279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400372, 0.592895, 0.698697,
		-0.852856, -0.037791, 0.520777,
		0.335170, -0.804392, 0.490524,
		31.178501, 31.014866, 32.875435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827806, 31.592142, 33.250320>,  <30.943882, 31.577940, 32.532070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827806, 31.592142, 33.250320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145073, 31.350157, 33.222301>,  <31.335432, 31.204966, 33.205490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.145073, 31.350157, 33.222301>,  <30.827806, 31.592142, 33.250320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145073, 31.350157, 33.222301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415065, 0.452819, 0.789099,
		-0.445657, -0.654961, 0.610259,
		0.793165, -0.604964, -0.070050,
		31.383022, 31.168667, 33.201286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956095, 31.366787, 33.902168>,  <30.827806, 31.592142, 33.250320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956095, 31.366787, 33.902168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298531, 31.306131, 33.704536>,  <31.503992, 31.269739, 33.585957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298531, 31.306131, 33.704536>,  <30.956095, 31.366787, 33.902168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298531, 31.306131, 33.704536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514144, 0.152581, 0.844023,
		-0.052600, -0.976588, 0.208588,
		0.856089, -0.151640, -0.494081,
		31.555357, 31.260639, 33.556313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354624, 31.040253, 34.327011>,  <30.956095, 31.366787, 33.902168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354624, 31.040253, 34.327011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627455, 31.179510, 34.069775>,  <31.791153, 31.263065, 33.915432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.627455, 31.179510, 34.069775>,  <31.354624, 31.040253, 34.327011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627455, 31.179510, 34.069775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607741, 0.219235, 0.763274,
		0.406718, -0.911444, -0.062047,
		0.682079, 0.348146, -0.643089,
		31.832079, 31.283955, 33.876846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.905384, 31.033117, 34.762726>,  <31.354624, 31.040253, 34.327011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.905384, 31.033117, 34.762726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079800, 31.223991, 34.457527>,  <32.184448, 31.338516, 34.274406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.079800, 31.223991, 34.457527>,  <31.905384, 31.033117, 34.762726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.079800, 31.223991, 34.457527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733070, 0.303443, 0.608711,
		0.521994, -0.824753, -0.217496,
		0.436039, 0.477184, -0.762998,
		32.210609, 31.367147, 34.228626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577206, 30.842970, 34.835995>,  <31.905384, 31.033117, 34.762726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577206, 30.842970, 34.835995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590450, 31.184813, 34.628708>,  <32.598396, 31.389919, 34.504337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.590450, 31.184813, 34.628708>,  <32.577206, 30.842970, 34.835995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.590450, 31.184813, 34.628708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817444, 0.275174, 0.506028,
		0.575056, -0.440367, -0.689484,
		0.033109, 0.854609, -0.518216,
		32.600384, 31.441195, 34.473244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274456, 30.899439, 34.483662>,  <32.577206, 30.842970, 34.835995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.274456, 30.899439, 34.483662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091946, 31.245262, 34.567902>,  <32.982441, 31.452757, 34.618446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091946, 31.245262, 34.567902>,  <33.274456, 30.899439, 34.483662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091946, 31.245262, 34.567902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793583, 0.288287, 0.535833,
		0.402544, 0.411617, -0.817636,
		-0.456272, 0.864559, 0.210604,
		32.955063, 31.504629, 34.631084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803047, 31.242636, 34.737022>,  <33.274456, 30.899439, 34.483662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803047, 31.242636, 34.737022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514034, 31.504086, 34.827110>,  <33.340626, 31.660955, 34.881165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.514034, 31.504086, 34.827110>,  <33.803047, 31.242636, 34.737022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514034, 31.504086, 34.827110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625042, 0.478395, 0.616816,
		0.295420, 0.586442, -0.754197,
		-0.722531, 0.653624, 0.225224,
		33.297276, 31.700172, 34.894676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924152, 31.918375, 34.394447>,  <33.803047, 31.242636, 34.737022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924152, 31.918375, 34.394447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716488, 31.943319, 34.735405>,  <33.591888, 31.958286, 34.939980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.716488, 31.943319, 34.735405>,  <33.924152, 31.918375, 34.394447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716488, 31.943319, 34.735405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708171, 0.589759, 0.388172,
		-0.478502, 0.805168, -0.350344,
		-0.519162, 0.062362, 0.852398,
		33.560738, 31.962029, 34.991123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069889, 32.666786, 34.621407>,  <33.924152, 31.918375, 34.394447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069889, 32.666786, 34.621407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893681, 32.514359, 34.946545>,  <33.787956, 32.422901, 35.141628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.893681, 32.514359, 34.946545>,  <34.069889, 32.666786, 34.621407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893681, 32.514359, 34.946545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723625, 0.385155, 0.572733,
		-0.531325, 0.840500, 0.106082,
		-0.440524, -0.381070, 0.812849,
		33.761524, 32.400036, 35.190399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901791, 33.251236, 35.069946>,  <34.069889, 32.666786, 34.621407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901791, 33.251236, 35.069946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909149, 32.922394, 35.297562>,  <33.913563, 32.725090, 35.434132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.909149, 32.922394, 35.297562>,  <33.901791, 33.251236, 35.069946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909149, 32.922394, 35.297562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615532, 0.457807, 0.641509,
		-0.787897, 0.338461, 0.514453,
		0.018394, -0.822106, 0.569038,
		33.914669, 32.675762, 35.468273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890713, 33.439632, 35.779045>,  <33.901791, 33.251236, 35.069946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890713, 33.439632, 35.779045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022102, 33.062462, 35.800922>,  <34.100937, 32.836159, 35.814049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022102, 33.062462, 35.800922>,  <33.890713, 33.439632, 35.779045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022102, 33.062462, 35.800922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692219, 0.279726, 0.665271,
		-0.642604, -0.180661, 0.744596,
		0.328471, -0.942929, 0.054696,
		34.120644, 32.779583, 35.817329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864552, 33.229000, 36.486301>,  <33.890713, 33.439632, 35.779045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864552, 33.229000, 36.486301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149158, 32.984085, 36.348404>,  <34.319923, 32.837135, 36.265667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149158, 32.984085, 36.348404>,  <33.864552, 33.229000, 36.486301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149158, 32.984085, 36.348404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592716, 0.259477, 0.762469,
		-0.377394, -0.746847, 0.547534,
		0.711520, -0.612284, -0.344743,
		34.362614, 32.800400, 36.244980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155216, 33.017906, 37.118431>,  <33.864552, 33.229000, 36.486301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155216, 33.017906, 37.118431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448280, 32.900837, 36.872650>,  <34.624119, 32.830593, 36.725182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448280, 32.900837, 36.872650>,  <34.155216, 33.017906, 37.118431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448280, 32.900837, 36.872650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669679, 0.148949, 0.727561,
		-0.121419, -0.944539, 0.305129,
		0.732658, -0.292678, -0.614452,
		34.668079, 32.813034, 36.688313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.629288, 32.546665, 37.512272>,  <34.155216, 33.017906, 37.118431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.629288, 32.546665, 37.512272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846478, 32.658596, 37.195568>,  <34.976791, 32.725754, 37.005547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846478, 32.658596, 37.195568>,  <34.629288, 32.546665, 37.512272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846478, 32.658596, 37.195568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779391, 0.183071, 0.599194,
		0.312622, -0.942433, -0.118697,
		0.542970, 0.279832, -0.791756,
		35.009369, 32.742546, 36.958042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157936, 32.186729, 37.671112>,  <34.629288, 32.546665, 37.512272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157936, 32.186729, 37.671112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256573, 32.481468, 37.419323>,  <35.315754, 32.658314, 37.268250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.256573, 32.481468, 37.419323>,  <35.157936, 32.186729, 37.671112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.256573, 32.481468, 37.419323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833851, 0.169668, 0.525267,
		0.493846, -0.654418, -0.572585,
		0.246594, 0.736852, -0.629477,
		35.330551, 32.702522, 37.230480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860981, 32.084557, 37.381214>,  <35.157936, 32.186729, 37.671112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860981, 32.084557, 37.381214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778088, 32.473812, 37.341122>,  <35.728352, 32.707367, 37.317066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778088, 32.473812, 37.341122>,  <35.860981, 32.084557, 37.381214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778088, 32.473812, 37.341122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838503, 0.229469, 0.494224,
		0.503952, 0.018373, -0.863537,
		-0.207235, 0.973143, -0.100235,
		35.715916, 32.765755, 37.311050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.546631, 32.416626, 37.253433>,  <35.860981, 32.084557, 37.381214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.546631, 32.416626, 37.253433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315571, 32.730316, 37.344044>,  <36.176933, 32.918530, 37.398411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.315571, 32.730316, 37.344044>,  <36.546631, 32.416626, 37.253433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.315571, 32.730316, 37.344044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739940, 0.385875, 0.550989,
		0.344687, 0.485895, -0.803179,
		-0.577649, 0.784224, 0.226527,
		36.142277, 32.965584, 37.412003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.986145, 32.966980, 37.257320>,  <36.546631, 32.416626, 37.253433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.986145, 32.966980, 37.257320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673321, 33.123821, 37.451077>,  <36.485626, 33.217926, 37.567329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673321, 33.123821, 37.451077>,  <36.986145, 32.966980, 37.257320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673321, 33.123821, 37.451077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621279, 0.551534, 0.556618,
		-0.048904, 0.736250, -0.674940,
		-0.782062, 0.392105, 0.484389,
		36.438702, 33.241451, 37.596394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054138, 33.686390, 37.204563>,  <36.986145, 32.966980, 37.257320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054138, 33.686390, 37.204563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849361, 33.612053, 37.540035>,  <36.726498, 33.567451, 37.741318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.849361, 33.612053, 37.540035>,  <37.054138, 33.686390, 37.204563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.849361, 33.612053, 37.540035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737498, 0.405527, 0.540041,
		-0.440470, 0.894991, -0.070546,
		-0.511940, -0.185844, 0.838677,
		36.695778, 33.556301, 37.791637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132835, 34.349220, 37.540462>,  <37.054138, 33.686390, 37.204563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132835, 34.349220, 37.540462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061726, 34.064270, 37.812027>,  <37.019058, 33.893299, 37.974964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061726, 34.064270, 37.812027>,  <37.132835, 34.349220, 37.540462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061726, 34.064270, 37.812027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587008, 0.476953, 0.654169,
		-0.789821, 0.514821, 0.333379,
		-0.177774, -0.712373, 0.678912,
		37.008392, 33.850559, 38.015701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.894154, 34.654785, 38.162231>,  <37.132835, 34.349220, 37.540462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.894154, 34.654785, 38.162231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085209, 34.320908, 38.271877>,  <37.199844, 34.120579, 38.337666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085209, 34.320908, 38.271877>,  <36.894154, 34.654785, 38.162231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085209, 34.320908, 38.271877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463592, 0.504493, 0.728402,
		-0.746286, -0.220835, 0.627924,
		0.477640, -0.834697, 0.274119,
		37.228500, 34.070499, 38.354115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368832, 34.921589, 37.772228>,  <36.894154, 34.654785, 38.162231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368832, 34.921589, 37.772228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257774, 35.290169, 37.663532>,  <36.191139, 35.511318, 37.598312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257774, 35.290169, 37.663532>,  <36.368832, 34.921589, 37.772228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257774, 35.290169, 37.663532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701720, -0.387713, -0.597719,
		-0.656127, 0.024734, 0.754245,
		-0.277647, 0.921449, -0.271745,
		36.174480, 35.566605, 37.582008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.642921, 35.035614, 37.924763>,  <36.368832, 34.921589, 37.772228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.642921, 35.035614, 37.924763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753376, 35.262840, 37.614655>,  <35.819649, 35.399178, 37.428589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753376, 35.262840, 37.614655>,  <35.642921, 35.035614, 37.924763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753376, 35.262840, 37.614655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755493, -0.370332, -0.540448,
		-0.594119, 0.734951, 0.326908,
		0.276138, 0.568068, -0.775272,
		35.836216, 35.433262, 37.382072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999947, 35.263054, 37.689659>,  <35.642921, 35.035614, 37.924763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999947, 35.263054, 37.689659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231697, 35.376041, 37.383839>,  <35.370747, 35.443836, 37.200348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231697, 35.376041, 37.383839>,  <34.999947, 35.263054, 37.689659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231697, 35.376041, 37.383839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633399, -0.434310, -0.640454,
		-0.512960, 0.855327, -0.072713,
		0.579378, 0.282471, -0.764547,
		35.405510, 35.460781, 37.154476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.558022, 35.514763, 37.239079>,  <34.999947, 35.263054, 37.689659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.558022, 35.514763, 37.239079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858612, 35.443817, 36.984890>,  <35.038967, 35.401249, 36.832375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858612, 35.443817, 36.984890>,  <34.558022, 35.514763, 37.239079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858612, 35.443817, 36.984890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657372, -0.283199, -0.698327,
		-0.056111, 0.942519, -0.329408,
		0.751474, -0.177360, -0.635476,
		35.084053, 35.390610, 36.794247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326984, 35.767006, 36.636299>,  <34.558022, 35.514763, 37.239079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326984, 35.767006, 36.636299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615067, 35.523216, 36.503731>,  <34.787914, 35.376942, 36.424191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.615067, 35.523216, 36.503731>,  <34.326984, 35.767006, 36.636299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615067, 35.523216, 36.503731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638638, -0.395821, -0.659900,
		0.271008, 0.686924, -0.674307,
		0.720206, -0.609476, -0.331425,
		34.831127, 35.340374, 36.404305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326359, 35.872917, 35.879028>,  <34.326984, 35.767006, 36.636299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326359, 35.872917, 35.879028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525398, 35.535786, 35.961037>,  <34.644821, 35.333508, 36.010242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525398, 35.535786, 35.961037>,  <34.326359, 35.872917, 35.879028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525398, 35.535786, 35.961037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532443, -0.483380, -0.694873,
		0.684763, 0.236604, -0.689288,
		0.497598, -0.842830, 0.205023,
		34.674679, 35.282936, 36.022545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570789, 35.651939, 35.249527>,  <34.326359, 35.872917, 35.879028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570789, 35.651939, 35.249527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557232, 35.336891, 35.495617>,  <34.549099, 35.147861, 35.643272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.557232, 35.336891, 35.495617>,  <34.570789, 35.651939, 35.249527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557232, 35.336891, 35.495617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597152, -0.477657, -0.644401,
		0.801412, -0.389224, -0.454140,
		-0.033893, -0.787622, 0.615226,
		34.547066, 35.100605, 35.680183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580147, 35.219627, 34.722176>,  <34.570789, 35.651939, 35.249527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580147, 35.219627, 34.722176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460480, 35.003162, 35.036537>,  <34.388680, 34.873283, 35.225155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460480, 35.003162, 35.036537>,  <34.580147, 35.219627, 34.722176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460480, 35.003162, 35.036537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493969, -0.616836, -0.612788,
		0.816390, -0.571537, -0.082781,
		-0.299168, -0.541165, 0.785900,
		34.370728, 34.840813, 35.272308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.689308, 34.515808, 34.525444>,  <34.580147, 35.219627, 34.722176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.689308, 34.515808, 34.525444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411041, 34.530193, 34.812431>,  <34.244083, 34.538822, 34.984623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411041, 34.530193, 34.812431>,  <34.689308, 34.515808, 34.525444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411041, 34.530193, 34.812431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668952, -0.396454, -0.628751,
		0.261833, -0.917350, 0.299854,
		-0.695663, 0.035960, 0.717468,
		34.202343, 34.540981, 35.027672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.291832, 33.899002, 34.387150>,  <34.689308, 34.515808, 34.525444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.291832, 33.899002, 34.387150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030659, 34.094536, 34.618568>,  <33.873955, 34.211857, 34.757420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.030659, 34.094536, 34.618568>,  <34.291832, 33.899002, 34.387150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030659, 34.094536, 34.618568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749313, -0.305479, -0.587548,
		-0.110478, -0.817145, 0.565746,
		-0.652935, 0.488832, 0.578549,
		33.834778, 34.241184, 34.792133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.709629, 33.458607, 34.410473>,  <34.291832, 33.899002, 34.387150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.709629, 33.458607, 34.410473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554092, 33.798241, 34.553497>,  <33.460770, 34.002022, 34.639313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.554092, 33.798241, 34.553497>,  <33.709629, 33.458607, 34.410473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554092, 33.798241, 34.553497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886034, -0.238290, -0.397695,
		-0.252483, -0.471435, 0.844986,
		-0.388839, 0.849098, 0.357543,
		33.437439, 34.052967, 34.660767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140911, 33.326530, 34.750790>,  <33.709629, 33.458607, 34.410473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140911, 33.326530, 34.750790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056103, 33.700878, 34.638226>,  <33.005219, 33.925488, 34.570686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056103, 33.700878, 34.638226>,  <33.140911, 33.326530, 34.750790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056103, 33.700878, 34.638226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815282, -0.328162, -0.477100,
		-0.538852, 0.128272, 0.832577,
		-0.212022, 0.935872, -0.281408,
		32.992496, 33.981640, 34.553802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445168, 33.449696, 35.024662>,  <33.140911, 33.326530, 34.750790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445168, 33.449696, 35.024662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516411, 33.709412, 34.728909>,  <32.559155, 33.865242, 34.551456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516411, 33.709412, 34.728909>,  <32.445168, 33.449696, 35.024662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516411, 33.709412, 34.728909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802116, -0.339453, -0.491306,
		-0.569990, 0.680580, 0.460351,
		0.178106, 0.649294, -0.739388,
		32.569843, 33.904202, 34.507092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855164, 33.926693, 35.007076>,  <32.445168, 33.449696, 35.024662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855164, 33.926693, 35.007076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037239, 33.945679, 34.651424>,  <32.146484, 33.957069, 34.438034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037239, 33.945679, 34.651424>,  <31.855164, 33.926693, 35.007076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037239, 33.945679, 34.651424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865219, -0.212208, -0.454274,
		-0.210241, 0.976071, -0.055531,
		0.455188, 0.047460, -0.889130,
		32.173794, 33.959915, 34.384686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409620, 34.296272, 34.657364>,  <31.855164, 33.926693, 35.007076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409620, 34.296272, 34.657364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634167, 34.121208, 34.376415>,  <31.768894, 34.016171, 34.207848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634167, 34.121208, 34.376415>,  <31.409620, 34.296272, 34.657364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634167, 34.121208, 34.376415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818952, -0.171658, -0.547586,
		0.119089, 0.882603, -0.454786,
		0.561368, -0.437660, -0.702367,
		31.802578, 33.989910, 34.165707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257360, 34.646221, 33.878109>,  <31.409620, 34.296272, 34.657364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257360, 34.646221, 33.878109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415289, 34.279781, 33.850201>,  <31.510046, 34.059917, 33.833454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.415289, 34.279781, 33.850201>,  <31.257360, 34.646221, 33.878109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.415289, 34.279781, 33.850201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627460, -0.213389, -0.748838,
		0.671125, 0.339439, -0.659069,
		0.394823, -0.916104, -0.069774,
		31.533735, 34.004951, 33.829269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.478552, 34.490955, 33.233540>,  <31.257360, 34.646221, 33.878109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.478552, 34.490955, 33.233540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389822, 34.133854, 33.390404>,  <31.336584, 33.919594, 33.484520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389822, 34.133854, 33.390404>,  <31.478552, 34.490955, 33.233540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389822, 34.133854, 33.390404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676222, -0.148907, -0.721492,
		0.702509, -0.425230, -0.570667,
		-0.221824, -0.892752, 0.392158,
		31.323275, 33.866028, 33.508053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.513371, 34.069756, 32.550961>,  <31.478552, 34.490955, 33.233540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.513371, 34.069756, 32.550961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318295, 33.863613, 32.832832>,  <31.201250, 33.739929, 33.001953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318295, 33.863613, 32.832832>,  <31.513371, 34.069756, 32.550961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318295, 33.863613, 32.832832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508327, -0.488602, -0.709135,
		0.709763, -0.704042, -0.023683,
		-0.487689, -0.515356, 0.704675,
		31.171988, 33.709007, 33.044235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539232, 33.390144, 32.396793>,  <31.513371, 34.069756, 32.550961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539232, 33.390144, 32.396793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205576, 33.439991, 32.611710>,  <31.005383, 33.469898, 32.740658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205576, 33.439991, 32.611710>,  <31.539232, 33.390144, 32.396793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205576, 33.439991, 32.611710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513126, -0.532586, -0.673093,
		0.202273, -0.837151, 0.508197,
		-0.834139, 0.124621, 0.537292,
		30.955334, 33.477379, 32.772896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.163937, 32.740124, 32.258099>,  <31.539232, 33.390144, 32.396793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.163937, 32.740124, 32.258099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892567, 32.935932, 32.477226>,  <30.729746, 33.053417, 32.608704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892567, 32.935932, 32.477226>,  <31.163937, 32.740124, 32.258099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892567, 32.935932, 32.477226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724292, -0.570557, -0.387125,
		0.123058, -0.659418, 0.741636,
		-0.678424, 0.489522, 0.547823,
		30.689039, 33.082790, 32.641575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.828770, 32.282227, 32.765678>,  <31.163937, 32.740124, 32.258099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.828770, 32.282227, 32.765678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576412, 32.576141, 32.666031>,  <30.424997, 32.752491, 32.606243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576412, 32.576141, 32.666031>,  <30.828770, 32.282227, 32.765678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576412, 32.576141, 32.666031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574920, -0.658353, -0.485838,
		-0.520996, -0.163289, 0.837795,
		-0.630897, 0.734784, -0.249122,
		30.387144, 32.796577, 32.591293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.120920, 32.077087, 32.966682>,  <30.828770, 32.282227, 32.765678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.120920, 32.077087, 32.966682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126926, 32.339417, 32.664776>,  <30.130529, 32.496815, 32.483631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126926, 32.339417, 32.664776>,  <30.120920, 32.077087, 32.966682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126926, 32.339417, 32.664776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586292, -0.605696, -0.537954,
		-0.809960, 0.450593, 0.375407,
		0.015015, 0.655819, -0.754768,
		30.131432, 32.536163, 32.438347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.438564, 31.920036, 32.631714>,  <30.120920, 32.077087, 32.966682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.438564, 31.920036, 32.631714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649601, 32.131374, 32.365631>,  <29.776224, 32.258179, 32.205982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649601, 32.131374, 32.365631>,  <29.438564, 31.920036, 32.631714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649601, 32.131374, 32.365631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416064, -0.521989, -0.744592,
		-0.740632, 0.669609, -0.055572,
		0.527593, 0.528347, -0.665203,
		29.807878, 32.289879, 32.166069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971657, 32.150730, 32.054440>,  <29.438564, 31.920036, 32.631714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971657, 32.150730, 32.054440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343370, 32.144600, 31.906820>,  <29.566399, 32.140923, 31.818249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343370, 32.144600, 31.906820>,  <28.971657, 32.150730, 32.054440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343370, 32.144600, 31.906820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320835, -0.528574, -0.785923,
		-0.183023, 0.848749, -0.496113,
		0.929283, -0.015328, -0.369050,
		29.622156, 32.140003, 31.796104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819290, 32.220898, 31.365551>,  <28.971657, 32.150730, 32.054440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819290, 32.220898, 31.365551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203606, 32.111580, 31.384287>,  <29.434195, 32.045990, 31.395529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.203606, 32.111580, 31.384287>,  <28.819290, 32.220898, 31.365551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.203606, 32.111580, 31.384287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108053, -0.524604, -0.844461,
		0.255360, 0.806288, -0.533565,
		0.960789, -0.273295, 0.046841,
		29.491842, 32.029591, 31.398338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177000, 32.488270, 30.756395>,  <28.819290, 32.220898, 31.365551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177000, 32.488270, 30.756395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390411, 32.174862, 30.883795>,  <29.518457, 31.986816, 30.960236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.390411, 32.174862, 30.883795>,  <29.177000, 32.488270, 30.756395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.390411, 32.174862, 30.883795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252716, -0.507052, -0.824034,
		0.807144, 0.359156, -0.468535,
		0.533528, -0.783521, 0.318500,
		29.550470, 31.939806, 30.979345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.583529, 32.221569, 30.250494>,  <29.177000, 32.488270, 30.756395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.583529, 32.221569, 30.250494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548056, 31.885628, 30.464705>,  <29.526772, 31.684063, 30.593231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.548056, 31.885628, 30.464705>,  <29.583529, 32.221569, 30.250494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.548056, 31.885628, 30.464705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313303, -0.486835, -0.815373,
		0.945504, -0.240090, -0.219954,
		-0.088681, -0.839850, 0.535525,
		29.521452, 31.633673, 30.625362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763067, 31.705004, 29.745724>,  <29.583529, 32.221569, 30.250494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.763067, 31.705004, 29.745724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617107, 31.473892, 30.037756>,  <29.529531, 31.335226, 30.212976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.617107, 31.473892, 30.037756>,  <29.763067, 31.705004, 29.745724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.617107, 31.473892, 30.037756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346283, -0.643677, -0.682472,
		0.864255, -0.501849, 0.034802,
		-0.364899, -0.577779, 0.730083,
		29.507637, 31.300558, 30.256781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122726, 31.020966, 29.863310>,  <29.763067, 31.705004, 29.745724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122726, 31.020966, 29.863310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751856, 30.971624, 30.004803>,  <29.529333, 30.942020, 30.089699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.751856, 30.971624, 30.004803>,  <30.122726, 31.020966, 29.863310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.751856, 30.971624, 30.004803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136097, -0.768810, -0.624827,
		0.349025, -0.627467, 0.696036,
		-0.927178, -0.123352, 0.353731,
		29.473703, 30.934618, 30.110922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.956297, 30.246027, 30.065754>,  <30.122726, 31.020966, 29.863310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.956297, 30.246027, 30.065754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612961, 30.426481, 29.968000>,  <29.406960, 30.534754, 29.909348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612961, 30.426481, 29.968000>,  <29.956297, 30.246027, 30.065754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612961, 30.426481, 29.968000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250983, -0.784623, -0.566899,
		-0.447499, -0.425256, 0.786703,
		-0.858343, 0.451136, -0.244386,
		29.355457, 30.561823, 29.894684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449127, 29.696531, 30.016975>,  <29.956297, 30.246027, 30.065754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449127, 29.696531, 30.016975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312874, 30.017038, 29.820225>,  <29.231123, 30.209343, 29.702175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.312874, 30.017038, 29.820225>,  <29.449127, 29.696531, 30.016975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.312874, 30.017038, 29.820225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309688, -0.589586, -0.745977,
		-0.887730, -0.101775, 0.448974,
		-0.340631, 0.801267, -0.491875,
		29.210684, 30.257418, 29.672663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006136, 29.316702, 29.735432>,  <29.449127, 29.696531, 30.016975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006136, 29.316702, 29.735432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010914, 29.667744, 29.543739>,  <29.013781, 29.878368, 29.428724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.010914, 29.667744, 29.543739>,  <29.006136, 29.316702, 29.735432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.010914, 29.667744, 29.543739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352554, -0.444793, -0.823326,
		-0.935715, 0.178790, 0.304091,
		0.011945, 0.877607, -0.479232,
		29.014498, 29.931026, 29.399969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471361, 29.189796, 29.273733>,  <29.006136, 29.316702, 29.735432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471361, 29.189796, 29.273733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648117, 29.511335, 29.114454>,  <28.754171, 29.704260, 29.018887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.648117, 29.511335, 29.114454>,  <28.471361, 29.189796, 29.273733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.648117, 29.511335, 29.114454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143548, -0.374802, -0.915925,
		-0.885510, 0.461898, -0.050231,
		0.441890, 0.803849, -0.398195,
		28.780684, 29.752491, 28.994995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.951584, 29.434587, 28.811317>,  <28.471361, 29.189796, 29.273733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.951584, 29.434587, 28.811317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313568, 29.572161, 28.711117>,  <28.530760, 29.654705, 28.650997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.313568, 29.572161, 28.711117>,  <27.951584, 29.434587, 28.811317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.313568, 29.572161, 28.711117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161594, -0.266810, -0.950105,
		-0.393611, 0.900289, -0.185876,
		0.904963, 0.343935, -0.250500,
		28.585056, 29.675341, 28.635967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.892595, 29.874933, 28.154284>,  <27.951584, 29.434587, 28.811317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.892595, 29.874933, 28.154284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266588, 29.733341, 28.163269>,  <28.490984, 29.648386, 28.168661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.266588, 29.733341, 28.163269>,  <27.892595, 29.874933, 28.154284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266588, 29.733341, 28.163269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064025, -0.230730, -0.970909,
		0.348865, 0.906346, -0.238392,
		0.934983, -0.353979, 0.022465,
		28.547083, 29.627148, 28.170008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164921, 30.073269, 27.489193>,  <27.892595, 29.874933, 28.154284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164921, 30.073269, 27.489193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412624, 29.779112, 27.599262>,  <28.561247, 29.602617, 27.665304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412624, 29.779112, 27.599262>,  <28.164921, 30.073269, 27.489193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412624, 29.779112, 27.599262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076595, -0.292203, -0.953284,
		0.781442, 0.611406, -0.124622,
		0.619258, -0.735391, 0.275171,
		28.598402, 29.558495, 27.681814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.505604, 30.017565, 26.914440>,  <28.164921, 30.073269, 27.489193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.505604, 30.017565, 26.914440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611170, 29.697210, 27.129448>,  <28.674509, 29.504997, 27.258451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.611170, 29.697210, 27.129448>,  <28.505604, 30.017565, 26.914440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.611170, 29.697210, 27.129448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222430, -0.491722, -0.841864,
		0.938548, 0.341742, 0.048367,
		0.263917, -0.800888, 0.537518,
		28.690346, 29.456944, 27.290703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.187042, 29.960161, 26.774738>,  <28.505604, 30.017565, 26.914440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.187042, 29.960161, 26.774738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054527, 29.601126, 26.891071>,  <28.975018, 29.385704, 26.960871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.054527, 29.601126, 26.891071>,  <29.187042, 29.960161, 26.774738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.054527, 29.601126, 26.891071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315660, -0.395913, -0.862329,
		0.889161, -0.193876, 0.414494,
		-0.331288, -0.897589, 0.290831,
		28.955141, 29.331848, 26.978321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744310, 29.580448, 26.429462>,  <29.187042, 29.960161, 26.774738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744310, 29.580448, 26.429462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940845, 29.823229, 26.179598>,  <30.058765, 29.968897, 26.029680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.940845, 29.823229, 26.179598>,  <29.744310, 29.580448, 26.429462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.940845, 29.823229, 26.179598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280834, 0.568493, 0.773271,
		0.824453, -0.555361, 0.108868,
		0.491335, 0.606951, -0.624660,
		30.088245, 30.005314, 25.992199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.456738, 29.698782, 26.636744>,  <29.744310, 29.580448, 26.429462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.456738, 29.698782, 26.636744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345333, 30.014023, 26.417170>,  <30.278490, 30.203167, 26.285425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.345333, 30.014023, 26.417170>,  <30.456738, 29.698782, 26.636744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345333, 30.014023, 26.417170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408740, 0.614467, 0.674805,
		0.869117, -0.036432, -0.493263,
		-0.278510, 0.788101, -0.548935,
		30.261780, 30.250454, 26.252489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.974171, 30.244572, 26.767052>,  <30.456738, 29.698782, 26.636744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.974171, 30.244572, 26.767052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688620, 30.475628, 26.608706>,  <30.517288, 30.614262, 26.513699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688620, 30.475628, 26.608706>,  <30.974171, 30.244572, 26.767052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688620, 30.475628, 26.608706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233408, 0.729252, 0.643205,
		0.660226, 0.366773, -0.655423,
		-0.713878, 0.577642, -0.395864,
		30.474457, 30.648920, 26.489946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246548, 30.945116, 26.567286>,  <30.974171, 30.244572, 26.767052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.246548, 30.945116, 26.567286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848816, 30.985628, 26.580271>,  <30.610178, 31.009935, 26.588062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.848816, 30.985628, 26.580271>,  <31.246548, 30.945116, 26.567286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848816, 30.985628, 26.580271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105095, 0.888772, 0.446139,
		0.016332, 0.447021, -0.894375,
		-0.994328, 0.101281, 0.032465,
		30.550518, 31.016012, 26.590010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078997, 31.580484, 26.273033>,  <31.246548, 30.945116, 26.567286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078997, 31.580484, 26.273033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750650, 31.500748, 26.487116>,  <30.553642, 31.452906, 26.615566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.750650, 31.500748, 26.487116>,  <31.078997, 31.580484, 26.273033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.750650, 31.500748, 26.487116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015297, 0.929101, 0.369510,
		-0.570920, 0.311504, -0.759616,
		-0.820864, -0.199340, 0.535207,
		30.504391, 31.440945, 26.647678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688585, 32.122280, 26.217958>,  <31.078997, 31.580484, 26.273033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688585, 32.122280, 26.217958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576948, 31.959030, 26.565645>,  <30.509966, 31.861080, 26.774258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576948, 31.959030, 26.565645>,  <30.688585, 32.122280, 26.217958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576948, 31.959030, 26.565645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336108, 0.806408, 0.486556,
		-0.899522, 0.427944, -0.087886,
		-0.279091, -0.408129, 0.869218,
		30.493221, 31.836592, 26.826410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651951, 32.638870, 26.658169>,  <30.688585, 32.122280, 26.217958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651951, 32.638870, 26.658169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615213, 32.369030, 26.951147>,  <30.593170, 32.207127, 27.126934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615213, 32.369030, 26.951147>,  <30.651951, 32.638870, 26.658169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615213, 32.369030, 26.951147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259076, 0.694035, 0.671711,
		-0.961480, 0.251451, 0.111031,
		-0.091843, -0.674602, 0.732445,
		30.587660, 32.166649, 27.170881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093632, 32.922089, 27.230429>,  <30.651951, 32.638870, 26.658169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093632, 32.922089, 27.230429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315741, 32.640213, 27.407106>,  <30.449005, 32.471088, 27.513113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.315741, 32.640213, 27.407106>,  <30.093632, 32.922089, 27.230429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.315741, 32.640213, 27.407106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148869, 0.606734, 0.780841,
		-0.818238, -0.367823, 0.441806,
		0.555270, -0.704685, 0.441696,
		30.482321, 32.428806, 27.539616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.759890, 32.580250, 27.939909>,  <30.093632, 32.922089, 27.230429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.759890, 32.580250, 27.939909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158255, 32.544380, 27.935625>,  <30.397274, 32.522858, 27.933056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.158255, 32.544380, 27.935625>,  <29.759890, 32.580250, 27.939909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158255, 32.544380, 27.935625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065784, 0.639114, 0.766294,
		-0.061870, -0.763867, 0.642401,
		0.995914, -0.089670, -0.010708,
		30.457029, 32.517479, 27.932413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.977924, 32.551991, 28.665461>,  <29.759890, 32.580250, 27.939909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.977924, 32.551991, 28.665461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313465, 32.646648, 28.469368>,  <30.514790, 32.703445, 28.351713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313465, 32.646648, 28.469368>,  <29.977924, 32.551991, 28.665461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313465, 32.646648, 28.469368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235819, 0.653699, 0.719074,
		0.490631, -0.718802, 0.492550,
		0.838851, 0.236647, -0.490232,
		30.565121, 32.717644, 28.322298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.375965, 32.700310, 29.172443>,  <29.977924, 32.551991, 28.665461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.375965, 32.700310, 29.172443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585386, 32.861286, 28.872061>,  <30.711039, 32.957870, 28.691832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.585386, 32.861286, 28.872061>,  <30.375965, 32.700310, 29.172443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.585386, 32.861286, 28.872061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258020, 0.765128, 0.589920,
		0.811984, -0.502617, 0.296748,
		0.523553, 0.402438, -0.750956,
		30.742453, 32.982018, 28.646774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056593, 32.811256, 29.473270>,  <30.375965, 32.700310, 29.172443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056593, 32.811256, 29.473270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041416, 33.060879, 29.161087>,  <31.032310, 33.210651, 28.973778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041416, 33.060879, 29.161087>,  <31.056593, 32.811256, 29.473270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041416, 33.060879, 29.161087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374492, 0.732979, 0.567888,
		0.926453, -0.270729, -0.261514,
		-0.037941, 0.624057, -0.780457,
		31.030033, 33.248096, 28.926950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716900, 33.271687, 29.410910>,  <31.056593, 32.811256, 29.473270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716900, 33.271687, 29.410910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402327, 33.443401, 29.233265>,  <31.213583, 33.546429, 29.126678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402327, 33.443401, 29.233265>,  <31.716900, 33.271687, 29.410910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402327, 33.443401, 29.233265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219618, 0.866361, 0.448538,
		0.577314, 0.255210, -0.775614,
		-0.786433, 0.429286, -0.444113,
		31.166397, 33.572186, 29.100031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026276, 33.858822, 28.966591>,  <31.716900, 33.271687, 29.410910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026276, 33.858822, 28.966591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641180, 33.913410, 29.059984>,  <31.410124, 33.946163, 29.116020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.641180, 33.913410, 29.059984>,  <32.026276, 33.858822, 28.966591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641180, 33.913410, 29.059984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235697, 0.846738, 0.476951,
		-0.132613, 0.514210, -0.847350,
		-0.962736, 0.136468, 0.233486,
		31.352360, 33.954350, 29.130030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878832, 34.539261, 28.800648>,  <32.026276, 33.858822, 28.966591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878832, 34.539261, 28.800648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587915, 34.437988, 29.055817>,  <31.413366, 34.377224, 29.208918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587915, 34.437988, 29.055817>,  <31.878832, 34.539261, 28.800648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587915, 34.437988, 29.055817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143005, 0.853168, 0.501652,
		-0.671265, 0.456073, -0.584295,
		-0.727291, -0.253184, 0.637923,
		31.369728, 34.362034, 29.247194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533394, 35.182095, 28.953890>,  <31.878832, 34.539261, 28.800648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533394, 35.182095, 28.953890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426641, 34.934238, 29.249138>,  <31.362591, 34.785522, 29.426287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.426641, 34.934238, 29.249138>,  <31.533394, 35.182095, 28.953890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426641, 34.934238, 29.249138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190749, 0.716782, 0.670699,
		-0.944664, 0.319792, -0.073099,
		-0.266880, -0.619642, 0.738118,
		31.346577, 34.748344, 29.470573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.131804, 35.612335, 29.392275>,  <31.533394, 35.182095, 28.953890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.131804, 35.612335, 29.392275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270889, 35.295624, 29.593145>,  <31.354342, 35.105598, 29.713667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270889, 35.295624, 29.593145>,  <31.131804, 35.612335, 29.392275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270889, 35.295624, 29.593145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220408, 0.589615, 0.777030,
		-0.911326, -0.159501, 0.379532,
		0.347715, -0.791779, 0.502176,
		31.375204, 35.058090, 29.743797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945091, 35.730347, 30.138409>,  <31.131804, 35.612335, 29.392275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945091, 35.730347, 30.138409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244236, 35.464966, 30.147625>,  <31.423723, 35.305737, 30.153154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.244236, 35.464966, 30.147625>,  <30.945091, 35.730347, 30.138409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.244236, 35.464966, 30.147625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290127, 0.357857, 0.887561,
		-0.597103, -0.657087, 0.460114,
		0.747860, -0.663457, 0.023039,
		31.468594, 35.265930, 30.154537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915995, 35.529079, 30.757442>,  <30.945091, 35.730347, 30.138409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915995, 35.529079, 30.757442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284668, 35.423004, 30.644180>,  <31.505873, 35.359360, 30.576223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.284668, 35.423004, 30.644180>,  <30.915995, 35.529079, 30.757442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.284668, 35.423004, 30.644180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367613, 0.363835, 0.855853,
		-0.123942, -0.892916, 0.432828,
		0.921682, -0.265190, -0.283153,
		31.561172, 35.343449, 30.559235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.349310, 35.077595, 31.246235>,  <30.915995, 35.529079, 30.757442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.349310, 35.077595, 31.246235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628664, 35.258316, 31.024197>,  <31.796276, 35.366749, 30.890974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628664, 35.258316, 31.024197>,  <31.349310, 35.077595, 31.246235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628664, 35.258316, 31.024197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574723, 0.108221, 0.811161,
		0.426557, -0.885530, -0.184081,
		0.698386, 0.451802, -0.555097,
		31.838181, 35.393856, 30.857668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990025, 34.844383, 31.428360>,  <31.349310, 35.077595, 31.246235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990025, 34.844383, 31.428360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133308, 35.159523, 31.227968>,  <32.219280, 35.348606, 31.107733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133308, 35.159523, 31.227968>,  <31.990025, 34.844383, 31.428360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133308, 35.159523, 31.227968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433549, 0.334862, 0.836602,
		0.826874, -0.516879, -0.221620,
		0.358210, 0.787847, -0.500981,
		32.240772, 35.395878, 31.077673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.669746, 34.864902, 31.588104>,  <31.990025, 34.844383, 31.428360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.669746, 34.864902, 31.588104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556793, 35.234425, 31.484682>,  <32.489021, 35.456139, 31.422628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.556793, 35.234425, 31.484682>,  <32.669746, 34.864902, 31.588104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556793, 35.234425, 31.484682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436821, 0.363784, 0.822708,
		0.854078, 0.119373, -0.506262,
		-0.282379, 0.923803, -0.258555,
		32.472080, 35.511566, 31.407116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275753, 35.325241, 31.663919>,  <32.669746, 34.864902, 31.588104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.275753, 35.325241, 31.663919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940582, 35.540852, 31.698187>,  <32.739479, 35.670216, 31.718748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940582, 35.540852, 31.698187>,  <33.275753, 35.325241, 31.663919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940582, 35.540852, 31.698187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304984, 0.332254, 0.892520,
		0.452625, 0.773991, -0.442796,
		-0.837923, 0.539022, 0.085669,
		32.689205, 35.702557, 31.723888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592236, 35.976982, 31.815273>,  <33.275753, 35.325241, 31.663919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592236, 35.976982, 31.815273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218174, 35.926537, 31.947689>,  <32.993736, 35.896271, 32.027138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.218174, 35.926537, 31.947689>,  <33.592236, 35.976982, 31.815273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218174, 35.926537, 31.947689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253573, 0.414242, 0.874131,
		-0.247370, 0.901387, -0.355400,
		-0.935152, -0.126114, 0.331038,
		32.937630, 35.888702, 32.047001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703930, 36.458664, 32.284531>,  <33.592236, 35.976982, 31.815273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703930, 36.458664, 32.284531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337700, 36.311264, 32.348949>,  <33.117962, 36.222824, 32.387600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.337700, 36.311264, 32.348949>,  <33.703930, 36.458664, 32.284531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.337700, 36.311264, 32.348949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022789, 0.447352, 0.894068,
		-0.401506, 0.814914, -0.417981,
		-0.915573, -0.368499, 0.161044,
		33.063026, 36.200714, 32.397263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253139, 36.990650, 32.364906>,  <33.703930, 36.458664, 32.284531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253139, 36.990650, 32.364906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076981, 36.692841, 32.565601>,  <32.971287, 36.514156, 32.686020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076981, 36.692841, 32.565601>,  <33.253139, 36.990650, 32.364906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076981, 36.692841, 32.565601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131969, 0.499096, 0.856439,
		-0.888050, 0.443387, -0.121547,
		-0.440398, -0.744520, 0.501736,
		32.944862, 36.469486, 32.716122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896793, 37.346455, 32.824692>,  <33.253139, 36.990650, 32.364906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896793, 37.346455, 32.824692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947220, 36.967880, 32.943596>,  <32.977474, 36.740734, 33.014938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.947220, 36.967880, 32.943596>,  <32.896793, 37.346455, 32.824692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.947220, 36.967880, 32.943596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102046, 0.310431, 0.945103,
		-0.986759, -0.088810, 0.135715,
		0.126065, -0.946438, 0.297258,
		32.985039, 36.683949, 33.032772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409733, 37.189518, 33.522724>,  <32.896793, 37.346455, 32.824692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409733, 37.189518, 33.522724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717800, 36.935528, 33.498573>,  <32.902641, 36.783134, 33.484081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717800, 36.935528, 33.498573>,  <32.409733, 37.189518, 33.522724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717800, 36.935528, 33.498573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365425, 0.361671, 0.857705,
		-0.522782, -0.682644, 0.510584,
		0.770171, -0.634973, -0.060380,
		32.948853, 36.745037, 33.480461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.505989, 37.143982, 34.145866>,  <32.409733, 37.189518, 33.522724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.505989, 37.143982, 34.145866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847134, 36.987080, 34.008011>,  <33.051819, 36.892941, 33.925297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847134, 36.987080, 34.008011>,  <32.505989, 37.143982, 34.145866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847134, 36.987080, 34.008011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487803, 0.363138, 0.793838,
		-0.186236, -0.845144, 0.501047,
		0.852857, -0.392253, -0.344635,
		33.102989, 36.869404, 33.904621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842258, 36.786785, 34.782413>,  <32.505989, 37.143982, 34.145866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842258, 36.786785, 34.782413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119976, 36.822662, 34.496780>,  <33.286606, 36.844189, 34.325401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119976, 36.822662, 34.496780>,  <32.842258, 36.786785, 34.782413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119976, 36.822662, 34.496780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671780, 0.275206, 0.687731,
		0.258198, -0.957193, 0.130826,
		0.694295, 0.089684, -0.714080,
		33.328262, 36.849571, 34.282555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475685, 36.480331, 34.944309>,  <32.842258, 36.786785, 34.782413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475685, 36.480331, 34.944309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620922, 36.754391, 34.691727>,  <33.708065, 36.918827, 34.540176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.620922, 36.754391, 34.691727>,  <33.475685, 36.480331, 34.944309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620922, 36.754391, 34.691727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749172, 0.188261, 0.635058,
		0.553988, -0.703653, -0.444938,
		0.363096, 0.685149, -0.631452,
		33.729851, 36.959934, 34.502293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176441, 36.398968, 34.902351>,  <33.475685, 36.480331, 34.944309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176441, 36.398968, 34.902351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131840, 36.768887, 34.756855>,  <34.105080, 36.990837, 34.669556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131840, 36.768887, 34.756855>,  <34.176441, 36.398968, 34.902351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131840, 36.768887, 34.756855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806908, 0.297902, 0.510051,
		0.580057, -0.236637, -0.779447,
		-0.111502, 0.924801, -0.363745,
		34.098389, 37.046326, 34.647732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770916, 36.654976, 34.853130>,  <34.176441, 36.398968, 34.902351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770916, 36.654976, 34.853130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599194, 37.012943, 34.804420>,  <34.496162, 37.227722, 34.775192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599194, 37.012943, 34.804420>,  <34.770916, 36.654976, 34.853130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599194, 37.012943, 34.804420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780199, 0.435389, 0.449139,
		0.454962, 0.097805, -0.885124,
		-0.429302, 0.894914, -0.121778,
		34.470402, 37.281418, 34.767887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230938, 37.112408, 34.522243>,  <34.770916, 36.654976, 34.853130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230938, 37.112408, 34.522243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968445, 37.316807, 34.744324>,  <34.810951, 37.439445, 34.877571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968445, 37.316807, 34.744324>,  <35.230938, 37.112408, 34.522243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968445, 37.316807, 34.744324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752756, 0.392487, 0.528499,
		0.052151, 0.764748, -0.642215,
		-0.656230, 0.510993, 0.555201,
		34.771576, 37.470104, 34.910885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505173, 37.843918, 34.639973>,  <35.230938, 37.112408, 34.522243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505173, 37.843918, 34.639973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245266, 37.775459, 34.936218>,  <35.089321, 37.734383, 35.113968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245266, 37.775459, 34.936218>,  <35.505173, 37.843918, 34.639973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245266, 37.775459, 34.936218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594350, 0.493003, 0.635370,
		-0.473868, 0.853028, -0.218616,
		-0.649767, -0.171147, 0.740616,
		35.050335, 37.724113, 35.158401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470406, 38.401295, 34.986977>,  <35.505173, 37.843918, 34.639973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470406, 38.401295, 34.986977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306583, 38.192345, 35.286148>,  <35.208290, 38.066975, 35.465649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306583, 38.192345, 35.286148>,  <35.470406, 38.401295, 34.986977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306583, 38.192345, 35.286148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571539, 0.492083, 0.656656,
		-0.711059, 0.696406, 0.097019,
		-0.409558, -0.522372, 0.747924,
		35.183716, 38.035633, 35.510525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303978, 38.855293, 35.585426>,  <35.470406, 38.401295, 34.986977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303978, 38.855293, 35.585426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363335, 38.475613, 35.696411>,  <35.398949, 38.247803, 35.763004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.363335, 38.475613, 35.696411>,  <35.303978, 38.855293, 35.585426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363335, 38.475613, 35.696411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560851, 0.311866, 0.766933,
		-0.814509, 0.041808, 0.578642,
		0.148395, -0.949206, 0.277466,
		35.407852, 38.190849, 35.779652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049854, 38.873440, 36.309307>,  <35.303978, 38.855293, 35.585426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049854, 38.873440, 36.309307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264603, 38.537289, 36.279530>,  <35.393452, 38.335598, 36.261662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.264603, 38.537289, 36.279530>,  <35.049854, 38.873440, 36.309307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264603, 38.537289, 36.279530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629238, 0.340075, 0.698862,
		-0.561990, -0.422040, 0.711372,
		0.536868, -0.840375, -0.074445,
		35.425663, 38.285175, 36.257195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129215, 38.555485, 36.967171>,  <35.049854, 38.873440, 36.309307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129215, 38.555485, 36.967171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436466, 38.442760, 36.737190>,  <35.620815, 38.375126, 36.599201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436466, 38.442760, 36.737190>,  <35.129215, 38.555485, 36.967171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436466, 38.442760, 36.737190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608679, 0.042683, 0.792267,
		-0.198728, -0.958520, 0.204318,
		0.768125, -0.281810, -0.574949,
		35.666904, 38.358219, 36.564705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426743, 38.008698, 37.292572>,  <35.129215, 38.555485, 36.967171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426743, 38.008698, 37.292572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706135, 38.130264, 37.033417>,  <35.873768, 38.203205, 36.877922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.706135, 38.130264, 37.033417>,  <35.426743, 38.008698, 37.292572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706135, 38.130264, 37.033417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645292, 0.123947, 0.753814,
		0.309402, -0.944601, -0.109542,
		0.698476, 0.303919, -0.647892,
		35.915676, 38.221439, 36.839050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018044, 37.573399, 37.279053>,  <35.426743, 38.008698, 37.292572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018044, 37.573399, 37.279053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096008, 37.961483, 37.221493>,  <36.142788, 38.194332, 37.186954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096008, 37.961483, 37.221493>,  <36.018044, 37.573399, 37.279053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096008, 37.961483, 37.221493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728874, -0.045102, 0.683161,
		0.656318, -0.238043, -0.715949,
		0.194912, 0.970207, -0.143902,
		36.154484, 38.252544, 37.178322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746956, 37.771976, 37.087051>,  <36.018044, 37.573399, 37.279053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746956, 37.771976, 37.087051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539879, 38.026913, 37.315361>,  <36.415634, 38.179874, 37.452347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539879, 38.026913, 37.315361>,  <36.746956, 37.771976, 37.087051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539879, 38.026913, 37.315361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667168, -0.116920, 0.735674,
		0.535613, 0.761658, -0.364687,
		-0.517692, 0.637344, 0.570778,
		36.384571, 38.218117, 37.486595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.275036, 38.242744, 37.324898>,  <36.746956, 37.771976, 37.087051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.275036, 38.242744, 37.324898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949604, 38.239674, 37.557457>,  <36.754345, 38.237831, 37.696995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.949604, 38.239674, 37.557457>,  <37.275036, 38.242744, 37.324898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.949604, 38.239674, 37.557457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575920, -0.148259, 0.803950,
		0.080025, 0.988919, 0.125043,
		-0.813580, -0.007678, 0.581403,
		36.705528, 38.237370, 37.731876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458008, 37.541660, 37.198593>,  <37.275036, 38.242744, 37.324898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.458008, 37.541660, 37.198593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507095, 37.148533, 37.143456>,  <37.536549, 36.912655, 37.110374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507095, 37.148533, 37.143456>,  <37.458008, 37.541660, 37.198593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507095, 37.148533, 37.143456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403499, 0.176303, -0.897834,
		0.906713, 0.054563, 0.418204,
		0.122719, -0.982823, -0.137840,
		37.543911, 36.853687, 37.102104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163921, 37.377705, 37.146217>,  <37.458008, 37.541660, 37.198593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163921, 37.377705, 37.146217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945580, 37.094650, 36.966751>,  <37.814575, 36.924820, 36.859070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.945580, 37.094650, 36.966751>,  <38.163921, 37.377705, 37.146217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.945580, 37.094650, 36.966751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485076, 0.169732, -0.857842,
		0.683191, -0.685891, 0.250607,
		-0.545850, -0.707633, -0.448669,
		37.781826, 36.882359, 36.832150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581951, 37.975571, 36.901402>,  <38.163921, 37.377705, 37.146217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581951, 37.975571, 36.901402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588524, 37.896175, 37.293388>,  <38.592468, 37.848537, 37.528580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.588524, 37.896175, 37.293388>,  <38.581951, 37.975571, 36.901402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.588524, 37.896175, 37.293388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359011, -0.915911, -0.179496,
		0.933189, -0.348869, -0.086312,
		0.016433, -0.198491, 0.979965,
		38.593452, 37.836628, 37.587379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057518, 38.536095, 37.305702>,  <38.581951, 37.975571, 36.901402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057518, 38.536095, 37.305702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132133, 38.444870, 36.923458>,  <39.176903, 38.390137, 36.694111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.132133, 38.444870, 36.923458>,  <39.057518, 38.536095, 37.305702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.132133, 38.444870, 36.923458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619347, 0.727757, -0.294582,
		0.762634, 0.646807, -0.005490,
		0.186543, -0.228059, -0.955610,
		39.188095, 38.376453, 36.636776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341251, 39.093212, 36.785690>,  <39.057518, 38.536095, 37.305702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341251, 39.093212, 36.785690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082607, 38.814484, 36.661541>,  <38.927422, 38.647247, 36.587051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.082607, 38.814484, 36.661541>,  <39.341251, 39.093212, 36.785690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.082607, 38.814484, 36.661541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631410, 0.717224, -0.294807,
		0.428036, 0.005349, -0.903746,
		-0.646612, -0.696822, -0.310375,
		38.888622, 38.605438, 36.568428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348709, 39.406033, 37.463558>,  <39.341251, 39.093212, 36.785690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348709, 39.406033, 37.463558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085083, 39.471027, 37.757290>,  <38.926907, 39.510025, 37.933529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.085083, 39.471027, 37.757290>,  <39.348709, 39.406033, 37.463558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.085083, 39.471027, 37.757290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094848, -0.986545, 0.133166,
		0.746082, 0.018116, 0.665607,
		-0.659064, 0.162484, 0.734325,
		38.887363, 39.519772, 37.977589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.550449, 38.984268, 37.996990>,  <39.348709, 39.406033, 37.463558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.550449, 38.984268, 37.996990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160011, 39.069416, 38.014561>,  <38.925751, 39.120506, 38.025105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160011, 39.069416, 38.014561>,  <39.550449, 38.984268, 37.996990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160011, 39.069416, 38.014561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190498, -0.935138, 0.298710,
		0.104668, 0.283200, 0.953332,
		-0.976092, 0.212873, 0.043931,
		38.867184, 39.133278, 38.027740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135723, 38.881783, 38.699505>,  <39.550449, 38.984268, 37.996990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135723, 38.881783, 38.699505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907879, 38.808357, 38.379044>,  <38.771172, 38.764301, 38.186768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907879, 38.808357, 38.379044>,  <39.135723, 38.881783, 38.699505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907879, 38.808357, 38.379044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182090, -0.922335, 0.340796,
		-0.801493, 0.340002, 0.491942,
		-0.569607, -0.183567, -0.801156,
		38.736996, 38.753288, 38.138699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450169, 38.648495, 39.011143>,  <39.135723, 38.881783, 38.699505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450169, 38.648495, 39.011143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566841, 38.544018, 38.643078>,  <38.636845, 38.481331, 38.422237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566841, 38.544018, 38.643078>,  <38.450169, 38.648495, 39.011143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566841, 38.544018, 38.643078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201660, -0.957165, 0.207772,
		-0.935015, 0.124956, -0.331863,
		0.291685, -0.261194, -0.920162,
		38.654346, 38.465660, 38.367027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908077, 38.333466, 38.649227>,  <38.450169, 38.648495, 39.011143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908077, 38.333466, 38.649227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247677, 38.188637, 38.495293>,  <38.451439, 38.101738, 38.402931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247677, 38.188637, 38.495293>,  <37.908077, 38.333466, 38.649227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247677, 38.188637, 38.495293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282997, -0.926638, 0.247497,
		-0.446215, -0.101218, -0.889184,
		0.849002, -0.362073, -0.384835,
		38.502377, 38.080013, 38.379841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837669, 37.729008, 38.252354>,  <37.908077, 38.333466, 38.649227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837669, 37.729008, 38.252354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218201, 37.701855, 38.372601>,  <38.446518, 37.685562, 38.444748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218201, 37.701855, 38.372601>,  <37.837669, 37.729008, 38.252354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218201, 37.701855, 38.372601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195402, -0.887173, 0.418022,
		0.238319, -0.456416, -0.857256,
		0.951326, -0.067886, 0.300615,
		38.503597, 37.681488, 38.462784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.939678, 37.042072, 38.228867>,  <37.837669, 37.729008, 38.252354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.939678, 37.042072, 38.228867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229080, 37.169453, 38.473858>,  <38.402721, 37.245880, 38.620853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229080, 37.169453, 38.473858>,  <37.939678, 37.042072, 38.228867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229080, 37.169453, 38.473858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148445, -0.938253, 0.312483,
		0.674174, -0.135162, -0.726100,
		0.723501, 0.318454, 0.612482,
		38.446129, 37.264988, 38.657600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478123, 36.678936, 37.941002>,  <37.939678, 37.042072, 38.228867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478123, 36.678936, 37.941002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498455, 36.730537, 38.337139>,  <38.510654, 36.761497, 38.574821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.498455, 36.730537, 38.337139>,  <38.478123, 36.678936, 37.941002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498455, 36.730537, 38.337139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573168, -0.815827, 0.076850,
		0.817860, 0.563725, -0.115407,
		0.050830, 0.129000, 0.990341,
		38.513702, 36.769238, 38.634243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209797, 36.677128, 38.137920>,  <38.478123, 36.678936, 37.941002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209797, 36.677128, 38.137920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971638, 36.584587, 38.445683>,  <38.828743, 36.529060, 38.630341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.971638, 36.584587, 38.445683>,  <39.209797, 36.677128, 38.137920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.971638, 36.584587, 38.445683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558018, -0.808057, 0.188838,
		0.578033, 0.541773, 0.610213,
		-0.595394, -0.231355, 0.769403,
		38.793018, 36.515179, 38.676502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.738338, 36.491192, 38.651951>,  <39.209797, 36.677128, 38.137920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.738338, 36.491192, 38.651951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383587, 36.322514, 38.727432>,  <39.170734, 36.221306, 38.772720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383587, 36.322514, 38.727432>,  <39.738338, 36.491192, 38.651951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383587, 36.322514, 38.727432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455380, -0.866815, 0.203131,
		0.077914, 0.266087, 0.960795,
		-0.886882, -0.421700, 0.188708,
		39.117523, 36.196003, 38.784046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661217, 36.235390, 39.322247>,  <39.738338, 36.491192, 38.651951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661217, 36.235390, 39.322247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435482, 36.009224, 39.081638>,  <39.300041, 35.873524, 38.937275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435482, 36.009224, 39.081638>,  <39.661217, 36.235390, 39.322247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435482, 36.009224, 39.081638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485966, -0.816542, 0.311604,
		-0.667353, -0.116469, 0.735578,
		-0.564338, -0.565415, -0.601522,
		39.266182, 35.839600, 38.901180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253067, 35.690647, 39.711399>,  <39.661217, 36.235390, 39.322247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253067, 35.690647, 39.711399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380966, 35.581196, 39.348545>,  <39.457706, 35.515526, 39.130833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.380966, 35.581196, 39.348545>,  <39.253067, 35.690647, 39.711399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380966, 35.581196, 39.348545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457208, -0.793998, 0.400660,
		-0.829895, -0.542856, -0.128769,
		0.319743, -0.273631, -0.907133,
		39.476891, 35.499107, 39.076405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475182, 35.039623, 39.677475>,  <39.253067, 35.690647, 39.711399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475182, 35.039623, 39.677475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821598, 34.945724, 39.854050>,  <40.029449, 34.889385, 39.959995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.821598, 34.945724, 39.854050>,  <39.475182, 35.039623, 39.677475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.821598, 34.945724, 39.854050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117418, 0.762735, 0.635963,
		-0.485985, -0.602604, 0.632998,
		0.866044, -0.234743, 0.441434,
		40.081409, 34.875301, 39.986481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446621, 35.007305, 40.493080>,  <39.475182, 35.039623, 39.677475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446621, 35.007305, 40.493080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840904, 35.062984, 40.455147>,  <40.077477, 35.096394, 40.432384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840904, 35.062984, 40.455147>,  <39.446621, 35.007305, 40.493080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840904, 35.062984, 40.455147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031879, 0.707046, 0.706449,
		0.165390, -0.693332, 0.701382,
		0.985713, 0.139199, -0.094835,
		40.136620, 35.104744, 40.426697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732349, 35.011417, 41.110287>,  <39.446621, 35.007305, 40.493080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732349, 35.011417, 41.110287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996735, 35.217529, 40.892067>,  <40.155365, 35.341194, 40.761135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.996735, 35.217529, 40.892067>,  <39.732349, 35.011417, 41.110287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.996735, 35.217529, 40.892067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078617, 0.675440, 0.733213,
		0.746293, -0.527512, 0.405928,
		0.660959, 0.515278, -0.545547,
		40.195023, 35.372112, 40.728401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.318642, 35.207363, 41.571480>,  <39.732349, 35.011417, 41.110287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.318642, 35.207363, 41.571480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282524, 35.468582, 41.270714>,  <40.260853, 35.625313, 41.090256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282524, 35.468582, 41.270714>,  <40.318642, 35.207363, 41.571480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282524, 35.468582, 41.270714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353629, 0.684776, 0.637204,
		0.931017, 0.323435, 0.169105,
		-0.090295, 0.653048, -0.751914,
		40.255436, 35.664497, 41.045139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612839, 35.873878, 41.770184>,  <40.318642, 35.207363, 41.571480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612839, 35.873878, 41.770184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346550, 35.933804, 41.477783>,  <40.186775, 35.969761, 41.302341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.346550, 35.933804, 41.477783>,  <40.612839, 35.873878, 41.770184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.346550, 35.933804, 41.477783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344178, 0.807559, 0.478947,
		0.662082, 0.570442, -0.486048,
		-0.665724, 0.149815, -0.731004,
		40.146832, 35.978748, 41.258484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265182, 35.961765, 41.621426>,  <40.612839, 35.873878, 41.770184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265182, 35.961765, 41.621426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224182, 35.979706, 41.223938>,  <41.199581, 35.990471, 40.985443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.224182, 35.979706, 41.223938>,  <41.265182, 35.961765, 41.621426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.224182, 35.979706, 41.223938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651466, 0.757961, -0.032987,
		0.751723, -0.650756, -0.106910,
		-0.102500, 0.044851, -0.993721,
		41.193432, 35.993160, 40.925823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.942032, 35.940475, 41.363525>,  <41.265182, 35.961765, 41.621426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.942032, 35.940475, 41.363525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670433, 36.137051, 41.145367>,  <41.507473, 36.254993, 41.014469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.670433, 36.137051, 41.145367>,  <41.942032, 35.940475, 41.363525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.670433, 36.137051, 41.145367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635545, 0.765350, -0.101597,
		0.367493, -0.415610, -0.831996,
		-0.678993, 0.491435, -0.545399,
		41.466736, 36.284481, 40.981747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257309, 36.264126, 40.703476>,  <41.942032, 35.940475, 41.363525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257309, 36.264126, 40.703476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911034, 36.461948, 40.734436>,  <41.703266, 36.580643, 40.753014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.911034, 36.461948, 40.734436>,  <42.257309, 36.264126, 40.703476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911034, 36.461948, 40.734436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485515, 0.867188, -0.110726,
		-0.121884, -0.058273, -0.990832,
		-0.865690, 0.494559, 0.077404,
		41.651325, 36.610317, 40.757656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.108479, 36.571827, 40.015697>,  <42.257309, 36.264126, 40.703476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.108479, 36.571827, 40.015697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916870, 36.788502, 40.291988>,  <41.801907, 36.918507, 40.457764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.916870, 36.788502, 40.291988>,  <42.108479, 36.571827, 40.015697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.916870, 36.788502, 40.291988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578544, 0.786621, -0.215671,
		-0.660171, 0.296308, -0.690200,
		-0.479020, 0.541691, 0.690732,
		41.773163, 36.951008, 40.499207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.555824, 37.070770, 39.801460>,  <42.108479, 36.571827, 40.015697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.555824, 37.070770, 39.801460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798943, 37.173447, 40.102043>,  <41.944813, 37.235054, 40.282394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.798943, 37.173447, 40.102043>,  <41.555824, 37.070770, 39.801460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.798943, 37.173447, 40.102043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195884, 0.868605, -0.455143,
		-0.769556, 0.423833, 0.477650,
		0.607794, 0.256694, 0.751462,
		41.981281, 37.250454, 40.327480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392941, 37.830437, 40.013664>,  <41.555824, 37.070770, 39.801460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392941, 37.830437, 40.013664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771088, 37.738014, 40.105667>,  <41.997974, 37.682560, 40.160870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.771088, 37.738014, 40.105667>,  <41.392941, 37.830437, 40.013664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.771088, 37.738014, 40.105667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272624, 0.947149, -0.169070,
		-0.178786, 0.222538, 0.958391,
		0.945363, -0.231053, 0.230006,
		42.054695, 37.668697, 40.174667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.794571, 38.100044, 39.702419>,  <41.392941, 37.830437, 40.013664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.794571, 38.100044, 39.702419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845478, 38.431931, 39.485027>,  <40.876022, 38.631062, 39.354591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845478, 38.431931, 39.485027>,  <40.794571, 38.100044, 39.702419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845478, 38.431931, 39.485027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983908, -0.174890, -0.036600,
		-0.125417, -0.530074, -0.838625,
		0.127266, 0.829720, -0.543478,
		40.883659, 38.680847, 39.321983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.112972, 37.989147, 39.004799>,  <40.794571, 38.100044, 39.702419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.112972, 37.989147, 39.004799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206268, 38.355812, 39.134613>,  <41.262245, 38.575813, 39.212502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206268, 38.355812, 39.134613>,  <41.112972, 37.989147, 39.004799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206268, 38.355812, 39.134613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972418, -0.219595, -0.078623,
		-0.000804, 0.333923, -0.942600,
		0.233244, 0.916665, 0.324536,
		41.276241, 38.630810, 39.231976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422863, 38.434452, 38.445702>,  <41.112972, 37.989147, 39.004799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422863, 38.434452, 38.445702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551773, 38.532463, 38.811455>,  <41.629120, 38.591270, 39.030907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.551773, 38.532463, 38.811455>,  <41.422863, 38.434452, 38.445702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551773, 38.532463, 38.811455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946468, -0.064648, -0.316259,
		-0.018378, 0.967359, -0.252744,
		0.322275, 0.245026, 0.914386,
		41.648457, 38.605972, 39.085770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752102, 39.047752, 38.466484>,  <41.422863, 38.434452, 38.445702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752102, 39.047752, 38.466484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941635, 38.785351, 38.701481>,  <42.055355, 38.627911, 38.842480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.941635, 38.785351, 38.701481>,  <41.752102, 39.047752, 38.466484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.941635, 38.785351, 38.701481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837327, 0.129038, -0.531256,
		0.272695, 0.743649, 0.610429,
		0.473837, -0.656000, 0.587489,
		42.083786, 38.588551, 38.877728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311832, 39.326725, 38.777115>,  <41.752102, 39.047752, 38.466484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311832, 39.326725, 38.777115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386925, 38.935936, 38.736565>,  <42.431980, 38.701462, 38.712234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386925, 38.935936, 38.736565>,  <42.311832, 39.326725, 38.777115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386925, 38.935936, 38.736565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839945, 0.213187, -0.499042,
		0.509164, 0.008533, 0.860627,
		0.187733, -0.976974, -0.101380,
		42.443245, 38.642845, 38.706150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047764, 39.199173, 38.865234>,  <42.311832, 39.326725, 38.777115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047764, 39.199173, 38.865234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948650, 38.865700, 38.667824>,  <42.889183, 38.665615, 38.549377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.948650, 38.865700, 38.667824>,  <43.047764, 39.199173, 38.865234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.948650, 38.865700, 38.667824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602179, 0.266525, -0.752559,
		0.758935, -0.483668, 0.435985,
		-0.247788, -0.833684, -0.493530,
		42.874313, 38.615593, 38.519764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.643814, 38.904743, 38.566502>,  <43.047764, 39.199173, 38.865234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.643814, 38.904743, 38.566502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344608, 38.729992, 38.366661>,  <43.165085, 38.625141, 38.246758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.344608, 38.729992, 38.366661>,  <43.643814, 38.904743, 38.566502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.344608, 38.729992, 38.366661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587641, -0.086113, -0.804526,
		0.308458, -0.895389, 0.321142,
		-0.748019, -0.436879, -0.499605,
		43.120201, 38.598930, 38.216778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785984, 38.174561, 38.411568>,  <43.643814, 38.904743, 38.566502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785984, 38.174561, 38.411568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536274, 38.349751, 38.152817>,  <43.386448, 38.454865, 37.997566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.536274, 38.349751, 38.152817>,  <43.785984, 38.174561, 38.411568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.536274, 38.349751, 38.152817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627057, -0.212921, -0.749309,
		-0.465915, -0.873407, -0.141715,
		-0.624278, 0.437978, -0.646879,
		43.348991, 38.481144, 37.958752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.623989, 37.797676, 37.864990>,  <43.785984, 38.174561, 38.411568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.623989, 37.797676, 37.864990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584328, 38.151226, 37.682152>,  <43.560532, 38.363358, 37.572449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.584328, 38.151226, 37.682152>,  <43.623989, 37.797676, 37.864990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.584328, 38.151226, 37.682152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416144, -0.380429, -0.825892,
		-0.903877, -0.272106, -0.330099,
		-0.099151, 0.883873, -0.457096,
		43.554581, 38.416389, 37.545025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219780, 37.765869, 37.197487>,  <43.623989, 37.797676, 37.864990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219780, 37.765869, 37.197487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469547, 38.078304, 37.198261>,  <43.619408, 38.265766, 37.198727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.469547, 38.078304, 37.198261>,  <43.219780, 37.765869, 37.197487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.469547, 38.078304, 37.198261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339078, -0.268836, -0.901528,
		-0.703655, 0.563585, -0.432716,
		0.624417, 0.781089, 0.001931,
		43.656872, 38.312630, 37.198841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.593899, 37.493359, 36.859882>,  <43.219780, 37.765869, 37.197487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.593899, 37.493359, 36.859882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428333, 37.457897, 36.497486>,  <42.328995, 37.436619, 36.280048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.428333, 37.457897, 36.497486>,  <42.593899, 37.493359, 36.859882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428333, 37.457897, 36.497486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810848, 0.488275, 0.322666,
		0.413767, 0.868176, -0.273985,
		-0.413910, -0.088652, -0.905991,
		42.304161, 37.431301, 36.225689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.377796, 38.167042, 36.716099>,  <42.593899, 37.493359, 36.859882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.377796, 38.167042, 36.716099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146210, 37.897018, 36.533192>,  <42.007256, 37.735004, 36.423447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.146210, 37.897018, 36.533192>,  <42.377796, 38.167042, 36.716099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.146210, 37.897018, 36.533192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805091, 0.384631, 0.451539,
		-0.128933, 0.629571, -0.766170,
		-0.578969, -0.675055, -0.457270,
		41.972519, 37.694504, 36.396011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.724377, 38.598083, 37.091476>,  <42.377796, 38.167042, 36.716099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.724377, 38.598083, 37.091476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952824, 38.408619, 37.359646>,  <43.089893, 38.294941, 37.520546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.952824, 38.408619, 37.359646>,  <42.724377, 38.598083, 37.091476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952824, 38.408619, 37.359646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677616, 0.188932, 0.710733,
		-0.463312, -0.860202, -0.213059,
		0.571120, -0.473663, 0.670421,
		43.124161, 38.266521, 37.560772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337967, 37.991035, 37.514599>,  <42.724377, 38.598083, 37.091476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.337967, 37.991035, 37.514599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640446, 38.108135, 37.748680>,  <42.821934, 38.178394, 37.889130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.640446, 38.108135, 37.748680>,  <42.337967, 37.991035, 37.514599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.640446, 38.108135, 37.748680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639269, 0.139649, 0.756197,
		0.139649, -0.945938, 0.292745,
		-0.756197, -0.292745, -0.585207,
		42.867306, 38.195957, 37.924244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443672, 37.487461, 38.053707>,  <42.337967, 37.991035, 37.514599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443672, 37.487461, 38.053707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589821, 37.835106, 38.187061>,  <42.677509, 38.043694, 38.267075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.589821, 37.835106, 38.187061>,  <42.443672, 37.487461, 38.053707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.589821, 37.835106, 38.187061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615565, -0.043073, 0.786908,
		0.698271, -0.492738, 0.519256,
		0.365374, 0.869111, 0.333389,
		42.699432, 38.095840, 38.287079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654030, 37.391888, 38.756653>,  <42.443672, 37.487461, 38.053707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654030, 37.391888, 38.756653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577278, 37.782307, 38.715641>,  <42.531227, 38.016560, 38.691036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.577278, 37.782307, 38.715641>,  <42.654030, 37.391888, 38.756653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.577278, 37.782307, 38.715641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704669, -0.064303, 0.706617,
		0.683100, 0.207830, 0.700129,
		-0.191877, 0.976049, -0.102526,
		42.519714, 38.075123, 38.684883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.992599, 36.820087, 38.861500>,  <42.654030, 37.391888, 38.756653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.992599, 36.820087, 38.861500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039879, 36.479252, 38.657551>,  <43.068245, 36.274750, 38.535183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.039879, 36.479252, 38.657551>,  <42.992599, 36.820087, 38.861500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.039879, 36.479252, 38.657551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701591, -0.291706, 0.650137,
		-0.702709, -0.434565, 0.563341,
		0.118197, -0.852092, -0.509871,
		43.075336, 36.223625, 38.504589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.177429, 36.240871, 39.268566>,  <42.992599, 36.820087, 38.861500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.177429, 36.240871, 39.268566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315849, 36.153877, 38.903503>,  <43.398903, 36.101681, 38.684464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.315849, 36.153877, 38.903503>,  <43.177429, 36.240871, 39.268566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.315849, 36.153877, 38.903503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922336, -0.099349, 0.373399,
		-0.171881, -0.970994, 0.166215,
		0.346055, -0.217486, -0.912659,
		43.419666, 36.088631, 38.629707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589466, 35.770874, 39.387978>,  <43.177429, 36.240871, 39.268566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589466, 35.770874, 39.387978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714256, 35.938194, 39.046757>,  <43.789131, 36.038586, 38.842026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.714256, 35.938194, 39.046757>,  <43.589466, 35.770874, 39.387978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.714256, 35.938194, 39.046757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946152, -0.218445, 0.238908,
		-0.086410, -0.881650, -0.463925,
		0.311976, 0.418300, -0.853051,
		43.807850, 36.063683, 38.790840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.079674, 35.316345, 39.137585>,  <43.589466, 35.770874, 39.387978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.079674, 35.316345, 39.137585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166233, 35.674908, 38.982857>,  <44.218170, 35.890045, 38.890022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.166233, 35.674908, 38.982857>,  <44.079674, 35.316345, 39.137585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.166233, 35.674908, 38.982857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973347, -0.167273, 0.156891,
		0.075934, -0.410458, -0.908712,
		0.216400, 0.896406, -0.386817,
		44.231152, 35.943829, 38.866810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454632, 35.436291, 38.463451>,  <44.079674, 35.316345, 39.137585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454632, 35.436291, 38.463451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543392, 35.740986, 38.706932>,  <44.596649, 35.923801, 38.853020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.543392, 35.740986, 38.706932>,  <44.454632, 35.436291, 38.463451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.543392, 35.740986, 38.706932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959731, -0.280916, 0.001675,
		0.172270, 0.583817, -0.793398,
		0.221900, 0.761737, 0.608701,
		44.609962, 35.969505, 38.889542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.874897, 36.024914, 38.206478>,  <44.454632, 35.436291, 38.463451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.874897, 36.024914, 38.206478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968662, 35.914417, 38.579304>,  <45.024921, 35.848118, 38.802998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.968662, 35.914417, 38.579304>,  <44.874897, 36.024914, 38.206478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968662, 35.914417, 38.579304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907372, -0.281924, -0.311763,
		0.348892, 0.918809, 0.184565,
		0.234417, -0.276240, 0.932062,
		45.038986, 35.831547, 38.858921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509159, 36.036083, 38.095020>,  <44.874897, 36.024914, 38.206478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509159, 36.036083, 38.095020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481834, 35.884609, 38.464222>,  <45.465439, 35.793724, 38.685741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.481834, 35.884609, 38.464222>,  <45.509159, 36.036083, 38.095020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.481834, 35.884609, 38.464222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846284, -0.511936, -0.147397,
		0.528335, 0.771052, 0.355445,
		-0.068314, -0.378682, 0.923002,
		45.461342, 35.771004, 38.741123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.051857, 35.516281, 37.576145>,  <45.509159, 36.036083, 38.095020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.051857, 35.516281, 37.576145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203220, 35.403652, 37.223438>,  <46.294041, 35.336075, 37.011814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203220, 35.403652, 37.223438>,  <46.051857, 35.516281, 37.576145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203220, 35.403652, 37.223438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362756, 0.831297, -0.421133,
		0.851594, 0.479230, 0.212431,
		0.378413, -0.281573, -0.881771,
		46.316746, 35.319180, 36.958908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534184, 36.023556, 37.113808>,  <46.051857, 35.516281, 37.576145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534184, 36.023556, 37.113808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333912, 35.792824, 36.855633>,  <46.213749, 35.654385, 36.700729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.333912, 35.792824, 36.855633>,  <46.534184, 36.023556, 37.113808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.333912, 35.792824, 36.855633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373638, 0.816597, -0.439960,
		0.780843, 0.020881, -0.624378,
		-0.500678, -0.576831, -0.645436,
		46.183708, 35.619774, 36.662003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.730881, 36.054344, 36.416611>,  <46.534184, 36.023556, 37.113808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.730881, 36.054344, 36.416611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341724, 35.964127, 36.437077>,  <46.108231, 35.909996, 36.449356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.341724, 35.964127, 36.437077>,  <46.730881, 36.054344, 36.416611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.341724, 35.964127, 36.437077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226114, 0.881173, -0.415218,
		0.048564, -0.415530, -0.908282,
		-0.972890, -0.225541, 0.051164,
		46.049858, 35.896465, 36.452427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.484886, 36.051876, 35.757366>,  <46.730881, 36.054344, 36.416611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.484886, 36.051876, 35.757366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192890, 36.141239, 36.015732>,  <46.017693, 36.194859, 36.170750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.192890, 36.141239, 36.015732>,  <46.484886, 36.051876, 35.757366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.192890, 36.141239, 36.015732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238004, 0.802819, -0.546659,
		-0.640679, -0.552786, -0.532878,
		-0.729989, 0.223407, 0.645914,
		45.973892, 36.208260, 36.209507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.791908, 36.153217, 35.414574>,  <46.484886, 36.051876, 35.757366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.791908, 36.153217, 35.414574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790932, 36.401348, 35.728310>,  <45.790348, 36.550228, 35.916550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.790932, 36.401348, 35.728310>,  <45.791908, 36.153217, 35.414574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790932, 36.401348, 35.728310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319252, 0.742814, -0.588478,
		-0.947667, -0.251837, 0.196228,
		-0.002439, 0.620327, 0.784339,
		45.790199, 36.587448, 35.963612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753693, 35.340656, 35.231728>,  <45.791908, 36.153217, 35.414574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753693, 35.340656, 35.231728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958279, 35.215279, 34.911690>,  <46.081032, 35.140053, 34.719666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.958279, 35.215279, 34.911690>,  <45.753693, 35.340656, 35.231728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.958279, 35.215279, 34.911690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098969, -0.946390, 0.307492,
		-0.853586, -0.078086, -0.515067,
		0.511465, -0.313447, -0.800097,
		46.111717, 35.121246, 34.671661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.354996, 34.855961, 34.866302>,  <45.753693, 35.340656, 35.231728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.354996, 34.855961, 34.866302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745338, 34.785595, 34.814529>,  <45.979546, 34.743378, 34.783466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.745338, 34.785595, 34.814529>,  <45.354996, 34.855961, 34.866302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.745338, 34.785595, 34.814529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123083, -0.932548, 0.339418,
		-0.180412, -0.315293, -0.931688,
		0.975860, -0.175910, -0.129436,
		46.038097, 34.732822, 34.775700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.543289, 34.314556, 34.406635>,  <45.354996, 34.855961, 34.866302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.543289, 34.314556, 34.406635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877048, 34.319229, 34.627052>,  <46.077305, 34.322033, 34.759300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.877048, 34.319229, 34.627052>,  <45.543289, 34.314556, 34.406635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.877048, 34.319229, 34.627052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062262, -0.991377, 0.115301,
		0.547634, -0.130516, -0.826476,
		0.834398, 0.011685, 0.551039,
		46.127369, 34.322735, 34.792362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984314, 33.980911, 34.053768>,  <45.543289, 34.314556, 34.406635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984314, 33.980911, 34.053768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089977, 33.974907, 34.439514>,  <46.153374, 33.971306, 34.670959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.089977, 33.974907, 34.439514>,  <45.984314, 33.980911, 34.053768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.089977, 33.974907, 34.439514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183145, -0.980906, -0.065431,
		0.946931, 0.193902, -0.256365,
		0.264157, -0.015007, 0.964363,
		46.169224, 33.970406, 34.728825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.773239, 33.827953, 34.182941>,  <45.984314, 33.980911, 34.053768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.773239, 33.827953, 34.182941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491711, 33.713749, 34.443134>,  <46.322792, 33.645226, 34.599251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.491711, 33.713749, 34.443134>,  <46.773239, 33.827953, 34.182941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491711, 33.713749, 34.443134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254634, -0.956227, -0.144195,
		0.663174, 0.064147, 0.745711,
		-0.703820, -0.285509, 0.650479,
		46.280563, 33.628098, 34.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.010517, 34.553917, 34.109558>,  <46.773239, 33.827953, 34.182941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.010517, 34.553917, 34.109558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395924, 34.485851, 34.192192>,  <47.627167, 34.445011, 34.241772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.395924, 34.485851, 34.192192>,  <47.010517, 34.553917, 34.109558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.395924, 34.485851, 34.192192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106013, 0.951380, 0.289203,
		-0.245755, -0.256751, 0.934710,
		0.963517, -0.170164, 0.206588,
		47.684978, 34.434803, 34.254169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.132164, 34.845963, 34.775852>,  <47.010517, 34.553917, 34.109558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.132164, 34.845963, 34.775852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.485775, 34.817596, 34.591042>,  <47.697941, 34.800575, 34.480156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.485775, 34.817596, 34.591042>,  <47.132164, 34.845963, 34.775852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.485775, 34.817596, 34.591042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240778, 0.916292, 0.320053,
		0.400651, -0.394181, 0.827104,
		0.884028, -0.070919, -0.462023,
		47.750984, 34.796322, 34.452435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.670181, 34.743065, 35.356979>,  <47.132164, 34.845963, 34.775852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.670181, 34.743065, 35.356979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611233, 34.997074, 35.053658>,  <47.575863, 35.149479, 34.871666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.611233, 34.997074, 35.053658>,  <47.670181, 34.743065, 35.356979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.611233, 34.997074, 35.053658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985540, -0.159099, 0.058302,
		-0.083622, 0.755930, 0.649290,
		-0.147373, 0.635025, -0.758304,
		47.567020, 35.187580, 34.826168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.944504, 31.818275, 29.848623> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211258, 31.520773, 29.830353>,  <35.371311, 31.342272, 29.819391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.211258, 31.520773, 29.830353>,  <34.944504, 31.818275, 29.848623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.211258, 31.520773, 29.830353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420301, 0.324832, 0.847250,
		-0.615312, -0.584217, 0.529228,
		0.666888, -0.743757, -0.045674,
		35.411324, 31.297646, 29.816650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902851, 31.471235, 30.409300>,  <34.944504, 31.818275, 29.848623>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902851, 31.471235, 30.409300> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277313, 31.381290, 30.301184>,  <35.501991, 31.327324, 30.236313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.277313, 31.381290, 30.301184>,  <34.902851, 31.471235, 30.409300>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277313, 31.381290, 30.301184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329473, 0.292642, 0.897668,
		-0.122754, -0.929407, 0.348044,
		0.936151, -0.224864, -0.270292,
		35.558159, 31.313831, 30.220097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125309, 31.186274, 30.985083>,  <34.902851, 31.471235, 30.409300>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125309, 31.186274, 30.985083> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454620, 31.258020, 30.769663>,  <35.652206, 31.301069, 30.640411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.454620, 31.258020, 30.769663>,  <35.125309, 31.186274, 30.985083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454620, 31.258020, 30.769663> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484038, 0.273747, 0.831125,
		0.296503, -0.944929, 0.138550,
		0.823282, 0.179367, -0.538548,
		35.701603, 31.311831, 30.608099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630741, 30.802652, 31.287310>,  <35.125309, 31.186274, 30.985083>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630741, 30.802652, 31.287310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.817478, 31.095154, 31.088383>,  <35.929520, 31.270655, 30.969027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.817478, 31.095154, 31.088383>,  <35.630741, 30.802652, 31.287310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.817478, 31.095154, 31.088383> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431147, 0.302797, 0.849957,
		0.772122, -0.611212, -0.173920,
		0.466841, 0.731255, -0.497318,
		35.957531, 31.314529, 30.939188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384632, 30.766787, 31.480267>,  <35.630741, 30.802652, 31.287310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384632, 30.766787, 31.480267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335567, 31.138762, 31.341604>,  <36.306129, 31.361946, 31.258408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.335567, 31.138762, 31.341604>,  <36.384632, 30.766787, 31.480267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335567, 31.138762, 31.341604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522069, 0.357520, 0.774354,
		0.844037, -0.085995, -0.529346,
		-0.122661, 0.929938, -0.346655,
		36.298771, 31.417744, 31.237608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091751, 31.020067, 31.492292>,  <36.384632, 30.766787, 31.480267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091751, 31.020067, 31.492292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854492, 31.342096, 31.494673>,  <36.712135, 31.535313, 31.496101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.854492, 31.342096, 31.494673>,  <37.091751, 31.020067, 31.492292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854492, 31.342096, 31.494673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638050, 0.465558, 0.613309,
		0.490986, 0.367581, -0.789821,
		-0.593148, 0.805072, 0.005953,
		36.676548, 31.583618, 31.496458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561493, 31.603796, 31.729410>,  <37.091751, 31.020067, 31.492292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561493, 31.603796, 31.729410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197479, 31.766052, 31.763556>,  <36.979069, 31.863405, 31.784042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.197479, 31.766052, 31.763556>,  <37.561493, 31.603796, 31.729410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197479, 31.766052, 31.763556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322587, 0.563696, 0.760384,
		0.260322, 0.719516, -0.643839,
		-0.910038, 0.405639, 0.085364,
		36.924469, 31.887745, 31.789165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624714, 32.336613, 31.771431>,  <37.561493, 31.603796, 31.729410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624714, 32.336613, 31.771431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.265347, 32.263966, 31.931362>,  <37.049725, 32.220375, 32.027321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.265347, 32.263966, 31.931362>,  <37.624714, 32.336613, 31.771431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265347, 32.263966, 31.931362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167464, 0.699975, 0.694256,
		-0.405958, 0.690688, -0.598455,
		-0.898417, -0.181619, 0.399826,
		36.995823, 32.209480, 32.051311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406303, 32.945484, 31.865499>,  <37.624714, 32.336613, 31.771431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406303, 32.945484, 31.865499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162846, 32.736576, 32.104424>,  <37.016769, 32.611229, 32.247780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.162846, 32.736576, 32.104424>,  <37.406303, 32.945484, 31.865499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162846, 32.736576, 32.104424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032216, 0.735923, 0.676299,
		-0.792787, 0.430870, -0.431092,
		-0.608647, -0.522273, 0.597311,
		36.980251, 32.579895, 32.283615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911842, 33.417084, 32.041515>,  <37.406303, 32.945484, 31.865499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911842, 33.417084, 32.041515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891029, 33.150723, 32.339203>,  <36.878540, 32.990906, 32.517815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.891029, 33.150723, 32.339203>,  <36.911842, 33.417084, 32.041515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891029, 33.150723, 32.339203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022222, 0.744275, 0.667504,
		-0.998398, 0.051273, -0.023932,
		-0.052037, -0.665903, 0.744222,
		36.875420, 32.950951, 32.562469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567936, 33.714550, 32.526894>,  <36.911842, 33.417084, 32.041515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567936, 33.714550, 32.526894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725307, 33.419884, 32.746910>,  <36.819729, 33.243084, 32.878922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.725307, 33.419884, 32.746910>,  <36.567936, 33.714550, 32.526894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.725307, 33.419884, 32.746910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183577, 0.649187, 0.738143,
		-0.900842, -0.189429, 0.390641,
		0.393425, -0.736663, 0.550040,
		36.843334, 33.198883, 32.911922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234539, 33.705685, 33.221615>,  <36.567936, 33.714550, 32.526894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234539, 33.705685, 33.221615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583725, 33.532249, 33.311001>,  <36.793236, 33.428188, 33.364632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.583725, 33.532249, 33.311001>,  <36.234539, 33.705685, 33.221615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583725, 33.532249, 33.311001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141729, 0.663816, 0.734344,
		-0.466742, -0.609385, 0.640939,
		0.872964, -0.433589, 0.223463,
		36.845615, 33.402172, 33.378040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251293, 33.463200, 33.942005>,  <36.234539, 33.705685, 33.221615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251293, 33.463200, 33.942005> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638298, 33.487022, 33.843719>,  <36.870499, 33.501316, 33.784748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638298, 33.487022, 33.843719>,  <36.251293, 33.463200, 33.942005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638298, 33.487022, 33.843719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177317, 0.532937, 0.827367,
		0.180229, -0.844056, 0.505061,
		0.967510, 0.059559, -0.245716,
		36.928551, 33.504890, 33.770004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555706, 33.363541, 34.620522>,  <36.251293, 33.463200, 33.942005>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555706, 33.363541, 34.620522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838745, 33.513813, 34.381134>,  <37.008568, 33.603977, 34.237499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.838745, 33.513813, 34.381134>,  <36.555706, 33.363541, 34.620522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838745, 33.513813, 34.381134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339914, 0.561553, 0.754398,
		0.619487, -0.737240, 0.269654,
		0.707597, 0.375681, -0.598473,
		37.051025, 33.626518, 34.201591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189152, 33.448986, 35.011703>,  <36.555706, 33.363541, 34.620522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189152, 33.448986, 35.011703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.265938, 33.695881, 34.706501>,  <37.312008, 33.844017, 34.523380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.265938, 33.695881, 34.706501>,  <37.189152, 33.448986, 35.011703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265938, 33.695881, 34.706501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377405, 0.671247, 0.637960,
		0.905933, -0.410426, -0.104092,
		0.191964, 0.617234, -0.763001,
		37.323528, 33.881050, 34.477600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.896244, 33.641441, 35.097134>,  <37.189152, 33.448986, 35.011703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.896244, 33.641441, 35.097134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725719, 33.924164, 34.871323>,  <37.623405, 34.093796, 34.735836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.725719, 33.924164, 34.871323>,  <37.896244, 33.641441, 35.097134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725719, 33.924164, 34.871323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414211, 0.707336, 0.572805,
		0.804167, 0.010363, -0.594313,
		-0.426315, 0.706802, -0.564524,
		37.597824, 34.136204, 34.701965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449585, 33.918262, 34.863304>,  <37.896244, 33.641441, 35.097134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449585, 33.918262, 34.863304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.141830, 34.173077, 34.844410>,  <37.957176, 34.325966, 34.833073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.141830, 34.173077, 34.844410>,  <38.449585, 33.918262, 34.863304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141830, 34.173077, 34.844410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485694, 0.631424, 0.604488,
		0.414902, 0.442145, -0.795213,
		-0.769388, 0.637033, -0.047232,
		37.911015, 34.364185, 34.830242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801750, 34.623039, 34.905869>,  <38.449585, 33.918262, 34.863304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801750, 34.623039, 34.905869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.413036, 34.650463, 34.996140>,  <38.179806, 34.666916, 35.050301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.413036, 34.650463, 34.996140>,  <38.801750, 34.623039, 34.905869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413036, 34.650463, 34.996140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202317, 0.734098, 0.648204,
		-0.121228, 0.675574, -0.727258,
		-0.971788, 0.068557, 0.225673,
		38.121498, 34.671032, 35.063843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705605, 35.389416, 34.897160>,  <38.801750, 34.623039, 34.905869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705605, 35.389416, 34.897160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408508, 35.232933, 35.114525>,  <38.230251, 35.139046, 35.244946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408508, 35.232933, 35.114525>,  <38.705605, 35.389416, 34.897160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408508, 35.232933, 35.114525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047369, 0.778841, 0.625430,
		-0.667907, 0.490271, -0.559942,
		-0.742736, -0.391205, 0.543417,
		38.185688, 35.115570, 35.277550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263149, 35.976768, 35.093689>,  <38.705605, 35.389416, 34.897160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263149, 35.976768, 35.093689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191986, 35.685150, 35.358063>,  <38.149288, 35.510178, 35.516685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.191986, 35.685150, 35.358063>,  <38.263149, 35.976768, 35.093689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.191986, 35.685150, 35.358063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028621, 0.667532, 0.744031,
		-0.983631, 0.151286, -0.097893,
		-0.177908, -0.729050, 0.660935,
		38.138615, 35.466434, 35.556343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726528, 36.136772, 35.463352>,  <38.263149, 35.976768, 35.093689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726528, 36.136772, 35.463352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927143, 35.886330, 35.702168>,  <38.047512, 35.736065, 35.845455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927143, 35.886330, 35.702168>,  <37.726528, 36.136772, 35.463352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927143, 35.886330, 35.702168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011040, 0.685422, 0.728062,
		-0.865065, -0.371742, 0.336853,
		0.501537, -0.626103, 0.597039,
		38.077606, 35.698498, 35.881279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465870, 36.369873, 36.110760>,  <37.726528, 36.136772, 35.463352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465870, 36.369873, 36.110760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.784714, 36.134235, 36.163815>,  <37.976021, 35.992855, 36.195648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.784714, 36.134235, 36.163815>,  <37.465870, 36.369873, 36.110760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.784714, 36.134235, 36.163815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296491, 0.573187, 0.763904,
		-0.526037, -0.569586, 0.631551,
		0.797106, -0.589091, 0.132641,
		38.023846, 35.957508, 36.203606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299652, 36.860199, 35.585922>,  <37.465870, 36.369873, 36.110760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299652, 36.860199, 35.585922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462265, 37.170647, 35.393105>,  <37.559834, 37.356915, 35.277416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462265, 37.170647, 35.393105>,  <37.299652, 36.860199, 35.585922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462265, 37.170647, 35.393105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680213, -0.095123, -0.726816,
		-0.609952, 0.623365, 0.489259,
		0.406532, 0.776123, -0.482042,
		37.584225, 37.403484, 35.248493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677864, 37.095657, 35.203480>,  <37.299652, 36.860199, 35.585922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677864, 37.095657, 35.203480> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.976307, 37.315369, 35.052952>,  <37.155373, 37.447197, 34.962635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.976307, 37.315369, 35.052952>,  <36.677864, 37.095657, 35.203480>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976307, 37.315369, 35.052952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563943, 0.220861, -0.795731,
		-0.353964, 0.805924, 0.474548,
		0.746108, 0.549278, -0.376319,
		37.200138, 37.480152, 34.940056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415451, 37.670189, 35.043369>,  <36.677864, 37.095657, 35.203480>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415451, 37.670189, 35.043369> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736538, 37.671711, 34.804829>,  <36.929188, 37.672623, 34.661705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.736538, 37.671711, 34.804829>,  <36.415451, 37.670189, 35.043369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736538, 37.671711, 34.804829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595704, 0.052188, -0.801507,
		0.028072, 0.998630, 0.044159,
		0.802713, 0.003806, -0.596353,
		36.977352, 37.672852, 34.625923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.415337, 38.228626, 34.553562>,  <36.415451, 37.670189, 35.043369>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.415337, 38.228626, 34.553562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643372, 37.951981, 34.376171>,  <36.780193, 37.785992, 34.269737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.643372, 37.951981, 34.376171>,  <36.415337, 38.228626, 34.553562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643372, 37.951981, 34.376171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620014, -0.007999, -0.784550,
		0.539059, 0.722223, -0.433371,
		0.570086, -0.691615, -0.443476,
		36.814396, 37.744495, 34.243130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259869, 38.260731, 33.870941>,  <36.415337, 38.228626, 34.553562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259869, 38.260731, 33.870941> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451817, 37.910149, 33.886715>,  <36.566986, 37.699799, 33.896179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451817, 37.910149, 33.886715>,  <36.259869, 38.260731, 33.870941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451817, 37.910149, 33.886715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429077, -0.273652, -0.860818,
		0.765259, 0.396158, -0.507383,
		0.479866, -0.876455, 0.039432,
		36.595776, 37.647213, 33.898544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479515, 38.195896, 33.135460>,  <36.259869, 38.260731, 33.870941>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479515, 38.195896, 33.135460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468166, 37.833363, 33.304104>,  <36.461357, 37.615841, 33.405289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.468166, 37.833363, 33.304104>,  <36.479515, 38.195896, 33.135460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468166, 37.833363, 33.304104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601022, -0.321554, -0.731694,
		0.798729, -0.274154, -0.535604,
		-0.028371, -0.906335, 0.421607,
		36.459656, 37.561462, 33.430588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596325, 37.728554, 32.588886>,  <36.479515, 38.195896, 33.135460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596325, 37.728554, 32.588886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413883, 37.507313, 32.867756>,  <36.304417, 37.374569, 33.035076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.413883, 37.507313, 32.867756>,  <36.596325, 37.728554, 32.588886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.413883, 37.507313, 32.867756> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436727, -0.543467, -0.716878,
		0.775396, -0.631444, 0.006322,
		-0.456104, -0.553103, 0.697170,
		36.277054, 37.341381, 33.076908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680767, 36.948223, 32.411732>,  <36.596325, 37.728554, 32.588886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680767, 36.948223, 32.411732> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389408, 36.950703, 32.685780>,  <36.214592, 36.952190, 32.850208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.389408, 36.950703, 32.685780>,  <36.680767, 36.948223, 32.411732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389408, 36.950703, 32.685780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547671, -0.606116, -0.576784,
		0.411689, -0.795352, 0.444890,
		-0.728401, 0.006197, 0.685123,
		36.170887, 36.952560, 32.891315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619892, 36.277100, 32.728310>,  <36.680767, 36.948223, 32.411732>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619892, 36.277100, 32.728310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269531, 36.462700, 32.781223>,  <36.059315, 36.574059, 32.812969>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.269531, 36.462700, 32.781223>,  <36.619892, 36.277100, 32.728310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269531, 36.462700, 32.781223> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462348, -0.728797, -0.505063,
		-0.137942, -0.503547, 0.852885,
		-0.875903, 0.463999, 0.132282,
		36.006760, 36.601898, 32.820908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201138, 35.764740, 32.961254>,  <36.619892, 36.277100, 32.728310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201138, 35.764740, 32.961254> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.935184, 36.035023, 32.833908>,  <35.775612, 36.197193, 32.757500>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.935184, 36.035023, 32.833908>,  <36.201138, 35.764740, 32.961254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935184, 36.035023, 32.833908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444867, -0.700597, -0.557904,
		-0.600023, -0.229311, 0.766413,
		-0.664880, 0.675707, -0.318362,
		35.735722, 36.237736, 32.738400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504932, 35.445133, 32.976147>,  <36.201138, 35.764740, 32.961254>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504932, 35.445133, 32.976147> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507103, 35.757889, 32.726788>,  <35.508404, 35.945541, 32.577171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.507103, 35.757889, 32.726788>,  <35.504932, 35.445133, 32.976147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507103, 35.757889, 32.726788> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251435, -0.602314, -0.757627,
		-0.967859, 0.160855, 0.193325,
		0.005426, 0.781885, -0.623399,
		35.508732, 35.992455, 32.539768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.985397, 35.249863, 32.496876>,  <35.504932, 35.445133, 32.976147>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.985397, 35.249863, 32.496876> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138111, 35.554672, 32.287666>,  <35.229740, 35.737560, 32.162140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.138111, 35.554672, 32.287666>,  <34.985397, 35.249863, 32.496876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138111, 35.554672, 32.287666> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325181, -0.418961, -0.847779,
		-0.865158, 0.493746, 0.087844,
		0.381784, 0.762028, -0.523024,
		35.252647, 35.783279, 32.130760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480530, 35.388641, 32.061298>,  <34.985397, 35.249863, 32.496876>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480530, 35.388641, 32.061298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.809086, 35.556194, 31.906452>,  <35.006218, 35.656727, 31.813545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.809086, 35.556194, 31.906452>,  <34.480530, 35.388641, 32.061298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.809086, 35.556194, 31.906452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185997, -0.444890, -0.876058,
		-0.539187, 0.791588, -0.287518,
		0.821391, 0.418881, -0.387112,
		35.055504, 35.681858, 31.790319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342869, 35.839539, 31.502806>,  <34.480530, 35.388641, 32.061298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342869, 35.839539, 31.502806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.724731, 35.750053, 31.424231>,  <34.953850, 35.696362, 31.377085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.724731, 35.750053, 31.424231>,  <34.342869, 35.839539, 31.502806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.724731, 35.750053, 31.424231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273712, -0.399935, -0.874719,
		0.117127, 0.888821, -0.443033,
		0.954653, -0.223717, -0.196438,
		35.011127, 35.682938, 31.365299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495159, 36.074039, 30.839602>,  <34.342869, 35.839539, 31.502806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495159, 36.074039, 30.839602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.763573, 35.785412, 30.907780>,  <34.924622, 35.612236, 30.948687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.763573, 35.785412, 30.907780>,  <34.495159, 36.074039, 30.839602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763573, 35.785412, 30.907780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339103, -0.503126, -0.794905,
		0.659332, 0.475612, -0.582301,
		0.671037, -0.721566, 0.170446,
		34.964882, 35.568943, 30.958914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797318, 35.930977, 30.165188>,  <34.495159, 36.074039, 30.839602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797318, 35.930977, 30.165188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849850, 35.611439, 30.399998>,  <34.881371, 35.419716, 30.540884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.849850, 35.611439, 30.399998>,  <34.797318, 35.930977, 30.165188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849850, 35.611439, 30.399998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390878, -0.585909, -0.709877,
		0.911025, -0.136226, -0.389199,
		0.131332, -0.798845, 0.587026,
		34.889248, 35.371784, 30.576105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.852509, 35.387917, 29.698364>,  <34.797318, 35.930977, 30.165188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.852509, 35.387917, 29.698364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838440, 35.152348, 30.021334>,  <34.829998, 35.011005, 30.215115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.838440, 35.152348, 30.021334>,  <34.852509, 35.387917, 29.698364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.838440, 35.152348, 30.021334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264054, -0.773735, -0.575855,
		0.963866, -0.233458, -0.128293,
		-0.035173, -0.588924, 0.807422,
		34.827888, 34.975670, 30.263561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.212921, 34.786930, 29.542685>,  <34.852509, 35.387917, 29.698364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.212921, 34.786930, 29.542685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966446, 34.683403, 29.840229>,  <34.818562, 34.621288, 30.018755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.966446, 34.683403, 29.840229>,  <35.212921, 34.786930, 29.542685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966446, 34.683403, 29.840229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154332, -0.886478, -0.436279,
		0.772332, -0.383630, 0.506292,
		-0.616187, -0.258815, 0.743861,
		34.781590, 34.605759, 30.063387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.390064, 34.115906, 29.727160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014362, 34.152103, 29.859594>,  <34.788940, 34.173820, 29.939054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014362, 34.152103, 29.859594>,  <35.390064, 34.115906, 29.727160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014362, 34.152103, 29.859594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210391, -0.913942, -0.347052,
		0.271187, -0.395627, 0.877461,
		-0.939251, 0.090493, 0.331086,
		34.732586, 34.179253, 29.958920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135857, 33.514774, 30.244482>,  <35.390064, 34.115906, 29.727160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135857, 33.514774, 30.244482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816620, 33.682758, 30.071653>,  <34.625076, 33.783546, 29.967957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.816620, 33.682758, 30.071653>,  <35.135857, 33.514774, 30.244482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816620, 33.682758, 30.071653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261744, -0.887536, -0.379171,
		-0.542716, -0.189520, 0.818255,
		-0.798091, 0.419956, -0.432074,
		34.577194, 33.808746, 29.942032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.643269, 33.007740, 30.354143>,  <35.135857, 33.514774, 30.244482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.643269, 33.007740, 30.354143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507053, 33.251030, 30.067339>,  <34.425323, 33.397003, 29.895256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507053, 33.251030, 30.067339>,  <34.643269, 33.007740, 30.354143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507053, 33.251030, 30.067339> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310493, -0.792553, -0.524837,
		-0.887485, 0.043901, 0.458740,
		-0.340535, 0.608221, -0.717010,
		34.404892, 33.433495, 29.852236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.032711, 32.660923, 30.041912>,  <34.643269, 33.007740, 30.354143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.032711, 32.660923, 30.041912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151413, 32.934235, 29.775057>,  <34.222633, 33.098221, 29.614944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.151413, 32.934235, 29.775057>,  <34.032711, 32.660923, 30.041912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151413, 32.934235, 29.775057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150571, -0.656388, -0.739245,
		-0.943007, 0.319828, -0.091908,
		0.296759, 0.683275, -0.667136,
		34.240440, 33.139217, 29.574917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433380, 32.651169, 29.676252>,  <34.032711, 32.660923, 30.041912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433380, 32.651169, 29.676252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712822, 32.802837, 29.433540>,  <33.880486, 32.893837, 29.287912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712822, 32.802837, 29.433540>,  <33.433380, 32.651169, 29.676252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712822, 32.802837, 29.433540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430414, -0.454745, -0.779712,
		-0.571576, 0.805876, -0.154485,
		0.698602, 0.379171, -0.606782,
		33.922401, 32.916588, 29.251505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081501, 32.993656, 29.123703>,  <33.433380, 32.651169, 29.676252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081501, 32.993656, 29.123703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445034, 32.885372, 28.996740>,  <33.663155, 32.820400, 28.920563>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.445034, 32.885372, 28.996740>,  <33.081501, 32.993656, 29.123703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445034, 32.885372, 28.996740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413553, -0.484661, -0.770764,
		0.054821, 0.831757, -0.552427,
		0.908828, -0.270712, -0.317406,
		33.717682, 32.804157, 28.901518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.032009, 32.975582, 28.363422>,  <33.081501, 32.993656, 29.123703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.032009, 32.975582, 28.363422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.367916, 32.783489, 28.464743>,  <33.569462, 32.668236, 28.525536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.367916, 32.783489, 28.464743>,  <33.032009, 32.975582, 28.363422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367916, 32.783489, 28.464743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172520, -0.678379, -0.714170,
		0.514801, 0.556040, -0.652533,
		0.839772, -0.480230, 0.253303,
		33.619846, 32.639420, 28.540733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.409988, 32.980606, 27.755102>,  <33.032009, 32.975582, 28.363422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.409988, 32.980606, 27.755102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589958, 32.681526, 27.950455>,  <33.697941, 32.502079, 28.067667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.589958, 32.681526, 27.950455>,  <33.409988, 32.980606, 27.755102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.589958, 32.681526, 27.950455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270789, -0.635332, -0.723206,
		0.851025, 0.193138, -0.488319,
		0.449923, -0.747697, 0.488383,
		33.724934, 32.457218, 28.096970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920033, 32.768524, 27.299093>,  <33.409988, 32.980606, 27.755102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920033, 32.768524, 27.299093> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807137, 32.476337, 27.547853>,  <33.739399, 32.301025, 27.697109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.807137, 32.476337, 27.547853>,  <33.920033, 32.768524, 27.299093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807137, 32.476337, 27.547853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290374, -0.552798, -0.781087,
		0.914343, -0.401037, -0.056088,
		-0.282239, -0.730468, 0.621898,
		33.722466, 32.257198, 27.734423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193130, 32.258099, 27.057987>,  <33.920033, 32.768524, 27.299093>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193130, 32.258099, 27.057987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.954025, 32.041824, 27.294746>,  <33.810562, 31.912060, 27.436802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.954025, 32.041824, 27.294746>,  <34.193130, 32.258099, 27.057987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954025, 32.041824, 27.294746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084114, -0.691953, -0.717025,
		0.797249, -0.478397, 0.368144,
		-0.597761, -0.540682, 0.591899,
		33.774696, 31.879620, 27.472317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470264, 31.589233, 27.076839>,  <34.193130, 32.258099, 27.057987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.470264, 31.589233, 27.076839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082573, 31.549553, 27.166952>,  <33.849957, 31.525745, 27.221020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082573, 31.549553, 27.166952>,  <34.470264, 31.589233, 27.076839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082573, 31.549553, 27.166952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096676, -0.688260, -0.718993,
		0.226377, -0.718650, 0.657492,
		-0.969230, -0.099200, 0.225283,
		33.791805, 31.519793, 27.234537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318771, 30.930290, 26.978159>,  <34.470264, 31.589233, 27.076839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318771, 30.930290, 26.978159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949955, 31.084358, 26.993567>,  <33.728664, 31.176798, 27.002811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.949955, 31.084358, 26.993567>,  <34.318771, 30.930290, 26.978159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.949955, 31.084358, 26.993567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310950, -0.677739, -0.666318,
		-0.230539, -0.626351, 0.744672,
		-0.922042, 0.385168, 0.038519,
		33.673344, 31.199909, 27.005121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973862, 30.301748, 26.832932>,  <34.318771, 30.930290, 26.978159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973862, 30.301748, 26.832932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689594, 30.581642, 26.803764>,  <33.519032, 30.749578, 26.786264>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.689594, 30.581642, 26.803764>,  <33.973862, 30.301748, 26.832932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689594, 30.581642, 26.803764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559789, -0.625210, -0.543828,
		-0.426125, -0.345664, 0.836023,
		-0.710671, 0.699735, -0.072919,
		33.476395, 30.791563, 26.781889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192619, 30.077276, 27.086807>,  <33.973862, 30.301748, 26.832932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192619, 30.077276, 27.086807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202454, 30.355520, 26.799606>,  <33.208355, 30.522467, 26.627287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.202454, 30.355520, 26.799606>,  <33.192619, 30.077276, 27.086807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202454, 30.355520, 26.799606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591709, -0.568774, -0.571294,
		-0.805776, 0.438891, 0.397617,
		0.024582, 0.695609, -0.718000,
		33.209827, 30.564203, 26.584206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621475, 29.864834, 26.594545>,  <33.192619, 30.077276, 27.086807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621475, 29.864834, 26.594545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.808903, 30.131174, 26.362309>,  <32.921360, 30.290977, 26.222965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.808903, 30.131174, 26.362309>,  <32.621475, 29.864834, 26.594545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.808903, 30.131174, 26.362309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525142, -0.318554, -0.789145,
		-0.710402, 0.674661, 0.200402,
		0.468567, 0.665850, -0.580594,
		32.949474, 30.330929, 26.188129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080669, 30.159140, 26.278297>,  <32.621475, 29.864834, 26.594545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080669, 30.159140, 26.278297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.402424, 30.254526, 26.060638>,  <32.595478, 30.311758, 25.930042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.402424, 30.254526, 26.060638>,  <32.080669, 30.159140, 26.278297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402424, 30.254526, 26.060638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471581, -0.300799, -0.828934,
		-0.361350, 0.923393, -0.129503,
		0.804386, 0.238464, -0.544149,
		32.643742, 30.326065, 25.897394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817749, 30.502581, 25.769161>,  <32.080669, 30.159140, 26.278297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817749, 30.502581, 25.769161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170048, 30.362312, 25.641840>,  <32.381428, 30.278151, 25.565447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.170048, 30.362312, 25.641840>,  <31.817749, 30.502581, 25.769161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.170048, 30.362312, 25.641840> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456018, -0.446585, -0.769811,
		0.127801, 0.823160, -0.553240,
		0.880746, -0.350670, -0.318302,
		32.434273, 30.257111, 25.546349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799719, 30.642529, 25.120836>,  <31.817749, 30.502581, 25.769161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799719, 30.642529, 25.120836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084480, 30.366789, 25.174482>,  <32.255337, 30.201345, 25.206671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084480, 30.366789, 25.174482>,  <31.799719, 30.642529, 25.120836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084480, 30.366789, 25.174482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442155, -0.588340, -0.677019,
		0.545609, 0.422674, -0.723642,
		0.711906, -0.689350, 0.134117,
		32.298054, 30.159985, 25.214718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.997141, 30.554609, 24.541578>,  <31.799719, 30.642529, 25.120836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.997141, 30.554609, 24.541578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104244, 30.218227, 24.729664>,  <32.168507, 30.016397, 24.842514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.104244, 30.218227, 24.729664>,  <31.997141, 30.554609, 24.541578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104244, 30.218227, 24.729664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425725, -0.541071, -0.725259,
		0.864329, -0.005988, -0.502891,
		0.267757, -0.840955, 0.470212,
		32.184570, 29.965940, 24.870728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216396, 30.214863, 24.021120>,  <31.997141, 30.554609, 24.541578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216396, 30.214863, 24.021120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159622, 29.933363, 24.299570>,  <32.125557, 29.764463, 24.466640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.159622, 29.933363, 24.299570>,  <32.216396, 30.214863, 24.021120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.159622, 29.933363, 24.299570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674502, -0.445954, -0.588363,
		0.724501, -0.553046, -0.411386,
		-0.141932, -0.703751, 0.696125,
		32.117043, 29.722239, 24.508408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.289303, 29.542553, 23.751760>,  <32.216396, 30.214863, 24.021120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.289303, 29.542553, 23.751760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.052425, 29.486036, 24.069086>,  <31.910299, 29.452127, 24.259481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.052425, 29.486036, 24.069086>,  <32.289303, 29.542553, 23.751760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052425, 29.486036, 24.069086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696351, -0.405658, -0.592062,
		0.405467, -0.903038, 0.141839,
		-0.592193, -0.141292, 0.793313,
		31.874767, 29.443649, 24.307079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096008, 28.882633, 23.739185>,  <32.289303, 29.542553, 23.751760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096008, 28.882633, 23.739185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819208, 29.084499, 23.945658>,  <31.653128, 29.205620, 24.069542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.819208, 29.084499, 23.945658>,  <32.096008, 28.882633, 23.739185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819208, 29.084499, 23.945658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697955, -0.285113, -0.656939,
		-0.184361, -0.814878, 0.549531,
		-0.692004, 0.504662, 0.516185,
		31.611607, 29.235899, 24.100512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489344, 28.425364, 23.834787>,  <32.096008, 28.882633, 23.739185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489344, 28.425364, 23.834787> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.349495, 28.799465, 23.856941>,  <31.265585, 29.023926, 23.870234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.349495, 28.799465, 23.856941>,  <31.489344, 28.425364, 23.834787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.349495, 28.799465, 23.856941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742037, -0.240335, -0.625796,
		-0.571967, -0.259889, 0.778018,
		-0.349622, 0.935253, 0.055384,
		31.244608, 29.080040, 23.873556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069950, 28.128353, 24.421923>,  <31.489344, 28.425364, 23.834787>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069950, 28.128353, 24.421923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.930910, 27.770926, 24.535559>,  <30.847486, 27.556469, 24.603741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.930910, 27.770926, 24.535559>,  <31.069950, 28.128353, 24.421923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.930910, 27.770926, 24.535559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523234, 0.066566, 0.849585,
		-0.778075, 0.443961, 0.444409,
		-0.347600, -0.893570, 0.284089,
		30.826630, 27.502855, 24.620785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.612104, 28.152363, 25.065321>,  <31.069950, 28.128353, 24.421923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.612104, 28.152363, 25.065321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794634, 27.798615, 25.026012>,  <30.904152, 27.586365, 25.002428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.794634, 27.798615, 25.026012>,  <30.612104, 28.152363, 25.065321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.794634, 27.798615, 25.026012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497453, 0.161978, 0.852235,
		-0.737773, -0.437780, 0.513847,
		0.456324, -0.884371, -0.098272,
		30.931532, 27.533304, 24.996531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477434, 27.724371, 25.734634>,  <30.612104, 28.152363, 25.065321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477434, 27.724371, 25.734634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807642, 27.598047, 25.547537>,  <31.005766, 27.522253, 25.435278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.807642, 27.598047, 25.547537>,  <30.477434, 27.724371, 25.734634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807642, 27.598047, 25.547537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513888, 0.077982, 0.854305,
		-0.233320, -0.945613, 0.226666,
		0.825518, -0.315807, -0.467745,
		31.055298, 27.503305, 25.407213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570509, 27.113403, 26.016985>,  <30.477434, 27.724371, 25.734634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570509, 27.113403, 26.016985> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924274, 27.216076, 25.861074>,  <31.136534, 27.277679, 25.767529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.924274, 27.216076, 25.861074>,  <30.570509, 27.113403, 26.016985>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.924274, 27.216076, 25.861074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374433, 0.108277, 0.920910,
		0.278587, -0.960411, -0.000350,
		0.884415, 0.256685, -0.389774,
		31.189598, 27.293081, 25.744143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063021, 26.790565, 26.458733>,  <30.570509, 27.113403, 26.016985>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063021, 26.790565, 26.458733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225594, 27.088335, 26.246830>,  <31.323137, 27.266996, 26.119688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.225594, 27.088335, 26.246830>,  <31.063021, 26.790565, 26.458733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.225594, 27.088335, 26.246830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613231, 0.207563, 0.762145,
		0.677318, -0.634624, -0.372145,
		0.406432, 0.744426, -0.529758,
		31.347523, 27.311663, 26.087902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854465, 26.647686, 26.525791>,  <31.063021, 26.790565, 26.458733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854465, 26.647686, 26.525791> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.783834, 27.028530, 26.425943>,  <31.741457, 27.257036, 26.366034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.783834, 27.028530, 26.425943>,  <31.854465, 26.647686, 26.525791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.783834, 27.028530, 26.425943> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558759, 0.305744, 0.770915,
		0.810314, -0.003353, -0.585986,
		-0.176577, 0.952108, -0.249622,
		31.730862, 27.314163, 26.351057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515083, 27.020590, 26.553297>,  <31.854465, 26.647686, 26.525791>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515083, 27.020590, 26.553297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239948, 27.310932, 26.554825>,  <32.074867, 27.485138, 26.555742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.239948, 27.310932, 26.554825>,  <32.515083, 27.020590, 26.553297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239948, 27.310932, 26.554825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573186, 0.539917, 0.616399,
		0.445356, 0.426169, -0.787425,
		-0.687834, 0.725858, 0.003819,
		32.033600, 27.528690, 26.555971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782265, 27.599512, 26.290684>,  <32.515083, 27.020590, 26.553297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782265, 27.599512, 26.290684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.488575, 27.744246, 26.520464>,  <32.312363, 27.831085, 26.658333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.488575, 27.744246, 26.520464>,  <32.782265, 27.599512, 26.290684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.488575, 27.744246, 26.520464> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645452, 0.634378, 0.425389,
		-0.210500, 0.683111, -0.699321,
		-0.734221, 0.361834, 0.574452,
		32.268307, 27.852797, 26.692799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038998, 28.259199, 26.431208>,  <32.782265, 27.599512, 26.290684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038998, 28.259199, 26.431208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743404, 28.217752, 26.697491>,  <32.566048, 28.192884, 26.857260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.743404, 28.217752, 26.697491>,  <33.038998, 28.259199, 26.431208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743404, 28.217752, 26.697491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535879, 0.508474, 0.674009,
		-0.408335, 0.854820, -0.320226,
		-0.738983, -0.103619, 0.665708,
		32.521709, 28.186666, 26.897203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.922249, 28.963703, 26.750532>,  <33.038998, 28.259199, 26.431208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.922249, 28.963703, 26.750532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748173, 28.692455, 26.987434>,  <32.643726, 28.529707, 27.129576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.748173, 28.692455, 26.987434>,  <32.922249, 28.963703, 26.750532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748173, 28.692455, 26.987434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356199, 0.474464, 0.804988,
		-0.826881, 0.561283, 0.035063,
		-0.435190, -0.678119, 0.592254,
		32.617615, 28.489019, 27.165110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.607414, 29.411400, 27.173594>,  <32.922249, 28.963703, 26.750532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.607414, 29.411400, 27.173594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.666435, 29.076210, 27.383747>,  <32.701847, 28.875097, 27.509840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.666435, 29.076210, 27.383747>,  <32.607414, 29.411400, 27.173594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.666435, 29.076210, 27.383747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454109, 0.529297, 0.716679,
		-0.878643, 0.132834, 0.458630,
		0.147553, -0.837973, 0.525384,
		32.710701, 28.824818, 27.541363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535076, 29.636692, 27.863768>,  <32.607414, 29.411400, 27.173594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535076, 29.636692, 27.863768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729225, 29.286976, 27.861683>,  <32.845715, 29.077147, 27.860432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.729225, 29.286976, 27.861683>,  <32.535076, 29.636692, 27.863768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729225, 29.286976, 27.861683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690671, 0.379768, 0.615426,
		-0.536082, -0.302312, 0.788177,
		0.485376, -0.874290, -0.005211,
		32.874840, 29.024689, 27.860119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668579, 29.464775, 28.584143>,  <32.535076, 29.636692, 27.863768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668579, 29.464775, 28.584143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.940598, 29.269426, 28.365408>,  <33.103809, 29.152216, 28.234167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.940598, 29.269426, 28.365408>,  <32.668579, 29.464775, 28.584143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940598, 29.269426, 28.365408> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729768, 0.379119, 0.568953,
		-0.070546, -0.785977, 0.614217,
		0.680046, -0.488374, -0.546835,
		33.144611, 29.122913, 28.201357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.222481, 29.307333, 29.065632>,  <32.668579, 29.464775, 28.584143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.222481, 29.307333, 29.065632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.390434, 29.233189, 28.710253>,  <33.491207, 29.188702, 28.497026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.390434, 29.233189, 28.710253>,  <33.222481, 29.307333, 29.065632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.390434, 29.233189, 28.710253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843880, 0.440005, 0.307022,
		0.334010, -0.878656, 0.341175,
		0.419885, -0.185362, -0.888446,
		33.516399, 29.177580, 28.443718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964481, 29.008537, 29.200516>,  <33.222481, 29.307333, 29.065632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964481, 29.008537, 29.200516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931801, 29.191750, 28.846447>,  <33.912193, 29.301678, 28.634005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.931801, 29.191750, 28.846447>,  <33.964481, 29.008537, 29.200516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931801, 29.191750, 28.846447> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801455, 0.558137, 0.214831,
		0.592448, -0.691875, -0.412692,
		-0.081702, 0.458031, -0.885174,
		33.907291, 29.329159, 28.580894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.570206, 28.983011, 28.887926>,  <33.964481, 29.008537, 29.200516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.570206, 28.983011, 28.887926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397564, 29.298534, 28.712883>,  <34.293980, 29.487848, 28.607857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.397564, 29.298534, 28.712883>,  <34.570206, 28.983011, 28.887926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397564, 29.298534, 28.712883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845339, 0.522996, 0.108983,
		0.314834, -0.322890, -0.892537,
		-0.431604, 0.788807, -0.437609,
		34.268082, 29.535177, 28.581600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.079151, 29.216919, 28.477644>,  <34.570206, 28.983011, 28.887926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.079151, 29.216919, 28.477644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832451, 29.525150, 28.541929>,  <34.684433, 29.710089, 28.580500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.832451, 29.525150, 28.541929>,  <35.079151, 29.216919, 28.477644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832451, 29.525150, 28.541929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786886, 0.608933, 0.100052,
		-0.020765, 0.188169, -0.981917,
		-0.616749, 0.770579, 0.160712,
		34.647427, 29.756325, 28.590143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439312, 29.796463, 28.192951>,  <35.079151, 29.216919, 28.477644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439312, 29.796463, 28.192951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.161976, 29.969065, 28.423803>,  <34.995575, 30.072626, 28.562315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.161976, 29.969065, 28.423803>,  <35.439312, 29.796463, 28.192951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.161976, 29.969065, 28.423803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686282, 0.639639, 0.346236,
		-0.219753, 0.636135, -0.739622,
		-0.693344, 0.431503, 0.577130,
		34.953972, 30.098516, 28.596943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607819, 30.494843, 28.182222>,  <35.439312, 29.796463, 28.192951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607819, 30.494843, 28.182222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362434, 30.480019, 28.497765>,  <35.215202, 30.471125, 28.687090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362434, 30.480019, 28.497765>,  <35.607819, 30.494843, 28.182222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362434, 30.480019, 28.497765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584571, 0.650314, 0.485148,
		-0.530983, 0.758761, -0.377278,
		-0.613461, -0.037060, 0.788855,
		35.178394, 30.468901, 28.734421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439152, 31.207266, 28.406349>,  <35.607819, 30.494843, 28.182222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439152, 31.207266, 28.406349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371979, 30.982347, 28.730232>,  <35.331676, 30.847397, 28.924562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.371979, 30.982347, 28.730232>,  <35.439152, 31.207266, 28.406349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371979, 30.982347, 28.730232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471636, 0.675439, 0.566870,
		-0.865655, 0.477081, 0.151772,
		-0.167930, -0.562295, 0.809706,
		35.321598, 30.813660, 28.973145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310581, 31.651722, 28.915428>,  <35.439152, 31.207266, 28.406349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310581, 31.651722, 28.915428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368828, 31.339893, 29.159086>,  <35.403778, 31.152796, 29.305281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368828, 31.339893, 29.159086>,  <35.310581, 31.651722, 28.915428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368828, 31.339893, 29.159086> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458251, 0.598828, 0.656819,
		-0.876813, 0.183496, 0.444441,
		0.145620, -0.779573, 0.609147,
		35.412514, 31.106022, 29.341831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.932022, 36.707367, 31.554415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.718899, 36.418114, 31.730230>,  <35.591026, 36.244560, 31.835720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.718899, 36.418114, 31.730230>,  <35.932022, 36.707367, 31.554415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718899, 36.418114, 31.730230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040900, 0.540804, 0.840154,
		-0.845249, 0.429661, -0.317719,
		-0.532805, -0.723134, 0.439541,
		35.559059, 36.201172, 31.862093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431259, 37.096699, 31.760118>,  <35.932022, 36.707367, 31.554415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431259, 37.096699, 31.760118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.434376, 36.769199, 31.989759>,  <35.436245, 36.572701, 32.127544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.434376, 36.769199, 31.989759>,  <35.431259, 37.096699, 31.760118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434376, 36.769199, 31.989759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034469, 0.574000, 0.818130,
		-0.999375, 0.013418, 0.032691,
		0.007787, -0.818746, 0.574104,
		35.436710, 36.523575, 32.161991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876789, 37.168373, 32.335476>,  <35.431259, 37.096699, 31.760118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876789, 37.168373, 32.335476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.143845, 36.901058, 32.466717>,  <35.304077, 36.740669, 32.545460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.143845, 36.901058, 32.466717>,  <34.876789, 37.168373, 32.335476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143845, 36.901058, 32.466717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192627, 0.580768, 0.790951,
		-0.719133, -0.464868, 0.516474,
		0.667639, -0.668286, 0.328104,
		35.344135, 36.700573, 32.565147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944607, 37.286465, 33.026524>,  <34.876789, 37.168373, 32.335476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944607, 37.286465, 33.026524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.261379, 37.051563, 32.959618>,  <35.451443, 36.910622, 32.919476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.261379, 37.051563, 32.959618>,  <34.944607, 37.286465, 33.026524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261379, 37.051563, 32.959618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483014, 0.434901, 0.759973,
		-0.373556, -0.682635, 0.628065,
		0.791930, -0.587257, -0.167262,
		35.498959, 36.875385, 32.909439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.149124, 36.995861, 33.705368>,  <34.944607, 37.286465, 33.026524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.149124, 36.995861, 33.705368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451443, 37.002762, 33.443535>,  <35.632835, 37.006905, 33.286434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.451443, 37.002762, 33.443535>,  <35.149124, 36.995861, 33.705368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451443, 37.002762, 33.443535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631556, 0.244818, 0.735664,
		0.172943, -0.969415, 0.174138,
		0.755796, 0.017250, -0.654580,
		35.678181, 37.007938, 33.247162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778988, 36.644554, 34.044682>,  <35.149124, 36.995861, 33.705368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778988, 36.644554, 34.044682> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.915710, 36.848980, 33.729218>,  <35.997742, 36.971634, 33.539940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.915710, 36.848980, 33.729218>,  <35.778988, 36.644554, 34.044682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915710, 36.848980, 33.729218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833327, 0.223124, 0.505749,
		0.434439, -0.830077, -0.349620,
		0.341802, 0.511065, -0.788660,
		36.018250, 37.002300, 33.492619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446438, 36.401596, 34.027172>,  <35.778988, 36.644554, 34.044682>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446438, 36.401596, 34.027172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.461765, 36.748917, 33.829350>,  <36.470963, 36.957310, 33.710655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.461765, 36.748917, 33.829350>,  <36.446438, 36.401596, 34.027172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461765, 36.748917, 33.829350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799924, 0.269960, 0.535951,
		0.598877, -0.416149, -0.684227,
		0.038322, 0.868298, -0.494561,
		36.473263, 37.009407, 33.680981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121994, 36.482872, 33.748005>,  <36.446438, 36.401596, 34.027172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121994, 36.482872, 33.748005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.971924, 36.849037, 33.806343>,  <36.881882, 37.068737, 33.841347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.971924, 36.849037, 33.806343>,  <37.121994, 36.482872, 33.748005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971924, 36.849037, 33.806343> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846042, 0.273874, 0.457390,
		0.378756, 0.294990, -0.877226,
		-0.375175, 0.915409, 0.145843,
		36.859371, 37.123661, 33.850098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.596519, 36.892925, 33.776066>,  <37.121994, 36.482872, 33.748005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.596519, 36.892925, 33.776066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.353050, 37.172478, 33.926308>,  <37.206966, 37.340210, 34.016453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.353050, 37.172478, 33.926308>,  <37.596519, 36.892925, 33.776066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353050, 37.172478, 33.926308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763273, 0.386529, 0.517697,
		0.216628, 0.601796, -0.768709,
		-0.608676, 0.698882, 0.375602,
		37.170448, 37.382141, 34.038990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989964, 37.506958, 33.832211>,  <37.596519, 36.892925, 33.776066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989964, 37.506958, 33.832211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.676044, 37.564308, 34.073383>,  <37.487694, 37.598721, 34.218086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.676044, 37.564308, 34.073383>,  <37.989964, 37.506958, 33.832211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676044, 37.564308, 34.073383> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591289, 0.464651, 0.659148,
		-0.185647, 0.873809, -0.449436,
		-0.784801, 0.143377, 0.602935,
		37.440605, 37.607323, 34.254265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091537, 38.120590, 34.197037>,  <37.989964, 37.506958, 33.832211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091537, 38.120590, 34.197037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.833603, 37.919479, 34.427307>,  <37.678841, 37.798813, 34.565468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.833603, 37.919479, 34.427307>,  <38.091537, 38.120590, 34.197037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.833603, 37.919479, 34.427307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421776, 0.394044, 0.816599,
		-0.637410, 0.769377, -0.042033,
		-0.644835, -0.502780, 0.575673,
		37.640152, 37.768646, 34.600010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774597, 38.537319, 34.701859>,  <38.091537, 38.120590, 34.197037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774597, 38.537319, 34.701859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.727177, 38.172443, 34.858757>,  <37.698723, 37.953518, 34.952896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.727177, 38.172443, 34.858757>,  <37.774597, 38.537319, 34.701859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727177, 38.172443, 34.858757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322896, 0.338140, 0.883968,
		-0.938980, 0.231453, 0.254454,
		-0.118556, -0.912190, 0.392242,
		37.691608, 37.898785, 34.976429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521492, 38.696590, 35.386555>,  <37.774597, 38.537319, 34.701859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521492, 38.696590, 35.386555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.706478, 38.343327, 35.355179>,  <37.817471, 38.131367, 35.336353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.706478, 38.343327, 35.355179>,  <37.521492, 38.696590, 35.386555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.706478, 38.343327, 35.355179> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340894, 0.095441, 0.935245,
		-0.818485, -0.459258, 0.345202,
		0.462465, -0.883161, -0.078442,
		37.845219, 38.078377, 35.331646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.464001, 38.299477, 36.073864>,  <37.521492, 38.696590, 35.386555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.464001, 38.299477, 36.073864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764450, 38.125233, 35.875450>,  <37.944721, 38.020687, 35.756401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.764450, 38.125233, 35.875450>,  <37.464001, 38.299477, 36.073864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764450, 38.125233, 35.875450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602407, 0.144933, 0.784921,
		-0.270025, -0.888392, 0.371276,
		0.751127, -0.435608, -0.496038,
		37.989788, 37.994549, 35.726639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781010, 38.700134, 36.004223>,  <37.464001, 38.299477, 36.073864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781010, 38.700134, 36.004223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528336, 38.520515, 36.256992>,  <36.376732, 38.412746, 36.408653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.528336, 38.520515, 36.256992>,  <36.781010, 38.700134, 36.004223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528336, 38.520515, 36.256992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603314, -0.227121, -0.764479,
		0.486808, -0.864162, -0.127445,
		-0.631689, -0.449044, 0.631925,
		36.338829, 38.385803, 36.446571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663864, 37.995579, 35.851006>,  <36.781010, 38.700134, 36.004223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663864, 37.995579, 35.851006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.338245, 38.109787, 36.053314>,  <36.142876, 38.178314, 36.174698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.338245, 38.109787, 36.053314>,  <36.663864, 37.995579, 35.851006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338245, 38.109787, 36.053314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580208, -0.439082, -0.685978,
		0.026211, -0.851870, 0.523097,
		-0.814047, 0.285524, 0.505771,
		36.094032, 38.195446, 36.205044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.280880, 37.260906, 36.000603>,  <36.663864, 37.995579, 35.851006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.280880, 37.260906, 36.000603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.023605, 37.561180, 36.060978>,  <35.869240, 37.741344, 36.097202>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.023605, 37.561180, 36.060978>,  <36.280880, 37.260906, 36.000603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023605, 37.561180, 36.060978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687067, -0.478796, -0.546529,
		-0.338003, -0.455224, 0.823726,
		-0.643189, 0.750683, 0.150935,
		35.830650, 37.786385, 36.106258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564899, 36.972790, 36.301731>,  <36.280880, 37.260906, 36.000603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564899, 36.972790, 36.301731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.514999, 37.336193, 36.142204>,  <35.485058, 37.554234, 36.046486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.514999, 37.336193, 36.142204>,  <35.564899, 36.972790, 36.301731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514999, 37.336193, 36.142204> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762053, -0.345143, -0.547861,
		-0.635384, 0.235578, 0.735385,
		-0.124749, 0.908504, -0.398821,
		35.477573, 37.608746, 36.022556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769871, 37.071404, 36.300797>,  <35.564899, 36.972790, 36.301731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769871, 37.071404, 36.300797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.898468, 37.372086, 36.070465>,  <34.975628, 37.552494, 35.932266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.898468, 37.372086, 36.070465>,  <34.769871, 37.071404, 36.300797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.898468, 37.372086, 36.070465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724204, -0.196590, -0.660970,
		-0.610056, 0.629519, 0.481183,
		0.321497, 0.751703, -0.575831,
		34.994919, 37.597595, 35.897717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.123371, 37.571453, 36.026432>,  <34.769871, 37.071404, 36.300797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.123371, 37.571453, 36.026432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.411976, 37.616852, 35.753220>,  <34.585140, 37.644093, 35.589291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.411976, 37.616852, 35.753220>,  <34.123371, 37.571453, 36.026432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411976, 37.616852, 35.753220> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681416, -0.058619, -0.729545,
		-0.122840, 0.991808, 0.035044,
		0.721514, 0.113497, -0.683034,
		34.628429, 37.650902, 35.548309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831116, 38.101349, 35.481567>,  <34.123371, 37.571453, 36.026432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831116, 38.101349, 35.481567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.126858, 37.893372, 35.310444>,  <34.304302, 37.768585, 35.207771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.126858, 37.893372, 35.310444>,  <33.831116, 38.101349, 35.481567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126858, 37.893372, 35.310444> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580066, -0.169251, -0.796792,
		0.341879, 0.837266, -0.426737,
		0.739352, -0.519942, -0.427806,
		34.348663, 37.737389, 35.182102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890354, 38.438366, 34.806728>,  <33.831116, 38.101349, 35.481567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890354, 38.438366, 34.806728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.043255, 38.068745, 34.807076>,  <34.134995, 37.846970, 34.807285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.043255, 38.068745, 34.807076>,  <33.890354, 38.438366, 34.806728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043255, 38.068745, 34.807076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599097, -0.248547, -0.761122,
		0.703536, 0.290422, -0.648608,
		0.382256, -0.924056, 0.000871,
		34.157932, 37.791527, 34.807335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.848801, 38.209251, 34.107601>,  <33.890354, 38.438366, 34.806728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.848801, 38.209251, 34.107601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.935169, 37.861408, 34.285213>,  <33.986992, 37.652702, 34.391781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.935169, 37.861408, 34.285213>,  <33.848801, 38.209251, 34.107601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935169, 37.861408, 34.285213> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302045, -0.491942, -0.816555,
		0.928518, 0.042195, -0.368882,
		0.215923, -0.869605, 0.444032,
		33.999947, 37.600525, 34.418423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218609, 37.678772, 33.655457>,  <33.848801, 38.209251, 34.107601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218609, 37.678772, 33.655457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.016731, 37.474918, 33.934185>,  <33.895603, 37.352608, 34.101421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.016731, 37.474918, 33.934185>,  <34.218609, 37.678772, 33.655457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.016731, 37.474918, 33.934185> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345630, -0.620365, -0.704051,
		0.791090, -0.596172, 0.136949,
		-0.504694, -0.509634, 0.696820,
		33.865322, 37.322029, 34.143230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.249626, 37.102993, 33.367458>,  <34.218609, 37.678772, 33.655457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.249626, 37.102993, 33.367458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.974819, 37.029144, 33.648579>,  <33.809937, 36.984837, 33.817249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.974819, 37.029144, 33.648579>,  <34.249626, 37.102993, 33.367458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974819, 37.029144, 33.648579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529171, -0.535717, -0.658016,
		0.497984, -0.823967, 0.270351,
		-0.687015, -0.184619, 0.702798,
		33.768715, 36.973759, 33.859417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157516, 36.313984, 33.409435>,  <34.249626, 37.102993, 33.367458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157516, 36.313984, 33.409435> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.827568, 36.484055, 33.558468>,  <33.629601, 36.586098, 33.647888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.827568, 36.484055, 33.558468>,  <34.157516, 36.313984, 33.409435>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827568, 36.484055, 33.558468> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565286, -0.627918, -0.534948,
		0.006504, -0.651878, 0.758296,
		-0.824869, 0.425175, 0.372582,
		33.580109, 36.611607, 33.670242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765965, 35.753204, 33.503498>,  <34.157516, 36.313984, 33.409435>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765965, 35.753204, 33.503498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.522320, 36.070160, 33.490231>,  <33.376133, 36.260334, 33.482269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.522320, 36.070160, 33.490231>,  <33.765965, 35.753204, 33.503498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522320, 36.070160, 33.490231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607032, -0.492722, -0.623488,
		-0.510396, -0.359630, 0.781129,
		-0.609104, 0.792396, -0.033177,
		33.339588, 36.307877, 33.480278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177387, 35.450264, 33.507591>,  <33.765965, 35.753204, 33.503498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177387, 35.450264, 33.507591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075901, 35.816013, 33.381382>,  <33.015011, 36.035461, 33.305656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.075901, 35.816013, 33.381382>,  <33.177387, 35.450264, 33.507591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.075901, 35.816013, 33.381382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359645, -0.391988, -0.846759,
		-0.897934, -0.101356, 0.428301,
		-0.253713, 0.914370, -0.315527,
		32.999786, 36.090324, 33.286724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019451, 35.208759, 34.189255>,  <33.177387, 35.450264, 33.507591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019451, 35.208759, 34.189255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.003864, 34.826405, 34.305710>,  <32.994511, 34.596992, 34.375584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.003864, 34.826405, 34.305710>,  <33.019451, 35.208759, 34.189255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003864, 34.826405, 34.305710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716610, 0.176317, 0.674820,
		-0.696384, 0.234931, 0.678127,
		-0.038971, -0.955887, 0.291139,
		32.992172, 34.539639, 34.393051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096909, 35.310745, 34.862286>,  <33.019451, 35.208759, 34.189255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096909, 35.310745, 34.862286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.190685, 34.924759, 34.815151>,  <33.246952, 34.693169, 34.786873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.190685, 34.924759, 34.815151>,  <33.096909, 35.310745, 34.862286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190685, 34.924759, 34.815151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696493, 0.082167, 0.712844,
		-0.678186, -0.249187, 0.691353,
		0.234438, -0.964963, -0.117832,
		33.261017, 34.635269, 34.779800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990337, 34.980854, 35.473110>,  <33.096909, 35.310745, 34.862286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990337, 34.980854, 35.473110> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.265244, 34.762516, 35.281391>,  <33.430187, 34.631512, 35.166359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.265244, 34.762516, 35.281391>,  <32.990337, 34.980854, 35.473110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265244, 34.762516, 35.281391> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642941, 0.150002, 0.751084,
		-0.338082, -0.824349, 0.454037,
		0.687261, -0.545847, -0.479295,
		33.471420, 34.598763, 35.137604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282867, 34.522068, 35.931133>,  <32.990337, 34.980854, 35.473110>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282867, 34.522068, 35.931133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.572845, 34.517109, 35.655659>,  <33.746834, 34.514133, 35.490372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.572845, 34.517109, 35.655659>,  <33.282867, 34.522068, 35.931133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.572845, 34.517109, 35.655659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681793, 0.155190, 0.714895,
		0.098009, -0.987806, 0.120963,
		0.724950, -0.012406, -0.688689,
		33.790329, 34.513390, 35.449051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766743, 34.221348, 36.228470>,  <33.282867, 34.522068, 35.931133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766743, 34.221348, 36.228470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.972027, 34.414093, 35.944382>,  <34.095196, 34.529739, 35.773930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.972027, 34.414093, 35.944382>,  <33.766743, 34.221348, 36.228470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.972027, 34.414093, 35.944382> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742637, 0.165503, 0.648922,
		0.430239, -0.860472, -0.272915,
		0.513211, 0.481868, -0.710224,
		34.125992, 34.558655, 35.731316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465672, 33.956718, 36.290646>,  <33.766743, 34.221348, 36.228470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465672, 33.956718, 36.290646> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.512489, 34.306034, 36.101471>,  <34.540581, 34.515625, 35.987968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.512489, 34.306034, 36.101471>,  <34.465672, 33.956718, 36.290646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512489, 34.306034, 36.101471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747780, 0.235882, 0.620633,
		0.653548, -0.426293, -0.625419,
		0.117047, 0.873289, -0.472933,
		34.547604, 34.568020, 35.959591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252666, 34.176411, 36.329670>,  <34.465672, 33.956718, 36.290646>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252666, 34.176411, 36.329670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.088886, 34.522022, 36.212498>,  <34.990620, 34.729389, 36.142193>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.088886, 34.522022, 36.212498>,  <35.252666, 34.176411, 36.329670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088886, 34.522022, 36.212498> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689010, 0.503310, 0.521483,
		0.598012, 0.011684, -0.801402,
		-0.409447, 0.864027, -0.292935,
		34.966053, 34.781231, 36.124619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808788, 34.559338, 36.142792>,  <35.252666, 34.176411, 36.329670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808788, 34.559338, 36.142792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.500717, 34.804077, 36.214859>,  <35.315872, 34.950920, 36.258099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.500717, 34.804077, 36.214859>,  <35.808788, 34.559338, 36.142792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500717, 34.804077, 36.214859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596176, 0.590166, 0.544314,
		0.226709, 0.526632, -0.819305,
		-0.770180, 0.611851, 0.180170,
		35.269665, 34.987633, 36.268909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089069, 35.241535, 35.997936>,  <35.808788, 34.559338, 36.142792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089069, 35.241535, 35.997936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769180, 35.263107, 36.237114>,  <35.577248, 35.276051, 36.380619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.769180, 35.263107, 36.237114>,  <36.089069, 35.241535, 35.997936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769180, 35.263107, 36.237114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473878, 0.668208, 0.573531,
		-0.368620, 0.742018, -0.559937,
		-0.799724, 0.053926, 0.597941,
		35.529263, 35.279285, 36.416496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048840, 35.922310, 36.135250>,  <36.089069, 35.241535, 35.997936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048840, 35.922310, 36.135250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848019, 35.757229, 36.439255>,  <35.727524, 35.658180, 36.621658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.848019, 35.757229, 36.439255>,  <36.048840, 35.922310, 36.135250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.848019, 35.757229, 36.439255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480177, 0.597867, 0.641861,
		-0.719284, 0.687188, -0.101990,
		-0.502056, -0.412707, 0.760008,
		35.697403, 35.633415, 36.667255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015686, 36.505119, 36.614983>,  <36.048840, 35.922310, 36.135250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015686, 36.505119, 36.614983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.986134, 36.165871, 36.824829>,  <35.968403, 35.962322, 36.950737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.986134, 36.165871, 36.824829>,  <36.015686, 36.505119, 36.614983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986134, 36.165871, 36.824829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507473, 0.420882, 0.751884,
		-0.858494, 0.321783, 0.399304,
		-0.073884, -0.848124, 0.524621,
		35.963970, 35.911434, 36.982216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741440, 36.737663, 37.221722>,  <36.015686, 36.505119, 36.614983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741440, 36.737663, 37.221722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887291, 36.380585, 37.327652>,  <35.974804, 36.166336, 37.391209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887291, 36.380585, 37.327652>,  <35.741440, 36.737663, 37.221722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887291, 36.380585, 37.327652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464664, 0.420905, 0.779055,
		-0.806928, -0.161013, 0.568280,
		0.364630, -0.892700, 0.264823,
		35.996681, 36.112774, 37.407097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.689985, 33.828285, 32.453346> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891766, 33.486298, 32.501610>,  <30.012833, 33.281105, 32.530567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.891766, 33.486298, 32.501610>,  <29.689985, 33.828285, 32.453346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891766, 33.486298, 32.501610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592924, 0.444589, 0.671402,
		-0.627671, -0.267148, 0.731205,
		0.504450, -0.854969, 0.120658,
		30.043100, 33.229805, 32.537807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.711370, 33.708698, 33.165726>,  <29.689985, 33.828285, 32.453346>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.711370, 33.708698, 33.165726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020489, 33.503143, 33.016750>,  <30.205959, 33.379810, 32.927364>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020489, 33.503143, 33.016750>,  <29.711370, 33.708698, 33.165726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020489, 33.503143, 33.016750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575905, 0.321232, 0.751760,
		-0.266680, -0.795445, 0.544196,
		0.772796, -0.513885, -0.372435,
		30.252327, 33.348976, 32.905022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.037132, 33.310139, 33.724266>,  <29.711370, 33.708698, 33.165726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.037132, 33.310139, 33.724266> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312723, 33.372070, 33.441044>,  <30.478077, 33.409229, 33.271111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312723, 33.372070, 33.441044>,  <30.037132, 33.310139, 33.724266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312723, 33.372070, 33.441044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649371, 0.302029, 0.697922,
		0.321910, -0.940642, 0.107551,
		0.688978, 0.154828, -0.708052,
		30.519417, 33.418518, 33.228630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.608784, 32.984192, 34.005901>,  <30.037132, 33.310139, 33.724266>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.608784, 32.984192, 34.005901> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761847, 33.210423, 33.713684>,  <30.853685, 33.346161, 33.538353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761847, 33.210423, 33.713684>,  <30.608784, 32.984192, 34.005901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761847, 33.210423, 33.713684> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857224, 0.077567, 0.509067,
		0.344585, -0.821037, -0.455148,
		0.382658, 0.565581, -0.730541,
		30.876644, 33.380096, 33.494522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365206, 32.665947, 33.991753>,  <30.608784, 32.984192, 34.005901>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365206, 32.665947, 33.991753> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334713, 33.029552, 33.827862>,  <31.316418, 33.247715, 33.729527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334713, 33.029552, 33.827862>,  <31.365206, 32.665947, 33.991753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334713, 33.029552, 33.827862> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860598, 0.267509, 0.433369,
		0.503546, -0.319576, -0.802690,
		-0.076233, 0.909016, -0.409730,
		31.311844, 33.302258, 33.704941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996384, 32.871090, 33.522583>,  <31.365206, 32.665947, 33.991753>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996384, 32.871090, 33.522583> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858847, 33.221706, 33.657314>,  <31.776323, 33.432076, 33.738152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858847, 33.221706, 33.657314>,  <31.996384, 32.871090, 33.522583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858847, 33.221706, 33.657314> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929192, 0.265824, 0.256787,
		0.135548, 0.401270, -0.905875,
		-0.343845, 0.876538, 0.336825,
		31.755693, 33.484669, 33.758362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354752, 33.464676, 33.172607>,  <31.996384, 32.871090, 33.522583>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354752, 33.464676, 33.172607> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210480, 33.613182, 33.514851>,  <32.123917, 33.702286, 33.720196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210480, 33.613182, 33.514851>,  <32.354752, 33.464676, 33.172607>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210480, 33.613182, 33.514851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890939, 0.408539, 0.198304,
		-0.275927, 0.833822, -0.478127,
		-0.360684, 0.371264, 0.855611,
		32.102276, 33.724560, 33.771534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674973, 34.160400, 33.177326>,  <32.354752, 33.464676, 33.172607>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674973, 34.160400, 33.177326> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519646, 34.081879, 33.537476>,  <32.426449, 34.034763, 33.753567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519646, 34.081879, 33.537476>,  <32.674973, 34.160400, 33.177326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519646, 34.081879, 33.537476> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705449, 0.565315, 0.427506,
		-0.592918, 0.801175, -0.081037,
		-0.388319, -0.196308, 0.900373,
		32.403149, 34.022987, 33.807587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.784256, 34.770954, 33.468204>,  <32.674973, 34.160400, 33.177326>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.784256, 34.770954, 33.468204> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738926, 34.519840, 33.776241>,  <32.711727, 34.369171, 33.961063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738926, 34.519840, 33.776241>,  <32.784256, 34.770954, 33.468204>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738926, 34.519840, 33.776241> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852158, 0.337115, 0.400224,
		-0.510865, 0.701595, 0.496771,
		-0.113326, -0.627788, 0.770090,
		32.704929, 34.331505, 34.007267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.343506, 35.487225, 33.305962>,  <32.784256, 34.770954, 33.468204>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.343506, 35.487225, 33.305962> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500763, 35.799896, 33.112297>,  <32.595116, 35.987499, 32.996098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500763, 35.799896, 33.112297>,  <32.343506, 35.487225, 33.305962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.500763, 35.799896, 33.112297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337311, -0.367241, -0.866807,
		-0.855373, 0.504089, 0.119294,
		0.393139, 0.781683, -0.484163,
		32.618706, 36.034401, 32.967049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851500, 35.702995, 32.817738>,  <32.343506, 35.487225, 33.305962>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851500, 35.702995, 32.817738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188946, 35.871117, 32.684078>,  <32.391415, 35.971989, 32.603882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188946, 35.871117, 32.684078>,  <31.851500, 35.702995, 32.817738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188946, 35.871117, 32.684078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283329, -0.180172, -0.941946,
		-0.456110, 0.889315, -0.032911,
		0.843616, 0.420306, -0.334147,
		32.442032, 35.997208, 32.583836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657618, 36.149620, 32.270035>,  <31.851500, 35.702995, 32.817738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657618, 36.149620, 32.270035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049389, 36.100262, 32.206173>,  <32.284451, 36.070648, 32.167854>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049389, 36.100262, 32.206173>,  <31.657618, 36.149620, 32.270035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.049389, 36.100262, 32.206173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172411, -0.100656, -0.979869,
		0.104843, 0.987239, -0.119860,
		0.979430, -0.123397, -0.159658,
		32.343216, 36.063244, 32.158276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829006, 36.599365, 31.600800>,  <31.657618, 36.149620, 32.270035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829006, 36.599365, 31.600800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105282, 36.314106, 31.648737>,  <32.271046, 36.142948, 31.677500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.105282, 36.314106, 31.648737>,  <31.829006, 36.599365, 31.600800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105282, 36.314106, 31.648737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010804, -0.155527, -0.987773,
		0.723071, 0.683538, -0.099716,
		0.690689, -0.713153, 0.119842,
		32.312489, 36.100159, 31.684689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335880, 36.766720, 31.143557>,  <31.829006, 36.599365, 31.600800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335880, 36.766720, 31.143557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384865, 36.376244, 31.215179>,  <32.414257, 36.141960, 31.258154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384865, 36.376244, 31.215179>,  <32.335880, 36.766720, 31.143557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384865, 36.376244, 31.215179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123920, -0.194042, -0.973135,
		0.984706, 0.096984, -0.144732,
		0.122463, -0.976187, 0.179057,
		32.421604, 36.083389, 31.268896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794960, 36.390724, 30.575521>,  <32.335880, 36.766720, 31.143557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794960, 36.390724, 30.575521> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587997, 36.078701, 30.716265>,  <32.463818, 35.891487, 30.800711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587997, 36.078701, 30.716265>,  <32.794960, 36.390724, 30.575521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587997, 36.078701, 30.716265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239183, -0.262958, -0.934690,
		0.821632, -0.567776, -0.050518,
		-0.517410, -0.780054, 0.351856,
		32.432774, 35.844685, 30.821821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.757893, 35.887737, 30.139051>,  <32.794960, 36.390724, 30.575521>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.757893, 35.887737, 30.139051> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454613, 35.750015, 30.360535>,  <32.272644, 35.667381, 30.493425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.454613, 35.750015, 30.360535>,  <32.757893, 35.887737, 30.139051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454613, 35.750015, 30.360535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290796, -0.581519, -0.759785,
		0.583587, -0.737083, 0.340784,
		-0.758197, -0.344302, 0.553708,
		32.227154, 35.646725, 30.526648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.762608, 35.153923, 30.055515>,  <32.757893, 35.887737, 30.139051>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.762608, 35.153923, 30.055515> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397640, 35.230526, 30.200190>,  <32.178661, 35.276489, 30.286995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397640, 35.230526, 30.200190>,  <32.762608, 35.153923, 30.055515>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397640, 35.230526, 30.200190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389033, -0.680253, -0.621216,
		0.127069, -0.707516, 0.695179,
		-0.912418, 0.191510, 0.361686,
		32.123917, 35.287979, 30.308695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.445793, 34.462543, 30.350622>,  <32.762608, 35.153923, 30.055515>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.445793, 34.462543, 30.350622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130486, 34.699543, 30.284191>,  <31.941301, 34.841743, 30.244331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.130486, 34.699543, 30.284191>,  <32.445793, 34.462543, 30.350622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130486, 34.699543, 30.284191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385171, -0.685592, -0.617744,
		-0.479875, -0.422977, 0.768642,
		-0.788266, 0.592498, -0.166079,
		31.894005, 34.877293, 30.234367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793110, 34.044834, 30.468109>,  <32.445793, 34.462543, 30.350622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793110, 34.044834, 30.468109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677650, 34.360058, 30.250618>,  <31.608376, 34.549194, 30.120123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.677650, 34.360058, 30.250618>,  <31.793110, 34.044834, 30.468109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677650, 34.360058, 30.250618> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409837, -0.614941, -0.673707,
		-0.865284, 0.028374, 0.500479,
		-0.288649, 0.788062, -0.543727,
		31.591055, 34.596478, 30.087500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.100594, 33.867947, 30.348463>,  <31.793110, 34.044834, 30.468109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.100594, 33.867947, 30.348463> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170706, 34.147827, 30.071423>,  <31.212772, 34.315754, 29.905197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170706, 34.147827, 30.071423>,  <31.100594, 33.867947, 30.348463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.170706, 34.147827, 30.071423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470353, -0.558502, -0.683259,
		-0.864896, 0.445529, 0.231211,
		0.175280, 0.699700, -0.692602,
		31.223289, 34.357738, 29.863642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.378471, 33.944340, 29.997944>,  <31.100594, 33.867947, 30.348463>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.378471, 33.944340, 29.997944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682062, 34.088905, 29.781303>,  <30.864216, 34.175644, 29.651320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682062, 34.088905, 29.781303>,  <30.378471, 33.944340, 29.997944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.682062, 34.088905, 29.781303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261204, -0.592932, -0.761711,
		-0.596428, 0.719589, -0.355618,
		0.758977, 0.361418, -0.541601,
		30.909756, 34.197330, 29.618824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097466, 34.176823, 29.375351>,  <30.378471, 33.944340, 29.997944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097466, 34.176823, 29.375351> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481375, 34.084152, 29.311893>,  <30.711720, 34.028549, 29.273819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.481375, 34.084152, 29.311893>,  <30.097466, 34.176823, 29.375351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481375, 34.084152, 29.311893> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269321, -0.599765, -0.753490,
		0.079413, 0.765904, -0.638031,
		0.959771, -0.231672, -0.158645,
		30.769306, 34.014652, 29.264299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.147385, 34.199299, 28.686146>,  <30.097466, 34.176823, 29.375351>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.147385, 34.199299, 28.686146> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453392, 33.976124, 28.814800>,  <30.636995, 33.842216, 28.891993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453392, 33.976124, 28.814800>,  <30.147385, 34.199299, 28.686146>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453392, 33.976124, 28.814800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239737, -0.710259, -0.661859,
		0.597725, 0.429225, -0.677120,
		0.765017, -0.557941, 0.321638,
		30.682898, 33.808743, 28.911291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.678413, 27.492693, 31.227583> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384735, 27.763367, 31.249689>,  <34.208527, 27.925772, 31.262953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.384735, 27.763367, 31.249689>,  <34.678413, 27.492693, 31.227583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384735, 27.763367, 31.249689> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579789, 0.582537, 0.569645,
		0.353276, 0.450273, -0.820031,
		-0.734194, 0.676687, 0.055267,
		34.164478, 27.966373, 31.266270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.005344, 28.209370, 31.278713>,  <34.678413, 27.492693, 31.227583>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.005344, 28.209370, 31.278713> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628384, 28.279200, 31.392836>,  <34.402206, 28.321098, 31.461309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.628384, 28.279200, 31.392836>,  <35.005344, 28.209370, 31.278713>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628384, 28.279200, 31.392836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323321, 0.693956, 0.643341,
		-0.085678, 0.698533, -0.710431,
		-0.942403, 0.174577, 0.285307,
		34.345661, 28.331573, 31.478428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.812305, 28.839312, 31.139202>,  <35.005344, 28.209370, 31.278713>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.812305, 28.839312, 31.139202> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.586559, 28.730444, 31.450951>,  <34.451111, 28.665123, 31.638000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.586559, 28.730444, 31.450951>,  <34.812305, 28.839312, 31.139202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.586559, 28.730444, 31.450951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306943, 0.807224, 0.504158,
		-0.766344, 0.523750, -0.372025,
		-0.564361, -0.272168, 0.779373,
		34.417252, 28.648794, 31.684763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644646, 29.511522, 31.405355>,  <34.812305, 28.839312, 31.139202>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644646, 29.511522, 31.405355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536598, 29.266600, 31.702574>,  <34.471771, 29.119646, 31.880905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.536598, 29.266600, 31.702574>,  <34.644646, 29.511522, 31.405355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536598, 29.266600, 31.702574> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254842, 0.698743, 0.668441,
		-0.928490, 0.369915, -0.032699,
		-0.270115, -0.612307, 0.743046,
		34.455563, 29.082907, 31.925488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398743, 29.881712, 31.892069>,  <34.644646, 29.511522, 31.405355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398743, 29.881712, 31.892069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473808, 29.549238, 32.101418>,  <34.518848, 29.349754, 32.227028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473808, 29.549238, 32.101418>,  <34.398743, 29.881712, 31.892069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473808, 29.549238, 32.101418> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425101, 0.549080, 0.719583,
		-0.885477, 0.087442, 0.456381,
		0.187668, -0.831183, 0.523370,
		34.530109, 29.299883, 32.258427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165962, 30.051258, 32.561111>,  <34.398743, 29.881712, 31.892069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165962, 30.051258, 32.561111> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.419003, 29.743811, 32.599136>,  <34.570827, 29.559341, 32.621952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.419003, 29.743811, 32.599136>,  <34.165962, 30.051258, 32.561111>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.419003, 29.743811, 32.599136> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493132, 0.494395, 0.715818,
		-0.597189, -0.405952, 0.691787,
		0.632603, -0.768620, 0.095059,
		34.608784, 29.513226, 32.627655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227325, 29.848913, 33.274391>,  <34.165962, 30.051258, 32.561111>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227325, 29.848913, 33.274391> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573704, 29.724413, 33.117794>,  <34.781528, 29.649714, 33.023834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.573704, 29.724413, 33.117794>,  <34.227325, 29.848913, 33.274391>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573704, 29.724413, 33.117794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494991, 0.421250, 0.759956,
		-0.071620, -0.851864, 0.518844,
		0.865942, -0.311251, -0.391495,
		34.833485, 29.631039, 33.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668941, 29.722597, 33.814381>,  <34.227325, 29.848913, 33.274391>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668941, 29.722597, 33.814381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910332, 29.766020, 33.498398>,  <35.055164, 29.792074, 33.308807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.910332, 29.766020, 33.498398>,  <34.668941, 29.722597, 33.814381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910332, 29.766020, 33.498398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705801, 0.388255, 0.592539,
		0.371025, -0.915136, 0.157689,
		0.603478, 0.108550, -0.789956,
		35.091373, 29.798588, 33.261410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234787, 29.437687, 34.049484>,  <34.668941, 29.722597, 33.814381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234787, 29.437687, 34.049484> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.347767, 29.650757, 33.730366>,  <35.415554, 29.778599, 33.538895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.347767, 29.650757, 33.730366>,  <35.234787, 29.437687, 34.049484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347767, 29.650757, 33.730366> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744640, 0.402559, 0.532408,
		0.604760, -0.744450, -0.282947,
		0.282448, 0.532673, -0.797799,
		35.432503, 29.810558, 33.491028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931969, 29.313454, 33.813526>,  <35.234787, 29.437687, 34.049484>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931969, 29.313454, 33.813526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845070, 29.676212, 33.669113>,  <35.792931, 29.893867, 33.582466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845070, 29.676212, 33.669113>,  <35.931969, 29.313454, 33.813526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845070, 29.676212, 33.669113> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862373, 0.351597, 0.364270,
		0.457293, -0.232208, -0.858465,
		-0.217248, 0.906895, -0.361032,
		35.779896, 29.948280, 33.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644753, 29.555262, 33.582245>,  <35.931969, 29.313454, 33.813526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644753, 29.555262, 33.582245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387936, 29.857286, 33.635406>,  <36.233845, 30.038502, 33.667305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.387936, 29.857286, 33.635406>,  <36.644753, 29.555262, 33.582245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387936, 29.857286, 33.635406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716799, 0.529686, 0.453466,
		0.271995, 0.386412, -0.881308,
		-0.642042, 0.755062, 0.132908,
		36.195324, 30.083805, 33.675278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065742, 30.077379, 33.413960>,  <36.644753, 29.555262, 33.582245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065742, 30.077379, 33.413960> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758415, 30.277592, 33.573536>,  <36.574017, 30.397718, 33.669281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.758415, 30.277592, 33.573536>,  <37.065742, 30.077379, 33.413960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.758415, 30.277592, 33.573536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640063, 0.601117, 0.478516,
		-0.000296, 0.622999, -0.782222,
		-0.768322, 0.500530, 0.398937,
		36.527920, 30.427752, 33.693218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197697, 30.761736, 33.224178>,  <37.065742, 30.077379, 33.413960>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197697, 30.761736, 33.224178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947823, 30.757738, 33.536503>,  <36.797897, 30.755339, 33.723896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.947823, 30.757738, 33.536503>,  <37.197697, 30.761736, 33.224178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947823, 30.757738, 33.536503> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629265, 0.585631, 0.510942,
		-0.462374, 0.810516, -0.359547,
		-0.624689, -0.009995, 0.780810,
		36.760414, 30.754740, 33.770744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282047, 31.379499, 33.528873>,  <37.197697, 30.761736, 33.224178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282047, 31.379499, 33.528873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091827, 31.179008, 33.818043>,  <36.977695, 31.058714, 33.991547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.091827, 31.179008, 33.818043>,  <37.282047, 31.379499, 33.528873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.091827, 31.179008, 33.818043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700934, 0.280670, 0.655680,
		-0.531549, 0.818532, 0.217856,
		-0.475549, -0.501229, 0.722926,
		36.949162, 31.028641, 34.034920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829250, 31.922939, 33.324364>,  <37.282047, 31.379499, 33.528873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829250, 31.922939, 33.324364> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.814255, 32.255051, 33.101929>,  <36.805256, 32.454319, 32.968468>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.814255, 32.255051, 33.101929>,  <36.829250, 31.922939, 33.324364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.814255, 32.255051, 33.101929> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355001, -0.531246, -0.769254,
		-0.934114, 0.168575, 0.314664,
		-0.037487, 0.830277, -0.556088,
		36.803009, 32.504135, 32.935101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285568, 31.729824, 33.009239>,  <36.829250, 31.922939, 33.324364>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.285568, 31.729824, 33.009239> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482025, 32.006050, 32.796864>,  <36.599899, 32.171787, 32.669437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.482025, 32.006050, 32.796864>,  <36.285568, 31.729824, 33.009239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482025, 32.006050, 32.796864> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171532, -0.520912, -0.836198,
		-0.854023, 0.501766, -0.137388,
		0.491142, 0.690567, -0.530940,
		36.629368, 32.213219, 32.637581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822632, 31.962271, 32.596920>,  <36.285568, 31.729824, 33.009239>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822632, 31.962271, 32.596920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.179382, 32.044003, 32.435528>,  <36.393433, 32.093040, 32.338692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.179382, 32.044003, 32.435528>,  <35.822632, 31.962271, 32.596920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179382, 32.044003, 32.435528> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297643, -0.406531, -0.863795,
		-0.340529, 0.890495, -0.301758,
		0.891879, 0.204331, -0.403485,
		36.446945, 32.105301, 32.314484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708057, 32.362827, 32.035110>,  <35.822632, 31.962271, 32.596920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708057, 32.362827, 32.035110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072006, 32.222305, 31.946819>,  <36.290375, 32.137993, 31.893845>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.072006, 32.222305, 31.946819>,  <35.708057, 32.362827, 32.035110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072006, 32.222305, 31.946819> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356085, -0.388167, -0.850018,
		0.212938, 0.852003, -0.478276,
		0.909869, -0.351308, -0.220730,
		36.344967, 32.116913, 31.880600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830368, 32.613747, 31.323328>,  <35.708057, 32.362827, 32.035110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830368, 32.613747, 31.323328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.091125, 32.314465, 31.372684>,  <36.247581, 32.134895, 31.402298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.091125, 32.314465, 31.372684>,  <35.830368, 32.613747, 31.323328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091125, 32.314465, 31.372684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113794, -0.257397, -0.959582,
		0.749724, 0.611504, -0.252937,
		0.651894, -0.748204, 0.123391,
		36.286694, 32.090004, 31.409702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.177113, 32.606628, 30.736748>,  <35.830368, 32.613747, 31.323328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.177113, 32.606628, 30.736748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.197506, 32.240417, 30.896355>,  <36.209743, 32.020691, 30.992119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.197506, 32.240417, 30.896355>,  <36.177113, 32.606628, 30.736748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197506, 32.240417, 30.896355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140423, -0.402140, -0.904746,
		0.988778, -0.009901, -0.149064,
		0.050987, -0.915524, 0.399018,
		36.212803, 31.965759, 31.016060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560631, 32.300762, 30.258722>,  <36.177113, 32.606628, 30.736748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560631, 32.300762, 30.258722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402969, 31.999525, 30.469435>,  <36.308372, 31.818783, 30.595861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.402969, 31.999525, 30.469435>,  <36.560631, 32.300762, 30.258722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402969, 31.999525, 30.469435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180813, -0.498435, -0.847861,
		0.901083, -0.429436, 0.060291,
		-0.394154, -0.753092, 0.526779,
		36.284721, 31.773598, 30.627468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.879822, 31.582253, 30.058249>,  <36.560631, 32.300762, 30.258722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.879822, 31.582253, 30.058249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.515587, 31.506212, 30.205046>,  <36.297047, 31.460588, 30.293125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.515587, 31.506212, 30.205046>,  <36.879822, 31.582253, 30.058249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515587, 31.506212, 30.205046> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197292, -0.580325, -0.790126,
		0.363179, -0.791887, 0.490933,
		-0.910591, -0.190100, 0.366995,
		36.242409, 31.449183, 30.315144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676342, 31.011097, 29.763645>,  <36.879822, 31.582253, 30.058249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676342, 31.011097, 29.763645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.328102, 31.096428, 29.940977>,  <36.119156, 31.147627, 30.047377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.328102, 31.096428, 29.940977>,  <36.676342, 31.011097, 29.763645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.328102, 31.096428, 29.940977> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489890, -0.459015, -0.741157,
		0.045386, -0.862436, 0.504127,
		-0.870602, 0.213328, 0.443332,
		36.066921, 31.160427, 30.073977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327259, 30.368710, 29.748882>,  <36.676342, 31.011097, 29.763645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327259, 30.368710, 29.748882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046085, 30.651684, 29.778315>,  <35.877380, 30.821468, 29.795975>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.046085, 30.651684, 29.778315>,  <36.327259, 30.368710, 29.748882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046085, 30.651684, 29.778315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591330, -0.523790, -0.613166,
		-0.395236, -0.474527, 0.786519,
		-0.702935, 0.707438, 0.073582,
		35.835205, 30.863914, 29.800388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.692047, 30.012211, 29.813410>,  <36.327259, 30.368710, 29.748882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.692047, 30.012211, 29.813410> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573326, 30.377781, 29.702671>,  <35.502094, 30.597124, 29.636229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.573326, 30.377781, 29.702671>,  <35.692047, 30.012211, 29.813410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573326, 30.377781, 29.702671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589796, -0.403447, -0.699551,
		-0.751031, -0.044349, 0.658776,
		-0.296805, 0.913927, -0.276845,
		35.484283, 30.651958, 29.619617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934357, 30.032921, 29.940773>,  <35.692047, 30.012211, 29.813410>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934357, 30.032921, 29.940773> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045376, 30.294651, 29.659397>,  <35.111988, 30.451689, 29.490572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.045376, 30.294651, 29.659397>,  <34.934357, 30.032921, 29.940773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045376, 30.294651, 29.659397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635272, -0.424279, -0.645303,
		-0.720692, 0.625977, 0.297917,
		0.277545, 0.654323, -0.703441,
		35.128639, 30.490948, 29.448364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346298, 30.434540, 29.713926>,  <34.934357, 30.032921, 29.940773>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346298, 30.434540, 29.713926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610752, 30.433554, 29.413822>,  <34.769424, 30.432962, 29.233759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.610752, 30.433554, 29.413822>,  <34.346298, 30.434540, 29.713926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610752, 30.433554, 29.413822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672225, -0.446030, -0.590907,
		-0.333182, 0.895015, -0.296544,
		0.661138, -0.002465, -0.750260,
		34.809093, 30.432814, 29.188744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076454, 30.839045, 29.158138>,  <34.346298, 30.434540, 29.713926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076454, 30.839045, 29.158138> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337032, 30.590799, 28.983572>,  <34.493378, 30.441853, 28.878832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.337032, 30.590799, 28.983572>,  <34.076454, 30.839045, 29.158138>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337032, 30.590799, 28.983572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746805, -0.423077, -0.513117,
		0.133809, 0.660185, -0.739088,
		0.651443, -0.620614, -0.436418,
		34.532467, 30.404615, 28.852646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.241203, 31.447777, 28.742897>,  <34.076454, 30.839045, 29.158138>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.241203, 31.447777, 28.742897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.071766, 31.754805, 28.550476>,  <33.970104, 31.939020, 28.435024>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.071766, 31.754805, 28.550476>,  <34.241203, 31.447777, 28.742897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071766, 31.754805, 28.550476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438184, 0.638405, 0.632798,
		0.792822, 0.057257, -0.606757,
		-0.423589, 0.767568, -0.481053,
		33.944691, 31.985075, 28.406160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.709839, 31.978706, 28.709753>,  <34.241203, 31.447777, 28.742897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.709839, 31.978706, 28.709753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.378071, 32.192059, 28.643351>,  <34.179008, 32.320072, 28.603510>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.378071, 32.192059, 28.643351>,  <34.709839, 31.978706, 28.709753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378071, 32.192059, 28.643351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360149, 0.737749, 0.570981,
		0.427022, 0.413799, -0.804004,
		-0.829425, 0.533382, -0.166006,
		34.129242, 32.352074, 28.593550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981297, 32.598663, 28.522591>,  <34.709839, 31.978706, 28.709753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981297, 32.598663, 28.522591> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.607349, 32.673061, 28.643543>,  <34.382980, 32.717701, 28.716114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.607349, 32.673061, 28.643543>,  <34.981297, 32.598663, 28.522591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.607349, 32.673061, 28.643543> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299193, 0.871247, 0.389117,
		-0.191075, 0.454242, -0.870146,
		-0.934866, 0.185991, 0.302379,
		34.326889, 32.728859, 28.734257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752968, 33.353714, 28.368902>,  <34.981297, 32.598663, 28.522591>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752968, 33.353714, 28.368902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.506218, 33.212433, 28.650248>,  <34.358170, 33.127666, 28.819054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.506218, 33.212433, 28.650248>,  <34.752968, 33.353714, 28.368902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506218, 33.212433, 28.650248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196547, 0.796211, 0.572204,
		-0.762126, 0.491221, -0.421741,
		-0.616874, -0.353200, 0.703361,
		34.321156, 33.106472, 28.861256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.334061, 33.943810, 28.569668>,  <34.752968, 33.353714, 28.368902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.334061, 33.943810, 28.569668> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.319237, 33.685707, 28.874895>,  <34.310345, 33.530846, 29.058031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.319237, 33.685707, 28.874895>,  <34.334061, 33.943810, 28.569668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.319237, 33.685707, 28.874895> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107464, 0.756590, 0.644999,
		-0.993518, 0.105903, 0.041306,
		-0.037055, -0.645257, 0.763066,
		34.308121, 33.492130, 29.103815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745232, 34.236759, 29.020536>,  <34.334061, 33.943810, 28.569668>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745232, 34.236759, 29.020536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946354, 33.987831, 29.260504>,  <34.067028, 33.838474, 29.404484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.946354, 33.987831, 29.260504>,  <33.745232, 34.236759, 29.020536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946354, 33.987831, 29.260504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098567, 0.648222, 0.755045,
		-0.858763, -0.438770, 0.264587,
		0.502802, -0.622325, 0.599918,
		34.097195, 33.801132, 29.440479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510315, 34.431252, 29.658127>,  <33.745232, 34.236759, 29.020536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510315, 34.431252, 29.658127> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847775, 34.232944, 29.740557>,  <34.050251, 34.113960, 29.790014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.847775, 34.232944, 29.740557>,  <33.510315, 34.431252, 29.658127>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847775, 34.232944, 29.740557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257007, 0.709915, 0.655719,
		-0.471380, -0.500236, 0.726337,
		0.843652, -0.495767, 0.206075,
		34.100868, 34.084213, 29.802380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529472, 34.348099, 30.425247>,  <33.510315, 34.431252, 29.658127>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529472, 34.348099, 30.425247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.903080, 34.301476, 30.290182>,  <34.127247, 34.273502, 30.209143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.903080, 34.301476, 30.290182>,  <33.529472, 34.348099, 30.425247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903080, 34.301476, 30.290182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345928, 0.530848, 0.773650,
		0.089075, -0.839413, 0.536144,
		0.934023, -0.116555, -0.337661,
		34.183289, 34.266510, 30.188883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966171, 34.245579, 30.995136>,  <33.529472, 34.348099, 30.425247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966171, 34.245579, 30.995136> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.211559, 34.374935, 30.706949>,  <34.358791, 34.452549, 30.534037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.211559, 34.374935, 30.706949>,  <33.966171, 34.245579, 30.995136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211559, 34.374935, 30.706949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467338, 0.586750, 0.661302,
		0.636593, -0.742391, 0.208821,
		0.613470, 0.323390, -0.720468,
		34.395599, 34.471951, 30.490808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604332, 34.311356, 31.349792>,  <33.966171, 34.245579, 30.995136>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604332, 34.311356, 31.349792> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.676682, 34.526852, 31.020660>,  <34.720093, 34.656147, 30.823181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.676682, 34.526852, 31.020660>,  <34.604332, 34.311356, 31.349792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676682, 34.526852, 31.020660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538709, 0.645693, 0.541178,
		0.822847, -0.541149, -0.173434,
		0.180873, 0.538738, -0.822828,
		34.730942, 34.688473, 30.773811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363121, 34.312561, 31.189352>,  <34.604332, 34.311356, 31.349792>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363121, 34.312561, 31.189352> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185596, 34.643036, 31.050533>,  <35.079082, 34.841320, 30.967241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.185596, 34.643036, 31.050533>,  <35.363121, 34.312561, 31.189352>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185596, 34.643036, 31.050533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593602, 0.561174, 0.576819,
		0.671315, 0.049993, -0.739484,
		-0.443816, 0.826187, -0.347048,
		35.052452, 34.890892, 30.946419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952171, 34.729851, 31.135756>,  <35.363121, 34.312561, 31.189352>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952171, 34.729851, 31.135756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.645424, 34.981045, 31.082764>,  <35.461376, 35.131760, 31.050968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.645424, 34.981045, 31.082764>,  <35.952171, 34.729851, 31.135756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645424, 34.981045, 31.082764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440491, 0.665116, 0.602983,
		0.466778, 0.404053, -0.786677,
		-0.766868, 0.627983, -0.132480,
		35.415363, 35.169441, 31.043020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216011, 35.373123, 31.041218>,  <35.952171, 34.729851, 31.135756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216011, 35.373123, 31.041218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846325, 35.471642, 31.157948>,  <35.624512, 35.530754, 31.227985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846325, 35.471642, 31.157948>,  <36.216011, 35.373123, 31.041218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846325, 35.471642, 31.157948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373351, 0.743297, 0.555084,
		-0.080196, 0.621971, -0.778923,
		-0.924217, 0.246296, 0.291823,
		35.569061, 35.545532, 31.245495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075863, 36.166508, 31.050789>,  <36.216011, 35.373123, 31.041218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075863, 36.166508, 31.050789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810627, 36.007545, 31.304523>,  <35.651485, 35.912167, 31.456764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.810627, 36.007545, 31.304523>,  <36.075863, 36.166508, 31.050789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810627, 36.007545, 31.304523> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221911, 0.704972, 0.673625,
		-0.714894, 0.587438, -0.379268,
		-0.663086, -0.397406, 0.634339,
		35.611702, 35.888325, 31.494825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.849468, 33.997169, 27.911171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.925713, 33.770226, 28.231613>,  <30.971460, 33.634060, 28.423878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.925713, 33.770226, 28.231613>,  <30.849468, 33.997169, 27.911171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.925713, 33.770226, 28.231613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068377, -0.821757, -0.565721,
		0.979281, 0.053057, -0.195431,
		0.190612, -0.567363, 0.801103,
		30.982897, 33.600018, 28.471945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.290226, 33.558777, 27.644712>,  <30.849468, 33.997169, 27.911171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.290226, 33.558777, 27.644712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.113045, 33.372772, 27.951321>,  <31.006735, 33.261169, 28.135286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.113045, 33.372772, 27.951321>,  <31.290226, 33.558777, 27.644712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113045, 33.372772, 27.951321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092409, -0.826739, -0.554944,
		0.891769, -0.316648, 0.323236,
		-0.442954, -0.465012, 0.766522,
		30.980158, 33.233269, 28.181276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705397, 32.884541, 27.781116>,  <31.290226, 33.558777, 27.644712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705397, 32.884541, 27.781116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341078, 32.837254, 27.939341>,  <31.122486, 32.808880, 28.034275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.341078, 32.837254, 27.939341>,  <31.705397, 32.884541, 27.781116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.341078, 32.837254, 27.939341> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077748, -0.891867, -0.445566,
		0.405464, -0.436575, 0.803120,
		-0.910799, -0.118220, 0.395563,
		31.067839, 32.801788, 28.058010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681158, 32.092785, 27.920679>,  <31.705397, 32.884541, 27.781116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681158, 32.092785, 27.920679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.313034, 32.249233, 27.917788>,  <31.092159, 32.343102, 27.916052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.313034, 32.249233, 27.917788>,  <31.681158, 32.092785, 27.920679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313034, 32.249233, 27.917788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327540, -0.780545, -0.532416,
		-0.213883, -0.487620, 0.846452,
		-0.920311, 0.391121, -0.007230,
		31.036942, 32.366570, 27.915619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266409, 31.501125, 28.084171>,  <31.681158, 32.092785, 27.920679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266409, 31.501125, 28.084171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028013, 31.784935, 27.933775>,  <30.884975, 31.955221, 27.843536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.028013, 31.784935, 27.933775>,  <31.266409, 31.501125, 28.084171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.028013, 31.784935, 27.933775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509613, -0.696072, -0.505745,
		-0.620555, -0.109809, 0.776436,
		-0.595991, 0.709525, -0.375991,
		30.849216, 31.997793, 27.820978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.558605, 31.300760, 28.100080>,  <31.266409, 31.501125, 28.084171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.558605, 31.300760, 28.100080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.557943, 31.581240, 27.814896>,  <30.557547, 31.749527, 27.643785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.557943, 31.581240, 27.814896>,  <30.558605, 31.300760, 28.100080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557943, 31.581240, 27.814896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451230, -0.636776, -0.625226,
		-0.892406, 0.320677, 0.317455,
		-0.001652, 0.701200, -0.712962,
		30.557447, 31.791599, 27.601007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864376, 31.178776, 27.808289>,  <30.558605, 31.300760, 28.100080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864376, 31.178776, 27.808289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.068859, 31.374125, 27.525400>,  <30.191549, 31.491335, 27.355667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.068859, 31.374125, 27.525400>,  <29.864376, 31.178776, 27.808289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068859, 31.374125, 27.525400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486082, -0.514330, -0.706533,
		-0.708796, 0.704951, -0.025540,
		0.511207, 0.488373, -0.707219,
		30.222221, 31.520636, 27.313234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346348, 31.011324, 27.259369>,  <29.864376, 31.178776, 27.808289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346348, 31.011324, 27.259369> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.685446, 31.141380, 27.091743>,  <29.888905, 31.219414, 26.991167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.685446, 31.141380, 27.091743>,  <29.346348, 31.011324, 27.259369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.685446, 31.141380, 27.091743> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216626, -0.508945, -0.833096,
		-0.484154, 0.797032, -0.361021,
		0.847743, 0.325140, -0.419065,
		29.939770, 31.238922, 26.966024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304899, 31.156685, 26.612556>,  <29.346348, 31.011324, 27.259369>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304899, 31.156685, 26.612556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.703873, 31.155670, 26.583933>,  <29.943256, 31.155062, 26.566759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.703873, 31.155670, 26.583933>,  <29.304899, 31.156685, 26.612556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703873, 31.155670, 26.583933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059606, -0.583137, -0.810184,
		-0.039674, 0.812370, -0.581791,
		0.997433, -0.002535, -0.071558,
		30.003103, 31.154909, 26.562466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468267, 31.249258, 25.987413>,  <29.304899, 31.156685, 26.612556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468267, 31.249258, 25.987413> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.792339, 31.070986, 26.139717>,  <29.986782, 30.964022, 26.231098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.792339, 31.070986, 26.139717>,  <29.468267, 31.249258, 25.987413>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792339, 31.070986, 26.139717> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070874, -0.570312, -0.818365,
		0.581880, 0.690009, -0.430468,
		0.810180, -0.445681, 0.380757,
		30.035393, 30.937281, 26.253944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138136, 31.333063, 25.590519>,  <29.468267, 31.249258, 25.987413>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138136, 31.333063, 25.590519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.133879, 30.990423, 25.796869>,  <30.131325, 30.784840, 25.920679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.133879, 30.990423, 25.796869>,  <30.138136, 31.333063, 25.590519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.133879, 30.990423, 25.796869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033546, -0.515918, -0.855981,
		0.999380, 0.008193, 0.034227,
		-0.010645, -0.856599, 0.515874,
		30.130686, 30.733444, 25.951632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.401892, 30.978682, 25.159790>,  <30.138136, 31.333063, 25.590519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.401892, 30.978682, 25.159790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.265253, 30.698730, 25.410704>,  <30.183270, 30.530760, 25.561253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.265253, 30.698730, 25.410704>,  <30.401892, 30.978682, 25.159790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265253, 30.698730, 25.410704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040105, -0.655970, -0.753721,
		0.938990, -0.282627, 0.196010,
		-0.341598, -0.699875, 0.627284,
		30.162773, 30.488768, 25.598888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.654629, 30.394985, 24.918573>,  <30.401892, 30.978682, 25.159790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.654629, 30.394985, 24.918573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.356285, 30.283117, 25.160395>,  <30.177279, 30.215996, 25.305487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.356285, 30.283117, 25.160395>,  <30.654629, 30.394985, 24.918573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356285, 30.283117, 25.160395> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254476, -0.719111, -0.646622,
		0.615580, -0.636132, 0.465185,
		-0.745857, -0.279669, 0.604551,
		30.132528, 30.199217, 25.341761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.710220, 29.952877, 24.321068>,  <30.654629, 30.394985, 24.918573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.710220, 29.952877, 24.321068> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833803, 29.572454, 24.318708>,  <30.907953, 29.344200, 24.317293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.833803, 29.572454, 24.318708>,  <30.710220, 29.952877, 24.321068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833803, 29.572454, 24.318708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713366, 0.227633, 0.662791,
		-0.629010, -0.208982, 0.748781,
		0.308959, -0.951057, -0.005897,
		30.926491, 29.287138, 24.316938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.733931, 29.658413, 25.021658>,  <30.710220, 29.952877, 24.321068>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.733931, 29.658413, 25.021658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996326, 29.516714, 24.755068>,  <31.153765, 29.431694, 24.595114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996326, 29.516714, 24.755068>,  <30.733931, 29.658413, 25.021658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996326, 29.516714, 24.755068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752977, 0.246313, 0.610210,
		-0.052003, -0.902130, 0.428318,
		0.655989, -0.354247, -0.666474,
		31.193123, 29.410440, 24.555126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248125, 29.301653, 25.411253>,  <30.733931, 29.658413, 25.021658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248125, 29.301653, 25.411253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.429209, 29.348312, 25.057655>,  <31.537859, 29.376308, 24.845497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.429209, 29.348312, 25.057655>,  <31.248125, 29.301653, 25.411253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429209, 29.348312, 25.057655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851818, 0.236461, 0.467431,
		0.263557, -0.964613, 0.007682,
		0.452707, 0.116651, -0.883996,
		31.565022, 29.383307, 24.792456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.882040, 28.955477, 25.521940>,  <31.248125, 29.301653, 25.411253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.882040, 28.955477, 25.521940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.951412, 29.192602, 25.207363>,  <31.993036, 29.334877, 25.018616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.951412, 29.192602, 25.207363>,  <31.882040, 28.955477, 25.521940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951412, 29.192602, 25.207363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843886, 0.322221, 0.428986,
		0.507718, -0.738068, -0.444385,
		0.173431, 0.592814, -0.786444,
		32.003441, 29.370447, 24.971430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571110, 28.856476, 25.475164>,  <31.882040, 28.955477, 25.521940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571110, 28.856476, 25.475164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467331, 29.192236, 25.284126>,  <32.405064, 29.393692, 25.169502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.467331, 29.192236, 25.284126>,  <32.571110, 28.856476, 25.475164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467331, 29.192236, 25.284126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724670, 0.496103, 0.478263,
		0.638391, -0.222017, -0.736998,
		-0.259444, 0.839398, -0.477597,
		32.389496, 29.444056, 25.140846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203812, 29.203514, 25.369663>,  <32.571110, 28.856476, 25.475164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203812, 29.203514, 25.369663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936005, 29.492853, 25.302126>,  <32.775318, 29.666456, 25.261602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936005, 29.492853, 25.302126>,  <33.203812, 29.203514, 25.369663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936005, 29.492853, 25.302126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583137, 0.652657, 0.483725,
		0.460099, 0.225404, -0.858779,
		-0.669522, 0.723348, -0.168846,
		32.735149, 29.709858, 25.251472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556347, 29.738628, 25.126387>,  <33.203812, 29.203514, 25.369663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556347, 29.738628, 25.126387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218533, 29.899155, 25.268204>,  <33.015842, 29.995470, 25.353294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.218533, 29.899155, 25.268204>,  <33.556347, 29.738628, 25.126387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218533, 29.899155, 25.268204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535070, 0.658785, 0.528869,
		-0.021322, 0.636354, -0.771102,
		-0.844538, 0.401318, 0.354541,
		32.965172, 30.019550, 25.374565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590599, 30.496536, 25.085583>,  <33.556347, 29.738628, 25.126387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590599, 30.496536, 25.085583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325191, 30.429462, 25.377235>,  <33.165947, 30.389217, 25.552227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.325191, 30.429462, 25.377235>,  <33.590599, 30.496536, 25.085583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325191, 30.429462, 25.377235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400283, 0.743782, 0.535315,
		-0.632077, 0.647048, -0.426389,
		-0.663515, -0.167684, 0.729130,
		33.126137, 30.379158, 25.595974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656803, 31.162586, 25.512672>,  <33.590599, 30.496536, 25.085583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656803, 31.162586, 25.512672> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417538, 30.924990, 25.727848>,  <33.273979, 30.782433, 25.856953>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.417538, 30.924990, 25.727848>,  <33.656803, 31.162586, 25.512672>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417538, 30.924990, 25.727848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104850, 0.607491, 0.787376,
		-0.794486, 0.527382, -0.301098,
		-0.598162, -0.593990, 0.537939,
		33.238091, 30.746792, 25.889229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129986, 31.617167, 25.806885>,  <33.656803, 31.162586, 25.512672>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129986, 31.617167, 25.806885> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149803, 31.289074, 26.034840>,  <33.161694, 31.092218, 26.171612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149803, 31.289074, 26.034840>,  <33.129986, 31.617167, 25.806885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149803, 31.289074, 26.034840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005707, 0.570344, 0.821386,
		-0.998756, -0.043948, 0.023577,
		0.049545, -0.820229, 0.569885,
		33.164665, 31.043005, 26.205805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692921, 31.778318, 26.357548>,  <33.129986, 31.617167, 25.806885>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692921, 31.778318, 26.357548> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936146, 31.486092, 26.481829>,  <33.082081, 31.310755, 26.556396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.936146, 31.486092, 26.481829>,  <32.692921, 31.778318, 26.357548>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.936146, 31.486092, 26.481829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191972, 0.515057, 0.835382,
		-0.770331, -0.448317, 0.453434,
		0.608060, -0.730567, 0.310700,
		33.118565, 31.266922, 26.575039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.478977, 31.706957, 27.005100>,  <32.692921, 31.778318, 26.357548>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.478977, 31.706957, 27.005100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.843887, 31.543358, 27.013762>,  <33.062836, 31.445198, 27.018957>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.843887, 31.543358, 27.013762>,  <32.478977, 31.706957, 27.005100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843887, 31.543358, 27.013762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228296, 0.551683, 0.802201,
		-0.340044, -0.726888, 0.596661,
		0.912278, -0.408999, 0.021651,
		33.117569, 31.420658, 27.020256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.543987, 31.454531, 27.721722>,  <32.478977, 31.706957, 27.005100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.543987, 31.454531, 27.721722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.912651, 31.473444, 27.567677>,  <33.133850, 31.484791, 27.475248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.912651, 31.473444, 27.567677>,  <32.543987, 31.454531, 27.721722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.912651, 31.473444, 27.567677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330524, 0.424210, 0.843089,
		0.203231, -0.904329, 0.375349,
		0.921657, 0.047280, -0.385115,
		33.189148, 31.487629, 27.452143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924770, 31.396194, 28.275587>,  <32.543987, 31.454531, 27.721722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924770, 31.396194, 28.275587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194157, 31.531698, 28.012775>,  <33.355789, 31.613001, 27.855089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194157, 31.531698, 28.012775>,  <32.924770, 31.396194, 28.275587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194157, 31.531698, 28.012775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432559, 0.540163, 0.721884,
		0.599452, -0.770365, 0.217243,
		0.673461, 0.338764, -0.657030,
		33.396194, 31.633327, 27.815666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468838, 31.307865, 28.596840>,  <32.924770, 31.396194, 28.275587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468838, 31.307865, 28.596840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551876, 31.597439, 28.333681>,  <33.601700, 31.771183, 28.175787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.551876, 31.597439, 28.333681>,  <33.468838, 31.307865, 28.596840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551876, 31.597439, 28.333681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298584, 0.593557, 0.747354,
		0.931531, -0.351585, -0.092935,
		0.207597, 0.723933, -0.657895,
		33.614155, 31.814619, 28.136312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.697544, 30.685936, 28.553810>,  <33.468838, 31.307865, 28.596840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.697544, 30.685936, 28.553810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991360, 30.416849, 28.589382>,  <34.167648, 30.255396, 28.610725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.991360, 30.416849, 28.589382>,  <33.697544, 30.685936, 28.553810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991360, 30.416849, 28.589382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550224, -0.667164, -0.502142,
		0.397130, 0.319910, -0.860201,
		0.734535, -0.672719, 0.088929,
		34.211720, 30.215034, 28.616060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787457, 30.398178, 27.794916>,  <33.697544, 30.685936, 28.553810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787457, 30.398178, 27.794916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947807, 30.143387, 28.058296>,  <34.044018, 29.990511, 28.216324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.947807, 30.143387, 28.058296>,  <33.787457, 30.398178, 27.794916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.947807, 30.143387, 28.058296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550982, -0.741845, -0.382210,
		0.731928, -0.209575, -0.648352,
		0.400875, -0.636981, 0.658449,
		34.068069, 29.952293, 28.255831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833416, 29.829252, 27.379295>,  <33.787457, 30.398178, 27.794916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833416, 29.829252, 27.379295> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851570, 29.668783, 27.745247>,  <33.862461, 29.572502, 27.964817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.851570, 29.668783, 27.745247>,  <33.833416, 29.829252, 27.379295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851570, 29.668783, 27.745247> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428054, -0.835295, -0.345041,
		0.902613, -0.375956, -0.209635,
		0.045387, -0.401173, 0.914877,
		33.865185, 29.548431, 28.019711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035027, 29.038725, 27.239475>,  <33.833416, 29.829252, 27.379295>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035027, 29.038725, 27.239475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888714, 29.091055, 27.608059>,  <33.800926, 29.122454, 27.829208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.888714, 29.091055, 27.608059>,  <34.035027, 29.038725, 27.239475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.888714, 29.091055, 27.608059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561801, -0.820384, -0.106538,
		0.742011, -0.556646, 0.373584,
		-0.365786, 0.130827, 0.921458,
		33.778976, 29.130302, 27.884497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984589, 28.366707, 27.596918>,  <34.035027, 29.038725, 27.239475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984589, 28.366707, 27.596918> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716045, 28.607840, 27.769367>,  <33.554916, 28.752520, 27.872837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.716045, 28.607840, 27.769367>,  <33.984589, 28.366707, 27.596918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716045, 28.607840, 27.769367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721358, -0.664983, -0.193496,
		0.170044, -0.440899, 0.881302,
		-0.671363, 0.602831, 0.431123,
		33.514637, 28.788689, 27.898705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.585953, 27.947903, 27.992859>,  <33.984589, 28.366707, 27.596918>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.585953, 27.947903, 27.992859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.391376, 28.287666, 27.910999>,  <33.274632, 28.491524, 27.861883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.391376, 28.287666, 27.910999>,  <33.585953, 27.947903, 27.992859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391376, 28.287666, 27.910999> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751039, -0.526194, -0.398823,
		-0.446450, -0.040303, 0.893901,
		-0.486440, 0.849409, -0.204650,
		33.245445, 28.542488, 27.849604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878113, 27.700500, 28.156395>,  <33.585953, 27.947903, 27.992859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878113, 27.700500, 28.156395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.851887, 28.040020, 27.946539>,  <32.836151, 28.243731, 27.820625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.851887, 28.040020, 27.946539>,  <32.878113, 27.700500, 28.156395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.851887, 28.040020, 27.946539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786120, -0.367763, -0.496755,
		-0.614587, 0.379860, 0.691368,
		-0.065562, 0.848797, -0.524638,
		32.832218, 28.294659, 27.789148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.533634, 27.859591, 28.893183>,  <32.878113, 27.700500, 28.156395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.533634, 27.859591, 28.893183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390388, 27.547884, 29.098900>,  <32.304440, 27.360861, 29.222330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390388, 27.547884, 29.098900>,  <32.533634, 27.859591, 28.893183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390388, 27.547884, 29.098900> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468171, 0.326704, 0.821024,
		-0.807818, 0.534797, 0.247833,
		-0.358113, -0.779267, 0.514294,
		32.282955, 27.314104, 29.253187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338432, 28.064734, 29.608862>,  <32.533634, 27.859591, 28.893183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338432, 28.064734, 29.608862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.414539, 27.673040, 29.636866>,  <32.460205, 27.438025, 29.653667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.414539, 27.673040, 29.636866>,  <32.338432, 28.064734, 29.608862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414539, 27.673040, 29.636866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418286, 0.145380, 0.896606,
		-0.888163, -0.141314, 0.437260,
		0.190271, -0.979232, 0.070011,
		32.471622, 27.379271, 29.657869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.066601, 27.928993, 30.213661>,  <32.338432, 28.064734, 29.608862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.066601, 27.928993, 30.213661> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328003, 27.635084, 30.140951>,  <32.484844, 27.458738, 30.097326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.328003, 27.635084, 30.140951>,  <32.066601, 27.928993, 30.213661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328003, 27.635084, 30.140951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346054, 0.076447, 0.935095,
		-0.673188, -0.673989, 0.304230,
		0.653501, -0.734775, -0.181774,
		32.524052, 27.414652, 30.086418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.090008, 27.382742, 30.864645>,  <32.066601, 27.928993, 30.213661>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.090008, 27.382742, 30.864645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.435738, 27.343798, 30.667278>,  <32.643177, 27.320431, 30.548859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.435738, 27.343798, 30.667278>,  <32.090008, 27.382742, 30.864645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435738, 27.343798, 30.667278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500900, 0.254693, 0.827182,
		0.045133, -0.962108, 0.268907,
		0.864327, -0.097363, -0.493415,
		32.695034, 27.314589, 30.519253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594910, 27.287174, 31.281660>,  <32.090008, 27.382742, 30.864645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594910, 27.287174, 31.281660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858688, 27.330772, 30.984137>,  <33.016956, 27.356932, 30.805622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.858688, 27.330772, 30.984137>,  <32.594910, 27.287174, 31.281660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858688, 27.330772, 30.984137> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717731, 0.203011, 0.666070,
		0.223603, -0.973091, 0.055643,
		0.659442, 0.108998, -0.743811,
		33.056522, 27.363472, 30.760994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185711, 26.979609, 31.570518>,  <32.594910, 27.287174, 31.281660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185711, 26.979609, 31.570518> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284740, 27.225910, 31.271305>,  <33.344158, 27.373692, 31.091778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.284740, 27.225910, 31.271305>,  <33.185711, 26.979609, 31.570518>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.284740, 27.225910, 31.271305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688213, 0.431672, 0.583114,
		0.681959, -0.659173, -0.316896,
		0.247578, 0.615752, -0.748034,
		33.359013, 27.410635, 31.046894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880161, 27.061035, 31.544849>,  <33.185711, 26.979609, 31.570518>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880161, 27.061035, 31.544849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767414, 27.400650, 31.366102>,  <33.699768, 27.604420, 31.258854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.767414, 27.400650, 31.366102>,  <33.880161, 27.061035, 31.544849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.767414, 27.400650, 31.366102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634723, 0.514275, 0.576756,
		0.719499, -0.121069, -0.683859,
		-0.281865, 0.849037, -0.446866,
		33.682854, 27.655361, 31.232042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.465099, 28.235323, 27.412216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641735, 28.566885, 27.274860>,  <28.747717, 28.765821, 27.192446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.641735, 28.566885, 27.274860>,  <28.465099, 28.235323, 27.412216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641735, 28.566885, 27.274860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189397, 0.287985, 0.938719,
		0.876999, -0.479566, -0.029820,
		0.441590, 0.828903, -0.343390,
		28.774212, 28.815556, 27.171843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022572, 28.282360, 27.831413>,  <28.465099, 28.235323, 27.412216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022572, 28.282360, 27.831413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934910, 28.640707, 27.676805>,  <28.882313, 28.855715, 27.584042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934910, 28.640707, 27.676805>,  <29.022572, 28.282360, 27.831413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934910, 28.640707, 27.676805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066096, 0.408870, 0.910196,
		0.973449, 0.173927, -0.148819,
		-0.219155, 0.895865, -0.386518,
		28.869164, 28.909466, 27.560850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554960, 28.763966, 28.015684>,  <29.022572, 28.282360, 27.831413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554960, 28.763966, 28.015684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253006, 28.999777, 27.900723>,  <29.071833, 29.141264, 27.831745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.253006, 28.999777, 27.900723>,  <29.554960, 28.763966, 28.015684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.253006, 28.999777, 27.900723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007411, 0.445850, 0.895077,
		0.655812, 0.673552, -0.340936,
		-0.754888, 0.589529, -0.287402,
		29.026539, 29.176636, 27.814503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.779993, 29.349964, 28.149307>,  <29.554960, 28.763966, 28.015684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.779993, 29.349964, 28.149307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391485, 29.444368, 28.161551>,  <29.158381, 29.501011, 28.168896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.391485, 29.444368, 28.161551>,  <29.779993, 29.349964, 28.149307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391485, 29.444368, 28.161551> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161376, 0.558611, 0.813579,
		0.174915, 0.795143, -0.580648,
		-0.971269, 0.236010, 0.030608,
		29.100105, 29.515171, 28.170732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778818, 30.065691, 28.228910>,  <29.779993, 29.349964, 28.149307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778818, 30.065691, 28.228910> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413467, 29.961748, 28.354267>,  <29.194258, 29.899382, 28.429482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.413467, 29.961748, 28.354267>,  <29.778818, 30.065691, 28.228910>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.413467, 29.961748, 28.354267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055854, 0.682528, 0.728722,
		-0.403265, 0.683102, -0.608891,
		-0.913377, -0.259859, 0.313393,
		29.139454, 29.883791, 28.448286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540688, 30.645830, 28.465237>,  <29.778818, 30.065691, 28.228910>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540688, 30.645830, 28.465237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294092, 30.375032, 28.626045>,  <29.146135, 30.212553, 28.722530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.294092, 30.375032, 28.626045>,  <29.540688, 30.645830, 28.465237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.294092, 30.375032, 28.626045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055009, 0.472312, 0.879713,
		-0.785441, 0.564447, -0.253934,
		-0.616488, -0.676994, 0.402023,
		29.109146, 30.171934, 28.746653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.074455, 31.093681, 28.733702>,  <29.540688, 30.645830, 28.465237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.074455, 31.093681, 28.733702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047726, 30.745834, 28.929375>,  <29.031689, 30.537127, 29.046778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.047726, 30.745834, 28.929375>,  <29.074455, 31.093681, 28.733702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.047726, 30.745834, 28.929375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070875, 0.493177, 0.867037,
		-0.995244, 0.023267, -0.094590,
		-0.066823, -0.869618, 0.489183,
		29.027679, 30.484949, 29.076130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.463337, 31.173569, 29.164476>,  <29.074455, 31.093681, 28.733702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.463337, 31.173569, 29.164476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730324, 30.918978, 29.319077>,  <28.890516, 30.766222, 29.411837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.730324, 30.918978, 29.319077>,  <28.463337, 31.173569, 29.164476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730324, 30.918978, 29.319077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014668, 0.507703, 0.861407,
		-0.744494, -0.580631, 0.329540,
		0.667468, -0.636479, 0.386498,
		28.930565, 30.728033, 29.435026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.181568, 31.212027, 29.784170>,  <28.463337, 31.173569, 29.164476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.181568, 31.212027, 29.784170> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536701, 31.029795, 29.810101>,  <28.749781, 30.920456, 29.825659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.536701, 31.029795, 29.810101>,  <28.181568, 31.212027, 29.784170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536701, 31.029795, 29.810101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164522, 0.445825, 0.879871,
		-0.429752, -0.770512, 0.470771,
		0.887832, -0.455578, 0.064828,
		28.803051, 30.893122, 29.829550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.244061, 30.835608, 30.398436>,  <28.181568, 31.212027, 29.784170>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.244061, 30.835608, 30.398436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630484, 30.889357, 30.310188>,  <28.862337, 30.921606, 30.257240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.630484, 30.889357, 30.310188>,  <28.244061, 30.835608, 30.398436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.630484, 30.889357, 30.310188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157522, 0.370454, 0.915396,
		0.204732, -0.919080, 0.336715,
		0.966060, 0.134371, -0.220619,
		28.920301, 30.929668, 30.244003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.710176, 30.661737, 31.014585>,  <28.244061, 30.835608, 30.398436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.710176, 30.661737, 31.014585> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974360, 30.873415, 30.801514>,  <29.132870, 31.000422, 30.673670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.974360, 30.873415, 30.801514>,  <28.710176, 30.661737, 31.014585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974360, 30.873415, 30.801514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438806, 0.303644, 0.845725,
		0.609299, -0.792308, -0.031670,
		0.660458, 0.529196, -0.532679,
		29.172497, 31.032173, 30.641710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329216, 30.649658, 31.469427>,  <28.710176, 30.661737, 31.014585>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329216, 30.649658, 31.469427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400814, 30.932253, 31.195539>,  <29.443773, 31.101810, 31.031208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400814, 30.932253, 31.195539>,  <29.329216, 30.649658, 31.469427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400814, 30.932253, 31.195539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757108, 0.345530, 0.554434,
		0.628290, -0.617645, -0.473039,
		0.178994, 0.706487, -0.684717,
		29.454512, 31.144199, 30.990124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684414, 30.065840, 31.280502>,  <29.329216, 30.649658, 31.469427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684414, 30.065840, 31.280502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897924, 29.815184, 31.507626>,  <30.026030, 29.664789, 31.643900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.897924, 29.815184, 31.507626>,  <29.684414, 30.065840, 31.280502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.897924, 29.815184, 31.507626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408484, -0.778997, -0.475715,
		0.740423, 0.021985, -0.671782,
		0.533775, -0.626642, 0.567806,
		30.058058, 29.627192, 31.677967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.090826, 29.659510, 30.793238>,  <29.684414, 30.065840, 31.280502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.090826, 29.659510, 30.793238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.091721, 29.430328, 31.121071>,  <30.092257, 29.292820, 31.317772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.091721, 29.430328, 31.121071>,  <30.090826, 29.659510, 30.793238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091721, 29.430328, 31.121071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396467, -0.752927, -0.525276,
		0.918046, -0.323764, -0.228840,
		0.002234, -0.572955, 0.819584,
		30.092390, 29.258442, 31.366945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492676, 29.004511, 30.607668>,  <30.090826, 29.659510, 30.793238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492676, 29.004511, 30.607668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245838, 28.926523, 30.912609>,  <30.097734, 28.879730, 31.095573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.245838, 28.926523, 30.912609>,  <30.492676, 29.004511, 30.607668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245838, 28.926523, 30.912609> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306876, -0.832479, -0.461308,
		0.724583, -0.518618, 0.453888,
		-0.617096, -0.194969, 0.762352,
		30.060709, 28.868032, 31.141315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.490763, 28.292944, 30.654707>,  <30.492676, 29.004511, 30.607668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.490763, 28.292944, 30.654707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182657, 28.388832, 30.891090>,  <29.997795, 28.446365, 31.032921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.182657, 28.388832, 30.891090>,  <30.490763, 28.292944, 30.654707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182657, 28.388832, 30.891090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529568, -0.756741, -0.383277,
		0.355323, -0.608176, 0.709837,
		-0.770262, 0.239720, 0.590958,
		29.951578, 28.460749, 31.068378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.282066, 27.643785, 30.963982>,  <30.490763, 28.292944, 30.654707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.282066, 27.643785, 30.963982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971342, 27.895443, 30.953075>,  <29.784908, 28.046438, 30.946531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971342, 27.895443, 30.953075>,  <30.282066, 27.643785, 30.963982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971342, 27.895443, 30.953075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577308, -0.728769, -0.368254,
		-0.251553, -0.270325, 0.929325,
		-0.776811, 0.629143, -0.027263,
		29.738298, 28.084187, 30.944897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.790527, 27.225418, 30.960985>,  <30.282066, 27.643785, 30.963982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.790527, 27.225418, 30.960985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.580130, 27.548367, 30.854044>,  <29.453892, 27.742136, 30.789879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.580130, 27.548367, 30.854044>,  <29.790527, 27.225418, 30.960985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.580130, 27.548367, 30.854044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611781, -0.577553, -0.540516,
		-0.590810, -0.120744, 0.797724,
		-0.525992, 0.807374, -0.267355,
		29.422331, 27.790579, 30.773838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.081657, 27.148170, 31.186584>,  <29.790527, 27.225418, 30.960985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.081657, 27.148170, 31.186584> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057930, 27.411961, 30.886831>,  <29.043694, 27.570234, 30.706980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.057930, 27.411961, 30.886831>,  <29.081657, 27.148170, 31.186584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.057930, 27.411961, 30.886831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628684, -0.607800, -0.485114,
		-0.775396, 0.442350, 0.450653,
		-0.059317, 0.659474, -0.749384,
		29.040134, 27.609802, 30.662016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422874, 27.061800, 30.965260>,  <29.081657, 27.148170, 31.186584>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422874, 27.061800, 30.965260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.594881, 27.246729, 30.655073>,  <28.698084, 27.357685, 30.468962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.594881, 27.246729, 30.655073>,  <28.422874, 27.061800, 30.965260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594881, 27.246729, 30.655073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528934, -0.567077, -0.631389,
		-0.731653, 0.681677, 0.000686,
		0.430015, 0.462321, -0.775465,
		28.723885, 27.385426, 30.422434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.839710, 27.234730, 30.413935>,  <28.422874, 27.061800, 30.965260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.839710, 27.234730, 30.413935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188763, 27.267559, 30.221361>,  <28.398195, 27.287256, 30.105818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.188763, 27.267559, 30.221361>,  <27.839710, 27.234730, 30.413935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188763, 27.267559, 30.221361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408285, -0.418323, -0.811363,
		-0.267986, 0.904583, -0.331532,
		0.872632, 0.082074, -0.481432,
		28.450552, 27.292181, 30.076931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.693258, 27.361559, 29.753651>,  <27.839710, 27.234730, 30.413935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.693258, 27.361559, 29.753651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072172, 27.237686, 29.720787>,  <28.299520, 27.163363, 29.701069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.072172, 27.237686, 29.720787>,  <27.693258, 27.361559, 29.753651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072172, 27.237686, 29.720787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267227, -0.622200, -0.735837,
		0.176754, 0.719003, -0.672156,
		0.947284, -0.309680, -0.082161,
		28.356358, 27.144783, 29.696138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.862747, 27.350161, 29.133581>,  <27.693258, 27.361559, 29.753651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.862747, 27.350161, 29.133581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155998, 27.098499, 29.236879>,  <28.331949, 26.947502, 29.298859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.155998, 27.098499, 29.236879>,  <27.862747, 27.350161, 29.133581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.155998, 27.098499, 29.236879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257404, -0.608170, -0.750914,
		0.629498, 0.484041, -0.607813,
		0.733127, -0.629153, 0.258248,
		28.375937, 26.909754, 29.314354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.357405, 27.215437, 28.474615>,  <27.862747, 27.350161, 29.133581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.357405, 27.215437, 28.474615> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.385895, 26.917477, 28.739962>,  <28.402988, 26.738701, 28.899170>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.385895, 26.917477, 28.739962>,  <28.357405, 27.215437, 28.474615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385895, 26.917477, 28.739962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279660, -0.653293, -0.703562,
		0.957454, -0.135405, -0.254850,
		0.071226, -0.744899, 0.663365,
		28.407263, 26.694008, 28.938971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317814, 26.674856, 28.050146>,  <28.357405, 27.215437, 28.474615>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317814, 26.674856, 28.050146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260458, 26.499277, 28.404945>,  <28.226046, 26.393929, 28.617825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.260458, 26.499277, 28.404945>,  <28.317814, 26.674856, 28.050146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260458, 26.499277, 28.404945> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267428, -0.845731, -0.461759,
		0.952849, -0.303419, 0.003881,
		-0.143389, -0.438949, 0.886997,
		28.217442, 26.367592, 28.671045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852175, 26.138042, 28.121820>,  <28.317814, 26.674856, 28.050146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852175, 26.138042, 28.121820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.524780, 26.045383, 28.332123>,  <28.328344, 25.989788, 28.458305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.524780, 26.045383, 28.332123>,  <28.852175, 26.138042, 28.121820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524780, 26.045383, 28.332123> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037948, -0.891318, -0.451788,
		0.573273, -0.389733, 0.720740,
		-0.818485, -0.231647, 0.525758,
		28.279234, 25.975889, 28.489851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584219, 26.038380, 28.505577>,  <28.852175, 26.138042, 28.121820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584219, 26.038380, 28.505577> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848745, 25.935438, 28.223747>,  <30.007462, 25.873672, 28.054649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.848745, 25.935438, 28.223747>,  <29.584219, 26.038380, 28.505577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.848745, 25.935438, 28.223747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735956, 0.404200, 0.543132,
		0.145013, -0.877720, 0.456706,
		0.661317, -0.257354, -0.704577,
		30.047140, 25.858232, 28.012375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149580, 25.668579, 28.861526>,  <29.584219, 26.038380, 28.505577>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149580, 25.668579, 28.861526> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299845, 25.821907, 28.524019>,  <30.390003, 25.913904, 28.321514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299845, 25.821907, 28.524019>,  <30.149580, 25.668579, 28.861526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299845, 25.821907, 28.524019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805680, 0.314858, 0.501741,
		0.457994, -0.868292, -0.190552,
		0.375661, 0.383318, -0.843769,
		30.412542, 25.936903, 28.270889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876654, 25.442890, 28.845798>,  <30.149580, 25.668579, 28.861526>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876654, 25.442890, 28.845798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.859501, 25.762278, 28.605595>,  <30.849209, 25.953911, 28.461473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.859501, 25.762278, 28.605595>,  <30.876654, 25.442890, 28.845798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859501, 25.762278, 28.605595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761432, 0.415258, 0.497777,
		0.646825, -0.435900, -0.625787,
		-0.042882, 0.798469, -0.600507,
		30.846636, 26.001818, 28.425442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510759, 25.474312, 28.628418>,  <30.876654, 25.442890, 28.845798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510759, 25.474312, 28.628418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.348759, 25.836857, 28.580282>,  <31.251558, 26.054384, 28.551401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.348759, 25.836857, 28.580282>,  <31.510759, 25.474312, 28.628418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.348759, 25.836857, 28.580282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793042, 0.413728, 0.447117,
		0.455038, 0.085649, -0.886344,
		-0.405000, 0.906363, -0.120339,
		31.227259, 26.108767, 28.544180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974403, 25.841429, 28.416544>,  <31.510759, 25.474312, 28.628418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974403, 25.841429, 28.416544> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.738699, 26.140192, 28.539766>,  <31.597277, 26.319450, 28.613701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.738699, 26.140192, 28.539766>,  <31.974403, 25.841429, 28.416544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738699, 26.140192, 28.539766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791618, 0.457477, 0.405039,
		0.161598, 0.482537, -0.860839,
		-0.589260, 0.746909, 0.308057,
		31.561920, 26.364265, 28.632183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281799, 26.441122, 28.196329>,  <31.974403, 25.841429, 28.416544>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281799, 26.441122, 28.196329> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.034866, 26.568275, 28.484177>,  <31.886705, 26.644567, 28.656885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.034866, 26.568275, 28.484177>,  <32.281799, 26.441122, 28.196329>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034866, 26.568275, 28.484177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747185, 0.523181, 0.409874,
		-0.246198, 0.790716, -0.560494,
		-0.617334, 0.317883, 0.719618,
		31.849667, 26.663641, 28.700062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567970, 27.098000, 28.406952>,  <32.281799, 26.441122, 28.196329>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567970, 27.098000, 28.406952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.319530, 27.007849, 28.707203>,  <32.170467, 26.953758, 28.887354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.319530, 27.007849, 28.707203>,  <32.567970, 27.098000, 28.406952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319530, 27.007849, 28.707203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586982, 0.500858, 0.636076,
		-0.519313, 0.835672, -0.178792,
		-0.621101, -0.225375, 0.750627,
		32.133202, 26.940237, 28.932390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179485, 27.603172, 28.017202>,  <32.567970, 27.098000, 28.406952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179485, 27.603172, 28.017202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.299976, 27.886854, 27.762238>,  <32.372269, 28.057062, 27.609259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.299976, 27.886854, 27.762238>,  <32.179485, 27.603172, 28.017202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299976, 27.886854, 27.762238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659220, -0.328107, -0.676590,
		-0.688979, 0.624002, 0.368687,
		0.301225, 0.709202, -0.637413,
		32.390343, 28.099615, 27.571014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.561666, 28.080679, 27.762699>,  <32.179485, 27.603172, 28.017202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.561666, 28.080679, 27.762699> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871050, 28.091711, 27.509401>,  <32.056679, 28.098331, 27.357422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.871050, 28.091711, 27.509401>,  <31.561666, 28.080679, 27.762699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871050, 28.091711, 27.509401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617229, -0.194487, -0.762367,
		-0.144185, 0.980517, -0.133403,
		0.773459, 0.027582, -0.633246,
		32.103088, 28.099985, 27.319427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148037, 28.114683, 27.254581>,  <31.561666, 28.080679, 27.762699>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148037, 28.114683, 27.254581> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.512959, 28.072922, 27.096189>,  <31.731911, 28.047865, 27.001154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.512959, 28.072922, 27.096189>,  <31.148037, 28.114683, 27.254581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512959, 28.072922, 27.096189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405316, -0.368281, -0.836713,
		-0.058477, 0.923834, -0.378300,
		0.912305, -0.104403, -0.395980,
		31.786650, 28.041601, 26.977396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.037495, 28.370844, 26.524496>,  <31.148037, 28.114683, 27.254581>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.037495, 28.370844, 26.524496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.363203, 28.140823, 26.556202>,  <31.558628, 28.002811, 26.575226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.363203, 28.140823, 26.556202>,  <31.037495, 28.370844, 26.524496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363203, 28.140823, 26.556202> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161499, -0.355574, -0.920590,
		0.557569, 0.736807, -0.382403,
		0.814269, -0.575050, 0.079263,
		31.607483, 27.968307, 26.579981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501383, 28.559361, 25.987617>,  <31.037495, 28.370844, 26.524496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501383, 28.559361, 25.987617> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.547037, 28.184402, 26.119234>,  <31.574429, 27.959429, 26.198204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.547037, 28.184402, 26.119234>,  <31.501383, 28.559361, 25.987617>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.547037, 28.184402, 26.119234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146776, -0.343481, -0.927619,
		0.982563, 0.057577, -0.176790,
		0.114134, -0.937393, 0.329041,
		31.581278, 27.903185, 26.217947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.059296, 28.258081, 25.502674>,  <31.501383, 28.559361, 25.987617>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.059296, 28.258081, 25.502674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.812653, 27.991129, 25.669718>,  <31.664665, 27.830957, 25.769943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.812653, 27.991129, 25.669718>,  <32.059296, 28.258081, 25.502674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812653, 27.991129, 25.669718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102848, -0.457620, -0.883179,
		0.780521, -0.587528, 0.213535,
		-0.616611, -0.667379, 0.417609,
		31.627670, 27.790915, 25.795000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.339893, 27.634506, 25.213537>,  <32.059296, 28.258081, 25.502674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.339893, 27.634506, 25.213537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.991741, 27.523933, 25.376524>,  <31.782850, 27.457590, 25.474316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.991741, 27.523933, 25.376524>,  <32.339893, 27.634506, 25.213537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.991741, 27.523933, 25.376524> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238042, -0.488174, -0.839656,
		0.431023, -0.827811, 0.359092,
		-0.870377, -0.276432, 0.407468,
		31.730629, 27.441004, 25.498764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200222, 26.973217, 25.075315>,  <32.339893, 27.634506, 25.213537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200222, 26.973217, 25.075315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.840528, 27.136156, 25.139133>,  <31.624714, 27.233919, 25.177425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.840528, 27.136156, 25.139133>,  <32.200222, 26.973217, 25.075315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.840528, 27.136156, 25.139133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381754, -0.552531, -0.740927,
		-0.213660, -0.727170, 0.652359,
		-0.899229, 0.407348, 0.159546,
		31.570759, 27.258360, 25.186996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678667, 26.479736, 24.857494>,  <32.200222, 26.973217, 25.075315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678667, 26.479736, 24.857494> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.480099, 26.826939, 24.862139>,  <31.360958, 27.035259, 24.864925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.480099, 26.826939, 24.862139>,  <31.678667, 26.479736, 24.857494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480099, 26.826939, 24.862139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518744, -0.285895, -0.805710,
		-0.696041, -0.405993, 0.592196,
		-0.496419, 0.868006, 0.011611,
		31.331173, 27.087339, 24.865622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<39.051682, 35.239227, 36.514004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.703812, 35.431969, 36.471157>,  <38.495090, 35.547615, 36.445450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.703812, 35.431969, 36.471157>,  <39.051682, 35.239227, 36.514004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703812, 35.431969, 36.471157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274916, -0.653052, -0.705652,
		-0.409978, -0.584240, 0.700415,
		-0.869677, 0.481857, -0.107120,
		38.442909, 35.576527, 36.439022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.551376, 34.715328, 36.517696>,  <39.051682, 35.239227, 36.514004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.551376, 34.715328, 36.517696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.391640, 35.025803, 36.322529>,  <38.295799, 35.212086, 36.205429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.391640, 35.025803, 36.322529>,  <38.551376, 34.715328, 36.517696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391640, 35.025803, 36.322529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406652, -0.626945, -0.664511,
		-0.821681, -0.066953, 0.566002,
		-0.399343, 0.776181, -0.487922,
		38.271835, 35.258656, 36.176151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.709110, 34.645115, 36.489956>,  <38.551376, 34.715328, 36.517696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.709110, 34.645115, 36.489956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839314, 34.877831, 36.191811>,  <37.917435, 35.017460, 36.012924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.839314, 34.877831, 36.191811>,  <37.709110, 34.645115, 36.489956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839314, 34.877831, 36.191811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520185, -0.548090, -0.654985,
		-0.789589, 0.600929, 0.124231,
		0.325510, 0.581792, -0.745360,
		37.936966, 35.052368, 35.968201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213703, 34.639675, 36.008026>,  <37.709110, 34.645115, 36.489956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213703, 34.639675, 36.008026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514462, 34.775528, 35.781998>,  <37.694916, 34.857040, 35.646381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514462, 34.775528, 35.781998>,  <37.213703, 34.639675, 36.008026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514462, 34.775528, 35.781998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420952, -0.412323, -0.807954,
		-0.507401, 0.845362, -0.167053,
		0.751894, 0.339635, -0.565070,
		37.740028, 34.877419, 35.612476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914841, 35.042908, 35.342468>,  <37.213703, 34.639675, 36.008026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914841, 35.042908, 35.342468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282536, 34.926811, 35.236065>,  <37.503151, 34.857155, 35.172222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.282536, 34.926811, 35.236065>,  <36.914841, 35.042908, 35.342468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282536, 34.926811, 35.236065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357179, -0.330592, -0.873574,
		0.165606, 0.898036, -0.407560,
		0.919237, -0.290242, -0.266012,
		37.558308, 34.839737, 35.156261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892864, 35.236607, 34.690838>,  <36.914841, 35.042908, 35.342468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892864, 35.236607, 34.690838> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.203300, 34.986027, 34.719803>,  <37.389561, 34.835678, 34.737183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.203300, 34.986027, 34.719803>,  <36.892864, 35.236607, 34.690838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203300, 34.986027, 34.719803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436475, -0.616485, -0.655313,
		0.455164, 0.476975, -0.751878,
		0.776090, -0.626451, 0.072414,
		37.436127, 34.798092, 34.741528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.023582, 35.113998, 33.993977>,  <36.892864, 35.236607, 34.690838>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.023582, 35.113998, 33.993977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184216, 34.823338, 34.216942>,  <37.280594, 34.648941, 34.350719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.184216, 34.823338, 34.216942>,  <37.023582, 35.113998, 33.993977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.184216, 34.823338, 34.216942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098370, -0.639349, -0.762599,
		0.910524, 0.251415, -0.328233,
		0.401584, -0.726653, 0.557410,
		37.304691, 34.605343, 34.384167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461670, 34.706444, 33.490437>,  <37.023582, 35.113998, 33.993977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461670, 34.706444, 33.490437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384457, 34.463924, 33.799019>,  <37.338127, 34.318413, 33.984169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.384457, 34.463924, 33.799019>,  <37.461670, 34.706444, 33.490437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384457, 34.463924, 33.799019> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148516, -0.759129, -0.633772,
		0.969887, -0.236913, 0.056494,
		-0.193035, -0.606297, 0.771455,
		37.326546, 34.282036, 34.030457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928917, 34.166134, 33.407421>,  <37.461670, 34.706444, 33.490437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928917, 34.166134, 33.407421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636333, 34.033478, 33.645744>,  <37.460785, 33.953884, 33.788738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.636333, 34.033478, 33.645744>,  <37.928917, 34.166134, 33.407421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636333, 34.033478, 33.645744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088753, -0.820024, -0.565405,
		0.676087, -0.466450, 0.570379,
		-0.731457, -0.331640, 0.595806,
		37.416897, 33.933987, 33.824486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181881, 33.580643, 33.516037>,  <37.928917, 34.166134, 33.407421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181881, 33.580643, 33.516037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795757, 33.541111, 33.612705>,  <37.564083, 33.517391, 33.670708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.795757, 33.541111, 33.612705>,  <38.181881, 33.580643, 33.516037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795757, 33.541111, 33.612705> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138734, -0.589962, -0.795423,
		0.221190, -0.801359, 0.555786,
		-0.965312, -0.098833, 0.241669,
		37.506165, 33.511459, 33.685207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.947014, 32.819283, 33.501076>,  <38.181881, 33.580643, 33.516037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.947014, 32.819283, 33.501076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.607601, 33.022038, 33.440338>,  <37.403954, 33.143692, 33.403896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.607601, 33.022038, 33.440338>,  <37.947014, 32.819283, 33.501076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607601, 33.022038, 33.440338> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259607, -0.648844, -0.715266,
		-0.461081, -0.567508, 0.682158,
		-0.848533, 0.506889, -0.151841,
		37.353043, 33.174103, 33.394787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372055, 32.344795, 33.692345>,  <37.947014, 32.819283, 33.501076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372055, 32.344795, 33.692345> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257679, 32.608234, 33.413921>,  <37.189053, 32.766296, 33.246868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.257679, 32.608234, 33.413921>,  <37.372055, 32.344795, 33.692345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257679, 32.608234, 33.413921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165244, -0.749391, -0.641177,
		-0.943892, -0.068320, 0.323110,
		-0.285941, 0.658593, -0.696055,
		37.171898, 32.805813, 33.205105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097191, 31.914867, 34.156174>,  <37.372055, 32.344795, 33.692345>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097191, 31.914867, 34.156174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065731, 31.541365, 34.295837>,  <37.046856, 31.317263, 34.379635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.065731, 31.541365, 34.295837>,  <37.097191, 31.914867, 34.156174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065731, 31.541365, 34.295837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497110, 0.266853, 0.825633,
		-0.864115, 0.238507, 0.443192,
		-0.078652, -0.933758, 0.349156,
		37.042137, 31.261238, 34.400585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968624, 32.029781, 34.838406>,  <37.097191, 31.914867, 34.156174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968624, 32.029781, 34.838406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119923, 31.660072, 34.817795>,  <37.210701, 31.438248, 34.805428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119923, 31.660072, 34.817795>,  <36.968624, 32.029781, 34.838406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119923, 31.660072, 34.817795> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641496, 0.221585, 0.734426,
		-0.667390, -0.310849, 0.676729,
		0.378249, -0.924269, -0.051525,
		37.233398, 31.382792, 34.802338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895451, 31.788858, 35.480434>,  <36.968624, 32.029781, 34.838406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895451, 31.788858, 35.480434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197975, 31.572550, 35.333160>,  <37.379490, 31.442764, 35.244797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.197975, 31.572550, 35.333160>,  <36.895451, 31.788858, 35.480434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.197975, 31.572550, 35.333160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479426, 0.075219, 0.874353,
		-0.445130, -0.837800, 0.316149,
		0.756313, -0.540771, -0.368181,
		37.424870, 31.410318, 35.222706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.087440, 31.348093, 36.025101>,  <36.895451, 31.788858, 35.480434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.087440, 31.348093, 36.025101> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402515, 31.374132, 35.780048>,  <37.591560, 31.389755, 35.633018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402515, 31.374132, 35.780048>,  <37.087440, 31.348093, 36.025101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402515, 31.374132, 35.780048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615156, -0.028734, 0.787882,
		0.033687, -0.997465, -0.062680,
		0.787685, 0.065100, -0.612628,
		37.638821, 31.393661, 35.596260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640316, 31.084114, 36.417587>,  <37.087440, 31.348093, 36.025101>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640316, 31.084114, 36.417587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.845146, 31.260324, 36.122639>,  <37.968044, 31.366051, 35.945671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.845146, 31.260324, 36.122639>,  <37.640316, 31.084114, 36.417587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845146, 31.260324, 36.122639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774623, 0.134073, 0.618048,
		0.371129, -0.887671, -0.272587,
		0.512077, 0.440528, -0.737369,
		37.998768, 31.392483, 35.901428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325222, 30.876375, 36.272865>,  <37.640316, 31.084114, 36.417587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325222, 30.876375, 36.272865> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.358479, 31.240969, 36.111729>,  <38.378433, 31.459724, 36.015045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.358479, 31.240969, 36.111729>,  <38.325222, 30.876375, 36.272865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358479, 31.240969, 36.111729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620682, 0.268896, 0.736511,
		0.779642, -0.311272, -0.543387,
		0.083140, 0.911485, -0.402844,
		38.383419, 31.514414, 35.990875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057514, 31.036425, 36.172813>,  <38.325222, 30.876375, 36.272865>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057514, 31.036425, 36.172813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863880, 31.386415, 36.176430>,  <38.747700, 31.596409, 36.178600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.863880, 31.386415, 36.176430>,  <39.057514, 31.036425, 36.172813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863880, 31.386415, 36.176430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639039, 0.346454, 0.686730,
		0.597739, 0.338214, -0.726856,
		-0.484084, 0.874975, 0.009043,
		38.718655, 31.648909, 36.179142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585564, 31.536207, 36.037144>,  <39.057514, 31.036425, 36.172813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585564, 31.536207, 36.037144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287220, 31.742500, 36.205765>,  <39.108212, 31.866276, 36.306938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.287220, 31.742500, 36.205765>,  <39.585564, 31.536207, 36.037144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287220, 31.742500, 36.205765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644679, 0.399705, 0.651633,
		0.167570, 0.757797, -0.630606,
		-0.745862, 0.515733, 0.421557,
		39.063461, 31.897221, 36.332233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957527, 32.113682, 36.296761>,  <39.585564, 31.536207, 36.037144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957527, 32.113682, 36.296761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.609016, 32.103699, 36.492821>,  <39.399910, 32.097710, 36.610458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.609016, 32.103699, 36.492821>,  <39.957527, 32.113682, 36.296761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609016, 32.103699, 36.492821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462861, 0.290312, 0.837543,
		-0.163198, 0.956607, -0.241391,
		-0.871278, -0.024955, 0.490155,
		39.347633, 32.096210, 36.639866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.812229, 32.829521, 36.522297>,  <39.957527, 32.113682, 36.296761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.812229, 32.829521, 36.522297> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.625061, 32.567139, 36.759201>,  <39.512760, 32.409710, 36.901344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.625061, 32.567139, 36.759201>,  <39.812229, 32.829521, 36.522297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625061, 32.567139, 36.759201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360973, 0.469844, 0.805571,
		-0.806687, 0.590736, 0.016931,
		-0.467925, -0.655956, 0.592257,
		39.484684, 32.370354, 36.936878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.623516, 33.211811, 36.985458>,  <39.812229, 32.829521, 36.522297>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.623516, 33.211811, 36.985458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.585266, 32.858055, 37.168201>,  <39.562317, 32.645802, 37.277847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.585266, 32.858055, 37.168201>,  <39.623516, 33.211811, 36.985458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.585266, 32.858055, 37.168201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174448, 0.436965, 0.882400,
		-0.980013, 0.164073, 0.112497,
		-0.095621, -0.884388, 0.456853,
		39.556580, 32.592739, 37.305256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182510, 33.335835, 37.531616>,  <39.623516, 33.211811, 36.985458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182510, 33.335835, 37.531616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380543, 33.007599, 37.645832>,  <39.499363, 32.810658, 37.714363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.380543, 33.007599, 37.645832>,  <39.182510, 33.335835, 37.531616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380543, 33.007599, 37.645832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156609, 0.407544, 0.899656,
		-0.854617, -0.400683, 0.330278,
		0.495080, -0.820586, 0.285544,
		39.529068, 32.761425, 37.731495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157745, 33.391373, 38.193283>,  <39.182510, 33.335835, 37.531616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157745, 33.391373, 38.193283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.428730, 33.097412, 38.180847>,  <39.591320, 32.921036, 38.173386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.428730, 33.097412, 38.180847>,  <39.157745, 33.391373, 38.193283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428730, 33.097412, 38.180847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383783, 0.317097, 0.867272,
		-0.627496, -0.599480, 0.496863,
		0.677465, -0.734897, -0.031094,
		39.631969, 32.876942, 38.171520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.099510, 33.052166, 38.847237>,  <39.157745, 33.391373, 38.193283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.099510, 33.052166, 38.847237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453533, 32.978176, 38.676376>,  <39.665947, 32.933784, 38.573860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.453533, 32.978176, 38.676376>,  <39.099510, 33.052166, 38.847237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.453533, 32.978176, 38.676376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464947, 0.395135, 0.792270,
		0.022233, -0.899808, 0.435720,
		0.885059, -0.184972, -0.427148,
		39.719051, 32.922684, 38.548233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588474, 33.628544, 38.946598>,  <39.099510, 33.052166, 38.847237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588474, 33.628544, 38.946598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.211979, 33.674915, 39.073483>,  <37.986080, 33.702740, 39.149612>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.211979, 33.674915, 39.073483>,  <38.588474, 33.628544, 38.946598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211979, 33.674915, 39.073483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330292, -0.119871, -0.936236,
		-0.070504, -0.985999, 0.151115,
		-0.941242, 0.115921, 0.317216,
		37.929607, 33.709694, 39.168648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.088936, 33.006027, 38.802795>,  <38.588474, 33.628544, 38.946598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.088936, 33.006027, 38.802795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888721, 33.351719, 38.823051>,  <37.768593, 33.559135, 38.835205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888721, 33.351719, 38.823051>,  <38.088936, 33.006027, 38.802795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888721, 33.351719, 38.823051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528001, -0.258396, -0.808978,
		-0.686060, -0.431662, 0.585653,
		-0.500536, 0.864234, 0.050643,
		37.738560, 33.610989, 38.838245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366993, 32.829063, 38.824463>,  <38.088936, 33.006027, 38.802795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366993, 32.829063, 38.824463> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278271, 33.199242, 38.701591>,  <37.225037, 33.421349, 38.627869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.278271, 33.199242, 38.701591>,  <37.366993, 32.829063, 38.824463>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278271, 33.199242, 38.701591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796356, -0.353709, -0.490619,
		-0.562692, 0.135801, 0.815436,
		-0.221801, 0.925445, -0.307175,
		37.211731, 33.476875, 38.609440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634815, 32.902218, 38.958946>,  <37.366993, 32.829063, 38.824463>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634815, 32.902218, 38.958946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739777, 33.180538, 38.691513>,  <36.802753, 33.347530, 38.531052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.739777, 33.180538, 38.691513>,  <36.634815, 32.902218, 38.958946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739777, 33.180538, 38.691513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832762, -0.186741, -0.521186,
		-0.487493, 0.693534, 0.530435,
		0.262406, 0.695801, -0.668584,
		36.818497, 33.389278, 38.490936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971764, 33.348064, 38.837521>,  <36.634815, 32.902218, 38.958946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971764, 33.348064, 38.837521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209171, 33.393196, 38.518772>,  <36.351616, 33.420277, 38.327522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.209171, 33.393196, 38.518772>,  <35.971764, 33.348064, 38.837521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209171, 33.393196, 38.518772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776772, -0.178820, -0.603861,
		-0.210630, 0.977391, -0.018490,
		0.593515, 0.112829, -0.796875,
		36.387226, 33.427044, 38.279709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526070, 33.678684, 38.391777>,  <35.971764, 33.348064, 38.837521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526070, 33.678684, 38.391777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793324, 33.563099, 38.117523>,  <35.953678, 33.493748, 37.952972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.793324, 33.563099, 38.117523>,  <35.526070, 33.678684, 38.391777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793324, 33.563099, 38.117523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727988, -0.063528, -0.682640,
		0.153702, 0.955229, -0.252809,
		0.668138, -0.288966, -0.685631,
		35.993767, 33.476410, 37.911835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376774, 34.011944, 37.709652>,  <35.526070, 33.678684, 38.391777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376774, 34.011944, 37.709652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.601631, 33.692120, 37.625088>,  <35.736546, 33.500225, 37.574348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.601631, 33.692120, 37.625088>,  <35.376774, 34.011944, 37.709652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601631, 33.692120, 37.625088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534821, -0.156457, -0.830354,
		0.630844, 0.579844, -0.515574,
		0.562141, -0.799564, -0.211412,
		35.770275, 33.452251, 37.561665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615219, 34.109459, 37.072536>,  <35.376774, 34.011944, 37.709652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615219, 34.109459, 37.072536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634521, 33.716312, 37.143692>,  <35.646103, 33.480423, 37.186386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.634521, 33.716312, 37.143692>,  <35.615219, 34.109459, 37.072536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634521, 33.716312, 37.143692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496273, -0.178148, -0.849692,
		0.866824, -0.047278, -0.496367,
		0.048255, -0.982867, 0.177886,
		35.648998, 33.421452, 37.197056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814796, 33.751728, 36.533772>,  <35.615219, 34.109459, 37.072536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814796, 33.751728, 36.533772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658699, 33.442173, 36.733295>,  <35.565041, 33.256439, 36.853012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.658699, 33.442173, 36.733295>,  <35.814796, 33.751728, 36.533772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658699, 33.442173, 36.733295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564929, -0.226541, -0.793432,
		0.727027, -0.591423, -0.348784,
		-0.390240, -0.773885, 0.498813,
		35.541626, 33.210007, 36.882938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748123, 33.214638, 35.984207>,  <35.814796, 33.751728, 36.533772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748123, 33.214638, 35.984207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526978, 33.086132, 36.291748>,  <35.394291, 33.009029, 36.476273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.526978, 33.086132, 36.291748>,  <35.748123, 33.214638, 35.984207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526978, 33.086132, 36.291748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616269, -0.463386, -0.636777,
		0.560850, -0.825869, 0.058203,
		-0.552866, -0.321268, 0.768848,
		35.361118, 32.989754, 36.522404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450966, 32.724419, 35.689537>,  <35.748123, 33.214638, 35.984207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450966, 32.724419, 35.689537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219971, 32.694084, 36.014683>,  <35.081375, 32.675884, 36.209770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.219971, 32.694084, 36.014683>,  <35.450966, 32.724419, 35.689537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.219971, 32.694084, 36.014683> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690568, -0.485705, -0.535916,
		0.435456, -0.870827, 0.228119,
		-0.577489, -0.075836, 0.812869,
		35.046722, 32.671333, 36.258545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194191, 31.926580, 35.861198>,  <35.450966, 32.724419, 35.689537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194191, 31.926580, 35.861198> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.929993, 32.210548, 35.958977>,  <34.771473, 32.380928, 36.017643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.929993, 32.210548, 35.958977>,  <35.194191, 31.926580, 35.861198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929993, 32.210548, 35.958977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632308, -0.350371, -0.690961,
		-0.404883, -0.610942, 0.680309,
		-0.660498, 0.709923, 0.244444,
		34.731842, 32.423523, 36.032310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547245, 31.578218, 35.913521>,  <35.194191, 31.926580, 35.861198>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547245, 31.578218, 35.913521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426231, 31.958990, 35.894337>,  <34.353622, 32.187454, 35.882828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.426231, 31.958990, 35.894337>,  <34.547245, 31.578218, 35.913521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426231, 31.958990, 35.894337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.779078, -0.275961, -0.562924,
		-0.549099, -0.132944, 0.825116,
		-0.302537, 0.951930, -0.047956,
		34.335468, 32.244568, 35.879951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918953, 31.563665, 36.069973>,  <34.547245, 31.578218, 35.913521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918953, 31.563665, 36.069973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.917233, 31.920826, 35.889877>,  <33.916199, 32.135120, 35.781822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.917233, 31.920826, 35.889877>,  <33.918953, 31.563665, 36.069973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917233, 31.920826, 35.889877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722705, -0.313959, -0.615734,
		-0.691144, 0.322738, 0.646653,
		-0.004302, 0.892900, -0.450235,
		33.915943, 32.188694, 35.754807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243023, 31.798903, 36.203835>,  <33.918953, 31.563665, 36.069973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.243023, 31.798903, 36.203835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.384201, 31.999514, 35.887886>,  <33.468906, 32.119881, 35.698318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.384201, 31.999514, 35.887886>,  <33.243023, 31.798903, 36.203835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.384201, 31.999514, 35.887886> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871651, -0.130594, -0.472409,
		-0.340079, 0.855228, 0.391065,
		0.352946, 0.501528, -0.789872,
		33.490086, 32.149971, 35.650925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.747829, 32.374016, 35.902870>,  <33.243023, 31.798903, 36.203835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.747829, 32.374016, 35.902870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989010, 32.264046, 35.603306>,  <33.133717, 32.198063, 35.423565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.989010, 32.264046, 35.603306>,  <32.747829, 32.374016, 35.902870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989010, 32.264046, 35.603306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797774, -0.204178, -0.567334,
		0.003061, 0.939536, -0.342435,
		0.602949, -0.274922, -0.748913,
		33.169895, 32.181568, 35.378632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424648, 32.562977, 35.228378>,  <32.747829, 32.374016, 35.902870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424648, 32.562977, 35.228378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694378, 32.291424, 35.112160>,  <32.856216, 32.128494, 35.042431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.694378, 32.291424, 35.112160>,  <32.424648, 32.562977, 35.228378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694378, 32.291424, 35.112160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619044, -0.305190, -0.723632,
		0.402589, 0.667818, -0.626052,
		0.674320, -0.678880, -0.290543,
		32.896675, 32.087761, 35.024998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.524963, 32.733257, 34.518700>,  <32.424648, 32.562977, 35.228378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.524963, 32.733257, 34.518700> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609459, 32.345985, 34.572372>,  <32.660156, 32.113621, 34.604576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.609459, 32.345985, 34.572372>,  <32.524963, 32.733257, 34.518700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609459, 32.345985, 34.572372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546186, -0.230768, -0.805250,
		0.810591, 0.096815, -0.577554,
		0.211241, -0.968180, 0.134180,
		32.672832, 32.055531, 34.612625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.638645, 32.578125, 33.800259>,  <32.524963, 32.733257, 34.518700>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.638645, 32.578125, 33.800259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647564, 32.228065, 33.993599>,  <32.652916, 32.018032, 34.109604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.647564, 32.228065, 33.993599>,  <32.638645, 32.578125, 33.800259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647564, 32.228065, 33.993599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467386, -0.436503, -0.768775,
		0.883772, -0.208771, -0.418761,
		0.022292, -0.875145, 0.483346,
		32.654251, 31.965523, 34.138603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658974, 32.064968, 33.257019>,  <32.638645, 32.578125, 33.800259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658974, 32.064968, 33.257019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519894, 31.842720, 33.559116>,  <32.436447, 31.709370, 33.740376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.519894, 31.842720, 33.559116>,  <32.658974, 32.064968, 33.257019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.519894, 31.842720, 33.559116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577285, -0.507854, -0.639395,
		0.738816, -0.658305, -0.144174,
		-0.347697, -0.555624, 0.755240,
		32.415585, 31.676033, 33.785690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.715897, 31.496765, 32.968430>,  <32.658974, 32.064968, 33.257019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.715897, 31.496765, 32.968430> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454792, 31.456505, 33.268768>,  <32.298130, 31.432348, 33.448971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.454792, 31.456505, 33.268768>,  <32.715897, 31.496765, 32.968430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454792, 31.456505, 33.268768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564759, -0.595951, -0.570867,
		0.504928, -0.796688, 0.332168,
		-0.652759, -0.100652, 0.750849,
		32.258965, 31.426310, 33.494022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600422, 30.787498, 32.980671>,  <32.715897, 31.496765, 32.968430>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600422, 30.787498, 32.980671> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270767, 30.917269, 33.166374>,  <32.072975, 30.995131, 33.277798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.270767, 30.917269, 33.166374>,  <32.600422, 30.787498, 32.980671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270767, 30.917269, 33.166374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543185, -0.684936, -0.485606,
		0.160447, -0.652388, 0.740707,
		-0.824141, 0.324427, 0.464263,
		32.023525, 31.014597, 33.305653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228352, 30.171789, 33.059242>,  <32.600422, 30.787498, 32.980671>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228352, 30.171789, 33.059242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.961000, 30.465467, 33.106953>,  <31.800591, 30.641674, 33.135578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.961000, 30.465467, 33.106953>,  <32.228352, 30.171789, 33.059242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961000, 30.465467, 33.106953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694729, -0.558890, -0.452762,
		-0.265753, -0.385481, 0.883617,
		-0.668376, 0.734198, 0.119278,
		31.760489, 30.685726, 33.142735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.661350, 29.916647, 33.441696>,  <32.228352, 30.171789, 33.059242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.661350, 29.916647, 33.441696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516727, 30.251614, 33.277740>,  <31.429953, 30.452593, 33.179367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.516727, 30.251614, 33.277740>,  <31.661350, 29.916647, 33.441696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.516727, 30.251614, 33.277740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648484, -0.541741, -0.534776,
		-0.669883, 0.072452, 0.738923,
		-0.361559, 0.837417, -0.409887,
		31.408260, 30.502838, 33.154774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907167, 29.875483, 33.523235>,  <31.661350, 29.916647, 33.441696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907167, 29.875483, 33.523235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986185, 30.137291, 33.231323>,  <31.033596, 30.294376, 33.056175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.986185, 30.137291, 33.231323>,  <30.907167, 29.875483, 33.523235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.986185, 30.137291, 33.231323> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694559, -0.431899, -0.575370,
		-0.691783, 0.620535, 0.369285,
		0.197544, 0.654522, -0.729779,
		31.045448, 30.333647, 33.012390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268681, 30.201433, 33.310410>,  <30.907167, 29.875483, 33.523235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268681, 30.201433, 33.310410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.500242, 30.259378, 32.989441>,  <30.639179, 30.294146, 32.796860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.500242, 30.259378, 32.989441>,  <30.268681, 30.201433, 33.310410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500242, 30.259378, 32.989441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609650, -0.576605, -0.543925,
		-0.541475, 0.804079, -0.245486,
		0.578906, 0.144861, -0.802423,
		30.673914, 30.302837, 32.748714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845213, 30.388494, 32.750927>,  <30.268681, 30.201433, 33.310410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845213, 30.388494, 32.750927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172264, 30.264755, 32.556698>,  <30.368496, 30.190512, 32.440159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.172264, 30.264755, 32.556698>,  <29.845213, 30.388494, 32.750927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.172264, 30.264755, 32.556698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570668, -0.547178, -0.612319,
		-0.076278, 0.777754, -0.623924,
		0.817630, -0.309347, -0.485577,
		30.417553, 30.171951, 32.411026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758024, 30.461843, 32.038330>,  <29.845213, 30.388494, 32.750927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758024, 30.461843, 32.038330> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.046459, 30.184736, 32.042397>,  <30.219521, 30.018473, 32.044838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.046459, 30.184736, 32.042397>,  <29.758024, 30.461843, 32.038330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.046459, 30.184736, 32.042397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516978, -0.547766, -0.657789,
		0.461265, 0.469068, -0.753134,
		0.721088, -0.692769, 0.010167,
		30.262785, 29.976906, 32.045448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.144012, 30.899370, 31.535425>,  <29.758024, 30.461843, 32.038330>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.144012, 30.899370, 31.535425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943424, 31.197495, 31.359680>,  <29.823071, 31.376369, 31.254234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.943424, 31.197495, 31.359680>,  <30.144012, 30.899370, 31.535425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943424, 31.197495, 31.359680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418049, 0.653350, 0.631164,
		0.757470, 0.132838, -0.639213,
		-0.501472, 0.745310, -0.439361,
		29.792982, 31.421087, 31.227873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601736, 31.386021, 31.489658>,  <30.144012, 30.899370, 31.535425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601736, 31.386021, 31.489658> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.268173, 31.595707, 31.420614>,  <30.068035, 31.721518, 31.379189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.268173, 31.595707, 31.420614>,  <30.601736, 31.386021, 31.489658>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268173, 31.595707, 31.420614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427435, 0.811294, 0.398876,
		0.349134, 0.258847, -0.900613,
		-0.833909, 0.524215, -0.172610,
		30.018000, 31.752972, 31.368832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.926130, 32.025749, 31.381977>,  <30.601736, 31.386021, 31.489658>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.926130, 32.025749, 31.381977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540098, 32.059029, 31.481331>,  <30.308479, 32.078999, 31.540943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.540098, 32.059029, 31.481331>,  <30.926130, 32.025749, 31.381977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540098, 32.059029, 31.481331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173649, 0.913132, 0.368831,
		-0.196118, 0.399084, -0.895695,
		-0.965082, 0.083202, 0.248382,
		30.250574, 32.083988, 31.555845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679651, 32.754761, 31.267445>,  <30.926130, 32.025749, 31.381977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679651, 32.754761, 31.267445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.423483, 32.609470, 31.538126>,  <30.269781, 32.522297, 31.700535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.423483, 32.609470, 31.538126>,  <30.679651, 32.754761, 31.267445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.423483, 32.609470, 31.538126> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109380, 0.828983, 0.548473,
		-0.760195, 0.425272, -0.491169,
		-0.640421, -0.363222, 0.676706,
		30.231356, 32.500504, 31.741138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352045, 33.268242, 31.386759>,  <30.679651, 32.754761, 31.267445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352045, 33.268242, 31.386759> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289337, 33.040756, 31.709742>,  <30.251713, 32.904263, 31.903530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.289337, 33.040756, 31.709742>,  <30.352045, 33.268242, 31.386759>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289337, 33.040756, 31.709742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203568, 0.781403, 0.589889,
		-0.966428, 0.256849, -0.006728,
		-0.156770, -0.568716, 0.807456,
		30.242306, 32.870140, 31.951979>
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
