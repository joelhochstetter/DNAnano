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
	<23.787327, 34.775280, 35.039047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170418, 34.853664, 35.123295>,  <24.400272, 34.900696, 35.173843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.170418, 34.853664, 35.123295>,  <23.787327, 34.775280, 35.039047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170418, 34.853664, 35.123295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257696, -0.909825, -0.325286,
		0.127887, 0.365811, -0.921861,
		0.957725, 0.195960, 0.210623,
		24.457735, 34.912453, 35.186481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.336935, 34.488838, 34.608948>,  <23.787327, 34.775280, 35.039047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.336935, 34.488838, 34.608948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532963, 34.560017, 34.950279>,  <24.650579, 34.602722, 35.155079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.532963, 34.560017, 34.950279>,  <24.336935, 34.488838, 34.608948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.532963, 34.560017, 34.950279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456923, -0.886112, -0.077633,
		0.742330, 0.427951, -0.515561,
		0.490068, 0.177943, 0.853329,
		24.679983, 34.613400, 35.206276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083679, 34.742245, 34.610840>,  <24.336935, 34.488838, 34.608948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083679, 34.742245, 34.610840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979427, 34.488857, 34.902260>,  <24.916876, 34.336826, 35.077114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.979427, 34.488857, 34.902260>,  <25.083679, 34.742245, 34.610840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.979427, 34.488857, 34.902260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615160, -0.690572, -0.380380,
		0.744078, 0.349040, 0.569666,
		-0.260628, -0.633468, 0.728554,
		24.901239, 34.298817, 35.120827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.660189, 34.570526, 34.932140>,  <25.083679, 34.742245, 34.610840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.660189, 34.570526, 34.932140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366377, 34.299137, 34.936970>,  <25.190090, 34.136303, 34.939869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.366377, 34.299137, 34.936970>,  <25.660189, 34.570526, 34.932140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.366377, 34.299137, 34.936970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648606, -0.707202, -0.281382,
		0.199447, -0.198852, 0.959520,
		-0.734528, -0.678471, 0.012073,
		25.146019, 34.095596, 34.940590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.126896, 35.113754, 34.598835>,  <25.660189, 34.570526, 34.932140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.126896, 35.113754, 34.598835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774628, 35.213200, 34.760139>,  <25.563267, 35.272865, 34.856922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.774628, 35.213200, 34.760139>,  <26.126896, 35.113754, 34.598835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.774628, 35.213200, 34.760139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163079, 0.640111, -0.750775,
		-0.444779, -0.726947, -0.523183,
		-0.880669, 0.248609, 0.403258,
		25.510427, 35.287781, 34.881115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.671440, 35.076153, 34.076843>,  <26.126896, 35.113754, 34.598835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.671440, 35.076153, 34.076843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536064, 35.345219, 34.340050>,  <25.454838, 35.506657, 34.497974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.536064, 35.345219, 34.340050>,  <25.671440, 35.076153, 34.076843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.536064, 35.345219, 34.340050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069006, 0.679657, -0.730278,
		-0.938455, -0.292562, -0.183605,
		-0.338440, 0.672662, 0.658015,
		25.434532, 35.547016, 34.537453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157578, 35.413601, 33.696915>,  <25.671440, 35.076153, 34.076843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157578, 35.413601, 33.696915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285948, 35.635742, 34.003796>,  <25.362970, 35.769028, 34.187923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.285948, 35.635742, 34.003796>,  <25.157578, 35.413601, 33.696915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.285948, 35.635742, 34.003796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062435, 0.820688, -0.567955,
		-0.945045, 0.134370, 0.298052,
		0.320924, 0.555352, 0.767198,
		25.382225, 35.802349, 34.233955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.778561, 36.034801, 33.699528>,  <25.157578, 35.413601, 33.696915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.778561, 36.034801, 33.699528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107056, 36.144825, 33.899490>,  <25.304153, 36.210838, 34.019470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.107056, 36.144825, 33.899490>,  <24.778561, 36.034801, 33.699528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.107056, 36.144825, 33.899490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062535, 0.914248, -0.400300,
		-0.567146, 0.297481, 0.768017,
		0.821240, 0.275056, 0.499910,
		25.353428, 36.227341, 34.049461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.672951, 36.690132, 34.086285>,  <24.778561, 36.034801, 33.699528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.672951, 36.690132, 34.086285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070141, 36.685501, 34.039177>,  <25.308455, 36.682720, 34.010914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.070141, 36.685501, 34.039177>,  <24.672951, 36.690132, 34.086285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070141, 36.685501, 34.039177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034059, 0.925119, -0.378147,
		0.113326, 0.379501, 0.918224,
		0.992974, -0.011580, -0.117766,
		25.368032, 36.682026, 34.003849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.945488, 37.324009, 34.248207>,  <24.672951, 36.690132, 34.086285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.945488, 37.324009, 34.248207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253860, 37.185379, 34.034458>,  <25.438885, 37.102200, 33.906208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253860, 37.185379, 34.034458>,  <24.945488, 37.324009, 34.248207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253860, 37.185379, 34.034458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087114, 0.888483, -0.450565,
		0.630931, 0.300804, 0.715152,
		0.770932, -0.346575, -0.534368,
		25.485140, 37.081406, 33.874149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470848, 37.890751, 34.237560>,  <24.945488, 37.324009, 34.248207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470848, 37.890751, 34.237560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541042, 37.632900, 33.939926>,  <25.583158, 37.478188, 33.761345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.541042, 37.632900, 33.939926>,  <25.470848, 37.890751, 34.237560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.541042, 37.632900, 33.939926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204111, 0.763210, -0.613065,
		0.963090, -0.044290, 0.265510,
		0.175487, -0.644630, -0.744081,
		25.593689, 37.439510, 33.716702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165808, 38.120632, 34.021046>,  <25.470848, 37.890751, 34.237560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165808, 38.120632, 34.021046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026825, 37.930283, 33.697857>,  <25.943436, 37.816074, 33.503944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.026825, 37.930283, 33.697857>,  <26.165808, 38.120632, 34.021046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.026825, 37.930283, 33.697857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316255, 0.751702, -0.578728,
		0.882756, -0.456608, -0.110685,
		-0.347454, -0.475871, -0.807974,
		25.922588, 37.787521, 33.455463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728304, 38.088959, 33.564926>,  <26.165808, 38.120632, 34.021046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728304, 38.088959, 33.564926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390764, 38.044083, 33.355038>,  <26.188240, 38.017159, 33.229103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.390764, 38.044083, 33.355038>,  <26.728304, 38.088959, 33.564926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.390764, 38.044083, 33.355038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323204, 0.674324, -0.663947,
		0.428317, -0.729863, -0.532770,
		-0.843850, -0.112187, -0.524719,
		26.137609, 38.010426, 33.197620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.058620, 38.320240, 32.962162>,  <26.728304, 38.088959, 33.564926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.058620, 38.320240, 32.962162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662689, 38.315487, 32.905453>,  <26.425131, 38.312637, 32.871426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.662689, 38.315487, 32.905453>,  <27.058620, 38.320240, 32.962162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.662689, 38.315487, 32.905453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066620, 0.841814, -0.535641,
		0.125713, -0.539637, -0.832459,
		-0.989827, -0.011878, -0.141777,
		26.365742, 38.311924, 32.862919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.934105, 38.325050, 32.304287>,  <27.058620, 38.320240, 32.962162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.934105, 38.325050, 32.304287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582808, 38.456261, 32.443478>,  <26.372028, 38.534985, 32.526993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582808, 38.456261, 32.443478>,  <26.934105, 38.325050, 32.304287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582808, 38.456261, 32.443478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023280, 0.756130, -0.654008,
		-0.477648, -0.566276, -0.671702,
		-0.878243, 0.328023, 0.347981,
		26.319334, 38.554668, 32.547871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.495655, 38.470085, 31.734032>,  <26.934105, 38.325050, 32.304287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.495655, 38.470085, 31.734032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360929, 38.700634, 32.031849>,  <26.280094, 38.838963, 32.210541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360929, 38.700634, 32.031849>,  <26.495655, 38.470085, 31.734032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360929, 38.700634, 32.031849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248956, 0.708092, -0.660777,
		-0.908062, -0.407919, -0.095005,
		-0.336815, 0.576375, 0.744545,
		26.259884, 38.873547, 32.255211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.753439, 38.690876, 31.604403>,  <26.495655, 38.470085, 31.734032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.753439, 38.690876, 31.604403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891716, 38.958714, 31.867353>,  <25.974682, 39.119415, 32.025124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891716, 38.958714, 31.867353>,  <25.753439, 38.690876, 31.604403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891716, 38.958714, 31.867353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371530, 0.740987, -0.559378,
		-0.861663, -0.050863, 0.504926,
		0.345692, 0.669591, 0.657378,
		25.995424, 39.159592, 32.064568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256672, 39.266212, 31.449034>,  <25.753439, 38.690876, 31.604403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256672, 39.266212, 31.449034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515028, 39.437706, 31.701702>,  <25.670042, 39.540604, 31.853304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.515028, 39.437706, 31.701702>,  <25.256672, 39.266212, 31.449034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.515028, 39.437706, 31.701702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091508, 0.864926, -0.493487,
		-0.757924, 0.260937, 0.597882,
		0.645893, 0.428737, 0.631671,
		25.708796, 39.566326, 31.891203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.943634, 39.832123, 31.557760>,  <25.256672, 39.266212, 31.449034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.943634, 39.832123, 31.557760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308933, 39.916203, 31.697357>,  <25.528112, 39.966652, 31.781116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308933, 39.916203, 31.697357>,  <24.943634, 39.832123, 31.557760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308933, 39.916203, 31.697357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121576, 0.958199, -0.258987,
		-0.388844, 0.194090, 0.900627,
		0.913247, 0.210200, 0.348994,
		25.582907, 39.979263, 31.802055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.902407, 40.467342, 31.893730>,  <24.943634, 39.832123, 31.557760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.902407, 40.467342, 31.893730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281231, 40.422394, 31.773432>,  <25.508526, 40.395424, 31.701252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.281231, 40.422394, 31.773432>,  <24.902407, 40.467342, 31.893730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.281231, 40.422394, 31.773432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025400, 0.960035, -0.278725,
		0.320049, 0.256331, 0.912065,
		0.947060, -0.112372, -0.300747,
		25.565350, 40.388683, 31.683208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.123432, 41.193661, 31.768539>,  <24.902407, 40.467342, 31.893730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.123432, 41.193661, 31.768539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410892, 40.978607, 31.592134>,  <25.583368, 40.849575, 31.486292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.410892, 40.978607, 31.592134>,  <25.123432, 41.193661, 31.768539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.410892, 40.978607, 31.592134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273967, 0.801825, -0.531054,
		0.639127, 0.260820, 0.723526,
		0.718651, -0.537633, -0.441012,
		25.626488, 40.817318, 31.459831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.778748, 41.592232, 31.732367>,  <25.123432, 41.193661, 31.768539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.778748, 41.592232, 31.732367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790102, 41.318535, 31.440887>,  <25.796915, 41.154316, 31.265999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790102, 41.318535, 31.440887>,  <25.778748, 41.592232, 31.732367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790102, 41.318535, 31.440887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310843, 0.698893, -0.644148,
		0.950037, -0.208226, 0.232532,
		0.028387, -0.684245, -0.728700,
		25.798618, 41.113262, 31.222277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327536, 41.688705, 31.420841>,  <25.778748, 41.592232, 31.732367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327536, 41.688705, 31.420841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090088, 41.532028, 31.139647>,  <25.947618, 41.438023, 30.970930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.090088, 41.532028, 31.139647>,  <26.327536, 41.688705, 31.420841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.090088, 41.532028, 31.139647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249782, 0.740726, -0.623646,
		0.765005, -0.545799, -0.341865,
		-0.593613, -0.391700, -0.702989,
		25.912003, 41.414520, 30.928751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594990, 41.931450, 30.804413>,  <26.327536, 41.688705, 31.420841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594990, 41.931450, 30.804413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234676, 41.802002, 30.688578>,  <26.018488, 41.724331, 30.619078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.234676, 41.802002, 30.688578>,  <26.594990, 41.931450, 30.804413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.234676, 41.802002, 30.688578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059825, 0.752949, -0.655355,
		0.430131, -0.573007, -0.697603,
		-0.900782, -0.323622, -0.289586,
		25.964441, 41.704914, 30.601702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652946, 41.907219, 30.048342>,  <26.594990, 41.931450, 30.804413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652946, 41.907219, 30.048342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262234, 41.920731, 30.132963>,  <26.027805, 41.928837, 30.183737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.262234, 41.920731, 30.132963>,  <26.652946, 41.907219, 30.048342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.262234, 41.920731, 30.132963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090170, 0.830930, -0.549022,
		-0.194335, -0.555350, -0.808591,
		-0.976782, 0.033783, 0.211555,
		25.969198, 41.930866, 30.196430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.169214, 41.928417, 29.372936>,  <26.652946, 41.907219, 30.048342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.169214, 41.928417, 29.372936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994673, 42.093170, 29.692923>,  <25.889948, 42.192020, 29.884914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994673, 42.093170, 29.692923>,  <26.169214, 41.928417, 29.372936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994673, 42.093170, 29.692923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181857, 0.830355, -0.526724,
		-0.881206, -0.375317, -0.287424,
		-0.436353, 0.411882, 0.799968,
		25.863768, 42.216736, 29.932913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.435328, 42.182655, 29.273708>,  <26.169214, 41.928417, 29.372936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.435328, 42.182655, 29.273708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602419, 42.438179, 29.532145>,  <25.702673, 42.591492, 29.687206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.602419, 42.438179, 29.532145>,  <25.435328, 42.182655, 29.273708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.602419, 42.438179, 29.532145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204592, 0.758976, -0.618140,
		-0.885238, 0.126029, 0.447740,
		0.417728, 0.638804, 0.646090,
		25.727737, 42.629822, 29.725971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169104, 42.320946, 30.063581>,  <25.435328, 42.182655, 29.273708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169104, 42.320946, 30.063581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177818, 42.633194, 29.813732>,  <25.183048, 42.820541, 29.663822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177818, 42.633194, 29.813732>,  <25.169104, 42.320946, 30.063581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177818, 42.633194, 29.813732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396189, 0.580363, 0.711486,
		0.917910, 0.231968, 0.321918,
		0.021788, 0.780621, -0.624624,
		25.184355, 42.867382, 29.626345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324518, 42.847084, 30.456577>,  <25.169104, 42.320946, 30.063581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324518, 42.847084, 30.456577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245813, 43.039371, 30.114773>,  <25.198589, 43.154743, 29.909689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245813, 43.039371, 30.114773>,  <25.324518, 42.847084, 30.456577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245813, 43.039371, 30.114773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502025, 0.699234, 0.508964,
		0.842173, 0.529132, 0.103750,
		-0.196763, 0.480721, -0.854513,
		25.186785, 43.183586, 29.858419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.457579, 43.555283, 30.586218>,  <25.324518, 42.847084, 30.456577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.457579, 43.555283, 30.586218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177092, 43.513088, 30.304178>,  <25.008799, 43.487770, 30.134954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177092, 43.513088, 30.304178>,  <25.457579, 43.555283, 30.586218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177092, 43.513088, 30.304178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606294, 0.608566, 0.511913,
		0.375100, 0.786460, -0.490694,
		-0.701219, -0.105486, -0.705099,
		24.966726, 43.481441, 30.092649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.002583, 44.223274, 30.823967>,  <25.457579, 43.555283, 30.586218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.002583, 44.223274, 30.823967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946270, 44.494637, 30.535536>,  <24.912481, 44.657452, 30.362478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.946270, 44.494637, 30.535536>,  <25.002583, 44.223274, 30.823967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.946270, 44.494637, 30.535536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654162, 0.482953, 0.582089,
		0.743137, 0.553649, 0.375793,
		-0.140782, 0.678402, -0.721077,
		24.904036, 44.698158, 30.319212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.139242, 44.888821, 31.085203>,  <25.002583, 44.223274, 30.823967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.139242, 44.888821, 31.085203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873089, 44.927128, 30.789068>,  <24.713398, 44.950111, 30.611387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.873089, 44.927128, 30.789068>,  <25.139242, 44.888821, 31.085203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.873089, 44.927128, 30.789068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615157, 0.491492, 0.616456,
		0.422907, 0.865600, -0.268116,
		-0.665381, 0.095770, -0.740335,
		24.673475, 44.955860, 30.566967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.120735, 45.278244, 31.766438>,  <25.139242, 44.888821, 31.085203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.120735, 45.278244, 31.766438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358431, 45.507030, 31.992619>,  <25.501049, 45.644302, 32.128326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.358431, 45.507030, 31.992619>,  <25.120735, 45.278244, 31.766438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.358431, 45.507030, 31.992619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125993, -0.628170, 0.767808,
		0.794359, -0.527504, -0.301219,
		0.594238, 0.571964, 0.565454,
		25.536703, 45.678619, 32.162254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698404, 44.882420, 32.050304>,  <25.120735, 45.278244, 31.766438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698404, 44.882420, 32.050304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662859, 45.173466, 32.322388>,  <25.641531, 45.348095, 32.485638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662859, 45.173466, 32.322388>,  <25.698404, 44.882420, 32.050304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662859, 45.173466, 32.322388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174025, -0.661063, 0.729871,
		0.980724, 0.183232, -0.067878,
		-0.088864, 0.727614, 0.680207,
		25.636200, 45.391750, 32.526451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.222464, 44.917187, 32.557102>,  <25.698404, 44.882420, 32.050304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.222464, 44.917187, 32.557102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916449, 45.089825, 32.748287>,  <25.732840, 45.193405, 32.862999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.916449, 45.089825, 32.748287>,  <26.222464, 44.917187, 32.557102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916449, 45.089825, 32.748287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189052, -0.558970, 0.807349,
		0.615611, 0.708011, 0.346040,
		-0.765038, 0.431593, 0.477959,
		25.686937, 45.219303, 32.891674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.430513, 45.062870, 33.294331>,  <26.222464, 44.917187, 32.557102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.430513, 45.062870, 33.294331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030617, 45.067802, 33.286713>,  <25.790678, 45.070763, 33.282143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.030617, 45.067802, 33.286713>,  <26.430513, 45.062870, 33.294331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.030617, 45.067802, 33.286713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022378, -0.674031, 0.738364,
		-0.003737, 0.738600, 0.674133,
		-0.999743, 0.012327, -0.019047,
		25.730694, 45.071499, 33.280998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.184324, 45.091766, 33.994572>,  <26.430513, 45.062870, 33.294331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.184324, 45.091766, 33.994572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884119, 44.940266, 33.777950>,  <25.703997, 44.849365, 33.647976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.884119, 44.940266, 33.777950>,  <26.184324, 45.091766, 33.994572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.884119, 44.940266, 33.777950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111436, -0.735206, 0.668621,
		-0.651393, 0.562157, 0.509575,
		-0.750513, -0.378749, -0.541553,
		25.658966, 44.826641, 33.615486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633434, 44.963104, 34.501617>,  <26.184324, 45.091766, 33.994572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633434, 44.963104, 34.501617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590666, 44.740891, 34.171780>,  <25.565004, 44.607563, 33.973877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590666, 44.740891, 34.171780>,  <25.633434, 44.963104, 34.501617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590666, 44.740891, 34.171780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145508, -0.811675, 0.565696,
		-0.983563, 0.180469, 0.005949,
		-0.106919, -0.555532, -0.824592,
		25.558590, 44.574230, 33.924400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.083570, 44.612629, 34.639317>,  <25.633434, 44.963104, 34.501617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.083570, 44.612629, 34.639317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273050, 44.397221, 34.360577>,  <25.386738, 44.267975, 34.193333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.273050, 44.397221, 34.360577>,  <25.083570, 44.612629, 34.639317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.273050, 44.397221, 34.360577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151159, -0.829234, 0.538072,
		-0.867616, -0.149550, -0.474211,
		0.473701, -0.538522, -0.696851,
		25.415161, 44.235664, 34.151520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.863758, 44.014702, 34.740208>,  <25.083570, 44.612629, 34.639317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.863758, 44.014702, 34.740208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165981, 43.914452, 34.498112>,  <25.347315, 43.854301, 34.352852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.165981, 43.914452, 34.498112>,  <24.863758, 44.014702, 34.740208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.165981, 43.914452, 34.498112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039780, -0.939766, 0.339496,
		-0.653875, -0.232432, -0.720016,
		0.755556, -0.250630, -0.605243,
		25.392649, 43.839264, 34.316540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.566441, 43.429798, 34.253830>,  <24.863758, 44.014702, 34.740208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.566441, 43.429798, 34.253830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965019, 43.418087, 34.285419>,  <25.204166, 43.411060, 34.304375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.965019, 43.418087, 34.285419>,  <24.566441, 43.429798, 34.253830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.965019, 43.418087, 34.285419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040342, -0.988993, 0.142358,
		0.073939, -0.145039, -0.986660,
		0.996447, -0.029278, 0.078976,
		25.263952, 43.409302, 34.309113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.766754, 42.904114, 33.806946>,  <24.566441, 43.429798, 34.253830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.766754, 42.904114, 33.806946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044008, 42.983974, 34.083988>,  <25.210361, 43.031891, 34.250214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.044008, 42.983974, 34.083988>,  <24.766754, 42.904114, 33.806946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.044008, 42.983974, 34.083988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065439, -0.974337, 0.215371,
		0.717829, -0.103958, -0.688414,
		0.693137, 0.199649, 0.692605,
		25.251949, 43.043869, 34.291771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219463, 42.351246, 33.729954>,  <24.766754, 42.904114, 33.806946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219463, 42.351246, 33.729954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328463, 42.503139, 34.083572>,  <25.393862, 42.594276, 34.295746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328463, 42.503139, 34.083572>,  <25.219463, 42.351246, 33.729954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328463, 42.503139, 34.083572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034751, -0.922108, 0.385369,
		0.961528, -0.074291, -0.264470,
		0.272500, 0.379734, 0.884051,
		25.410212, 42.617058, 34.348789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760994, 41.867802, 34.000862>,  <25.219463, 42.351246, 33.729954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760994, 41.867802, 34.000862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662397, 42.073689, 34.329327>,  <25.603239, 42.197220, 34.526405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.662397, 42.073689, 34.329327>,  <25.760994, 41.867802, 34.000862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.662397, 42.073689, 34.329327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047489, -0.839873, 0.540701,
		0.967981, 0.172274, 0.182577,
		-0.246490, 0.514718, 0.821163,
		25.588449, 42.228104, 34.575676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.210089, 41.760025, 34.491936>,  <25.760994, 41.867802, 34.000862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.210089, 41.760025, 34.491936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913080, 41.859489, 34.740719>,  <25.734875, 41.919167, 34.889988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.913080, 41.859489, 34.740719>,  <26.210089, 41.760025, 34.491936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.913080, 41.859489, 34.740719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199553, -0.804259, 0.559774,
		0.639409, 0.539757, 0.547558,
		-0.742520, 0.248658, 0.621960,
		25.690325, 41.934086, 34.927307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462027, 41.697872, 35.162193>,  <26.210089, 41.760025, 34.491936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462027, 41.697872, 35.162193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064861, 41.678417, 35.205559>,  <25.826561, 41.666744, 35.231579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064861, 41.678417, 35.205559>,  <26.462027, 41.697872, 35.162193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064861, 41.678417, 35.205559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104254, -0.794310, 0.598501,
		0.057007, 0.605563, 0.793753,
		-0.992915, -0.048634, 0.108414,
		25.766987, 41.663826, 35.238083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.274519, 41.677876, 35.839996>,  <26.462027, 41.697872, 35.162193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.274519, 41.677876, 35.839996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973186, 41.497604, 35.648422>,  <25.792387, 41.389442, 35.533478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.973186, 41.497604, 35.648422>,  <26.274519, 41.677876, 35.839996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.973186, 41.497604, 35.648422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232715, -0.863830, 0.446813,
		-0.615090, 0.225141, 0.755629,
		-0.753331, -0.450677, -0.478939,
		25.747187, 41.362400, 35.504742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000002, 41.293972, 36.365021>,  <26.274519, 41.677876, 35.839996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000002, 41.293972, 36.365021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834612, 41.169819, 36.022629>,  <25.735378, 41.095329, 35.817192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.834612, 41.169819, 36.022629>,  <26.000002, 41.293972, 36.365021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.834612, 41.169819, 36.022629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046006, -0.946027, 0.320805,
		-0.909353, 0.093264, 0.405437,
		-0.413474, -0.310378, -0.855982,
		25.710569, 41.076706, 35.765835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557148, 40.762394, 36.575027>,  <26.000002, 41.293972, 36.365021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557148, 40.762394, 36.575027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628498, 40.691559, 36.187870>,  <25.671309, 40.649059, 35.955574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.628498, 40.691559, 36.187870>,  <25.557148, 40.762394, 36.575027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.628498, 40.691559, 36.187870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133776, -0.970173, 0.202157,
		-0.974826, -0.165541, -0.149365,
		0.178375, -0.177087, -0.967896,
		25.682011, 40.638432, 35.897503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.392832, 40.059338, 36.493645>,  <25.557148, 40.762394, 36.575027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.392832, 40.059338, 36.493645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590607, 40.124531, 36.152126>,  <25.709272, 40.163647, 35.947216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.590607, 40.124531, 36.152126>,  <25.392832, 40.059338, 36.493645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.590607, 40.124531, 36.152126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197457, -0.977643, -0.072276,
		-0.846488, -0.132852, -0.515566,
		0.494437, 0.162983, -0.853796,
		25.738937, 40.173428, 35.895988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.115004, 39.590191, 36.059387>,  <25.392832, 40.059338, 36.493645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.115004, 39.590191, 36.059387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474028, 39.662281, 35.898438>,  <25.689442, 39.705536, 35.801868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.474028, 39.662281, 35.898438>,  <25.115004, 39.590191, 36.059387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.474028, 39.662281, 35.898438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210901, -0.976955, 0.032867,
		-0.387182, -0.114362, -0.914883,
		0.897558, 0.180225, -0.402378,
		25.743296, 39.716347, 35.777725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216124, 39.063122, 35.455997>,  <25.115004, 39.590191, 36.059387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216124, 39.063122, 35.455997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584679, 39.189758, 35.546165>,  <25.805811, 39.265739, 35.600266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.584679, 39.189758, 35.546165>,  <25.216124, 39.063122, 35.455997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.584679, 39.189758, 35.546165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372351, -0.885287, -0.278606,
		0.111361, 0.340641, -0.933575,
		0.921387, 0.316592, 0.225424,
		25.861095, 39.284737, 35.613792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.559906, 38.787605, 34.949059>,  <25.216124, 39.063122, 35.455997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.559906, 38.787605, 34.949059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837093, 38.860302, 35.228134>,  <26.003407, 38.903919, 35.395576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.837093, 38.860302, 35.228134>,  <25.559906, 38.787605, 34.949059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837093, 38.860302, 35.228134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516318, -0.800507, -0.304309,
		0.503197, 0.571104, -0.648562,
		0.692971, 0.181737, 0.697684,
		26.044985, 38.914822, 35.437439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.228600, 38.637772, 34.638618>,  <25.559906, 38.787605, 34.949059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.228600, 38.637772, 34.638618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277826, 38.638897, 35.035576>,  <26.307362, 38.639572, 35.273750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277826, 38.638897, 35.035576>,  <26.228600, 38.637772, 34.638618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277826, 38.638897, 35.035576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669783, -0.738130, -0.080963,
		0.732288, 0.674653, -0.092724,
		0.123065, 0.002817, 0.992395,
		26.314745, 38.639744, 35.333294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.874935, 38.465153, 34.667328>,  <26.228600, 38.637772, 34.638618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.874935, 38.465153, 34.667328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771887, 38.390217, 35.046494>,  <26.710058, 38.345253, 35.273991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.771887, 38.390217, 35.046494>,  <26.874935, 38.465153, 34.667328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.771887, 38.390217, 35.046494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663726, -0.747261, 0.032699,
		0.702211, 0.637577, 0.316852,
		-0.257619, -0.187342, 0.947911,
		26.694601, 38.334015, 35.330868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.472519, 38.343498, 34.961758>,  <26.874935, 38.465153, 34.667328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.472519, 38.343498, 34.961758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217829, 38.211281, 35.240417>,  <27.065016, 38.131950, 35.407616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.217829, 38.211281, 35.240417>,  <27.472519, 38.343498, 34.961758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.217829, 38.211281, 35.240417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615507, -0.762077, 0.200973,
		0.464473, 0.556759, 0.688683,
		-0.636723, -0.330542, 0.696653,
		27.026812, 38.112118, 35.449413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800533, 38.363701, 35.524910>,  <27.472519, 38.343498, 34.961758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800533, 38.363701, 35.524910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517742, 38.081833, 35.548992>,  <27.348068, 37.912712, 35.563442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.517742, 38.081833, 35.548992>,  <27.800533, 38.363701, 35.524910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.517742, 38.081833, 35.548992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680833, -0.655070, 0.327644,
		-0.191438, 0.272630, 0.942881,
		-0.706978, -0.704668, 0.060210,
		27.305649, 37.870434, 35.567055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.979422, 37.950840, 36.097641>,  <27.800533, 38.363701, 35.524910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.979422, 37.950840, 36.097641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736982, 37.714615, 35.884518>,  <27.591518, 37.572880, 35.756645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.736982, 37.714615, 35.884518>,  <27.979422, 37.950840, 36.097641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.736982, 37.714615, 35.884518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677767, -0.734041, 0.042607,
		-0.416263, -0.335294, 0.845165,
		-0.606099, -0.590561, -0.532805,
		27.555153, 37.537445, 35.724674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.110100, 37.391628, 36.334957>,  <27.979422, 37.950840, 36.097641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.110100, 37.391628, 36.334957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961859, 37.282982, 35.979683>,  <27.872915, 37.217793, 35.766518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.961859, 37.282982, 35.979683>,  <28.110100, 37.391628, 36.334957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.961859, 37.282982, 35.979683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532553, -0.845614, 0.036386,
		-0.760948, -0.459523, 0.458035,
		-0.370600, -0.271615, -0.888189,
		27.850679, 37.201496, 35.713226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.482727, 37.068947, 36.862846>,  <28.110100, 37.391628, 36.334957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.482727, 37.068947, 36.862846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461744, 37.447540, 36.990234>,  <28.449154, 37.674694, 37.066666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.461744, 37.447540, 36.990234>,  <28.482727, 37.068947, 36.862846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.461744, 37.447540, 36.990234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886299, -0.102815, 0.451556,
		0.460133, 0.305944, -0.833472,
		-0.052457, 0.946482, 0.318467,
		28.446007, 37.731483, 37.085773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978825, 37.398636, 36.536125>,  <28.482727, 37.068947, 36.862846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978825, 37.398636, 36.536125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887812, 37.559841, 36.890709>,  <28.833204, 37.656563, 37.103458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887812, 37.559841, 36.890709>,  <28.978825, 37.398636, 36.536125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887812, 37.559841, 36.890709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948730, -0.113369, 0.295058,
		0.219409, 0.908146, -0.356555,
		-0.227534, 0.403013, 0.886459,
		28.819551, 37.680744, 37.156647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.427710, 38.036892, 36.706688>,  <28.978825, 37.398636, 36.536125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.427710, 38.036892, 36.706688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297527, 37.892113, 37.056103>,  <29.219418, 37.805244, 37.265751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.297527, 37.892113, 37.056103>,  <29.427710, 38.036892, 36.706688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.297527, 37.892113, 37.056103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934903, 0.015109, 0.354581,
		-0.141538, 0.932077, 0.333467,
		-0.325458, -0.361946, 0.873540,
		29.199890, 37.783527, 37.318165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666229, 38.413639, 37.302963>,  <29.427710, 38.036892, 36.706688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666229, 38.413639, 37.302963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602354, 38.030155, 37.397083>,  <29.564028, 37.800064, 37.453556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.602354, 38.030155, 37.397083>,  <29.666229, 38.413639, 37.302963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.602354, 38.030155, 37.397083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730182, 0.045695, 0.681723,
		-0.664329, 0.280677, 0.692739,
		-0.159690, -0.958714, 0.235302,
		29.554447, 37.742542, 37.467674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846212, 38.260784, 38.090363>,  <29.666229, 38.413639, 37.302963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846212, 38.260784, 38.090363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836634, 37.900616, 37.916622>,  <29.830887, 37.684513, 37.812378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.836634, 37.900616, 37.916622>,  <29.846212, 38.260784, 38.090363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.836634, 37.900616, 37.916622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709208, -0.321518, 0.627416,
		-0.704593, -0.293021, 0.646288,
		-0.023947, -0.900425, -0.434352,
		29.829449, 37.630489, 37.786316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714710, 37.692131, 38.572273>,  <29.846212, 38.260784, 38.090363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714710, 37.692131, 38.572273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906645, 37.487431, 38.287216>,  <30.021807, 37.364609, 38.116180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906645, 37.487431, 38.287216>,  <29.714710, 37.692131, 38.572273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906645, 37.487431, 38.287216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503282, -0.504784, 0.701356,
		-0.718653, -0.695199, 0.015341,
		0.479838, -0.511752, -0.712646,
		30.050596, 37.333904, 38.073421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.619003, 36.950962, 38.657871>,  <29.714710, 37.692131, 38.572273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.619003, 36.950962, 38.657871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958597, 37.024700, 38.459782>,  <30.162354, 37.068943, 38.340927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958597, 37.024700, 38.459782>,  <29.619003, 36.950962, 38.657871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958597, 37.024700, 38.459782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518240, -0.473526, 0.712180,
		-0.103216, -0.861273, -0.497549,
		0.848984, 0.184342, -0.495222,
		30.213293, 37.080002, 38.311214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.011084, 36.387615, 38.790516>,  <29.619003, 36.950962, 38.657871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.011084, 36.387615, 38.790516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299982, 36.632618, 38.662022>,  <30.473322, 36.779621, 38.584927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.299982, 36.632618, 38.662022>,  <30.011084, 36.387615, 38.790516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299982, 36.632618, 38.662022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607981, -0.340837, 0.717070,
		0.329724, -0.713205, -0.618563,
		0.722247, 0.612510, -0.321233,
		30.516657, 36.816372, 38.565651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.538124, 36.008236, 38.593952>,  <30.011084, 36.387615, 38.790516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.538124, 36.008236, 38.593952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688055, 36.367687, 38.685143>,  <30.778013, 36.583359, 38.739857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.688055, 36.367687, 38.685143>,  <30.538124, 36.008236, 38.593952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.688055, 36.367687, 38.685143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623729, -0.426361, 0.655117,
		0.685905, -0.103364, -0.720313,
		0.374829, 0.898628, 0.227972,
		30.800505, 36.637276, 38.753532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.229597, 35.851692, 38.706192>,  <30.538124, 36.008236, 38.593952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.229597, 35.851692, 38.706192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155022, 36.207844, 38.872303>,  <31.110275, 36.421535, 38.971970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155022, 36.207844, 38.872303>,  <31.229597, 35.851692, 38.706192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155022, 36.207844, 38.872303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512532, -0.272471, 0.814291,
		0.838183, 0.364662, -0.405550,
		-0.186440, 0.890383, 0.415281,
		31.099091, 36.474960, 38.996887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886620, 36.171234, 38.787567>,  <31.229597, 35.851692, 38.706192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886620, 36.171234, 38.787567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634361, 36.320614, 39.059692>,  <31.483006, 36.410240, 39.222965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.634361, 36.320614, 39.059692>,  <31.886620, 36.171234, 38.787567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.634361, 36.320614, 39.059692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594422, -0.331142, 0.732807,
		0.498945, 0.866534, -0.013152,
		-0.630647, 0.373449, 0.680309,
		31.445168, 36.432648, 39.263786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.314926, 36.354244, 39.351646>,  <31.886620, 36.171234, 38.787567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.314926, 36.354244, 39.351646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975857, 36.445450, 39.543255>,  <31.772415, 36.500175, 39.658218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975857, 36.445450, 39.543255>,  <32.314926, 36.354244, 39.351646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975857, 36.445450, 39.543255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482827, -0.042593, 0.874679,
		0.219845, 0.972725, -0.073988,
		-0.847671, 0.228017, 0.479022,
		31.721556, 36.513855, 39.686962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534538, 36.767696, 39.882973>,  <32.314926, 36.354244, 39.351646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534538, 36.767696, 39.882973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177891, 36.603714, 39.959862>,  <31.963902, 36.505325, 40.005993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.177891, 36.603714, 39.959862>,  <32.534538, 36.767696, 39.882973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177891, 36.603714, 39.959862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349155, -0.352229, 0.868346,
		-0.288281, 0.841349, 0.457194,
		-0.891619, -0.409959, 0.192221,
		31.910404, 36.480728, 40.017529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383846, 37.033882, 40.506733>,  <32.534538, 36.767696, 39.882973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383846, 37.033882, 40.506733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150990, 36.715443, 40.440601>,  <32.011276, 36.524380, 40.400925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150990, 36.715443, 40.440601>,  <32.383846, 37.033882, 40.506733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150990, 36.715443, 40.440601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193044, -0.332846, 0.923010,
		-0.789835, 0.505411, 0.347447,
		-0.582146, -0.796099, -0.165327,
		31.976345, 36.476612, 40.391003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020569, 36.899921, 41.046860>,  <32.383846, 37.033882, 40.506733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020569, 36.899921, 41.046860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998337, 36.545250, 40.863243>,  <31.984999, 36.332447, 40.753075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.998337, 36.545250, 40.863243>,  <32.020569, 36.899921, 41.046860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.998337, 36.545250, 40.863243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162448, -0.461654, 0.872059,
		-0.985151, -0.026102, 0.169697,
		-0.055579, -0.886676, -0.459039,
		31.981663, 36.279247, 40.725533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692492, 36.404560, 41.646988>,  <32.020569, 36.899921, 41.046860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692492, 36.404560, 41.646988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862175, 36.149487, 41.389805>,  <31.963985, 35.996441, 41.235493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862175, 36.149487, 41.389805>,  <31.692492, 36.404560, 41.646988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862175, 36.149487, 41.389805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210879, -0.620929, 0.754968,
		-0.880668, -0.455852, -0.128930,
		0.424210, -0.637688, -0.642962,
		31.989437, 35.958179, 41.196915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.482573, 35.763710, 41.851620>,  <31.692492, 36.404560, 41.646988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.482573, 35.763710, 41.851620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782448, 35.652901, 41.611214>,  <31.962374, 35.586414, 41.466969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782448, 35.652901, 41.611214>,  <31.482573, 35.763710, 41.851620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782448, 35.652901, 41.611214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190242, -0.779630, 0.596645,
		-0.633855, -0.561639, -0.531780,
		0.749691, -0.277020, -0.601019,
		32.007355, 35.569794, 41.430908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578388, 34.989769, 41.873909>,  <31.482573, 35.763710, 41.851620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578388, 34.989769, 41.873909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938963, 35.135368, 41.780174>,  <32.155308, 35.222729, 41.723934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938963, 35.135368, 41.780174>,  <31.578388, 34.989769, 41.873909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938963, 35.135368, 41.780174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429469, -0.683845, 0.589841,
		0.054449, -0.632347, -0.772770,
		0.901439, 0.363997, -0.234339,
		32.209396, 35.244568, 41.709873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996641, 34.451572, 41.563885>,  <31.578388, 34.989769, 41.873909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996641, 34.451572, 41.563885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263786, 34.713177, 41.706001>,  <32.424072, 34.870140, 41.791271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263786, 34.713177, 41.706001>,  <31.996641, 34.451572, 41.563885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263786, 34.713177, 41.706001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476569, -0.742439, 0.470815,
		0.571698, -0.145120, -0.807528,
		0.667865, 0.654006, 0.355292,
		32.464146, 34.909378, 41.812588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591782, 34.062496, 41.628120>,  <31.996641, 34.451572, 41.563885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591782, 34.062496, 41.628120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668858, 34.373463, 41.867619>,  <32.715103, 34.560043, 42.011318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668858, 34.373463, 41.867619>,  <32.591782, 34.062496, 41.628120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668858, 34.373463, 41.867619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612298, -0.572071, 0.545734,
		0.766786, 0.261449, -0.586245,
		0.192692, 0.777418, 0.598742,
		32.726665, 34.606689, 42.047241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322620, 33.999256, 41.792187>,  <32.591782, 34.062496, 41.628120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322620, 33.999256, 41.792187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164639, 34.233971, 42.074944>,  <33.069851, 34.374802, 42.244598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164639, 34.233971, 42.074944>,  <33.322620, 33.999256, 41.792187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164639, 34.233971, 42.074944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379508, -0.596518, 0.707206,
		0.836652, 0.547582, 0.012905,
		-0.394951, 0.586788, 0.706890,
		33.046154, 34.410007, 42.287010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833645, 33.987103, 42.333275>,  <33.322620, 33.999256, 41.792187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833645, 33.987103, 42.333275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496037, 34.105175, 42.512379>,  <33.293472, 34.176018, 42.619843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496037, 34.105175, 42.512379>,  <33.833645, 33.987103, 42.333275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496037, 34.105175, 42.512379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223943, -0.564650, 0.794367,
		0.487313, 0.770738, 0.410474,
		-0.844023, 0.295182, 0.447763,
		33.242828, 34.193729, 42.646709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.993988, 34.428867, 42.883568>,  <33.833645, 33.987103, 42.333275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.993988, 34.428867, 42.883568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642231, 34.253845, 42.958630>,  <33.431175, 34.148834, 43.003666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642231, 34.253845, 42.958630>,  <33.993988, 34.428867, 42.883568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642231, 34.253845, 42.958630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333487, -0.284802, 0.898707,
		-0.339787, 0.852898, 0.396371,
		-0.879393, -0.437553, 0.187658,
		33.378414, 34.122578, 43.014927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058849, 34.302807, 43.537121>,  <33.993988, 34.428867, 42.883568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058849, 34.302807, 43.537121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723015, 34.096104, 43.470108>,  <33.521515, 33.972084, 43.429901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.723015, 34.096104, 43.470108>,  <34.058849, 34.302807, 43.537121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723015, 34.096104, 43.470108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146654, -0.512558, 0.846036,
		-0.523063, 0.685748, 0.506118,
		-0.839582, -0.516755, -0.167532,
		33.471142, 33.941078, 43.419849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658344, 34.117729, 44.209698>,  <34.058849, 34.302807, 43.537121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658344, 34.117729, 44.209698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552616, 33.853622, 43.928509>,  <33.489178, 33.695156, 43.759796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552616, 33.853622, 43.928509>,  <33.658344, 34.117729, 44.209698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552616, 33.853622, 43.928509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061119, -0.715967, 0.695454,
		-0.962496, 0.226789, 0.148891,
		-0.264322, -0.660271, -0.702976,
		33.473320, 33.655540, 43.717617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054016, 33.840576, 44.523979>,  <33.658344, 34.117729, 44.209698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054016, 33.840576, 44.523979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179016, 33.592979, 44.235760>,  <33.254017, 33.444420, 44.062828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.179016, 33.592979, 44.235760>,  <33.054016, 33.840576, 44.523979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179016, 33.592979, 44.235760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070573, -0.771573, 0.632214,
		-0.947293, -0.146713, -0.284799,
		0.312497, -0.618991, -0.720552,
		33.272766, 33.407284, 44.019592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.521236, 33.382126, 44.404358>,  <33.054016, 33.840576, 44.523979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.521236, 33.382126, 44.404358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855228, 33.197811, 44.284035>,  <33.055622, 33.087223, 44.211842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855228, 33.197811, 44.284035>,  <32.521236, 33.382126, 44.404358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855228, 33.197811, 44.284035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164421, -0.730587, 0.662728,
		-0.525144, -0.503905, -0.685787,
		0.834979, -0.460785, -0.300811,
		33.105721, 33.059574, 44.193790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381119, 32.748238, 44.617550>,  <32.521236, 33.382126, 44.404358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381119, 32.748238, 44.617550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776253, 32.725750, 44.559551>,  <33.013332, 32.712257, 44.524750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.776253, 32.725750, 44.559551>,  <32.381119, 32.748238, 44.617550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.776253, 32.725750, 44.559551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079431, -0.619203, 0.781203,
		-0.133699, -0.783216, -0.607204,
		0.987834, -0.056215, -0.144999,
		33.072601, 32.708885, 44.516052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482838, 32.067165, 44.582420>,  <32.381119, 32.748238, 44.617550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482838, 32.067165, 44.582420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855488, 32.202549, 44.635357>,  <33.079079, 32.283779, 44.667118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855488, 32.202549, 44.635357>,  <32.482838, 32.067165, 44.582420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855488, 32.202549, 44.635357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104962, -0.599240, 0.793659,
		0.347930, -0.725503, -0.593794,
		0.931626, 0.338463, 0.132343,
		33.134975, 32.304089, 44.675060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971603, 31.448753, 44.730297>,  <32.482838, 32.067165, 44.582420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971603, 31.448753, 44.730297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159821, 31.760969, 44.894905>,  <33.272751, 31.948298, 44.993668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.159821, 31.760969, 44.894905>,  <32.971603, 31.448753, 44.730297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159821, 31.760969, 44.894905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015948, -0.458776, 0.888409,
		0.882232, -0.424599, -0.203427,
		0.470545, 0.780538, 0.411518,
		33.300983, 31.995131, 45.018360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457443, 31.123083, 45.187038>,  <32.971603, 31.448753, 44.730297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457443, 31.123083, 45.187038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402985, 31.495962, 45.321186>,  <33.370308, 31.719690, 45.401676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.402985, 31.495962, 45.321186>,  <33.457443, 31.123083, 45.187038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402985, 31.495962, 45.321186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002387, -0.338211, 0.941067,
		0.990686, 0.128924, 0.043822,
		-0.136147, 0.932197, 0.335369,
		33.362141, 31.775621, 45.421795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.963322, 31.308607, 45.742249>,  <33.457443, 31.123083, 45.187038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.963322, 31.308607, 45.742249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670929, 31.579279, 45.777523>,  <33.495495, 31.741682, 45.798687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670929, 31.579279, 45.777523>,  <33.963322, 31.308607, 45.742249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670929, 31.579279, 45.777523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051838, -0.073788, 0.995926,
		0.680430, 0.732571, 0.018860,
		-0.730978, 0.676680, 0.088183,
		33.451637, 31.782284, 45.803978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074909, 31.683441, 46.290901>,  <33.963322, 31.308607, 45.742249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074909, 31.683441, 46.290901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691387, 31.786108, 46.242207>,  <33.461273, 31.847708, 46.212990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.691387, 31.786108, 46.242207>,  <34.074909, 31.683441, 46.290901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691387, 31.786108, 46.242207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171315, -0.180608, 0.968520,
		0.226600, 0.949475, 0.217138,
		-0.958803, 0.256666, -0.121734,
		33.403748, 31.863108, 46.205685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913570, 32.190048, 46.905266>,  <34.074909, 31.683441, 46.290901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913570, 32.190048, 46.905266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598038, 31.995808, 46.754570>,  <33.408718, 31.879263, 46.664154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.598038, 31.995808, 46.754570>,  <33.913570, 32.190048, 46.905266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598038, 31.995808, 46.754570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298362, -0.233344, 0.925489,
		-0.537330, 0.842461, 0.039185,
		-0.788833, -0.485602, -0.376741,
		33.361389, 31.850126, 46.641548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386738, 32.436543, 47.321735>,  <33.913570, 32.190048, 46.905266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386738, 32.436543, 47.321735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234863, 32.109753, 47.148117>,  <33.143738, 31.913679, 47.043945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234863, 32.109753, 47.148117>,  <33.386738, 32.436543, 47.321735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234863, 32.109753, 47.148117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207901, -0.381824, 0.900548,
		-0.901453, 0.432162, -0.024877,
		-0.379684, -0.816974, -0.434044,
		33.120956, 31.864660, 47.017902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716984, 32.228775, 47.683620>,  <33.386738, 32.436543, 47.321735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716984, 32.228775, 47.683620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829243, 31.899704, 47.485855>,  <32.896599, 31.702263, 47.367195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.829243, 31.899704, 47.485855>,  <32.716984, 32.228775, 47.683620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829243, 31.899704, 47.485855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214191, -0.555804, 0.803246,
		-0.935605, -0.119533, -0.332196,
		0.280651, -0.822675, -0.494410,
		32.913437, 31.652901, 47.337532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235374, 31.820112, 47.786057>,  <32.716984, 32.228775, 47.683620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235374, 31.820112, 47.786057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537777, 31.570358, 47.707474>,  <32.719219, 31.420506, 47.660324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537777, 31.570358, 47.707474>,  <32.235374, 31.820112, 47.786057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537777, 31.570358, 47.707474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172697, -0.479765, 0.860233,
		-0.631371, -0.616414, -0.470535,
		0.756007, -0.624387, -0.196457,
		32.764580, 31.383043, 47.648537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070702, 31.067814, 48.116482>,  <32.235374, 31.820112, 47.786057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070702, 31.067814, 48.116482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464508, 31.046122, 48.049805>,  <32.700790, 31.033106, 48.009796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.464508, 31.046122, 48.049805>,  <32.070702, 31.067814, 48.116482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.464508, 31.046122, 48.049805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113786, -0.525670, 0.843044,
		-0.133348, -0.848958, -0.511360,
		0.984516, -0.054232, -0.166697,
		32.759861, 31.029852, 47.999794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161903, 30.371233, 48.219685>,  <32.070702, 31.067814, 48.116482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161903, 30.371233, 48.219685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526276, 30.533960, 48.247128>,  <32.744900, 30.631598, 48.263592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.526276, 30.533960, 48.247128>,  <32.161903, 30.371233, 48.219685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.526276, 30.533960, 48.247128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241198, -0.660056, 0.711442,
		0.334712, -0.631526, -0.699388,
		0.910929, 0.406819, 0.068606,
		32.799553, 30.656006, 48.267708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.629726, 29.795332, 48.111420>,  <32.161903, 30.371233, 48.219685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.629726, 29.795332, 48.111420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854530, 30.069820, 48.296131>,  <32.989414, 30.234514, 48.406960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.854530, 30.069820, 48.296131>,  <32.629726, 29.795332, 48.111420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854530, 30.069820, 48.296131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361072, -0.705833, 0.609448,
		0.744157, -0.175780, -0.644462,
		0.562012, 0.686222, 0.461781,
		33.023132, 30.275686, 48.434666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249710, 29.401585, 48.129677>,  <32.629726, 29.795332, 48.111420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249710, 29.401585, 48.129677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230785, 29.714365, 48.378292>,  <33.219429, 29.902033, 48.527462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230785, 29.714365, 48.378292>,  <33.249710, 29.401585, 48.129677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230785, 29.714365, 48.378292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511118, -0.515654, 0.687647,
		0.858207, 0.350216, -0.375272,
		-0.047314, 0.781952, 0.621540,
		33.216591, 29.948950, 48.564754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918400, 29.545200, 48.243687>,  <33.249710, 29.401585, 48.129677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918400, 29.545200, 48.243687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693222, 29.666672, 48.551159>,  <33.558113, 29.739555, 48.735641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.693222, 29.666672, 48.551159>,  <33.918400, 29.545200, 48.243687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.693222, 29.666672, 48.551159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504464, -0.610460, 0.610618,
		0.654680, 0.731518, 0.190462,
		-0.562948, 0.303678, 0.768681,
		33.524338, 29.757774, 48.781761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351925, 29.589994, 48.788799>,  <33.918400, 29.545200, 48.243687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351925, 29.589994, 48.788799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002216, 29.546940, 48.978142>,  <33.792393, 29.521107, 49.091747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002216, 29.546940, 48.978142>,  <34.351925, 29.589994, 48.788799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002216, 29.546940, 48.978142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460286, -0.493618, 0.737888,
		0.154231, 0.862992, 0.481100,
		-0.874271, -0.107638, 0.473354,
		33.739937, 29.514648, 49.120148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.573475, 29.582981, 49.457737>,  <34.351925, 29.589994, 48.788799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.573475, 29.582981, 49.457737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202721, 29.435507, 49.429577>,  <33.980267, 29.347023, 49.412682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202721, 29.435507, 49.429577>,  <34.573475, 29.582981, 49.457737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202721, 29.435507, 49.429577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228325, -0.702691, 0.673864,
		-0.297914, 0.608520, 0.735494,
		-0.926885, -0.368685, -0.070402,
		33.924656, 29.324902, 49.408455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577179, 29.361319, 50.056198>,  <34.573475, 29.582981, 49.457737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577179, 29.361319, 50.056198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251381, 29.197645, 49.891682>,  <34.055901, 29.099442, 49.792973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251381, 29.197645, 49.891682>,  <34.577179, 29.361319, 50.056198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251381, 29.197645, 49.891682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024652, -0.732689, 0.680117,
		-0.579640, 0.543816, 0.606862,
		-0.814500, -0.409183, -0.411290,
		34.007030, 29.074890, 49.768295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060074, 29.295094, 50.533436>,  <34.577179, 29.361319, 50.056198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060074, 29.295094, 50.533436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902359, 29.037983, 50.270718>,  <33.807732, 28.883717, 50.113087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.902359, 29.037983, 50.270718>,  <34.060074, 29.295094, 50.533436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902359, 29.037983, 50.270718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096840, -0.681654, 0.725237,
		-0.913873, 0.349553, 0.206518,
		-0.394283, -0.642775, -0.656796,
		33.784073, 28.845150, 50.073677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.474972, 28.906441, 50.896507>,  <34.060074, 29.295094, 50.533436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.474972, 28.906441, 50.896507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636852, 28.688698, 50.602596>,  <33.733982, 28.558052, 50.426250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636852, 28.688698, 50.602596>,  <33.474972, 28.906441, 50.896507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636852, 28.688698, 50.602596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209597, -0.726905, 0.653971,
		-0.890104, -0.418670, -0.180086,
		0.404703, -0.544357, -0.734773,
		33.758263, 28.525391, 50.382164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175236, 28.125315, 50.727921>,  <33.474972, 28.906441, 50.896507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175236, 28.125315, 50.727921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567745, 28.166508, 50.662800>,  <33.803249, 28.191223, 50.623730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.567745, 28.166508, 50.662800>,  <33.175236, 28.125315, 50.727921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.567745, 28.166508, 50.662800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185696, -0.730493, 0.657189,
		-0.051242, -0.675111, -0.735935,
		0.981270, 0.102984, -0.162797,
		33.862125, 28.197403, 50.613960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.512150, 27.444054, 50.516033>,  <33.175236, 28.125315, 50.727921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.512150, 27.444054, 50.516033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758091, 27.698696, 50.702232>,  <33.905655, 27.851482, 50.813953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758091, 27.698696, 50.702232>,  <33.512150, 27.444054, 50.516033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758091, 27.698696, 50.702232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299807, -0.734618, 0.608648,
		0.729432, -0.234670, -0.642541,
		0.614854, 0.636606, 0.465498,
		33.942547, 27.889677, 50.841881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260223, 27.528162, 50.477489>,  <33.512150, 27.444054, 50.516033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260223, 27.528162, 50.477489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152126, 27.610958, 50.853600>,  <34.087269, 27.660637, 51.079266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.152126, 27.610958, 50.853600>,  <34.260223, 27.528162, 50.477489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.152126, 27.610958, 50.853600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514743, -0.794259, 0.322789,
		0.813639, 0.571233, 0.108097,
		-0.270244, 0.206991, 0.940278,
		34.071053, 27.673056, 51.135681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898804, 27.516768, 50.754604>,  <34.260223, 27.528162, 50.477489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898804, 27.516768, 50.754604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625298, 27.436527, 51.035236>,  <34.461193, 27.388382, 51.203617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625298, 27.436527, 51.035236>,  <34.898804, 27.516768, 50.754604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625298, 27.436527, 51.035236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658731, -0.583297, 0.475224,
		0.313900, 0.787098, 0.530984,
		-0.683769, -0.200602, 0.701583,
		34.420166, 27.376347, 51.245712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715523, 26.732710, 50.959484>,  <34.898804, 27.516768, 50.754604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715523, 26.732710, 50.959484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341637, 26.592367, 50.936836>,  <34.117306, 26.508162, 50.923248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.341637, 26.592367, 50.936836>,  <34.715523, 26.732710, 50.959484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341637, 26.592367, 50.936836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206251, 0.665262, -0.717556,
		0.289427, -0.659033, -0.694196,
		-0.934715, -0.350859, -0.056619,
		34.061222, 26.487110, 50.919849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395054, 26.450060, 50.286602>,  <34.715523, 26.732710, 50.959484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395054, 26.450060, 50.286602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113491, 26.632708, 50.504230>,  <33.944553, 26.742296, 50.634808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113491, 26.632708, 50.504230>,  <34.395054, 26.450060, 50.286602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113491, 26.632708, 50.504230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235947, 0.572173, -0.785460,
		-0.669961, -0.681261, -0.295018,
		-0.703905, 0.456619, 0.544075,
		33.902321, 26.769693, 50.667454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964062, 25.940054, 49.839104>,  <34.395054, 26.450060, 50.286602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964062, 25.940054, 49.839104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929028, 25.664059, 49.551704>,  <33.908009, 25.498461, 49.379265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929028, 25.664059, 49.551704>,  <33.964062, 25.940054, 49.839104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929028, 25.664059, 49.551704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123089, 0.708249, -0.695149,
		0.988523, -0.149322, 0.022899,
		-0.087583, -0.689990, -0.718500,
		33.902752, 25.457062, 49.336155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496403, 25.948767, 49.444054>,  <33.964062, 25.940054, 49.839104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496403, 25.948767, 49.444054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177608, 25.828222, 49.234676>,  <33.986332, 25.755896, 49.109051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.177608, 25.828222, 49.234676>,  <34.496403, 25.948767, 49.444054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177608, 25.828222, 49.234676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179274, 0.709550, -0.681469,
		0.576774, -0.636963, -0.511478,
		-0.796990, -0.301358, -0.523441,
		33.938511, 25.737814, 49.077644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628197, 25.702042, 48.695778>,  <34.496403, 25.948767, 49.444054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628197, 25.702042, 48.695778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258900, 25.850525, 48.735420>,  <34.037319, 25.939615, 48.759205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.258900, 25.850525, 48.735420>,  <34.628197, 25.702042, 48.695778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258900, 25.850525, 48.735420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182909, 0.651498, -0.736271,
		-0.337880, -0.661630, -0.669390,
		-0.923245, 0.371209, 0.099111,
		33.981926, 25.961887, 48.765152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.324280, 25.662821, 48.010723>,  <34.628197, 25.702042, 48.695778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.324280, 25.662821, 48.010723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193283, 25.968092, 48.233547>,  <34.114685, 26.151255, 48.367241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.193283, 25.968092, 48.233547>,  <34.324280, 25.662821, 48.010723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.193283, 25.968092, 48.233547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165806, 0.626839, -0.761302,
		-0.930193, -0.156954, -0.331822,
		-0.327489, 0.763176, 0.557058,
		34.095036, 26.197044, 48.400665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.725693, 25.893656, 47.646957>,  <34.324280, 25.662821, 48.010723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.725693, 25.893656, 47.646957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843647, 26.206190, 47.866978>,  <33.914421, 26.393711, 47.998989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.843647, 26.206190, 47.866978>,  <33.725693, 25.893656, 47.646957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.843647, 26.206190, 47.866978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121541, 0.601642, -0.789465,
		-0.947771, 0.165949, 0.272381,
		0.294887, 0.781337, 0.550049,
		33.932114, 26.440592, 48.031994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.238644, 26.412819, 47.413216>,  <33.725693, 25.893656, 47.646957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.238644, 26.412819, 47.413216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543163, 26.598976, 47.593807>,  <33.725876, 26.710670, 47.702164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.543163, 26.598976, 47.593807>,  <33.238644, 26.412819, 47.413216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543163, 26.598976, 47.593807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015336, 0.709025, -0.705017,
		-0.648221, 0.529804, 0.546916,
		0.761297, 0.465395, 0.451480,
		33.771553, 26.738594, 47.729252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014095, 27.075459, 47.362522>,  <33.238644, 26.412819, 47.413216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014095, 27.075459, 47.362522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403866, 27.114281, 47.443588>,  <33.637730, 27.137575, 47.492226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403866, 27.114281, 47.443588>,  <33.014095, 27.075459, 47.362522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403866, 27.114281, 47.443588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041778, 0.807930, -0.587795,
		-0.220788, 0.581230, 0.783214,
		0.974427, 0.097057, 0.202663,
		33.696194, 27.143398, 47.504387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167614, 27.858541, 47.661903>,  <33.014095, 27.075459, 47.362522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167614, 27.858541, 47.661903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499981, 27.708511, 47.497513>,  <33.699402, 27.618492, 47.398880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499981, 27.708511, 47.497513>,  <33.167614, 27.858541, 47.661903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499981, 27.708511, 47.497513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086192, 0.642941, -0.761050,
		0.549683, 0.667790, 0.501901,
		0.830915, -0.375077, -0.410972,
		33.749256, 27.595989, 47.374222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.373013, 28.405828, 47.267063>,  <33.167614, 27.858541, 47.661903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.373013, 28.405828, 47.267063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626408, 28.123457, 47.140347>,  <33.778446, 27.954035, 47.064316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626408, 28.123457, 47.140347>,  <33.373013, 28.405828, 47.267063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626408, 28.123457, 47.140347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317898, 0.610728, -0.725226,
		0.705428, 0.358719, 0.611304,
		0.633492, -0.705927, -0.316788,
		33.816456, 27.911678, 47.045311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991825, 28.687107, 47.100632>,  <33.373013, 28.405828, 47.267063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991825, 28.687107, 47.100632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986328, 28.344492, 46.894272>,  <33.983028, 28.138922, 46.770454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986328, 28.344492, 46.894272>,  <33.991825, 28.687107, 47.100632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986328, 28.344492, 46.894272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348519, 0.479489, -0.805373,
		0.937201, -0.190870, 0.291930,
		-0.013744, -0.856539, -0.515899,
		33.982204, 28.087530, 46.739502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.616138, 28.525795, 46.848602>,  <33.991825, 28.687107, 47.100632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.616138, 28.525795, 46.848602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361954, 28.334288, 46.606289>,  <34.209442, 28.219383, 46.460899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361954, 28.334288, 46.606289>,  <34.616138, 28.525795, 46.848602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361954, 28.334288, 46.606289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353324, 0.517296, -0.779466,
		0.686551, -0.709357, -0.159561,
		-0.635460, -0.478767, -0.605783,
		34.171314, 28.190659, 46.424553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978683, 28.505392, 46.322632>,  <34.616138, 28.525795, 46.848602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978683, 28.505392, 46.322632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608955, 28.429466, 46.190201>,  <34.387119, 28.383911, 46.110744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.608955, 28.429466, 46.190201>,  <34.978683, 28.505392, 46.322632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608955, 28.429466, 46.190201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164313, 0.585058, -0.794172,
		0.344442, -0.788466, -0.509590,
		-0.924317, -0.189814, -0.331073,
		34.331661, 28.372522, 46.090878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134895, 28.399349, 45.668896>,  <34.978683, 28.505392, 46.322632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134895, 28.399349, 45.668896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754688, 28.520220, 45.697746>,  <34.526562, 28.592743, 45.715057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.754688, 28.520220, 45.697746>,  <35.134895, 28.399349, 45.668896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.754688, 28.520220, 45.697746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157027, 0.667646, -0.727730,
		-0.268059, -0.680396, -0.682060,
		-0.950519, 0.302176, 0.072128,
		34.469532, 28.610872, 45.719383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900043, 28.418320, 44.972321>,  <35.134895, 28.399349, 45.668896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900043, 28.418320, 44.972321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610554, 28.636246, 45.141747>,  <34.436859, 28.767002, 45.243401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610554, 28.636246, 45.141747>,  <34.900043, 28.418320, 44.972321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610554, 28.636246, 45.141747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086576, 0.537245, -0.838971,
		-0.684641, -0.643851, -0.341647,
		-0.723720, 0.544816, 0.423562,
		34.393436, 28.799690, 45.268814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412224, 28.501381, 44.384876>,  <34.900043, 28.418320, 44.972321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412224, 28.501381, 44.384876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331108, 28.778162, 44.662025>,  <34.282440, 28.944231, 44.828316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331108, 28.778162, 44.662025>,  <34.412224, 28.501381, 44.384876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331108, 28.778162, 44.662025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334798, 0.615942, -0.713109,
		-0.920210, -0.376585, 0.106758,
		-0.202790, 0.691953, 0.692876,
		34.270271, 28.985748, 44.869888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724709, 28.594301, 44.471600>,  <34.412224, 28.501381, 44.384876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724709, 28.594301, 44.471600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868401, 28.944002, 44.602222>,  <33.954617, 29.153822, 44.680595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.868401, 28.944002, 44.602222>,  <33.724709, 28.594301, 44.471600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868401, 28.944002, 44.602222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543807, 0.480458, -0.688065,
		-0.758438, 0.069591, 0.648019,
		0.359229, 0.874253, 0.326553,
		33.976170, 29.206278, 44.700188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141663, 29.097885, 44.564255>,  <33.724709, 28.594301, 44.471600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141663, 29.097885, 44.564255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478680, 29.311165, 44.533749>,  <33.680889, 29.439133, 44.515446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478680, 29.311165, 44.533749>,  <33.141663, 29.097885, 44.564255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478680, 29.311165, 44.533749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406222, 0.536057, -0.740018,
		-0.353695, 0.654479, 0.668249,
		0.842546, 0.533198, -0.076263,
		33.731445, 29.471125, 44.510868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994118, 29.731007, 44.512207>,  <33.141663, 29.097885, 44.564255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994118, 29.731007, 44.512207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350502, 29.746712, 44.331253>,  <33.564331, 29.756134, 44.222679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350502, 29.746712, 44.331253>,  <32.994118, 29.731007, 44.512207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350502, 29.746712, 44.331253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320497, 0.760127, -0.565234,
		0.321681, 0.648588, 0.689823,
		0.890956, 0.039261, -0.452388,
		33.617790, 29.758490, 44.195538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.989632, 30.442936, 44.258991>,  <32.994118, 29.731007, 44.512207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.989632, 30.442936, 44.258991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266514, 30.257488, 44.037754>,  <33.432644, 30.146219, 43.905010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266514, 30.257488, 44.037754>,  <32.989632, 30.442936, 44.258991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266514, 30.257488, 44.037754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077970, 0.713847, -0.695947,
		0.717479, 0.524861, 0.457979,
		0.692203, -0.463619, -0.553094,
		33.474174, 30.118402, 43.871826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346436, 30.983212, 43.971699>,  <32.989632, 30.442936, 44.258991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346436, 30.983212, 43.971699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466751, 30.675308, 43.746487>,  <33.538940, 30.490566, 43.611359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.466751, 30.675308, 43.746487>,  <33.346436, 30.983212, 43.971699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466751, 30.675308, 43.746487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024473, 0.583945, -0.811424,
		0.953378, 0.257843, 0.156804,
		0.300785, -0.769756, -0.563031,
		33.556988, 30.444382, 43.577576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882359, 31.227995, 43.542828>,  <33.346436, 30.983212, 43.971699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882359, 31.227995, 43.542828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735485, 30.910208, 43.349335>,  <33.647362, 30.719536, 43.233238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.735485, 30.910208, 43.349335>,  <33.882359, 31.227995, 43.542828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735485, 30.910208, 43.349335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198467, 0.574999, -0.793717,
		0.908729, -0.195433, -0.368805,
		-0.367181, -0.794470, -0.483731,
		33.625332, 30.671867, 43.204216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.061226, 31.296446, 42.769135>,  <33.882359, 31.227995, 43.542828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.061226, 31.296446, 42.769135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764511, 31.030275, 42.802505>,  <33.586483, 30.870573, 42.822529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764511, 31.030275, 42.802505>,  <34.061226, 31.296446, 42.769135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764511, 31.030275, 42.802505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438483, 0.387113, -0.811096,
		0.507429, -0.638241, -0.578933,
		-0.741787, -0.665425, 0.083426,
		33.541973, 30.830648, 42.827534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092850, 30.992815, 42.140526>,  <34.061226, 31.296446, 42.769135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092850, 30.992815, 42.140526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732998, 30.933092, 42.304657>,  <33.517086, 30.897259, 42.403133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.732998, 30.933092, 42.304657>,  <34.092850, 30.992815, 42.140526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.732998, 30.933092, 42.304657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434098, 0.407198, -0.803585,
		-0.047102, -0.901054, -0.431143,
		-0.899634, -0.149307, 0.410325,
		33.463108, 30.888300, 42.427753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756317, 30.790937, 41.501469>,  <34.092850, 30.992815, 42.140526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756317, 30.790937, 41.501469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478741, 30.877800, 41.776073>,  <33.312195, 30.929916, 41.940834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478741, 30.877800, 41.776073>,  <33.756317, 30.790937, 41.501469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478741, 30.877800, 41.776073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494761, 0.548896, -0.673739,
		-0.523128, -0.807191, -0.273459,
		-0.693936, 0.217155, 0.686510,
		33.270561, 30.942947, 41.982025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.200333, 30.610161, 41.162209>,  <33.756317, 30.790937, 41.501469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.200333, 30.610161, 41.162209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084312, 30.856504, 41.455219>,  <33.014702, 31.004311, 41.631023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084312, 30.856504, 41.455219>,  <33.200333, 30.610161, 41.162209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084312, 30.856504, 41.455219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622146, 0.460274, -0.633311,
		-0.727192, -0.639425, 0.249654,
		-0.290046, 0.615859, 0.732523,
		32.997299, 31.041262, 41.674976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415558, 30.692039, 40.990910>,  <33.200333, 30.610161, 41.162209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415558, 30.692039, 40.990910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516510, 30.997564, 41.228527>,  <32.577084, 31.180880, 41.371098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516510, 30.997564, 41.228527>,  <32.415558, 30.692039, 40.990910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516510, 30.997564, 41.228527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664738, 0.582985, -0.467174,
		-0.703154, -0.276978, 0.654872,
		0.252383, 0.763814, 0.594046,
		32.592224, 31.226709, 41.406742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772602, 30.953884, 41.368271>,  <32.415558, 30.692039, 40.990910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772602, 30.953884, 41.368271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034290, 31.256395, 41.365768>,  <32.191303, 31.437902, 41.364269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.034290, 31.256395, 41.365768>,  <31.772602, 30.953884, 41.368271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034290, 31.256395, 41.365768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642891, 0.551742, -0.531293,
		-0.398355, 0.351603, 0.847165,
		0.654220, 0.756278, -0.006253,
		32.230556, 31.483278, 41.363892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.328699, 31.651196, 41.465786>,  <31.772602, 30.953884, 41.368271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.328699, 31.651196, 41.465786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689650, 31.768833, 41.339787>,  <31.906219, 31.839417, 41.264187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.689650, 31.768833, 41.339787>,  <31.328699, 31.651196, 41.465786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.689650, 31.768833, 41.339787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430514, 0.648109, -0.628181,
		0.019410, 0.702468, 0.711450,
		0.902375, 0.294096, -0.315003,
		31.960361, 31.857061, 41.245285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.299994, 32.374866, 41.479881>,  <31.328699, 31.651196, 41.465786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.299994, 32.374866, 41.479881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588903, 32.285217, 41.218166>,  <31.762249, 32.231430, 41.061138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588903, 32.285217, 41.218166>,  <31.299994, 32.374866, 41.479881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588903, 32.285217, 41.218166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441080, 0.579396, -0.685382,
		0.532699, 0.783627, 0.319628,
		0.722275, -0.224121, -0.654285,
		31.805586, 32.217979, 41.021881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375252, 33.036522, 40.969975>,  <31.299994, 32.374866, 41.479881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375252, 33.036522, 40.969975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575882, 32.737446, 40.795902>,  <31.696260, 32.558002, 40.691460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.575882, 32.737446, 40.795902>,  <31.375252, 33.036522, 40.969975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575882, 32.737446, 40.795902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182367, 0.400352, -0.898031,
		0.845674, 0.529794, 0.064453,
		0.501575, -0.747688, -0.435185,
		31.726355, 32.513138, 40.665348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823971, 33.360477, 40.434299>,  <31.375252, 33.036522, 40.969975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823971, 33.360477, 40.434299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773409, 32.980816, 40.318974>,  <31.743071, 32.753017, 40.249779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773409, 32.980816, 40.318974>,  <31.823971, 33.360477, 40.434299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773409, 32.980816, 40.318974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334767, 0.314409, -0.888301,
		0.933784, -0.015769, -0.357489,
		-0.126406, -0.949157, -0.288311,
		31.735487, 32.696068, 40.232479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121861, 33.199135, 39.815865>,  <31.823971, 33.360477, 40.434299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121861, 33.199135, 39.815865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850748, 32.905609, 39.834293>,  <31.688080, 32.729492, 39.845352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850748, 32.905609, 39.834293>,  <32.121861, 33.199135, 39.815865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850748, 32.905609, 39.834293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435993, 0.350661, -0.828822,
		0.592048, -0.581849, -0.557612,
		-0.677782, -0.733818, 0.046074,
		31.647413, 32.685463, 39.848114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192196, 32.888512, 39.135628>,  <32.121861, 33.199135, 39.815865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192196, 32.888512, 39.135628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847431, 32.794552, 39.315376>,  <31.640572, 32.738178, 39.423225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.847431, 32.794552, 39.315376>,  <32.192196, 32.888512, 39.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847431, 32.794552, 39.315376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505956, 0.456804, -0.731668,
		-0.033407, -0.857994, -0.512573,
		-0.861912, -0.234897, 0.449368,
		31.588858, 32.724083, 39.450188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.836987, 32.684532, 38.627167>,  <32.192196, 32.888512, 39.135628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.836987, 32.684532, 38.627167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532789, 32.738396, 38.881260>,  <31.350271, 32.770714, 39.033714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.532789, 32.738396, 38.881260>,  <31.836987, 32.684532, 38.627167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.532789, 32.738396, 38.881260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602068, 0.220216, -0.767476,
		-0.243234, -0.966112, -0.086399,
		-0.760494, 0.134659, 0.635229,
		31.304642, 32.778793, 39.071827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.170856, 32.400139, 38.325333>,  <31.836987, 32.684532, 38.627167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.170856, 32.400139, 38.325333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065104, 32.675964, 38.595028>,  <31.001652, 32.841461, 38.756847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.065104, 32.675964, 38.595028>,  <31.170856, 32.400139, 38.325333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065104, 32.675964, 38.595028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571280, 0.451286, -0.685551,
		-0.777007, -0.566430, 0.274621,
		-0.264384, 0.689564, 0.674243,
		30.985788, 32.882832, 38.797302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.533770, 32.462597, 38.224300>,  <31.170856, 32.400139, 38.325333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.533770, 32.462597, 38.224300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650326, 32.802399, 38.400223>,  <30.720259, 33.006279, 38.505775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650326, 32.802399, 38.400223>,  <30.533770, 32.462597, 38.224300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650326, 32.802399, 38.400223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553300, 0.524717, -0.646939,
		-0.780353, -0.054833, 0.622930,
		0.291389, 0.849509, 0.439804,
		30.737741, 33.057251, 38.532166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930969, 32.790150, 38.288647>,  <30.533770, 32.462597, 38.224300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930969, 32.790150, 38.288647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188375, 33.086674, 38.364902>,  <30.342819, 33.264587, 38.410656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188375, 33.086674, 38.364902>,  <29.930969, 32.790150, 38.288647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188375, 33.086674, 38.364902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552136, 0.622057, -0.555149,
		-0.530128, 0.251987, 0.809609,
		0.643514, 0.741314, 0.190639,
		30.381430, 33.309067, 38.422092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443155, 33.374874, 38.448978>,  <29.930969, 32.790150, 38.288647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443155, 33.374874, 38.448978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796503, 33.521835, 38.332584>,  <30.008512, 33.610012, 38.262749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796503, 33.521835, 38.332584>,  <29.443155, 33.374874, 38.448978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796503, 33.521835, 38.332584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463463, 0.592450, -0.658942,
		-0.069705, 0.716950, 0.693631,
		0.883370, 0.367404, -0.290983,
		30.061514, 33.632057, 38.245289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.304066, 34.166569, 38.274815>,  <29.443155, 33.374874, 38.448978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.304066, 34.166569, 38.274815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652157, 34.087006, 38.094532>,  <29.861012, 34.039268, 37.986362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.652157, 34.087006, 38.094532>,  <29.304066, 34.166569, 38.274815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.652157, 34.087006, 38.094532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150628, 0.763629, -0.627839,
		0.469055, 0.614252, 0.634571,
		0.870229, -0.198907, -0.450708,
		29.913225, 34.027332, 37.959320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.720106, 34.793797, 38.038658>,  <29.304066, 34.166569, 38.274815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.720106, 34.793797, 38.038658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929115, 34.530651, 37.821701>,  <30.054520, 34.372765, 37.691528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.929115, 34.530651, 37.821701>,  <29.720106, 34.793797, 38.038658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929115, 34.530651, 37.821701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122947, 0.687625, -0.715580,
		0.843715, 0.307221, 0.440182,
		0.522522, -0.657865, -0.542388,
		30.085873, 34.333290, 37.658985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453459, 35.104530, 37.806217>,  <29.720106, 34.793797, 38.038658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453459, 35.104530, 37.806217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344801, 34.827755, 37.538654>,  <30.279606, 34.661690, 37.378117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.344801, 34.827755, 37.538654>,  <30.453459, 35.104530, 37.806217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344801, 34.827755, 37.538654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060155, 0.681474, -0.729366,
		0.960515, -0.238367, -0.143496,
		-0.271646, -0.691935, -0.668905,
		30.263308, 34.620174, 37.337982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007950, 35.138569, 37.328575>,  <30.453459, 35.104530, 37.806217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007950, 35.138569, 37.328575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710077, 34.948780, 37.140820>,  <30.531353, 34.834908, 37.028164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.710077, 34.948780, 37.140820>,  <31.007950, 35.138569, 37.328575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.710077, 34.948780, 37.140820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132061, 0.584638, -0.800474,
		0.654226, -0.658085, -0.372709,
		-0.744680, -0.474471, -0.469393,
		30.486673, 34.806438, 37.000000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193790, 34.736118, 36.711330>,  <31.007950, 35.138569, 37.328575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193790, 34.736118, 36.711330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819374, 34.873558, 36.680958>,  <30.594725, 34.956020, 36.662735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819374, 34.873558, 36.680958>,  <31.193790, 34.736118, 36.711330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819374, 34.873558, 36.680958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283036, 0.606929, -0.742649,
		-0.209087, -0.716643, -0.665362,
		-0.936041, 0.343599, -0.075935,
		30.538561, 34.976639, 36.658176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799303, 34.331856, 37.078236>,  <31.193790, 34.736118, 36.711330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799303, 34.331856, 37.078236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094986, 34.586681, 36.990856>,  <32.272396, 34.739578, 36.938431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.094986, 34.586681, 36.990856>,  <31.799303, 34.331856, 37.078236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.094986, 34.586681, 36.990856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601622, -0.478862, 0.639329,
		0.302689, -0.604020, -0.737252,
		0.739209, 0.637064, -0.218445,
		32.316750, 34.777802, 36.925323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366310, 33.950024, 36.845272>,  <31.799303, 34.331856, 37.078236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366310, 33.950024, 36.845272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478416, 34.286263, 37.030682>,  <32.545681, 34.488007, 37.141926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478416, 34.286263, 37.030682>,  <32.366310, 33.950024, 36.845272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478416, 34.286263, 37.030682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487965, -0.540593, 0.685310,
		0.826644, 0.034111, -0.561691,
		0.280270, 0.840593, 0.463522,
		32.562496, 34.538441, 37.169739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109261, 33.917683, 36.889942>,  <32.366310, 33.950024, 36.845272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109261, 33.917683, 36.889942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005444, 34.176361, 37.176834>,  <32.943153, 34.331570, 37.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005444, 34.176361, 37.176834>,  <33.109261, 33.917683, 36.889942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005444, 34.176361, 37.176834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480773, -0.557585, 0.676724,
		0.837554, 0.520463, -0.166199,
		-0.259540, 0.646697, 0.717232,
		32.927582, 34.370369, 37.392002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700024, 34.163624, 37.213665>,  <33.109261, 33.917683, 36.889942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700024, 34.163624, 37.213665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434902, 34.241936, 37.502766>,  <33.275829, 34.288925, 37.676224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.434902, 34.241936, 37.502766>,  <33.700024, 34.163624, 37.213665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434902, 34.241936, 37.502766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642001, -0.348203, 0.683074,
		0.385397, 0.916746, 0.105096,
		-0.662800, 0.195783, 0.722748,
		33.236061, 34.300671, 37.719589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984428, 34.582783, 37.742977>,  <33.700024, 34.163624, 37.213665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984428, 34.582783, 37.742977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696350, 34.380314, 37.932758>,  <33.523502, 34.258835, 38.046627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.696350, 34.380314, 37.932758>,  <33.984428, 34.582783, 37.742977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.696350, 34.380314, 37.932758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633276, -0.200346, 0.747544,
		-0.283328, 0.838842, 0.464833,
		-0.720199, -0.506168, 0.474455,
		33.480289, 34.228462, 38.075096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.142624, 34.725410, 38.401951>,  <33.984428, 34.582783, 37.742977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.142624, 34.725410, 38.401951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907173, 34.403355, 38.430984>,  <33.765903, 34.210121, 38.448406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907173, 34.403355, 38.430984>,  <34.142624, 34.725410, 38.401951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907173, 34.403355, 38.430984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630654, -0.401169, 0.664333,
		-0.505763, 0.436820, 0.743904,
		-0.588625, -0.805141, 0.072586,
		33.730587, 34.161812, 38.452759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071476, 34.549530, 39.101986>,  <34.142624, 34.725410, 38.401951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071476, 34.549530, 39.101986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954357, 34.200211, 38.946232>,  <33.884087, 33.990620, 38.852779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954357, 34.200211, 38.946232>,  <34.071476, 34.549530, 39.101986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954357, 34.200211, 38.946232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442875, -0.484777, 0.754224,
		-0.847426, 0.048387, 0.528704,
		-0.292798, -0.873299, -0.389383,
		33.866516, 33.938221, 38.829418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.758766, 34.226341, 39.669804>,  <34.071476, 34.549530, 39.101986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.758766, 34.226341, 39.669804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891308, 33.973190, 39.389896>,  <33.970833, 33.821301, 39.221954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891308, 33.973190, 39.389896>,  <33.758766, 34.226341, 39.669804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891308, 33.973190, 39.389896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456599, -0.541470, 0.705923,
		-0.825665, -0.553421, 0.109554,
		0.331353, -0.632878, -0.699765,
		33.990715, 33.783325, 39.179966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638119, 33.506691, 39.969395>,  <33.758766, 34.226341, 39.669804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638119, 33.506691, 39.969395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906288, 33.466923, 39.675278>,  <34.067188, 33.443062, 39.498810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.906288, 33.466923, 39.675278>,  <33.638119, 33.506691, 39.969395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906288, 33.466923, 39.675278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525829, -0.635501, 0.565369,
		-0.523487, -0.765672, -0.373774,
		0.670421, -0.099422, -0.735290,
		34.107414, 33.437096, 39.454689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824326, 32.764416, 40.025116>,  <33.638119, 33.506691, 39.969395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824326, 32.764416, 40.025116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111732, 32.962708, 39.829979>,  <34.284176, 33.081680, 39.712894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111732, 32.962708, 39.829979>,  <33.824326, 32.764416, 40.025116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111732, 32.962708, 39.829979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692404, -0.443596, 0.569033,
		0.065679, -0.746644, -0.661974,
		0.718514, 0.495727, -0.487844,
		34.327286, 33.111427, 39.683624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351780, 32.304893, 39.991882>,  <33.824326, 32.764416, 40.025116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351780, 32.304893, 39.991882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567635, 32.621403, 39.876865>,  <34.697147, 32.811310, 39.807854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567635, 32.621403, 39.876865>,  <34.351780, 32.304893, 39.991882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567635, 32.621403, 39.876865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779064, -0.339854, 0.526839,
		0.319151, -0.508314, -0.799850,
		0.539632, 0.791275, -0.287544,
		34.729523, 32.858784, 39.790604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962368, 32.049927, 39.799915>,  <34.351780, 32.304893, 39.991882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962368, 32.049927, 39.799915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045525, 32.435951, 39.863716>,  <35.095417, 32.667564, 39.901997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.045525, 32.435951, 39.863716>,  <34.962368, 32.049927, 39.799915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045525, 32.435951, 39.863716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813984, -0.261107, 0.518895,
		0.542412, 0.021958, -0.839825,
		0.207890, 0.965060, 0.159502,
		35.107891, 32.725468, 39.911568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667976, 32.190388, 39.483189>,  <34.962368, 32.049927, 39.799915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667976, 32.190388, 39.483189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615444, 32.483208, 39.750576>,  <35.583927, 32.658901, 39.911007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615444, 32.483208, 39.750576>,  <35.667976, 32.190388, 39.483189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615444, 32.483208, 39.750576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800319, -0.319637, 0.507270,
		0.585016, 0.601606, -0.543900,
		-0.131326, 0.732054, 0.668469,
		35.576046, 32.702824, 39.951118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365414, 32.403221, 39.605289>,  <35.667976, 32.190388, 39.483189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365414, 32.403221, 39.605289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161777, 32.544270, 39.919353>,  <36.039597, 32.628899, 40.107792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161777, 32.544270, 39.919353>,  <36.365414, 32.403221, 39.605289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161777, 32.544270, 39.919353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724286, -0.317332, 0.612136,
		0.465012, 0.880316, -0.093850,
		-0.509091, 0.352625, 0.785164,
		36.009048, 32.650059, 40.154903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895836, 32.794785, 40.065212>,  <36.365414, 32.403221, 39.605289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895836, 32.794785, 40.065212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575005, 32.681953, 40.275772>,  <36.382504, 32.614254, 40.402107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.575005, 32.681953, 40.275772>,  <36.895836, 32.794785, 40.065212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.575005, 32.681953, 40.275772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596114, -0.324635, 0.734344,
		-0.036256, 0.902798, 0.428535,
		-0.802081, -0.282080, 0.526400,
		36.334381, 32.597328, 40.433693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007977, 32.988918, 40.730099>,  <36.895836, 32.794785, 40.065212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007977, 32.988918, 40.730099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742298, 32.692978, 40.772934>,  <36.582893, 32.515415, 40.798634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742298, 32.692978, 40.772934>,  <37.007977, 32.988918, 40.730099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742298, 32.692978, 40.772934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455226, -0.286662, 0.842967,
		-0.592972, 0.608642, 0.527199,
		-0.664193, -0.739851, 0.107087,
		36.543041, 32.471024, 40.805061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.951962, 32.883339, 41.390675>,  <37.007977, 32.988918, 40.730099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.951962, 32.883339, 41.390675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797836, 32.529800, 41.284573>,  <36.705360, 32.317677, 41.220913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.797836, 32.529800, 41.284573>,  <36.951962, 32.883339, 41.390675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797836, 32.529800, 41.284573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251086, -0.377017, 0.891523,
		-0.887970, 0.276914, 0.367190,
		-0.385312, -0.883842, -0.265250,
		36.682243, 32.264648, 41.204998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576515, 32.686485, 41.913029>,  <36.951962, 32.883339, 41.390675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576515, 32.686485, 41.913029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618961, 32.338112, 41.721104>,  <36.644428, 32.129089, 41.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618961, 32.338112, 41.721104>,  <36.576515, 32.686485, 41.913029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618961, 32.338112, 41.721104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145527, -0.463735, 0.873940,
		-0.983647, -0.162564, 0.077535,
		0.106115, -0.870932, -0.479809,
		36.650795, 32.076832, 41.577160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.029427, 32.345013, 42.247570>,  <36.576515, 32.686485, 41.913029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.029427, 32.345013, 42.247570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254772, 32.065346, 42.071487>,  <36.389980, 31.897545, 41.965836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.254772, 32.065346, 42.071487>,  <36.029427, 32.345013, 42.247570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254772, 32.065346, 42.071487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053286, -0.562444, 0.825117,
		-0.824489, -0.441384, -0.354117,
		0.563364, -0.699169, -0.440209,
		36.423782, 31.855595, 41.939426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618938, 31.664734, 42.393986>,  <36.029427, 32.345013, 42.247570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618938, 31.664734, 42.393986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999001, 31.569794, 42.313122>,  <36.227039, 31.512831, 42.264603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999001, 31.569794, 42.313122>,  <35.618938, 31.664734, 42.393986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999001, 31.569794, 42.313122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062597, -0.489988, 0.869479,
		-0.305426, -0.838795, -0.450708,
		0.950156, -0.237348, -0.202161,
		36.284046, 31.498589, 42.252472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659855, 30.988598, 42.416679>,  <35.618938, 31.664734, 42.393986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659855, 30.988598, 42.416679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047432, 31.071093, 42.471245>,  <36.279980, 31.120590, 42.503986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047432, 31.071093, 42.471245>,  <35.659855, 30.988598, 42.416679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047432, 31.071093, 42.471245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002834, -0.560919, 0.827866,
		0.247257, -0.801770, -0.544085,
		0.968946, 0.206237, 0.136419,
		36.338116, 31.132963, 42.512169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942154, 30.374058, 42.622486>,  <35.659855, 30.988598, 42.416679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942154, 30.374058, 42.622486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209072, 30.643204, 42.750214>,  <36.369225, 30.804691, 42.826851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209072, 30.643204, 42.750214>,  <35.942154, 30.374058, 42.622486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209072, 30.643204, 42.750214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021959, -0.446326, 0.894601,
		0.744468, -0.589952, -0.312607,
		0.667297, 0.672867, 0.319320,
		36.409260, 30.845064, 42.846008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.576809, 30.045404, 42.909573>,  <35.942154, 30.374058, 42.622486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.576809, 30.045404, 42.909573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584167, 30.412500, 43.068275>,  <36.588581, 30.632757, 43.163498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584167, 30.412500, 43.068275>,  <36.576809, 30.045404, 42.909573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584167, 30.412500, 43.068275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032895, -0.396055, 0.917638,
		0.999290, -0.029930, 0.022904,
		0.018394, 0.917739, 0.396758,
		36.589687, 30.687822, 43.187302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095444, 30.075172, 43.450371>,  <36.576809, 30.045404, 42.909573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095444, 30.075172, 43.450371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815010, 30.349443, 43.528675>,  <36.646748, 30.514006, 43.575657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.815010, 30.349443, 43.528675>,  <37.095444, 30.075172, 43.450371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815010, 30.349443, 43.528675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007692, -0.281791, 0.959445,
		0.713035, 0.671148, 0.202835,
		-0.701087, 0.685678, 0.195765,
		36.604683, 30.555147, 43.587406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176266, 30.402769, 44.018715>,  <37.095444, 30.075172, 43.450371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176266, 30.402769, 44.018715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800461, 30.539675, 44.013470>,  <36.574978, 30.621819, 44.010323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.800461, 30.539675, 44.013470>,  <37.176266, 30.402769, 44.018715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800461, 30.539675, 44.013470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067042, -0.146225, 0.986977,
		0.335890, 0.928156, 0.160326,
		-0.939512, 0.342265, -0.013110,
		36.518608, 30.642355, 44.009537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.165684, 30.780807, 44.628719>,  <37.176266, 30.402769, 44.018715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.165684, 30.780807, 44.628719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786472, 30.698349, 44.531773>,  <36.558945, 30.648874, 44.473606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786472, 30.698349, 44.531773>,  <37.165684, 30.780807, 44.628719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786472, 30.698349, 44.531773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226539, -0.097564, 0.969103,
		-0.223423, 0.973645, 0.045793,
		-0.948031, -0.206146, -0.242367,
		36.502064, 30.636505, 44.459064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788120, 31.080627, 45.076069>,  <37.165684, 30.780807, 44.628719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788120, 31.080627, 45.076069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527882, 30.808359, 44.941364>,  <36.371738, 30.644999, 44.860542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.527882, 30.808359, 44.941364>,  <36.788120, 31.080627, 45.076069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.527882, 30.808359, 44.941364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275261, -0.201926, 0.939924,
		-0.707780, 0.704211, -0.055989,
		-0.650599, -0.680671, -0.336761,
		36.332703, 30.604158, 44.840336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063534, 31.160223, 45.443687>,  <36.788120, 31.080627, 45.076069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063534, 31.160223, 45.443687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118504, 30.789656, 45.303478>,  <36.151485, 30.567316, 45.219353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118504, 30.789656, 45.303478>,  <36.063534, 31.160223, 45.443687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118504, 30.789656, 45.303478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295254, -0.376107, 0.878276,
		-0.945484, -0.017204, -0.325215,
		0.137425, -0.926416, -0.350524,
		36.159733, 30.511730, 45.198322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.681698, 30.897602, 45.921673>,  <36.063534, 31.160223, 45.443687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.681698, 30.897602, 45.921673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815960, 30.560881, 45.752583>,  <35.896519, 30.358847, 45.651127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815960, 30.560881, 45.752583>,  <35.681698, 30.897602, 45.921673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815960, 30.560881, 45.752583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205387, -0.503370, 0.839306,
		-0.919322, -0.194894, -0.341854,
		0.335655, -0.841805, -0.422730,
		35.916656, 30.308340, 45.625763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.129467, 30.293665, 46.153091>,  <35.681698, 30.897602, 45.921673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.129467, 30.293665, 46.153091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482964, 30.123360, 46.075401>,  <35.695061, 30.021177, 46.028786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.482964, 30.123360, 46.075401>,  <35.129467, 30.293665, 46.153091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.482964, 30.123360, 46.075401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046701, -0.332729, 0.941865,
		-0.465637, -0.841437, -0.274163,
		0.883742, -0.425764, -0.194227,
		35.748085, 29.995630, 46.017132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229687, 29.516050, 46.253807>,  <35.129467, 30.293665, 46.153091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229687, 29.516050, 46.253807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603706, 29.639578, 46.323456>,  <35.828117, 29.713694, 46.365246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.603706, 29.639578, 46.323456>,  <35.229687, 29.516050, 46.253807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.603706, 29.639578, 46.323456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027803, -0.425751, 0.904413,
		0.353432, -0.850510, -0.389511,
		0.935046, 0.308819, 0.174121,
		35.884220, 29.732224, 46.375690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551453, 28.997673, 46.646305>,  <35.229687, 29.516050, 46.253807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551453, 28.997673, 46.646305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851002, 29.256060, 46.705513>,  <36.030731, 29.411093, 46.741039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.851002, 29.256060, 46.705513>,  <35.551453, 28.997673, 46.646305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851002, 29.256060, 46.705513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220575, -0.453578, 0.863489,
		0.624924, -0.613997, -0.482158,
		0.748877, 0.645968, 0.148020,
		36.075665, 29.449850, 46.749920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.214706, 28.669794, 46.741245>,  <35.551453, 28.997673, 46.646305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.214706, 28.669794, 46.741245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247246, 29.024801, 46.922661>,  <36.266769, 29.237804, 47.031509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247246, 29.024801, 46.922661>,  <36.214706, 28.669794, 46.741245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247246, 29.024801, 46.922661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110016, -0.460260, 0.880941,
		0.990595, -0.021769, -0.135084,
		0.081352, 0.887517, 0.453537,
		36.271652, 29.291056, 47.058723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760174, 28.552433, 47.189644>,  <36.214706, 28.669794, 46.741245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760174, 28.552433, 47.189644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614666, 28.894484, 47.337387>,  <36.527359, 29.099714, 47.426033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.614666, 28.894484, 47.337387>,  <36.760174, 28.552433, 47.189644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614666, 28.894484, 47.337387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022618, -0.404517, 0.914251,
		0.931213, 0.324226, 0.166494,
		-0.363774, 0.855128, 0.369358,
		36.505535, 29.151022, 47.448193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161915, 28.739077, 47.852234>,  <36.760174, 28.552433, 47.189644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161915, 28.739077, 47.852234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813126, 28.934855, 47.856411>,  <36.603851, 29.052320, 47.858917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813126, 28.934855, 47.856411>,  <37.161915, 28.739077, 47.852234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813126, 28.934855, 47.856411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178554, -0.337826, 0.924117,
		0.455832, 0.803939, 0.381967,
		-0.871972, 0.489444, 0.010445,
		36.551533, 29.081688, 47.859543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192764, 29.059898, 48.490601>,  <37.161915, 28.739077, 47.852234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192764, 29.059898, 48.490601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804695, 29.066248, 48.393837>,  <36.571854, 29.070059, 48.335777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804695, 29.066248, 48.393837>,  <37.192764, 29.059898, 48.490601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804695, 29.066248, 48.393837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230925, -0.364267, 0.902210,
		-0.073796, 0.931159, 0.357067,
		-0.970169, 0.015876, -0.241910,
		36.513645, 29.071011, 48.321262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827618, 29.451324, 49.077816>,  <37.192764, 29.059898, 48.490601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827618, 29.451324, 49.077816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558899, 29.216957, 48.896538>,  <36.397667, 29.076336, 48.787769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.558899, 29.216957, 48.896538>,  <36.827618, 29.451324, 49.077816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558899, 29.216957, 48.896538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159211, -0.483306, 0.860853,
		-0.723423, 0.650472, 0.231398,
		-0.671796, -0.585920, -0.453197,
		36.357361, 29.041182, 48.760578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633736, 29.550598, 49.817177>,  <36.827618, 29.451324, 49.077816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633736, 29.550598, 49.817177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655247, 29.831369, 50.101261>,  <36.668152, 29.999832, 50.271713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.655247, 29.831369, 50.101261>,  <36.633736, 29.550598, 49.817177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655247, 29.831369, 50.101261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142317, 0.709369, -0.690320,
		-0.988359, -0.063955, 0.138041,
		0.053773, 0.701929, 0.710213,
		36.671379, 30.041948, 50.314323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997166, 29.955620, 49.904377>,  <36.633736, 29.550598, 49.817177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997166, 29.955620, 49.904377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291756, 30.198334, 50.023991>,  <36.468510, 30.343962, 50.095760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291756, 30.198334, 50.023991>,  <35.997166, 29.955620, 49.904377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291756, 30.198334, 50.023991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297590, 0.687591, -0.662313,
		-0.607494, 0.398787, 0.686965,
		0.736472, 0.606785, 0.299033,
		36.512699, 30.380369, 50.113701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709534, 30.689701, 49.894283>,  <35.997166, 29.955620, 49.904377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709534, 30.689701, 49.894283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105751, 30.744577, 49.895660>,  <36.343479, 30.777504, 49.896488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105751, 30.744577, 49.895660>,  <35.709534, 30.689701, 49.894283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105751, 30.744577, 49.895660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106120, 0.781624, -0.614657,
		-0.087016, 0.608476, 0.788787,
		0.990539, 0.137191, 0.003442,
		36.402912, 30.785734, 49.896694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760017, 31.478142, 49.811310>,  <35.709534, 30.689701, 49.894283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760017, 31.478142, 49.811310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124088, 31.331638, 49.733910>,  <36.342529, 31.243736, 49.687469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.124088, 31.331638, 49.733910>,  <35.760017, 31.478142, 49.811310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.124088, 31.331638, 49.733910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056608, 0.572728, -0.817789,
		0.410343, 0.733375, 0.542014,
		0.910173, -0.366256, -0.193500,
		36.397141, 31.221762, 49.675861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163971, 32.039818, 49.562065>,  <35.760017, 31.478142, 49.811310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163971, 32.039818, 49.562065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325703, 31.702295, 49.420918>,  <36.422741, 31.499783, 49.336227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325703, 31.702295, 49.420918>,  <36.163971, 32.039818, 49.562065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325703, 31.702295, 49.420918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227239, 0.466396, -0.854890,
		0.885937, 0.265467, 0.380320,
		0.404325, -0.843802, -0.352873,
		36.446999, 31.449154, 49.315056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888668, 32.256176, 49.323009>,  <36.163971, 32.039818, 49.562065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888668, 32.256176, 49.323009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792553, 31.909325, 49.148491>,  <36.734882, 31.701214, 49.043781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792553, 31.909325, 49.148491>,  <36.888668, 32.256176, 49.323009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792553, 31.909325, 49.148491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333982, 0.348167, -0.875920,
		0.911438, -0.356185, 0.205945,
		-0.240286, -0.867128, -0.436292,
		36.720467, 31.649187, 49.017605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.075882, 32.513947, 48.720860>,  <36.888668, 32.256176, 49.323009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.075882, 32.513947, 48.720860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966499, 32.132225, 48.672642>,  <36.900867, 31.903193, 48.643711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966499, 32.132225, 48.672642>,  <37.075882, 32.513947, 48.720860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966499, 32.132225, 48.672642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114642, 0.092089, -0.989129,
		0.955027, -0.284307, 0.084220,
		-0.273461, -0.954300, -0.120541,
		36.884460, 31.845936, 48.636478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566502, 32.102783, 48.333565>,  <37.075882, 32.513947, 48.720860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566502, 32.102783, 48.333565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204124, 31.941179, 48.282890>,  <36.986698, 31.844215, 48.252487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204124, 31.941179, 48.282890>,  <37.566502, 32.102783, 48.333565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204124, 31.941179, 48.282890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114457, 0.054381, -0.991939,
		0.407647, -0.913135, -0.003023,
		-0.905938, -0.404015, -0.126683,
		36.932343, 31.819975, 48.244884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680855, 31.551310, 47.789951>,  <37.566502, 32.102783, 48.333565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680855, 31.551310, 47.789951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290901, 31.640385, 47.789200>,  <37.056927, 31.693830, 47.788750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.290901, 31.640385, 47.789200>,  <37.680855, 31.551310, 47.789951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.290901, 31.640385, 47.789200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055333, 0.234040, -0.970651,
		-0.215713, -0.946380, -0.240485,
		-0.974888, 0.222689, -0.001880,
		36.998436, 31.707191, 47.788635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487793, 31.248802, 47.177666>,  <37.680855, 31.551310, 47.789951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487793, 31.248802, 47.177666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201271, 31.515076, 47.261353>,  <37.029358, 31.674841, 47.311565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.201271, 31.515076, 47.261353>,  <37.487793, 31.248802, 47.177666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.201271, 31.515076, 47.261353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123160, 0.174511, -0.976922,
		-0.686834, -0.725540, -0.043017,
		-0.716303, 0.665686, 0.209218,
		36.986382, 31.714781, 47.324120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.887035, 31.179113, 46.748966>,  <37.487793, 31.248802, 47.177666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.887035, 31.179113, 46.748966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870430, 31.550997, 46.895344>,  <36.860466, 31.774126, 46.983170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870430, 31.550997, 46.895344>,  <36.887035, 31.179113, 46.748966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870430, 31.550997, 46.895344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214769, 0.349398, -0.912028,
		-0.975782, -0.116457, 0.185168,
		-0.041515, 0.929709, 0.365947,
		36.857975, 31.829910, 47.005127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368359, 31.539993, 46.418644>,  <36.887035, 31.179113, 46.748966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368359, 31.539993, 46.418644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545311, 31.871401, 46.555965>,  <36.651482, 32.070244, 46.638359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545311, 31.871401, 46.555965>,  <36.368359, 31.539993, 46.418644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545311, 31.871401, 46.555965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316720, 0.502461, -0.804501,
		-0.839038, 0.247169, 0.484689,
		0.442385, 0.828517, 0.343300,
		36.678028, 32.119957, 46.658955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849934, 32.079742, 46.266956>,  <36.368359, 31.539993, 46.418644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849934, 32.079742, 46.266956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194004, 32.277699, 46.316250>,  <36.400444, 32.396473, 46.345825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194004, 32.277699, 46.316250>,  <35.849934, 32.079742, 46.266956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194004, 32.277699, 46.316250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258304, 0.631093, -0.731438,
		-0.439752, 0.597332, 0.670681,
		0.860173, 0.494891, 0.123232,
		36.452057, 32.426167, 46.353218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722210, 32.836567, 46.353188>,  <35.849934, 32.079742, 46.266956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722210, 32.836567, 46.353188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101753, 32.775673, 46.242565>,  <36.329479, 32.739136, 46.176189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.101753, 32.775673, 46.242565>,  <35.722210, 32.836567, 46.353188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101753, 32.775673, 46.242565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070194, 0.752373, -0.654986,
		0.307789, 0.640904, 0.703212,
		0.948862, -0.152236, -0.276560,
		36.386414, 32.730003, 46.159595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179340, 33.500343, 46.422359>,  <35.722210, 32.836567, 46.353188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179340, 33.500343, 46.422359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308254, 33.248463, 46.139629>,  <36.385605, 33.097332, 45.969990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308254, 33.248463, 46.139629>,  <36.179340, 33.500343, 46.422359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308254, 33.248463, 46.139629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058520, 0.758492, -0.649049,
		0.944831, 0.167818, 0.281304,
		0.322289, -0.629704, -0.706826,
		36.404942, 33.059551, 45.927582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.431931, 33.939957, 45.988174>,  <36.179340, 33.500343, 46.422359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.431931, 33.939957, 45.988174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488831, 33.619785, 45.755253>,  <36.522968, 33.427681, 45.615501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.488831, 33.619785, 45.755253>,  <36.431931, 33.939957, 45.988174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.488831, 33.619785, 45.755253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194846, 0.554129, -0.809306,
		0.970464, 0.228580, -0.077138,
		0.142247, -0.800433, -0.582300,
		36.531506, 33.379654, 45.580563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698174, 34.322281, 45.415787>,  <36.431931, 33.939957, 45.988174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698174, 34.322281, 45.415787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602573, 33.947018, 45.315590>,  <36.545216, 33.721859, 45.255470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602573, 33.947018, 45.315590>,  <36.698174, 34.322281, 45.415787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602573, 33.947018, 45.315590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050865, 0.245522, -0.968056,
		0.969687, -0.244103, -0.010960,
		-0.238996, -0.938154, -0.250496,
		36.530876, 33.665573, 45.240440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071133, 34.039196, 44.843147>,  <36.698174, 34.322281, 45.415787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071133, 34.039196, 44.843147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713123, 33.860786, 44.842403>,  <36.498318, 33.753742, 44.841957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.713123, 33.860786, 44.842403>,  <37.071133, 34.039196, 44.843147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.713123, 33.860786, 44.842403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123414, 0.251662, -0.959914,
		0.428612, -0.858912, -0.280288,
		-0.895020, -0.446023, -0.001863,
		36.444618, 33.726978, 44.841843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025246, 33.559273, 44.267017>,  <37.071133, 34.039196, 44.843147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025246, 33.559273, 44.267017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639523, 33.617233, 44.355671>,  <36.408089, 33.652008, 44.408863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639523, 33.617233, 44.355671>,  <37.025246, 33.559273, 44.267017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639523, 33.617233, 44.355671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206739, 0.111022, -0.972077,
		-0.165463, -0.983198, -0.077102,
		-0.964303, 0.144903, 0.221635,
		36.350231, 33.660706, 44.422161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624466, 33.130257, 43.755508>,  <37.025246, 33.559273, 44.267017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624466, 33.130257, 43.755508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388313, 33.422405, 43.892918>,  <36.246620, 33.597694, 43.975361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388313, 33.422405, 43.892918>,  <36.624466, 33.130257, 43.755508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388313, 33.422405, 43.892918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219251, 0.264483, -0.939137,
		-0.776773, -0.629769, 0.003988,
		-0.590384, 0.730370, 0.343520,
		36.211197, 33.641518, 43.995975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178268, 33.122318, 43.312969>,  <36.624466, 33.130257, 43.755508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178268, 33.122318, 43.312969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094704, 33.476238, 43.479576>,  <36.044563, 33.688591, 43.579540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.094704, 33.476238, 43.479576>,  <36.178268, 33.122318, 43.312969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.094704, 33.476238, 43.479576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186832, 0.381958, -0.905098,
		-0.959922, -0.266903, 0.085514,
		-0.208911, 0.884800, 0.416516,
		36.032032, 33.741676, 43.604530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582081, 33.358135, 42.929607>,  <36.178268, 33.122318, 43.312969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582081, 33.358135, 42.929607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756790, 33.662853, 43.120979>,  <35.861618, 33.845684, 43.235802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756790, 33.662853, 43.120979>,  <35.582081, 33.358135, 42.929607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756790, 33.662853, 43.120979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006628, 0.529101, -0.848533,
		-0.899546, 0.373790, 0.226050,
		0.436776, 0.761796, 0.478428,
		35.887821, 33.891392, 43.264507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111618, 33.925758, 42.779701>,  <35.582081, 33.358135, 42.929607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111618, 33.925758, 42.779701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470753, 34.064392, 42.888340>,  <35.686234, 34.147572, 42.953522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470753, 34.064392, 42.888340>,  <35.111618, 33.925758, 42.779701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470753, 34.064392, 42.888340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047959, 0.536165, -0.842750,
		-0.437703, 0.769679, 0.464768,
		0.897840, 0.346584, 0.271594,
		35.740105, 34.168369, 42.969818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002304, 34.665985, 42.752872>,  <35.111618, 33.925758, 42.779701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002304, 34.665985, 42.752872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397232, 34.606304, 42.731220>,  <35.634190, 34.570496, 42.718227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397232, 34.606304, 42.731220>,  <35.002304, 34.665985, 42.752872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397232, 34.606304, 42.731220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046336, 0.597145, -0.800794,
		0.151805, 0.788134, 0.596489,
		0.987324, -0.149203, -0.054130,
		35.693428, 34.561543, 42.714981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276077, 35.329243, 42.662251>,  <35.002304, 34.665985, 42.752872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276077, 35.329243, 42.662251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551041, 35.069454, 42.532227>,  <35.716019, 34.913582, 42.454212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551041, 35.069454, 42.532227>,  <35.276077, 35.329243, 42.662251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551041, 35.069454, 42.532227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168128, 0.577717, -0.798734,
		0.706547, 0.494401, 0.506318,
		0.687404, -0.649470, -0.325062,
		35.757263, 34.874615, 42.434708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778481, 35.675018, 42.298775>,  <35.276077, 35.329243, 42.662251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778481, 35.675018, 42.298775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874893, 35.314285, 42.155331>,  <35.932743, 35.097847, 42.069263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874893, 35.314285, 42.155331>,  <35.778481, 35.675018, 42.298775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874893, 35.314285, 42.155331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310524, 0.421747, -0.851883,
		0.919498, 0.093976, 0.381696,
		0.241036, -0.901830, -0.358613,
		35.947205, 35.043736, 42.047745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.479946, 35.660873, 42.072044>,  <35.778481, 35.675018, 42.298775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.479946, 35.660873, 42.072044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327026, 35.341385, 41.886192>,  <36.235275, 35.149693, 41.774681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.327026, 35.341385, 41.886192>,  <36.479946, 35.660873, 42.072044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327026, 35.341385, 41.886192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297451, 0.369686, -0.880259,
		0.874852, -0.474731, 0.096249,
		-0.382304, -0.798726, -0.464630,
		36.212334, 35.101768, 41.746803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979870, 35.368328, 41.715191>,  <36.479946, 35.660873, 42.072044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979870, 35.368328, 41.715191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670425, 35.216595, 41.512161>,  <36.484760, 35.125557, 41.390343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670425, 35.216595, 41.512161>,  <36.979870, 35.368328, 41.715191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670425, 35.216595, 41.512161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466601, 0.200954, -0.861336,
		0.428732, -0.903175, 0.021536,
		-0.773610, -0.379331, -0.507578,
		36.438343, 35.102795, 41.359886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328835, 34.939575, 41.187019>,  <36.979870, 35.368328, 41.715191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328835, 34.939575, 41.187019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952297, 34.980209, 41.058296>,  <36.726376, 35.004589, 40.981064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952297, 34.980209, 41.058296>,  <37.328835, 34.939575, 41.187019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952297, 34.980209, 41.058296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331972, 0.107511, -0.937143,
		-0.060606, -0.989000, -0.134930,
		-0.941340, 0.101589, -0.321804,
		36.669895, 35.010685, 40.961754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.194771, 34.566551, 40.552940>,  <37.328835, 34.939575, 41.187019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.194771, 34.566551, 40.552940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929031, 34.865520, 40.552094>,  <36.769588, 35.044903, 40.551586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.929031, 34.865520, 40.552094>,  <37.194771, 34.566551, 40.552940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929031, 34.865520, 40.552094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377891, 0.333447, -0.863720,
		-0.644856, -0.574611, -0.503968,
		-0.664349, 0.747419, -0.002115,
		36.729725, 35.089745, 40.551460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816463, 34.493336, 39.896545>,  <37.194771, 34.566551, 40.552940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816463, 34.493336, 39.896545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795792, 34.872845, 40.021233>,  <36.783390, 35.100548, 40.096043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.795792, 34.872845, 40.021233>,  <36.816463, 34.493336, 39.896545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795792, 34.872845, 40.021233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190839, 0.315763, -0.929448,
		-0.980260, 0.011453, -0.197381,
		-0.051681, 0.948769, 0.311716,
		36.780289, 35.157475, 40.114746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533115, 34.731300, 39.356133>,  <36.816463, 34.493336, 39.896545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533115, 34.731300, 39.356133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627430, 35.068333, 39.549816>,  <36.684017, 35.270554, 39.666027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.627430, 35.068333, 39.549816>,  <36.533115, 34.731300, 39.356133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.627430, 35.068333, 39.549816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105132, 0.473217, -0.874650,
		-0.966102, 0.257135, 0.022994,
		0.235785, 0.842584, 0.484209,
		36.698166, 35.321106, 39.695080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.080482, 35.263165, 39.186211>,  <36.533115, 34.731300, 39.356133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.080482, 35.263165, 39.186211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420528, 35.439255, 39.301796>,  <36.624557, 35.544910, 39.371147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420528, 35.439255, 39.301796>,  <36.080482, 35.263165, 39.186211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420528, 35.439255, 39.301796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133367, 0.350855, -0.926884,
		-0.509426, 0.826497, 0.239556,
		0.850117, 0.440230, 0.288962,
		36.675564, 35.571323, 39.388485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097076, 35.893059, 38.890018>,  <36.080482, 35.263165, 39.186211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097076, 35.893059, 38.890018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479710, 35.879478, 39.005814>,  <36.709290, 35.871330, 39.075291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479710, 35.879478, 39.005814>,  <36.097076, 35.893059, 38.890018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479710, 35.879478, 39.005814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257808, 0.561913, -0.785996,
		-0.135976, 0.826499, 0.546268,
		0.956580, -0.033955, 0.289485,
		36.766685, 35.869293, 39.092659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348240, 36.594551, 38.809517>,  <36.097076, 35.893059, 38.890018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348240, 36.594551, 38.809517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686287, 36.381432, 38.826935>,  <36.889114, 36.253559, 38.837387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.686287, 36.381432, 38.826935>,  <36.348240, 36.594551, 38.809517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686287, 36.381432, 38.826935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444961, 0.655966, -0.609687,
		0.296274, 0.534637, 0.791445,
		0.845122, -0.532797, 0.043546,
		36.939823, 36.221592, 38.840000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003262, 37.036663, 39.036045>,  <36.348240, 36.594551, 38.809517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003262, 37.036663, 39.036045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138206, 36.741646, 38.802048>,  <37.219173, 36.564636, 38.661648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138206, 36.741646, 38.802048>,  <37.003262, 37.036663, 39.036045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138206, 36.741646, 38.802048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438190, 0.673034, -0.595832,
		0.833172, -0.055328, 0.550239,
		0.337363, -0.737540, -0.584997,
		37.239414, 36.520386, 38.626549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625095, 37.124329, 38.937336>,  <37.003262, 37.036663, 39.036045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625095, 37.124329, 38.937336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578583, 36.849113, 38.650814>,  <37.550674, 36.683987, 38.478901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.578583, 36.849113, 38.650814>,  <37.625095, 37.124329, 38.937336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.578583, 36.849113, 38.650814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726921, 0.432486, -0.533424,
		0.676805, -0.582720, 0.449858,
		-0.116280, -0.688036, -0.716300,
		37.543697, 36.642704, 38.435925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238518, 37.091770, 38.685715>,  <37.625095, 37.124329, 38.937336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238518, 37.091770, 38.685715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014008, 36.949898, 38.386604>,  <37.879303, 36.864773, 38.207138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.014008, 36.949898, 38.386604>,  <38.238518, 37.091770, 38.685715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.014008, 36.949898, 38.386604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572732, 0.485783, -0.660298,
		0.597455, -0.798884, -0.069518,
		-0.561272, -0.354682, -0.747779,
		37.845627, 36.843494, 38.162270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.676235, 37.056091, 38.189526>,  <38.238518, 37.091770, 38.685715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.676235, 37.056091, 38.189526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336155, 37.005890, 37.985012>,  <38.132107, 36.975769, 37.862305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.336155, 37.005890, 37.985012>,  <38.676235, 37.056091, 38.189526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.336155, 37.005890, 37.985012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376563, 0.533738, -0.757182,
		0.367922, -0.836286, -0.406522,
		-0.850196, -0.125503, -0.511288,
		38.081097, 36.968239, 37.831627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834270, 36.726646, 37.558323>,  <38.676235, 37.056091, 38.189526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834270, 36.726646, 37.558323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485806, 36.908592, 37.484383>,  <38.276726, 37.017757, 37.440018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.485806, 36.908592, 37.484383>,  <38.834270, 36.726646, 37.558323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485806, 36.908592, 37.484383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382406, 0.392456, -0.836507,
		-0.307951, -0.799424, -0.515837,
		-0.871167, 0.454862, -0.184847,
		38.224457, 37.045052, 37.428928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640198, 36.534786, 36.829784>,  <38.834270, 36.726646, 37.558323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640198, 36.534786, 36.829784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478580, 36.882210, 36.944576>,  <38.381611, 37.090664, 37.013451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.478580, 36.882210, 36.944576>,  <38.640198, 36.534786, 36.829784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.478580, 36.882210, 36.944576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435365, 0.458508, -0.774744,
		-0.804490, -0.188093, -0.563397,
		-0.404046, 0.868557, 0.286976,
		38.357368, 37.142776, 37.030670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.226021, 36.429909, 36.669693>,  <38.640198, 36.534786, 36.829784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.226021, 36.429909, 36.669693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134533, 36.059265, 36.550301>,  <39.079639, 35.836880, 36.478664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.134533, 36.059265, 36.550301>,  <39.226021, 36.429909, 36.669693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134533, 36.059265, 36.550301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690704, 0.061597, -0.720509,
		0.686013, -0.370956, 0.625922,
		-0.228722, -0.926605, -0.298477,
		39.065918, 35.781284, 36.460758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998768, 36.202541, 36.396847>,  <39.226021, 36.429909, 36.669693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998768, 36.202541, 36.396847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712387, 35.961876, 36.255192>,  <39.540558, 35.817478, 36.170197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.712387, 35.961876, 36.255192>,  <39.998768, 36.202541, 36.396847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712387, 35.961876, 36.255192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662107, -0.424277, -0.617740,
		0.221416, -0.676752, 0.702127,
		-0.715953, -0.601661, -0.354141,
		39.497601, 35.781376, 36.148949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527676, 35.736313, 36.427883>,  <39.998768, 36.202541, 36.396847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527676, 35.736313, 36.427883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806854, 36.016640, 36.368931>,  <40.974361, 36.184837, 36.333561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.806854, 36.016640, 36.368931>,  <40.527676, 35.736313, 36.427883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.806854, 36.016640, 36.368931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578331, -0.672944, -0.461171,
		-0.422375, 0.236640, -0.874986,
		0.697949, 0.700819, -0.147379,
		41.016239, 36.226887, 36.324718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.917278, 35.667831, 35.689411>,  <40.527676, 35.736313, 36.427883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.917278, 35.667831, 35.689411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138218, 35.807186, 35.992340>,  <41.270782, 35.890800, 36.174099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138218, 35.807186, 35.992340>,  <40.917278, 35.667831, 35.689411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138218, 35.807186, 35.992340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758207, -0.587534, -0.282711,
		0.346462, 0.730363, -0.588671,
		0.552347, 0.348386, 0.757325,
		41.303921, 35.911701, 36.219536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.647442, 35.870922, 35.447956>,  <40.917278, 35.667831, 35.689411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.647442, 35.870922, 35.447956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636410, 35.757721, 35.831444>,  <41.629791, 35.689800, 36.061539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.636410, 35.757721, 35.831444>,  <41.647442, 35.870922, 35.447956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636410, 35.757721, 35.831444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711530, -0.679204, -0.180022,
		0.702115, 0.677196, 0.220092,
		-0.027577, -0.282998, 0.958724,
		41.628136, 35.672821, 36.119061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276932, 35.859219, 35.818687>,  <41.647442, 35.870922, 35.447956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276932, 35.859219, 35.818687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014961, 35.579224, 35.932590>,  <41.857777, 35.411228, 36.000931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.014961, 35.579224, 35.932590>,  <42.276932, 35.859219, 35.818687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.014961, 35.579224, 35.932590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663145, -0.713046, -0.227604,
		0.362363, 0.039769, 0.931188,
		-0.654929, -0.699988, 0.284754,
		41.818481, 35.369228, 36.018017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.173042, 35.401917, 35.291576>,  <42.276932, 35.859219, 35.818687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.173042, 35.401917, 35.291576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556911, 35.447571, 35.394333>,  <42.787235, 35.474964, 35.455986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556911, 35.447571, 35.394333>,  <42.173042, 35.401917, 35.291576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556911, 35.447571, 35.394333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254422, -0.741290, -0.621095,
		0.119544, 0.661410, -0.740437,
		0.959677, 0.114135, 0.256893,
		42.844814, 35.481812, 35.471401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.549801, 35.283276, 34.632328>,  <42.173042, 35.401917, 35.291576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.549801, 35.283276, 34.632328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830048, 35.197090, 34.904419>,  <42.998196, 35.145378, 35.067673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.830048, 35.197090, 34.904419>,  <42.549801, 35.283276, 34.632328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830048, 35.197090, 34.904419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448466, -0.608523, -0.654659,
		0.554986, 0.763726, -0.329718,
		0.700621, -0.215459, 0.680227,
		43.040234, 35.132454, 35.108486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.129036, 35.343456, 34.173717>,  <42.549801, 35.283276, 34.632328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.129036, 35.343456, 34.173717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265621, 35.143627, 34.492168>,  <43.347572, 35.023727, 34.683239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.265621, 35.143627, 34.492168>,  <43.129036, 35.343456, 34.173717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.265621, 35.143627, 34.492168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433736, -0.667703, -0.605018,
		0.833831, 0.551904, -0.011315,
		0.341467, -0.499575, 0.796131,
		43.368061, 34.993755, 34.731007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.880070, 35.170605, 34.050610>,  <43.129036, 35.343456, 34.173717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.880070, 35.170605, 34.050610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791634, 34.905426, 34.336720>,  <43.738571, 34.746319, 34.508385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.791634, 34.905426, 34.336720>,  <43.880070, 35.170605, 34.050610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.791634, 34.905426, 34.336720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360796, -0.736991, -0.571551,
		0.906060, 0.131703, 0.402131,
		-0.221092, -0.662947, 0.715276,
		43.725307, 34.706543, 34.551304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.400372, 34.726414, 34.129326>,  <43.880070, 35.170605, 34.050610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.400372, 34.726414, 34.129326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137836, 34.482456, 34.306976>,  <43.980316, 34.336082, 34.413567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.137836, 34.482456, 34.306976>,  <44.400372, 34.726414, 34.129326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.137836, 34.482456, 34.306976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345566, -0.766300, -0.541635,
		0.670678, -0.202017, 0.713708,
		-0.656334, -0.609896, 0.444131,
		43.940937, 34.299488, 34.440216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776386, 34.062145, 34.419060>,  <44.400372, 34.726414, 34.129326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776386, 34.062145, 34.419060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390865, 33.958824, 34.392609>,  <44.159554, 33.896832, 34.376736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.390865, 33.958824, 34.392609>,  <44.776386, 34.062145, 34.419060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.390865, 33.958824, 34.392609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266271, -0.919502, -0.289164,
		0.013884, -0.296305, 0.954993,
		-0.963798, -0.258301, -0.066131,
		44.101727, 33.881332, 34.372768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649914, 33.422348, 34.773422>,  <44.776386, 34.062145, 34.419060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649914, 33.422348, 34.773422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330666, 33.466152, 34.536438>,  <44.139114, 33.492435, 34.394249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.330666, 33.466152, 34.536438>,  <44.649914, 33.422348, 34.773422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.330666, 33.466152, 34.536438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134580, -0.926091, -0.352483,
		-0.587270, -0.361058, 0.724397,
		-0.798124, 0.109513, -0.592456,
		44.091228, 33.499004, 34.358700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.260685, 32.864391, 34.925526>,  <44.649914, 33.422348, 34.773422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.260685, 32.864391, 34.925526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169926, 32.974106, 34.551727>,  <44.115471, 33.039932, 34.327446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169926, 32.974106, 34.551727>,  <44.260685, 32.864391, 34.925526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169926, 32.974106, 34.551727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175761, -0.932237, -0.316294,
		-0.957928, -0.236015, 0.163315,
		-0.226898, 0.274282, -0.934498,
		44.101856, 33.056389, 34.271378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.695236, 32.400078, 34.742805>,  <44.260685, 32.864391, 34.925526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.695236, 32.400078, 34.742805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875313, 32.514893, 34.404591>,  <43.983360, 32.583782, 34.201660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.875313, 32.514893, 34.404591>,  <43.695236, 32.400078, 34.742805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.875313, 32.514893, 34.404591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166258, -0.957311, -0.236462,
		-0.877317, -0.034125, -0.478696,
		0.450192, 0.287039, -0.845539,
		44.010372, 32.601006, 34.150928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561768, 31.834166, 34.298019>,  <43.695236, 32.400078, 34.742805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561768, 31.834166, 34.298019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855942, 32.027382, 34.107941>,  <44.032444, 32.143311, 33.993893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.855942, 32.027382, 34.107941>,  <43.561768, 31.834166, 34.298019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.855942, 32.027382, 34.107941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497242, -0.861137, -0.105800,
		-0.460314, -0.158478, -0.873496,
		0.735433, 0.483040, -0.475195,
		44.076572, 32.172295, 33.965382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.553246, 31.544935, 33.625340>,  <43.561768, 31.834166, 34.298019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.553246, 31.544935, 33.625340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901539, 31.716408, 33.721722>,  <44.110516, 31.819290, 33.779552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.901539, 31.716408, 33.721722>,  <43.553246, 31.544935, 33.625340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901539, 31.716408, 33.721722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421990, -0.902933, 0.081466,
		0.252492, 0.030747, -0.967110,
		0.870731, 0.428680, 0.240959,
		44.162758, 31.845013, 33.794010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952293, 31.079386, 33.334324>,  <43.553246, 31.544935, 33.625340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952293, 31.079386, 33.334324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207836, 31.291084, 33.557663>,  <44.361164, 31.418104, 33.691666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.207836, 31.291084, 33.557663>,  <43.952293, 31.079386, 33.334324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.207836, 31.291084, 33.557663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539214, -0.825706, 0.165705,
		0.548733, 0.195208, -0.812887,
		0.638859, 0.529248, 0.558351,
		44.399494, 31.449860, 33.725170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.633968, 30.885712, 33.097984>,  <43.952293, 31.079386, 33.334324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.633968, 30.885712, 33.097984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675983, 31.034836, 33.466763>,  <44.701195, 31.124310, 33.688030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675983, 31.034836, 33.466763>,  <44.633968, 30.885712, 33.097984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675983, 31.034836, 33.466763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368776, -0.875576, 0.312043,
		0.923564, 0.307213, -0.229455,
		0.105041, 0.372809, 0.921944,
		44.707497, 31.146679, 33.743347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.291714, 30.598530, 33.272694>,  <44.633968, 30.885712, 33.097984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.291714, 30.598530, 33.272694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149521, 30.727959, 33.623447>,  <45.064205, 30.805616, 33.833900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.149521, 30.727959, 33.623447>,  <45.291714, 30.598530, 33.272694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.149521, 30.727959, 33.623447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394977, -0.798280, 0.454688,
		0.847126, 0.507986, 0.155974,
		-0.355486, 0.323572, 0.876887,
		45.042873, 30.825031, 33.886513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867142, 30.474409, 33.734020>,  <45.291714, 30.598530, 33.272694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867142, 30.474409, 33.734020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529392, 30.496397, 33.947193>,  <45.326744, 30.509590, 34.075096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.529392, 30.496397, 33.947193>,  <45.867142, 30.474409, 33.734020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529392, 30.496397, 33.947193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306382, -0.766476, 0.564486,
		0.439507, 0.639916, 0.630350,
		-0.844372, 0.054968, 0.532931,
		45.276081, 30.512888, 34.107071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.101410, 30.351200, 34.476559>,  <45.867142, 30.474409, 33.734020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.101410, 30.351200, 34.476559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707012, 30.285824, 34.463242>,  <45.470375, 30.246597, 34.455254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.707012, 30.285824, 34.463242>,  <46.101410, 30.351200, 34.476559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.707012, 30.285824, 34.463242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084843, -0.663280, 0.743547,
		-0.143609, 0.730306, 0.667855,
		-0.985991, -0.163443, -0.033291,
		45.411217, 30.236792, 34.453255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.862759, 30.429010, 35.095455>,  <46.101410, 30.351200, 34.476559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.862759, 30.429010, 35.095455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601051, 30.192228, 34.907188>,  <45.444027, 30.050159, 34.794228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601051, 30.192228, 34.907188>,  <45.862759, 30.429010, 35.095455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.601051, 30.192228, 34.907188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110484, -0.690495, 0.714849,
		-0.748151, 0.415701, 0.517169,
		-0.654266, -0.591954, -0.470666,
		45.404770, 30.014643, 34.765987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393417, 30.107105, 35.580299>,  <45.862759, 30.429010, 35.095455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393417, 30.107105, 35.580299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388142, 29.866196, 35.261028>,  <45.384975, 29.721651, 35.069466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.388142, 29.866196, 35.261028>,  <45.393417, 30.107105, 35.580299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.388142, 29.866196, 35.261028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152189, -0.790160, 0.593705,
		-0.988263, -0.113643, 0.102081,
		-0.013190, -0.602273, -0.798181,
		45.384186, 29.685514, 35.021572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.222538, 29.462034, 35.878616>,  <45.393417, 30.107105, 35.580299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.222538, 29.462034, 35.878616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308666, 29.330833, 35.510693>,  <45.360344, 29.252113, 35.289936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.308666, 29.330833, 35.510693>,  <45.222538, 29.462034, 35.878616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.308666, 29.330833, 35.510693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038773, -0.938291, 0.343667,
		-0.975774, -0.109661, -0.189311,
		0.215316, -0.328002, -0.919812,
		45.373260, 29.232433, 35.234749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.769577, 29.002392, 35.798847>,  <45.222538, 29.462034, 35.878616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.769577, 29.002392, 35.798847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040718, 28.884935, 35.529243>,  <45.203403, 28.814461, 35.367481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.040718, 28.884935, 35.529243>,  <44.769577, 29.002392, 35.798847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040718, 28.884935, 35.529243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035711, -0.902542, 0.429119,
		-0.734327, -0.314951, -0.601307,
		0.677856, -0.293640, -0.674008,
		45.244076, 28.796843, 35.327042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.596287, 28.269392, 35.528301>,  <44.769577, 29.002392, 35.798847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.596287, 28.269392, 35.528301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988651, 28.327925, 35.477074>,  <45.224072, 28.363045, 35.446339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988651, 28.327925, 35.477074>,  <44.596287, 28.269392, 35.528301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988651, 28.327925, 35.477074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189438, -0.867753, 0.459476,
		-0.043894, -0.474965, -0.878909,
		0.980911, 0.146331, -0.128066,
		45.282925, 28.371824, 35.438652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.747532, 27.692200, 35.323521>,  <44.596287, 28.269392, 35.528301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.747532, 27.692200, 35.323521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095875, 27.836981, 35.456551>,  <45.304878, 27.923849, 35.536369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.095875, 27.836981, 35.456551>,  <44.747532, 27.692200, 35.323521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.095875, 27.836981, 35.456551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155283, -0.844521, 0.512515,
		0.466368, -0.394684, -0.791660,
		0.870855, 0.361951, 0.332570,
		45.357132, 27.945566, 35.556320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.210674, 27.172499, 35.088879>,  <44.747532, 27.692200, 35.323521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.210674, 27.172499, 35.088879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371609, 27.408785, 35.368645>,  <45.468170, 27.550556, 35.536503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.371609, 27.408785, 35.368645>,  <45.210674, 27.172499, 35.088879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371609, 27.408785, 35.368645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275006, -0.806675, 0.523113,
		0.873211, -0.018124, -0.487005,
		0.402335, 0.590717, 0.699413,
		45.492310, 27.586000, 35.578468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.935341, 26.950819, 35.149872>,  <45.210674, 27.172499, 35.088879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.935341, 26.950819, 35.149872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774986, 27.116531, 35.476715>,  <45.678772, 27.215958, 35.672821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.774986, 27.116531, 35.476715>,  <45.935341, 26.950819, 35.149872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.774986, 27.116531, 35.476715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261532, -0.803044, 0.535464,
		0.878002, 0.428361, 0.213584,
		-0.400889, 0.414280, 0.817105,
		45.654720, 27.240816, 35.721848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333866, 26.979052, 35.774456>,  <45.935341, 26.950819, 35.149872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333866, 26.979052, 35.774456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946301, 26.947439, 35.868229>,  <45.713760, 26.928471, 35.924492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.946301, 26.947439, 35.868229>,  <46.333866, 26.979052, 35.774456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.946301, 26.947439, 35.868229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165555, -0.911283, 0.377033,
		0.183834, 0.404124, 0.896041,
		-0.968915, -0.079033, 0.234430,
		45.655624, 26.923729, 35.938557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.716404, 26.417625, 36.002430>,  <46.333866, 26.979052, 35.774456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.716404, 26.417625, 36.002430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534809, 26.722078, 36.187717>,  <46.425850, 26.904751, 36.298889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534809, 26.722078, 36.187717>,  <46.716404, 26.417625, 36.002430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.534809, 26.722078, 36.187717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194131, -0.591888, 0.782292,
		0.869601, 0.265228, 0.416471,
		-0.453990, 0.761132, 0.463218,
		46.398613, 26.950418, 36.326683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.065479, 26.528049, 36.776871>,  <46.716404, 26.417625, 36.002430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.065479, 26.528049, 36.776871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686016, 26.645433, 36.729656>,  <46.458340, 26.715864, 36.701328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.686016, 26.645433, 36.729656>,  <47.065479, 26.528049, 36.776871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.686016, 26.645433, 36.729656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208525, -0.299607, 0.930996,
		0.237845, 0.907809, 0.345418,
		-0.948655, 0.293460, -0.118040,
		46.401421, 26.733471, 36.694244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.962528, 27.013187, 37.344997>,  <47.065479, 26.528049, 36.776871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.962528, 27.013187, 37.344997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628670, 26.862123, 37.184631>,  <46.428352, 26.771484, 37.088409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.628670, 26.862123, 37.184631>,  <46.962528, 27.013187, 37.344997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.628670, 26.862123, 37.184631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378739, -0.134965, 0.915610,
		-0.399899, 0.916055, -0.030386,
		-0.834648, -0.377660, -0.400919,
		46.378277, 26.748825, 37.064354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.769939, 26.324286, 37.599762>,  <46.962528, 27.013187, 37.344997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.769939, 26.324286, 37.599762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432850, 26.534506, 37.646439>,  <46.230595, 26.660637, 37.674442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432850, 26.534506, 37.646439>,  <46.769939, 26.324286, 37.599762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432850, 26.534506, 37.646439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235985, -0.555443, 0.797367,
		0.483869, 0.644423, 0.592106,
		-0.842723, 0.525549, 0.116687,
		46.180035, 26.692171, 37.681446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.608509, 26.446264, 38.367397>,  <46.769939, 26.324286, 37.599762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.608509, 26.446264, 38.367397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251869, 26.461624, 38.186924>,  <46.037884, 26.470840, 38.078640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.251869, 26.461624, 38.186924>,  <46.608509, 26.446264, 38.367397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.251869, 26.461624, 38.186924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402815, -0.522401, 0.751557,
		-0.206838, 0.851835, 0.481244,
		-0.891604, 0.038401, -0.451184,
		45.984386, 26.473145, 38.051567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.708698, 27.093758, 38.810501>,  <46.608509, 26.446264, 38.367397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.708698, 27.093758, 38.810501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928581, 26.953421, 38.507259>,  <47.060513, 26.869219, 38.325314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928581, 26.953421, 38.507259>,  <46.708698, 27.093758, 38.810501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.928581, 26.953421, 38.507259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016365, 0.911876, -0.410140,
		0.835195, 0.213052, 0.507010,
		0.549711, -0.350844, -0.758107,
		47.093494, 26.848167, 38.279827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.261921, 27.619337, 38.711773>,  <46.708698, 27.093758, 38.810501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.261921, 27.619337, 38.711773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223618, 27.427750, 38.362736>,  <47.200634, 27.312798, 38.153313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.223618, 27.427750, 38.362736>,  <47.261921, 27.619337, 38.711773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.223618, 27.427750, 38.362736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030402, 0.874805, -0.483520,
		0.994940, -0.072830, -0.069208,
		-0.095759, -0.478970, -0.872593,
		47.194889, 27.284060, 38.100960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.804214, 27.780170, 38.205032>,  <47.261921, 27.619337, 38.711773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.804214, 27.780170, 38.205032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450054, 27.662428, 38.061138>,  <47.237556, 27.591782, 37.974800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.450054, 27.662428, 38.061138>,  <47.804214, 27.780170, 38.205032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.450054, 27.662428, 38.061138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145249, 0.910384, -0.387433,
		0.441544, -0.290783, -0.848813,
		-0.885405, -0.294358, -0.359739,
		47.184433, 27.574120, 37.953217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.743629, 27.975792, 37.500996>,  <47.804214, 27.780170, 38.205032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.743629, 27.975792, 37.500996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370319, 27.946747, 37.641693>,  <47.146332, 27.929319, 37.726112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370319, 27.946747, 37.641693>,  <47.743629, 27.975792, 37.500996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.370319, 27.946747, 37.641693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222253, 0.886075, -0.406785,
		-0.282131, -0.457819, -0.843092,
		-0.933277, -0.072613, 0.351741,
		47.090336, 27.924963, 37.747215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.415688, 28.311262, 36.952282>,  <47.743629, 27.975792, 37.500996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.415688, 28.311262, 36.952282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183483, 28.319763, 37.277870>,  <47.044159, 28.324863, 37.473225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.183483, 28.319763, 37.277870>,  <47.415688, 28.311262, 36.952282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.183483, 28.319763, 37.277870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339906, 0.902066, -0.265971,
		-0.739910, -0.431074, -0.516438,
		-0.580514, 0.021255, 0.813973,
		47.009327, 28.326139, 37.522060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.653900, 28.409752, 36.699623>,  <47.415688, 28.311262, 36.952282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.653900, 28.409752, 36.699623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679283, 28.554354, 37.071705>,  <46.694511, 28.641115, 37.294956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.679283, 28.554354, 37.071705>,  <46.653900, 28.409752, 36.699623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.679283, 28.554354, 37.071705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361728, 0.877036, -0.316164,
		-0.930121, -0.316420, 0.186420,
		0.063457, 0.361505, 0.930208,
		46.698318, 28.662806, 37.350769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954346, 28.770454, 36.812675>,  <46.653900, 28.409752, 36.699623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954346, 28.770454, 36.812675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181412, 28.897110, 37.116650>,  <46.317650, 28.973103, 37.299034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181412, 28.897110, 37.116650>,  <45.954346, 28.770454, 36.812675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181412, 28.897110, 37.116650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414486, 0.907474, -0.068497,
		-0.711309, -0.276098, 0.646382,
		0.567663, 0.316639, 0.759933,
		46.351711, 28.992102, 37.344631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.476219, 29.178951, 37.260750>,  <45.954346, 28.770454, 36.812675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.476219, 29.178951, 37.260750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850983, 29.307070, 37.316765>,  <46.075840, 29.383940, 37.350372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.850983, 29.307070, 37.316765>,  <45.476219, 29.178951, 37.260750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.850983, 29.307070, 37.316765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297396, 0.940867, -0.162249,
		-0.183721, 0.110367, 0.976763,
		0.936911, 0.320294, 0.140035,
		46.132057, 29.403158, 37.358776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.443855, 29.744091, 37.738857>,  <45.476219, 29.178951, 37.260750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.443855, 29.744091, 37.738857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813404, 29.788843, 37.592464>,  <46.035133, 29.815695, 37.504631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813404, 29.788843, 37.592464>,  <45.443855, 29.744091, 37.738857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.813404, 29.788843, 37.592464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167042, 0.978296, -0.122611,
		0.344318, 0.174411, 0.922511,
		0.923873, 0.111880, -0.365979,
		46.090565, 29.822407, 37.482670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.754585, 30.400814, 38.042774>,  <45.443855, 29.744091, 37.738857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.754585, 30.400814, 38.042774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984985, 30.340681, 37.721371>,  <46.123226, 30.304602, 37.528530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.984985, 30.340681, 37.721371>,  <45.754585, 30.400814, 38.042774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.984985, 30.340681, 37.721371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135247, 0.951872, -0.275042,
		0.806183, 0.267096, 0.527947,
		0.576000, -0.150331, -0.803507,
		46.157787, 30.295582, 37.480320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214195, 30.928144, 37.984550>,  <45.754585, 30.400814, 38.042774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214195, 30.928144, 37.984550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206963, 30.798809, 37.606106>,  <46.202621, 30.721207, 37.379040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.206963, 30.798809, 37.606106>,  <46.214195, 30.928144, 37.984550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.206963, 30.798809, 37.606106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165058, 0.934247, -0.316131,
		0.986118, 0.150446, -0.070266,
		-0.018085, -0.323340, -0.946110,
		46.201538, 30.701807, 37.322273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.640747, 31.369167, 37.582584>,  <46.214195, 30.928144, 37.984550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.640747, 31.369167, 37.582584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382095, 31.200121, 37.328571>,  <46.226906, 31.098692, 37.176163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.382095, 31.200121, 37.328571>,  <46.640747, 31.369167, 37.582584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.382095, 31.200121, 37.328571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121512, 0.878934, -0.461204,
		0.753063, -0.221064, -0.619698,
		-0.646630, -0.422617, -0.635031,
		46.188107, 31.073336, 37.138062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.937340, 31.537989, 36.997536>,  <46.640747, 31.369167, 37.582584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.937340, 31.537989, 36.997536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546852, 31.471432, 36.941952>,  <46.312561, 31.431498, 36.908600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546852, 31.471432, 36.941952>,  <46.937340, 31.537989, 36.997536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546852, 31.471432, 36.941952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107638, 0.928442, -0.355542,
		0.188180, -0.332129, -0.924272,
		-0.976218, -0.166393, -0.138964,
		46.253986, 31.421515, 36.900261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.829369, 31.671820, 36.412434>,  <46.937340, 31.537989, 36.997536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.829369, 31.671820, 36.412434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467674, 31.736660, 36.570465>,  <46.250656, 31.775564, 36.665283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.467674, 31.736660, 36.570465>,  <46.829369, 31.671820, 36.412434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.467674, 31.736660, 36.570465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036867, 0.951333, -0.305952,
		-0.425442, -0.262087, -0.866204,
		-0.904234, 0.162099, 0.395075,
		46.196404, 31.785290, 36.688988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.561882, 32.084858, 35.946934>,  <46.829369, 31.671820, 36.412434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.561882, 32.084858, 35.946934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332600, 32.132755, 36.271179>,  <46.195030, 32.161495, 36.465725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.332600, 32.132755, 36.271179>,  <46.561882, 32.084858, 35.946934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.332600, 32.132755, 36.271179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047999, 0.982659, -0.179103,
		-0.818003, -0.141572, -0.557520,
		-0.573208, 0.119746, 0.810613,
		46.160637, 32.168678, 36.514362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.987701, 32.358868, 35.596630>,  <46.561882, 32.084858, 35.946934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.987701, 32.358868, 35.596630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948521, 32.440178, 35.986313>,  <45.925011, 32.488964, 36.220123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948521, 32.440178, 35.986313>,  <45.987701, 32.358868, 35.596630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948521, 32.440178, 35.986313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171045, 0.960912, -0.217695,
		-0.980382, -0.187958, -0.059357,
		-0.097954, 0.203272, 0.974210,
		45.919136, 32.501160, 36.278576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447311, 32.852455, 35.622658>,  <45.987701, 32.358868, 35.596630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447311, 32.852455, 35.622658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642330, 32.896629, 35.969093>,  <45.759342, 32.923134, 36.176952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.642330, 32.896629, 35.969093>,  <45.447311, 32.852455, 35.622658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.642330, 32.896629, 35.969093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215884, 0.976415, -0.002973,
		-0.845986, -0.185525, 0.499888,
		0.487546, 0.110433, 0.866085,
		45.788593, 32.929760, 36.228920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.962761, 33.075607, 36.216805>,  <45.447311, 32.852455, 35.622658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.962761, 33.075607, 36.216805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330956, 33.224033, 36.265827>,  <45.551872, 33.313091, 36.295238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.330956, 33.224033, 36.265827>,  <44.962761, 33.075607, 36.216805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.330956, 33.224033, 36.265827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380920, 0.921999, 0.069414,
		-0.087236, -0.110577, 0.990032,
		0.920483, 0.371067, 0.122552,
		45.607101, 33.335354, 36.302593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.725830, 33.662457, 36.515987>,  <44.962761, 33.075607, 36.216805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.725830, 33.662457, 36.515987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118931, 33.731930, 36.490589>,  <45.354790, 33.773613, 36.475349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118931, 33.731930, 36.490589>,  <44.725830, 33.662457, 36.515987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118931, 33.731930, 36.490589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162721, 0.975312, 0.149293,
		0.087862, -0.136386, 0.986752,
		0.982752, 0.173682, -0.063500,
		45.413757, 33.784035, 36.471539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817806, 34.189793, 37.009789>,  <44.725830, 33.662457, 36.515987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817806, 34.189793, 37.009789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148033, 34.170910, 36.784859>,  <45.346169, 34.159580, 36.649902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.148033, 34.170910, 36.784859>,  <44.817806, 34.189793, 37.009789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148033, 34.170910, 36.784859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139117, 0.982763, 0.121748,
		0.546884, -0.178740, 0.817905,
		0.825569, -0.047203, -0.562324,
		45.395702, 34.156750, 36.616161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395233, 34.465923, 37.393555>,  <44.817806, 34.189793, 37.009789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395233, 34.465923, 37.393555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442970, 34.518192, 36.999866>,  <45.471611, 34.549553, 36.763653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.442970, 34.518192, 36.999866>,  <45.395233, 34.465923, 37.393555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.442970, 34.518192, 36.999866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076136, 0.987177, 0.140301,
		0.989930, -0.091678, 0.107862,
		0.119341, 0.130676, -0.984216,
		45.478771, 34.557396, 36.704601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076897, 34.772053, 37.114723>,  <45.395233, 34.465923, 37.393555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076897, 34.772053, 37.114723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784195, 34.859062, 36.856354>,  <45.608574, 34.911266, 36.701332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.784195, 34.859062, 36.856354>,  <46.076897, 34.772053, 37.114723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.784195, 34.859062, 36.856354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298440, 0.954282, -0.016729,
		0.612757, -0.205012, -0.763216,
		-0.731753, 0.217523, -0.645927,
		45.564671, 34.924320, 36.662575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.380589, 35.084156, 36.509499>,  <46.076897, 34.772053, 37.114723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.380589, 35.084156, 36.509499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029625, 35.214863, 36.650002>,  <45.819046, 35.293285, 36.734303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.029625, 35.214863, 36.650002>,  <46.380589, 35.084156, 36.509499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.029625, 35.214863, 36.650002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372066, 0.925695, 0.068227,
		-0.302867, 0.190556, -0.933788,
		-0.877404, 0.326767, 0.351262,
		45.766403, 35.312893, 36.755379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.093513, 35.174778, 36.586700>,  <46.380589, 35.084156, 36.509499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.093513, 35.174778, 36.586700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231182, 34.832672, 36.431751>,  <47.313786, 34.627407, 36.338779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.231182, 34.832672, 36.431751>,  <47.093513, 35.174778, 36.586700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.231182, 34.832672, 36.431751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002267, 0.411823, -0.911261,
		0.938903, 0.314510, 0.139799,
		0.344173, -0.855269, -0.387375,
		47.334435, 34.576092, 36.315540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.398846, 35.396435, 35.900551>,  <47.093513, 35.174778, 36.586700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.398846, 35.396435, 35.900551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.408306, 34.999645, 35.850876>,  <47.413982, 34.761570, 35.821072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.408306, 34.999645, 35.850876>,  <47.398846, 35.396435, 35.900551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.408306, 34.999645, 35.850876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051755, 0.125272, -0.990772,
		0.998380, 0.017007, 0.054303,
		0.023653, -0.991977, -0.124189,
		47.415401, 34.702053, 35.813618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.982361, 35.099766, 35.616783>,  <47.398846, 35.396435, 35.900551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.982361, 35.099766, 35.616783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618690, 34.963551, 35.520924>,  <47.400490, 34.881821, 35.463409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.618690, 34.963551, 35.520924>,  <47.982361, 35.099766, 35.616783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.618690, 34.963551, 35.520924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075047, 0.432089, -0.898703,
		0.409586, -0.835067, -0.367291,
		-0.909179, -0.340532, -0.239647,
		47.345936, 34.861389, 35.449028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.916939, 34.717171, 34.922752>,  <47.982361, 35.099766, 35.616783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.916939, 34.717171, 34.922752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558083, 34.863480, 35.021828>,  <47.342770, 34.951267, 35.081272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558083, 34.863480, 35.021828>,  <47.916939, 34.717171, 34.922752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.558083, 34.863480, 35.021828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090671, 0.396285, -0.913639,
		-0.432341, -0.842120, -0.322358,
		-0.897140, 0.365775, 0.247686,
		47.288940, 34.973213, 35.096134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.295021, 36.376961, 46.038616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.109558, 36.039997, 45.928799>,  <33.998280, 35.837818, 45.862907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.109558, 36.039997, 45.928799>,  <34.295021, 36.376961, 46.038616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109558, 36.039997, 45.928799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173262, 0.390090, -0.904329,
		0.868909, -0.371730, -0.326825,
		-0.463657, -0.842405, -0.274546,
		33.970463, 35.787277, 45.846436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.648861, 36.045536, 45.394695>,  <34.295021, 36.376961, 46.038616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.648861, 36.045536, 45.394695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.260696, 35.951443, 45.416470>,  <34.027798, 35.894985, 45.429535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.260696, 35.951443, 45.416470>,  <34.648861, 36.045536, 45.394695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260696, 35.951443, 45.416470> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089872, 0.142663, -0.985683,
		0.224106, -0.961410, -0.159583,
		-0.970412, -0.235239, 0.054432,
		33.969574, 35.880871, 45.432800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647308, 35.630241, 44.834072>,  <34.648861, 36.045536, 45.394695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.647308, 35.630241, 44.834072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273125, 35.737885, 44.925720>,  <34.048615, 35.802471, 44.980709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.273125, 35.737885, 44.925720>,  <34.647308, 35.630241, 44.834072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273125, 35.737885, 44.925720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207020, 0.108233, -0.972331,
		-0.286462, -0.957009, -0.045536,
		-0.935458, 0.269110, 0.229125,
		33.992489, 35.818619, 44.994457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.293949, 35.458626, 44.201546>,  <34.647308, 35.630241, 44.834072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.293949, 35.458626, 44.201546> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.030716, 35.677429, 44.408508>,  <33.872776, 35.808712, 44.532684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.030716, 35.677429, 44.408508>,  <34.293949, 35.458626, 44.201546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030716, 35.677429, 44.408508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381026, 0.350755, -0.855448,
		-0.649422, -0.760098, -0.022400,
		-0.658081, 0.547011, 0.517405,
		33.833290, 35.841534, 44.563728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557922, 35.373211, 43.894398>,  <34.293949, 35.458626, 44.201546>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557922, 35.373211, 43.894398> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594307, 35.732761, 44.065857>,  <33.616138, 35.948494, 44.168732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594307, 35.732761, 44.065857>,  <33.557922, 35.373211, 43.894398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594307, 35.732761, 44.065857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444924, 0.421770, -0.790033,
		-0.890937, -0.118853, 0.438299,
		0.090964, 0.898879, 0.428651,
		33.621597, 36.002426, 44.194450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951691, 35.727676, 43.648575>,  <33.557922, 35.373211, 43.894398>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951691, 35.727676, 43.648575> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.235100, 35.976036, 43.782722>,  <33.405148, 36.125053, 43.863209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.235100, 35.976036, 43.782722>,  <32.951691, 35.727676, 43.648575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.235100, 35.976036, 43.782722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232888, 0.654342, -0.719444,
		-0.666148, 0.431643, 0.608219,
		0.708526, 0.620903, 0.335365,
		33.447659, 36.162308, 43.883331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641903, 36.427628, 43.638855>,  <32.951691, 35.727676, 43.648575>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641903, 36.427628, 43.638855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.034603, 36.497105, 43.607903>,  <33.270226, 36.538792, 43.589329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.034603, 36.497105, 43.607903>,  <32.641903, 36.427628, 43.638855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034603, 36.497105, 43.607903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180683, 0.725310, -0.664288,
		-0.059255, 0.666150, 0.743460,
		0.981755, 0.173693, -0.077383,
		33.329128, 36.549213, 43.584686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.648926, 37.100292, 43.400894>,  <32.641903, 36.427628, 43.638855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.648926, 37.100292, 43.400894> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.005627, 36.951977, 43.297134>,  <33.219646, 36.862988, 43.234879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.005627, 36.951977, 43.297134>,  <32.648926, 37.100292, 43.400894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005627, 36.951977, 43.297134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150273, 0.783353, -0.603139,
		0.426837, 0.498872, 0.754279,
		0.891756, -0.370789, -0.259397,
		33.273155, 36.840740, 43.219315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945923, 37.681072, 43.036987>,  <32.648926, 37.100292, 43.400894>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945923, 37.681072, 43.036987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.200539, 37.384167, 42.953220>,  <33.353310, 37.206024, 42.902962>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.200539, 37.384167, 42.953220>,  <32.945923, 37.681072, 43.036987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200539, 37.384167, 42.953220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305987, 0.492303, -0.814867,
		0.707946, 0.454617, 0.540495,
		0.636540, -0.742267, -0.209417,
		33.391502, 37.161488, 42.890396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609688, 37.968922, 42.934116>,  <32.945923, 37.681072, 43.036987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609688, 37.968922, 42.934116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627953, 37.620529, 42.738438>,  <33.638912, 37.411495, 42.621029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.627953, 37.620529, 42.738438>,  <33.609688, 37.968922, 42.934116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627953, 37.620529, 42.738438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224948, 0.486097, -0.844458,
		0.973300, -0.071482, 0.218122,
		0.045665, -0.870977, -0.489198,
		33.641651, 37.359238, 42.591679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285503, 37.949188, 42.517422>,  <33.609688, 37.968922, 42.934116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285503, 37.949188, 42.517422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041309, 37.670555, 42.366646>,  <33.894794, 37.503376, 42.276180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.041309, 37.670555, 42.366646>,  <34.285503, 37.949188, 42.517422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041309, 37.670555, 42.366646> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286696, 0.249298, -0.925016,
		0.738320, -0.672774, 0.047515,
		-0.610482, -0.696581, -0.376944,
		33.858166, 37.461582, 42.253563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605141, 37.554092, 41.906788>,  <34.285503, 37.949188, 42.517422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605141, 37.554092, 41.906788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209412, 37.510838, 41.867699>,  <33.971973, 37.484886, 41.844246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.209412, 37.510838, 41.867699>,  <34.605141, 37.554092, 41.906788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209412, 37.510838, 41.867699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083147, 0.131910, -0.987768,
		0.119697, -0.985347, -0.121511,
		-0.989323, -0.108130, -0.097718,
		33.912617, 37.478397, 41.838383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678005, 37.047401, 41.366318>,  <34.605141, 37.554092, 41.906788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.678005, 37.047401, 41.366318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316219, 37.215870, 41.393322>,  <34.099148, 37.316952, 41.409527>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.316219, 37.215870, 41.393322>,  <34.678005, 37.047401, 41.366318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316219, 37.215870, 41.393322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071067, 0.304865, -0.949740,
		-0.420584, -0.854210, -0.305671,
		-0.904466, 0.421168, 0.067515,
		34.044880, 37.342220, 41.413578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.405758, 36.940117, 40.766548>,  <34.678005, 37.047401, 41.366318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.405758, 36.940117, 40.766548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176151, 37.247047, 40.880894>,  <34.038387, 37.431206, 40.949501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176151, 37.247047, 40.880894>,  <34.405758, 36.940117, 40.766548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176151, 37.247047, 40.880894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035510, 0.372109, -0.927510,
		-0.818075, -0.522253, -0.240844,
		-0.574014, 0.767325, 0.285867,
		34.003948, 37.477245, 40.966656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100109, 36.970196, 40.160179>,  <34.405758, 36.940117, 40.766548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100109, 36.970196, 40.160179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.028996, 37.303387, 40.369766>,  <33.986328, 37.503300, 40.495518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.028996, 37.303387, 40.369766>,  <34.100109, 36.970196, 40.160179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028996, 37.303387, 40.369766> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082607, 0.543207, -0.835525,
		-0.980596, -0.105261, -0.165384,
		-0.177786, 0.832974, 0.523971,
		33.975658, 37.553280, 40.526958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653370, 37.381710, 39.773186>,  <34.100109, 36.970196, 40.160179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653370, 37.381710, 39.773186> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836971, 37.637089, 40.020313>,  <33.947132, 37.790314, 40.168591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.836971, 37.637089, 40.020313>,  <33.653370, 37.381710, 39.773186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.836971, 37.637089, 40.020313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224044, 0.589750, -0.775887,
		-0.859721, 0.494554, 0.127657,
		0.459003, 0.638445, 0.617822,
		33.974670, 37.828621, 40.205658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394119, 37.968277, 39.569027>,  <33.653370, 37.381710, 39.773186>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394119, 37.968277, 39.569027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.718910, 38.081692, 39.773102>,  <33.913784, 38.149742, 39.895546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.718910, 38.081692, 39.773102>,  <33.394119, 37.968277, 39.569027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718910, 38.081692, 39.773102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177790, 0.712401, -0.678878,
		-0.555949, 0.641942, 0.528045,
		0.811980, 0.283540, 0.510190,
		33.962505, 38.166752, 39.926159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.341553, 38.657490, 39.605881>,  <33.394119, 37.968277, 39.569027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.341553, 38.657490, 39.605881> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.724457, 38.551620, 39.652527>,  <33.954201, 38.488098, 39.680515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.724457, 38.551620, 39.652527>,  <33.341553, 38.657490, 39.605881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724457, 38.551620, 39.652527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264530, 0.638194, -0.723002,
		0.116940, 0.722949, 0.680933,
		0.957261, -0.264675, 0.116611,
		34.011635, 38.472218, 39.687511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700985, 39.265911, 39.443291>,  <33.341553, 38.657490, 39.605881>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700985, 39.265911, 39.443291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948307, 38.954693, 39.398857>,  <34.096703, 38.767963, 39.372196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.948307, 38.954693, 39.398857>,  <33.700985, 39.265911, 39.443291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.948307, 38.954693, 39.398857> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421719, 0.447710, -0.788485,
		0.663209, 0.440683, 0.604940,
		0.618310, -0.778045, -0.111081,
		34.133801, 38.721279, 39.365532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232189, 39.530373, 38.939995>,  <33.700985, 39.265911, 39.443291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232189, 39.530373, 38.939995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.328480, 39.142139, 38.941650>,  <34.386253, 38.909199, 38.942642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.328480, 39.142139, 38.941650>,  <34.232189, 39.530373, 38.939995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.328480, 39.142139, 38.941650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273383, 0.063717, -0.959793,
		0.931296, 0.232180, 0.280679,
		0.240728, -0.970584, 0.004135,
		34.400700, 38.850964, 38.942890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879021, 39.462475, 38.559528>,  <34.232189, 39.530373, 38.939995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879021, 39.462475, 38.559528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681477, 39.114658, 38.558922>,  <34.562950, 38.905968, 38.558559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.681477, 39.114658, 38.558922>,  <34.879021, 39.462475, 38.559528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681477, 39.114658, 38.558922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103513, -0.057065, -0.992990,
		0.863356, -0.490558, 0.118191,
		-0.493864, -0.869538, -0.001512,
		34.533318, 38.853798, 38.558468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621658, 39.481670, 38.305813>,  <34.879021, 39.462475, 38.559528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621658, 39.481670, 38.305813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003986, 39.461849, 38.189922>,  <36.233383, 39.449955, 38.120388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.003986, 39.461849, 38.189922>,  <35.621658, 39.481670, 38.305813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003986, 39.461849, 38.189922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199019, -0.616277, 0.761967,
		-0.216311, -0.785969, -0.579191,
		0.955825, -0.049552, -0.289730,
		36.290733, 39.446983, 38.103004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743252, 38.841908, 38.413097>,  <35.621658, 39.481670, 38.305813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743252, 38.841908, 38.413097> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092392, 39.027905, 38.472321>,  <36.301876, 39.139503, 38.507854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.092392, 39.027905, 38.472321>,  <35.743252, 38.841908, 38.413097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092392, 39.027905, 38.472321> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128519, -0.511725, 0.849482,
		0.470767, -0.722440, -0.506418,
		0.872847, 0.464992, 0.148056,
		36.354244, 39.167400, 38.516739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133297, 38.374180, 38.688580>,  <35.743252, 38.841908, 38.413097>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133297, 38.374180, 38.688580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382839, 38.682350, 38.741116>,  <36.532566, 38.867252, 38.772636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.382839, 38.682350, 38.741116>,  <36.133297, 38.374180, 38.688580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382839, 38.682350, 38.741116> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405785, -0.462934, 0.788055,
		0.667939, -0.438337, -0.601431,
		0.623856, 0.770424, 0.131341,
		36.569996, 38.913479, 38.780518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895592, 38.157555, 38.711014>,  <36.133297, 38.374180, 38.688580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895592, 38.157555, 38.711014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857208, 38.499500, 38.914974>,  <36.834179, 38.704666, 39.037350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.857208, 38.499500, 38.914974>,  <36.895592, 38.157555, 38.711014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857208, 38.499500, 38.914974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379016, -0.442295, 0.812848,
		0.920402, 0.271258, -0.281566,
		-0.095956, 0.854865, 0.509900,
		36.828423, 38.755959, 39.067944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.452148, 38.048935, 39.256218>,  <36.895592, 38.157555, 38.711014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.452148, 38.048935, 39.256218> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236858, 38.352764, 39.402294>,  <37.107685, 38.535061, 39.489941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.236858, 38.352764, 39.402294>,  <37.452148, 38.048935, 39.256218>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236858, 38.352764, 39.402294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224615, -0.288351, 0.930807,
		0.812318, 0.583012, -0.015413,
		-0.538227, 0.759573, 0.365186,
		37.075390, 38.580635, 39.511848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797737, 38.296902, 39.815907>,  <37.452148, 38.048935, 39.256218>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797737, 38.296902, 39.815907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424538, 38.415970, 39.896805>,  <37.200619, 38.487411, 39.945343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.424538, 38.415970, 39.896805>,  <37.797737, 38.296902, 39.815907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424538, 38.415970, 39.896805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130546, -0.243760, 0.961009,
		0.335360, 0.923025, 0.188569,
		-0.933001, 0.297667, 0.202245,
		37.144638, 38.505268, 39.957478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832233, 38.621532, 40.508568>,  <37.797737, 38.296902, 39.815907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832233, 38.621532, 40.508568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447086, 38.548069, 40.429420>,  <37.215996, 38.503990, 40.381931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.447086, 38.548069, 40.429420>,  <37.832233, 38.621532, 40.508568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.447086, 38.548069, 40.429420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155816, -0.220456, 0.962871,
		-0.220456, 0.957951, 0.183654,
		-0.962871, -0.183654, -0.197864,
		37.158226, 38.492973, 40.370060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434063, 39.095535, 40.934155>,  <37.832233, 38.621532, 40.508568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434063, 39.095535, 40.934155> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190670, 38.787014, 40.859489>,  <37.044636, 38.601902, 40.814690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.190670, 38.787014, 40.859489>,  <37.434063, 39.095535, 40.934155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190670, 38.787014, 40.859489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058030, -0.191341, 0.979807,
		-0.791444, 0.607025, 0.071668,
		-0.608480, -0.771304, -0.186661,
		37.008125, 38.555622, 40.803490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.867153, 39.155666, 41.380203>,  <37.434063, 39.095535, 40.934155>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.867153, 39.155666, 41.380203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839756, 38.770569, 41.275558>,  <36.823318, 38.539513, 41.212772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.839756, 38.770569, 41.275558>,  <36.867153, 39.155666, 41.380203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839756, 38.770569, 41.275558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122421, -0.252135, 0.959917,
		-0.990112, 0.097771, -0.100591,
		-0.068490, -0.962740, -0.261611,
		36.819210, 38.481747, 41.197075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.289265, 38.895039, 41.876373>,  <36.867153, 39.155666, 41.380203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.289265, 38.895039, 41.876373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448303, 38.552959, 41.743374>,  <36.543728, 38.347713, 41.663574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.448303, 38.552959, 41.743374>,  <36.289265, 38.895039, 41.876373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448303, 38.552959, 41.743374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092443, -0.397866, 0.912774,
		-0.912890, -0.332182, -0.237248,
		0.397600, -0.855194, -0.332500,
		36.567585, 38.296402, 41.643623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869972, 38.319126, 42.155289>,  <36.289265, 38.895039, 41.876373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869972, 38.319126, 42.155289> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216137, 38.143059, 42.059525>,  <36.423836, 38.037418, 42.002068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.216137, 38.143059, 42.059525>,  <35.869972, 38.319126, 42.155289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216137, 38.143059, 42.059525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025724, -0.438142, 0.898538,
		-0.500402, -0.783763, -0.367850,
		0.865411, -0.440167, -0.239409,
		36.475761, 38.011009, 41.987701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752800, 37.682827, 42.490479>,  <35.869972, 38.319126, 42.155289>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752800, 37.682827, 42.490479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147644, 37.731766, 42.449207>,  <36.384552, 37.761127, 42.424446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.147644, 37.731766, 42.449207>,  <35.752800, 37.682827, 42.490479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147644, 37.731766, 42.449207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142741, -0.381476, 0.913291,
		0.072380, -0.916246, -0.394023,
		0.987110, 0.122347, -0.103175,
		36.443775, 37.768471, 42.418255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966694, 37.117229, 42.794601>,  <35.752800, 37.682827, 42.490479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966694, 37.117229, 42.794601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285656, 37.356297, 42.761253>,  <36.477032, 37.499737, 42.741245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.285656, 37.356297, 42.761253>,  <35.966694, 37.117229, 42.794601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285656, 37.356297, 42.761253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309810, -0.286904, 0.906479,
		0.517851, -0.748655, -0.413939,
		0.797401, 0.597663, -0.083367,
		36.524876, 37.535595, 42.736244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558163, 36.691120, 42.784836>,  <35.966694, 37.117229, 42.794601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558163, 36.691120, 42.784836> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665421, 37.045200, 42.936893>,  <36.729774, 37.257648, 43.028130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.665421, 37.045200, 42.936893>,  <36.558163, 36.691120, 42.784836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665421, 37.045200, 42.936893> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334057, -0.455550, 0.825155,
		0.903607, -0.094269, -0.417862,
		0.268144, 0.885205, 0.380146,
		36.745865, 37.310760, 43.050938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196201, 36.535526, 43.082073>,  <36.558163, 36.691120, 42.784836>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196201, 36.535526, 43.082073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086746, 36.885742, 43.241348>,  <37.021072, 37.095871, 43.336914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.086746, 36.885742, 43.241348>,  <37.196201, 36.535526, 43.082073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086746, 36.885742, 43.241348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255366, -0.332994, 0.907691,
		0.927314, 0.350059, -0.132464,
		-0.273636, 0.875542, 0.398183,
		37.004654, 37.148403, 43.360802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702522, 36.630791, 43.483864>,  <37.196201, 36.535526, 43.082073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702522, 36.630791, 43.483864> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434143, 36.890804, 43.626568>,  <37.273113, 37.046814, 43.712193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.434143, 36.890804, 43.626568>,  <37.702522, 36.630791, 43.483864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.434143, 36.890804, 43.626568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170385, -0.333105, 0.927367,
		0.721659, 0.683006, 0.112742,
		-0.670953, 0.650033, 0.356762,
		37.232857, 37.085815, 43.733597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.982269, 37.009068, 44.105598>,  <37.702522, 36.630791, 43.483864>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.982269, 37.009068, 44.105598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583603, 37.011135, 44.138187>,  <37.344402, 37.012375, 44.157742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.583603, 37.011135, 44.138187>,  <37.982269, 37.009068, 44.105598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583603, 37.011135, 44.138187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072540, -0.401820, 0.912841,
		0.037458, 0.915704, 0.400104,
		-0.996662, 0.005170, 0.081477,
		37.284603, 37.012688, 44.162632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.806973, 37.371861, 44.753902>,  <37.982269, 37.009068, 44.105598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.806973, 37.371861, 44.753902> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465691, 37.176697, 44.680157>,  <37.260921, 37.059597, 44.635910>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.465691, 37.176697, 44.680157>,  <37.806973, 37.371861, 44.753902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.465691, 37.176697, 44.680157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073891, -0.236838, 0.968735,
		-0.516319, 0.840150, 0.166018,
		-0.853202, -0.487909, -0.184364,
		37.209728, 37.030323, 44.624847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425175, 37.521080, 45.314877>,  <37.806973, 37.371861, 44.753902>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425175, 37.521080, 45.314877> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242153, 37.193680, 45.175915>,  <37.132339, 36.997238, 45.092537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.242153, 37.193680, 45.175915>,  <37.425175, 37.521080, 45.314877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242153, 37.193680, 45.175915> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047112, -0.412474, 0.909750,
		-0.887931, 0.399896, 0.227292,
		-0.457557, -0.818504, -0.347409,
		37.104885, 36.948128, 45.071693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.644073, 37.361221, 45.643066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732849, 37.000572, 45.494564>,  <36.786114, 36.784184, 45.405464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.732849, 37.000572, 45.494564>,  <36.644073, 37.361221, 45.643066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732849, 37.000572, 45.494564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272285, -0.422910, 0.864296,
		-0.936272, -0.090730, -0.339356,
		0.221935, -0.901618, -0.371254,
		36.799431, 36.730087, 45.383186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.093266, 36.920662, 45.879768>,  <36.644073, 37.361221, 45.643066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.093266, 36.920662, 45.879768> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363853, 36.648567, 45.766872>,  <36.526207, 36.485310, 45.699135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363853, 36.648567, 45.766872>,  <36.093266, 36.920662, 45.879768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363853, 36.648567, 45.766872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130757, -0.488084, 0.862947,
		-0.724766, -0.546855, -0.419122,
		0.676474, -0.680238, -0.282241,
		36.566795, 36.444496, 45.682201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752071, 36.393776, 45.813171>,  <36.093266, 36.920662, 45.879768>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752071, 36.393776, 45.813171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126335, 36.270042, 45.881119>,  <36.350895, 36.195801, 45.921886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.126335, 36.270042, 45.881119>,  <35.752071, 36.393776, 45.813171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126335, 36.270042, 45.881119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327123, -0.579615, 0.746349,
		-0.132415, -0.753895, -0.643512,
		0.935659, -0.309336, 0.169867,
		36.407032, 36.177242, 45.932079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.808834, 35.599190, 45.793365>,  <35.752071, 36.393776, 45.813171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.808834, 35.599190, 45.793365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107925, 35.732582, 46.023041>,  <36.287380, 35.812618, 46.160847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.107925, 35.732582, 46.023041>,  <35.808834, 35.599190, 45.793365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107925, 35.732582, 46.023041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145470, -0.761456, 0.631683,
		0.647872, -0.555855, -0.520852,
		0.747730, 0.333481, 0.574187,
		36.332245, 35.832626, 46.195297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997490, 34.970284, 46.227398>,  <35.808834, 35.599190, 45.793365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997490, 34.970284, 46.227398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176929, 35.280228, 46.405544>,  <36.284592, 35.466194, 46.512432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.176929, 35.280228, 46.405544>,  <35.997490, 34.970284, 46.227398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176929, 35.280228, 46.405544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054118, -0.473853, 0.878940,
		0.892094, -0.418392, -0.170635,
		0.448598, 0.774862, 0.445363,
		36.311508, 35.512688, 46.539154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484196, 34.690556, 46.675598>,  <35.997490, 34.970284, 46.227398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484196, 34.690556, 46.675598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450932, 35.049324, 46.849316>,  <36.430973, 35.264587, 46.953545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450932, 35.049324, 46.849316>,  <36.484196, 34.690556, 46.675598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450932, 35.049324, 46.849316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161139, -0.442172, 0.882337,
		0.983422, 0.003397, 0.181301,
		-0.083163, 0.896924, 0.434294,
		36.425983, 35.318401, 46.979603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803524, 34.630062, 47.337383>,  <36.484196, 34.690556, 46.675598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803524, 34.630062, 47.337383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600334, 34.973381, 47.366470>,  <36.478420, 35.179375, 47.383923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.600334, 34.973381, 47.366470>,  <36.803524, 34.630062, 47.337383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600334, 34.973381, 47.366470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131796, -0.160868, 0.978137,
		0.851232, 0.487281, 0.194837,
		-0.507971, 0.858300, 0.072715,
		36.447945, 35.230869, 47.388287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100468, 35.038475, 47.846355>,  <36.803524, 34.630062, 47.337383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100468, 35.038475, 47.846355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717258, 35.147701, 47.811440>,  <36.487331, 35.213238, 47.790489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.717258, 35.147701, 47.811440>,  <37.100468, 35.038475, 47.846355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717258, 35.147701, 47.811440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170580, -0.298257, 0.939119,
		0.230407, 0.914591, 0.332318,
		-0.958027, 0.273067, -0.087290,
		36.429852, 35.229622, 47.785252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921661, 35.459515, 48.449516>,  <37.100468, 35.038475, 47.846355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921661, 35.459515, 48.449516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572712, 35.323860, 48.308689>,  <36.363342, 35.242466, 48.224194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.572712, 35.323860, 48.308689>,  <36.921661, 35.459515, 48.449516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.572712, 35.323860, 48.308689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220856, -0.369087, 0.902772,
		-0.436110, 0.865309, 0.247080,
		-0.872371, -0.339139, -0.352071,
		36.311001, 35.222118, 48.203068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.288059, 35.707611, 48.931770>,  <36.921661, 35.459515, 48.449516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.288059, 35.707611, 48.931770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178673, 35.366123, 48.754513>,  <36.113041, 35.161228, 48.648159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.178673, 35.366123, 48.754513>,  <36.288059, 35.707611, 48.931770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178673, 35.366123, 48.754513> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154797, -0.415641, 0.896259,
		-0.949345, 0.313691, -0.018491,
		-0.273463, -0.853721, -0.443145,
		36.096634, 35.110008, 48.621571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933395, 35.428226, 49.472031>,  <36.288059, 35.707611, 48.931770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.933395, 35.428226, 49.472031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000870, 35.114471, 49.233273>,  <36.041355, 34.926220, 49.090019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.000870, 35.114471, 49.233273>,  <35.933395, 35.428226, 49.472031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000870, 35.114471, 49.233273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020586, -0.608245, 0.793482,
		-0.985454, -0.121564, -0.118751,
		0.168689, -0.784385, -0.596895,
		36.051476, 34.879154, 49.054203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480370, 34.926018, 49.685745>,  <35.933395, 35.428226, 49.472031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480370, 34.926018, 49.685745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764561, 34.710358, 49.504841>,  <35.935078, 34.580963, 49.396297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.764561, 34.710358, 49.504841>,  <35.480370, 34.926018, 49.685745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.764561, 34.710358, 49.504841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107498, -0.551974, 0.826903,
		-0.695459, -0.636114, -0.334209,
		0.710479, -0.539150, -0.452257,
		35.977703, 34.548611, 49.369164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419128, 34.211098, 49.841335>,  <35.480370, 34.926018, 49.685745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419128, 34.211098, 49.841335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785240, 34.184139, 49.682480>,  <36.004910, 34.167965, 49.587166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.785240, 34.184139, 49.682480>,  <35.419128, 34.211098, 49.841335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785240, 34.184139, 49.682480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282241, -0.596137, 0.751639,
		-0.287403, -0.800049, -0.526613,
		0.915281, -0.067392, -0.397138,
		36.059826, 34.163921, 49.563339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511665, 33.553135, 49.839993>,  <35.419128, 34.211098, 49.841335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511665, 33.553135, 49.839993> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854931, 33.757130, 49.863541>,  <36.060890, 33.879524, 49.877670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.854931, 33.757130, 49.863541>,  <35.511665, 33.553135, 49.839993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.854931, 33.757130, 49.863541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283620, -0.566570, 0.773666,
		0.427915, -0.647236, -0.630853,
		0.858166, 0.509985, 0.058874,
		36.112381, 33.910126, 49.881203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997334, 32.992516, 49.887527>,  <35.511665, 33.553135, 49.839993>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997334, 32.992516, 49.887527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167679, 33.324116, 50.032524>,  <36.269886, 33.523075, 50.119522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.167679, 33.324116, 50.032524>,  <35.997334, 32.992516, 49.887527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167679, 33.324116, 50.032524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376613, -0.526701, 0.762069,
		0.822679, -0.188018, -0.536515,
		0.425865, 0.828997, 0.362496,
		36.295437, 33.572815, 50.141273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713123, 32.818977, 49.980274>,  <35.997334, 32.992516, 49.887527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713123, 32.818977, 49.980274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640091, 33.131554, 50.218941>,  <36.596272, 33.319099, 50.362141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.640091, 33.131554, 50.218941>,  <36.713123, 32.818977, 49.980274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640091, 33.131554, 50.218941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286033, -0.538399, 0.792661,
		0.940664, 0.315394, -0.125215,
		-0.182585, 0.781443, 0.596665,
		36.585316, 33.365986, 50.397942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065594, 32.667313, 50.556210>,  <36.713123, 32.818977, 49.980274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.065594, 32.667313, 50.556210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839161, 32.963589, 50.700947>,  <36.703300, 33.141354, 50.787788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.839161, 32.963589, 50.700947>,  <37.065594, 32.667313, 50.556210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839161, 32.963589, 50.700947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048998, -0.407936, 0.911694,
		0.822889, 0.533827, 0.194635,
		-0.566085, 0.740687, 0.361843,
		36.669334, 33.185795, 50.809498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.477619, 32.872292, 51.156364>,  <37.065594, 32.667313, 50.556210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.477619, 32.872292, 51.156364> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098297, 32.995106, 51.188480>,  <36.870705, 33.068794, 51.207748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.098297, 32.995106, 51.188480>,  <37.477619, 32.872292, 51.156364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098297, 32.995106, 51.188480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073382, -0.458282, 0.885772,
		0.308757, 0.834091, 0.457122,
		-0.948306, 0.307033, 0.080291,
		36.813805, 33.087215, 51.212566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403397, 33.135406, 51.832180>,  <37.477619, 32.872292, 51.156364>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403397, 33.135406, 51.832180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027142, 33.056633, 51.721611>,  <36.801388, 33.009369, 51.655270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.027142, 33.056633, 51.721611>,  <37.403397, 33.135406, 51.832180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027142, 33.056633, 51.721611> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182471, -0.393283, 0.901129,
		-0.286177, 0.898079, 0.334003,
		-0.940642, -0.196936, -0.276421,
		36.744949, 32.997551, 51.638683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027191, 33.247108, 52.424416>,  <37.403397, 33.135406, 51.832180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027191, 33.247108, 52.424416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.772591, 33.031311, 52.203938>,  <36.619831, 32.901833, 52.071651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.772591, 33.031311, 52.203938>,  <37.027191, 33.247108, 52.424416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772591, 33.031311, 52.203938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328668, -0.456793, 0.826630,
		-0.697741, 0.707312, 0.113437,
		-0.636503, -0.539491, -0.551194,
		36.581638, 32.869465, 52.038578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516735, 33.199940, 52.861412>,  <37.027191, 33.247108, 52.424416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516735, 33.199940, 52.861412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465614, 32.907288, 52.593567>,  <36.434940, 32.731697, 52.432861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.465614, 32.907288, 52.593567>,  <36.516735, 33.199940, 52.861412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465614, 32.907288, 52.593567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358729, -0.595338, 0.718948,
		-0.924651, 0.332093, -0.186373,
		-0.127802, -0.731633, -0.669612,
		36.427273, 32.687798, 52.392685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757690, 32.971924, 52.828598>,  <36.516735, 33.199940, 52.861412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757690, 32.971924, 52.828598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023308, 32.694534, 52.716785>,  <36.182678, 32.528099, 52.649700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023308, 32.694534, 52.716785>,  <35.757690, 32.971924, 52.828598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023308, 32.694534, 52.716785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288299, -0.582422, 0.760045,
		-0.689880, -0.424112, -0.586681,
		0.664041, -0.693479, -0.279530,
		36.222519, 32.486492, 52.632927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409649, 32.306160, 52.834137>,  <35.757690, 32.971924, 52.828598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409649, 32.306160, 52.834137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.790783, 32.281277, 52.952950>,  <36.019463, 32.266346, 53.024239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.790783, 32.281277, 52.952950>,  <35.409649, 32.306160, 52.834137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.790783, 32.281277, 52.952950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297913, -0.378276, 0.876445,
		0.057835, -0.923600, -0.378969,
		0.952840, -0.062210, 0.297030,
		36.076633, 32.262615, 53.042057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564857, 31.626570, 53.110386>,  <35.409649, 32.306160, 52.834137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564857, 31.626570, 53.110386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899170, 31.810068, 53.231068>,  <36.099758, 31.920168, 53.303474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899170, 31.810068, 53.231068>,  <35.564857, 31.626570, 53.110386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899170, 31.810068, 53.231068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031848, -0.508054, 0.860736,
		0.548142, -0.728994, -0.410010,
		0.835779, 0.458748, 0.301703,
		36.149902, 31.947693, 53.321579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591206, 31.229473, 52.489342>,  <35.564857, 31.626570, 53.110386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591206, 31.229473, 52.489342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272766, 31.012356, 52.382305>,  <35.081703, 30.882086, 52.318085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.272766, 31.012356, 52.382305>,  <35.591206, 31.229473, 52.489342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272766, 31.012356, 52.382305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081701, 0.534524, -0.841195,
		0.599630, -0.647809, -0.469880,
		-0.796096, -0.542796, -0.267590,
		35.033936, 30.849518, 52.302029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.759563, 31.015688, 51.789135>,  <35.591206, 31.229473, 52.489342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.759563, 31.015688, 51.789135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362835, 30.996778, 51.836559>,  <35.124798, 30.985432, 51.865013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.362835, 30.996778, 51.836559>,  <35.759563, 31.015688, 51.789135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362835, 30.996778, 51.836559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126615, 0.481878, -0.867042,
		-0.016143, -0.874962, -0.483922,
		-0.991821, -0.047275, 0.118562,
		35.065289, 30.982595, 51.872128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403080, 30.744579, 51.155376>,  <35.759563, 31.015688, 51.789135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403080, 30.744579, 51.155376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077068, 30.909113, 51.318607>,  <34.881462, 31.007833, 51.416546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.077068, 30.909113, 51.318607>,  <35.403080, 30.744579, 51.155376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.077068, 30.909113, 51.318607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243851, 0.395377, -0.885558,
		-0.525606, -0.821268, -0.221940,
		-0.815031, 0.411334, 0.408080,
		34.832558, 31.032513, 51.441032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.756226, 30.587841, 50.763126>,  <35.403080, 30.744579, 51.155376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.756226, 30.587841, 50.763126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632919, 30.906961, 50.970390>,  <34.558937, 31.098433, 51.094749>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.632919, 30.906961, 50.970390>,  <34.756226, 30.587841, 50.763126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632919, 30.906961, 50.970390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240291, 0.461725, -0.853856,
		-0.920454, -0.387720, 0.049372,
		-0.308261, 0.797799, 0.518162,
		34.540440, 31.146301, 51.125839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106842, 30.754070, 50.390205>,  <34.756226, 30.587841, 50.763126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106842, 30.754070, 50.390205> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225464, 31.080753, 50.588211>,  <34.296638, 31.276764, 50.707016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.225464, 31.080753, 50.588211>,  <34.106842, 30.754070, 50.390205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225464, 31.080753, 50.588211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352422, 0.575337, -0.738096,
		-0.887612, 0.044429, 0.458444,
		0.296553, 0.816709, 0.495018,
		34.314430, 31.325766, 50.736717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510998, 31.263891, 50.283188>,  <34.106842, 30.754070, 50.390205>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510998, 31.263891, 50.283188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803715, 31.506104, 50.408287>,  <33.979343, 31.651430, 50.483345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803715, 31.506104, 50.408287>,  <33.510998, 31.263891, 50.283188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803715, 31.506104, 50.408287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264735, 0.675421, -0.688275,
		-0.628008, 0.420879, 0.654574,
		0.731793, 0.605531, 0.312748,
		34.023254, 31.687763, 50.502113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.235001, 31.950218, 50.438591>,  <33.510998, 31.263891, 50.283188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.235001, 31.950218, 50.438591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621025, 31.994200, 50.343449>,  <33.852638, 32.020588, 50.286366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.621025, 31.994200, 50.343449>,  <33.235001, 31.950218, 50.438591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621025, 31.994200, 50.343449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258277, 0.552331, -0.792605,
		0.044224, 0.826342, 0.561430,
		0.965058, 0.109952, -0.237851,
		33.910542, 32.027187, 50.272095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349815, 32.638718, 50.305271>,  <33.235001, 31.950218, 50.438591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349815, 32.638718, 50.305271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687084, 32.499619, 50.141258>,  <33.889446, 32.416161, 50.042850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.687084, 32.499619, 50.141258>,  <33.349815, 32.638718, 50.305271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687084, 32.499619, 50.141258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047772, 0.711181, -0.701384,
		0.535510, 0.610978, 0.583039,
		0.843177, -0.347745, -0.410032,
		33.940037, 32.395294, 50.018250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.757977, 33.302784, 50.039692>,  <33.349815, 32.638718, 50.305271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.757977, 33.302784, 50.039692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902691, 32.981678, 49.850094>,  <33.989521, 32.789013, 49.736336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902691, 32.981678, 49.850094>,  <33.757977, 33.302784, 50.039692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902691, 32.981678, 49.850094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060509, 0.527585, -0.847344,
		0.930295, 0.277877, 0.239448,
		0.361787, -0.802769, -0.473996,
		34.011227, 32.740849, 49.707893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.415085, 33.452953, 49.707134>,  <33.757977, 33.302784, 50.039692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.415085, 33.452953, 49.707134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.267601, 33.147823, 49.494667>,  <34.179111, 32.964745, 49.367188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.267601, 33.147823, 49.494667>,  <34.415085, 33.452953, 49.707134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267601, 33.147823, 49.494667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038313, 0.583419, -0.811267,
		0.928753, -0.278774, -0.244341,
		-0.368713, -0.762829, -0.531171,
		34.156986, 32.918976, 49.335316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910736, 33.308567, 49.272324>,  <34.415085, 33.452953, 49.707134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910736, 33.308567, 49.272324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573399, 33.165985, 49.111469>,  <34.370998, 33.080437, 49.014957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.573399, 33.165985, 49.111469>,  <34.910736, 33.308567, 49.272324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573399, 33.165985, 49.111469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085805, 0.649405, -0.755587,
		0.530484, -0.671722, -0.517084,
		-0.843341, -0.356458, -0.402136,
		34.320396, 33.059048, 48.990829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026348, 33.312168, 48.548660>,  <34.910736, 33.308567, 49.272324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026348, 33.312168, 48.548660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628567, 33.277058, 48.525486>,  <34.389896, 33.255993, 48.511581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628567, 33.277058, 48.525486>,  <35.026348, 33.312168, 48.548660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628567, 33.277058, 48.525486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020017, 0.698771, -0.715065,
		0.103248, -0.709940, -0.696653,
		-0.994454, -0.087774, -0.057936,
		34.330231, 33.250725, 48.508106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782524, 33.171951, 47.836617>,  <35.026348, 33.312168, 48.548660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782524, 33.171951, 47.836617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442295, 33.298676, 48.004498>,  <34.238155, 33.374710, 48.105228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442295, 33.298676, 48.004498>,  <34.782524, 33.171951, 47.836617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442295, 33.298676, 48.004498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156478, 0.609499, -0.777191,
		-0.502032, -0.726734, -0.468851,
		-0.850576, 0.316810, 0.419706,
		34.187122, 33.393719, 48.130409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340225, 32.975742, 47.326595>,  <34.782524, 33.171951, 47.836617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340225, 32.975742, 47.326595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185711, 33.263882, 47.557034>,  <34.093002, 33.436764, 47.695297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.185711, 33.263882, 47.557034>,  <34.340225, 32.975742, 47.326595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.185711, 33.263882, 47.557034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227788, 0.530728, -0.816358,
		-0.893810, -0.446574, -0.040926,
		-0.386285, 0.720346, 0.576095,
		34.069824, 33.479984, 47.729862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797550, 33.272324, 46.973087>,  <34.340225, 32.975742, 47.326595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797550, 33.272324, 46.973087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864025, 33.570534, 47.231258>,  <33.903912, 33.749458, 47.386162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.864025, 33.570534, 47.231258>,  <33.797550, 33.272324, 46.973087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864025, 33.570534, 47.231258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078926, 0.662488, -0.744903,
		-0.982931, 0.072852, 0.168938,
		0.166188, 0.745522, 0.645430,
		33.913883, 33.794189, 47.424889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472652, 33.799252, 46.641689>,  <33.797550, 33.272324, 46.973087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472652, 33.799252, 46.641689> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673519, 34.032051, 46.897537>,  <33.794037, 34.171730, 47.051044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.673519, 34.032051, 46.897537>,  <33.472652, 33.799252, 46.641689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673519, 34.032051, 46.897537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128271, 0.781586, -0.610466,
		-0.855206, 0.224509, 0.467137,
		0.502164, 0.581995, 0.639620,
		33.824169, 34.206650, 47.089424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058723, 34.460480, 46.775036>,  <33.472652, 33.799252, 46.641689>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058723, 34.460480, 46.775036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440746, 34.553478, 46.848587>,  <33.669960, 34.609276, 46.892719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.440746, 34.553478, 46.848587>,  <33.058723, 34.460480, 46.775036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.440746, 34.553478, 46.848587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044870, 0.726577, -0.685618,
		-0.293007, 0.646554, 0.704354,
		0.955057, 0.232495, 0.183882,
		33.727264, 34.623226, 46.903751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148045, 35.100677, 47.150951>,  <33.058723, 34.460480, 46.775036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148045, 35.100677, 47.150951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.502716, 35.045822, 46.974319>,  <33.715519, 35.012909, 46.868340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.502716, 35.045822, 46.974319>,  <33.148045, 35.100677, 47.150951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.502716, 35.045822, 46.974319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187852, 0.765791, -0.615042,
		0.422503, 0.628296, 0.653249,
		0.886681, -0.137143, -0.441575,
		33.768719, 35.004681, 46.841846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.426826, 35.726349, 47.036610>,  <33.148045, 35.100677, 47.150951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.426826, 35.726349, 47.036610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627960, 35.487907, 46.786228>,  <33.748642, 35.344841, 46.636002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.627960, 35.487907, 46.786228>,  <33.426826, 35.726349, 47.036610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627960, 35.487907, 46.786228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155372, 0.650033, -0.743853,
		0.850305, 0.471289, 0.234240,
		0.502833, -0.596107, -0.625951,
		33.778809, 35.309074, 46.598442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.769730, 36.248329, 46.675056>,  <33.426826, 35.726349, 47.036610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.769730, 36.248329, 46.675056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.775787, 35.920891, 46.445389>,  <33.779423, 35.724426, 46.307587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.775787, 35.920891, 46.445389>,  <33.769730, 36.248329, 46.675056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775787, 35.920891, 46.445389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113367, 0.569125, -0.814398,
		0.993438, 0.077426, -0.084182,
		0.015145, -0.818597, -0.574168,
		33.780331, 35.675312, 46.273140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<46.439621, 28.478025, 36.020184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.129063, 28.305798, 35.836086>,  <45.942730, 28.202461, 35.725628>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.129063, 28.305798, 35.836086>,  <46.439621, 28.478025, 36.020184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129063, 28.305798, 35.836086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068887, 0.667905, -0.741051,
		0.626471, -0.607053, -0.488897,
		-0.776394, -0.430569, -0.460242,
		45.896145, 28.176626, 35.698013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568874, 28.494040, 35.273239>,  <46.439621, 28.478025, 36.020184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568874, 28.494040, 35.273239> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.174110, 28.471777, 35.333778>,  <45.937252, 28.458420, 35.370102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.174110, 28.471777, 35.333778>,  <46.568874, 28.494040, 35.273239>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.174110, 28.471777, 35.333778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152360, 0.629248, -0.762124,
		-0.052815, -0.775209, -0.629493,
		-0.986913, -0.055658, 0.151344,
		45.878036, 28.455080, 35.379181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.312531, 28.482555, 34.659950>,  <46.568874, 28.494040, 35.273239>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.312531, 28.482555, 34.659950> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.978157, 28.593231, 34.849545>,  <45.777534, 28.659636, 34.963303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.978157, 28.593231, 34.849545>,  <46.312531, 28.482555, 34.659950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978157, 28.593231, 34.849545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114323, 0.756896, -0.643459,
		-0.536794, -0.592075, -0.601081,
		-0.835932, 0.276688, 0.473985,
		45.727379, 28.676237, 34.991741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.897381, 28.799810, 34.179108>,  <46.312531, 28.482555, 34.659950>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.897381, 28.799810, 34.179108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.692486, 28.909883, 34.504532>,  <45.569550, 28.975927, 34.699787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.692486, 28.909883, 34.504532>,  <45.897381, 28.799810, 34.179108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.692486, 28.909883, 34.504532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397870, 0.763462, -0.508748,
		-0.761123, -0.584294, -0.281590,
		-0.512242, 0.275184, 0.813561,
		45.538815, 28.992439, 34.748600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.388454, 29.120396, 33.901524>,  <45.897381, 28.799810, 34.179108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.388454, 29.120396, 33.901524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360550, 29.258755, 34.275795>,  <45.343807, 29.341770, 34.500359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.360550, 29.258755, 34.275795>,  <45.388454, 29.120396, 33.901524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.360550, 29.258755, 34.275795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388819, 0.854351, -0.344824,
		-0.918669, -0.387864, 0.074890,
		-0.069762, 0.345898, 0.935675,
		45.339622, 29.362524, 34.556496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.670574, 29.286583, 33.971668>,  <45.388454, 29.120396, 33.901524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.670574, 29.286583, 33.971668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894798, 29.498566, 34.226200>,  <45.029331, 29.625755, 34.378922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.894798, 29.498566, 34.226200>,  <44.670574, 29.286583, 33.971668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.894798, 29.498566, 34.226200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409154, 0.845313, -0.343567,
		-0.719976, -0.067768, 0.690682,
		0.560560, 0.529956, 0.636333,
		45.062965, 29.657553, 34.417099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184933, 29.806938, 34.245075>,  <44.670574, 29.286583, 33.971668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184933, 29.806938, 34.245075> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551937, 29.946043, 34.322269>,  <44.772141, 30.029505, 34.368587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.551937, 29.946043, 34.322269>,  <44.184933, 29.806938, 34.245075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.551937, 29.946043, 34.322269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303640, 0.925877, -0.224844,
		-0.256874, 0.147697, 0.955092,
		0.917506, 0.347761, 0.192987,
		44.827190, 30.050371, 34.380165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.147705, 30.427784, 34.610977>,  <44.184933, 29.806938, 34.245075>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.147705, 30.427784, 34.610977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.511139, 30.425379, 34.443913>,  <44.729198, 30.423937, 34.343674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.511139, 30.425379, 34.443913>,  <44.147705, 30.427784, 34.610977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.511139, 30.425379, 34.443913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124650, 0.950436, -0.284840,
		0.398675, 0.310863, 0.862799,
		0.908582, -0.006011, -0.417664,
		44.783714, 30.423576, 34.318615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470551, 31.033880, 34.979877>,  <44.147705, 30.427784, 34.610977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470551, 31.033880, 34.979877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661400, 30.981819, 34.632221>,  <44.775909, 30.950583, 34.423626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.661400, 30.981819, 34.632221>,  <44.470551, 31.033880, 34.979877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.661400, 30.981819, 34.632221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295378, 0.907691, -0.298076,
		0.827709, 0.398945, 0.394639,
		0.477126, -0.130153, -0.869144,
		44.804539, 30.942774, 34.371479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.858433, 31.684103, 34.930782>,  <44.470551, 31.033880, 34.979877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.858433, 31.684103, 34.930782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.815392, 31.526569, 34.565636>,  <44.789566, 31.432049, 34.346550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.815392, 31.526569, 34.565636>,  <44.858433, 31.684103, 34.930782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815392, 31.526569, 34.565636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338611, 0.877814, -0.338799,
		0.934754, 0.272651, -0.227809,
		-0.107600, -0.393832, -0.912863,
		44.783112, 31.408421, 34.291779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.240108, 32.137951, 34.445587>,  <44.858433, 31.684103, 34.930782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.240108, 32.137951, 34.445587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977150, 31.921316, 34.236012>,  <44.819374, 31.791336, 34.110264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.977150, 31.921316, 34.236012>,  <45.240108, 32.137951, 34.445587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.977150, 31.921316, 34.236012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279045, 0.820838, -0.498357,
		0.699972, -0.181416, -0.690744,
		-0.657398, -0.541584, -0.523940,
		44.779930, 31.758841, 34.078831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324806, 32.381165, 33.891964>,  <45.240108, 32.137951, 34.445587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324806, 32.381165, 33.891964> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.963482, 32.209606, 33.888527>,  <44.746689, 32.106670, 33.886463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.963482, 32.209606, 33.888527>,  <45.324806, 32.381165, 33.891964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.963482, 32.209606, 33.888527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420678, 0.889562, -0.178072,
		0.084021, -0.157238, -0.983980,
		-0.903311, -0.428900, -0.008595,
		44.692490, 32.080936, 33.885948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.045502, 32.735859, 33.316406>,  <45.324806, 32.381165, 33.891964>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.045502, 32.735859, 33.316406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735706, 32.573036, 33.510094>,  <44.549828, 32.475342, 33.626305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.735706, 32.573036, 33.510094>,  <45.045502, 32.735859, 33.316406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735706, 32.573036, 33.510094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511684, 0.853194, -0.101192,
		-0.371941, -0.326139, -0.869076,
		-0.774493, -0.407054, 0.484218,
		44.503357, 32.450920, 33.655357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.514797, 33.172531, 33.064064>,  <45.045502, 32.735859, 33.316406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.514797, 33.172531, 33.064064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358448, 32.998817, 33.388687>,  <44.264641, 32.894588, 33.583462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.358448, 32.998817, 33.388687>,  <44.514797, 33.172531, 33.064064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.358448, 32.998817, 33.388687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538984, 0.822714, 0.180661,
		-0.746135, -0.366801, -0.555643,
		-0.390869, -0.434281, 0.811555,
		44.241188, 32.868534, 33.632153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.809990, 33.316708, 33.059322>,  <44.514797, 33.172531, 33.064064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.809990, 33.316708, 33.059322> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889622, 33.234638, 33.442627>,  <43.937401, 33.185398, 33.672611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.889622, 33.234638, 33.442627>,  <43.809990, 33.316708, 33.059322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.889622, 33.234638, 33.442627> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549898, 0.785996, 0.282528,
		-0.811161, -0.583192, 0.043647,
		0.199075, -0.205174, 0.958265,
		43.949345, 33.173084, 33.730106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175472, 33.473297, 33.451069>,  <43.809990, 33.316708, 33.059322>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175472, 33.473297, 33.451069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457157, 33.479240, 33.735001>,  <43.626167, 33.482807, 33.905361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.457157, 33.479240, 33.735001>,  <43.175472, 33.473297, 33.451069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.457157, 33.479240, 33.735001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430646, 0.803804, 0.410417,
		-0.564470, -0.594708, 0.572447,
		0.704214, 0.014854, 0.709832,
		43.668423, 33.483696, 33.947948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864635, 33.616459, 34.115337>,  <43.175472, 33.473297, 33.451069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864635, 33.616459, 34.115337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.241577, 33.716450, 34.204308>,  <43.467743, 33.776443, 34.257690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.241577, 33.716450, 34.204308>,  <42.864635, 33.616459, 34.115337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.241577, 33.716450, 34.204308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333462, 0.756571, 0.562498,
		-0.027673, -0.604246, 0.796317,
		0.942357, 0.249976, 0.222430,
		43.524284, 33.791443, 34.271038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.975792, 33.720322, 34.896328>,  <42.864635, 33.616459, 34.115337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.975792, 33.720322, 34.896328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.262093, 33.938808, 34.722271>,  <43.433872, 34.069901, 34.617836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.262093, 33.938808, 34.722271>,  <42.975792, 33.720322, 34.896328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.262093, 33.938808, 34.722271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016804, 0.636380, 0.771193,
		0.698156, -0.544668, 0.464667,
		0.715749, 0.546221, -0.435140,
		43.476818, 34.102676, 34.591728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.207363, 33.921436, 35.487823>,  <42.975792, 33.720322, 34.896328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.207363, 33.921436, 35.487823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360001, 34.126404, 35.180103>,  <43.451584, 34.249382, 34.995472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.360001, 34.126404, 35.180103>,  <43.207363, 33.921436, 35.487823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.360001, 34.126404, 35.180103> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023629, 0.826595, 0.562301,
		0.924029, -0.232747, 0.303314,
		0.381592, 0.512416, -0.769297,
		43.474480, 34.280128, 34.949314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.854786, 34.197243, 35.712475>,  <43.207363, 33.921436, 35.487823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.854786, 34.197243, 35.712475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.665535, 34.420700, 35.439983>,  <43.551983, 34.554775, 35.276489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.665535, 34.420700, 35.439983>,  <43.854786, 34.197243, 35.712475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.665535, 34.420700, 35.439983> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247451, 0.657855, 0.711333,
		0.845527, 0.505124, -0.173015,
		-0.473130, 0.558639, -0.681228,
		43.523598, 34.588291, 35.235615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875168, 34.904434, 36.061047>,  <43.854786, 34.197243, 35.712475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875168, 34.904434, 36.061047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633270, 34.977882, 35.751060>,  <43.488132, 35.021950, 35.565067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.633270, 34.977882, 35.751060>,  <43.875168, 34.904434, 36.061047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633270, 34.977882, 35.751060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379165, 0.789329, 0.482900,
		0.700374, 0.585870, -0.407717,
		-0.604740, 0.183618, -0.774967,
		43.451847, 35.032967, 35.518570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499493, 35.166050, 35.897179>,  <43.875168, 34.904434, 36.061047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499493, 35.166050, 35.897179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.843559, 35.262547, 36.076920>,  <45.049999, 35.320446, 36.184765>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.843559, 35.262547, 36.076920>,  <44.499493, 35.166050, 35.897179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843559, 35.262547, 36.076920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253269, -0.966790, 0.034224,
		0.442684, 0.084368, -0.892700,
		0.860166, 0.241244, 0.449351,
		45.101608, 35.334919, 36.211723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.036472, 34.764862, 35.518169>,  <44.499493, 35.166050, 35.897179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.036472, 34.764862, 35.518169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227787, 34.854553, 35.857807>,  <45.342575, 34.908367, 36.061592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.227787, 34.854553, 35.857807>,  <45.036472, 34.764862, 35.518169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.227787, 34.854553, 35.857807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417897, -0.908483, 0.004509,
		0.772401, 0.352678, -0.528218,
		0.478287, 0.224223, 0.849097,
		45.371273, 34.921822, 36.112537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.703159, 34.601727, 35.423817>,  <45.036472, 34.764862, 35.518169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.703159, 34.601727, 35.423817> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658878, 34.587143, 35.821091>,  <45.632309, 34.578392, 36.059456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.658878, 34.587143, 35.821091>,  <45.703159, 34.601727, 35.423817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.658878, 34.587143, 35.821091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560946, -0.827228, 0.032156,
		0.820417, 0.560683, 0.112032,
		-0.110705, -0.036463, 0.993184,
		45.625668, 34.576202, 36.119045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.408459, 34.385635, 35.795780>,  <45.703159, 34.601727, 35.423817>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.408459, 34.385635, 35.795780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095070, 34.303337, 36.030331>,  <45.907036, 34.253956, 36.171059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.095070, 34.303337, 36.030331>,  <46.408459, 34.385635, 35.795780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.095070, 34.303337, 36.030331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273080, -0.961599, 0.027464,
		0.558204, 0.181645, 0.809576,
		-0.783476, -0.205749, 0.586372,
		45.860027, 34.241611, 36.206242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.710552, 33.974670, 36.242035>,  <46.408459, 34.385635, 35.795780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.710552, 33.974670, 36.242035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322590, 33.910957, 36.315701>,  <46.089813, 33.872730, 36.359901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.322590, 33.910957, 36.315701>,  <46.710552, 33.974670, 36.242035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.322590, 33.910957, 36.315701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195874, -0.959695, 0.201541,
		0.144643, 0.231549, 0.962010,
		-0.969903, -0.159281, 0.184168,
		46.031620, 33.863174, 36.370953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711292, 33.628574, 36.877972>,  <46.710552, 33.974670, 36.242035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711292, 33.628574, 36.877972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366150, 33.547318, 36.692837>,  <46.159065, 33.498566, 36.581757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.366150, 33.547318, 36.692837>,  <46.711292, 33.628574, 36.877972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.366150, 33.547318, 36.692837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094960, -0.964529, 0.246305,
		-0.496451, 0.168575, 0.851539,
		-0.862855, -0.203140, -0.462834,
		46.107292, 33.486374, 36.553986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.599464, 33.049366, 37.213512>,  <46.711292, 33.628574, 36.877972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.599464, 33.049366, 37.213512> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324604, 33.012585, 36.925243>,  <46.159687, 32.990517, 36.752281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.324604, 33.012585, 36.925243>,  <46.599464, 33.049366, 37.213512>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.324604, 33.012585, 36.925243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123427, -0.962762, 0.240531,
		-0.715952, 0.254231, 0.650214,
		-0.687152, -0.091954, -0.720671,
		46.118458, 32.984997, 36.709042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.992908, 32.860489, 37.495728>,  <46.599464, 33.049366, 37.213512>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.992908, 32.860489, 37.495728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.931858, 32.722847, 37.125149>,  <45.895229, 32.640263, 36.902802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.931858, 32.722847, 37.125149>,  <45.992908, 32.860489, 37.495728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.931858, 32.722847, 37.125149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202485, -0.906651, 0.370113,
		-0.967318, 0.244080, 0.068702,
		-0.152626, -0.344106, -0.926443,
		45.886070, 32.619614, 36.847218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.410873, 32.401600, 37.510315>,  <45.992908, 32.860489, 37.495728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.410873, 32.401600, 37.510315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647202, 32.318069, 37.198593>,  <45.788998, 32.267952, 37.011559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647202, 32.318069, 37.198593>,  <45.410873, 32.401600, 37.510315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647202, 32.318069, 37.198593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013865, -0.968406, 0.248992,
		-0.806684, -0.136304, -0.575049,
		0.590820, -0.208831, -0.779309,
		45.824448, 32.255421, 36.964802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042187, 31.780680, 37.199806>,  <45.410873, 32.401600, 37.510315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042187, 31.780680, 37.199806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.407318, 31.786709, 37.036583>,  <45.626396, 31.790327, 36.938648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.407318, 31.786709, 37.036583>,  <45.042187, 31.780680, 37.199806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.407318, 31.786709, 37.036583> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033681, -0.998693, 0.038450,
		-0.406944, -0.048842, -0.912146,
		0.912832, 0.015075, -0.408057,
		45.681168, 31.791231, 36.914165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.985271, 31.216019, 36.677795>,  <45.042187, 31.780680, 37.199806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.985271, 31.216019, 36.677795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376759, 31.284424, 36.723164>,  <45.611652, 31.325466, 36.750385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.376759, 31.284424, 36.723164>,  <44.985271, 31.216019, 36.677795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376759, 31.284424, 36.723164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160758, -0.982492, 0.094161,
		0.127537, -0.073924, -0.989075,
		0.978719, 0.171011, 0.113421,
		45.670376, 31.335728, 36.757191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361336, 30.646158, 36.229855>,  <44.985271, 31.216019, 36.677795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361336, 30.646158, 36.229855> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639503, 30.762014, 36.492912>,  <45.806404, 30.831528, 36.650749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.639503, 30.762014, 36.492912>,  <45.361336, 30.646158, 36.229855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.639503, 30.762014, 36.492912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268521, -0.953619, 0.136045,
		0.666547, 0.081983, -0.740941,
		0.695422, 0.289639, 0.657646,
		45.848129, 30.848906, 36.690205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.009590, 30.220734, 36.122459>,  <45.361336, 30.646158, 36.229855>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.009590, 30.220734, 36.122459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098541, 30.373367, 36.481335>,  <46.151913, 30.464949, 36.696659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098541, 30.373367, 36.481335>,  <46.009590, 30.220734, 36.122459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098541, 30.373367, 36.481335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450886, -0.856158, 0.252380,
		0.864437, 0.348406, -0.362439,
		0.222374, 0.381585, 0.897186,
		46.165253, 30.487843, 36.750492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733391, 30.087954, 36.368607>,  <46.009590, 30.220734, 36.122459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733391, 30.087954, 36.368607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.552464, 30.146725, 36.720474>,  <46.443909, 30.181988, 36.931595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.552464, 30.146725, 36.720474>,  <46.733391, 30.087954, 36.368607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552464, 30.146725, 36.720474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261930, -0.920954, 0.288506,
		0.852526, 0.360909, 0.378080,
		-0.452318, 0.146928, 0.879670,
		46.416767, 30.190804, 36.984375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.288467, 29.962633, 36.928318>,  <46.733391, 30.087954, 36.368607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.288467, 29.962633, 36.928318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.935257, 29.940937, 37.114792>,  <46.723331, 29.927919, 37.226677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.935257, 29.940937, 37.114792>,  <47.288467, 29.962633, 36.928318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.935257, 29.940937, 37.114792> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240244, -0.905534, 0.349701,
		0.403178, 0.420792, 0.812638,
		-0.883023, -0.054240, 0.466185,
		46.670349, 29.924665, 37.254646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.373352, 29.538597, 37.490940>,  <47.288467, 29.962633, 36.928318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.373352, 29.538597, 37.490940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.975636, 29.525181, 37.450439>,  <46.737003, 29.517132, 37.426140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.975636, 29.525181, 37.450439>,  <47.373352, 29.538597, 37.490940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.975636, 29.525181, 37.450439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000123, -0.949633, 0.313364,
		-0.106662, 0.311564, 0.944220,
		-0.994295, -0.033540, -0.101251,
		46.677345, 29.515120, 37.420063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.263420, 29.367792, 38.208935>,  <47.373352, 29.538597, 37.490940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.263420, 29.367792, 38.208935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.958595, 29.267509, 37.970135>,  <46.775700, 29.207340, 37.826855>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.958595, 29.267509, 37.970135>,  <47.263420, 29.367792, 38.208935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.958595, 29.267509, 37.970135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016856, -0.914009, 0.405343,
		-0.647289, 0.318958, 0.692303,
		-0.762058, -0.250705, -0.597004,
		46.729977, 29.192299, 37.791035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752625, 29.015743, 38.662453>,  <47.263420, 29.367792, 38.208935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752625, 29.015743, 38.662453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.707508, 28.906567, 38.280293>,  <46.680439, 28.841061, 38.050999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.707508, 28.906567, 38.280293>,  <46.752625, 29.015743, 38.662453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.707508, 28.906567, 38.280293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019306, -0.960749, 0.276748,
		-0.993431, 0.049660, 0.103096,
		-0.112792, -0.272939, -0.955396,
		46.673672, 28.824684, 37.993675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.282448, 28.467960, 38.598167>,  <46.752625, 29.015743, 38.662453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.282448, 28.467960, 38.598167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.502338, 28.420647, 38.267399>,  <46.634274, 28.392258, 38.068935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.502338, 28.420647, 38.267399>,  <46.282448, 28.467960, 38.598167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.502338, 28.420647, 38.267399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002190, -0.989717, 0.143026,
		-0.835339, -0.080436, -0.543818,
		0.549730, -0.118284, -0.826925,
		46.667259, 28.385160, 38.019321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906818, 27.949074, 38.239719>,  <46.282448, 28.467960, 38.598167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906818, 27.949074, 38.239719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.276031, 27.931696, 38.086811>,  <46.497559, 27.921270, 37.995068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.276031, 27.931696, 38.086811>,  <45.906818, 27.949074, 38.239719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.276031, 27.931696, 38.086811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069903, -0.996003, -0.055600,
		-0.378327, 0.078042, -0.922376,
		0.923029, -0.043442, -0.382271,
		46.552940, 27.918663, 37.972130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902435, 27.445681, 37.643700>,  <45.906818, 27.949074, 38.239719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902435, 27.445681, 37.643700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.282310, 27.473845, 37.765778>,  <46.510235, 27.490744, 37.839024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.282310, 27.473845, 37.765778>,  <45.902435, 27.445681, 37.643700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.282310, 27.473845, 37.765778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047191, -0.995448, 0.082807,
		0.309634, -0.064238, -0.948684,
		0.949684, 0.070409, 0.305193,
		46.567215, 27.494967, 37.857334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.567154, 38.359020, 42.756378> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270462, 38.091164, 42.771458>,  <37.092445, 37.930450, 42.780506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270462, 38.091164, 42.771458>,  <37.567154, 38.359020, 42.756378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270462, 38.091164, 42.771458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154339, 0.115714, -0.981218,
		0.652700, -0.733617, -0.189180,
		-0.741729, -0.669639, 0.037699,
		37.047943, 37.890270, 42.782768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726913, 37.853966, 42.277557>,  <37.567154, 38.359020, 42.756378>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726913, 37.853966, 42.277557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331818, 37.820316, 42.330166>,  <37.094761, 37.800125, 42.361732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.331818, 37.820316, 42.330166>,  <37.726913, 37.853966, 42.277557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331818, 37.820316, 42.330166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129683, -0.027005, -0.991188,
		0.086937, -0.996089, 0.015764,
		-0.987737, -0.084127, 0.131523,
		37.035496, 37.795078, 42.369621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.532459, 37.339329, 41.752319>,  <37.726913, 37.853966, 42.277557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.532459, 37.339329, 41.752319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229031, 37.588261, 41.829540>,  <37.046974, 37.737621, 41.875874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229031, 37.588261, 41.829540>,  <37.532459, 37.339329, 41.752319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229031, 37.588261, 41.829540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103998, 0.176838, -0.978730,
		-0.643235, -0.762515, -0.069423,
		-0.758573, 0.622333, 0.193049,
		37.001457, 37.774960, 41.887455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313023, 37.329147, 41.176151>,  <37.532459, 37.339329, 41.752319>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313023, 37.329147, 41.176151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090511, 37.621590, 41.334156>,  <36.957005, 37.797054, 41.428959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090511, 37.621590, 41.334156>,  <37.313023, 37.329147, 41.176151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.090511, 37.621590, 41.334156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245149, 0.309814, -0.918650,
		-0.794011, -0.607864, 0.006886,
		-0.556281, 0.731107, 0.395013,
		36.923626, 37.840923, 41.452660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663315, 37.242416, 40.891834>,  <37.313023, 37.329147, 41.176151>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663315, 37.242416, 40.891834> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692101, 37.632458, 40.975727>,  <36.709373, 37.866482, 41.026062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692101, 37.632458, 40.975727>,  <36.663315, 37.242416, 40.891834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692101, 37.632458, 40.975727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023105, 0.208591, -0.977730,
		-0.997139, 0.075208, -0.007519,
		0.071965, 0.975107, 0.209732,
		36.713692, 37.924992, 41.038647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229691, 37.617462, 40.392605>,  <36.663315, 37.242416, 40.891834>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229691, 37.617462, 40.392605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452427, 37.919518, 40.530991>,  <36.586067, 38.100750, 40.614021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452427, 37.919518, 40.530991>,  <36.229691, 37.617462, 40.392605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452427, 37.919518, 40.530991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150149, 0.501167, -0.852224,
		-0.816935, 0.422607, 0.392454,
		0.556841, 0.755139, 0.345967,
		36.619480, 38.146061, 40.634781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910103, 38.307323, 40.354668>,  <36.229691, 37.617462, 40.392605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910103, 38.307323, 40.354668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308746, 38.340096, 40.351540>,  <36.547932, 38.359760, 40.349663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308746, 38.340096, 40.351540>,  <35.910103, 38.307323, 40.354668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308746, 38.340096, 40.351540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044926, 0.461957, -0.885764,
		-0.068959, 0.883110, 0.464071,
		0.996608, 0.081930, -0.007818,
		36.607727, 38.364674, 40.349194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940044, 38.975517, 40.055481>,  <35.910103, 38.307323, 40.354668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940044, 38.975517, 40.055481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310215, 38.823948, 40.056107>,  <36.532318, 38.733006, 40.056484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310215, 38.823948, 40.056107>,  <35.940044, 38.975517, 40.055481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.310215, 38.823948, 40.056107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220672, 0.535566, -0.815152,
		0.308042, 0.754709, 0.579245,
		0.925427, -0.378924, 0.001566,
		36.587841, 38.710270, 40.056576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366951, 39.513462, 40.034718>,  <35.940044, 38.975517, 40.055481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366951, 39.513462, 40.034718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566322, 39.214203, 39.859516>,  <36.685947, 39.034649, 39.754395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566322, 39.214203, 39.859516>,  <36.366951, 39.513462, 40.034718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566322, 39.214203, 39.859516> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164746, 0.577768, -0.799402,
		0.851131, 0.326288, 0.411232,
		0.498432, -0.748145, -0.438002,
		36.715851, 38.989761, 39.728115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823593, 39.872025, 39.747772>,  <36.366951, 39.513462, 40.034718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823593, 39.872025, 39.747772> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800377, 39.531319, 39.539494>,  <36.786446, 39.326893, 39.414528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800377, 39.531319, 39.539494>,  <36.823593, 39.872025, 39.747772>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800377, 39.531319, 39.539494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193706, 0.521268, -0.831118,
		0.979341, 0.052624, -0.195247,
		-0.058039, -0.851769, -0.520693,
		36.782967, 39.275787, 39.383286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237370, 39.954021, 39.042168>,  <36.823593, 39.872025, 39.747772>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237370, 39.954021, 39.042168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987030, 39.646194, 38.991455>,  <36.836826, 39.461498, 38.961025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987030, 39.646194, 38.991455>,  <37.237370, 39.954021, 39.042168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987030, 39.646194, 38.991455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085403, 0.229200, -0.969626,
		0.775251, -0.596015, -0.209169,
		-0.625853, -0.769567, -0.126786,
		36.799274, 39.415325, 38.953419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564766, 39.546700, 38.582409>,  <37.237370, 39.954021, 39.042168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564766, 39.546700, 38.582409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175877, 39.457993, 38.552498>,  <36.942543, 39.404770, 38.534550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175877, 39.457993, 38.552498>,  <37.564766, 39.546700, 38.582409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.175877, 39.457993, 38.552498> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091456, -0.065897, -0.993626,
		0.215429, -0.972870, 0.084349,
		-0.972228, -0.221770, -0.074779,
		36.884209, 39.391460, 38.530064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.505123, 39.016541, 37.982948>,  <37.564766, 39.546700, 38.582409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.505123, 39.016541, 37.982948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155552, 39.202335, 38.040230>,  <36.945808, 39.313812, 38.074600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155552, 39.202335, 38.040230>,  <37.505123, 39.016541, 37.982948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155552, 39.202335, 38.040230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131566, 0.057569, -0.989634,
		-0.467915, -0.883707, 0.010800,
		-0.873926, 0.464486, 0.143203,
		36.893375, 39.341682, 38.083191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.243862, 38.783871, 37.395199>,  <37.505123, 39.016541, 37.982948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.243862, 38.783871, 37.395199> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088200, 39.114521, 37.557800>,  <36.994801, 39.312912, 37.655361>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.088200, 39.114521, 37.557800>,  <37.243862, 38.783871, 37.395199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088200, 39.114521, 37.557800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165214, 0.371506, -0.913612,
		-0.906235, -0.422698, -0.008004,
		-0.389156, 0.826626, 0.406507,
		36.971455, 39.362507, 37.679752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560959, 38.103474, 37.312130>,  <37.243862, 38.783871, 37.395199>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560959, 38.103474, 37.312130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812347, 37.806477, 37.219414>,  <37.963181, 37.628277, 37.163784>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812347, 37.806477, 37.219414>,  <37.560959, 38.103474, 37.312130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812347, 37.806477, 37.219414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463050, -0.596574, 0.655503,
		-0.624987, -0.304635, -0.718742,
		0.628472, -0.742494, -0.231790,
		38.000889, 37.583729, 37.149876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098488, 37.543880, 37.144089>,  <37.560959, 38.103474, 37.312130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098488, 37.543880, 37.144089> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461113, 37.400330, 37.232956>,  <37.678688, 37.314198, 37.286274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461113, 37.400330, 37.232956>,  <37.098488, 37.543880, 37.144089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461113, 37.400330, 37.232956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421366, -0.738941, 0.525753,
		-0.024516, -0.570239, -0.821113,
		0.906559, -0.358879, 0.222164,
		37.733082, 37.292667, 37.299606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.982174, 36.857849, 37.124794>,  <37.098488, 37.543880, 37.144089>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.982174, 36.857849, 37.124794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325073, 36.868267, 37.330494>,  <37.530811, 36.874516, 37.453915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325073, 36.868267, 37.330494>,  <36.982174, 36.857849, 37.124794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325073, 36.868267, 37.330494> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272737, -0.824150, 0.496378,
		0.436746, -0.565773, -0.699395,
		0.857244, 0.026040, 0.514252,
		37.582245, 36.876080, 37.484768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.212646, 36.230614, 37.175953>,  <36.982174, 36.857849, 37.124794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.212646, 36.230614, 37.175953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390503, 36.427696, 37.475163>,  <37.497215, 36.545944, 37.654690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390503, 36.427696, 37.475163>,  <37.212646, 36.230614, 37.175953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.390503, 36.427696, 37.475163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229538, -0.744553, 0.626860,
		0.865799, -0.450427, -0.217964,
		0.444640, 0.492704, 0.748023,
		37.523895, 36.575508, 37.699570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424458, 35.707397, 37.544178>,  <37.212646, 36.230614, 37.175953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424458, 35.707397, 37.544178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489941, 35.996056, 37.813229>,  <37.529232, 36.169250, 37.974659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489941, 35.996056, 37.813229>,  <37.424458, 35.707397, 37.544178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.489941, 35.996056, 37.813229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235873, -0.633419, 0.736984,
		0.957895, -0.279306, 0.066519,
		0.163710, 0.721643, 0.672629,
		37.539055, 36.212547, 38.015018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.828899, 35.416660, 38.075768>,  <37.424458, 35.707397, 37.544178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.828899, 35.416660, 38.075768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648880, 35.726048, 38.254292>,  <37.540867, 35.911682, 38.361408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.648880, 35.726048, 38.254292>,  <37.828899, 35.416660, 38.075768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648880, 35.726048, 38.254292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268439, -0.593851, 0.758473,
		0.851702, 0.221542, 0.474893,
		-0.450049, 0.773473, 0.446313,
		37.513866, 35.958088, 38.388184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922741, 35.351189, 38.819649>,  <37.828899, 35.416660, 38.075768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922741, 35.351189, 38.819649> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640457, 35.634457, 38.828323>,  <37.471088, 35.804417, 38.833527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640457, 35.634457, 38.828323>,  <37.922741, 35.351189, 38.819649>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640457, 35.634457, 38.828323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216923, -0.245106, 0.944917,
		0.674480, 0.662129, 0.326592,
		-0.705706, 0.708173, 0.021688,
		37.428745, 35.846909, 38.834831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998890, 35.712902, 39.410973>,  <37.922741, 35.351189, 38.819649>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998890, 35.712902, 39.410973> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617111, 35.784801, 39.315708>,  <37.388042, 35.827942, 39.258549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617111, 35.784801, 39.315708>,  <37.998890, 35.712902, 39.410973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.617111, 35.784801, 39.315708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275747, -0.226481, 0.934168,
		0.113973, 0.957287, 0.265728,
		-0.954449, 0.179744, -0.238157,
		37.330776, 35.838726, 39.244263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702442, 36.253731, 39.955345>,  <37.998890, 35.712902, 39.410973>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702442, 36.253731, 39.955345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411743, 36.031631, 39.793591>,  <37.237324, 35.898373, 39.696537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411743, 36.031631, 39.793591>,  <37.702442, 36.253731, 39.955345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411743, 36.031631, 39.793591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243413, -0.342333, 0.907501,
		-0.642325, 0.757961, 0.113637,
		-0.726752, -0.555250, -0.404387,
		37.193718, 35.865055, 39.672276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104473, 36.411922, 40.264652>,  <37.702442, 36.253731, 39.955345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104473, 36.411922, 40.264652> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987648, 36.061413, 40.111374>,  <36.917553, 35.851105, 40.019405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987648, 36.061413, 40.111374>,  <37.104473, 36.411922, 40.264652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987648, 36.061413, 40.111374> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435549, -0.234841, 0.868992,
		-0.851468, 0.420698, -0.313074,
		-0.292061, -0.876278, -0.383195,
		36.900028, 35.798531, 39.996414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405430, 36.287266, 40.580395>,  <37.104473, 36.411922, 40.264652>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405430, 36.287266, 40.580395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490242, 35.938457, 40.403934>,  <36.541130, 35.729172, 40.298058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490242, 35.938457, 40.403934>,  <36.405430, 36.287266, 40.580395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.490242, 35.938457, 40.403934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444152, -0.488091, 0.751330,
		-0.870501, 0.036634, -0.490802,
		0.212032, -0.872024, -0.441154,
		36.553852, 35.676849, 40.271587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766544, 35.926678, 40.655514>,  <36.405430, 36.287266, 40.580395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766544, 35.926678, 40.655514> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053406, 35.656261, 40.587799>,  <36.225521, 35.494011, 40.547169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053406, 35.656261, 40.587799>,  <35.766544, 35.926678, 40.655514>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053406, 35.656261, 40.587799> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444826, -0.631027, 0.635559,
		-0.536491, -0.380487, -0.753264,
		0.717152, -0.676043, -0.169290,
		36.268551, 35.453449, 40.537010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433224, 35.326599, 40.402634>,  <35.766544, 35.926678, 40.655514>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433224, 35.326599, 40.402634> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780121, 35.232914, 40.578373>,  <35.988258, 35.176701, 40.683815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780121, 35.232914, 40.578373>,  <35.433224, 35.326599, 40.402634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780121, 35.232914, 40.578373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489633, -0.561177, 0.667338,
		0.090252, -0.793866, -0.601359,
		0.867245, -0.234216, 0.439349,
		36.040295, 35.162647, 40.710178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403107, 34.636822, 40.676872>,  <35.433224, 35.326599, 40.402634>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403107, 34.636822, 40.676872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709373, 34.779408, 40.891045>,  <35.893135, 34.864960, 41.019550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709373, 34.779408, 40.891045>,  <35.403107, 34.636822, 40.676872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709373, 34.779408, 40.891045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259110, -0.590962, 0.763954,
		0.588740, -0.723671, -0.360118,
		0.765668, 0.356460, 0.535434,
		35.939075, 34.886345, 41.051674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.295673, 33.952339, 40.335072>,  <35.403107, 34.636822, 40.676872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.295673, 33.952339, 40.335072> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263958, 33.591846, 40.164661>,  <35.244926, 33.375553, 40.062416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263958, 33.591846, 40.164661>,  <35.295673, 33.952339, 40.335072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263958, 33.591846, 40.164661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719512, 0.347532, -0.601269,
		0.689939, 0.258856, -0.676002,
		-0.079290, -0.901230, -0.426026,
		35.240170, 33.321476, 40.036854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.358620, 33.966038, 39.648636>,  <35.295673, 33.952339, 40.335072>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.358620, 33.966038, 39.648636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164764, 33.616161, 39.651199>,  <35.048450, 33.406235, 39.652737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164764, 33.616161, 39.651199>,  <35.358620, 33.966038, 39.648636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164764, 33.616161, 39.651199> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694611, 0.380388, -0.610591,
		0.531641, -0.300366, -0.791920,
		-0.484638, -0.874692, 0.006408,
		35.019371, 33.353752, 39.653122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309605, 33.658978, 38.955917>,  <35.358620, 33.966038, 39.648636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309605, 33.658978, 38.955917> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009182, 33.495522, 39.163349>,  <34.828930, 33.397446, 39.287807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009182, 33.495522, 39.163349>,  <35.309605, 33.658978, 38.955917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009182, 33.495522, 39.163349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629812, 0.207724, -0.748456,
		0.198103, -0.888756, -0.413363,
		-0.751060, -0.408613, 0.518598,
		34.783867, 33.372929, 39.318924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934959, 33.306499, 38.424362>,  <35.309605, 33.658978, 38.955917>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934959, 33.306499, 38.424362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667023, 33.337048, 38.719791>,  <34.506260, 33.355377, 38.897049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.667023, 33.337048, 38.719791>,  <34.934959, 33.306499, 38.424362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667023, 33.337048, 38.719791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669201, 0.368860, -0.645068,
		-0.321694, -0.926342, -0.195968,
		-0.669838, 0.076372, 0.738569,
		34.466072, 33.359959, 38.941360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277618, 32.975674, 38.212990>,  <34.934959, 33.306499, 38.424362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277618, 32.975674, 38.212990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183647, 33.222408, 38.513474>,  <34.127262, 33.370449, 38.693764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183647, 33.222408, 38.513474>,  <34.277618, 32.975674, 38.212990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.183647, 33.222408, 38.513474> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794984, 0.322757, -0.513642,
		-0.559292, -0.717873, 0.414549,
		-0.234930, 0.616836, 0.751213,
		34.113167, 33.407459, 38.738838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554913, 32.789310, 38.389702>,  <34.277618, 32.975674, 38.212990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554913, 32.789310, 38.389702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649815, 33.155178, 38.520603>,  <33.706757, 33.374699, 38.599144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649815, 33.155178, 38.520603>,  <33.554913, 32.789310, 38.389702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.649815, 33.155178, 38.520603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789513, 0.377832, -0.483644,
		-0.566019, -0.143620, 0.811785,
		0.237258, 0.914667, 0.327251,
		33.720993, 33.429577, 38.618778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.965477, 33.107395, 38.550751>,  <33.554913, 32.789310, 38.389702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.965477, 33.107395, 38.550751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192886, 33.435665, 38.527870>,  <33.329330, 33.632626, 38.514141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192886, 33.435665, 38.527870>,  <32.965477, 33.107395, 38.550751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192886, 33.435665, 38.527870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766690, 0.503346, -0.398533,
		-0.298274, 0.270432, 0.915368,
		0.568523, 0.820676, -0.057202,
		33.363441, 33.681870, 38.510708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452633, 33.625572, 38.554024>,  <32.965477, 33.107395, 38.550751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452633, 33.625572, 38.554024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769882, 33.833637, 38.427288>,  <32.960232, 33.958477, 38.351246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769882, 33.833637, 38.427288>,  <32.452633, 33.625572, 38.554024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.769882, 33.833637, 38.427288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593705, 0.544214, -0.592744,
		-0.135891, 0.658230, 0.740450,
		0.793125, 0.520158, -0.316841,
		33.007820, 33.989685, 38.332237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228664, 34.376926, 38.524738>,  <32.452633, 33.625572, 38.554024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228664, 34.376926, 38.524738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566143, 34.368088, 38.310192>,  <32.768631, 34.362785, 38.181465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566143, 34.368088, 38.310192>,  <32.228664, 34.376926, 38.524738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.566143, 34.368088, 38.310192> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438547, 0.547883, -0.712391,
		0.309606, 0.836263, 0.452557,
		0.843695, -0.022093, -0.536368,
		32.819252, 34.361462, 38.149281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474834, 35.100510, 38.303299>,  <32.228664, 34.376926, 38.524738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474834, 35.100510, 38.303299> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635826, 34.856503, 38.030273>,  <32.732422, 34.710098, 37.866459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.635826, 34.856503, 38.030273>,  <32.474834, 35.100510, 38.303299>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.635826, 34.856503, 38.030273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355069, 0.583220, -0.730603,
		0.843763, 0.536409, 0.018137,
		0.402480, -0.610016, -0.682562,
		32.756569, 34.673496, 37.825504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902912, 35.559505, 37.901180>,  <32.474834, 35.100510, 38.303299>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902912, 35.559505, 37.901180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793034, 35.231144, 37.700912>,  <32.727108, 35.034126, 37.580753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793034, 35.231144, 37.700912>,  <32.902912, 35.559505, 37.901180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793034, 35.231144, 37.700912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339965, 0.569982, -0.748027,
		0.899426, -0.035269, -0.435647,
		-0.274694, -0.820900, -0.500666,
		32.710625, 34.984875, 37.550713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339661, 35.396458, 37.232685>,  <32.902912, 35.559505, 37.901180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339661, 35.396458, 37.232685> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956154, 35.296986, 37.287708>,  <32.726051, 35.237305, 37.320721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.956154, 35.296986, 37.287708>,  <33.339661, 35.396458, 37.232685>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956154, 35.296986, 37.287708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276685, 0.706320, -0.651581,
		0.064874, -0.662776, -0.746003,
		-0.958769, -0.248678, 0.137558,
		32.668522, 35.222382, 37.328976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.510773, 31.509602, 42.728535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145630, 31.372297, 42.640121>,  <36.926544, 31.289915, 42.587074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.145630, 31.372297, 42.640121>,  <37.510773, 31.509602, 42.728535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145630, 31.372297, 42.640121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024222, 0.494910, -0.868607,
		0.407551, -0.798271, -0.443470,
		-0.912861, -0.343259, -0.221036,
		36.871773, 31.269320, 42.573811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559959, 31.351444, 41.996868>,  <37.510773, 31.509602, 42.728535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.559959, 31.351444, 41.996868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169647, 31.369761, 42.082436>,  <36.935459, 31.380751, 42.133778>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.169647, 31.369761, 42.082436>,  <37.559959, 31.351444, 41.996868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169647, 31.369761, 42.082436> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159897, 0.518090, -0.840248,
		-0.149304, -0.854100, -0.498219,
		-0.975777, 0.045789, 0.213921,
		36.876915, 31.383497, 42.146610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234112, 30.983633, 41.450214>,  <37.559959, 31.351444, 41.996868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234112, 30.983633, 41.450214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.967457, 31.248354, 41.587387>,  <36.807465, 31.407187, 41.669693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.967457, 31.248354, 41.587387>,  <37.234112, 30.983633, 41.450214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.967457, 31.248354, 41.587387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074087, 0.398972, -0.913965,
		-0.741687, -0.634694, -0.216941,
		-0.666642, 0.661804, 0.342935,
		36.767464, 31.446896, 41.690266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783447, 30.943218, 40.951412>,  <37.234112, 30.983633, 41.450214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783447, 30.943218, 40.951412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716454, 31.285833, 41.146675>,  <36.676258, 31.491402, 41.263832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.716454, 31.285833, 41.146675>,  <36.783447, 30.943218, 40.951412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716454, 31.285833, 41.146675> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400936, 0.393177, -0.827443,
		-0.900666, -0.334301, 0.277566,
		-0.167482, 0.856537, 0.488154,
		36.666210, 31.542795, 41.293121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159389, 31.159031, 40.801907>,  <36.783447, 30.943218, 40.951412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159389, 31.159031, 40.801907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.320648, 31.504913, 40.921741>,  <36.417404, 31.712442, 40.993645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.320648, 31.504913, 40.921741>,  <36.159389, 31.159031, 40.801907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320648, 31.504913, 40.921741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584807, 0.495235, -0.642451,
		-0.703900, 0.083798, 0.705339,
		0.403144, 0.864708, 0.299591,
		36.441593, 31.764326, 41.011620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608555, 31.619453, 40.991550>,  <36.159389, 31.159031, 40.801907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608555, 31.619453, 40.991550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.902336, 31.883444, 40.928299>,  <36.078606, 32.041840, 40.890347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.902336, 31.883444, 40.928299>,  <35.608555, 31.619453, 40.991550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902336, 31.883444, 40.928299> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619960, 0.557675, -0.551948,
		-0.276088, 0.503415, 0.818748,
		0.734455, 0.659978, -0.158130,
		36.122673, 32.081436, 40.880859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.429703, 32.231846, 41.256432>,  <35.608555, 31.619453, 40.991550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.429703, 32.231846, 41.256432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715183, 32.337517, 40.996944>,  <35.886471, 32.400921, 40.841251>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.715183, 32.337517, 40.996944>,  <35.429703, 32.231846, 41.256432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715183, 32.337517, 40.996944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640147, 0.621942, -0.451000,
		0.284319, 0.737155, 0.612997,
		0.713705, 0.264181, -0.648717,
		35.929295, 32.416771, 40.802330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287628, 32.855804, 41.204445>,  <35.429703, 32.231846, 41.256432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287628, 32.855804, 41.204445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521660, 32.791576, 40.886475>,  <35.662079, 32.753040, 40.695694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521660, 32.791576, 40.886475>,  <35.287628, 32.855804, 41.204445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521660, 32.791576, 40.886475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606506, 0.564067, -0.560338,
		0.538365, 0.809966, 0.232633,
		0.585075, -0.160573, -0.794924,
		35.697182, 32.743404, 40.647999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282089, 33.468639, 40.921574>,  <35.287628, 32.855804, 41.204445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282089, 33.468639, 40.921574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.386417, 33.235195, 40.613972>,  <35.449013, 33.095127, 40.429409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.386417, 33.235195, 40.613972>,  <35.282089, 33.468639, 40.921574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386417, 33.235195, 40.613972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533461, 0.576784, -0.618659,
		0.804607, 0.571594, -0.160896,
		0.260819, -0.583609, -0.769008,
		35.464664, 33.060112, 40.383270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532528, 34.139175, 41.205891>,  <35.282089, 33.468639, 40.921574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532528, 34.139175, 41.205891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.745983, 34.437851, 41.364727>,  <35.874054, 34.617058, 41.460030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.745983, 34.437851, 41.364727>,  <35.532528, 34.139175, 41.205891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.745983, 34.437851, 41.364727> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018276, -0.479608, 0.877292,
		0.845518, -0.460896, -0.269582,
		0.533634, 0.746693, 0.397094,
		35.906075, 34.661858, 41.483856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104954, 33.870476, 41.623241>,  <35.532528, 34.139175, 41.205891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104954, 33.870476, 41.623241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.033474, 34.235401, 41.770622>,  <35.990585, 34.454357, 41.859051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.033474, 34.235401, 41.770622>,  <36.104954, 33.870476, 41.623241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033474, 34.235401, 41.770622> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044396, -0.366618, 0.929312,
		0.982901, 0.182426, 0.025012,
		-0.178701, 0.912311, 0.368449,
		35.979862, 34.509094, 41.881157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685505, 34.030819, 42.133224>,  <36.104954, 33.870476, 41.623241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685505, 34.030819, 42.133224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393047, 34.288094, 42.224213>,  <36.217575, 34.442459, 42.278805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.393047, 34.288094, 42.224213>,  <36.685505, 34.030819, 42.133224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.393047, 34.288094, 42.224213> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052654, -0.279232, 0.958779,
		0.680191, 0.712980, 0.170292,
		-0.731141, 0.643187, 0.227472,
		36.173706, 34.481049, 42.292454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942921, 34.420361, 42.698032>,  <36.685505, 34.030819, 42.133224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942921, 34.420361, 42.698032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545219, 34.462803, 42.703751>,  <36.306599, 34.488266, 42.707184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.545219, 34.462803, 42.703751>,  <36.942921, 34.420361, 42.698032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545219, 34.462803, 42.703751> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003126, -0.162259, 0.986743,
		0.107015, 0.981027, 0.161658,
		-0.994253, 0.106102, 0.014298,
		36.246944, 34.494633, 42.708038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861435, 34.692505, 43.349621>,  <36.942921, 34.420361, 42.698032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861435, 34.692505, 43.349621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.509251, 34.548492, 43.226227>,  <36.297939, 34.462086, 43.152191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.509251, 34.548492, 43.226227>,  <36.861435, 34.692505, 43.349621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.509251, 34.548492, 43.226227> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255188, -0.188489, 0.948341,
		-0.399578, 0.913701, 0.074082,
		-0.880464, -0.360031, -0.308482,
		36.245113, 34.440483, 43.133682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364647, 34.935017, 43.829826>,  <36.861435, 34.692505, 43.349621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364647, 34.935017, 43.829826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.213203, 34.618298, 43.638115>,  <36.122337, 34.428265, 43.523087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.213203, 34.618298, 43.638115>,  <36.364647, 34.935017, 43.829826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213203, 34.618298, 43.638115> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448359, -0.296115, 0.843380,
		-0.809710, 0.534200, -0.242899,
		-0.378608, -0.791799, -0.479281,
		36.099621, 34.380756, 43.494331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726204, 34.865002, 44.129345>,  <36.364647, 34.935017, 43.829826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726204, 34.865002, 44.129345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801956, 34.512661, 43.955799>,  <35.847408, 34.301258, 43.851673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801956, 34.512661, 43.955799>,  <35.726204, 34.865002, 44.129345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801956, 34.512661, 43.955799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172238, -0.464805, 0.868499,
		-0.966680, -0.089747, -0.239740,
		0.189378, -0.880853, -0.433860,
		35.858768, 34.248405, 43.825642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310658, 34.432259, 44.535572>,  <35.726204, 34.865002, 44.129345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310658, 34.432259, 44.535572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.589840, 34.206818, 44.358837>,  <35.757347, 34.071552, 44.252796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.589840, 34.206818, 44.358837>,  <35.310658, 34.432259, 44.535572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589840, 34.206818, 44.358837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005501, -0.612729, 0.790274,
		-0.716126, -0.554001, -0.424554,
		0.697949, -0.563600, -0.441839,
		35.799225, 34.037739, 44.226288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106159, 33.634472, 44.627243>,  <35.310658, 34.432259, 44.535572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106159, 33.634472, 44.627243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497524, 33.681694, 44.559395>,  <35.732342, 33.710026, 44.518688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.497524, 33.681694, 44.559395>,  <35.106159, 33.634472, 44.627243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497524, 33.681694, 44.559395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206563, -0.583441, 0.785448,
		-0.006234, -0.803529, -0.595233,
		0.978414, 0.118056, -0.169617,
		35.791050, 33.717110, 44.508511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384518, 32.961121, 44.744473>,  <35.106159, 33.634472, 44.627243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384518, 32.961121, 44.744473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.702911, 33.202305, 44.765812>,  <35.893948, 33.347015, 44.778614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.702911, 33.202305, 44.765812>,  <35.384518, 32.961121, 44.744473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.702911, 33.202305, 44.765812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441414, -0.638496, 0.630457,
		0.414203, -0.478287, -0.774389,
		0.795983, 0.602964, 0.053345,
		35.941708, 33.383194, 44.781815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980103, 32.542049, 44.797596>,  <35.384518, 32.961121, 44.744473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980103, 32.542049, 44.797596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140297, 32.884201, 44.929012>,  <36.236412, 33.089493, 45.007862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.140297, 32.884201, 44.929012>,  <35.980103, 32.542049, 44.797596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.140297, 32.884201, 44.929012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558565, -0.512132, 0.652476,
		0.726371, -0.077795, -0.682886,
		0.400487, 0.855376, 0.328544,
		36.260445, 33.140816, 45.027576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641754, 32.455826, 44.697514>,  <35.980103, 32.542049, 44.797596>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641754, 32.455826, 44.697514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612789, 32.734119, 44.983368>,  <36.595409, 32.901096, 45.154881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.612789, 32.734119, 44.983368>,  <36.641754, 32.455826, 44.697514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.612789, 32.734119, 44.983368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510537, -0.589671, 0.625811,
		0.856801, 0.410167, -0.312498,
		-0.072416, 0.695737, 0.714637,
		36.591064, 32.942841, 45.197758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204163, 32.299095, 45.184013>,  <36.641754, 32.455826, 44.697514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204163, 32.299095, 45.184013> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961498, 32.527435, 45.405315>,  <36.815899, 32.664440, 45.538097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.961498, 32.527435, 45.405315>,  <37.204163, 32.299095, 45.184013>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961498, 32.527435, 45.405315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288083, -0.490782, 0.822278,
		0.740929, 0.658225, 0.133283,
		-0.606657, 0.570853, 0.553258,
		36.779503, 32.698692, 45.571293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.613281, 32.521744, 45.724442>,  <37.204163, 32.299095, 45.184013>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.613281, 32.521744, 45.724442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.237377, 32.567135, 45.853416>,  <37.011833, 32.594368, 45.930801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.237377, 32.567135, 45.853416>,  <37.613281, 32.521744, 45.724442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.237377, 32.567135, 45.853416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283823, -0.266654, 0.921054,
		0.190495, 0.957089, 0.218385,
		-0.939764, 0.113473, 0.322440,
		36.955448, 32.601177, 45.950150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<32.439796, 32.694981, 45.806690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729958, 32.419846, 45.816998>,  <32.904053, 32.254765, 45.823181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.729958, 32.419846, 45.816998>,  <32.439796, 32.694981, 45.806690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729958, 32.419846, 45.816998> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365415, 0.353110, -0.861270,
		0.583319, 0.634183, 0.507495,
		0.725404, -0.687841, 0.025764,
		32.947578, 32.213493, 45.824726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081718, 33.003399, 45.713543>,  <32.439796, 32.694981, 45.806690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081718, 33.003399, 45.713543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194450, 32.626053, 45.643536>,  <33.262089, 32.399643, 45.601532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.194450, 32.626053, 45.643536>,  <33.081718, 33.003399, 45.713543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194450, 32.626053, 45.643536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494262, 0.299090, -0.816241,
		0.822361, 0.143534, 0.550563,
		0.281826, -0.943368, -0.175017,
		33.278999, 32.343044, 45.591030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803814, 33.066837, 45.537621>,  <33.081718, 33.003399, 45.713543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803814, 33.066837, 45.537621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.659725, 32.724106, 45.390057>,  <33.573273, 32.518467, 45.301517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.659725, 32.724106, 45.390057>,  <33.803814, 33.066837, 45.537621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659725, 32.724106, 45.390057> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154499, 0.335202, -0.929392,
		0.919985, -0.391780, 0.011632,
		-0.360218, -0.856824, -0.368911,
		33.551659, 32.467060, 45.279385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.206593, 32.881771, 45.030449>,  <33.803814, 33.066837, 45.537621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.206593, 32.881771, 45.030449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.860500, 32.705452, 44.934887>,  <33.652843, 32.599663, 44.877552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.860500, 32.705452, 44.934887>,  <34.206593, 32.881771, 45.030449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.860500, 32.705452, 44.934887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111995, 0.294534, -0.949056,
		0.488703, -0.847909, -0.205474,
		-0.865232, -0.440794, -0.238901,
		33.600929, 32.573215, 44.863216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312561, 32.607609, 44.355495>,  <34.206593, 32.881771, 45.030449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312561, 32.607609, 44.355495> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.916050, 32.632084, 44.402172>,  <33.678143, 32.646770, 44.430176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.916050, 32.632084, 44.402172>,  <34.312561, 32.607609, 44.355495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916050, 32.632084, 44.402172> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087433, 0.357030, -0.929992,
		-0.098570, -0.932086, -0.348567,
		-0.991282, 0.061193, 0.116688,
		33.618664, 32.650440, 44.437180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095886, 32.419418, 43.620598>,  <34.312561, 32.607609, 44.355495>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095886, 32.419418, 43.620598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815960, 32.630600, 43.813068>,  <33.648006, 32.757309, 43.928551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.815960, 32.630600, 43.813068>,  <34.095886, 32.419418, 43.620598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.815960, 32.630600, 43.813068> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269286, 0.428922, -0.862271,
		-0.661626, -0.733000, -0.157994,
		-0.699812, 0.527955, 0.481172,
		33.606018, 32.788986, 43.957420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655964, 32.583588, 43.075031>,  <34.095886, 32.419418, 43.620598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655964, 32.583588, 43.075031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532192, 32.825382, 43.368656>,  <33.457928, 32.970459, 43.544830>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532192, 32.825382, 43.368656>,  <33.655964, 32.583588, 43.075031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532192, 32.825382, 43.368656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232279, 0.700516, -0.674776,
		-0.922116, -0.379306, -0.076354,
		-0.309434, 0.604486, 0.734062,
		33.439362, 33.006729, 43.588875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002586, 32.821136, 42.874538>,  <33.655964, 32.583588, 43.075031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002586, 32.821136, 42.874538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149029, 33.088451, 43.133572>,  <33.236893, 33.248840, 43.288990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.149029, 33.088451, 43.133572>,  <33.002586, 32.821136, 42.874538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149029, 33.088451, 43.133572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341614, 0.743825, -0.574477,
		-0.865603, -0.010906, 0.500611,
		0.366102, 0.668285, 0.647583,
		33.258858, 33.288937, 43.327847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.449734, 33.169628, 43.091705>,  <33.002586, 32.821136, 42.874538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.449734, 33.169628, 43.091705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767284, 33.402191, 43.162949>,  <32.957813, 33.541729, 43.205692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.767284, 33.402191, 43.162949>,  <32.449734, 33.169628, 43.091705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767284, 33.402191, 43.162949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466738, 0.770369, -0.434381,
		-0.389760, 0.261716, 0.882944,
		0.793878, 0.581409, 0.178106,
		33.005447, 33.576614, 43.216381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.228790, 33.701782, 43.383430>,  <32.449734, 33.169628, 43.091705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.228790, 33.701782, 43.383430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580639, 33.823421, 43.237125>,  <32.791748, 33.896404, 43.149342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.580639, 33.823421, 43.237125>,  <32.228790, 33.701782, 43.383430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.580639, 33.823421, 43.237125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456681, 0.754993, -0.470562,
		0.133055, 0.580956, 0.802986,
		0.879625, 0.304098, -0.365767,
		32.844524, 33.914650, 43.127396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215759, 34.394218, 43.346390>,  <32.228790, 33.701782, 43.383430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215759, 34.394218, 43.346390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542591, 34.354408, 43.119244>,  <32.738689, 34.330521, 42.982956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.542591, 34.354408, 43.119244>,  <32.215759, 34.394218, 43.346390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542591, 34.354408, 43.119244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327030, 0.731168, -0.598703,
		0.474790, 0.674899, 0.564877,
		0.817084, -0.099526, -0.567863,
		32.787716, 34.324551, 42.948883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514462, 35.020237, 43.294273>,  <32.215759, 34.394218, 43.346390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514462, 35.020237, 43.294273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664124, 34.819302, 42.982464>,  <32.753922, 34.698742, 42.795376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.664124, 34.819302, 42.982464>,  <32.514462, 35.020237, 43.294273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664124, 34.819302, 42.982464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155729, 0.794611, -0.586807,
		0.914195, 0.340954, 0.219082,
		0.374159, -0.502338, -0.779526,
		32.776371, 34.668598, 42.748608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.891972, 35.422867, 42.965313>,  <32.514462, 35.020237, 43.294273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.891972, 35.422867, 42.965313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863770, 35.187099, 42.643417>,  <32.846848, 35.045639, 42.450279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.863770, 35.187099, 42.643417>,  <32.891972, 35.422867, 42.965313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863770, 35.187099, 42.643417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204815, 0.798115, -0.566624,
		0.976258, 0.124875, -0.176991,
		-0.070502, -0.589422, -0.804743,
		32.842617, 35.010273, 42.401993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384209, 35.645035, 42.386318>,  <32.891972, 35.422867, 42.965313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384209, 35.645035, 42.386318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.076908, 35.445160, 42.226269>,  <32.892529, 35.325233, 42.130238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.076908, 35.445160, 42.226269>,  <33.384209, 35.645035, 42.386318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076908, 35.445160, 42.226269> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198970, 0.780486, -0.592666,
		0.608437, -0.375706, -0.699034,
		-0.768254, -0.499687, -0.400122,
		32.846432, 35.295254, 42.106232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737133, 36.205692, 42.096760>,  <33.384209, 35.645035, 42.386318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737133, 36.205692, 42.096760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727581, 36.577801, 42.243202>,  <33.721851, 36.801064, 42.331066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.727581, 36.577801, 42.243202>,  <33.737133, 36.205692, 42.096760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727581, 36.577801, 42.243202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240853, -0.350071, 0.905229,
		0.970268, 0.109791, -0.215699,
		-0.023876, 0.930267, 0.366106,
		33.720417, 36.856880, 42.353035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311260, 36.315212, 42.466549>,  <33.737133, 36.205692, 42.096760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311260, 36.315212, 42.466549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023308, 36.552170, 42.611237>,  <33.850536, 36.694344, 42.698048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.023308, 36.552170, 42.611237>,  <34.311260, 36.315212, 42.466549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023308, 36.552170, 42.611237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119078, -0.407999, 0.905184,
		0.683803, 0.694700, 0.223171,
		-0.719885, 0.592393, 0.361714,
		33.807343, 36.729889, 42.719749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501514, 36.555660, 43.071075>,  <34.311260, 36.315212, 42.466549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501514, 36.555660, 43.071075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113762, 36.633366, 43.131165>,  <33.881111, 36.679989, 43.167217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.113762, 36.633366, 43.131165>,  <34.501514, 36.555660, 43.071075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113762, 36.633366, 43.131165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095698, -0.264524, 0.959619,
		0.226158, 0.944610, 0.237833,
		-0.969378, 0.194266, 0.150222,
		33.822948, 36.691647, 43.176231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.583179, 36.865677, 43.748051>,  <34.501514, 36.555660, 43.071075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.583179, 36.865677, 43.748051> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198792, 36.772514, 43.688343>,  <33.968159, 36.716618, 43.652519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.198792, 36.772514, 43.688343>,  <34.583179, 36.865677, 43.748051>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198792, 36.772514, 43.688343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115213, -0.153619, 0.981390,
		-0.251506, 0.960289, 0.120790,
		-0.960974, -0.232909, -0.149274,
		33.910500, 36.702641, 43.643562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224209, 37.154243, 44.347107>,  <34.583179, 36.865677, 43.748051>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224209, 37.154243, 44.347107> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.986824, 36.864605, 44.206543>,  <33.844395, 36.690823, 44.122204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.986824, 36.864605, 44.206543>,  <34.224209, 37.154243, 44.347107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986824, 36.864605, 44.206543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144282, -0.333820, 0.931529,
		-0.791827, 0.603526, 0.093634,
		-0.593458, -0.724100, -0.351406,
		33.808788, 36.647373, 44.101120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722237, 37.125134, 44.893391>,  <34.224209, 37.154243, 44.347107>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722237, 37.125134, 44.893391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683632, 36.787224, 44.682854>,  <33.660469, 36.584476, 44.556530>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.683632, 36.787224, 44.682854>,  <33.722237, 37.125134, 44.893391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683632, 36.787224, 44.682854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190924, -0.503281, 0.842767,
		-0.976849, 0.181824, -0.112718,
		-0.096507, -0.844777, -0.526344,
		33.654678, 36.533791, 44.524952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210323, 36.799751, 45.183758>,  <33.722237, 37.125134, 44.893391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210323, 36.799751, 45.183758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402157, 36.505802, 44.991940>,  <33.517258, 36.329433, 44.876850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.402157, 36.505802, 44.991940>,  <33.210323, 36.799751, 45.183758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.402157, 36.505802, 44.991940> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065346, -0.515061, 0.854659,
		-0.875060, -0.441216, -0.198993,
		0.479583, -0.734875, -0.479541,
		33.546032, 36.285339, 44.848076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786522, 36.230057, 45.282158>,  <33.210323, 36.799751, 45.183758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786522, 36.230057, 45.282158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.154755, 36.098778, 45.197472>,  <33.375694, 36.020012, 45.146660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.154755, 36.098778, 45.197472>,  <32.786522, 36.230057, 45.282158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154755, 36.098778, 45.197472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057990, -0.650939, 0.756912,
		-0.386231, -0.684519, -0.618271,
		0.920577, -0.328197, -0.211718,
		33.430927, 36.000320, 45.133957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777599, 35.470871, 45.328121>,  <32.786522, 36.230057, 45.282158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777599, 35.470871, 45.328121> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169247, 35.548424, 45.352596>,  <33.404236, 35.594955, 45.367279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.169247, 35.548424, 45.352596>,  <32.777599, 35.470871, 45.328121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.169247, 35.548424, 45.352596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082209, -0.652792, 0.753063,
		0.185948, -0.732305, -0.655097,
		0.979114, 0.193886, 0.061184,
		33.462982, 35.606590, 45.370953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.167782, 34.795158, 45.435196>,  <32.777599, 35.470871, 45.328121>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.167782, 34.795158, 45.435196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434452, 35.069752, 45.551323>,  <33.594456, 35.234509, 45.620998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.434452, 35.069752, 45.551323>,  <33.167782, 34.795158, 45.435196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.434452, 35.069752, 45.551323> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368695, -0.642250, 0.671996,
		0.647767, -0.340968, -0.681277,
		0.666679, 0.686481, 0.290315,
		33.634457, 35.275696, 45.638416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805618, 34.580105, 45.499554>,  <33.167782, 34.795158, 45.435196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805618, 34.580105, 45.499554> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841610, 34.910831, 45.721645>,  <33.863205, 35.109268, 45.854900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.841610, 34.910831, 45.721645>,  <33.805618, 34.580105, 45.499554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841610, 34.910831, 45.721645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292068, -0.554889, 0.778970,
		0.952155, 0.092075, -0.291414,
		0.089979, 0.826813, 0.555233,
		33.868603, 35.158875, 45.888214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480785, 34.703533, 45.691608>,  <33.805618, 34.580105, 45.499554>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480785, 34.703533, 45.691608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290096, 34.884624, 45.993011>,  <34.175682, 34.993279, 46.173855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.290096, 34.884624, 45.993011>,  <34.480785, 34.703533, 45.691608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290096, 34.884624, 45.993011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283856, -0.731978, 0.619382,
		0.831963, 0.509160, 0.220439,
		-0.476721, 0.452730, 0.753507,
		34.147079, 35.020443, 46.219063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916889, 34.797939, 46.261887>,  <34.480785, 34.703533, 45.691608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916889, 34.797939, 46.261887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570381, 34.849941, 46.454834>,  <34.362476, 34.881142, 46.570602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.570381, 34.849941, 46.454834>,  <34.916889, 34.797939, 46.261887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570381, 34.849941, 46.454834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325149, -0.586343, 0.741943,
		0.379291, 0.799563, 0.465658,
		-0.866266, 0.130004, 0.482372,
		34.310501, 34.888943, 46.599545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059879, 34.832249, 47.050297>,  <34.916889, 34.797939, 46.261887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059879, 34.832249, 47.050297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.668404, 34.755463, 47.021130>,  <34.433517, 34.709393, 47.003628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.668404, 34.755463, 47.021130>,  <35.059879, 34.832249, 47.050297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668404, 34.755463, 47.021130> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084256, -0.699223, 0.709921,
		-0.187268, 0.688648, 0.700496,
		-0.978689, -0.191966, -0.072919,
		34.374798, 34.697872, 46.999252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226528, 35.461376, 47.526634>,  <35.059879, 34.832249, 47.050297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.226528, 35.461376, 47.526634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610054, 35.425823, 47.634544>,  <35.840168, 35.404491, 47.699291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.610054, 35.425823, 47.634544>,  <35.226528, 35.461376, 47.526634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610054, 35.425823, 47.634544> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279297, 0.467858, -0.838512,
		-0.051683, 0.879322, 0.473414,
		0.958813, -0.088886, 0.269772,
		35.897697, 35.399158, 47.715477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558308, 36.153290, 47.457363>,  <35.226528, 35.461376, 47.526634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.558308, 36.153290, 47.457363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.845020, 35.876022, 47.427032>,  <36.017048, 35.709663, 47.408833>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.845020, 35.876022, 47.427032>,  <35.558308, 36.153290, 47.457363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845020, 35.876022, 47.427032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345594, 0.447594, -0.824757,
		0.605634, 0.564962, 0.560380,
		0.716779, -0.693165, -0.075831,
		36.060055, 35.668072, 47.404282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284081, 36.489487, 47.408443>,  <35.558308, 36.153290, 47.457363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284081, 36.489487, 47.408443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.309719, 36.112610, 47.276886>,  <36.325104, 35.886486, 47.197952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.309719, 36.112610, 47.276886>,  <36.284081, 36.489487, 47.408443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309719, 36.112610, 47.276886> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387459, 0.327214, -0.861862,
		0.919656, -0.072192, 0.386033,
		0.064096, -0.942189, -0.328895,
		36.328949, 35.829952, 47.178219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925053, 36.452389, 47.170753>,  <36.284081, 36.489487, 47.408443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925053, 36.452389, 47.170753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724010, 36.160755, 46.984928>,  <36.603386, 35.985775, 46.873432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.724010, 36.160755, 46.984928>,  <36.925053, 36.452389, 47.170753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.724010, 36.160755, 46.984928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511256, 0.182660, -0.839793,
		0.697138, -0.659598, 0.280943,
		-0.502609, -0.729085, -0.464563,
		36.573227, 35.942028, 46.845558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494194, 36.069954, 46.722229>,  <36.925053, 36.452389, 47.170753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494194, 36.069954, 46.722229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128906, 35.990379, 46.579987>,  <36.909733, 35.942635, 46.494640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.128906, 35.990379, 46.579987>,  <37.494194, 36.069954, 46.722229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128906, 35.990379, 46.579987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337424, 0.120032, -0.933669,
		0.228430, -0.972633, -0.042488,
		-0.913217, -0.198941, -0.355609,
		36.854942, 35.930698, 46.473305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573586, 35.679325, 46.137665>,  <37.494194, 36.069954, 46.722229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573586, 35.679325, 46.137665> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203217, 35.815258, 46.071712>,  <36.980995, 35.896816, 46.032143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.203217, 35.815258, 46.071712>,  <37.573586, 35.679325, 46.137665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203217, 35.815258, 46.071712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263814, 0.269436, -0.926178,
		-0.270321, -0.901065, -0.339129,
		-0.925920, 0.339833, -0.164880,
		36.925442, 35.917210, 46.022247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.350063, 35.399906, 45.460331>,  <37.573586, 35.679325, 46.137665>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.350063, 35.399906, 45.460331> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.144032, 35.736378, 45.526192>,  <37.020412, 35.938263, 45.565708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.144032, 35.736378, 45.526192>,  <37.350063, 35.399906, 45.460331>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144032, 35.736378, 45.526192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187884, 0.298225, -0.935821,
		-0.836298, -0.451085, -0.311653,
		-0.515077, 0.841180, 0.164653,
		36.989510, 35.988731, 45.575588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045837, 35.542770, 44.867374>,  <37.350063, 35.399906, 45.460331>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045837, 35.542770, 44.867374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997707, 35.907116, 45.025288>,  <36.968830, 36.125721, 45.120033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997707, 35.907116, 45.025288>,  <37.045837, 35.542770, 44.867374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997707, 35.907116, 45.025288> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145983, 0.409582, -0.900517,
		-0.981942, -0.050724, -0.182253,
		-0.120325, 0.910862, 0.394781,
		36.961609, 36.180374, 45.143723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557816, 35.894836, 44.489479>,  <37.045837, 35.542770, 44.867374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557816, 35.894836, 44.489479> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.739109, 36.196350, 44.679798>,  <36.847885, 36.377258, 44.793991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.739109, 36.196350, 44.679798>,  <36.557816, 35.894836, 44.489479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.739109, 36.196350, 44.679798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018051, 0.525901, -0.850355,
		-0.891209, 0.393999, 0.224749,
		0.453235, 0.753786, 0.475799,
		36.875080, 36.422485, 44.822536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097431, 36.460793, 44.247410>,  <36.557816, 35.894836, 44.489479>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097431, 36.460793, 44.247410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.433949, 36.632038, 44.379436>,  <36.635860, 36.734783, 44.458652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.433949, 36.632038, 44.379436>,  <36.097431, 36.460793, 44.247410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433949, 36.632038, 44.379436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047673, 0.549446, -0.834168,
		-0.538470, 0.717517, 0.441837,
		0.841295, 0.428111, 0.330067,
		36.686337, 36.760471, 44.478458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.983494, 37.106949, 44.277416>,  <36.097431, 36.460793, 44.247410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.983494, 37.106949, 44.277416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379822, 37.068306, 44.239586>,  <36.617619, 37.045120, 44.216888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.379822, 37.068306, 44.239586>,  <35.983494, 37.106949, 44.277416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379822, 37.068306, 44.239586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021622, 0.577294, -0.816250,
		0.133454, 0.810801, 0.569906,
		0.990819, -0.096609, -0.094573,
		36.677067, 37.039322, 44.211212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.217178, 37.794197, 44.167038>,  <35.983494, 37.106949, 44.277416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.217178, 37.794197, 44.167038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500366, 37.546726, 44.030792>,  <36.670277, 37.398243, 43.949047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.500366, 37.546726, 44.030792>,  <36.217178, 37.794197, 44.167038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500366, 37.546726, 44.030792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100300, 0.565474, -0.818645,
		0.699087, 0.545410, 0.462390,
		0.707967, -0.618682, -0.340611,
		36.712757, 37.361122, 43.928608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646252, 38.313759, 43.850750>,  <36.217178, 37.794197, 44.167038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646252, 38.313759, 43.850750> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.771126, 37.965931, 43.697704>,  <36.846050, 37.757236, 43.605877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.771126, 37.965931, 43.697704>,  <36.646252, 38.313759, 43.850750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.771126, 37.965931, 43.697704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016194, 0.397814, -0.917323,
		0.949883, 0.292572, 0.110111,
		0.312186, -0.869566, -0.382614,
		36.864780, 37.705063, 43.582920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196815, 38.515362, 43.373276>,  <36.646252, 38.313759, 43.850750>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196815, 38.515362, 43.373276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052650, 38.153980, 43.280430>,  <36.966152, 37.937153, 43.224724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.052650, 38.153980, 43.280430>,  <37.196815, 38.515362, 43.373276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052650, 38.153980, 43.280430> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113785, 0.289557, -0.950373,
		0.925829, -0.316111, -0.207158,
		-0.360408, -0.903454, -0.232112,
		36.944527, 37.882942, 43.210796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.749752, 41.900166, 30.570557> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.119949, 41.894169, 30.419168>,  <25.342068, 41.890572, 30.328335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.119949, 41.894169, 30.419168>,  <24.749752, 41.900166, 30.570557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119949, 41.894169, 30.419168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164589, -0.884036, 0.437483,
		-0.341140, -0.467179, -0.815701,
		0.925491, -0.014988, -0.378472,
		25.397596, 41.889671, 30.305626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.790901, 41.305115, 30.203936>,  <24.749752, 41.900166, 30.570557>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.790901, 41.305115, 30.203936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.148558, 41.441341, 30.320227>,  <25.363152, 41.523075, 30.390001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.148558, 41.441341, 30.320227>,  <24.790901, 41.305115, 30.203936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.148558, 41.441341, 30.320227> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253080, -0.919978, 0.299319,
		0.369402, -0.194056, -0.908782,
		0.894143, 0.340563, 0.290730,
		25.416801, 41.543510, 30.407446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326733, 40.841114, 29.954489>,  <24.790901, 41.305115, 30.203936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326733, 40.841114, 29.954489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.462090, 41.026203, 30.282240>,  <25.543303, 41.137257, 30.478891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.462090, 41.026203, 30.282240>,  <25.326733, 40.841114, 29.954489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.462090, 41.026203, 30.282240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209031, -0.885957, 0.413989,
		0.917495, 0.031186, -0.396523,
		0.338391, 0.462718, 0.819380,
		25.563606, 41.165020, 30.528053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.773706, 40.284397, 30.255180>,  <25.326733, 40.841114, 29.954489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.773706, 40.284397, 30.255180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.779911, 40.549530, 30.554623>,  <25.783634, 40.708611, 30.734287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.779911, 40.549530, 30.554623>,  <25.773706, 40.284397, 30.255180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779911, 40.549530, 30.554623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236421, -0.729898, 0.641369,
		0.971527, 0.167036, -0.168031,
		0.015514, 0.662833, 0.748606,
		25.784565, 40.748379, 30.779205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.468761, 40.222233, 30.675158>,  <25.773706, 40.284397, 30.255180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.468761, 40.222233, 30.675158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.200857, 40.396530, 30.915674>,  <26.040115, 40.501106, 31.059984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.200857, 40.396530, 30.915674>,  <26.468761, 40.222233, 30.675158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200857, 40.396530, 30.915674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091435, -0.755182, 0.649107,
		0.736928, 0.489724, 0.465948,
		-0.669759, 0.435741, 0.601293,
		25.999929, 40.527252, 31.096062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.825899, 40.174236, 31.295162>,  <26.468761, 40.222233, 30.675158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.825899, 40.174236, 31.295162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.448763, 40.243195, 31.409239>,  <26.222481, 40.284569, 31.477684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.448763, 40.243195, 31.409239>,  <26.825899, 40.174236, 31.295162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.448763, 40.243195, 31.409239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042928, -0.785834, 0.616946,
		0.330471, 0.593923, 0.733515,
		-0.942840, 0.172394, 0.285191,
		26.165911, 40.294914, 31.494797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.839018, 40.225609, 32.008305>,  <26.825899, 40.174236, 31.295162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.839018, 40.225609, 32.008305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447975, 40.154892, 31.962656>,  <26.213348, 40.112461, 31.935266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.447975, 40.154892, 31.962656>,  <26.839018, 40.225609, 32.008305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.447975, 40.154892, 31.962656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045202, -0.706112, 0.706656,
		-0.205518, 0.685674, 0.698293,
		-0.977609, -0.176795, -0.114125,
		26.154692, 40.101852, 31.928419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.570684, 40.167583, 32.623749>,  <26.839018, 40.225609, 32.008305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.570684, 40.167583, 32.623749> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311501, 39.978695, 32.384701>,  <26.155991, 39.865360, 32.241272>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.311501, 39.978695, 32.384701>,  <26.570684, 40.167583, 32.623749>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.311501, 39.978695, 32.384701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008890, -0.789251, 0.614007,
		-0.761623, 0.392539, 0.515600,
		-0.647959, -0.472226, -0.597622,
		26.117113, 39.837029, 32.205414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.230383, 39.879948, 33.101009>,  <26.570684, 40.167583, 32.623749>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.230383, 39.879948, 33.101009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138338, 39.671452, 32.772289>,  <26.083111, 39.546352, 32.575058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.138338, 39.671452, 32.772289>,  <26.230383, 39.879948, 33.101009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138338, 39.671452, 32.772289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082694, -0.830934, 0.550191,
		-0.969644, 0.194563, 0.148105,
		-0.230112, -0.521242, -0.821800,
		26.069304, 39.515079, 32.525749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836050, 39.397682, 33.335167>,  <26.230383, 39.879948, 33.101009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836050, 39.397682, 33.335167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.931726, 39.242561, 32.979099>,  <25.989132, 39.149487, 32.765461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.931726, 39.242561, 32.979099>,  <25.836050, 39.397682, 33.335167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.931726, 39.242561, 32.979099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157699, -0.920121, 0.358480,
		-0.958081, 0.054634, -0.281241,
		0.239191, -0.387804, -0.890166,
		26.003485, 39.126221, 32.712051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.296350, 38.994228, 33.101543>,  <25.836050, 39.397682, 33.335167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.296350, 38.994228, 33.101543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.604101, 38.847778, 32.892159>,  <25.788752, 38.759907, 32.766529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.604101, 38.847778, 32.892159>,  <25.296350, 38.994228, 33.101543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.604101, 38.847778, 32.892159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088596, -0.872691, 0.480168,
		-0.632621, -0.323054, -0.703866,
		0.769378, -0.366124, -0.523461,
		25.834915, 38.737942, 32.735119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.068354, 38.334911, 32.787945>,  <25.296350, 38.994228, 33.101543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.068354, 38.334911, 32.787945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.467676, 38.317295, 32.803177>,  <25.707270, 38.306725, 32.812317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.467676, 38.317295, 32.803177>,  <25.068354, 38.334911, 32.787945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.467676, 38.317295, 32.803177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054893, -0.929881, 0.363742,
		0.019390, -0.365215, -0.930721,
		0.998304, -0.044037, 0.038078,
		25.767168, 38.304085, 32.814602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.132553, 37.680061, 32.478233>,  <25.068354, 38.334911, 32.787945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.132553, 37.680061, 32.478233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.446730, 37.806366, 32.691166>,  <25.635235, 37.882149, 32.818924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.446730, 37.806366, 32.691166>,  <25.132553, 37.680061, 32.478233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.446730, 37.806366, 32.691166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044212, -0.886501, 0.460610,
		0.617355, -0.338247, -0.710255,
		0.785442, 0.315762, 0.532331,
		25.682362, 37.901093, 32.850864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.577526, 37.228470, 32.344048>,  <25.132553, 37.680061, 32.478233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.577526, 37.228470, 32.344048> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.677080, 37.389877, 32.696236>,  <25.736813, 37.486721, 32.907551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.677080, 37.389877, 32.696236>,  <25.577526, 37.228470, 32.344048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.677080, 37.389877, 32.696236> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053529, -0.901958, 0.428494,
		0.967053, -0.153776, -0.202883,
		0.248884, 0.403516, 0.880472,
		25.751745, 37.510933, 32.960377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.968159, 36.831467, 32.649193>,  <25.577526, 37.228470, 32.344048>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.968159, 36.831467, 32.649193> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.917297, 37.016838, 32.999981>,  <25.886780, 37.128059, 33.210453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.917297, 37.016838, 32.999981>,  <25.968159, 36.831467, 32.649193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917297, 37.016838, 32.999981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026698, -0.885421, 0.464023,
		0.991524, 0.035589, 0.124958,
		-0.127155, 0.463426, 0.876966,
		25.879150, 37.155865, 33.263069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.411095, 36.558353, 33.163181>,  <25.968159, 36.831467, 32.649193>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.411095, 36.558353, 33.163181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119884, 36.714832, 33.388371>,  <25.945158, 36.808720, 33.523483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.119884, 36.714832, 33.388371>,  <26.411095, 36.558353, 33.163181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.119884, 36.714832, 33.388371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002991, -0.823008, 0.568022,
		0.685541, 0.411852, 0.600343,
		-0.728027, 0.391198, 0.562974,
		25.901476, 36.832191, 33.557262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652138, 36.475185, 33.946709>,  <26.411095, 36.558353, 33.163181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652138, 36.475185, 33.946709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256371, 36.532482, 33.937492>,  <26.018909, 36.566860, 33.931961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.256371, 36.532482, 33.937492>,  <26.652138, 36.475185, 33.946709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256371, 36.532482, 33.937492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120338, -0.721564, 0.681810,
		0.081037, 0.677369, 0.731167,
		-0.989420, 0.143239, -0.023040,
		25.959545, 36.575455, 33.930580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.471983, 36.436325, 34.644932>,  <26.652138, 36.475185, 33.946709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.471983, 36.436325, 34.644932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.123108, 36.381210, 34.457184>,  <25.913784, 36.348141, 34.344536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.123108, 36.381210, 34.457184>,  <26.471983, 36.436325, 34.644932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.123108, 36.381210, 34.457184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245971, -0.705852, 0.664283,
		-0.422835, 0.694829, 0.581742,
		-0.872186, -0.137791, -0.469367,
		25.861452, 36.339874, 34.316372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.955870, 36.596237, 35.095909>,  <26.471983, 36.436325, 34.644932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.955870, 36.596237, 35.095909> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.833635, 36.334621, 34.819115>,  <25.760294, 36.177650, 34.653038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.833635, 36.334621, 34.819115>,  <25.955870, 36.596237, 35.095909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.833635, 36.334621, 34.819115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145209, -0.686238, 0.712736,
		-0.941026, 0.318286, 0.114733,
		-0.305588, -0.654043, -0.691986,
		25.741959, 36.138409, 34.611519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754944, 36.639278, 35.286758>,  <25.955870, 36.596237, 35.095909>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754944, 36.639278, 35.286758> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.977324, 36.930740, 35.446747>,  <27.110750, 37.105618, 35.542740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.977324, 36.930740, 35.446747>,  <26.754944, 36.639278, 35.286758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.977324, 36.930740, 35.446747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801866, 0.596886, 0.027176,
		-0.218936, -0.335833, 0.916124,
		0.555948, 0.728659, 0.399973,
		27.144108, 37.149338, 35.566738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450499, 36.948990, 35.850307>,  <26.754944, 36.639278, 35.286758>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450499, 36.948990, 35.850307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712831, 37.240929, 35.773155>,  <26.870232, 37.416092, 35.726864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.712831, 37.240929, 35.773155>,  <26.450499, 36.948990, 35.850307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.712831, 37.240929, 35.773155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712775, 0.682841, 0.160247,
		0.248662, 0.032384, 0.968049,
		0.655834, 0.729849, -0.192880,
		26.909582, 37.459885, 35.715290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.229837, 37.510040, 36.260353>,  <26.450499, 36.948990, 35.850307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.229837, 37.510040, 36.260353> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468397, 37.684303, 35.990685>,  <26.611532, 37.788860, 35.828884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.468397, 37.684303, 35.990685>,  <26.229837, 37.510040, 36.260353>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.468397, 37.684303, 35.990685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529116, 0.844962, 0.077946,
		0.603610, 0.310230, 0.734447,
		0.596399, 0.435657, -0.674175,
		26.647316, 37.814999, 35.788433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321733, 38.087292, 36.502674>,  <26.229837, 37.510040, 36.260353>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321733, 38.087292, 36.502674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471823, 38.157516, 36.138611>,  <26.561876, 38.199650, 35.920174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471823, 38.157516, 36.138611>,  <26.321733, 38.087292, 36.502674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471823, 38.157516, 36.138611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400663, 0.916153, 0.011541,
		0.835869, 0.360335, 0.414104,
		0.375224, 0.175563, -0.910156,
		26.584391, 38.210186, 35.865562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.849607, 38.581745, 36.478287>,  <26.321733, 38.087292, 36.502674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.849607, 38.581745, 36.478287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640139, 38.607113, 36.138466>,  <26.514458, 38.622334, 35.934570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.640139, 38.607113, 36.138466>,  <26.849607, 38.581745, 36.478287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.640139, 38.607113, 36.138466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148586, 0.975141, 0.164387,
		0.838863, 0.212317, -0.501229,
		-0.523670, 0.063423, -0.849557,
		26.483038, 38.626141, 35.883598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.031757, 39.238438, 36.283710>,  <26.849607, 38.581745, 36.478287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.031757, 39.238438, 36.283710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.738453, 39.148724, 36.026955>,  <26.562471, 39.094894, 35.872902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.738453, 39.148724, 36.026955>,  <27.031757, 39.238438, 36.283710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.738453, 39.148724, 36.026955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158135, 0.974397, -0.159825,
		0.661304, -0.015688, -0.749953,
		-0.733260, -0.224287, -0.641892,
		26.518475, 39.081436, 35.834389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.014664, 39.760406, 35.793079>,  <27.031757, 39.238438, 36.283710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.014664, 39.760406, 35.793079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.649731, 39.612835, 35.722046>,  <26.430771, 39.524292, 35.679424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.649731, 39.612835, 35.722046>,  <27.014664, 39.760406, 35.793079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.649731, 39.612835, 35.722046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321793, 0.914255, -0.246145,
		0.253169, -0.167421, -0.952825,
		-0.912335, -0.368929, -0.177586,
		26.376030, 39.502155, 35.668770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803892, 40.055443, 35.186508>,  <27.014664, 39.760406, 35.793079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803892, 40.055443, 35.186508> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471174, 39.940617, 35.376545>,  <26.271544, 39.871723, 35.490566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.471174, 39.940617, 35.376545>,  <26.803892, 40.055443, 35.186508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.471174, 39.940617, 35.376545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478201, 0.805180, -0.350725,
		-0.281855, -0.518921, -0.807018,
		-0.831794, -0.287063, 0.475093,
		26.221636, 39.854496, 35.519073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.291271, 40.257301, 34.726833>,  <26.803892, 40.055443, 35.186508>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.291271, 40.257301, 34.726833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140625, 40.248436, 35.097275>,  <26.050238, 40.243118, 35.319542>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.140625, 40.248436, 35.097275>,  <26.291271, 40.257301, 34.726833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.140625, 40.248436, 35.097275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624023, 0.744934, -0.235943,
		-0.684659, -0.666770, -0.294380,
		-0.376614, -0.022160, 0.926105,
		26.027641, 40.241787, 35.375107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632160, 40.345623, 34.610825>,  <26.291271, 40.257301, 34.726833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632160, 40.345623, 34.610825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.667585, 40.440746, 34.997730>,  <25.688841, 40.497818, 35.229874>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.667585, 40.440746, 34.997730>,  <25.632160, 40.345623, 34.610825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667585, 40.440746, 34.997730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657959, 0.743034, -0.122434,
		-0.747828, -0.625578, 0.222273,
		0.088564, 0.237806, 0.967267,
		25.694155, 40.512089, 35.287910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996958, 40.671124, 34.725727>,  <25.632160, 40.345623, 34.610825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996958, 40.671124, 34.725727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.222012, 40.778461, 35.038502>,  <25.357044, 40.842865, 35.226166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.222012, 40.778461, 35.038502>,  <24.996958, 40.671124, 34.725727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222012, 40.778461, 35.038502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413972, 0.910175, -0.014487,
		-0.715591, -0.315550, 0.623184,
		0.562635, 0.268347, 0.781942,
		25.390802, 40.858967, 35.273083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.513830, 41.066612, 35.117989>,  <24.996958, 40.671124, 34.725727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.513830, 41.066612, 35.117989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.884630, 41.152546, 35.240967>,  <25.107109, 41.204105, 35.314754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.884630, 41.152546, 35.240967>,  <24.513830, 41.066612, 35.117989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884630, 41.152546, 35.240967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157176, 0.966768, -0.201630,
		-0.340542, 0.138588, 0.929959,
		0.926999, 0.214831, 0.307443,
		25.162729, 41.216995, 35.333199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.433043, 41.722916, 35.437923>,  <24.513830, 41.066612, 35.117989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.433043, 41.722916, 35.437923> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.823444, 41.687572, 35.358318>,  <25.057686, 41.666367, 35.310555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.823444, 41.687572, 35.358318>,  <24.433043, 41.722916, 35.437923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.823444, 41.687572, 35.358318> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043136, 0.974316, -0.221013,
		0.213432, 0.207125, 0.954749,
		0.976005, -0.088355, -0.199016,
		25.116245, 41.661064, 35.298615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.696644, 42.387707, 35.559998>,  <24.433043, 41.722916, 35.437923>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.696644, 42.387707, 35.559998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.011848, 42.215443, 35.384010>,  <25.200972, 42.112083, 35.278419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.011848, 42.215443, 35.384010>,  <24.696644, 42.387707, 35.559998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.011848, 42.215443, 35.384010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291151, 0.890340, -0.350037,
		0.542467, 0.147736, 0.826984,
		0.788010, -0.430661, -0.439967,
		25.248251, 42.086243, 35.252022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.319517, 42.764675, 35.787045>,  <24.696644, 42.387707, 35.559998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.319517, 42.764675, 35.787045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.357044, 42.617966, 35.416817>,  <25.379560, 42.529942, 35.194679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.357044, 42.617966, 35.416817>,  <25.319517, 42.764675, 35.787045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357044, 42.617966, 35.416817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164260, 0.922631, -0.348957,
		0.981946, -0.119297, 0.146803,
		0.093816, -0.366771, -0.925569,
		25.385189, 42.507935, 35.139145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.752867, 43.260338, 35.471123>,  <25.319517, 42.764675, 35.787045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.752867, 43.260338, 35.471123> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.650284, 43.043518, 35.151020>,  <25.588734, 42.913425, 34.958958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.650284, 43.043518, 35.151020>,  <25.752867, 43.260338, 35.471123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650284, 43.043518, 35.151020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304900, 0.740310, -0.599147,
		0.917206, -0.397654, -0.024586,
		-0.256455, -0.542045, -0.800261,
		25.573347, 42.880905, 34.910942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.302490, 43.208454, 35.055870>,  <25.752867, 43.260338, 35.471123>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.302490, 43.208454, 35.055870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977398, 43.170181, 34.825981>,  <25.782343, 43.147217, 34.688046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.977398, 43.170181, 34.825981>,  <26.302490, 43.208454, 35.055870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.977398, 43.170181, 34.825981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317627, 0.754191, -0.574726,
		0.488445, -0.649647, -0.582564,
		-0.812733, -0.095684, -0.574726,
		25.733578, 43.141476, 34.653564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.556566, 43.289421, 34.343990>,  <26.302490, 43.208454, 35.055870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.556566, 43.289421, 34.343990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159031, 43.333752, 34.343460>,  <25.920509, 43.360348, 34.343143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.159031, 43.333752, 34.343460>,  <26.556566, 43.289421, 34.343990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159031, 43.333752, 34.343460> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078463, 0.695121, -0.714598,
		-0.078275, -0.710299, -0.699534,
		-0.993840, 0.110823, -0.001322,
		25.860880, 43.366997, 34.343063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.436953, 43.573349, 33.654305>,  <26.556566, 43.289421, 34.343990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.436953, 43.573349, 33.654305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092075, 43.630272, 33.848778>,  <25.885149, 43.664425, 33.965462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.092075, 43.630272, 33.848778>,  <26.436953, 43.573349, 33.654305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.092075, 43.630272, 33.848778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250641, 0.714192, -0.653536,
		-0.440227, -0.685331, -0.580104,
		-0.862194, 0.142306, 0.486179,
		25.833418, 43.672962, 33.994633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951422, 43.507210, 33.181206>,  <26.436953, 43.573349, 33.654305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951422, 43.507210, 33.181206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.804659, 43.730350, 33.478977>,  <25.716602, 43.864235, 33.657642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.804659, 43.730350, 33.478977>,  <25.951422, 43.507210, 33.181206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804659, 43.730350, 33.478977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269741, 0.702065, -0.659049,
		-0.890293, -0.442612, -0.107115,
		-0.366905, 0.557853, 0.744433,
		25.694588, 43.897705, 33.702309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.309589, 43.684814, 33.022839>,  <25.951422, 43.507210, 33.181206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.309589, 43.684814, 33.022839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.435343, 43.962574, 33.281754>,  <25.510794, 44.129230, 33.437103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.435343, 43.962574, 33.281754>,  <25.309589, 43.684814, 33.022839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.435343, 43.962574, 33.281754> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268111, 0.719046, -0.641162,
		-0.910648, 0.028026, 0.412231,
		0.314383, 0.694397, 0.647284,
		25.529657, 44.170895, 33.475937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.723850, 44.209278, 32.895535>,  <25.309589, 43.684814, 33.022839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.723850, 44.209278, 32.895535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.024456, 44.383095, 33.094090>,  <25.204821, 44.487385, 33.213223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.024456, 44.383095, 33.094090>,  <24.723850, 44.209278, 32.895535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.024456, 44.383095, 33.094090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091382, 0.813742, -0.573998,
		-0.653355, 0.386008, 0.651249,
		0.751516, 0.434537, 0.496388,
		25.249910, 44.513454, 33.243008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.575666, 44.869030, 32.884548>,  <24.723850, 44.209278, 32.895535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.575666, 44.869030, 32.884548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.972870, 44.861706, 32.931187>,  <25.211193, 44.857311, 32.959171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<24.972870, 44.861706, 32.931187>,  <24.575666, 44.869030, 32.884548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.972870, 44.861706, 32.931187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097306, 0.686067, -0.721002,
		-0.066793, 0.727308, 0.683053,
		0.993011, -0.018307, 0.116596,
		25.270773, 44.856213, 32.966164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.726612, 32.738853, 46.446091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.333050, 32.670471, 46.425304>,  <37.096912, 32.629444, 46.412834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.333050, 32.670471, 46.425304>,  <37.726612, 32.738853, 46.446091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333050, 32.670471, 46.425304> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006121, -0.322905, 0.946412,
		-0.178572, 0.930864, 0.318755,
		-0.983908, -0.170954, -0.051964,
		37.037876, 32.619186, 46.409714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469398, 33.019196, 47.042027>,  <37.726612, 32.738853, 46.446091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469398, 33.019196, 47.042027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231148, 32.736523, 46.889278>,  <37.088196, 32.566917, 46.797630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.231148, 32.736523, 46.889278>,  <37.469398, 33.019196, 47.042027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231148, 32.736523, 46.889278> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068795, -0.428776, 0.900788,
		-0.800308, 0.562807, 0.206775,
		-0.595630, -0.706682, -0.381871,
		37.052460, 32.524517, 46.774715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877239, 32.980824, 47.483181>,  <37.469398, 33.019196, 47.042027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877239, 32.980824, 47.483181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.846973, 32.625046, 47.302891>,  <36.828815, 32.411579, 47.194717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.846973, 32.625046, 47.302891>,  <36.877239, 32.980824, 47.483181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.846973, 32.625046, 47.302891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299271, -0.410929, 0.861147,
		-0.951163, 0.200049, -0.235093,
		-0.075665, -0.889448, -0.450729,
		36.824272, 32.358212, 47.167671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191586, 32.706936, 47.683540>,  <36.877239, 32.980824, 47.483181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191586, 32.706936, 47.683540> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433949, 32.409386, 47.570740>,  <36.579365, 32.230858, 47.503059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.433949, 32.409386, 47.570740>,  <36.191586, 32.706936, 47.683540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.433949, 32.409386, 47.570740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226137, -0.500910, 0.835434,
		-0.762716, -0.442425, -0.471724,
		0.605909, -0.743874, -0.282004,
		36.615723, 32.186222, 47.486137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802765, 32.090622, 47.695766>,  <36.191586, 32.706936, 47.683540>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802765, 32.090622, 47.695766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183651, 32.001881, 47.779736>,  <36.412182, 31.948635, 47.830116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183651, 32.001881, 47.779736>,  <35.802765, 32.090622, 47.695766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183651, 32.001881, 47.779736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301365, -0.570732, 0.763835,
		-0.049651, -0.790598, -0.610319,
		0.952215, -0.221854, 0.209921,
		36.469315, 31.935324, 47.842712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705139, 31.470457, 48.064476>,  <35.802765, 32.090622, 47.695766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705139, 31.470457, 48.064476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086498, 31.579197, 48.116833>,  <36.315315, 31.644440, 48.148247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.086498, 31.579197, 48.116833>,  <35.705139, 31.470457, 48.064476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086498, 31.579197, 48.116833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035563, -0.532051, 0.845965,
		0.299616, -0.801885, -0.516924,
		0.953396, 0.271848, 0.130894,
		36.372517, 31.660751, 48.156101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.990383, 30.944550, 48.223351>,  <35.705139, 31.470457, 48.064476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.990383, 30.944550, 48.223351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285908, 31.185156, 48.344902>,  <36.463223, 31.329519, 48.417831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.285908, 31.185156, 48.344902>,  <35.990383, 30.944550, 48.223351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285908, 31.185156, 48.344902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145789, -0.582890, 0.799366,
		0.657956, -0.546277, -0.518339,
		0.738810, 0.601515, 0.303874,
		36.507549, 31.365610, 48.436066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.420303, 30.478146, 48.555988>,  <35.990383, 30.944550, 48.223351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.420303, 30.478146, 48.555988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538425, 30.841867, 48.673267>,  <36.609299, 31.060101, 48.743633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.538425, 30.841867, 48.673267>,  <36.420303, 30.478146, 48.555988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538425, 30.841867, 48.673267> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311464, -0.381738, 0.870210,
		0.903210, -0.165654, -0.395943,
		0.295300, 0.909304, 0.293195,
		36.627014, 31.114658, 48.761227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133453, 30.503817, 48.851601>,  <36.420303, 30.478146, 48.555988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133453, 30.503817, 48.851601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929016, 30.811167, 49.005680>,  <36.806355, 30.995577, 49.098129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.929016, 30.811167, 49.005680>,  <37.133453, 30.503817, 48.851601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.929016, 30.811167, 49.005680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305854, -0.256241, 0.916948,
		0.803267, 0.586461, -0.104048,
		-0.511093, 0.768377, 0.385201,
		36.775688, 31.041679, 49.121239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.580173, 30.793259, 49.334320>,  <37.133453, 30.503817, 48.851601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.580173, 30.793259, 49.334320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211578, 30.911974, 49.434536>,  <36.990421, 30.983202, 49.494667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.211578, 30.911974, 49.434536>,  <37.580173, 30.793259, 49.334320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.211578, 30.911974, 49.434536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191342, -0.214463, 0.957807,
		0.337996, 0.930550, 0.140838,
		-0.921492, 0.296787, 0.250541,
		36.935131, 31.001009, 49.509697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681122, 31.053043, 49.951488>,  <37.580173, 30.793259, 49.334320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681122, 31.053043, 49.951488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288708, 30.976101, 49.941921>,  <37.053261, 30.929935, 49.936180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.288708, 30.976101, 49.941921>,  <37.681122, 31.053043, 49.951488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288708, 30.976101, 49.941921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088878, -0.556041, 0.826389,
		-0.172259, 0.808590, 0.562591,
		-0.981034, -0.192355, -0.023917,
		36.994396, 30.918394, 49.934746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.530762, 30.961193, 50.682995>,  <37.681122, 31.053043, 49.951488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.530762, 30.961193, 50.682995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233997, 30.794390, 50.472977>,  <37.055939, 30.694307, 50.346966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.233997, 30.794390, 50.472977>,  <37.530762, 30.961193, 50.682995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.233997, 30.794390, 50.472977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081261, -0.721375, 0.687761,
		-0.665559, 0.552921, 0.501307,
		-0.741908, -0.417009, -0.525049,
		37.011425, 30.669287, 50.315460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897751, 30.906626, 51.060593>,  <37.530762, 30.961193, 50.682995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897751, 30.906626, 51.060593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878685, 31.266226, 50.886452>,  <36.867245, 31.481985, 50.781967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.878685, 31.266226, 50.886452>,  <36.897751, 30.906626, 51.060593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.878685, 31.266226, 50.886452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045550, -0.433436, -0.900032,
		-0.997824, -0.062731, -0.020290,
		-0.047665, 0.898998, -0.435351,
		36.864384, 31.535925, 50.755848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285721, 31.605318, 51.330555>,  <36.897751, 30.906626, 51.060593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285721, 31.605318, 51.330555> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927074, 31.544754, 51.164108>,  <36.711887, 31.508415, 51.064240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.927074, 31.544754, 51.164108>,  <37.285721, 31.605318, 51.330555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927074, 31.544754, 51.164108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406948, -0.652208, -0.639546,
		-0.174563, -0.742765, 0.646396,
		-0.896617, -0.151408, -0.416118,
		36.658089, 31.499332, 51.039272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984112, 31.490334, 52.030052>,  <37.285721, 31.605318, 51.330555>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984112, 31.490334, 52.030052> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768013, 31.766701, 52.222206>,  <36.638355, 31.932520, 52.337498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.768013, 31.766701, 52.222206>,  <36.984112, 31.490334, 52.030052>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768013, 31.766701, 52.222206> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020854, 0.581681, -0.813149,
		-0.841250, -0.429281, -0.328658,
		-0.540244, 0.690916, 0.480388,
		36.605942, 31.973976, 52.366322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251678, 31.633768, 51.656342>,  <36.984112, 31.490334, 52.030052>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251678, 31.633768, 51.656342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.341534, 31.957054, 51.874084>,  <36.395447, 32.151028, 52.004730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.341534, 31.957054, 51.874084>,  <36.251678, 31.633768, 51.656342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.341534, 31.957054, 51.874084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188771, 0.584145, -0.789392,
		-0.955983, 0.074568, 0.283788,
		0.224637, 0.808217, 0.544357,
		36.408924, 32.199520, 52.037392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910629, 32.100468, 51.243546>,  <36.251678, 31.633768, 51.656342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910629, 32.100468, 51.243546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.127094, 32.335133, 51.484535>,  <36.256973, 32.475933, 51.629128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.127094, 32.335133, 51.484535>,  <35.910629, 32.100468, 51.243546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127094, 32.335133, 51.484535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128289, 0.765653, -0.630332,
		-0.831075, 0.263822, 0.489604,
		0.541162, 0.586664, 0.602470,
		36.289444, 32.511131, 51.665276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483959, 32.710865, 51.396927>,  <35.910629, 32.100468, 51.243546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483959, 32.710865, 51.396927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873627, 32.783173, 51.451054>,  <36.107430, 32.826557, 51.483528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.873627, 32.783173, 51.451054>,  <35.483959, 32.710865, 51.396927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873627, 32.783173, 51.451054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050949, 0.759771, -0.648192,
		-0.219982, 0.624556, 0.749358,
		0.974173, 0.180770, 0.135316,
		36.165878, 32.837402, 51.491650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596130, 33.479809, 51.411224>,  <35.483959, 32.710865, 51.396927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596130, 33.479809, 51.411224> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967216, 33.353565, 51.331493>,  <36.189869, 33.277817, 51.283653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.967216, 33.353565, 51.331493>,  <35.596130, 33.479809, 51.411224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967216, 33.353565, 51.331493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042049, 0.618937, -0.784314,
		0.370911, 0.719239, 0.587469,
		0.927716, -0.315613, -0.199327,
		36.245533, 33.258881, 51.271694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953960, 34.089218, 51.313091>,  <35.596130, 33.479809, 51.411224>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953960, 34.089218, 51.313091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177265, 33.808342, 51.136330>,  <36.311249, 33.639816, 51.030273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.177265, 33.808342, 51.136330>,  <35.953960, 34.089218, 51.313091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177265, 33.808342, 51.136330> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000801, 0.532169, -0.846638,
		0.829664, 0.473000, 0.296527,
		0.558262, -0.702188, -0.441900,
		36.344742, 33.597687, 51.003761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522346, 34.503193, 51.141273>,  <35.953960, 34.089218, 51.313091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522346, 34.503193, 51.141273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506512, 34.166088, 50.926544>,  <36.497013, 33.963825, 50.797707>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506512, 34.166088, 50.926544>,  <36.522346, 34.503193, 51.141273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506512, 34.166088, 50.926544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135780, 0.527726, -0.838492,
		0.989948, -0.106081, 0.093541,
		-0.039585, -0.842765, -0.536825,
		36.494637, 33.913258, 50.765495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.091019, 34.526566, 50.539997>,  <36.522346, 34.503193, 51.141273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.091019, 34.526566, 50.539997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817905, 34.263184, 50.413349>,  <36.654037, 34.105152, 50.337360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.817905, 34.263184, 50.413349>,  <37.091019, 34.526566, 50.539997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817905, 34.263184, 50.413349> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088013, 0.356069, -0.930305,
		0.725305, -0.663059, -0.185163,
		-0.682779, -0.658458, -0.316617,
		36.613071, 34.065647, 50.318363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343208, 34.309345, 49.862789>,  <37.091019, 34.526566, 50.539997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343208, 34.309345, 49.862789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.955276, 34.211830, 49.862083>,  <36.722519, 34.153320, 49.861660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.955276, 34.211830, 49.862083>,  <37.343208, 34.309345, 49.862789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.955276, 34.211830, 49.862083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055556, 0.228033, -0.972067,
		0.237400, -0.942634, -0.234697,
		-0.969822, -0.243807, -0.001766,
		36.664330, 34.138691, 49.861553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.324509, 34.256454, 49.235119>,  <37.343208, 34.309345, 49.862789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.324509, 34.256454, 49.235119> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937805, 34.235119, 49.335140>,  <36.705784, 34.222317, 49.395153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.937805, 34.235119, 49.335140>,  <37.324509, 34.256454, 49.235119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937805, 34.235119, 49.335140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244346, 0.480654, -0.842180,
		-0.075269, -0.875287, -0.477711,
		-0.966762, -0.053337, 0.250051,
		36.647778, 34.219116, 49.410156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945995, 33.922752, 48.645382>,  <37.324509, 34.256454, 49.235119>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945995, 33.922752, 48.645382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691013, 34.129089, 48.874313>,  <36.538025, 34.252892, 49.011673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.691013, 34.129089, 48.874313>,  <36.945995, 33.922752, 48.645382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691013, 34.129089, 48.874313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360737, 0.456558, -0.813280,
		-0.680827, -0.724887, -0.104950,
		-0.637451, 0.515843, 0.572330,
		36.499779, 34.283844, 49.046013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212814, 33.875626, 48.243324>,  <36.945995, 33.922752, 48.645382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212814, 33.875626, 48.243324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168140, 34.191856, 48.484161>,  <36.141335, 34.381596, 48.628662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.168140, 34.191856, 48.484161>,  <36.212814, 33.875626, 48.243324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168140, 34.191856, 48.484161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223462, 0.570384, -0.790396,
		-0.968293, -0.222821, 0.112959,
		-0.111687, 0.790577, 0.602091,
		36.134636, 34.429031, 48.664787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795113, 34.196663, 47.829708>,  <36.212814, 33.875626, 48.243324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795113, 34.196663, 47.829708> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892948, 34.485973, 48.088028>,  <35.951649, 34.659561, 48.243019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.892948, 34.485973, 48.088028>,  <35.795113, 34.196663, 47.829708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892948, 34.485973, 48.088028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161760, 0.687127, -0.708301,
		-0.956039, 0.068776, 0.285059,
		0.244586, 0.723274, 0.645795,
		35.966324, 34.702957, 48.281765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180912, 34.651695, 47.868923>,  <35.795113, 34.196663, 47.829708>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180912, 34.651695, 47.868923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517780, 34.843456, 47.967655>,  <35.719902, 34.958511, 48.026894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.517780, 34.843456, 47.967655>,  <35.180912, 34.651695, 47.868923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517780, 34.843456, 47.967655> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123287, 0.616838, -0.777375,
		-0.524928, 0.624250, 0.578586,
		0.842170, 0.479398, 0.246834,
		35.770432, 34.987274, 48.041706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565243, 35.050961, 47.772564>,  <35.180912, 34.651695, 47.868923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565243, 35.050961, 47.772564> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344791, 34.774799, 47.585114>,  <34.212521, 34.609104, 47.472645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.344791, 34.774799, 47.585114>,  <34.565243, 35.050961, 47.772564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344791, 34.774799, 47.585114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280664, -0.375516, 0.883298,
		-0.785805, 0.618334, 0.013186,
		-0.551125, -0.690399, -0.468626,
		34.179455, 34.567680, 47.444527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875954, 34.928059, 48.071129>,  <34.565243, 35.050961, 47.772564>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875954, 34.928059, 48.071129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918640, 34.576622, 47.884930>,  <33.944252, 34.365761, 47.773209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.918640, 34.576622, 47.884930>,  <33.875954, 34.928059, 48.071129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.918640, 34.576622, 47.884930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236489, -0.477164, 0.846397,
		-0.965756, 0.019763, -0.258697,
		0.106714, -0.878592, -0.465498,
		33.950653, 34.313046, 47.745281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447151, 34.504082, 48.456554>,  <33.875954, 34.928059, 48.071129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447151, 34.504082, 48.456554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.629372, 34.214485, 48.249359>,  <33.738705, 34.040730, 48.125042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.629372, 34.214485, 48.249359>,  <33.447151, 34.504082, 48.456554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.629372, 34.214485, 48.249359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340367, -0.679317, 0.650137,
		-0.822571, -0.119864, -0.555886,
		0.455551, -0.723989, -0.517989,
		33.766037, 33.997288, 48.093964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114986, 33.895748, 48.703949>,  <33.447151, 34.504082, 48.456554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114986, 33.895748, 48.703949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439159, 33.740334, 48.528572>,  <33.633663, 33.647083, 48.423347>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.439159, 33.740334, 48.528572>,  <33.114986, 33.895748, 48.703949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.439159, 33.740334, 48.528572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172411, -0.873458, 0.455353,
		-0.559884, -0.293442, -0.774869,
		0.810435, -0.388540, -0.438442,
		33.682289, 33.623772, 48.397038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.018204, 33.203968, 48.455479>,  <33.114986, 33.895748, 48.703949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.018204, 33.203968, 48.455479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416759, 33.216118, 48.487186>,  <33.655891, 33.223408, 48.506210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.416759, 33.216118, 48.487186>,  <33.018204, 33.203968, 48.455479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.416759, 33.216118, 48.487186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019300, -0.828284, 0.559976,
		0.082669, -0.559484, -0.824708,
		0.996390, 0.030376, 0.079272,
		33.715675, 33.225231, 48.510967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245586, 32.504295, 48.504829>,  <33.018204, 33.203968, 48.455479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245586, 32.504295, 48.504829> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584995, 32.676418, 48.628017>,  <33.788643, 32.779690, 48.701931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584995, 32.676418, 48.628017>,  <33.245586, 32.504295, 48.504829>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584995, 32.676418, 48.628017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079917, -0.679537, 0.729275,
		0.523087, -0.594195, -0.610992,
		0.848524, 0.430303, 0.307970,
		33.839554, 32.805508, 48.720409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736977, 31.962013, 48.535225>,  <33.245586, 32.504295, 48.504829>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736977, 31.962013, 48.535225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863689, 32.255718, 48.775394>,  <33.939716, 32.431942, 48.919495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.863689, 32.255718, 48.775394>,  <33.736977, 31.962013, 48.535225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863689, 32.255718, 48.775394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148703, -0.663644, 0.733120,
		0.936768, -0.142958, -0.319420,
		0.316786, 0.734261, 0.600422,
		33.958725, 32.475998, 48.955521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951271, 31.287441, 48.395634>,  <33.736977, 31.962013, 48.535225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951271, 31.287441, 48.395634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608944, 31.085028, 48.352711>,  <33.403549, 30.963579, 48.326958>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.608944, 31.085028, 48.352711>,  <33.951271, 31.287441, 48.395634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608944, 31.085028, 48.352711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097778, 0.361945, -0.927058,
		0.507959, -0.782897, -0.359236,
		-0.855814, -0.506033, -0.107303,
		33.352200, 30.933218, 48.320518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013054, 30.937952, 47.767609>,  <33.951271, 31.287441, 48.395634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013054, 30.937952, 47.767609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620834, 30.956619, 47.843872>,  <33.385502, 30.967819, 47.889629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.620834, 30.956619, 47.843872>,  <34.013054, 30.937952, 47.767609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620834, 30.956619, 47.843872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178975, 0.186299, -0.966054,
		-0.080604, -0.981384, -0.174322,
		-0.980546, 0.046669, 0.190660,
		33.326672, 30.970619, 47.901070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685951, 30.569830, 47.295300>,  <34.013054, 30.937952, 47.767609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685951, 30.569830, 47.295300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399395, 30.810925, 47.435863>,  <33.227459, 30.955582, 47.520203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.399395, 30.810925, 47.435863>,  <33.685951, 30.569830, 47.295300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399395, 30.810925, 47.435863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191750, 0.314183, -0.929796,
		-0.670829, -0.733483, -0.109504,
		-0.716394, 0.602737, 0.351409,
		33.184475, 30.991745, 47.541286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126801, 30.487591, 46.846561>,  <33.685951, 30.569830, 47.295300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126801, 30.487591, 46.846561> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076447, 30.847908, 47.012802>,  <33.046234, 31.064098, 47.112545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.076447, 30.847908, 47.012802>,  <33.126801, 30.487591, 46.846561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076447, 30.847908, 47.012802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233347, 0.380294, -0.894944,
		-0.964210, -0.209642, 0.162322,
		-0.125888, 0.900792, 0.415603,
		33.038681, 31.118145, 47.137482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737091, 30.761011, 46.396023>,  <33.126801, 30.487591, 46.846561>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737091, 30.761011, 46.396023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840931, 31.092237, 46.594784>,  <32.903233, 31.290974, 46.714043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.840931, 31.092237, 46.594784>,  <32.737091, 30.761011, 46.396023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.840931, 31.092237, 46.594784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181864, 0.547258, -0.816966,
		-0.948438, 0.121713, 0.292663,
		0.259598, 0.828067, 0.496905,
		32.918812, 31.340658, 46.743855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241882, 31.271805, 46.283535>,  <32.737091, 30.761011, 46.396023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241882, 31.271805, 46.283535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576424, 31.460133, 46.395851>,  <32.777149, 31.573130, 46.463242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576424, 31.460133, 46.395851>,  <32.241882, 31.271805, 46.283535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576424, 31.460133, 46.395851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005560, 0.519469, -0.854471,
		-0.548163, 0.713078, 0.437078,
		0.836353, 0.470820, 0.280789,
		32.827328, 31.601379, 46.480087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126640, 31.994476, 46.132252>,  <32.241882, 31.271805, 46.283535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126640, 31.994476, 46.132252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524754, 31.973930, 46.165157>,  <32.763622, 31.961603, 46.184902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.524754, 31.973930, 46.165157>,  <32.126640, 31.994476, 46.132252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524754, 31.973930, 46.165157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096982, 0.532962, -0.840563,
		-0.000668, 0.844579, 0.535431,
		0.995286, -0.051366, 0.082265,
		32.823338, 31.958521, 46.189838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<35.333599, 28.225412, 48.704830> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.685104, 28.380093, 48.816715>,  <35.896008, 28.472900, 48.883846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.685104, 28.380093, 48.816715>,  <35.333599, 28.225412, 48.704830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685104, 28.380093, 48.816715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083464, 0.452535, -0.887832,
		-0.469905, 0.803540, 0.365395,
		0.878762, 0.386700, 0.279715,
		35.948734, 28.496103, 48.900631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430290, 28.319466, 48.014927>,  <35.333599, 28.225412, 48.704830>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430290, 28.319466, 48.014927> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689255, 28.536077, 48.229443>,  <35.844635, 28.666044, 48.358150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.689255, 28.536077, 48.229443>,  <35.430290, 28.319466, 48.014927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689255, 28.536077, 48.229443> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045367, 0.675026, -0.736398,
		-0.760789, 0.501082, 0.412453,
		0.647412, 0.541532, 0.536285,
		35.883480, 28.698538, 48.390327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311031, 28.949871, 47.818665>,  <35.430290, 28.319466, 48.014927>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311031, 28.949871, 47.818665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.662338, 29.002392, 48.002579>,  <35.873123, 29.033905, 48.112926>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.662338, 29.002392, 48.002579>,  <35.311031, 28.949871, 47.818665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.662338, 29.002392, 48.002579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263628, 0.669252, -0.694696,
		-0.398927, 0.731342, 0.553168,
		0.878269, 0.131302, 0.459785,
		35.925819, 29.041782, 48.140514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422634, 29.701336, 47.987282>,  <35.311031, 28.949871, 47.818665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422634, 29.701336, 47.987282> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.772873, 29.513014, 47.944065>,  <35.983017, 29.400021, 47.918137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.772873, 29.513014, 47.944065>,  <35.422634, 29.701336, 47.987282>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772873, 29.513014, 47.944065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295021, 0.698333, -0.652146,
		0.382481, 0.539143, 0.750355,
		0.875597, -0.470804, -0.108041,
		36.035553, 29.371773, 47.911652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965332, 30.220629, 47.962139>,  <35.422634, 29.701336, 47.987282>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965332, 30.220629, 47.962139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.146751, 29.899437, 47.807468>,  <36.255604, 29.706722, 47.714668>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.146751, 29.899437, 47.807468>,  <35.965332, 30.220629, 47.962139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146751, 29.899437, 47.807468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217365, 0.520429, -0.825776,
		0.864317, 0.290482, 0.410580,
		0.453551, -0.802978, -0.386675,
		36.282818, 29.658543, 47.691467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455605, 30.448120, 47.563446>,  <35.965332, 30.220629, 47.962139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455605, 30.448120, 47.563446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.387257, 30.083490, 47.413868>,  <36.346249, 29.864712, 47.324120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.387257, 30.083490, 47.413868>,  <36.455605, 30.448120, 47.563446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387257, 30.083490, 47.413868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075460, 0.390520, -0.917497,
		0.982401, -0.128550, -0.135514,
		-0.170865, -0.911575, -0.373947,
		36.335999, 29.810019, 47.301685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979244, 30.353718, 47.033459>,  <36.455605, 30.448120, 47.563446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979244, 30.353718, 47.033459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686264, 30.103140, 46.926815>,  <36.510475, 29.952793, 46.862827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.686264, 30.103140, 46.926815>,  <36.979244, 30.353718, 47.033459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.686264, 30.103140, 46.926815> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050635, 0.340391, -0.938919,
		0.678934, -0.701213, -0.217601,
		-0.732452, -0.626446, -0.266609,
		36.466530, 29.915207, 46.846832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123371, 30.117393, 46.388126>,  <36.979244, 30.353718, 47.033459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123371, 30.117393, 46.388126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.748337, 29.979301, 46.404877>,  <36.523315, 29.896446, 46.414925>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.748337, 29.979301, 46.404877>,  <37.123371, 30.117393, 46.388126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.748337, 29.979301, 46.404877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024827, -0.053654, -0.998251,
		0.346873, -0.936983, 0.041734,
		-0.937583, -0.345230, 0.041873,
		36.467060, 29.875732, 46.417439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001514, 29.725008, 45.804207>,  <37.123371, 30.117393, 46.388126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001514, 29.725008, 45.804207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610428, 29.776903, 45.870228>,  <36.375774, 29.808041, 45.909840>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.610428, 29.776903, 45.870228>,  <37.001514, 29.725008, 45.804207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610428, 29.776903, 45.870228> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122031, 0.288512, -0.949668,
		-0.170826, -0.948646, -0.266251,
		-0.977715, 0.129737, 0.165050,
		36.317112, 29.815825, 45.919743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608898, 29.310005, 45.255966>,  <37.001514, 29.725008, 45.804207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608898, 29.310005, 45.255966> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.389652, 29.624817, 45.369213>,  <36.258102, 29.813704, 45.437160>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.389652, 29.624817, 45.369213>,  <36.608898, 29.310005, 45.255966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389652, 29.624817, 45.369213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220714, 0.190391, -0.956576,
		-0.806754, -0.586803, 0.069351,
		-0.548117, 0.787028, 0.283114,
		36.225216, 29.860926, 45.454147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974422, 29.278141, 44.820625>,  <36.608898, 29.310005, 45.255966>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974422, 29.278141, 44.820625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.016846, 29.648018, 44.966881>,  <36.042301, 29.869944, 45.054634>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.016846, 29.648018, 44.966881>,  <35.974422, 29.278141, 44.820625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016846, 29.648018, 44.966881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094418, 0.375418, -0.922034,
		-0.989867, 0.063268, 0.127125,
		0.106060, 0.924694, 0.365640,
		36.048664, 29.925426, 45.076572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441841, 29.779919, 44.513996>,  <35.974422, 29.278141, 44.820625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441841, 29.779919, 44.513996> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.731724, 30.045300, 44.588436>,  <35.905655, 30.204527, 44.633099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.731724, 30.045300, 44.588436>,  <35.441841, 29.779919, 44.513996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731724, 30.045300, 44.588436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147864, 0.413522, -0.898408,
		-0.673006, 0.623564, 0.397782,
		0.724707, 0.663451, 0.186100,
		35.949135, 30.244335, 44.644264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.789448, 30.168591, 44.654400>,  <35.441841, 29.779919, 44.513996>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.789448, 30.168591, 44.654400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461246, 29.955984, 44.570240>,  <34.264328, 29.828421, 44.519745>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.461246, 29.955984, 44.570240>,  <34.789448, 30.168591, 44.654400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461246, 29.955984, 44.570240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060467, -0.446687, 0.892645,
		-0.568438, 0.719694, 0.398646,
		-0.820501, -0.531518, -0.210396,
		34.215096, 29.796528, 44.507122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531490, 30.243591, 45.252232>,  <34.789448, 30.168591, 44.654400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531490, 30.243591, 45.252232> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.350002, 29.934269, 45.075081>,  <34.241108, 29.748676, 44.968792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.350002, 29.934269, 45.075081>,  <34.531490, 30.243591, 45.252232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350002, 29.934269, 45.075081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082873, -0.531437, 0.843034,
		-0.887283, 0.345798, 0.305209,
		-0.453719, -0.773304, -0.442878,
		34.213886, 29.702278, 44.942219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989697, 29.965160, 45.671383>,  <34.531490, 30.243591, 45.252232>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989697, 29.965160, 45.671383> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.068199, 29.658512, 45.426834>,  <34.115299, 29.474524, 45.280106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.068199, 29.658512, 45.426834>,  <33.989697, 29.965160, 45.671383>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068199, 29.658512, 45.426834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005239, -0.624311, 0.781158,
		-0.980539, -0.150103, -0.126540,
		0.196255, -0.766619, -0.611375,
		34.127075, 29.428526, 45.243423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459290, 29.418964, 45.847649>,  <33.989697, 29.965160, 45.671383>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459290, 29.418964, 45.847649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.735394, 29.199594, 45.658855>,  <33.901058, 29.067972, 45.545582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.735394, 29.199594, 45.658855>,  <33.459290, 29.418964, 45.847649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.735394, 29.199594, 45.658855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169927, -0.756930, 0.631016,
		-0.703323, -0.355365, -0.615673,
		0.690262, -0.548427, -0.471980,
		33.942474, 29.035067, 45.517262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165249, 28.767214, 45.691418>,  <33.459290, 29.418964, 45.847649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165249, 28.767214, 45.691418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564152, 28.738731, 45.699444>,  <33.803493, 28.721642, 45.704258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.564152, 28.738731, 45.699444>,  <33.165249, 28.767214, 45.691418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.564152, 28.738731, 45.699444> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071495, -0.857939, 0.508752,
		-0.019010, -0.508793, -0.860679,
		0.997260, -0.071205, 0.020066,
		33.863331, 28.717369, 45.705463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224876, 28.115337, 45.569523>,  <33.165249, 28.767214, 45.691418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224876, 28.115337, 45.569523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.558620, 28.217972, 45.764668>,  <33.758865, 28.279552, 45.881752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.558620, 28.217972, 45.764668>,  <33.224876, 28.115337, 45.569523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.558620, 28.217972, 45.764668> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084939, -0.814636, 0.573719,
		0.544635, -0.520127, -0.657906,
		0.834361, 0.256586, 0.487858,
		33.808929, 28.294947, 45.911026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594242, 27.466349, 45.493946>,  <33.224876, 28.115337, 45.569523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594242, 27.466349, 45.493946> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727173, 27.683310, 45.802586>,  <33.806931, 27.813486, 45.987770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.727173, 27.683310, 45.802586>,  <33.594242, 27.466349, 45.493946>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727173, 27.683310, 45.802586> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021295, -0.813570, 0.581077,
		0.942925, -0.209538, -0.258819,
		0.332325, 0.542401, 0.771597,
		33.826870, 27.846029, 46.034065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924870, 27.015114, 46.018085>,  <33.594242, 27.466349, 45.493946>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924870, 27.015114, 46.018085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.932838, 27.342054, 46.248402>,  <33.937618, 27.538219, 46.386593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.932838, 27.342054, 46.248402>,  <33.924870, 27.015114, 46.018085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932838, 27.342054, 46.248402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086409, -0.572345, 0.815448,
		0.996061, -0.065995, 0.059227,
		0.019917, 0.817353, 0.575793,
		33.938812, 27.587261, 46.421139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436226, 26.860579, 46.530186>,  <33.924870, 27.015114, 46.018085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436226, 26.860579, 46.530186> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.236748, 27.180174, 46.664600>,  <34.117062, 27.371931, 46.745247>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.236748, 27.180174, 46.664600>,  <34.436226, 26.860579, 46.530186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236748, 27.180174, 46.664600> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025759, -0.401172, 0.915640,
		0.866393, 0.447972, 0.220645,
		-0.498698, 0.798988, 0.336033,
		34.087139, 27.419870, 46.765411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909653, 27.111368, 47.079350>,  <34.436226, 26.860579, 46.530186>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909653, 27.111368, 47.079350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.544159, 27.245649, 47.170910>,  <34.324863, 27.326218, 47.225845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.544159, 27.245649, 47.170910>,  <34.909653, 27.111368, 47.079350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.544159, 27.245649, 47.170910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031219, -0.503691, 0.863320,
		0.405116, 0.795989, 0.449758,
		-0.913732, 0.335703, 0.228904,
		34.270039, 27.346361, 47.239582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955868, 27.174492, 47.772045>,  <34.909653, 27.111368, 47.079350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955868, 27.174492, 47.772045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.562355, 27.194830, 47.703232>,  <34.326248, 27.207033, 47.661945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.562355, 27.194830, 47.703232>,  <34.955868, 27.174492, 47.772045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562355, 27.194830, 47.703232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178608, -0.367148, 0.912853,
		-0.016748, 0.928772, 0.370273,
		-0.983778, 0.050846, -0.172035,
		34.267223, 27.210083, 47.651623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.758415, 27.460243, 48.358692>,  <34.955868, 27.174492, 47.772045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.758415, 27.460243, 48.358692> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459484, 27.260593, 48.183250>,  <34.280125, 27.140804, 48.077984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.459484, 27.260593, 48.183250>,  <34.758415, 27.460243, 48.358692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.459484, 27.260593, 48.183250> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169022, -0.495582, 0.851957,
		-0.642596, 0.710827, 0.286000,
		-0.747330, -0.499124, -0.438604,
		34.235287, 27.110857, 48.051670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252277, 27.388803, 48.854832>,  <34.758415, 27.460243, 48.358692>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.252277, 27.388803, 48.854832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146973, 27.103134, 48.595402>,  <34.083790, 26.931732, 48.439743>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.146973, 27.103134, 48.595402>,  <34.252277, 27.388803, 48.854832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146973, 27.103134, 48.595402> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262433, -0.593922, 0.760517,
		-0.928344, 0.370422, -0.031066,
		-0.263261, -0.714174, -0.648575,
		34.067993, 26.888882, 48.400829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.595142, 27.182184, 49.034149>,  <34.252277, 27.388803, 48.854832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.595142, 27.182184, 49.034149> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.757191, 26.873814, 48.837555>,  <33.854420, 26.688791, 48.719601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.757191, 26.873814, 48.837555>,  <33.595142, 27.182184, 49.034149>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.757191, 26.873814, 48.837555> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159631, -0.588958, 0.792241,
		-0.900221, -0.242496, -0.361661,
		0.405118, -0.770924, -0.491482,
		33.878727, 26.642536, 48.690109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610130, 27.982727, 49.132423>,  <33.595142, 27.182184, 49.034149>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610130, 27.982727, 49.132423> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.622944, 28.249809, 49.429916>,  <33.630630, 28.410059, 49.608414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.622944, 28.249809, 49.429916>,  <33.610130, 27.982727, 49.132423>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622944, 28.249809, 49.429916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185910, 0.735111, -0.651958,
		-0.982045, -0.117385, 0.147680,
		0.032031, 0.667707, 0.743735,
		33.632553, 28.450121, 49.653038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027679, 28.455526, 49.019321>,  <33.610130, 27.982727, 49.132423>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027679, 28.455526, 49.019321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.297916, 28.637676, 49.251255>,  <33.460056, 28.746967, 49.390415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.297916, 28.637676, 49.251255>,  <33.027679, 28.455526, 49.019321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297916, 28.637676, 49.251255> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149683, 0.854794, -0.496913,
		-0.721925, 0.248917, 0.645651,
		0.675589, 0.455376, 0.579838,
		33.500591, 28.774290, 49.425205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653877, 28.951635, 49.426842>,  <33.027679, 28.455526, 49.019321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653877, 28.951635, 49.426842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035633, 29.069853, 49.409851>,  <33.264687, 29.140783, 49.399658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.035633, 29.069853, 49.409851>,  <32.653877, 28.951635, 49.426842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035633, 29.069853, 49.409851> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297820, 0.932138, -0.205966,
		-0.021280, 0.209221, 0.977637,
		0.954385, 0.295543, -0.042475,
		33.321949, 29.158516, 49.397110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652893, 29.633629, 49.750175>,  <32.653877, 28.951635, 49.426842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652893, 29.633629, 49.750175> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996143, 29.602192, 49.547222>,  <33.202095, 29.583330, 49.425449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.996143, 29.602192, 49.547222>,  <32.652893, 29.633629, 49.750175>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996143, 29.602192, 49.547222> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147930, 0.908463, -0.390910,
		0.491663, 0.410509, 0.767952,
		0.858128, -0.078593, -0.507385,
		33.253582, 29.578613, 49.395008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966888, 30.289803, 49.793995>,  <32.652893, 29.633629, 49.750175>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966888, 30.289803, 49.793995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.135590, 30.115509, 49.475937>,  <33.236813, 30.010933, 49.285103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.135590, 30.115509, 49.475937>,  <32.966888, 30.289803, 49.793995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.135590, 30.115509, 49.475937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134052, 0.837355, -0.529968,
		0.896745, 0.330109, 0.294749,
		0.421757, -0.435735, -0.795146,
		33.262115, 29.984789, 49.237392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355316, 30.899057, 49.599823>,  <32.966888, 30.289803, 49.793995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355316, 30.899057, 49.599823> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.307919, 30.631645, 49.306149>,  <33.279480, 30.471197, 49.129944>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.307919, 30.631645, 49.306149>,  <33.355316, 30.899057, 49.599823>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307919, 30.631645, 49.306149> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158192, 0.742658, -0.650718,
		0.980272, 0.039033, -0.193759,
		-0.118498, -0.668532, -0.734182,
		33.272369, 30.431086, 49.085896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642067, 31.263172, 49.047138>,  <33.355316, 30.899057, 49.599823>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642067, 31.263172, 49.047138> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.461658, 30.963591, 48.852962>,  <33.353413, 30.783842, 48.736458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.461658, 30.963591, 48.852962>,  <33.642067, 31.263172, 49.047138>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461658, 30.963591, 48.852962> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050264, 0.521722, -0.851634,
		0.891098, -0.408503, -0.197660,
		-0.451019, -0.748954, -0.485438,
		33.326351, 30.738905, 48.707333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292610, 31.640970, 49.019234>,  <33.642067, 31.263172, 49.047138>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292610, 31.640970, 49.019234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.241947, 31.989042, 49.209705>,  <34.211548, 32.197884, 49.323990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.241947, 31.989042, 49.209705>,  <34.292610, 31.640970, 49.019234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.241947, 31.989042, 49.209705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393983, -0.396425, 0.829231,
		0.910349, 0.292637, -0.292624,
		-0.126661, 0.870178, 0.476180,
		34.203949, 32.250095, 49.352558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.851883, 31.755344, 49.390877>,  <34.292610, 31.640970, 49.019234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.851883, 31.755344, 49.390877> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557465, 31.943909, 49.585201>,  <34.380814, 32.057049, 49.701797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.557465, 31.943909, 49.585201>,  <34.851883, 31.755344, 49.390877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.557465, 31.943909, 49.585201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322213, -0.387169, 0.863874,
		0.595332, 0.792382, 0.133078,
		-0.736042, 0.471413, 0.485811,
		34.336651, 32.085331, 49.730946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192940, 32.104542, 49.989269>,  <34.851883, 31.755344, 49.390877>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192940, 32.104542, 49.989269> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.803463, 32.058487, 50.067936>,  <34.569778, 32.030853, 50.115135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.803463, 32.058487, 50.067936>,  <35.192940, 32.104542, 49.989269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803463, 32.058487, 50.067936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221527, -0.275708, 0.935367,
		-0.053471, 0.954321, 0.293958,
		-0.973687, -0.115134, 0.196665,
		34.511356, 32.023945, 50.126934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108532, 32.374378, 50.627037>,  <35.192940, 32.104542, 49.989269>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108532, 32.374378, 50.627037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.787342, 32.139122, 50.588413>,  <34.594627, 31.997969, 50.565239>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.787342, 32.139122, 50.588413>,  <35.108532, 32.374378, 50.627037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.787342, 32.139122, 50.588413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222951, -0.446651, 0.866485,
		-0.552744, 0.674236, 0.489775,
		-0.802973, -0.588141, -0.096562,
		34.546452, 31.962679, 50.559444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767155, 32.314629, 51.403011>,  <35.108532, 32.374378, 50.627037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767155, 32.314629, 51.403011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.605846, 32.010002, 51.200077>,  <34.509064, 31.827225, 51.078316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.605846, 32.010002, 51.200077>,  <34.767155, 32.314629, 51.403011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605846, 32.010002, 51.200077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079902, -0.522992, 0.848585,
		-0.911587, 0.382743, 0.150054,
		-0.403267, -0.761569, -0.507334,
		34.484867, 31.781532, 51.047878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159267, 32.210312, 51.790321>,  <34.767155, 32.314629, 51.403011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159267, 32.210312, 51.790321> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276600, 31.891966, 51.578449>,  <34.347000, 31.700958, 51.451324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276600, 31.891966, 51.578449>,  <34.159267, 32.210312, 51.790321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276600, 31.891966, 51.578449> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279905, -0.601266, 0.748420,
		-0.914118, -0.071273, -0.399135,
		0.293328, -0.795864, -0.529679,
		34.364597, 31.653206, 51.419544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831974, 31.583544, 52.065178>,  <34.159267, 32.210312, 51.790321>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831974, 31.583544, 52.065178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133823, 31.424646, 51.856277>,  <34.314934, 31.329308, 51.730938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.133823, 31.424646, 51.856277>,  <33.831974, 31.583544, 52.065178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.133823, 31.424646, 51.856277> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004097, -0.798757, 0.601640,
		-0.656149, -0.451870, -0.604385,
		0.754620, -0.397242, -0.522252,
		34.360210, 31.305473, 51.699600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740753, 30.885523, 51.943222>,  <33.831974, 31.583544, 52.065178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740753, 30.885523, 51.943222> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.138432, 30.928053, 51.949867>,  <34.377037, 30.953571, 51.953854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.138432, 30.928053, 51.949867>,  <33.740753, 30.885523, 51.943222>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.138432, 30.928053, 51.949867> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074792, -0.793661, 0.603746,
		0.077379, -0.598997, -0.797004,
		0.994193, 0.106327, 0.016613,
		34.436687, 30.959951, 51.954849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079052, 30.202765, 51.763550>,  <33.740753, 30.885523, 51.943222>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079052, 30.202765, 51.763550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359699, 30.402515, 51.966866>,  <34.528088, 30.522366, 52.088856>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.359699, 30.402515, 51.966866>,  <34.079052, 30.202765, 51.763550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359699, 30.402515, 51.966866> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132333, -0.792243, 0.595683,
		0.700161, -0.350676, -0.621933,
		0.701614, 0.499376, 0.508291,
		34.570183, 30.552328, 52.119354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.606430, 38.230976, 38.208351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982353, 38.358147, 38.158264>,  <34.207909, 38.434448, 38.128212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.982353, 38.358147, 38.158264>,  <33.606430, 38.230976, 38.208351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.982353, 38.358147, 38.158264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214871, -0.264926, 0.940024,
		0.265686, -0.910349, -0.317294,
		0.939810, 0.317928, -0.125221,
		34.264297, 38.453526, 38.120697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.030270, 37.649742, 38.423901>,  <33.606430, 38.230976, 38.208351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.030270, 37.649742, 38.423901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196007, 38.011295, 38.466457>,  <34.295448, 38.228226, 38.491993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196007, 38.011295, 38.466457>,  <34.030270, 37.649742, 38.423901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196007, 38.011295, 38.466457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030292, -0.103137, 0.994206,
		0.909618, -0.415161, -0.015353,
		0.414339, 0.903882, 0.106392,
		34.320309, 38.282459, 38.498375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501820, 37.547253, 38.913147>,  <34.030270, 37.649742, 38.423901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501820, 37.547253, 38.913147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471390, 37.945808, 38.928234>,  <34.453133, 38.184940, 38.937286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471390, 37.945808, 38.928234>,  <34.501820, 37.547253, 38.913147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471390, 37.945808, 38.928234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136660, -0.027048, 0.990249,
		0.987693, 0.080485, -0.134109,
		-0.076073, 0.996389, 0.037715,
		34.448566, 38.244724, 38.939548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.999035, 37.797356, 39.295723>,  <34.501820, 37.547253, 38.913147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.999035, 37.797356, 39.295723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729412, 38.091179, 39.326866>,  <34.567638, 38.267475, 39.345551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729412, 38.091179, 39.326866>,  <34.999035, 37.797356, 39.295723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729412, 38.091179, 39.326866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084565, -0.027971, 0.996025,
		0.733820, 0.677964, -0.043264,
		-0.674060, 0.734562, 0.077858,
		34.527195, 38.311546, 39.350224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227734, 38.090412, 39.919968>,  <34.999035, 37.797356, 39.295723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227734, 38.090412, 39.919968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853405, 38.216248, 39.856369>,  <34.628807, 38.291748, 39.818211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.853405, 38.216248, 39.856369>,  <35.227734, 38.090412, 39.919968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853405, 38.216248, 39.856369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226525, -0.191165, 0.955061,
		0.270057, 0.929780, 0.250158,
		-0.935818, 0.314588, -0.158993,
		34.572659, 38.310623, 39.808670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027817, 38.554390, 40.487236>,  <35.227734, 38.090412, 39.919968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027817, 38.554390, 40.487236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682606, 38.429447, 40.328430>,  <34.475479, 38.354481, 40.233147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682606, 38.429447, 40.328430>,  <35.027817, 38.554390, 40.487236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682606, 38.429447, 40.328430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314073, -0.283786, 0.905993,
		-0.395660, 0.906587, 0.146812,
		-0.863024, -0.312356, -0.397018,
		34.423698, 38.335739, 40.209324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.521526, 38.669617, 40.925896>,  <35.027817, 38.554390, 40.487236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.521526, 38.669617, 40.925896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349525, 38.391579, 40.695438>,  <34.246326, 38.224754, 40.557163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.349525, 38.391579, 40.695438>,  <34.521526, 38.669617, 40.925896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349525, 38.391579, 40.695438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468815, -0.373457, 0.800464,
		-0.771564, 0.614305, -0.165284,
		-0.430003, -0.695096, -0.576142,
		34.220524, 38.183048, 40.522594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705360, 38.731354, 41.012035>,  <34.521526, 38.669617, 40.925896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705360, 38.731354, 41.012035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787937, 38.358871, 40.891872>,  <33.837482, 38.135384, 40.819775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787937, 38.358871, 40.891872>,  <33.705360, 38.731354, 41.012035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787937, 38.358871, 40.891872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393700, -0.360120, 0.845763,
		-0.895759, -0.056330, -0.440958,
		0.206440, -0.931204, -0.300404,
		33.849869, 38.079510, 40.801750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083729, 38.305553, 41.214066>,  <33.705360, 38.731354, 41.012035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083729, 38.305553, 41.214066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388100, 38.052689, 41.155598>,  <33.570721, 37.900970, 41.120518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.388100, 38.052689, 41.155598>,  <33.083729, 38.305553, 41.214066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.388100, 38.052689, 41.155598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321869, -0.563377, 0.760925,
		-0.563377, -0.531958, -0.632160,
		-0.760925, 0.632160, 0.146173,
		33.616379, 37.863041, 41.111744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772190, 37.631416, 41.413403>,  <33.083729, 38.305553, 41.214066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772190, 37.631416, 41.413403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162830, 37.546364, 41.400459>,  <33.397213, 37.495335, 41.392693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.162830, 37.546364, 41.400459>,  <32.772190, 37.631416, 41.413403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.162830, 37.546364, 41.400459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107826, -0.614205, 0.781745,
		-0.186093, -0.759962, -0.622758,
		0.976597, -0.212627, -0.032355,
		33.455811, 37.482574, 41.390751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.765469, 36.994732, 41.587990>,  <32.772190, 37.631416, 41.413403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.765469, 36.994732, 41.587990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126915, 37.136238, 41.684589>,  <33.343784, 37.221142, 41.742550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.126915, 37.136238, 41.684589>,  <32.765469, 36.994732, 41.587990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.126915, 37.136238, 41.684589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023560, -0.521900, 0.852681,
		0.427687, -0.776189, -0.463265,
		0.903620, 0.353766, 0.241497,
		33.398003, 37.242367, 41.757038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148849, 36.455250, 41.818771>,  <32.765469, 36.994732, 41.587990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148849, 36.455250, 41.818771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364388, 36.761501, 41.959316>,  <33.493710, 36.945251, 42.043644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.364388, 36.761501, 41.959316>,  <33.148849, 36.455250, 41.818771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364388, 36.761501, 41.959316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058935, -0.450333, 0.890914,
		0.840339, -0.459360, -0.287783,
		0.538848, 0.765630, 0.351360,
		33.526043, 36.991192, 42.064724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320988, 35.875751, 41.527706>,  <33.148849, 36.455250, 41.818771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320988, 35.875751, 41.527706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980503, 35.667744, 41.556026>,  <32.776211, 35.542938, 41.573021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980503, 35.667744, 41.556026>,  <33.320988, 35.875751, 41.527706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980503, 35.667744, 41.556026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305003, 0.380382, -0.873088,
		0.427092, -0.764780, -0.482394,
		-0.851214, -0.520020, 0.070802,
		32.725140, 35.511738, 41.577267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160492, 35.554401, 40.847382>,  <33.320988, 35.875751, 41.527706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160492, 35.554401, 40.847382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795151, 35.540756, 41.009678>,  <32.575947, 35.532570, 41.107056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795151, 35.540756, 41.009678>,  <33.160492, 35.554401, 40.847382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795151, 35.540756, 41.009678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375014, 0.458629, -0.805620,
		-0.158605, -0.887973, -0.431681,
		-0.913350, -0.034111, 0.405743,
		32.521145, 35.530521, 41.131401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.616825, 35.183182, 40.379417>,  <33.160492, 35.554401, 40.847382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.616825, 35.183182, 40.379417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436939, 35.437164, 40.630680>,  <32.329006, 35.589554, 40.781437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436939, 35.437164, 40.630680>,  <32.616825, 35.183182, 40.379417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436939, 35.437164, 40.630680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358022, 0.516165, -0.778070,
		-0.818276, -0.574805, -0.004798,
		-0.449715, 0.634959, 0.628159,
		32.302025, 35.627651, 40.819126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973412, 35.121288, 40.181084>,  <32.616825, 35.183182, 40.379417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973412, 35.121288, 40.181084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989910, 35.478249, 40.360825>,  <31.999809, 35.692425, 40.468670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.989910, 35.478249, 40.360825>,  <31.973412, 35.121288, 40.181084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989910, 35.478249, 40.360825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608334, 0.379198, -0.697236,
		-0.792608, -0.244599, 0.558519,
		0.041246, 0.892401, 0.449354,
		32.002285, 35.745968, 40.495632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278893, 35.330872, 40.320396>,  <31.973412, 35.121288, 40.181084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278893, 35.330872, 40.320396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483871, 35.674252, 40.311733>,  <31.606859, 35.880280, 40.306534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483871, 35.674252, 40.311733>,  <31.278893, 35.330872, 40.320396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483871, 35.674252, 40.311733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602204, 0.341274, -0.721722,
		-0.612169, 0.382885, 0.691844,
		0.512445, 0.858447, -0.021657,
		31.637606, 35.931786, 40.305237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736509, 35.884216, 40.207615>,  <31.278893, 35.330872, 40.320396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736509, 35.884216, 40.207615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097206, 36.049759, 40.157673>,  <31.313623, 36.149082, 40.127708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.097206, 36.049759, 40.157673>,  <30.736509, 35.884216, 40.207615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.097206, 36.049759, 40.157673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383085, 0.631252, -0.674364,
		-0.200275, 0.655931, 0.727767,
		0.901741, 0.413855, -0.124853,
		31.367729, 36.173916, 40.120216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577631, 36.549938, 40.265484>,  <30.736509, 35.884216, 40.207615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577631, 36.549938, 40.265484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939421, 36.547970, 40.094883>,  <31.156494, 36.546787, 39.992523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.939421, 36.547970, 40.094883>,  <30.577631, 36.549938, 40.265484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939421, 36.547970, 40.094883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367351, 0.499144, -0.784799,
		0.216750, 0.866505, 0.449653,
		0.904474, -0.004924, -0.426501,
		31.210762, 36.546494, 39.966934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.688515, 37.185455, 40.051456>,  <30.577631, 36.549938, 40.265484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.688515, 37.185455, 40.051456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920677, 36.966038, 39.810715>,  <31.059975, 36.834389, 39.666267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.920677, 36.966038, 39.810715>,  <30.688515, 37.185455, 40.051456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.920677, 36.966038, 39.810715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416681, 0.434946, -0.798248,
		0.699648, 0.714089, 0.023877,
		0.580405, -0.548543, -0.601856,
		31.094799, 36.801476, 39.630157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.119747, 37.614006, 39.604012>,  <30.688515, 37.185455, 40.051456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.119747, 37.614006, 39.604012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061100, 37.273621, 39.402271>,  <31.025911, 37.069389, 39.281227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061100, 37.273621, 39.402271>,  <31.119747, 37.614006, 39.604012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061100, 37.273621, 39.402271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128404, 0.521915, -0.843278,
		0.980824, -0.058881, -0.185790,
		-0.146620, -0.850963, -0.504346,
		31.017115, 37.018333, 39.250969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.252285, 37.827934, 38.882324>,  <31.119747, 37.614006, 39.604012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.252285, 37.827934, 38.882324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162716, 37.442616, 38.823097>,  <31.108974, 37.211426, 38.787560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.162716, 37.442616, 38.823097>,  <31.252285, 37.827934, 38.882324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.162716, 37.442616, 38.823097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486607, 0.242139, -0.839394,
		0.844436, -0.115906, -0.522966,
		-0.223922, -0.963294, -0.148070,
		31.095539, 37.153629, 38.778675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.384724, 37.688305, 38.148876>,  <31.252285, 37.827934, 38.882324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.384724, 37.688305, 38.148876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113585, 37.418171, 38.265114>,  <30.950901, 37.256092, 38.334858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113585, 37.418171, 38.265114>,  <31.384724, 37.688305, 38.148876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113585, 37.418171, 38.265114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476702, 0.102812, -0.873032,
		0.559713, -0.730309, -0.391624,
		-0.677847, -0.675335, 0.290595,
		30.910231, 37.215572, 38.352291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.275982, 37.249706, 37.551365>,  <31.384724, 37.688305, 38.148876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.275982, 37.249706, 37.551365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960712, 37.177597, 37.786747>,  <30.771551, 37.134331, 37.927975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960712, 37.177597, 37.786747>,  <31.275982, 37.249706, 37.551365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960712, 37.177597, 37.786747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610408, 0.106821, -0.784852,
		0.078626, -0.977800, -0.194232,
		-0.788175, -0.180270, 0.588457,
		30.724260, 37.123512, 37.963284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742067, 36.834743, 37.161674>,  <31.275982, 37.249706, 37.551365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742067, 36.834743, 37.161674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507551, 36.969074, 37.456558>,  <30.366842, 37.049675, 37.633488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507551, 36.969074, 37.456558>,  <30.742067, 36.834743, 37.161674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507551, 36.969074, 37.456558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801386, -0.107296, -0.588446,
		-0.118533, -0.935783, 0.332054,
		-0.586286, 0.335854, 0.737205,
		30.331665, 37.069824, 37.677723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.130472, 36.517212, 37.154869>,  <30.742067, 36.834743, 37.161674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.130472, 36.517212, 37.154869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031132, 36.847610, 37.357273>,  <29.971527, 37.045849, 37.478718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.031132, 36.847610, 37.357273>,  <30.130472, 36.517212, 37.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.031132, 36.847610, 37.357273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743990, 0.171874, -0.645707,
		-0.620323, -0.536830, 0.571849,
		-0.248349, 0.825998, 0.506014,
		29.956627, 37.095409, 37.509079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270863, 35.984001, 36.572346>,  <30.130472, 36.517212, 37.154869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270863, 35.984001, 36.572346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296740, 35.759308, 36.242432>,  <30.312265, 35.624493, 36.044483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296740, 35.759308, 36.242432>,  <30.270863, 35.984001, 36.572346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296740, 35.759308, 36.242432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113583, -0.817003, 0.565336,
		-0.991420, -0.130254, 0.010950,
		0.064691, -0.561729, -0.824788,
		30.316147, 35.590790, 35.994995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.771933, 35.437550, 36.582550>,  <30.270863, 35.984001, 36.572346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.771933, 35.437550, 36.582550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064777, 35.303463, 36.345356>,  <30.240484, 35.223011, 36.203037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.064777, 35.303463, 36.345356>,  <29.771933, 35.437550, 36.582550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.064777, 35.303463, 36.345356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052526, -0.895720, 0.441505,
		-0.679153, -0.292085, -0.673378,
		0.732115, -0.335219, -0.592989,
		30.284412, 35.202896, 36.167458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472872, 34.902668, 36.291153>,  <29.771933, 35.437550, 36.582550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472872, 34.902668, 36.291153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868937, 34.892506, 36.346188>,  <30.106575, 34.886410, 36.379208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.868937, 34.892506, 36.346188>,  <29.472872, 34.902668, 36.291153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.868937, 34.892506, 36.346188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102932, -0.798340, 0.593344,
		0.094766, -0.601670, -0.793103,
		0.990164, -0.025407, 0.137586,
		30.165985, 34.884884, 36.387463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548027, 34.207863, 36.371761>,  <29.472872, 34.902668, 36.291153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548027, 34.207863, 36.371761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862230, 34.385624, 36.544033>,  <30.050753, 34.492279, 36.647396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.862230, 34.385624, 36.544033>,  <29.548027, 34.207863, 36.371761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862230, 34.385624, 36.544033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029069, -0.668670, 0.742991,
		0.618170, -0.596144, -0.512327,
		0.785507, 0.444402, 0.430681,
		30.097883, 34.518944, 36.673237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153252, 33.707001, 36.433247>,  <29.548027, 34.207863, 36.371761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153252, 33.707001, 36.433247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182760, 33.983768, 36.720528>,  <30.200466, 34.149830, 36.892895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.182760, 33.983768, 36.720528>,  <30.153252, 33.707001, 36.433247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.182760, 33.983768, 36.720528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056244, -0.721901, 0.689707,
		0.995688, -0.010488, -0.092173,
		0.073773, 0.691917, 0.718198,
		30.204893, 34.191345, 36.935986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.616678, 33.469711, 36.847073>,  <30.153252, 33.707001, 36.433247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.616678, 33.469711, 36.847073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475821, 33.753418, 37.091347>,  <30.391306, 33.923641, 37.237911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.475821, 33.753418, 37.091347>,  <30.616678, 33.469711, 36.847073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475821, 33.753418, 37.091347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087329, -0.624731, 0.775941,
		0.931863, 0.326574, 0.158056,
		-0.352144, 0.709267, 0.610683,
		30.370176, 33.966198, 37.274551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056860, 33.660252, 37.372921>,  <30.616678, 33.469711, 36.847073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056860, 33.660252, 37.372921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712055, 33.766350, 37.545700>,  <30.505173, 33.830009, 37.649368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.712055, 33.766350, 37.545700>,  <31.056860, 33.660252, 37.372921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.712055, 33.766350, 37.545700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294554, -0.431395, 0.852723,
		0.412522, 0.862289, 0.293739,
		-0.862012, 0.265245, 0.431951,
		30.453451, 33.845924, 37.675285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177437, 34.209911, 37.910748>,  <31.056860, 33.660252, 37.372921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177437, 34.209911, 37.910748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833542, 34.039158, 38.022903>,  <30.627205, 33.936707, 38.090195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.833542, 34.039158, 38.022903>,  <31.177437, 34.209911, 37.910748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.833542, 34.039158, 38.022903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393235, -0.202959, 0.896757,
		-0.325908, 0.881234, 0.342360,
		-0.859738, -0.426888, 0.280386,
		30.575621, 33.911091, 38.107018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.927605, 34.412983, 38.513359>,  <31.177437, 34.209911, 37.910748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.927605, 34.412983, 38.513359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791128, 34.037727, 38.489738>,  <30.709242, 33.812576, 38.475567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.791128, 34.037727, 38.489738>,  <30.927605, 34.412983, 38.513359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.791128, 34.037727, 38.489738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389763, -0.198360, 0.899299,
		-0.855379, 0.283816, 0.433330,
		-0.341191, -0.938137, -0.059052,
		30.688770, 33.756287, 38.472023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893158, 34.246635, 39.152161>,  <30.927605, 34.412983, 38.513359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893158, 34.246635, 39.152161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841524, 33.881748, 38.996620>,  <30.810545, 33.662815, 38.903297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.841524, 33.881748, 38.996620>,  <30.893158, 34.246635, 39.152161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841524, 33.881748, 38.996620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382718, -0.407578, 0.829100,
		-0.914803, -0.041797, 0.401732,
		-0.129083, -0.912214, -0.388850,
		30.802799, 33.608086, 38.879967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476330, 33.687138, 39.644386>,  <30.893158, 34.246635, 39.152161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476330, 33.687138, 39.644386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665709, 33.435371, 39.397911>,  <30.779335, 33.284313, 39.250027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.665709, 33.435371, 39.397911>,  <30.476330, 33.687138, 39.644386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.665709, 33.435371, 39.397911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211641, -0.597777, 0.773221,
		-0.855019, -0.496488, -0.149805,
		0.473445, -0.629414, -0.616188,
		30.807741, 33.246548, 39.213055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332811, 33.087975, 39.878517>,  <30.476330, 33.687138, 39.644386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332811, 33.087975, 39.878517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642736, 32.993660, 39.643887>,  <30.828691, 32.937073, 39.503109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642736, 32.993660, 39.643887>,  <30.332811, 33.087975, 39.878517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642736, 32.993660, 39.643887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428554, -0.486226, 0.761528,
		-0.464768, -0.841420, -0.275686,
		0.774811, -0.235788, -0.586576,
		30.875179, 32.922924, 39.467915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.414419, 32.396160, 39.856651>,  <30.332811, 33.087975, 39.878517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.414419, 32.396160, 39.856651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783878, 32.518612, 39.764427>,  <31.005554, 32.592083, 39.709095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.783878, 32.518612, 39.764427>,  <30.414419, 32.396160, 39.856651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.783878, 32.518612, 39.764427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380719, -0.664105, 0.643442,
		0.043861, -0.682092, -0.729950,
		0.923650, 0.306128, -0.230557,
		31.060974, 32.610451, 39.695259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794695, 31.773335, 39.909718>,  <30.414419, 32.396160, 39.856651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794695, 31.773335, 39.909718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069118, 32.064316, 39.905125>,  <31.233772, 32.238903, 39.902370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.069118, 32.064316, 39.905125>,  <30.794695, 31.773335, 39.909718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.069118, 32.064316, 39.905125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585949, -0.543118, 0.601405,
		0.431260, -0.419325, -0.798862,
		0.686060, 0.727454, -0.011478,
		31.274937, 32.282551, 39.901680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.390892, 31.404465, 40.070641>,  <30.794695, 31.773335, 39.909718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.390892, 31.404465, 40.070641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506123, 31.784388, 40.119427>,  <31.575260, 32.012341, 40.148701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.506123, 31.784388, 40.119427>,  <31.390892, 31.404465, 40.070641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506123, 31.784388, 40.119427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759641, -0.304211, 0.574806,
		0.583060, -0.072934, -0.809149,
		0.288074, 0.949809, 0.121969,
		31.592545, 32.069328, 40.156017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.095280, 31.481844, 40.024719>,  <31.390892, 31.404465, 40.070641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.095280, 31.481844, 40.024719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994493, 31.811794, 40.227142>,  <31.934023, 32.009766, 40.348595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994493, 31.811794, 40.227142>,  <32.095280, 31.481844, 40.024719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994493, 31.811794, 40.227142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750953, -0.163177, 0.639877,
		0.610397, 0.541248, -0.578330,
		-0.251962, 0.824878, 0.506055,
		31.918905, 32.059258, 40.378960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734177, 31.850876, 40.192913>,  <32.095280, 31.481844, 40.024719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734177, 31.850876, 40.192913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450993, 31.945286, 40.459171>,  <32.281082, 32.001930, 40.618927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450993, 31.945286, 40.459171>,  <32.734177, 31.850876, 40.192913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450993, 31.945286, 40.459171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541897, -0.422895, 0.726297,
		0.452921, 0.874902, 0.171493,
		-0.707962, 0.236023, 0.665645,
		32.238605, 32.016094, 40.658863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013008, 32.342888, 40.650280>,  <32.734177, 31.850876, 40.192913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013008, 32.342888, 40.650280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706913, 32.164455, 40.835938>,  <32.523258, 32.057396, 40.947330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.706913, 32.164455, 40.835938>,  <33.013008, 32.342888, 40.650280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.706913, 32.164455, 40.835938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624094, -0.337254, 0.704816,
		-0.157872, 0.829018, 0.536475,
		-0.765234, -0.446082, 0.464142,
		32.477345, 32.030632, 40.975182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113140, 32.477734, 41.392662>,  <33.013008, 32.342888, 40.650280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113140, 32.477734, 41.392662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857483, 32.170567, 41.375713>,  <32.704086, 31.986267, 41.365543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857483, 32.170567, 41.375713>,  <33.113140, 32.477734, 41.392662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857483, 32.170567, 41.375713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523530, -0.474773, 0.707465,
		-0.563390, 0.429992, 0.705477,
		-0.639146, -0.767917, -0.042369,
		32.665741, 31.940191, 41.363003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960171, 32.310501, 42.084225>,  <33.113140, 32.477734, 41.392662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960171, 32.310501, 42.084225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868828, 31.974195, 41.887871>,  <32.814022, 31.772411, 41.770058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.868828, 31.974195, 41.887871>,  <32.960171, 32.310501, 42.084225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868828, 31.974195, 41.887871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319968, -0.541010, 0.777772,
		-0.919496, 0.020545, 0.392563,
		-0.228360, -0.840765, -0.490882,
		32.800320, 31.721966, 41.740604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646797, 31.933969, 42.538830>,  <32.960171, 32.310501, 42.084225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646797, 31.933969, 42.538830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749069, 31.658855, 42.267071>,  <32.810432, 31.493786, 42.104015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.749069, 31.658855, 42.267071>,  <32.646797, 31.933969, 42.538830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.749069, 31.658855, 42.267071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249123, -0.632146, 0.733709,
		-0.934111, -0.356849, 0.009714,
		0.255683, -0.687786, -0.679394,
		32.825775, 31.452520, 42.063251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322418, 31.398127, 42.824158>,  <32.646797, 31.933969, 42.538830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322418, 31.398127, 42.824158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595161, 31.246206, 42.574097>,  <32.758808, 31.155054, 42.424061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.595161, 31.246206, 42.574097>,  <32.322418, 31.398127, 42.824158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595161, 31.246206, 42.574097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201114, -0.724366, 0.659429,
		-0.703296, -0.575364, -0.417530,
		0.681856, -0.379803, -0.625157,
		32.799721, 31.132267, 42.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288342, 30.705503, 42.923916>,  <32.322418, 31.398127, 42.824158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288342, 30.705503, 42.923916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637711, 30.763849, 42.738075>,  <32.847332, 30.798857, 42.626572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637711, 30.763849, 42.738075>,  <32.288342, 30.705503, 42.923916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637711, 30.763849, 42.738075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449555, -0.608234, 0.654180,
		-0.187164, -0.780240, -0.596821,
		0.873424, 0.145864, -0.464600,
		32.899738, 30.807608, 42.598694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.544224, 30.027750, 43.028328>,  <32.288342, 30.705503, 42.923916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.544224, 30.027750, 43.028328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855995, 30.264956, 42.947502>,  <33.043056, 30.407278, 42.899006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.855995, 30.264956, 42.947502>,  <32.544224, 30.027750, 43.028328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.855995, 30.264956, 42.947502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597386, -0.606333, 0.524872,
		0.188738, -0.529809, -0.826849,
		0.779428, 0.593011, -0.202063,
		33.089825, 30.442860, 42.886883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074001, 29.590767, 42.768131>,  <32.544224, 30.027750, 43.028328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074001, 29.590767, 42.768131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264130, 29.922865, 42.884586>,  <33.378208, 30.122124, 42.954460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.264130, 29.922865, 42.884586>,  <33.074001, 29.590767, 42.768131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264130, 29.922865, 42.884586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525695, -0.533355, 0.662705,
		0.705489, -0.161946, -0.689970,
		0.475321, 0.830245, 0.291141,
		33.406727, 30.171938, 42.971928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817371, 29.402205, 42.754593>,  <33.074001, 29.590767, 42.768131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817371, 29.402205, 42.754593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738869, 29.705969, 43.002716>,  <33.691769, 29.888227, 43.151588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738869, 29.705969, 43.002716>,  <33.817371, 29.402205, 42.754593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738869, 29.705969, 43.002716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353141, -0.535418, 0.767215,
		0.914754, 0.369628, -0.163099,
		-0.196258, 0.759410, 0.620306,
		33.679993, 29.933792, 43.188808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378334, 29.493618, 43.169807>,  <33.817371, 29.402205, 42.754593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378334, 29.493618, 43.169807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104839, 29.690235, 43.385544>,  <33.940742, 29.808207, 43.514984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.104839, 29.690235, 43.385544>,  <34.378334, 29.493618, 43.169807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.104839, 29.690235, 43.385544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411849, -0.350199, 0.841273,
		0.602400, 0.797336, 0.037002,
		-0.683736, 0.491544, 0.539342,
		33.899719, 29.837698, 43.547348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798779, 29.797607, 43.701576>,  <34.378334, 29.493618, 43.169807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798779, 29.797607, 43.701576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426514, 29.787485, 43.847572>,  <34.203156, 29.781412, 43.935169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.426514, 29.787485, 43.847572>,  <34.798779, 29.797607, 43.701576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426514, 29.787485, 43.847572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359852, -0.243512, 0.900671,
		0.066090, 0.969568, 0.235734,
		-0.930666, -0.025304, 0.364995,
		34.147312, 29.779894, 43.957069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276318, 30.389570, 44.086571>,  <34.798779, 29.797607, 43.701576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276318, 30.389570, 44.086571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649269, 30.477196, 44.201591>,  <35.873039, 30.529772, 44.270603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.649269, 30.477196, 44.201591>,  <35.276318, 30.389570, 44.086571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649269, 30.477196, 44.201591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182841, 0.400430, -0.897901,
		-0.311845, 0.889756, 0.333297,
		0.932375, 0.219065, 0.287556,
		35.928982, 30.542915, 44.287857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347355, 31.092339, 43.962372>,  <35.276318, 30.389570, 44.086571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347355, 31.092339, 43.962372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720432, 30.948660, 43.975433>,  <35.944279, 30.862453, 43.983269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.720432, 30.948660, 43.975433>,  <35.347355, 31.092339, 43.962372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720432, 30.948660, 43.975433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212997, 0.475481, -0.853552,
		0.291067, 0.803054, 0.519985,
		0.932691, -0.359196, 0.032651,
		36.000240, 30.840900, 43.985229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766827, 31.591022, 43.746929>,  <35.347355, 31.092339, 43.962372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766827, 31.591022, 43.746929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012505, 31.278265, 43.704205>,  <36.159912, 31.090611, 43.678570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012505, 31.278265, 43.704205>,  <35.766827, 31.591022, 43.746929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012505, 31.278265, 43.704205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363870, 0.400696, -0.840858,
		0.700263, 0.477580, 0.530612,
		0.614191, -0.781895, -0.106816,
		36.196762, 31.043695, 43.672161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442158, 31.905540, 43.710995>,  <35.766827, 31.591022, 43.746929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442158, 31.905540, 43.710995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495327, 31.542898, 43.550797>,  <36.527229, 31.325314, 43.454678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.495327, 31.542898, 43.550797>,  <36.442158, 31.905540, 43.710995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.495327, 31.542898, 43.550797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388041, 0.419430, -0.820672,
		0.912006, -0.046326, 0.407551,
		0.132921, -0.906605, -0.400500,
		36.535202, 31.270916, 43.430645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130810, 31.833080, 43.329506>,  <36.442158, 31.905540, 43.710995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130810, 31.833080, 43.329506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891506, 31.553020, 43.173618>,  <36.747925, 31.384985, 43.080086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891506, 31.553020, 43.173618>,  <37.130810, 31.833080, 43.329506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891506, 31.553020, 43.173618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221081, 0.323251, -0.920126,
		0.770202, -0.636631, -0.038598,
		-0.598258, -0.700150, -0.389716,
		36.712029, 31.342976, 43.056705>
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
