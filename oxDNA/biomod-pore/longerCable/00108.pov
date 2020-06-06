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
	<24.082161, 35.456875, 34.759518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.221758, 35.084118, 34.799072>,  <24.305517, 34.860462, 34.822803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.221758, 35.084118, 34.799072>,  <24.082161, 35.456875, 34.759518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.221758, 35.084118, 34.799072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111542, -0.146080, -0.982965,
		0.930463, 0.332019, -0.154926,
		0.348995, -0.931893, 0.098888,
		24.326456, 34.804550, 34.828739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.772760, 35.360836, 34.373074>,  <24.082161, 35.456875, 34.759518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.772760, 35.360836, 34.373074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557058, 35.024723, 34.395439>,  <24.427637, 34.823055, 34.408859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.557058, 35.024723, 34.395439>,  <24.772760, 35.360836, 34.373074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.557058, 35.024723, 34.395439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018858, -0.078423, -0.996742,
		0.841930, -0.536445, 0.058136,
		-0.539256, -0.840284, 0.055910,
		24.395281, 34.772636, 34.412212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.058361, 34.640903, 34.452591>,  <24.772760, 35.360836, 34.373074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.058361, 34.640903, 34.452591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707148, 34.620232, 34.262272>,  <24.496420, 34.607830, 34.148079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.707148, 34.620232, 34.262272>,  <25.058361, 34.640903, 34.452591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.707148, 34.620232, 34.262272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462811, -0.344909, -0.816605,
		-0.121906, -0.937212, 0.326760,
		-0.878035, -0.051679, -0.475799,
		24.443737, 34.604729, 34.119534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.898088, 34.008873, 34.330193>,  <25.058361, 34.640903, 34.452591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.898088, 34.008873, 34.330193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781864, 34.274792, 34.054909>,  <24.712130, 34.434341, 33.889740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.781864, 34.274792, 34.054909>,  <24.898088, 34.008873, 34.330193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.781864, 34.274792, 34.054909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622272, -0.415086, -0.663688,
		-0.726879, -0.621091, -0.293075,
		-0.290559, 0.664793, -0.688205,
		24.694696, 34.474228, 33.848446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.169479, 33.796585, 33.678146>,  <24.898088, 34.008873, 34.330193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.169479, 33.796585, 33.678146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055946, 34.159729, 33.554710>,  <24.987827, 34.377617, 33.480648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.055946, 34.159729, 33.554710>,  <25.169479, 33.796585, 33.678146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.055946, 34.159729, 33.554710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526554, -0.121393, -0.841430,
		-0.801362, -0.401315, -0.443582,
		-0.283831, 0.907860, -0.308594,
		24.970797, 34.432087, 33.462132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.512066, 33.363632, 33.989407>,  <25.169479, 33.796585, 33.678146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.512066, 33.363632, 33.989407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910013, 33.365509, 34.029831>,  <25.148783, 33.366634, 34.054085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910013, 33.365509, 34.029831>,  <24.512066, 33.363632, 33.989407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910013, 33.365509, 34.029831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088139, -0.450162, 0.888587,
		0.049667, -0.892935, -0.447438,
		0.994869, 0.004697, 0.101061,
		25.208473, 33.366917, 34.060150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518799, 32.824154, 34.380962>,  <24.512066, 33.363632, 33.989407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518799, 32.824154, 34.380962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899691, 32.946014, 34.389454>,  <25.128225, 33.019131, 34.394550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.899691, 32.946014, 34.389454>,  <24.518799, 32.824154, 34.380962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.899691, 32.946014, 34.389454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221122, -0.735768, 0.640117,
		0.210632, -0.604843, -0.767984,
		0.952228, 0.304647, 0.021232,
		25.185360, 33.037407, 34.395824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.954134, 32.219086, 34.317097>,  <24.518799, 32.824154, 34.380962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.954134, 32.219086, 34.317097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157158, 32.492168, 34.527351>,  <25.278973, 32.656017, 34.653503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.157158, 32.492168, 34.527351>,  <24.954134, 32.219086, 34.317097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.157158, 32.492168, 34.527351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178069, -0.680008, 0.711253,
		0.843014, -0.267404, -0.466714,
		0.507561, 0.682704, 0.525640,
		25.309425, 32.696980, 34.685043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.742958, 32.111061, 34.196686>,  <24.954134, 32.219086, 34.317097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.742958, 32.111061, 34.196686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658201, 32.298203, 34.539898>,  <25.607347, 32.410488, 34.745827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.658201, 32.298203, 34.539898>,  <25.742958, 32.111061, 34.196686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.658201, 32.298203, 34.539898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437267, -0.739797, 0.511369,
		0.874013, 0.483544, -0.047820,
		-0.211892, 0.467853, 0.858030,
		25.594633, 32.438557, 34.797306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373737, 32.083389, 34.604946>,  <25.742958, 32.111061, 34.196686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373737, 32.083389, 34.604946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109602, 32.163113, 34.894562>,  <25.951120, 32.210945, 35.068333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109602, 32.163113, 34.894562>,  <26.373737, 32.083389, 34.604946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109602, 32.163113, 34.894562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326003, -0.792475, 0.515466,
		0.676518, 0.576420, 0.458327,
		-0.660338, 0.199305, 0.724038,
		25.911501, 32.222904, 35.111774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.677595, 31.967455, 35.211414>,  <26.373737, 32.083389, 34.604946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.677595, 31.967455, 35.211414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299297, 31.970348, 35.341351>,  <26.072319, 31.972084, 35.419312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.299297, 31.970348, 35.341351>,  <26.677595, 31.967455, 35.211414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299297, 31.970348, 35.341351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188600, -0.801868, 0.566954,
		0.264578, 0.597457, 0.756997,
		-0.945742, 0.007234, 0.324837,
		26.015575, 31.972519, 35.438801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.661343, 31.883982, 35.912716>,  <26.677595, 31.967455, 35.211414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.661343, 31.883982, 35.912716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290220, 31.787762, 35.798653>,  <26.067547, 31.730030, 35.730213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.290220, 31.787762, 35.798653>,  <26.661343, 31.883982, 35.912716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.290220, 31.787762, 35.798653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046813, -0.833391, 0.550698,
		-0.370120, 0.497591, 0.784484,
		-0.927804, -0.240548, -0.285161,
		26.011879, 31.715597, 35.713104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.373550, 31.838442, 36.507736>,  <26.661343, 31.883982, 35.912716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.373550, 31.838442, 36.507736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195963, 31.615513, 36.227085>,  <26.089411, 31.481756, 36.058693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.195963, 31.615513, 36.227085>,  <26.373550, 31.838442, 36.507736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.195963, 31.615513, 36.227085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184012, -0.823050, 0.537334,
		-0.876945, 0.109451, 0.467962,
		-0.443968, -0.557322, -0.701630,
		26.062773, 31.448317, 36.016598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.923805, 31.537413, 37.033833>,  <26.373550, 31.838442, 36.507736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.923805, 31.537413, 37.033833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570774, 31.365856, 37.110889>,  <25.358955, 31.262922, 37.157124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.570774, 31.365856, 37.110889>,  <25.923805, 31.537413, 37.033833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.570774, 31.365856, 37.110889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470090, 0.812453, -0.344870,
		-0.008602, -0.394934, -0.918669,
		-0.882577, -0.428891, 0.192644,
		25.306002, 31.237188, 37.168682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.475803, 31.535746, 36.429756>,  <25.923805, 31.537413, 37.033833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.475803, 31.535746, 36.429756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308498, 31.551231, 36.792755>,  <25.208115, 31.560522, 37.010555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308498, 31.551231, 36.792755>,  <25.475803, 31.535746, 36.429756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308498, 31.551231, 36.792755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404171, 0.886803, -0.224112,
		-0.813450, -0.460523, -0.355271,
		-0.418264, 0.038713, 0.907500,
		25.183020, 31.562845, 37.065006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.800453, 31.748156, 36.388226>,  <25.475803, 31.535746, 36.429756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.800453, 31.748156, 36.388226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842556, 31.801683, 36.782387>,  <24.867817, 31.833799, 37.018883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.842556, 31.801683, 36.782387>,  <24.800453, 31.748156, 36.388226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.842556, 31.801683, 36.782387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477790, 0.875845, -0.067906,
		-0.872145, -0.463667, 0.156127,
		0.105257, 0.133820, 0.985400,
		24.874134, 31.841829, 37.078007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719671, 32.034111, 35.630806>,  <24.800453, 31.748156, 36.388226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719671, 32.034111, 35.630806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117516, 32.025444, 35.590248>,  <25.356222, 32.020245, 35.565914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.117516, 32.025444, 35.590248>,  <24.719671, 32.034111, 35.630806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.117516, 32.025444, 35.590248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013095, 0.943855, -0.330101,
		0.102857, 0.329649, 0.938484,
		0.994610, -0.021663, -0.101399,
		25.415899, 32.018944, 35.559830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.959850, 32.605076, 35.925148>,  <24.719671, 32.034111, 35.630806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.959850, 32.605076, 35.925148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245726, 32.477303, 35.676250>,  <25.417250, 32.400639, 35.526913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.245726, 32.477303, 35.676250>,  <24.959850, 32.605076, 35.925148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.245726, 32.477303, 35.676250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063355, 0.915529, -0.397232,
		0.696569, 0.244474, 0.674554,
		0.714687, -0.319435, -0.622241,
		25.460133, 32.381474, 35.489578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.424656, 33.138836, 35.866066>,  <24.959850, 32.605076, 35.925148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.424656, 33.138836, 35.866066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480904, 32.924011, 35.533371>,  <25.514652, 32.795116, 35.333755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.480904, 32.924011, 35.533371>,  <25.424656, 33.138836, 35.866066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.480904, 32.924011, 35.533371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101968, 0.827762, -0.551736,
		0.984798, 0.162397, 0.061638,
		0.140622, -0.537064, -0.831738,
		25.523090, 32.762894, 35.283848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817818, 33.555386, 35.453278>,  <25.424656, 33.138836, 35.866066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817818, 33.555386, 35.453278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649651, 33.279831, 35.217079>,  <25.548750, 33.114498, 35.075359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.649651, 33.279831, 35.217079>,  <25.817818, 33.555386, 35.453278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.649651, 33.279831, 35.217079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252914, 0.713984, -0.652886,
		0.871369, -0.125140, -0.474400,
		-0.420417, -0.688887, -0.590495,
		25.523525, 33.073166, 35.039932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.049353, 33.711910, 34.713966>,  <25.817818, 33.555386, 35.453278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.049353, 33.711910, 34.713966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709267, 33.504181, 34.748474>,  <25.505215, 33.379543, 34.769180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.709267, 33.504181, 34.748474>,  <26.049353, 33.711910, 34.713966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.709267, 33.504181, 34.748474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403135, 0.536890, -0.741102,
		0.338550, -0.664874, -0.665827,
		-0.850215, -0.519318, 0.086270,
		25.454203, 33.348385, 34.774353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877487, 33.516174, 34.089764>,  <26.049353, 33.711910, 34.713966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877487, 33.516174, 34.089764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512671, 33.511982, 34.253750>,  <25.293781, 33.509464, 34.352142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.512671, 33.511982, 34.253750>,  <25.877487, 33.516174, 34.089764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.512671, 33.511982, 34.253750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399148, 0.252186, -0.881523,
		-0.094146, -0.967622, -0.234189,
		-0.912040, -0.010484, 0.409967,
		25.239059, 33.508835, 34.376740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.290310, 33.756104, 33.415096>,  <25.877487, 33.516174, 34.089764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.290310, 33.756104, 33.415096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253790, 34.153648, 33.390095>,  <26.231878, 34.392174, 33.375092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.253790, 34.153648, 33.390095>,  <26.290310, 33.756104, 33.415096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.253790, 34.153648, 33.390095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995056, 0.093514, 0.033438,
		0.039078, -0.059144, -0.997484,
		-0.091301, 0.993860, -0.062506,
		26.226400, 34.451805, 33.371342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635105, 33.133060, 33.942810>,  <26.290310, 33.756104, 33.415096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635105, 33.133060, 33.942810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925941, 33.116909, 34.216949>,  <27.100443, 33.107220, 34.381435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.925941, 33.116909, 34.216949>,  <26.635105, 33.133060, 33.942810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.925941, 33.116909, 34.216949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685351, 0.101386, -0.721120,
		-0.040366, 0.994027, 0.101391,
		0.727093, -0.040380, 0.685351,
		27.144070, 33.104794, 34.422554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040533, 33.691551, 34.119747>,  <26.635105, 33.133060, 33.942810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040533, 33.691551, 34.119747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261438, 33.359192, 34.146908>,  <27.393982, 33.159775, 34.163204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.261438, 33.359192, 34.146908>,  <27.040533, 33.691551, 34.119747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261438, 33.359192, 34.146908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496469, 0.262366, -0.827455,
		0.669717, 0.490685, 0.557411,
		0.552265, -0.830899, 0.067899,
		27.427118, 33.109921, 34.167278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.683361, 33.879494, 34.304321>,  <27.040533, 33.691551, 34.119747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.683361, 33.879494, 34.304321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643282, 33.546200, 34.086815>,  <27.619234, 33.346222, 33.956310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.643282, 33.546200, 34.086815>,  <27.683361, 33.879494, 34.304321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.643282, 33.546200, 34.086815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517696, 0.423049, -0.743654,
		0.849677, -0.356016, 0.388974,
		-0.100197, -0.833236, -0.543764,
		27.613222, 33.296230, 33.923687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361217, 33.659138, 34.040611>,  <27.683361, 33.879494, 34.304321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361217, 33.659138, 34.040611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088373, 33.522175, 33.782162>,  <27.924665, 33.439999, 33.627090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088373, 33.522175, 33.782162>,  <28.361217, 33.659138, 34.040611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088373, 33.522175, 33.782162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577616, 0.289550, -0.763231,
		0.448423, -0.893822, 0.000275,
		-0.682113, -0.342409, -0.646126,
		27.883739, 33.419453, 33.588326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716053, 33.219082, 33.582264>,  <28.361217, 33.659138, 34.040611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.716053, 33.219082, 33.582264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383480, 33.331810, 33.390724>,  <28.183937, 33.399448, 33.275799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383480, 33.331810, 33.390724>,  <28.716053, 33.219082, 33.582264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383480, 33.331810, 33.390724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544304, 0.240002, -0.803823,
		-0.111608, -0.928965, -0.352941,
		-0.831431, 0.281820, -0.478853,
		28.134050, 33.416355, 33.247066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.569710, 32.765877, 33.036758>,  <28.716053, 33.219082, 33.582264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.569710, 32.765877, 33.036758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430475, 33.129318, 32.944439>,  <28.346933, 33.347385, 32.889046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430475, 33.129318, 32.944439>,  <28.569710, 32.765877, 33.036758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430475, 33.129318, 32.944439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589724, 0.020849, -0.807336,
		-0.728739, -0.417131, -0.543084,
		-0.348088, 0.908607, -0.230799,
		28.326048, 33.401901, 32.875198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559193, 32.054523, 32.895065>,  <28.569710, 32.765877, 33.036758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559193, 32.054523, 32.895065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886505, 31.844486, 32.801521>,  <29.082893, 31.718464, 32.745396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886505, 31.844486, 32.801521>,  <28.559193, 32.054523, 32.895065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886505, 31.844486, 32.801521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135348, -0.219392, 0.966203,
		-0.558656, -0.822278, -0.108454,
		0.818281, -0.525096, -0.233859,
		29.131990, 31.686958, 32.731365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695065, 31.416422, 33.313301>,  <28.559193, 32.054523, 32.895065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695065, 31.416422, 33.313301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058096, 31.543386, 33.203358>,  <29.275915, 31.619564, 33.137390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058096, 31.543386, 33.203358>,  <28.695065, 31.416422, 33.313301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058096, 31.543386, 33.203358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345590, -0.192916, 0.918342,
		0.238466, -0.928458, -0.284781,
		0.907580, 0.317411, -0.274862,
		29.330370, 31.638609, 33.120899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301683, 30.878937, 33.379932>,  <28.695065, 31.416422, 33.313301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301683, 30.878937, 33.379932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463150, 31.244703, 33.391903>,  <29.560030, 31.464163, 33.399086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.463150, 31.244703, 33.391903>,  <29.301683, 30.878937, 33.379932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463150, 31.244703, 33.391903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636919, -0.304350, 0.708312,
		0.656800, -0.266861, -0.705265,
		0.403668, 0.914416, 0.029929,
		29.584251, 31.519028, 33.400883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004095, 30.742426, 33.338573>,  <29.301683, 30.878937, 33.379932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004095, 30.742426, 33.338573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014452, 31.118320, 33.474941>,  <30.020666, 31.343857, 33.556763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.014452, 31.118320, 33.474941>,  <30.004095, 30.742426, 33.338573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014452, 31.118320, 33.474941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656194, -0.273254, 0.703379,
		0.754148, 0.205499, -0.623723,
		0.025891, 0.939736, 0.340921,
		30.022219, 31.400242, 33.577217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671879, 30.923140, 33.529388>,  <30.004095, 30.742426, 33.338573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671879, 30.923140, 33.529388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436335, 31.168989, 33.739330>,  <30.295008, 31.316500, 33.865295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.436335, 31.168989, 33.739330>,  <30.671879, 30.923140, 33.529388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436335, 31.168989, 33.739330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449220, -0.290955, 0.844717,
		0.671894, 0.733199, -0.104770,
		-0.588862, 0.614625, 0.524859,
		30.259676, 31.353376, 33.896790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149384, 31.374945, 33.766975>,  <30.671879, 30.923140, 33.529388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149384, 31.374945, 33.766975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820267, 31.289368, 33.977592>,  <30.622797, 31.238022, 34.103962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820267, 31.289368, 33.977592>,  <31.149384, 31.374945, 33.766975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820267, 31.289368, 33.977592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511748, 0.124142, 0.850119,
		-0.247242, 0.968926, 0.007342,
		-0.822791, -0.213943, 0.526539,
		30.573429, 31.225185, 34.135555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.078560, 30.857695, 34.392178>,  <31.149384, 31.374945, 33.766975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.078560, 30.857695, 34.392178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000860, 31.018873, 34.749928>,  <30.954241, 31.115580, 34.964577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.000860, 31.018873, 34.749928>,  <31.078560, 30.857695, 34.392178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000860, 31.018873, 34.749928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589931, 0.680457, -0.434695,
		-0.783741, -0.612057, 0.105533,
		-0.194247, 0.402945, 0.894373,
		30.942585, 31.139757, 35.018238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357807, 30.778618, 34.547348>,  <31.078560, 30.857695, 34.392178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357807, 30.778618, 34.547348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520700, 31.083906, 34.748009>,  <30.618437, 31.267080, 34.868404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.520700, 31.083906, 34.748009>,  <30.357807, 30.778618, 34.547348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.520700, 31.083906, 34.748009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787800, 0.571431, -0.229866,
		-0.462097, -0.301592, 0.833971,
		0.407231, 0.763223, 0.501650,
		30.642870, 31.312874, 34.898502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.887133, 30.952847, 35.008106>,  <30.357807, 30.778618, 34.547348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.887133, 30.952847, 35.008106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098434, 31.279884, 34.916466>,  <30.225216, 31.476107, 34.861481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.098434, 31.279884, 34.916466>,  <29.887133, 30.952847, 35.008106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.098434, 31.279884, 34.916466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778008, 0.358012, -0.516267,
		-0.340077, 0.450961, 0.825216,
		0.528253, 0.817595, -0.229099,
		30.256910, 31.525164, 34.847736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513227, 31.627386, 35.066410>,  <29.887133, 30.952847, 35.008106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513227, 31.627386, 35.066410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798758, 31.619827, 34.786385>,  <29.970076, 31.615292, 34.618370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.798758, 31.619827, 34.786385>,  <29.513227, 31.627386, 35.066410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798758, 31.619827, 34.786385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654006, 0.339512, -0.676024,
		0.250456, 0.940412, 0.229994,
		0.713827, -0.018897, -0.700067,
		30.012905, 31.614159, 34.576363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429771, 32.123806, 34.557423>,  <29.513227, 31.627386, 35.066410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429771, 32.123806, 34.557423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698103, 31.906185, 34.355827>,  <29.859102, 31.775614, 34.234871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.698103, 31.906185, 34.355827>,  <29.429771, 32.123806, 34.557423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.698103, 31.906185, 34.355827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294048, 0.428754, -0.854228,
		0.680826, 0.721237, 0.127644,
		0.670829, -0.544048, -0.503985,
		29.899351, 31.742971, 34.204632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.884653, 32.570442, 34.126812>,  <29.429771, 32.123806, 34.557423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.884653, 32.570442, 34.126812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918913, 32.212326, 33.951942>,  <29.939468, 31.997458, 33.847019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918913, 32.212326, 33.951942>,  <29.884653, 32.570442, 34.126812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918913, 32.212326, 33.951942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419706, 0.365534, -0.830802,
		0.903610, 0.254643, -0.344450,
		0.085649, -0.895289, -0.437176,
		29.944607, 31.943739, 33.820789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049496, 32.727509, 33.418339>,  <29.884653, 32.570442, 34.126812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049496, 32.727509, 33.418339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895336, 32.358624, 33.430939>,  <29.802839, 32.137291, 33.438499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.895336, 32.358624, 33.430939>,  <30.049496, 32.727509, 33.418339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.895336, 32.358624, 33.430939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448182, 0.157245, -0.880004,
		0.806598, -0.353269, -0.473921,
		-0.385400, -0.922212, 0.031496,
		29.779716, 32.081959, 33.440388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297630, 32.510178, 32.800442>,  <30.049496, 32.727509, 33.418339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297630, 32.510178, 32.800442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978321, 32.315212, 32.941967>,  <29.786736, 32.198235, 33.026882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.978321, 32.315212, 32.941967>,  <30.297630, 32.510178, 32.800442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.978321, 32.315212, 32.941967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355278, -0.093296, -0.930093,
		0.486348, -0.868174, -0.098690,
		-0.798275, -0.487411, 0.353818,
		29.738838, 32.168987, 33.048111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152977, 31.944942, 32.441128>,  <30.297630, 32.510178, 32.800442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152977, 31.944942, 32.441128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804195, 32.030186, 32.617439>,  <29.594927, 32.081333, 32.723225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804195, 32.030186, 32.617439>,  <30.152977, 31.944942, 32.441128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804195, 32.030186, 32.617439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484915, -0.251770, -0.837538,
		-0.067512, -0.944032, 0.322871,
		-0.871952, 0.213109, 0.440777,
		29.542610, 32.094120, 32.749672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.866863, 31.964174, 32.113625>,  <30.152977, 31.944942, 32.441128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.866863, 31.964174, 32.113625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843454, 31.881628, 31.722937>,  <30.829409, 31.832100, 31.488523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.843454, 31.881628, 31.722937>,  <30.866863, 31.964174, 32.113625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843454, 31.881628, 31.722937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890031, 0.453908, -0.042575,
		0.452128, 0.866823, -0.210233,
		-0.058522, -0.206363, -0.976724,
		30.825897, 31.819717, 31.429920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573153, 32.173073, 32.077682>,  <30.866863, 31.964174, 32.113625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573153, 32.173073, 32.077682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833643, 32.027275, 31.811434>,  <31.989937, 31.939796, 31.651686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.833643, 32.027275, 31.811434>,  <31.573153, 32.173073, 32.077682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.833643, 32.027275, 31.811434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415200, -0.563051, 0.714551,
		-0.635230, -0.741697, -0.215333,
		0.651223, -0.364498, -0.665619,
		32.029011, 31.917927, 31.611748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512877, 31.403711, 32.098362>,  <31.573153, 32.173073, 32.077682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512877, 31.403711, 32.098362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874180, 31.508009, 31.962049>,  <32.090961, 31.570587, 31.880262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.874180, 31.508009, 31.962049>,  <31.512877, 31.403711, 32.098362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.874180, 31.508009, 31.962049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427082, -0.623120, 0.655227,
		-0.041500, -0.737382, -0.674200,
		0.903260, 0.260747, -0.340782,
		32.145157, 31.586233, 31.859816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784746, 30.789078, 31.741522>,  <31.512877, 31.403711, 32.098362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784746, 30.789078, 31.741522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103081, 30.980354, 31.592941>,  <32.294083, 31.095119, 31.503792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103081, 30.980354, 31.592941>,  <31.784746, 30.789078, 31.741522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103081, 30.980354, 31.592941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581874, -0.434234, 0.687650,
		0.167530, -0.763396, -0.623827,
		0.795836, 0.478191, -0.371453,
		32.341831, 31.123812, 31.481504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325844, 30.309999, 31.635443>,  <31.784746, 30.789078, 31.741522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325844, 30.309999, 31.635443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538338, 30.648552, 31.620296>,  <32.665833, 30.851683, 31.611208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.538338, 30.648552, 31.620296>,  <32.325844, 30.309999, 31.635443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.538338, 30.648552, 31.620296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740226, -0.441932, 0.506717,
		0.412140, -0.297214, -0.861281,
		0.531231, 0.846381, -0.037867,
		32.697708, 30.902466, 31.608936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.961037, 30.179890, 31.328506>,  <32.325844, 30.309999, 31.635443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.961037, 30.179890, 31.328506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985889, 30.481455, 31.590118>,  <33.000801, 30.662394, 31.747086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985889, 30.481455, 31.590118>,  <32.961037, 30.179890, 31.328506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985889, 30.481455, 31.590118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596904, -0.553258, 0.581043,
		0.799904, 0.354292, -0.484388,
		0.062132, 0.753911, 0.654031,
		33.004528, 30.707628, 31.786327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734070, 30.328152, 31.464510>,  <32.961037, 30.179890, 31.328506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734070, 30.328152, 31.464510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492519, 30.422131, 31.769175>,  <33.347588, 30.478518, 31.951973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.492519, 30.422131, 31.769175>,  <33.734070, 30.328152, 31.464510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492519, 30.422131, 31.769175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555717, -0.560933, 0.613622,
		0.571410, 0.793823, 0.208172,
		-0.603878, 0.234945, 0.761664,
		33.311356, 30.492615, 31.997673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.214836, 30.659388, 31.973724>,  <33.734070, 30.328152, 31.464510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.214836, 30.659388, 31.973724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876972, 30.486217, 32.099663>,  <33.674255, 30.382317, 32.175224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.876972, 30.486217, 32.099663>,  <34.214836, 30.659388, 31.973724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876972, 30.486217, 32.099663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508318, -0.464286, 0.725295,
		-0.167820, 0.772668, 0.612226,
		-0.844660, -0.432924, 0.314844,
		33.623573, 30.356340, 32.194115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397518, 30.309378, 32.509495>,  <34.214836, 30.659388, 31.973724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397518, 30.309378, 32.509495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004642, 30.239668, 32.537617>,  <33.768917, 30.197842, 32.554489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.004642, 30.239668, 32.537617>,  <34.397518, 30.309378, 32.509495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004642, 30.239668, 32.537617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158694, -0.568860, 0.806979,
		-0.100643, 0.803759, 0.586382,
		-0.982185, -0.174272, 0.070300,
		33.709988, 30.187386, 32.558708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005505, 30.800714, 32.702309>,  <34.397518, 30.309378, 32.509495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005505, 30.800714, 32.702309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654156, 30.723938, 32.877411>,  <33.443348, 30.677872, 32.982471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.654156, 30.723938, 32.877411>,  <34.005505, 30.800714, 32.702309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654156, 30.723938, 32.877411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420528, -0.745660, 0.516863,
		0.227208, 0.638083, 0.735681,
		-0.878369, -0.191939, 0.437752,
		33.390644, 30.666357, 33.008736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188286, 30.869432, 33.367668>,  <34.005505, 30.800714, 32.702309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188286, 30.869432, 33.367668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867210, 30.645405, 33.285683>,  <33.674564, 30.510988, 33.236492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867210, 30.645405, 33.285683>,  <34.188286, 30.869432, 33.367668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867210, 30.645405, 33.285683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345340, -0.716678, 0.605898,
		-0.486241, 0.415564, 0.768684,
		-0.802689, -0.560070, -0.204968,
		33.626404, 30.477385, 33.224194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011887, 30.701456, 33.988602>,  <34.188286, 30.869432, 33.367668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011887, 30.701456, 33.988602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851238, 30.430851, 33.741692>,  <33.754848, 30.268488, 33.593544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851238, 30.430851, 33.741692>,  <34.011887, 30.701456, 33.988602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851238, 30.430851, 33.741692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305055, -0.734360, 0.606347,
		-0.863506, 0.055218, 0.501307,
		-0.401622, -0.676511, -0.617279,
		33.730751, 30.227898, 33.556507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.076187, 30.165192, 34.389339>,  <34.011887, 30.701456, 33.988602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.076187, 30.165192, 34.389339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976830, 29.976892, 34.050705>,  <33.917217, 29.863913, 33.847527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.976830, 29.976892, 34.050705>,  <34.076187, 30.165192, 34.389339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.976830, 29.976892, 34.050705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280964, -0.871413, 0.402118,
		-0.927018, -0.137977, 0.348713,
		-0.248390, -0.470746, -0.846582,
		33.902313, 29.835669, 33.796730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193272, 29.450706, 34.443241>,  <34.076187, 30.165192, 34.389339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193272, 29.450706, 34.443241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010555, 29.169813, 34.224804>,  <33.900925, 29.001278, 34.093742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010555, 29.169813, 34.224804>,  <34.193272, 29.450706, 34.443241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010555, 29.169813, 34.224804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385509, 0.709504, -0.589905,
		0.801705, -0.058936, -0.594807,
		-0.456785, -0.702233, -0.546092,
		33.873520, 28.959143, 34.060978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474754, 29.405687, 33.636642>,  <34.193272, 29.450706, 34.443241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474754, 29.405687, 33.636642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087788, 29.344139, 33.717075>,  <33.855610, 29.307209, 33.765335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.087788, 29.344139, 33.717075>,  <34.474754, 29.405687, 33.636642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.087788, 29.344139, 33.717075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245555, 0.763843, -0.596863,
		-0.061755, -0.626791, -0.776737,
		-0.967414, -0.153873, 0.201083,
		33.797565, 29.297977, 33.777401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003010, 29.211760, 33.025032>,  <34.474754, 29.405687, 33.636642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003010, 29.211760, 33.025032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772858, 29.389301, 33.299820>,  <33.634766, 29.495827, 33.464691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772858, 29.389301, 33.299820>,  <34.003010, 29.211760, 33.025032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772858, 29.389301, 33.299820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340380, 0.633790, -0.694587,
		-0.743691, -0.633484, -0.213592,
		-0.575382, 0.443856, 0.686970,
		33.600243, 29.522457, 33.505909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273983, 29.317011, 32.732327>,  <34.003010, 29.211760, 33.025032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273983, 29.317011, 32.732327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362160, 29.591478, 33.009621>,  <33.415066, 29.756159, 33.175999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362160, 29.591478, 33.009621>,  <33.273983, 29.317011, 32.732327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362160, 29.591478, 33.009621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279501, 0.725356, -0.629077,
		-0.934496, -0.055083, 0.351687,
		0.220447, 0.686167, 0.693238,
		33.428295, 29.797329, 33.217590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.666245, 29.734354, 32.786514>,  <33.273983, 29.317011, 32.732327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.666245, 29.734354, 32.786514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974880, 29.949577, 32.922245>,  <33.160061, 30.078712, 33.003681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.974880, 29.949577, 32.922245>,  <32.666245, 29.734354, 32.786514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974880, 29.949577, 32.922245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368070, 0.812696, -0.451719,
		-0.518819, 0.223647, 0.825111,
		0.771590, 0.538059, 0.339325,
		33.206356, 30.110994, 33.024044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488331, 30.370359, 33.203209>,  <32.666245, 29.734354, 32.786514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488331, 30.370359, 33.203209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814796, 30.385822, 32.972599>,  <33.010677, 30.395100, 32.834232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.814796, 30.385822, 32.972599>,  <32.488331, 30.370359, 33.203209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814796, 30.385822, 32.972599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403901, 0.751677, -0.521388,
		0.413204, 0.658397, 0.629107,
		0.816166, 0.038657, -0.576523,
		33.059647, 30.397419, 32.799641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586880, 31.052322, 33.037601>,  <32.488331, 30.370359, 33.203209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586880, 31.052322, 33.037601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787140, 30.866295, 32.745560>,  <32.907295, 30.754679, 32.570335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.787140, 30.866295, 32.745560>,  <32.586880, 31.052322, 33.037601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787140, 30.866295, 32.745560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189658, 0.764000, -0.616713,
		0.844615, 0.447230, 0.294295,
		0.500654, -0.465070, -0.730106,
		32.937336, 30.726774, 32.526527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992641, 31.570717, 32.701412>,  <32.586880, 31.052322, 33.037601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992641, 31.570717, 32.701412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954952, 31.277845, 32.431587>,  <32.932339, 31.102121, 32.269691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.954952, 31.277845, 32.431587>,  <32.992641, 31.570717, 32.701412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954952, 31.277845, 32.431587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083837, 0.681005, -0.727464,
		0.992015, -0.011990, -0.125549,
		-0.094222, -0.732181, -0.674562,
		32.926685, 31.058191, 32.229218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343628, 31.818409, 32.140495>,  <32.992641, 31.570717, 32.701412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343628, 31.818409, 32.140495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045780, 31.580564, 32.019188>,  <32.867069, 31.437857, 31.946402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.045780, 31.580564, 32.019188>,  <33.343628, 31.818409, 32.140495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.045780, 31.580564, 32.019188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234231, 0.658228, -0.715452,
		0.625037, -0.461708, -0.629408,
		-0.744624, -0.594611, -0.303270,
		32.822395, 31.402180, 31.928205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332996, 31.837948, 31.384594>,  <33.343628, 31.818409, 32.140495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332996, 31.837948, 31.384594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966839, 31.731504, 31.505417>,  <32.747143, 31.667639, 31.577911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.966839, 31.731504, 31.505417>,  <33.332996, 31.837948, 31.384594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966839, 31.731504, 31.505417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380891, 0.329689, -0.863844,
		0.130290, -0.905810, -0.403153,
		-0.915394, -0.266107, 0.302060,
		32.692219, 31.651672, 31.596035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992149, 31.482765, 30.830599>,  <33.332996, 31.837948, 31.384594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992149, 31.482765, 30.830599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700695, 31.632256, 31.060179>,  <32.525822, 31.721951, 31.197927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.700695, 31.632256, 31.060179>,  <32.992149, 31.482765, 30.830599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700695, 31.632256, 31.060179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427920, 0.405896, -0.807548,
		-0.534767, -0.834012, -0.135824,
		-0.728635, 0.373728, 0.573950,
		32.482105, 31.744373, 31.232365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482086, 31.500799, 30.406916>,  <32.992149, 31.482765, 30.830599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482086, 31.500799, 30.406916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331062, 31.737328, 30.691952>,  <32.240448, 31.879244, 30.862974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331062, 31.737328, 30.691952>,  <32.482086, 31.500799, 30.406916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331062, 31.737328, 30.691952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529498, 0.493451, -0.690027,
		-0.759656, -0.637845, 0.126794,
		-0.377564, 0.591321, 0.712591,
		32.217793, 31.914724, 30.905729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742033, 31.561705, 30.242607>,  <32.482086, 31.500799, 30.406916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742033, 31.561705, 30.242607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821289, 31.890842, 30.455648>,  <31.868843, 32.088326, 30.583473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.821289, 31.890842, 30.455648>,  <31.742033, 31.561705, 30.242607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.821289, 31.890842, 30.455648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426422, 0.561625, -0.709043,
		-0.882556, -0.086624, 0.462159,
		0.198140, 0.822845, 0.532604,
		31.880732, 32.137695, 30.615429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101780, 31.926432, 30.398808>,  <31.742033, 31.561705, 30.242607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101780, 31.926432, 30.398808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406715, 32.185249, 30.404154>,  <31.589676, 32.340538, 30.407362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.406715, 32.185249, 30.404154>,  <31.101780, 31.926432, 30.398808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.406715, 32.185249, 30.404154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406933, 0.495298, -0.767519,
		-0.503237, 0.579669, 0.640887,
		0.762337, 0.647042, 0.013366,
		31.635416, 32.379360, 30.408163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893099, 32.589268, 30.409027>,  <31.101780, 31.926432, 30.398808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893099, 32.589268, 30.409027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260162, 32.689556, 30.285711>,  <31.480400, 32.749729, 30.211721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260162, 32.689556, 30.285711>,  <30.893099, 32.589268, 30.409027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260162, 32.689556, 30.285711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393797, 0.677593, -0.621122,
		0.053165, 0.691381, 0.720532,
		0.917659, 0.250722, -0.308288,
		31.535460, 32.764774, 30.193226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723591, 33.271084, 30.241333>,  <30.893099, 32.589268, 30.409027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723591, 33.271084, 30.241333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058016, 33.183887, 30.039946>,  <31.258671, 33.131569, 29.919113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.058016, 33.183887, 30.039946>,  <30.723591, 33.271084, 30.241333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.058016, 33.183887, 30.039946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286817, 0.608618, -0.739811,
		0.467691, 0.762931, 0.446319,
		0.836063, -0.217991, -0.503467,
		31.308834, 33.118488, 29.888905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025526, 33.844101, 30.035070>,  <30.723591, 33.271084, 30.241333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025526, 33.844101, 30.035070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209240, 33.597694, 29.779076>,  <31.319468, 33.449852, 29.625479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.209240, 33.597694, 29.779076>,  <31.025526, 33.844101, 30.035070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209240, 33.597694, 29.779076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084718, 0.686810, -0.721882,
		0.884240, 0.385768, 0.263254,
		0.459285, -0.616015, -0.639986,
		31.347025, 33.412891, 29.587080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582392, 34.196709, 29.735298>,  <31.025526, 33.844101, 30.035070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582392, 34.196709, 29.735298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538074, 33.885822, 29.487539>,  <31.511484, 33.699291, 29.338884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.538074, 33.885822, 29.487539>,  <31.582392, 34.196709, 29.735298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538074, 33.885822, 29.487539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363051, 0.548513, -0.753212,
		0.925159, -0.308325, 0.221397,
		-0.110795, -0.777219, -0.619399,
		31.504835, 33.652657, 29.301720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.257889, 34.136261, 29.276640>,  <31.582392, 34.196709, 29.735298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.257889, 34.136261, 29.276640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956104, 33.954273, 29.087412>,  <31.775034, 33.845081, 28.973875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956104, 33.954273, 29.087412>,  <32.257889, 34.136261, 29.276640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956104, 33.954273, 29.087412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204101, 0.522403, -0.827912,
		0.623804, -0.721181, -0.301274,
		-0.754460, -0.454965, -0.473071,
		31.729767, 33.817783, 28.945490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434422, 33.877831, 28.530535>,  <32.257889, 34.136261, 29.276640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434422, 33.877831, 28.530535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035404, 33.903484, 28.519257>,  <31.795994, 33.918877, 28.512489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.035404, 33.903484, 28.519257>,  <32.434422, 33.877831, 28.530535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035404, 33.903484, 28.519257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055656, 0.480998, -0.874954,
		-0.042553, -0.874373, -0.483385,
		-0.997543, 0.064135, -0.028196,
		31.736141, 33.922726, 28.510798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276245, 33.780766, 27.882856>,  <32.434422, 33.877831, 28.530535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276245, 33.780766, 27.882856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919765, 33.914124, 28.005892>,  <31.705877, 33.994137, 28.079714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.919765, 33.914124, 28.005892>,  <32.276245, 33.780766, 27.882856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919765, 33.914124, 28.005892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063779, 0.579261, -0.812643,
		-0.449102, -0.743846, -0.494975,
		-0.891201, 0.333391, 0.307589,
		31.652405, 34.014141, 28.098169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799383, 33.752270, 27.320339>,  <32.276245, 33.780766, 27.882856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799383, 33.752270, 27.320339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630117, 34.008675, 27.576477>,  <31.528559, 34.162518, 27.730160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.630117, 34.008675, 27.576477>,  <31.799383, 33.752270, 27.320339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630117, 34.008675, 27.576477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118977, 0.661308, -0.740619,
		-0.898208, -0.389589, -0.203577,
		-0.423164, 0.641008, 0.640344,
		31.503168, 34.200977, 27.768579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.090055, 33.927513, 27.116318>,  <31.799383, 33.752270, 27.320339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.090055, 33.927513, 27.116318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226673, 34.219982, 27.352533>,  <31.308643, 34.395462, 27.494263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.226673, 34.219982, 27.352533>,  <31.090055, 33.927513, 27.116318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.226673, 34.219982, 27.352533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135185, 0.660004, -0.738999,
		-0.930093, 0.172569, 0.324264,
		0.341544, 0.731173, 0.590537,
		31.329136, 34.439335, 27.529694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.655550, 34.504959, 26.945864>,  <31.090055, 33.927513, 27.116318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.655550, 34.504959, 26.945864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984005, 34.652401, 27.120157>,  <31.181078, 34.740864, 27.224733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.984005, 34.652401, 27.120157>,  <30.655550, 34.504959, 26.945864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.984005, 34.652401, 27.120157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050759, 0.807611, -0.587527,
		-0.568469, 0.460323, 0.681870,
		0.821138, 0.368602, 0.435736,
		31.230347, 34.762981, 27.250877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520262, 35.249439, 27.275198>,  <30.655550, 34.504959, 26.945864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520262, 35.249439, 27.275198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910782, 35.207043, 27.199720>,  <31.145094, 35.181606, 27.154434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910782, 35.207043, 27.199720>,  <30.520262, 35.249439, 27.275198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910782, 35.207043, 27.199720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022806, 0.917405, -0.397301,
		0.215220, 0.383582, 0.898079,
		0.976299, -0.105988, -0.188696,
		31.203672, 35.175247, 27.143112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.851141, 35.933498, 27.433640>,  <30.520262, 35.249439, 27.275198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.851141, 35.933498, 27.433640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115480, 35.751415, 27.194954>,  <31.274084, 35.642166, 27.051743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.115480, 35.751415, 27.194954>,  <30.851141, 35.933498, 27.433640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.115480, 35.751415, 27.194954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034871, 0.775586, -0.630278,
		0.749708, 0.437327, 0.496672,
		0.660850, -0.455205, -0.596713,
		31.313736, 35.614853, 27.015940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243397, 36.470898, 27.152903>,  <30.851141, 35.933498, 27.433640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243397, 36.470898, 27.152903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336794, 36.174122, 26.901503>,  <31.392832, 35.996056, 26.750664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.336794, 36.174122, 26.901503>,  <31.243397, 36.470898, 27.152903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.336794, 36.174122, 26.901503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175022, 0.667878, -0.723400,
		0.956477, 0.058908, 0.285800,
		0.233494, -0.741936, -0.628499,
		31.406841, 35.951542, 26.712954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743414, 36.718807, 26.756876>,  <31.243397, 36.470898, 27.152903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743414, 36.718807, 26.756876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587038, 36.425873, 26.533859>,  <31.493212, 36.250114, 26.400049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587038, 36.425873, 26.533859>,  <31.743414, 36.718807, 26.756876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587038, 36.425873, 26.533859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026406, 0.596576, -0.802122,
		0.920036, -0.328305, -0.213889,
		-0.390942, -0.732333, -0.557541,
		31.469755, 36.206173, 26.366596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218578, 36.606724, 26.163759>,  <31.743414, 36.718807, 26.756876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218578, 36.606724, 26.163759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856243, 36.477425, 26.054234>,  <31.638844, 36.399845, 25.988518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856243, 36.477425, 26.054234>,  <32.218578, 36.606724, 26.163759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856243, 36.477425, 26.054234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058722, 0.544302, -0.836831,
		0.419539, -0.774111, -0.474067,
		-0.905836, -0.323245, -0.273814,
		31.584492, 36.380451, 25.972090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.208687, 36.568684, 25.389544>,  <32.218578, 36.606724, 26.163759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.208687, 36.568684, 25.389544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819908, 36.536530, 25.477955>,  <31.586641, 36.517235, 25.531002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819908, 36.536530, 25.477955>,  <32.208687, 36.568684, 25.389544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819908, 36.536530, 25.477955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230445, 0.513379, -0.826642,
		-0.047019, -0.854389, -0.517503,
		-0.971949, -0.080388, 0.221028,
		31.528324, 36.512413, 25.544264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.823584, 36.276474, 24.729847>,  <32.208687, 36.568684, 25.389544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.823584, 36.276474, 24.729847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549450, 36.465755, 24.951260>,  <31.384970, 36.579323, 25.084106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.549450, 36.465755, 24.951260>,  <31.823584, 36.276474, 24.729847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.549450, 36.465755, 24.951260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229917, 0.580629, -0.781030,
		-0.690982, -0.662533, -0.289128,
		-0.685334, 0.473202, 0.553532,
		31.343849, 36.607716, 25.117319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.331896, 36.283947, 24.323084>,  <31.823584, 36.276474, 24.729847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.331896, 36.283947, 24.323084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282143, 36.578365, 24.589249>,  <31.252291, 36.755016, 24.748947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282143, 36.578365, 24.589249>,  <31.331896, 36.283947, 24.323084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282143, 36.578365, 24.589249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289778, 0.614437, -0.733823,
		-0.948977, -0.284096, 0.136864,
		-0.124382, 0.736042, 0.665411,
		31.244827, 36.799179, 24.788872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789188, 36.647217, 24.053724>,  <31.331896, 36.283947, 24.323084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789188, 36.647217, 24.053724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937122, 36.915287, 24.311123>,  <31.025883, 37.076130, 24.465563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937122, 36.915287, 24.311123>,  <30.789188, 36.647217, 24.053724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937122, 36.915287, 24.311123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209922, 0.734969, -0.644790,
		-0.905072, 0.103381, 0.412501,
		0.369834, 0.670174, 0.643498,
		31.048073, 37.116341, 24.504171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241982, 37.272617, 24.033503>,  <30.789188, 36.647217, 24.053724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241982, 37.272617, 24.033503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587318, 37.408386, 24.182863>,  <30.794521, 37.489849, 24.272480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.587318, 37.408386, 24.182863>,  <30.241982, 37.272617, 24.033503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.587318, 37.408386, 24.182863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143722, 0.874721, -0.462825,
		-0.483716, 0.345911, 0.803968,
		0.863344, 0.339424, 0.373401,
		30.846321, 37.510212, 24.294884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148241, 37.917343, 24.308809>,  <30.241982, 37.272617, 24.033503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148241, 37.917343, 24.308809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543400, 37.921997, 24.246935>,  <30.780495, 37.924789, 24.209810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.543400, 37.921997, 24.246935>,  <30.148241, 37.917343, 24.308809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.543400, 37.921997, 24.246935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110413, 0.753151, -0.648516,
		0.108957, 0.657745, 0.745319,
		0.987895, 0.011633, -0.154685,
		30.839767, 37.925488, 24.200529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.423752, 38.663883, 24.340117>,  <30.148241, 37.917343, 24.308809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.423752, 38.663883, 24.340117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725847, 38.465084, 24.169184>,  <30.907104, 38.345806, 24.066624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725847, 38.465084, 24.169184>,  <30.423752, 38.663883, 24.340117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725847, 38.465084, 24.169184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117269, 0.743900, -0.657921,
		0.644877, 0.446773, 0.620103,
		0.755236, -0.496997, -0.427331,
		30.952417, 38.315987, 24.040985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.984083, 39.051086, 24.418222>,  <30.423752, 38.663883, 24.340117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.984083, 39.051086, 24.418222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053686, 38.823257, 24.096897>,  <31.095448, 38.686562, 23.904102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.053686, 38.823257, 24.096897>,  <30.984083, 39.051086, 24.418222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053686, 38.823257, 24.096897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185148, 0.820131, -0.541392,
		0.967183, -0.054526, 0.248162,
		0.174006, -0.569572, -0.803312,
		31.105888, 38.652386, 23.855904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.535383, 39.334087, 24.174273>,  <30.984083, 39.051086, 24.418222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.535383, 39.334087, 24.174273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378683, 39.130638, 23.867592>,  <31.284664, 39.008568, 23.683582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.378683, 39.130638, 23.867592>,  <31.535383, 39.334087, 24.174273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.378683, 39.130638, 23.867592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166893, 0.780202, -0.602853,
		0.904810, -0.364124, -0.220756,
		-0.391747, -0.508625, -0.766704,
		31.261158, 38.978050, 23.637581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057285, 39.410706, 23.572521>,  <31.535383, 39.334087, 24.174273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057285, 39.410706, 23.572521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700272, 39.309887, 23.422935>,  <31.486063, 39.249397, 23.333183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700272, 39.309887, 23.422935>,  <32.057285, 39.410706, 23.572521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700272, 39.309887, 23.422935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074038, 0.736090, -0.672822,
		0.444855, -0.628207, -0.638327,
		-0.892537, -0.252048, -0.373965,
		31.432510, 39.234272, 23.310745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177719, 39.431438, 22.891022>,  <32.057285, 39.410706, 23.572521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177719, 39.431438, 22.891022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778605, 39.442326, 22.915297>,  <31.539137, 39.448860, 22.929861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778605, 39.442326, 22.915297>,  <32.177719, 39.431438, 22.891022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778605, 39.442326, 22.915297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032363, 0.598416, -0.800532,
		-0.058109, -0.800723, -0.596209,
		-0.997786, 0.027222, 0.060687,
		31.479269, 39.450493, 22.933502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057316, 39.534473, 22.175602>,  <32.177719, 39.431438, 22.891022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057316, 39.534473, 22.175602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716970, 39.631245, 22.362148>,  <31.512762, 39.689308, 22.474075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.716970, 39.631245, 22.362148>,  <32.057316, 39.534473, 22.175602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.716970, 39.631245, 22.362148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161463, 0.724300, -0.670313,
		-0.499955, -0.645648, -0.577220,
		-0.850867, 0.241927, 0.466366,
		31.461710, 39.703823, 22.502058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471226, 39.595112, 21.731234>,  <32.057316, 39.534473, 22.175602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471226, 39.595112, 21.731234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400743, 39.842575, 22.037493>,  <31.358454, 39.991055, 22.221249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400743, 39.842575, 22.037493>,  <31.471226, 39.595112, 21.731234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400743, 39.842575, 22.037493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113843, 0.785404, -0.608424,
		-0.977748, -0.020045, -0.208823,
		-0.176206, 0.618658, 0.765646,
		31.347881, 40.028172, 22.267187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207079, 40.126141, 21.362160>,  <31.471226, 39.595112, 21.731234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207079, 40.126141, 21.362160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301561, 40.277977, 21.719957>,  <31.358250, 40.369080, 21.934635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.301561, 40.277977, 21.719957>,  <31.207079, 40.126141, 21.362160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.301561, 40.277977, 21.719957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133528, 0.899129, -0.416819,
		-0.962485, 0.217894, 0.161691,
		0.236204, 0.379592, 0.894493,
		31.372423, 40.391853, 21.988306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834263, 40.753376, 21.519741>,  <31.207079, 40.126141, 21.362160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834263, 40.753376, 21.519741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154972, 40.793518, 21.755398>,  <31.347397, 40.817604, 21.896791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.154972, 40.793518, 21.755398>,  <30.834263, 40.753376, 21.519741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.154972, 40.793518, 21.755398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143796, 0.924443, -0.353169,
		-0.580073, 0.367877, 0.726761,
		0.801772, 0.100358, 0.589143,
		31.395504, 40.823624, 21.932140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811678, 41.496601, 21.751623>,  <30.834263, 40.753376, 21.519741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811678, 41.496601, 21.751623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177797, 41.346386, 21.809866>,  <31.397469, 41.256256, 21.844812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.177797, 41.346386, 21.809866>,  <30.811678, 41.496601, 21.751623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.177797, 41.346386, 21.809866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400663, 0.885913, -0.233723,
		-0.041225, 0.272266, 0.961338,
		0.915297, -0.375538, 0.145609,
		31.452387, 41.233727, 21.853548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155302, 41.980068, 22.273376>,  <30.811678, 41.496601, 21.751623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155302, 41.980068, 22.273376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445078, 41.808266, 22.057705>,  <31.618942, 41.705185, 21.928303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.445078, 41.808266, 22.057705>,  <31.155302, 41.980068, 22.273376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.445078, 41.808266, 22.057705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382238, 0.901194, -0.204312,
		0.573659, -0.058083, 0.817033,
		0.724438, -0.429506, -0.539179,
		31.662409, 41.679413, 21.895950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749187, 42.321556, 22.542028>,  <31.155302, 41.980068, 22.273376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749187, 42.321556, 22.542028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872892, 42.157932, 22.198626>,  <31.947115, 42.059757, 21.992584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872892, 42.157932, 22.198626>,  <31.749187, 42.321556, 22.542028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872892, 42.157932, 22.198626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557162, 0.809531, -0.185013,
		0.770667, -0.421110, 0.478267,
		0.309261, -0.409056, -0.858505,
		31.965672, 42.035217, 21.941074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455723, 42.443825, 22.510744>,  <31.749187, 42.321556, 22.542028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455723, 42.443825, 22.510744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340279, 42.381931, 22.132799>,  <32.271011, 42.344795, 21.906033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.340279, 42.381931, 22.132799>,  <32.455723, 42.443825, 22.510744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.340279, 42.381931, 22.132799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398409, 0.877950, -0.265470,
		0.870617, -0.453059, -0.191740,
		-0.288611, -0.154732, -0.944861,
		32.253696, 42.335510, 21.849340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031166, 42.712074, 22.265289>,  <32.455723, 42.443825, 22.510744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031166, 42.712074, 22.265289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765995, 42.689442, 21.966673>,  <32.606892, 42.675861, 21.787502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765995, 42.689442, 21.966673>,  <33.031166, 42.712074, 22.265289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765995, 42.689442, 21.966673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286974, 0.901777, -0.323179,
		0.691499, -0.428483, -0.581576,
		-0.662929, -0.056581, -0.746541,
		32.567116, 42.672466, 21.742710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449829, 42.919250, 21.691021>,  <33.031166, 42.712074, 22.265289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449829, 42.919250, 21.691021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060165, 42.974300, 21.619377>,  <32.826366, 43.007332, 21.576391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060165, 42.974300, 21.619377>,  <33.449829, 42.919250, 21.691021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060165, 42.974300, 21.619377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203337, 0.879605, -0.430057,
		0.098358, -0.455361, -0.884857,
		-0.974156, 0.137625, -0.179108,
		32.767918, 43.015587, 21.565645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458721, 43.181259, 21.204876>,  <33.449829, 42.919250, 21.691021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458721, 43.181259, 21.204876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084755, 43.293648, 21.291582>,  <32.860374, 43.361080, 21.343605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084755, 43.293648, 21.291582>,  <33.458721, 43.181259, 21.204876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084755, 43.293648, 21.291582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223507, 0.940675, -0.255294,
		-0.275634, -0.190231, -0.942252,
		-0.934918, 0.280967, 0.216764,
		32.804279, 43.377937, 21.356611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283527, 43.508434, 20.723026>,  <33.458721, 43.181259, 21.204876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283527, 43.508434, 20.723026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043732, 43.668198, 21.000467>,  <32.899857, 43.764057, 21.166931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.043732, 43.668198, 21.000467>,  <33.283527, 43.508434, 20.723026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.043732, 43.668198, 21.000467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292096, 0.915995, -0.275015,
		-0.745181, 0.037730, -0.665794,
		-0.599487, 0.399412, 0.693603,
		32.863884, 43.788021, 21.208548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041088, 44.115280, 20.463566>,  <33.283527, 43.508434, 20.723026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041088, 44.115280, 20.463566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930058, 44.159019, 20.845350>,  <32.863438, 44.185265, 21.074421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.930058, 44.159019, 20.845350>,  <33.041088, 44.115280, 20.463566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930058, 44.159019, 20.845350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259890, 0.965005, -0.034977,
		-0.924883, 0.238346, -0.296282,
		-0.277577, 0.109350, 0.954460,
		32.846783, 44.191826, 21.131689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485931, 44.672760, 20.590813>,  <33.041088, 44.115280, 20.463566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485931, 44.672760, 20.590813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708549, 44.640057, 20.921528>,  <32.842121, 44.620434, 21.119957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708549, 44.640057, 20.921528>,  <32.485931, 44.672760, 20.590813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708549, 44.640057, 20.921528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209054, 0.976908, -0.044117,
		-0.804089, 0.197396, 0.560781,
		0.556541, -0.081759, 0.826788,
		32.875511, 44.615528, 21.169563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.429802, 45.343395, 20.521164>,  <32.485931, 44.672760, 20.590813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.429802, 45.343395, 20.521164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729637, 45.172421, 20.723318>,  <32.909538, 45.069836, 20.844610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.729637, 45.172421, 20.723318>,  <32.429802, 45.343395, 20.521164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.729637, 45.172421, 20.723318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366581, -0.903827, -0.220715,
		0.551125, -0.019820, -0.834187,
		0.749586, -0.427439, 0.505388,
		32.954514, 45.044189, 20.874935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234932, 45.131916, 20.423370>,  <32.429802, 45.343395, 20.521164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234932, 45.131916, 20.423370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180714, 45.520370, 20.501879>,  <33.148182, 45.753445, 20.548983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180714, 45.520370, 20.501879>,  <33.234932, 45.131916, 20.423370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180714, 45.520370, 20.501879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009214, -0.199324, 0.979890,
		0.990728, 0.131015, 0.035967,
		-0.135549, 0.971136, 0.196269,
		33.140049, 45.811710, 20.560759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862198, 45.322727, 20.873680>,  <33.234932, 45.131916, 20.423370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862198, 45.322727, 20.873680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513977, 45.517822, 20.899773>,  <33.305046, 45.634880, 20.915428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.513977, 45.517822, 20.899773>,  <33.862198, 45.322727, 20.873680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513977, 45.517822, 20.899773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135409, -0.364887, 0.921152,
		0.473079, 0.793078, 0.383697,
		-0.870552, 0.487734, 0.065230,
		33.252811, 45.664143, 20.919342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776634, 45.747608, 21.510628>,  <33.862198, 45.322727, 20.873680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776634, 45.747608, 21.510628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409885, 45.649002, 21.385038>,  <33.189835, 45.589840, 21.309685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409885, 45.649002, 21.385038>,  <33.776634, 45.747608, 21.510628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409885, 45.649002, 21.385038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188402, -0.426190, 0.884797,
		-0.351927, 0.870398, 0.344317,
		-0.916871, -0.246514, -0.313973,
		33.134823, 45.575047, 21.290846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.269299, 46.011044, 22.011717>,  <33.776634, 45.747608, 21.510628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.269299, 46.011044, 22.011717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134720, 45.696217, 21.804901>,  <33.053970, 45.507320, 21.680811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.134720, 45.696217, 21.804901>,  <33.269299, 46.011044, 22.011717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.134720, 45.696217, 21.804901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172566, -0.488222, 0.855489,
		-0.925754, 0.377054, 0.028442,
		-0.336451, -0.787064, -0.517040,
		33.033783, 45.460098, 21.649790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828613, 46.567379, 21.992609>,  <33.269299, 46.011044, 22.011717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828613, 46.567379, 21.992609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636768, 46.743980, 22.295937>,  <32.521664, 46.849941, 22.477934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.636768, 46.743980, 22.295937>,  <32.828613, 46.567379, 21.992609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636768, 46.743980, 22.295937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117931, -0.823926, 0.554291,
		0.869521, 0.355273, 0.343095,
		-0.479609, 0.441506, 0.758319,
		32.492886, 46.876431, 22.523432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.127388, 46.733746, 22.710835>,  <32.828613, 46.567379, 21.992609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.127388, 46.733746, 22.710835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743282, 46.622131, 22.713327>,  <32.512821, 46.555164, 22.714823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.743282, 46.622131, 22.713327>,  <33.127388, 46.733746, 22.710835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.743282, 46.622131, 22.713327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237496, -0.805175, 0.543405,
		-0.146611, 0.523290, 0.839448,
		-0.960261, -0.279035, 0.006231,
		32.455204, 46.538422, 22.715197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163212, 46.425461, 23.327238>,  <33.127388, 46.733746, 22.710835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163212, 46.425461, 23.327238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798489, 46.353851, 23.179426>,  <32.579655, 46.310886, 23.090738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798489, 46.353851, 23.179426>,  <33.163212, 46.425461, 23.327238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798489, 46.353851, 23.179426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099839, -0.776284, 0.622426,
		-0.398287, 0.604429, 0.689952,
		-0.911811, -0.179021, -0.369529,
		32.524944, 46.300144, 23.068567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606655, 46.362434, 23.852747>,  <33.163212, 46.425461, 23.327238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606655, 46.362434, 23.852747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467709, 46.140644, 23.550251>,  <32.384342, 46.007572, 23.368753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467709, 46.140644, 23.550251>,  <32.606655, 46.362434, 23.852747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467709, 46.140644, 23.550251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260769, -0.717530, 0.645871,
		-0.900741, 0.421558, 0.104658,
		-0.347368, -0.554472, -0.756239,
		32.363499, 45.974304, 23.323380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851202, 46.157238, 24.012678>,  <32.606655, 46.362434, 23.852747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851202, 46.157238, 24.012678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062279, 45.905701, 23.784258>,  <32.188923, 45.754780, 23.647205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062279, 45.905701, 23.784258>,  <31.851202, 46.157238, 24.012678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062279, 45.905701, 23.784258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041538, -0.690570, 0.722071,
		-0.848422, -0.357308, -0.390527,
		0.527688, -0.628843, -0.571053,
		32.220585, 45.717049, 23.612942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.425924, 45.568920, 24.010256>,  <31.851202, 46.157238, 24.012678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.425924, 45.568920, 24.010256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795645, 45.464157, 23.899210>,  <32.017479, 45.401299, 23.832582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795645, 45.464157, 23.899210>,  <31.425924, 45.568920, 24.010256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795645, 45.464157, 23.899210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048496, -0.640895, 0.766096,
		-0.378569, -0.721567, -0.579678,
		0.924302, -0.261908, -0.277616,
		32.072937, 45.385586, 23.815926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444540, 44.814178, 23.847218>,  <31.425924, 45.568920, 24.010256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444540, 44.814178, 23.847218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814499, 44.928303, 23.947746>,  <32.036476, 44.996777, 24.008062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814499, 44.928303, 23.947746>,  <31.444540, 44.814178, 23.847218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814499, 44.928303, 23.947746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021650, -0.699440, 0.714363,
		0.379598, -0.655272, -0.653087,
		0.924898, 0.285310, 0.251320,
		32.091969, 45.013897, 24.023142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.796034, 44.208031, 24.093510>,  <31.444540, 44.814178, 23.847218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.796034, 44.208031, 24.093510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089066, 44.468437, 24.173018>,  <32.264885, 44.624680, 24.220722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089066, 44.468437, 24.173018>,  <31.796034, 44.208031, 24.093510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089066, 44.468437, 24.173018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399534, -0.647672, 0.648763,
		0.551091, -0.395855, -0.734573,
		0.732579, 0.651015, 0.198768,
		32.308838, 44.663742, 24.232649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338905, 43.824196, 23.953783>,  <31.796034, 44.208031, 24.093510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338905, 43.824196, 23.953783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395054, 44.120274, 24.216812>,  <32.428741, 44.297920, 24.374630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.395054, 44.120274, 24.216812>,  <32.338905, 43.824196, 23.953783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395054, 44.120274, 24.216812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285498, -0.666199, 0.688963,
		0.948044, 0.091027, -0.304839,
		0.140369, 0.740198, 0.657574,
		32.437164, 44.342335, 24.414083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935875, 43.671627, 24.206675>,  <32.338905, 43.824196, 23.953783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935875, 43.671627, 24.206675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781128, 43.913185, 24.485426>,  <32.688278, 44.058121, 24.652678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.781128, 43.913185, 24.485426>,  <32.935875, 43.671627, 24.206675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.781128, 43.913185, 24.485426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257597, -0.654863, 0.710491,
		0.885424, 0.454382, 0.097785,
		-0.386870, 0.603897, 0.696879,
		32.665066, 44.094353, 24.694490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375706, 43.684002, 24.746075>,  <32.935875, 43.671627, 24.206675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375706, 43.684002, 24.746075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027195, 43.807583, 24.898617>,  <32.818089, 43.881733, 24.990141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.027195, 43.807583, 24.898617>,  <33.375706, 43.684002, 24.746075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027195, 43.807583, 24.898617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043186, -0.725732, 0.686620,
		0.488896, 0.614702, 0.618968,
		-0.871272, 0.308956, 0.381354,
		32.765812, 43.900269, 25.013023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.466541, 43.800030, 25.545355>,  <33.375706, 43.684002, 24.746075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.466541, 43.800030, 25.545355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076744, 43.729065, 25.490370>,  <32.842865, 43.686485, 25.457378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076744, 43.729065, 25.490370>,  <33.466541, 43.800030, 25.545355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076744, 43.729065, 25.490370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006635, -0.589433, 0.807790,
		-0.224336, 0.788095, 0.573219,
		-0.974489, -0.177412, -0.137460,
		32.784397, 43.675842, 25.449131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203747, 43.694450, 26.179525>,  <33.466541, 43.800030, 25.545355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203747, 43.694450, 26.179525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915264, 43.545055, 25.946159>,  <32.742176, 43.455418, 25.806139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.915264, 43.545055, 25.946159>,  <33.203747, 43.694450, 26.179525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915264, 43.545055, 25.946159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000885, -0.842704, 0.538376,
		-0.692722, 0.387763, 0.608092,
		-0.721204, -0.373483, -0.583417,
		32.698902, 43.433010, 25.771133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711056, 43.399399, 26.601660>,  <33.203747, 43.694450, 26.179525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711056, 43.399399, 26.601660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650623, 43.230896, 26.243952>,  <32.614365, 43.129795, 26.029327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650623, 43.230896, 26.243952>,  <32.711056, 43.399399, 26.601660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650623, 43.230896, 26.243952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017419, -0.905646, 0.423676,
		-0.988368, 0.048432, 0.144162,
		-0.151079, -0.421259, -0.894268,
		32.605301, 43.104519, 25.975672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058674, 42.865875, 26.725357>,  <32.711056, 43.399399, 26.601660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058674, 42.865875, 26.725357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249992, 42.764145, 26.389130>,  <32.364784, 42.703106, 26.187393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249992, 42.764145, 26.389130>,  <32.058674, 42.865875, 26.725357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249992, 42.764145, 26.389130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067788, -0.964984, 0.253399,
		-0.875579, -0.064218, -0.478787,
		0.478294, -0.254327, -0.840567,
		32.393482, 42.687847, 26.136959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.675858, 42.393169, 26.374275>,  <32.058674, 42.865875, 26.725357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.675858, 42.393169, 26.374275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048862, 42.340801, 26.239645>,  <32.272667, 42.309380, 26.158867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048862, 42.340801, 26.239645>,  <31.675858, 42.393169, 26.374275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048862, 42.340801, 26.239645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030976, -0.957540, 0.286631,
		-0.359811, -0.256861, -0.896972,
		0.932511, -0.130918, -0.336576,
		32.328617, 42.301525, 26.138672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649036, 41.795528, 26.114044>,  <31.675858, 42.393169, 26.374275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649036, 41.795528, 26.114044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047310, 41.821789, 26.140293>,  <32.286274, 41.837543, 26.156042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047310, 41.821789, 26.140293>,  <31.649036, 41.795528, 26.114044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047310, 41.821789, 26.140293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041147, -0.945879, 0.321902,
		0.083203, -0.317812, -0.944496,
		0.995683, 0.065647, 0.065623,
		32.346016, 41.841484, 26.159981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858593, 41.186279, 25.910959>,  <31.649036, 41.795528, 26.114044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858593, 41.186279, 25.910959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178421, 41.340500, 26.095150>,  <32.370319, 41.433033, 26.205664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.178421, 41.340500, 26.095150>,  <31.858593, 41.186279, 25.910959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178421, 41.340500, 26.095150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124290, -0.856360, 0.501198,
		0.587569, -0.343511, -0.732641,
		0.799572, 0.385548, 0.460475,
		32.418293, 41.456165, 26.233292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349060, 40.729488, 25.707674>,  <31.858593, 41.186279, 25.910959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349060, 40.729488, 25.707674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502117, 40.888111, 26.041460>,  <32.593952, 40.983284, 26.241732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.502117, 40.888111, 26.041460>,  <32.349060, 40.729488, 25.707674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502117, 40.888111, 26.041460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051573, -0.910959, 0.409260,
		0.922456, -0.113564, -0.369022,
		0.382642, 0.396556, 0.834463,
		32.616909, 41.007076, 26.291800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957294, 40.352612, 25.944981>,  <32.349060, 40.729488, 25.707674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957294, 40.352612, 25.944981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818855, 40.541687, 26.269150>,  <32.735794, 40.655132, 26.463652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.818855, 40.541687, 26.269150>,  <32.957294, 40.352612, 25.944981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.818855, 40.541687, 26.269150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091354, -0.876678, 0.472323,
		0.933742, 0.089434, 0.346596,
		-0.346094, 0.472691, 0.810421,
		32.715027, 40.683495, 26.512276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317905, 40.048843, 26.452679>,  <32.957294, 40.352612, 25.944981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317905, 40.048843, 26.452679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015896, 40.212074, 26.657976>,  <32.834690, 40.310013, 26.781155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015896, 40.212074, 26.657976>,  <33.317905, 40.048843, 26.452679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015896, 40.212074, 26.657976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001122, -0.783540, 0.621340,
		0.655700, 0.468549, 0.592046,
		-0.755021, 0.408077, 0.513242,
		32.789391, 40.334499, 26.811949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.531536, 39.937077, 27.186697>,  <33.317905, 40.048843, 26.452679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.531536, 39.937077, 27.186697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138252, 40.010014, 27.184078>,  <32.902283, 40.053776, 27.182507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138252, 40.010014, 27.184078>,  <33.531536, 39.937077, 27.186697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138252, 40.010014, 27.184078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131219, -0.681687, 0.719781,
		0.126785, 0.708557, 0.694170,
		-0.983213, 0.182346, -0.006549,
		32.843288, 40.064716, 27.182114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.328064, 39.974823, 28.006468>,  <33.531536, 39.937077, 27.186697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.328064, 39.974823, 28.006468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013618, 39.879913, 27.778177>,  <32.824951, 39.822968, 27.641203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.013618, 39.879913, 27.778177>,  <33.328064, 39.974823, 28.006468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.013618, 39.879913, 27.778177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282851, -0.682917, 0.673513,
		-0.549567, 0.690886, 0.469736,
		-0.786112, -0.237275, -0.570727,
		32.777786, 39.808731, 27.606958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754478, 40.083080, 28.526764>,  <33.328064, 39.974823, 28.006468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754478, 40.083080, 28.526764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624237, 39.883232, 28.205675>,  <32.546093, 39.763325, 28.013021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.624237, 39.883232, 28.205675>,  <32.754478, 40.083080, 28.526764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.624237, 39.883232, 28.205675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378942, -0.708864, 0.594907,
		-0.866248, 0.497889, 0.041483,
		-0.325603, -0.499617, -0.802723,
		32.526558, 39.733345, 27.964859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006020, 39.788681, 28.700567>,  <32.754478, 40.083080, 28.526764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006020, 39.788681, 28.700567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172310, 39.559570, 28.417978>,  <32.272083, 39.422104, 28.248425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.172310, 39.559570, 28.417978>,  <32.006020, 39.788681, 28.700567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.172310, 39.559570, 28.417978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252709, -0.818934, 0.515252,
		-0.873678, -0.035670, -0.485195,
		0.415722, -0.572778, -0.706471,
		32.297028, 39.387737, 28.206038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532606, 39.358986, 28.599874>,  <32.006020, 39.788681, 28.700567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532606, 39.358986, 28.599874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838163, 39.175449, 28.418354>,  <32.021496, 39.065327, 28.309441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.838163, 39.175449, 28.418354>,  <31.532606, 39.358986, 28.599874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.838163, 39.175449, 28.418354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190796, -0.832335, 0.520399,
		-0.616494, -0.310946, -0.723359,
		0.763893, -0.458837, -0.453802,
		32.067329, 39.037800, 28.282213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225103, 38.659775, 28.397987>,  <31.532606, 39.358986, 28.599874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225103, 38.659775, 28.397987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624619, 38.647350, 28.413279>,  <31.864326, 38.639896, 28.422453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.624619, 38.647350, 28.413279>,  <31.225103, 38.659775, 28.397987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.624619, 38.647350, 28.413279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048237, -0.773829, 0.631555,
		0.009966, -0.632632, -0.774388,
		0.998786, -0.031060, 0.038228,
		31.924255, 38.638031, 28.424747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364658, 37.898685, 28.338320>,  <31.225103, 38.659775, 28.397987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364658, 37.898685, 28.338320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684309, 38.081642, 28.494364>,  <31.876101, 38.191418, 28.587990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684309, 38.081642, 28.494364>,  <31.364658, 37.898685, 28.338320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684309, 38.081642, 28.494364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003218, -0.652173, 0.758064,
		0.601152, -0.604535, -0.522641,
		0.799128, 0.457393, 0.390110,
		31.924047, 38.218861, 28.611397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828466, 37.338017, 28.436640>,  <31.364658, 37.898685, 28.338320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828466, 37.338017, 28.436640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953676, 37.640556, 28.666407>,  <32.028801, 37.822079, 28.804266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953676, 37.640556, 28.666407>,  <31.828466, 37.338017, 28.436640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953676, 37.640556, 28.666407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207147, -0.644619, 0.735905,
		0.926879, -0.111368, -0.358457,
		0.313024, 0.756349, 0.574415,
		32.047585, 37.867462, 28.838732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.519146, 37.180824, 28.476810>,  <31.828466, 37.338017, 28.436640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.519146, 37.180824, 28.476810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411850, 37.438164, 28.763628>,  <32.347473, 37.592567, 28.935719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.411850, 37.438164, 28.763628>,  <32.519146, 37.180824, 28.476810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411850, 37.438164, 28.763628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058820, -0.731997, 0.678764,
		0.961555, 0.224247, 0.158507,
		-0.268237, 0.643346, 0.717046,
		32.331379, 37.631168, 28.978743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002647, 37.105030, 29.004223>,  <32.519146, 37.180824, 28.476810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002647, 37.105030, 29.004223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660172, 37.260471, 29.140417>,  <32.454685, 37.353737, 29.222134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660172, 37.260471, 29.140417>,  <33.002647, 37.105030, 29.004223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660172, 37.260471, 29.140417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060028, -0.579731, 0.812594,
		0.513165, 0.716172, 0.473032,
		-0.856189, 0.388600, 0.340488,
		32.403316, 37.377052, 29.242563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150627, 37.123573, 29.667337>,  <33.002647, 37.105030, 29.004223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150627, 37.123573, 29.667337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752602, 37.163136, 29.670481>,  <32.513786, 37.186874, 29.672367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752602, 37.163136, 29.670481>,  <33.150627, 37.123573, 29.667337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752602, 37.163136, 29.670481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055045, -0.616211, 0.785655,
		0.082549, 0.781346, 0.618615,
		-0.995066, 0.098906, 0.007859,
		32.454082, 37.192806, 29.672838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007149, 37.092419, 30.452795>,  <33.150627, 37.123573, 29.667337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007149, 37.092419, 30.452795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657600, 37.032490, 30.267794>,  <32.447872, 36.996532, 30.156794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.657600, 37.032490, 30.267794>,  <33.007149, 37.092419, 30.452795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.657600, 37.032490, 30.267794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285481, -0.611899, 0.737618,
		-0.393519, 0.776616, 0.491946,
		-0.873867, -0.149825, -0.462503,
		32.395439, 36.987541, 30.129044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.358425, 37.243717, 30.877901>,  <33.007149, 37.092419, 30.452795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.358425, 37.243717, 30.877901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274605, 36.971603, 30.596960>,  <32.224312, 36.808334, 30.428394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274605, 36.971603, 30.596960>,  <32.358425, 37.243717, 30.877901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274605, 36.971603, 30.596960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431661, -0.580157, 0.690715,
		-0.877359, 0.447916, -0.172083,
		-0.209547, -0.680286, -0.702354,
		32.211742, 36.767517, 30.386253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846266, 36.924324, 31.306641>,  <32.358425, 37.243717, 30.877901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846266, 36.924324, 31.306641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916273, 36.696781, 30.985203>,  <31.958277, 36.560253, 30.792339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.916273, 36.696781, 30.985203>,  <31.846266, 36.924324, 31.306641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916273, 36.696781, 30.985203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406144, -0.785227, 0.467403,
		-0.896893, 0.244572, -0.368468,
		0.175017, -0.568861, -0.803596,
		31.968779, 36.526123, 30.744123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.173798, 36.588730, 31.079935>,  <31.846266, 36.924324, 31.306641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.173798, 36.588730, 31.079935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486300, 36.376991, 30.947611>,  <31.673801, 36.249947, 30.868216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.486300, 36.376991, 30.947611>,  <31.173798, 36.588730, 31.079935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.486300, 36.376991, 30.947611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349625, -0.810114, 0.470614,
		-0.517111, -0.252009, -0.817977,
		0.781254, -0.529345, -0.330810,
		31.720676, 36.218189, 30.848368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897909, 35.982399, 30.766842>,  <31.173798, 36.588730, 31.079935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897909, 35.982399, 30.766842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275301, 35.874050, 30.843237>,  <31.501736, 35.809040, 30.889074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275301, 35.874050, 30.843237>,  <30.897909, 35.982399, 30.766842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275301, 35.874050, 30.843237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331176, -0.793172, 0.511078,
		0.013049, -0.545442, -0.838047,
		0.943479, -0.270872, 0.190987,
		31.558344, 35.792789, 30.900534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800844, 35.248306, 30.742620>,  <30.897909, 35.982399, 30.766842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800844, 35.248306, 30.742620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155422, 35.303661, 30.919285>,  <31.368170, 35.336872, 31.025284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.155422, 35.303661, 30.919285>,  <30.800844, 35.248306, 30.742620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.155422, 35.303661, 30.919285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129459, -0.842031, 0.523664,
		0.444361, -0.521376, -0.728499,
		0.886445, 0.138385, 0.441662,
		31.421356, 35.345177, 31.051783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256134, 34.527107, 30.736988>,  <30.800844, 35.248306, 30.742620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256134, 34.527107, 30.736988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368109, 34.769226, 31.035048>,  <31.435293, 34.914497, 31.213882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368109, 34.769226, 31.035048>,  <31.256134, 34.527107, 30.736988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368109, 34.769226, 31.035048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067687, -0.761805, 0.644261,
		0.957629, -0.230790, -0.172287,
		0.279939, 0.605301, 0.745148,
		31.452091, 34.950817, 31.258593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.871653, 34.197666, 31.158262>,  <31.256134, 34.527107, 30.736988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.871653, 34.197666, 31.158262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682001, 34.463627, 31.389122>,  <31.568211, 34.623203, 31.527637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.682001, 34.463627, 31.389122>,  <31.871653, 34.197666, 31.158262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682001, 34.463627, 31.389122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039259, -0.670827, 0.740574,
		0.879580, 0.328468, 0.344161,
		-0.474128, 0.664906, 0.577151,
		31.539762, 34.663097, 31.562267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210896, 34.165337, 31.712257>,  <31.871653, 34.197666, 31.158262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210896, 34.165337, 31.712257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906944, 34.364067, 31.879950>,  <31.724573, 34.483303, 31.980564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906944, 34.364067, 31.879950>,  <32.210896, 34.165337, 31.712257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906944, 34.364067, 31.879950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160458, -0.481600, 0.861577,
		0.629952, 0.721962, 0.286238,
		-0.759878, 0.496823, 0.419229,
		31.678982, 34.513115, 32.005718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.368423, 34.449566, 32.404251>,  <32.210896, 34.165337, 31.712257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.368423, 34.449566, 32.404251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972788, 34.395721, 32.380287>,  <31.735407, 34.363415, 32.365910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972788, 34.395721, 32.380287>,  <32.368423, 34.449566, 32.404251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972788, 34.395721, 32.380287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014442, -0.493218, 0.869786,
		-0.146631, 0.859428, 0.489779,
		-0.989086, -0.134611, -0.059909,
		31.676062, 34.355339, 32.362316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404076, 35.077652, 32.826694>,  <32.368423, 34.449566, 32.404251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404076, 35.077652, 32.826694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667450, 34.779285, 32.786537>,  <32.825474, 34.600266, 32.762444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667450, 34.779285, 32.786537>,  <32.404076, 35.077652, 32.826694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667450, 34.779285, 32.786537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241569, 0.335771, -0.910440,
		0.712820, 0.575211, 0.401273,
		0.658431, -0.745916, -0.100391,
		32.864979, 34.555511, 32.756420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615158, 35.094887, 33.466431>,  <32.404076, 35.077652, 32.826694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615158, 35.094887, 33.466431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910984, 35.198410, 33.714966>,  <33.088478, 35.260525, 33.864090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910984, 35.198410, 33.714966>,  <32.615158, 35.094887, 33.466431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910984, 35.198410, 33.714966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182887, 0.811129, -0.555538,
		-0.647764, 0.524491, 0.552549,
		0.739563, 0.258803, 0.621343,
		33.132854, 35.276051, 33.901367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464161, 35.787781, 33.745960>,  <32.615158, 35.094887, 33.466431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464161, 35.787781, 33.745960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849838, 35.685196, 33.718948>,  <33.081245, 35.623646, 33.702740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849838, 35.685196, 33.718948>,  <32.464161, 35.787781, 33.745960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849838, 35.685196, 33.718948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184030, 0.830379, -0.525932,
		0.190959, 0.494671, 0.847841,
		0.964193, -0.256459, -0.067534,
		33.139095, 35.608257, 33.698689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.833832, 36.388760, 33.849762>,  <32.464161, 35.787781, 33.745960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.833832, 36.388760, 33.849762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103039, 36.144485, 33.682858>,  <33.264565, 35.997921, 33.582714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.103039, 36.144485, 33.682858>,  <32.833832, 36.388760, 33.849762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.103039, 36.144485, 33.682858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208251, 0.697798, -0.685354,
		0.709700, 0.374362, 0.596808,
		0.673021, -0.610681, -0.417266,
		33.304947, 35.961281, 33.557678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350754, 36.812077, 33.602962>,  <32.833832, 36.388760, 33.849762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350754, 36.812077, 33.602962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446617, 36.471130, 33.417046>,  <33.504135, 36.266563, 33.305496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446617, 36.471130, 33.417046>,  <33.350754, 36.812077, 33.602962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446617, 36.471130, 33.417046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169764, 0.508163, -0.844364,
		0.955901, 0.123450, 0.266485,
		0.239654, -0.852367, -0.464796,
		33.518513, 36.215420, 33.277607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100346, 36.888927, 33.369240>,  <33.350754, 36.812077, 33.602962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100346, 36.888927, 33.369240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923855, 36.605370, 33.149136>,  <33.817959, 36.435234, 33.017075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.923855, 36.605370, 33.149136>,  <34.100346, 36.888927, 33.369240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.923855, 36.605370, 33.149136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388117, 0.402114, -0.829258,
		0.809125, -0.579455, 0.097712,
		-0.441227, -0.708897, -0.550258,
		33.791485, 36.392700, 32.984058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663906, 36.609756, 32.972458>,  <34.100346, 36.888927, 33.369240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663906, 36.609756, 32.972458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329559, 36.514137, 32.774796>,  <34.128952, 36.456768, 32.656197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329559, 36.514137, 32.774796>,  <34.663906, 36.609756, 32.972458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329559, 36.514137, 32.774796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439312, 0.248469, -0.863289,
		0.329147, -0.938681, -0.102671,
		-0.835863, -0.239044, -0.494156,
		34.078800, 36.442425, 32.626549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.898964, 36.253746, 32.359436>,  <34.663906, 36.609756, 32.972458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.898964, 36.253746, 32.359436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531864, 36.389984, 32.277729>,  <34.311604, 36.471729, 32.228703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.531864, 36.389984, 32.277729>,  <34.898964, 36.253746, 32.359436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531864, 36.389984, 32.277729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341774, 0.415318, -0.843031,
		-0.202297, -0.843507, -0.497566,
		-0.917750, 0.340598, -0.204271,
		34.256538, 36.492165, 32.216446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.813438, 36.234810, 31.564766>,  <34.898964, 36.253746, 32.359436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.813438, 36.234810, 31.564766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517090, 36.472340, 31.690292>,  <34.339279, 36.614857, 31.765608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517090, 36.472340, 31.690292>,  <34.813438, 36.234810, 31.564766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517090, 36.472340, 31.690292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205294, 0.645091, -0.736010,
		-0.639498, -0.480868, -0.599840,
		-0.740876, 0.593821, 0.313815,
		34.294827, 36.650486, 31.784437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379448, 36.469147, 30.925909>,  <34.813438, 36.234810, 31.564766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379448, 36.469147, 30.925909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303623, 36.722588, 31.225939>,  <34.258129, 36.874653, 31.405956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.303623, 36.722588, 31.225939>,  <34.379448, 36.469147, 30.925909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.303623, 36.722588, 31.225939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036475, 0.758853, -0.650240,
		-0.981192, -0.150617, -0.120736,
		-0.189558, 0.633606, 0.750074,
		34.246758, 36.912670, 31.450960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861649, 36.883900, 30.650591>,  <34.379448, 36.469147, 30.925909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861649, 36.883900, 30.650591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038963, 37.089375, 30.944426>,  <34.145351, 37.212662, 31.120726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.038963, 37.089375, 30.944426>,  <33.861649, 36.883900, 30.650591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.038963, 37.089375, 30.944426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113600, 0.780703, -0.614491,
		-0.889151, 0.355847, 0.287722,
		0.443290, 0.513689, 0.734586,
		34.171951, 37.243481, 31.164801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549198, 37.571899, 30.585867>,  <33.861649, 36.883900, 30.650591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549198, 37.571899, 30.585867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887241, 37.605900, 30.796988>,  <34.090065, 37.626301, 30.923660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887241, 37.605900, 30.796988>,  <33.549198, 37.571899, 30.585867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887241, 37.605900, 30.796988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146548, 0.912625, -0.381628,
		-0.514124, 0.399863, 0.758805,
		0.845104, 0.085003, 0.527801,
		34.140774, 37.631401, 30.955328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559940, 38.224487, 30.780176>,  <33.549198, 37.571899, 30.585867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559940, 38.224487, 30.780176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944572, 38.119045, 30.810848>,  <34.175350, 38.055779, 30.829252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.944572, 38.119045, 30.810848>,  <33.559940, 38.224487, 30.780176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944572, 38.119045, 30.810848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266479, 0.829057, -0.491583,
		0.066010, 0.493129, 0.867448,
		0.961578, -0.263606, 0.076682,
		34.233047, 38.039963, 30.833853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859486, 38.801929, 31.163273>,  <33.559940, 38.224487, 30.780176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859486, 38.801929, 31.163273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192474, 38.621307, 31.034849>,  <34.392269, 38.512932, 30.957794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.192474, 38.621307, 31.034849>,  <33.859486, 38.801929, 31.163273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192474, 38.621307, 31.034849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325673, 0.867592, -0.375793,
		0.448241, 0.208278, 0.869310,
		0.832476, -0.451557, -0.321060,
		34.442219, 38.485840, 30.938532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431164, 39.240040, 31.214157>,  <33.859486, 38.801929, 31.163273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431164, 39.240040, 31.214157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555786, 38.993168, 30.925150>,  <34.630558, 38.845047, 30.751745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555786, 38.993168, 30.925150>,  <34.431164, 39.240040, 31.214157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555786, 38.993168, 30.925150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540459, 0.740487, -0.399479,
		0.781563, -0.266031, 0.564258,
		0.311552, -0.617176, -0.722516,
		34.649250, 38.808014, 30.708395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.183590, 39.408600, 31.129921>,  <34.431164, 39.240040, 31.214157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.183590, 39.408600, 31.129921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031223, 39.222233, 30.810467>,  <34.939804, 39.110413, 30.618793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031223, 39.222233, 30.810467>,  <35.183590, 39.408600, 31.129921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031223, 39.222233, 30.810467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354923, 0.723901, -0.591605,
		0.853775, -0.508807, -0.110381,
		-0.380918, -0.465921, -0.798636,
		34.916946, 39.082458, 30.570875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631786, 39.499615, 30.584961>,  <35.183590, 39.408600, 31.129921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631786, 39.499615, 30.584961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311066, 39.420799, 30.359291>,  <35.118633, 39.373508, 30.223890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.311066, 39.420799, 30.359291>,  <35.631786, 39.499615, 30.584961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.311066, 39.420799, 30.359291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233865, 0.765319, -0.599661,
		0.549930, -0.612749, -0.567552,
		-0.801801, -0.197040, -0.564173,
		35.070526, 39.361687, 30.190039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.781116, 39.478081, 29.785021>,  <35.631786, 39.499615, 30.584961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.781116, 39.478081, 29.785021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387184, 39.542133, 29.811731>,  <35.150826, 39.580566, 29.827757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387184, 39.542133, 29.811731>,  <35.781116, 39.478081, 29.785021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387184, 39.542133, 29.811731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070619, 0.721536, -0.688766,
		-0.158474, -0.673604, -0.721902,
		-0.984834, 0.160132, 0.066775,
		35.091732, 39.590172, 29.831764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473808, 39.546421, 29.114088>,  <35.781116, 39.478081, 29.785021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473808, 39.546421, 29.114088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212891, 39.731766, 29.354025>,  <35.056339, 39.842972, 29.497988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.212891, 39.731766, 29.354025>,  <35.473808, 39.546421, 29.114088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212891, 39.731766, 29.354025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135480, 0.707365, -0.693744,
		-0.745759, -0.533792, -0.398635,
		-0.652295, 0.463358, 0.599842,
		35.017200, 39.870773, 29.533978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931316, 39.691803, 28.718439>,  <35.473808, 39.546421, 29.114088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931316, 39.691803, 28.718439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884830, 39.969166, 29.002884>,  <34.856941, 40.135586, 29.173550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884830, 39.969166, 29.002884>,  <34.931316, 39.691803, 28.718439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884830, 39.969166, 29.002884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212216, 0.682093, -0.699795,
		-0.970288, -0.232233, 0.067886,
		-0.116211, 0.693410, 0.711110,
		34.849968, 40.177189, 29.216217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354935, 40.000130, 28.483126>,  <34.931316, 39.691803, 28.718439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354935, 40.000130, 28.483126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543949, 40.237682, 28.743591>,  <34.657356, 40.380215, 28.899870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543949, 40.237682, 28.743591>,  <34.354935, 40.000130, 28.483126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543949, 40.237682, 28.743591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003610, 0.737546, -0.675287,
		-0.881303, 0.321449, 0.346374,
		0.472537, 0.593882, 0.651163,
		34.685711, 40.415848, 28.938940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936565, 40.569843, 28.569487>,  <34.354935, 40.000130, 28.483126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936565, 40.569843, 28.569487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315624, 40.651390, 28.667799>,  <34.543060, 40.700317, 28.726788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.315624, 40.651390, 28.667799>,  <33.936565, 40.569843, 28.569487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.315624, 40.651390, 28.667799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027701, 0.714297, -0.699295,
		-0.318126, 0.669490, 0.671251,
		0.947644, 0.203870, 0.245782,
		34.599918, 40.712551, 28.741533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951435, 41.322170, 28.632242>,  <33.936565, 40.569843, 28.569487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951435, 41.322170, 28.632242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329227, 41.214947, 28.556234>,  <34.555901, 41.150612, 28.510630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329227, 41.214947, 28.556234>,  <33.951435, 41.322170, 28.632242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329227, 41.214947, 28.556234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116054, 0.813183, -0.570320,
		0.307400, 0.516602, 0.799142,
		0.944477, -0.268060, -0.190019,
		34.612572, 41.134529, 28.499229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243809, 41.970108, 28.429106>,  <33.951435, 41.322170, 28.632242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243809, 41.970108, 28.429106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514408, 41.693081, 28.328936>,  <34.676765, 41.526867, 28.268833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514408, 41.693081, 28.328936>,  <34.243809, 41.970108, 28.429106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514408, 41.693081, 28.328936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412699, 0.638144, -0.649963,
		0.609948, 0.336346, 0.717520,
		0.676494, -0.692563, -0.250425,
		34.717358, 41.485313, 28.253809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771896, 42.364838, 28.402033>,  <34.243809, 41.970108, 28.429106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771896, 42.364838, 28.402033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851921, 42.028866, 28.200245>,  <34.899937, 41.827282, 28.079172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851921, 42.028866, 28.200245>,  <34.771896, 42.364838, 28.402033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851921, 42.028866, 28.200245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296905, 0.542643, -0.785739,
		0.933714, 0.007418, 0.357943,
		0.200064, -0.839931, -0.504471,
		34.911942, 41.776886, 28.048904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494835, 42.338951, 28.188265>,  <34.771896, 42.364838, 28.402033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494835, 42.338951, 28.188265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283039, 42.131474, 27.919760>,  <35.155960, 42.006989, 27.758657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283039, 42.131474, 27.919760>,  <35.494835, 42.338951, 28.188265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283039, 42.131474, 27.919760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209542, 0.686799, -0.695988,
		0.822028, -0.509178, -0.254966,
		-0.529492, -0.518695, -0.671262,
		35.124191, 41.975864, 27.718382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924816, 42.269638, 27.609129>,  <35.494835, 42.338951, 28.188265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924816, 42.269638, 27.609129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574699, 42.145813, 27.460516>,  <35.364628, 42.071518, 27.371347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574699, 42.145813, 27.460516>,  <35.924816, 42.269638, 27.609129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574699, 42.145813, 27.460516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163733, 0.533195, -0.829997,
		0.455035, -0.787321, -0.416016,
		-0.875291, -0.309562, -0.371533,
		35.312111, 42.052944, 27.349056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011581, 42.089039, 26.956799>,  <35.924816, 42.269638, 27.609129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011581, 42.089039, 26.956799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617519, 42.157639, 26.959948>,  <35.381084, 42.198799, 26.961838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.617519, 42.157639, 26.959948>,  <36.011581, 42.089039, 26.956799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617519, 42.157639, 26.959948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091381, 0.562646, -0.821632,
		-0.145339, -0.808714, -0.569964,
		-0.985153, 0.171500, 0.007873,
		35.321972, 42.209087, 26.962309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891872, 41.976974, 26.371750>,  <36.011581, 42.089039, 26.956799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891872, 41.976974, 26.371750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569748, 42.189125, 26.477720>,  <35.376472, 42.316414, 26.541302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569748, 42.189125, 26.477720>,  <35.891872, 41.976974, 26.371750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569748, 42.189125, 26.477720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035340, 0.489011, -0.871562,
		-0.591804, -0.692512, -0.412547,
		-0.805307, 0.530373, 0.264925,
		35.328156, 42.348236, 26.557198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353642, 41.854469, 25.847353>,  <35.891872, 41.976974, 26.371750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353642, 41.854469, 25.847353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283272, 42.195114, 26.044859>,  <35.241051, 42.399502, 26.163363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.283272, 42.195114, 26.044859>,  <35.353642, 41.854469, 25.847353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283272, 42.195114, 26.044859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168879, 0.520260, -0.837144,
		-0.969809, -0.063889, -0.235347,
		-0.175926, 0.851615, 0.493764,
		35.230495, 42.450600, 26.192987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876015, 42.156822, 25.435280>,  <35.353642, 41.854469, 25.847353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876015, 42.156822, 25.435280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009258, 42.462158, 25.656673>,  <35.089203, 42.645359, 25.789509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.009258, 42.462158, 25.656673>,  <34.876015, 42.156822, 25.435280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009258, 42.462158, 25.656673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091871, 0.557940, -0.824781,
		-0.938402, 0.325592, 0.115727,
		0.333111, 0.763343, 0.553484,
		35.109192, 42.691162, 25.822718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717606, 42.806252, 25.000553>,  <34.876015, 42.156822, 25.435280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717606, 42.806252, 25.000553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968769, 42.946659, 25.278406>,  <35.119469, 43.030903, 25.445118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.968769, 42.946659, 25.278406>,  <34.717606, 42.806252, 25.000553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968769, 42.946659, 25.278406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260431, 0.746300, -0.612545,
		-0.733419, 0.565528, 0.377194,
		0.627911, 0.351019, 0.694631,
		35.157143, 43.051964, 25.486795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610973, 43.501938, 25.033871>,  <34.717606, 42.806252, 25.000553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610973, 43.501938, 25.033871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978725, 43.444687, 25.180435>,  <35.199375, 43.410336, 25.268373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.978725, 43.444687, 25.180435>,  <34.610973, 43.501938, 25.033871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978725, 43.444687, 25.180435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356854, 0.695395, -0.623764,
		-0.165525, 0.704231, 0.690406,
		0.919379, -0.143126, 0.366412,
		35.254539, 43.401749, 25.290359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.815636, 44.162037, 25.155533>,  <34.610973, 43.501938, 25.033871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.815636, 44.162037, 25.155533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144073, 43.935894, 25.124111>,  <35.341137, 43.800209, 25.105259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144073, 43.935894, 25.124111>,  <34.815636, 44.162037, 25.155533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144073, 43.935894, 25.124111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403529, 0.672296, -0.620630,
		0.403691, 0.477898, 0.780158,
		0.821096, -0.565359, -0.078554,
		35.390404, 43.766285, 25.100546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263065, 44.644024, 25.201286>,  <34.815636, 44.162037, 25.155533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263065, 44.644024, 25.201286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473305, 44.341385, 25.045692>,  <35.599449, 44.159801, 24.952337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473305, 44.341385, 25.045692>,  <35.263065, 44.644024, 25.201286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473305, 44.341385, 25.045692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323930, 0.600775, -0.730848,
		0.786648, 0.258129, 0.560851,
		0.525598, -0.756597, -0.388983,
		35.630985, 44.114407, 24.928997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.841267, 44.960800, 24.930471>,  <35.263065, 44.644024, 25.201286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.841267, 44.960800, 24.930471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823071, 44.607971, 24.742905>,  <35.812153, 44.396275, 24.630365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823071, 44.607971, 24.742905>,  <35.841267, 44.960800, 24.930471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823071, 44.607971, 24.742905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217527, 0.449393, -0.866446,
		0.974994, -0.141417, 0.171431,
		-0.045490, -0.882070, -0.468917,
		35.809425, 44.343349, 24.602230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458321, 44.865532, 24.573566>,  <35.841267, 44.960800, 24.930471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458321, 44.865532, 24.573566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194820, 44.635906, 24.379044>,  <36.036720, 44.498131, 24.262329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194820, 44.635906, 24.379044>,  <36.458321, 44.865532, 24.573566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194820, 44.635906, 24.379044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176510, 0.510411, -0.841620,
		0.731365, -0.640254, -0.234904,
		-0.658748, -0.574069, -0.486308,
		35.997196, 44.463684, 24.233150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796909, 44.751797, 23.909519>,  <36.458321, 44.865532, 24.573566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796909, 44.751797, 23.909519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408482, 44.671032, 23.858519>,  <36.175426, 44.622574, 23.827919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408482, 44.671032, 23.858519>,  <36.796909, 44.751797, 23.909519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408482, 44.671032, 23.858519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044634, 0.371047, -0.927541,
		0.234586, -0.906398, -0.351301,
		-0.971070, -0.201909, -0.127499,
		36.117161, 44.610458, 23.820269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119019, 44.209175, 23.418703>,  <36.796909, 44.751797, 23.909519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119019, 44.209175, 23.418703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402161, 44.118145, 23.151226>,  <37.572044, 44.063526, 22.990740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.402161, 44.118145, 23.151226>,  <37.119019, 44.209175, 23.418703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402161, 44.118145, 23.151226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236043, -0.816046, 0.527592,
		-0.665753, -0.531298, -0.523922,
		0.707853, -0.227577, -0.668694,
		37.614517, 44.049873, 22.950617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093330, 43.562107, 23.438478>,  <37.119019, 44.209175, 23.418703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093330, 43.562107, 23.438478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452946, 43.586742, 23.265072>,  <37.668716, 43.601524, 23.161028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452946, 43.586742, 23.265072>,  <37.093330, 43.562107, 23.438478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452946, 43.586742, 23.265072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292472, -0.821271, 0.489872,
		-0.325866, -0.567205, -0.756366,
		0.899039, 0.061584, -0.433516,
		37.722656, 43.605217, 23.135017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276539, 42.839264, 23.254238>,  <37.093330, 43.562107, 23.438478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276539, 42.839264, 23.254238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613327, 43.054333, 23.236353>,  <37.815399, 43.183376, 23.225622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.613327, 43.054333, 23.236353>,  <37.276539, 42.839264, 23.254238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613327, 43.054333, 23.236353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509391, -0.764887, 0.394295,
		0.177802, -0.354759, -0.917895,
		0.841966, 0.537674, -0.044713,
		37.865917, 43.215633, 23.222939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815231, 42.376781, 22.954462>,  <37.276539, 42.839264, 23.254238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815231, 42.376781, 22.954462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020283, 42.670952, 23.131716>,  <38.143314, 42.847454, 23.238068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020283, 42.670952, 23.131716>,  <37.815231, 42.376781, 22.954462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020283, 42.670952, 23.131716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474785, -0.672816, 0.567361,
		0.715397, -0.080452, -0.694071,
		0.512628, 0.735422, 0.443133,
		38.174072, 42.891579, 23.264656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653984, 42.227280, 22.914810>,  <37.815231, 42.376781, 22.954462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653984, 42.227280, 22.914810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546215, 42.467373, 23.216043>,  <38.481552, 42.611427, 23.396784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.546215, 42.467373, 23.216043>,  <38.653984, 42.227280, 22.914810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.546215, 42.467373, 23.216043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395686, -0.643947, 0.654802,
		0.877978, 0.474403, -0.064009,
		-0.269421, 0.600229, 0.753085,
		38.465389, 42.647442, 23.441969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206005, 42.206383, 23.323071>,  <38.653984, 42.227280, 22.914810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206005, 42.206383, 23.323071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915115, 42.330650, 23.567900>,  <38.740582, 42.405212, 23.714798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.915115, 42.330650, 23.567900>,  <39.206005, 42.206383, 23.323071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915115, 42.330650, 23.567900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331212, -0.622207, 0.709336,
		0.601203, 0.718571, 0.349586,
		-0.727223, 0.310668, 0.612072,
		38.696949, 42.423851, 23.751522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.536373, 42.222996, 23.990854>,  <39.206005, 42.206383, 23.323071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.536373, 42.222996, 23.990854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154690, 42.255981, 24.105881>,  <38.925682, 42.275772, 24.174896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.154690, 42.255981, 24.105881>,  <39.536373, 42.222996, 23.990854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.154690, 42.255981, 24.105881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247614, -0.321720, 0.913884,
		0.167877, 0.943237, 0.286567,
		-0.954204, 0.082462, 0.287568,
		38.868427, 42.280720, 24.192152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490589, 42.453896, 24.614100>,  <39.536373, 42.222996, 23.990854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490589, 42.453896, 24.614100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121140, 42.303368, 24.584972>,  <38.899471, 42.213051, 24.567497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121140, 42.303368, 24.584972>,  <39.490589, 42.453896, 24.614100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121140, 42.303368, 24.584972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079922, -0.374874, 0.923624,
		-0.374874, 0.847262, 0.376319,
		-0.923624, -0.376319, -0.072816,
		38.844051, 42.190472, 24.563128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047409, 42.716053, 25.276356>,  <39.490589, 42.453896, 24.614100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047409, 42.716053, 25.276356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900703, 42.386166, 25.104158>,  <38.812679, 42.188232, 25.000839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.900703, 42.386166, 25.104158>,  <39.047409, 42.716053, 25.276356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900703, 42.386166, 25.104158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244033, -0.361252, 0.899970,
		-0.897736, 0.435134, -0.068763,
		-0.366767, -0.824716, -0.430496,
		38.790672, 42.138752, 24.975010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552597, 42.430580, 25.742037>,  <39.047409, 42.716053, 25.276356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552597, 42.430580, 25.742037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572662, 42.107563, 25.506969>,  <38.584702, 41.913754, 25.365929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.572662, 42.107563, 25.506969>,  <38.552597, 42.430580, 25.742037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572662, 42.107563, 25.506969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307173, -0.572363, 0.760293,
		-0.950331, 0.142380, -0.276765,
		0.050159, -0.807545, -0.587670,
		38.587711, 41.865299, 25.330669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.917866, 42.148144, 25.810686>,  <38.552597, 42.430580, 25.742037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.917866, 42.148144, 25.810686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182056, 41.869164, 25.699451>,  <38.340572, 41.701775, 25.632711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.182056, 41.869164, 25.699451>,  <37.917866, 42.148144, 25.810686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182056, 41.869164, 25.699451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395735, -0.638096, 0.660475,
		-0.638096, -0.326180, -0.697453,
		-0.660475, 0.697453, 0.278085,
		38.380199, 41.659927, 25.616026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526020, 41.510506, 25.834673>,  <37.917866, 42.148144, 25.810686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526020, 41.510506, 25.834673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917233, 41.427124, 25.834917>,  <38.151958, 41.377094, 25.835064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917233, 41.427124, 25.834917>,  <37.526020, 41.510506, 25.834673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917233, 41.427124, 25.834917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127170, -0.594351, 0.794087,
		-0.165166, -0.776721, -0.607804,
		0.978033, -0.208451, 0.000609,
		38.210644, 41.364590, 25.835100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614307, 40.853046, 25.951372>,  <37.526020, 41.510506, 25.834673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614307, 40.853046, 25.951372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004803, 40.919296, 26.007275>,  <38.239101, 40.959045, 26.040815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.004803, 40.919296, 26.007275>,  <37.614307, 40.853046, 25.951372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004803, 40.919296, 26.007275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017311, -0.702448, 0.711525,
		0.216014, -0.692197, -0.688622,
		0.976237, 0.165620, 0.139756,
		38.297672, 40.968983, 26.049202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.989838, 40.223896, 25.944933>,  <37.614307, 40.853046, 25.951372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.989838, 40.223896, 25.944933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203011, 40.479786, 26.166464>,  <38.330914, 40.633320, 26.299383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.203011, 40.479786, 26.166464>,  <37.989838, 40.223896, 25.944933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203011, 40.479786, 26.166464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200125, -0.540657, 0.817092,
		0.822148, -0.546294, -0.160110,
		0.532937, 0.639729, 0.553827,
		38.362892, 40.671703, 26.332611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591038, 39.866760, 26.318846>,  <37.989838, 40.223896, 25.944933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591038, 39.866760, 26.318846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523502, 40.200497, 26.528749>,  <38.482979, 40.400738, 26.654692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.523502, 40.200497, 26.528749>,  <38.591038, 39.866760, 26.318846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523502, 40.200497, 26.528749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171479, -0.549149, 0.817942,
		0.970612, 0.048117, 0.235790,
		-0.168841, 0.834338, 0.524760,
		38.472851, 40.450798, 26.686178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925728, 39.755405, 26.947653>,  <38.591038, 39.866760, 26.318846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925728, 39.755405, 26.947653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689644, 40.067230, 27.031494>,  <38.547993, 40.254326, 27.081799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689644, 40.067230, 27.031494>,  <38.925728, 39.755405, 26.947653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689644, 40.067230, 27.031494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154589, -0.363994, 0.918483,
		0.792313, 0.509692, 0.335343,
		-0.590206, 0.779566, 0.209604,
		38.512581, 40.301102, 27.094376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.908638, 39.706860, 27.668343>,  <38.925728, 39.755405, 26.947653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.908638, 39.706860, 27.668343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638969, 39.991230, 27.588268>,  <38.477169, 40.161854, 27.540224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.638969, 39.991230, 27.588268>,  <38.908638, 39.706860, 27.668343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.638969, 39.991230, 27.588268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435510, -0.163743, 0.885167,
		0.596513, 0.683934, 0.420007,
		-0.674169, 0.710930, -0.200186,
		38.436718, 40.204510, 27.528214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922775, 40.120197, 28.295174>,  <38.908638, 39.706860, 27.668343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922775, 40.120197, 28.295174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575512, 40.143074, 28.097980>,  <38.367153, 40.156799, 27.979664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.575512, 40.143074, 28.097980>,  <38.922775, 40.120197, 28.295174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575512, 40.143074, 28.097980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491936, -0.230488, 0.839568,
		-0.065608, 0.971393, 0.228236,
		-0.868156, 0.057195, -0.492984,
		38.315063, 40.160233, 27.950085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540798, 40.495502, 28.737617>,  <38.922775, 40.120197, 28.295174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540798, 40.495502, 28.737617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309231, 40.271797, 28.500275>,  <38.170288, 40.137573, 28.357868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.309231, 40.271797, 28.500275>,  <38.540798, 40.495502, 28.737617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309231, 40.271797, 28.500275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342130, -0.493933, 0.799361,
		-0.740133, 0.665772, 0.094607,
		-0.578922, -0.559265, -0.593356,
		38.135555, 40.104019, 28.322268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902607, 40.486664, 29.072205>,  <38.540798, 40.495502, 28.737617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902607, 40.486664, 29.072205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891365, 40.175148, 28.821543>,  <37.884621, 39.988239, 28.671144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.891365, 40.175148, 28.821543>,  <37.902607, 40.486664, 29.072205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.891365, 40.175148, 28.821543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457487, -0.547374, 0.700776,
		-0.888772, 0.306379, -0.340904,
		-0.028101, -0.778790, -0.626656,
		37.882935, 39.941509, 28.633547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344494, 40.209328, 29.299280>,  <37.902607, 40.486664, 29.072205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.344494, 40.209328, 29.299280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491745, 39.912811, 29.074791>,  <37.580097, 39.734901, 28.940098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.491745, 39.912811, 29.074791>,  <37.344494, 40.209328, 29.299280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.491745, 39.912811, 29.074791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335548, -0.668858, 0.663352,
		-0.867114, -0.055882, -0.494965,
		0.368131, -0.741287, -0.561225,
		37.602184, 39.690426, 28.906424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760677, 39.699932, 29.101200>,  <37.344494, 40.209328, 29.299280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760677, 39.699932, 29.101200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116386, 39.517376, 29.113201>,  <37.329811, 39.407845, 29.120401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.116386, 39.517376, 29.113201>,  <36.760677, 39.699932, 29.101200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116386, 39.517376, 29.113201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385233, -0.712042, 0.587020,
		-0.246546, -0.533580, -0.809017,
		0.889276, -0.456387, 0.030001,
		37.383167, 39.380459, 29.122202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554512, 39.018787, 29.025007>,  <36.760677, 39.699932, 29.101200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554512, 39.018787, 29.025007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922901, 38.993073, 29.178726>,  <37.143932, 38.977646, 29.270958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.922901, 38.993073, 29.178726>,  <36.554512, 39.018787, 29.025007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922901, 38.993073, 29.178726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300274, -0.745620, 0.594883,
		0.248298, -0.663263, -0.705996,
		0.920969, -0.064284, 0.384297,
		37.199192, 38.973785, 29.294016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712116, 38.307823, 28.964657>,  <36.554512, 39.018787, 29.025007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712116, 38.307823, 28.964657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993320, 38.459595, 29.205261>,  <37.162045, 38.550659, 29.349623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.993320, 38.459595, 29.205261>,  <36.712116, 38.307823, 28.964657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993320, 38.459595, 29.205261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081112, -0.883047, 0.462222,
		0.706540, -0.276157, -0.651566,
		0.703009, 0.379428, 0.601509,
		37.204224, 38.573421, 29.385714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282658, 37.761940, 29.001598>,  <36.712116, 38.307823, 28.964657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282658, 37.761940, 29.001598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296947, 37.996208, 29.325504>,  <37.305523, 38.136768, 29.519848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296947, 37.996208, 29.325504>,  <37.282658, 37.761940, 29.001598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296947, 37.996208, 29.325504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078899, -0.806099, 0.586498,
		0.996242, -0.084843, 0.017409,
		0.035727, 0.585667, 0.809764,
		37.307667, 38.171909, 29.568434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694416, 37.399254, 29.456589>,  <37.282658, 37.761940, 29.001598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694416, 37.399254, 29.456589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510777, 37.668522, 29.688477>,  <37.400593, 37.830082, 29.827610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.510777, 37.668522, 29.688477>,  <37.694416, 37.399254, 29.456589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510777, 37.668522, 29.688477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087761, -0.683730, 0.724439,
		0.884040, 0.281712, 0.372977,
		-0.459099, 0.673166, 0.579721,
		37.373047, 37.870472, 29.862392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.924133, 37.168198, 30.090445>,  <37.694416, 37.399254, 29.456589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.924133, 37.168198, 30.090445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600407, 37.389050, 30.170609>,  <37.406170, 37.521561, 30.218706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.600407, 37.389050, 30.170609>,  <37.924133, 37.168198, 30.090445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600407, 37.389050, 30.170609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121243, -0.490878, 0.862751,
		0.574724, 0.673940, 0.464217,
		-0.809316, 0.552126, 0.200409,
		37.357613, 37.554688, 30.230732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981033, 37.443302, 30.745874>,  <37.924133, 37.168198, 30.090445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981033, 37.443302, 30.745874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584412, 37.429443, 30.695868>,  <37.346439, 37.421127, 30.665863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.584412, 37.429443, 30.695868>,  <37.981033, 37.443302, 30.745874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.584412, 37.429443, 30.695868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096353, -0.448617, 0.888515,
		-0.086866, 0.893052, 0.441488,
		-0.991549, -0.034643, -0.125018,
		37.286945, 37.419052, 30.658361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680389, 37.708294, 31.365143>,  <37.981033, 37.443302, 30.745874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680389, 37.708294, 31.365143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395294, 37.494152, 31.183861>,  <37.224236, 37.365665, 31.075092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395294, 37.494152, 31.183861>,  <37.680389, 37.708294, 31.365143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395294, 37.494152, 31.183861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150660, -0.514194, 0.844337,
		-0.685055, 0.670075, 0.285832,
		-0.712742, -0.535354, -0.453205,
		37.181473, 37.333546, 31.047899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189949, 37.551033, 31.894594>,  <37.680389, 37.708294, 31.365143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189949, 37.551033, 31.894594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053734, 37.290806, 31.623068>,  <36.972004, 37.134670, 31.460152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053734, 37.290806, 31.623068>,  <37.189949, 37.551033, 31.894594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053734, 37.290806, 31.623068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218881, -0.647278, 0.730152,
		-0.914398, 0.397225, 0.078026,
		-0.340539, -0.650572, -0.678815,
		36.951572, 37.095634, 31.419424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441689, 37.447571, 31.972256>,  <37.189949, 37.551033, 31.894594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441689, 37.447571, 31.972256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600132, 37.127838, 31.791517>,  <36.695198, 36.935997, 31.683075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600132, 37.127838, 31.791517>,  <36.441689, 37.447571, 31.972256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600132, 37.127838, 31.791517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263908, -0.570443, 0.777784,
		-0.879462, -0.188838, -0.436906,
		0.396106, -0.799334, -0.451847,
		36.718964, 36.888039, 31.655964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003925, 36.871567, 32.143559>,  <36.441689, 37.447571, 31.972256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003925, 36.871567, 32.143559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330425, 36.672108, 32.026878>,  <36.526325, 36.552433, 31.956871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.330425, 36.672108, 32.026878>,  <36.003925, 36.871567, 32.143559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330425, 36.672108, 32.026878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001113, -0.506293, 0.862361,
		-0.577699, -0.703576, -0.413816,
		0.816249, -0.498645, -0.291702,
		36.575302, 36.522514, 31.939367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878788, 36.178246, 32.166546>,  <36.003925, 36.871567, 32.143559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878788, 36.178246, 32.166546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276016, 36.210999, 32.200272>,  <36.514355, 36.230648, 32.220509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.276016, 36.210999, 32.200272>,  <35.878788, 36.178246, 32.166546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276016, 36.210999, 32.200272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004591, -0.689822, 0.723964,
		0.117441, -0.719334, -0.684665,
		0.993069, 0.081880, 0.084316,
		36.573936, 36.235561, 32.225567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.095249, 35.446320, 32.308456>,  <35.878788, 36.178246, 32.166546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.095249, 35.446320, 32.308456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411545, 35.661694, 32.424950>,  <36.601322, 35.790920, 32.494846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411545, 35.661694, 32.424950>,  <36.095249, 35.446320, 32.308456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411545, 35.661694, 32.424950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282733, -0.743204, 0.606391,
		0.542951, -0.397155, -0.739913,
		0.790737, 0.538439, 0.291235,
		36.648766, 35.823227, 32.512321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.587540, 34.934727, 32.483299>,  <36.095249, 35.446320, 32.308456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.587540, 34.934727, 32.483299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726227, 35.259247, 32.671589>,  <36.809441, 35.453960, 32.784561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.726227, 35.259247, 32.671589>,  <36.587540, 34.934727, 32.483299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.726227, 35.259247, 32.671589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154196, -0.544324, 0.824582,
		0.925208, -0.213314, -0.313827,
		0.346718, 0.811300, 0.470721,
		36.830242, 35.502636, 32.812805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153454, 34.702679, 32.913036>,  <36.587540, 34.934727, 32.483299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153454, 34.702679, 32.913036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029530, 35.054314, 33.057930>,  <36.955173, 35.265297, 33.144867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029530, 35.054314, 33.057930>,  <37.153454, 34.702679, 32.913036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029530, 35.054314, 33.057930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188605, -0.316586, 0.929624,
		0.931903, 0.356329, -0.067718,
		-0.309814, 0.879092, 0.362233,
		36.936584, 35.318043, 33.166599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684933, 34.922108, 33.374882>,  <37.153454, 34.702679, 32.913036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684933, 34.922108, 33.374882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379406, 35.152969, 33.490452>,  <37.196091, 35.291485, 33.559795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379406, 35.152969, 33.490452>,  <37.684933, 34.922108, 33.374882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379406, 35.152969, 33.490452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293198, -0.088527, 0.951944,
		0.574996, 0.811823, -0.101602,
		-0.763816, 0.577153, 0.288928,
		37.150261, 35.326115, 33.577129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890141, 35.357471, 34.048225>,  <37.684933, 34.922108, 33.374882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890141, 35.357471, 34.048225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490440, 35.342903, 34.053581>,  <37.250622, 35.334164, 34.056793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490440, 35.342903, 34.053581>,  <37.890141, 35.357471, 34.048225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490440, 35.342903, 34.053581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022936, -0.276167, 0.960836,
		-0.031298, 0.960419, 0.276795,
		-0.999247, -0.036421, 0.013385,
		37.190666, 35.331978, 34.057598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577179, 35.695133, 34.669079>,  <37.890141, 35.357471, 34.048225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577179, 35.695133, 34.669079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266338, 35.470661, 34.555107>,  <37.079834, 35.335979, 34.486725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266338, 35.470661, 34.555107>,  <37.577179, 35.695133, 34.669079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266338, 35.470661, 34.555107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111437, -0.322877, 0.939858,
		-0.619427, 0.762120, 0.188373,
		-0.777105, -0.561181, -0.284927,
		37.033207, 35.302307, 34.469627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241592, 35.713383, 35.271923>,  <37.577179, 35.695133, 34.669079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241592, 35.713383, 35.271923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095493, 35.411430, 35.054024>,  <37.007835, 35.230259, 34.923286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095493, 35.411430, 35.054024>,  <37.241592, 35.713383, 35.271923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095493, 35.411430, 35.054024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069914, -0.561277, 0.824670,
		-0.928281, 0.339295, 0.152229,
		-0.365249, -0.754882, -0.544744,
		36.985920, 35.184967, 34.890602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698460, 35.496277, 35.588501>,  <37.241592, 35.713383, 35.271923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698460, 35.496277, 35.588501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776825, 35.173191, 35.366074>,  <36.823845, 34.979340, 35.232616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.776825, 35.173191, 35.366074>,  <36.698460, 35.496277, 35.588501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776825, 35.173191, 35.366074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121943, -0.582726, 0.803468,
		-0.973010, -0.089598, -0.212657,
		0.195910, -0.807715, -0.556072,
		36.835598, 34.930878, 35.199253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182205, 34.955513, 35.762424>,  <36.698460, 35.496277, 35.588501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182205, 34.955513, 35.762424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500198, 34.755322, 35.625294>,  <36.690994, 34.635208, 35.543015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.500198, 34.755322, 35.625294>,  <36.182205, 34.955513, 35.762424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500198, 34.755322, 35.625294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027694, -0.534593, 0.844656,
		-0.606007, -0.680976, -0.411129,
		0.794977, -0.500482, -0.342826,
		36.738693, 34.605179, 35.522446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995251, 34.166496, 35.983791>,  <36.182205, 34.955513, 35.762424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995251, 34.166496, 35.983791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369087, 34.151550, 35.842289>,  <36.593388, 34.142582, 35.757385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.369087, 34.151550, 35.842289>,  <35.995251, 34.166496, 35.983791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369087, 34.151550, 35.842289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134851, -0.883028, 0.449529,
		-0.329178, -0.467830, -0.820230,
		0.934589, -0.037366, -0.353760,
		36.649464, 34.140339, 35.736160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042938, 33.537731, 35.664005>,  <35.995251, 34.166496, 35.983791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042938, 33.537731, 35.664005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409130, 33.672871, 35.751415>,  <36.628845, 33.753952, 35.803860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409130, 33.672871, 35.751415>,  <36.042938, 33.537731, 35.664005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409130, 33.672871, 35.751415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176385, -0.825115, 0.536724,
		0.361635, -0.452818, -0.814970,
		0.915482, 0.337847, 0.218520,
		36.683773, 33.774223, 35.816971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473991, 32.925011, 35.622353>,  <36.042938, 33.537731, 35.664005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473991, 32.925011, 35.622353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669697, 33.209408, 35.824387>,  <36.787121, 33.380047, 35.945606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.669697, 33.209408, 35.824387>,  <36.473991, 32.925011, 35.622353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.669697, 33.209408, 35.824387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267176, -0.673479, 0.689233,
		0.830205, -0.202268, -0.519468,
		0.489261, 0.710994, 0.505085,
		36.816475, 33.422707, 35.975910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.069450, 32.623436, 35.994961>,  <36.473991, 32.925011, 35.622353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.069450, 32.623436, 35.994961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094936, 32.963741, 36.203629>,  <37.110226, 33.167927, 36.328831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.094936, 32.963741, 36.203629>,  <37.069450, 32.623436, 35.994961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094936, 32.963741, 36.203629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106044, -0.525544, 0.844132,
		0.992318, 0.001540, -0.123702,
		0.063711, 0.850765, 0.521670,
		37.114048, 33.218971, 36.360130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677769, 32.582607, 36.405151>,  <37.069450, 32.623436, 35.994961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677769, 32.582607, 36.405151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450954, 32.856941, 36.587624>,  <37.314865, 33.021542, 36.697109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450954, 32.856941, 36.587624>,  <37.677769, 32.582607, 36.405151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450954, 32.856941, 36.587624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081300, -0.597721, 0.797572,
		0.819674, 0.415161, 0.394686,
		-0.567032, 0.685837, 0.456183,
		37.280846, 33.062691, 36.724480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018486, 32.688454, 37.086636>,  <37.677769, 32.582607, 36.405151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018486, 32.688454, 37.086636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628754, 32.778404, 37.082428>,  <37.394913, 32.832375, 37.079903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628754, 32.778404, 37.082428>,  <38.018486, 32.688454, 37.086636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628754, 32.778404, 37.082428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127563, -0.513006, 0.848854,
		0.185490, 0.828406, 0.528523,
		-0.974331, 0.224874, -0.010517,
		37.336452, 32.845867, 37.079273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907417, 33.133602, 37.622616>,  <38.018486, 32.688454, 37.086636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907417, 33.133602, 37.622616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575851, 32.936287, 37.517117>,  <37.376911, 32.817898, 37.453815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575851, 32.936287, 37.517117>,  <37.907417, 33.133602, 37.622616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575851, 32.936287, 37.517117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117020, -0.308154, 0.944112,
		-0.546994, 0.813455, 0.197710,
		-0.828917, -0.493288, -0.263748,
		37.327175, 32.788300, 37.437992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352474, 33.207382, 38.160217>,  <37.907417, 33.133602, 37.622616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352474, 33.207382, 38.160217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251427, 32.875725, 37.960739>,  <37.190800, 32.676731, 37.841053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251427, 32.875725, 37.960739>,  <37.352474, 33.207382, 38.160217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251427, 32.875725, 37.960739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152506, -0.474854, 0.866750,
		-0.955472, 0.295010, -0.006494,
		-0.252617, -0.829146, -0.498700,
		37.175640, 32.626980, 37.811131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777164, 32.968056, 38.493397>,  <37.352474, 33.207382, 38.160217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777164, 32.968056, 38.493397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943455, 32.642658, 38.330719>,  <37.043228, 32.447418, 38.233112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943455, 32.642658, 38.330719>,  <36.777164, 32.968056, 38.493397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943455, 32.642658, 38.330719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224201, -0.525027, 0.821024,
		-0.881424, -0.250138, -0.400653,
		0.415723, -0.813497, -0.406691,
		37.068172, 32.398609, 38.208714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.463852, 32.459934, 38.909908>,  <36.777164, 32.968056, 38.493397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.463852, 32.459934, 38.909908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685478, 32.226727, 38.672222>,  <36.818455, 32.086800, 38.529610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685478, 32.226727, 38.672222>,  <36.463852, 32.459934, 38.909908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685478, 32.226727, 38.672222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080610, -0.748019, 0.658763,
		-0.828560, -0.317099, -0.461451,
		0.554067, -0.583022, -0.594217,
		36.851700, 32.051819, 38.493958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996506, 31.975687, 38.746040>,  <36.463852, 32.459934, 38.909908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996506, 31.975687, 38.746040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360405, 31.818359, 38.692886>,  <36.578743, 31.723963, 38.660995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360405, 31.818359, 38.692886>,  <35.996506, 31.975687, 38.746040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360405, 31.818359, 38.692886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203634, -0.701681, 0.682772,
		-0.361789, -0.594091, -0.718446,
		0.909748, -0.393319, -0.132883,
		36.633331, 31.700363, 38.653023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851303, 31.316236, 38.674088>,  <35.996506, 31.975687, 38.746040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851303, 31.316236, 38.674088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246609, 31.324970, 38.734558>,  <36.483791, 31.330210, 38.770840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.246609, 31.324970, 38.734558>,  <35.851303, 31.316236, 38.674088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246609, 31.324970, 38.734558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096052, -0.680731, 0.726209,
		0.118766, -0.732208, -0.670646,
		0.988266, 0.021832, 0.151178,
		36.543087, 31.331520, 38.779911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036522, 30.638485, 38.683613>,  <35.851303, 31.316236, 38.674088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036522, 30.638485, 38.683613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334114, 30.838264, 38.861172>,  <36.512669, 30.958132, 38.967709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.334114, 30.838264, 38.861172>,  <36.036522, 30.638485, 38.683613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.334114, 30.838264, 38.861172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002266, -0.662429, 0.749121,
		0.668202, -0.558334, -0.491700,
		0.743976, 0.499450, 0.443902,
		36.557308, 30.988100, 38.994343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580734, 30.185692, 38.717289>,  <36.036522, 30.638485, 38.683613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580734, 30.185692, 38.717289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567093, 30.469658, 38.998672>,  <36.558907, 30.640038, 39.167503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567093, 30.469658, 38.998672>,  <36.580734, 30.185692, 38.717289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567093, 30.469658, 38.998672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245577, -0.688243, 0.682651,
		0.968777, -0.149473, 0.197811,
		-0.034104, 0.709915, 0.703462,
		36.556862, 30.682632, 39.209709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018421, 29.954201, 39.232105>,  <36.580734, 30.185692, 38.717289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018421, 29.954201, 39.232105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733116, 30.184040, 39.392651>,  <36.561932, 30.321943, 39.488979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733116, 30.184040, 39.392651>,  <37.018421, 29.954201, 39.232105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733116, 30.184040, 39.392651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247871, -0.742430, 0.622380,
		0.655604, 0.344434, 0.671974,
		-0.713263, 0.574598, 0.401365,
		36.519138, 30.356419, 39.513062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.028301, 29.788691, 39.957424>,  <37.018421, 29.954201, 39.232105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.028301, 29.788691, 39.957424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663540, 29.938280, 39.889809>,  <36.444683, 30.028034, 39.849239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.663540, 29.938280, 39.889809>,  <37.028301, 29.788691, 39.957424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663540, 29.938280, 39.889809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386767, -0.645348, 0.658739,
		0.137264, 0.666085, 0.733136,
		-0.911905, 0.373974, -0.169037,
		36.389969, 30.050472, 39.839096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745029, 29.962780, 40.689953>,  <37.028301, 29.788691, 39.957424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745029, 29.962780, 40.689953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453876, 29.913019, 40.420223>,  <36.279186, 29.883163, 40.258385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453876, 29.913019, 40.420223>,  <36.745029, 29.962780, 40.689953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453876, 29.913019, 40.420223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412443, -0.706194, 0.575483,
		-0.547792, 0.697004, 0.462719,
		-0.727884, -0.124400, -0.674322,
		36.235512, 29.875700, 40.217926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296871, 29.776892, 41.089970>,  <36.745029, 29.962780, 40.689953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296871, 29.776892, 41.089970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138802, 29.672457, 40.737682>,  <36.043961, 29.609797, 40.526310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138802, 29.672457, 40.737682>,  <36.296871, 29.776892, 41.089970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138802, 29.672457, 40.737682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385555, -0.823081, 0.416995,
		-0.833777, 0.504353, 0.224598,
		-0.395175, -0.261086, -0.880722,
		36.020248, 29.594131, 40.473465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652782, 29.542953, 41.204720>,  <36.296871, 29.776892, 41.089970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652782, 29.542953, 41.204720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762352, 29.363623, 40.864372>,  <35.828094, 29.256023, 40.660164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762352, 29.363623, 40.864372>,  <35.652782, 29.542953, 41.204720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762352, 29.363623, 40.864372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395875, -0.858838, 0.325084,
		-0.876499, 0.247788, -0.412736,
		0.273921, -0.448328, -0.850864,
		35.844528, 29.229124, 40.609112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100254, 29.061853, 40.957027>,  <35.652782, 29.542953, 41.204720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100254, 29.061853, 40.957027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463322, 28.949982, 40.831867>,  <35.681164, 28.882858, 40.756771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463322, 28.949982, 40.831867>,  <35.100254, 29.061853, 40.957027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463322, 28.949982, 40.831867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123997, -0.891014, 0.436713,
		-0.400942, -0.357594, -0.843429,
		0.907673, -0.279679, -0.312905,
		35.735622, 28.866077, 40.737995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049389, 28.350014, 40.994423>,  <35.100254, 29.061853, 40.957027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049389, 28.350014, 40.994423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048828, 28.240826, 40.609615>,  <35.048492, 28.175312, 40.378731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.048828, 28.240826, 40.609615>,  <35.049389, 28.350014, 40.994423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048828, 28.240826, 40.609615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796436, 0.581449, -0.166150,
		0.604720, -0.766422, 0.216587,
		-0.001406, -0.272972, -0.962021,
		35.048405, 28.158934, 40.321011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717056, 27.931532, 40.715599>,  <35.049389, 28.350014, 40.994423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717056, 27.931532, 40.715599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535652, 28.195810, 40.476330>,  <35.426811, 28.354378, 40.332767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.535652, 28.195810, 40.476330>,  <35.717056, 27.931532, 40.715599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535652, 28.195810, 40.476330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852926, 0.516437, -0.076230,
		0.258553, -0.544767, -0.797734,
		-0.453507, 0.660698, -0.598172,
		35.399601, 28.394020, 40.296879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221786, 28.062550, 40.062695>,  <35.717056, 27.931532, 40.715599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221786, 28.062550, 40.062695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976238, 28.373173, 40.119446>,  <35.828911, 28.559546, 40.153496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.976238, 28.373173, 40.119446>,  <36.221786, 28.062550, 40.062695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976238, 28.373173, 40.119446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765915, 0.629420, -0.131169,
		-0.191162, 0.028148, -0.981155,
		-0.613866, 0.776556, 0.141880,
		35.792080, 28.606140, 40.162010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342442, 28.681623, 39.595173>,  <36.221786, 28.062550, 40.062695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342442, 28.681623, 39.595173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171619, 28.835247, 39.922615>,  <36.069126, 28.927422, 40.119080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.171619, 28.835247, 39.922615>,  <36.342442, 28.681623, 39.595173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171619, 28.835247, 39.922615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707697, 0.705482, 0.038213,
		-0.562839, 0.595646, -0.573077,
		-0.427057, 0.384057, 0.818610,
		36.043503, 28.950464, 40.168198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155201, 29.421148, 39.350510>,  <36.342442, 28.681623, 39.595173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155201, 29.421148, 39.350510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225853, 29.323387, 39.731892>,  <36.268246, 29.264730, 39.960720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225853, 29.323387, 39.731892>,  <36.155201, 29.421148, 39.350510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225853, 29.323387, 39.731892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688432, 0.722995, 0.057792,
		-0.703465, 0.646178, 0.295958,
		0.176633, -0.244402, 0.953451,
		36.278843, 29.250067, 40.017925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649784, 28.985453, 39.310875>,  <36.155201, 29.421148, 39.350510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649784, 28.985453, 39.310875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733898, 29.174538, 39.653179>,  <35.784367, 29.287989, 39.858562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733898, 29.174538, 39.653179>,  <35.649784, 28.985453, 39.310875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733898, 29.174538, 39.653179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013593, 0.873832, -0.486037,
		-0.977545, 0.113841, 0.177332,
		0.210289, 0.472713, 0.855758,
		35.796986, 29.316351, 39.909908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.281364, 29.675642, 39.340511>,  <35.649784, 28.985453, 39.310875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.281364, 29.675642, 39.340511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581738, 29.736254, 39.597618>,  <35.761959, 29.772621, 39.751881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581738, 29.736254, 39.597618>,  <35.281364, 29.675642, 39.340511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581738, 29.736254, 39.597618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237773, 0.846002, -0.477227,
		-0.616093, 0.511195, 0.599258,
		0.750929, 0.151528, 0.642764,
		35.807014, 29.781712, 39.790447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242157, 30.420687, 39.402534>,  <35.281364, 29.675642, 39.340511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242157, 30.420687, 39.402534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597572, 30.295732, 39.536949>,  <35.810822, 30.220760, 39.617599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597572, 30.295732, 39.536949>,  <35.242157, 30.420687, 39.402534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597572, 30.295732, 39.536949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429531, 0.823806, -0.369928,
		-0.161271, 0.473032, 0.866159,
		0.888535, -0.312383, 0.336038,
		35.864132, 30.202017, 39.637760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565357, 31.020140, 39.699409>,  <35.242157, 30.420687, 39.402534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565357, 31.020140, 39.699409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818512, 30.753355, 39.542122>,  <35.970406, 30.593285, 39.447750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818512, 30.753355, 39.542122>,  <35.565357, 31.020140, 39.699409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818512, 30.753355, 39.542122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429736, 0.725061, -0.538157,
		0.644035, 0.171613, 0.745498,
		0.632887, -0.666960, -0.393216,
		36.008377, 30.553267, 39.424156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.238342, 31.335913, 39.839027>,  <35.565357, 31.020140, 39.699409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.238342, 31.335913, 39.839027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225636, 31.074080, 39.536900>,  <36.218010, 30.916979, 39.355621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225636, 31.074080, 39.536900>,  <36.238342, 31.335913, 39.839027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225636, 31.074080, 39.536900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420556, 0.676796, -0.604219,
		0.906710, -0.336849, 0.253789,
		-0.031768, -0.654584, -0.755321,
		36.216106, 30.877705, 39.310303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914185, 31.420471, 40.101200>,  <36.238342, 31.335913, 39.839027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914185, 31.420471, 40.101200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012348, 31.102594, 39.879124>,  <37.071247, 30.911867, 39.745876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.012348, 31.102594, 39.879124>,  <36.914185, 31.420471, 40.101200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012348, 31.102594, 39.879124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048386, 0.582033, -0.811725,
		0.968211, 0.172341, 0.181288,
		0.245409, -0.794693, -0.555192,
		37.085972, 30.864187, 39.712566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.503975, 31.536795, 39.681480>,  <36.914185, 31.420471, 40.101200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.503975, 31.536795, 39.681480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229130, 31.352882, 39.456455>,  <37.064224, 31.242535, 39.321442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.229130, 31.352882, 39.456455>,  <37.503975, 31.536795, 39.681480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229130, 31.352882, 39.456455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127038, 0.686336, -0.716104,
		0.715367, -0.563506, -0.413174,
		-0.687104, -0.459788, -0.562568,
		37.022995, 31.214947, 39.287685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819408, 31.242489, 38.973621>,  <37.503975, 31.536795, 39.681480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819408, 31.242489, 38.973621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429119, 31.300156, 38.907677>,  <37.194946, 31.334755, 38.868111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.429119, 31.300156, 38.907677>,  <37.819408, 31.242489, 38.973621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.429119, 31.300156, 38.907677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218828, 0.672111, -0.707376,
		0.008826, -0.726280, -0.687342,
		-0.975724, 0.144167, -0.164862,
		37.136402, 31.343405, 38.858219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616135, 31.147814, 38.246304>,  <37.819408, 31.242489, 38.973621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616135, 31.147814, 38.246304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335281, 31.391388, 38.393932>,  <37.166771, 31.537533, 38.482510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.335281, 31.391388, 38.393932>,  <37.616135, 31.147814, 38.246304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335281, 31.391388, 38.393932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126655, 0.616859, -0.776816,
		-0.700694, -0.498682, -0.510240,
		-0.702130, 0.608935, 0.369069,
		37.124641, 31.574068, 38.504654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358616, 31.242208, 37.633633>,  <37.616135, 31.147814, 38.246304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358616, 31.242208, 37.633633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225338, 31.510286, 37.898907>,  <37.145370, 31.671133, 38.058071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225338, 31.510286, 37.898907>,  <37.358616, 31.242208, 37.633633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225338, 31.510286, 37.898907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071639, 0.683353, -0.726565,
		-0.940133, -0.289598, -0.179677,
		-0.333194, 0.670196, 0.663189,
		37.125381, 31.711346, 38.097862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829235, 31.485094, 37.335155>,  <37.358616, 31.242208, 37.633633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829235, 31.485094, 37.335155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924927, 31.790684, 37.574860>,  <36.982342, 31.974037, 37.718681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924927, 31.790684, 37.574860>,  <36.829235, 31.485094, 37.335155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924927, 31.790684, 37.574860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060123, 0.627651, -0.776170,
		-0.969100, 0.149653, 0.196085,
		0.239228, 0.763976, 0.599259,
		36.996696, 32.019875, 37.754639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308472, 31.892168, 37.270065>,  <36.829235, 31.485094, 37.335155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308472, 31.892168, 37.270065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610298, 32.125607, 37.390095>,  <36.791393, 32.265671, 37.462112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610298, 32.125607, 37.390095>,  <36.308472, 31.892168, 37.270065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610298, 32.125607, 37.390095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220100, 0.655860, -0.722083,
		-0.618211, 0.478814, 0.623340,
		0.754567, 0.583597, 0.300073,
		36.836670, 32.300686, 37.480118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113625, 32.560650, 37.055347>,  <36.308472, 31.892168, 37.270065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113625, 32.560650, 37.055347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484158, 32.630169, 37.189034>,  <36.706478, 32.671879, 37.269245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484158, 32.630169, 37.189034>,  <36.113625, 32.560650, 37.055347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484158, 32.630169, 37.189034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085846, 0.766480, -0.636505,
		-0.366791, 0.618307, 0.695098,
		0.926334, 0.173793, 0.334217,
		36.762058, 32.682308, 37.289299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124126, 33.290131, 37.306904>,  <36.113625, 32.560650, 37.055347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124126, 33.290131, 37.306904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491966, 33.165413, 37.211304>,  <36.712669, 33.090584, 37.153942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491966, 33.165413, 37.211304>,  <36.124126, 33.290131, 37.306904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491966, 33.165413, 37.211304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092388, 0.762946, -0.639827,
		0.381835, 0.566305, 0.730411,
		0.919601, -0.311790, -0.239000,
		36.767845, 33.071877, 37.139603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311207, 33.863293, 37.056679>,  <36.124126, 33.290131, 37.306904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311207, 33.863293, 37.056679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616852, 33.621609, 36.966286>,  <36.800240, 33.476601, 36.912048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.616852, 33.621609, 36.966286>,  <36.311207, 33.863293, 37.056679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.616852, 33.621609, 36.966286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277726, 0.624313, -0.730138,
		0.582238, 0.495145, 0.644849,
		0.764112, -0.604206, -0.225984,
		36.846085, 33.440346, 36.898491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942520, 34.261650, 37.067711>,  <36.311207, 33.863293, 37.056679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.942520, 34.261650, 37.067711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015781, 33.940811, 36.840343>,  <37.059738, 33.748306, 36.703922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.015781, 33.940811, 36.840343>,  <36.942520, 34.261650, 37.067711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015781, 33.940811, 36.840343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088090, 0.589260, -0.803127,
		0.979130, 0.097024, 0.178582,
		0.183154, -0.802097, -0.568415,
		37.070728, 33.700184, 36.669819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649319, 34.368999, 36.680576>,  <36.942520, 34.261650, 37.067711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649319, 34.368999, 36.680576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427197, 34.101833, 36.482376>,  <37.293922, 33.941532, 36.363457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427197, 34.101833, 36.482376>,  <37.649319, 34.368999, 36.680576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427197, 34.101833, 36.482376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091430, 0.641224, -0.761887,
		0.826607, -0.377776, -0.417142,
		-0.555304, -0.667920, -0.495500,
		37.260605, 33.901459, 36.333725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922688, 34.074955, 36.093437>,  <37.649319, 34.368999, 36.680576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922688, 34.074955, 36.093437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534721, 34.022804, 36.011196>,  <37.301941, 33.991516, 35.961849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534721, 34.022804, 36.011196>,  <37.922688, 34.074955, 36.093437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534721, 34.022804, 36.011196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082943, 0.617054, -0.782537,
		0.228891, -0.776046, -0.587675,
		-0.969912, -0.130372, -0.205606,
		37.243748, 33.983692, 35.949512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.925228, 34.218521, 35.429840>,  <37.922688, 34.074955, 36.093437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.925228, 34.218521, 35.429840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538353, 34.200195, 35.529797>,  <37.306229, 34.189201, 35.589771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.538353, 34.200195, 35.529797>,  <37.925228, 34.218521, 35.429840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.538353, 34.200195, 35.529797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230930, 0.568531, -0.789584,
		-0.105898, -0.821385, -0.560457,
		-0.967190, -0.045811, 0.249889,
		37.248196, 34.186451, 35.604763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629772, 33.935944, 34.840584>,  <37.925228, 34.218521, 35.429840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629772, 33.935944, 34.840584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363026, 34.145142, 35.052910>,  <37.202976, 34.270660, 35.180305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.363026, 34.145142, 35.052910>,  <37.629772, 33.935944, 34.840584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363026, 34.145142, 35.052910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180946, 0.577361, -0.796187,
		-0.722872, -0.627000, -0.290389,
		-0.666869, 0.522996, 0.530812,
		37.162964, 34.302040, 35.212154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363930, 33.883591, 34.912586>,  <37.629772, 33.935944, 34.840584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363930, 33.883591, 34.912586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557369, 33.533592, 34.921661>,  <38.673435, 33.323593, 34.927105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.557369, 33.533592, 34.921661>,  <38.363930, 33.883591, 34.912586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.557369, 33.533592, 34.921661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821555, 0.444818, -0.356630,
		0.301957, 0.191106, 0.933970,
		0.483601, -0.874994, 0.022688,
		38.702450, 33.271095, 34.928467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.072464, 34.069809, 35.055271>,  <38.363930, 33.883591, 34.912586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.072464, 34.069809, 35.055271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083164, 33.703533, 34.894875>,  <39.089584, 33.483768, 34.798637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083164, 33.703533, 34.894875>,  <39.072464, 34.069809, 35.055271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083164, 33.703533, 34.894875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840599, 0.237699, -0.486716,
		0.540997, -0.324056, 0.776086,
		0.026752, -0.915689, -0.400995,
		39.091190, 33.428825, 34.774574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805183, 33.811661, 35.129524>,  <39.072464, 34.069809, 35.055271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805183, 33.811661, 35.129524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608681, 33.683403, 34.805584>,  <39.490780, 33.606449, 34.611221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608681, 33.683403, 34.805584>,  <39.805183, 33.811661, 35.129524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608681, 33.683403, 34.805584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783845, 0.242689, -0.571567,
		0.379809, -0.915583, 0.132111,
		-0.491255, -0.320640, -0.809851,
		39.461304, 33.587212, 34.562630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148277, 33.231037, 34.878128>,  <39.805183, 33.811661, 35.129524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148277, 33.231037, 34.878128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977089, 33.424469, 34.572712>,  <39.874374, 33.540527, 34.389462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.977089, 33.424469, 34.572712>,  <40.148277, 33.231037, 34.878128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.977089, 33.424469, 34.572712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852276, -0.065217, -0.519011,
		-0.300777, -0.872869, -0.384230,
		-0.427970, 0.483577, -0.763541,
		39.848698, 33.569542, 34.343651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322250, 32.923054, 34.305298>,  <40.148277, 33.231037, 34.878128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322250, 32.923054, 34.305298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288902, 33.318127, 34.252335>,  <40.268894, 33.555172, 34.220558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.288902, 33.318127, 34.252335>,  <40.322250, 32.923054, 34.305298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.288902, 33.318127, 34.252335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923823, 0.026781, -0.381882,
		-0.373632, -0.154158, -0.914677,
		-0.083366, 0.987683, -0.132408,
		40.263893, 33.614433, 34.212612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541035, 33.037521, 33.621109>,  <40.322250, 32.923054, 34.305298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541035, 33.037521, 33.621109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603687, 33.315742, 33.901588>,  <40.641277, 33.482674, 34.069878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.603687, 33.315742, 33.901588>,  <40.541035, 33.037521, 33.621109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.603687, 33.315742, 33.901588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973207, 0.012315, -0.229602,
		-0.168335, 0.718374, -0.674983,
		0.156628, 0.695548, 0.701199,
		40.650677, 33.524406, 34.111950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667522, 33.719536, 33.299862>,  <40.541035, 33.037521, 33.621109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667522, 33.719536, 33.299862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819633, 33.703495, 33.669464>,  <40.910900, 33.693871, 33.891224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.819633, 33.703495, 33.669464>,  <40.667522, 33.719536, 33.299862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.819633, 33.703495, 33.669464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923184, 0.076798, -0.376607,
		-0.055859, 0.996240, 0.066225,
		0.380277, -0.040101, 0.924003,
		40.933716, 33.691463, 33.946667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.253437, 34.160774, 33.371689>,  <40.667522, 33.719536, 33.299862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.253437, 34.160774, 33.371689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323353, 33.907944, 33.673664>,  <41.365303, 33.756245, 33.854847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.323353, 33.907944, 33.673664>,  <41.253437, 34.160774, 33.371689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323353, 33.907944, 33.673664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983256, 0.152194, -0.100222,
		-0.051548, 0.759812, 0.648096,
		0.174786, -0.632078, 0.754935,
		41.375790, 33.718319, 33.900143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.570854, 34.447105, 34.055195>,  <41.253437, 34.160774, 33.371689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.570854, 34.447105, 34.055195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688454, 34.072601, 33.978268>,  <41.759014, 33.847900, 33.932110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.688454, 34.072601, 33.978268>,  <41.570854, 34.447105, 34.055195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.688454, 34.072601, 33.978268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933263, 0.324632, -0.153734,
		0.206367, -0.134286, 0.969216,
		0.293994, -0.936259, -0.192318,
		41.776653, 33.791725, 33.920570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.206379, 34.387142, 34.263691>,  <41.570854, 34.447105, 34.055195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.206379, 34.387142, 34.263691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194820, 34.046894, 34.053696>,  <42.187885, 33.842747, 33.927700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.194820, 34.046894, 34.053696>,  <42.206379, 34.387142, 34.263691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.194820, 34.046894, 34.053696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964510, 0.114173, -0.238086,
		0.262460, -0.513236, 0.817131,
		-0.028900, -0.850619, -0.524987,
		42.186150, 33.791710, 33.896198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947594, 34.518780, 34.129070>,  <42.206379, 34.387142, 34.263691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947594, 34.518780, 34.129070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835690, 34.229996, 33.875927>,  <42.768547, 34.056725, 33.724041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.835690, 34.229996, 33.875927>,  <42.947594, 34.518780, 34.129070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.835690, 34.229996, 33.875927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674429, 0.321351, -0.664739,
		0.683285, -0.612784, 0.397011,
		-0.279761, -0.721962, -0.632854,
		42.751762, 34.013409, 33.686069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.529846, 34.094761, 34.006718>,  <42.947594, 34.518780, 34.129070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.529846, 34.094761, 34.006718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293560, 34.074654, 33.684593>,  <43.151787, 34.062588, 33.491318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.293560, 34.074654, 33.684593>,  <43.529846, 34.094761, 34.006718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.293560, 34.074654, 33.684593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805917, 0.011924, -0.591909,
		0.039359, -0.998664, 0.033471,
		-0.590719, -0.050272, -0.805310,
		43.116344, 34.059574, 33.443001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.273453, 34.342644, 33.920158>,  <43.529846, 34.094761, 34.006718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.273453, 34.342644, 33.920158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586266, 34.386555, 33.674759>,  <44.773952, 34.412899, 33.527519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.586266, 34.386555, 33.674759>,  <44.273453, 34.342644, 33.920158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.586266, 34.386555, 33.674759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591055, 0.181628, 0.785917,
		0.197702, -0.977221, 0.077155,
		0.782028, 0.109775, -0.613500,
		44.820873, 34.419487, 33.490707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.873707, 33.940701, 34.110241>,  <44.273453, 34.342644, 33.920158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.873707, 33.940701, 34.110241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967121, 34.284271, 33.927940>,  <45.023170, 34.490414, 33.818562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.967121, 34.284271, 33.927940>,  <44.873707, 33.940701, 34.110241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.967121, 34.284271, 33.927940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524078, 0.283616, 0.803059,
		0.819026, -0.426394, -0.383908,
		0.233537, 0.858923, -0.455753,
		45.037182, 34.541946, 33.791214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394611, 34.349693, 34.456230>,  <44.873707, 33.940701, 34.110241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394611, 34.349693, 34.456230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526592, 34.495235, 34.107807>,  <45.605782, 34.582561, 33.898754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.526592, 34.495235, 34.107807>,  <45.394611, 34.349693, 34.456230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.526592, 34.495235, 34.107807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488307, 0.723907, 0.487355,
		0.807892, -0.586146, 0.061180,
		0.329950, 0.363856, -0.871058,
		45.625576, 34.604393, 33.846489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793056, 34.896595, 34.218441>,  <45.394611, 34.349693, 34.456230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793056, 34.896595, 34.218441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820599, 34.500702, 34.168339>,  <45.837124, 34.263165, 34.138279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.820599, 34.500702, 34.168339>,  <45.793056, 34.896595, 34.218441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.820599, 34.500702, 34.168339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694537, -0.042571, 0.718197,
		-0.716155, -0.136442, 0.684475,
		0.068854, -0.989733, -0.125251,
		45.841255, 34.203781, 34.130764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.096912, 34.679863, 34.776043>,  <45.793056, 34.896595, 34.218441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.096912, 34.679863, 34.776043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114582, 34.337730, 34.569565>,  <46.125183, 34.132450, 34.445679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.114582, 34.337730, 34.569565>,  <46.096912, 34.679863, 34.776043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114582, 34.337730, 34.569565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697949, -0.343266, 0.628519,
		-0.714784, -0.388043, 0.581813,
		0.044176, -0.855331, -0.516195,
		46.127834, 34.081131, 34.414707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.266605, 34.341503, 35.373268>,  <46.096912, 34.679863, 34.776043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.266605, 34.341503, 35.373268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181744, 33.956417, 35.306137>,  <46.130829, 33.725365, 35.265858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.181744, 33.956417, 35.306137>,  <46.266605, 34.341503, 35.373268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.181744, 33.956417, 35.306137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830323, -0.087019, -0.550447,
		0.515321, -0.256127, 0.817828,
		-0.212150, -0.962718, -0.167825,
		46.118099, 33.667603, 35.255791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.736736, 34.915642, 35.623299>,  <46.266605, 34.341503, 35.373268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.736736, 34.915642, 35.623299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.784813, 34.704746, 35.286831>,  <46.813660, 34.578209, 35.084949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.784813, 34.704746, 35.286831>,  <46.736736, 34.915642, 35.623299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784813, 34.704746, 35.286831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747694, 0.605475, -0.272677,
		0.653076, -0.596166, 0.466988,
		0.120189, -0.527243, -0.841171,
		46.820869, 34.546574, 35.034481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.340839, 34.692486, 35.714962>,  <46.736736, 34.915642, 35.623299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.340839, 34.692486, 35.714962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215450, 34.750465, 35.339573>,  <47.140217, 34.785255, 35.114342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.215450, 34.750465, 35.339573>,  <47.340839, 34.692486, 35.714962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.215450, 34.750465, 35.339573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653096, 0.750339, -0.102256,
		0.689349, -0.644965, -0.329877,
		-0.313471, 0.144951, -0.938469,
		47.121410, 34.793949, 35.058033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.954407, 34.712666, 35.180851>,  <47.340839, 34.692486, 35.714962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.954407, 34.712666, 35.180851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.642792, 34.933929, 35.062790>,  <47.455822, 35.066689, 34.991955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.642792, 34.933929, 35.062790>,  <47.954407, 34.712666, 35.180851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.642792, 34.933929, 35.062790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595415, 0.800199, -0.071856,
		0.196430, -0.231714, -0.952746,
		-0.779036, 0.553164, -0.295149,
		47.409081, 35.099880, 34.974247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.822502, 36.547291, 23.698803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.430145, 36.611782, 23.655245>,  <34.194733, 36.650475, 23.629110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.430145, 36.611782, 23.655245>,  <34.822502, 36.547291, 23.698803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430145, 36.611782, 23.655245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172842, -0.465169, 0.868184,
		0.089316, 0.870416, 0.484146,
		-0.980892, 0.161224, -0.108897,
		34.135880, 36.660149, 23.622576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637062, 36.942924, 24.226593>,  <34.822502, 36.547291, 23.698803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637062, 36.942924, 24.226593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307301, 36.753742, 24.102224>,  <34.109444, 36.640232, 24.027603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.307301, 36.753742, 24.102224>,  <34.637062, 36.942924, 24.226593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307301, 36.753742, 24.102224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032047, -0.509448, 0.859905,
		-0.565094, 0.718873, 0.404834,
		-0.824404, -0.472953, -0.310923,
		34.059978, 36.611855, 24.008947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100151, 37.081188, 24.744331>,  <34.637062, 36.942924, 24.226593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100151, 37.081188, 24.744331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.965359, 36.754814, 24.556419>,  <33.884483, 36.558990, 24.443672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.965359, 36.754814, 24.556419>,  <34.100151, 37.081188, 24.744331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965359, 36.754814, 24.556419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182322, -0.432966, 0.882779,
		-0.923688, 0.383134, -0.002860,
		-0.336984, -0.815934, -0.469780,
		33.864265, 36.510033, 24.415485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483662, 36.864285, 25.144674>,  <34.100151, 37.081188, 24.744331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483662, 36.864285, 25.144674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570068, 36.540199, 24.926722>,  <33.621914, 36.345749, 24.795950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.570068, 36.540199, 24.926722>,  <33.483662, 36.864285, 25.144674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570068, 36.540199, 24.926722> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258497, -0.585600, 0.768278,
		-0.941550, -0.025110, -0.335936,
		0.216016, -0.810211, -0.544880,
		33.634872, 36.297134, 24.763258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890270, 36.398830, 25.225851>,  <33.483662, 36.864285, 25.144674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890270, 36.398830, 25.225851> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196388, 36.161034, 25.127146>,  <33.380058, 36.018356, 25.067923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.196388, 36.161034, 25.127146>,  <32.890270, 36.398830, 25.225851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196388, 36.161034, 25.127146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180542, -0.566235, 0.804228,
		-0.617840, -0.570921, -0.540670,
		0.765297, -0.594497, -0.246767,
		33.425980, 35.982685, 25.053116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.723969, 35.668224, 25.325783>,  <32.890270, 36.398830, 25.225851>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.723969, 35.668224, 25.325783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.123222, 35.656799, 25.347368>,  <33.362774, 35.649944, 25.360319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.123222, 35.656799, 25.347368>,  <32.723969, 35.668224, 25.325783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123222, 35.656799, 25.347368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061042, -0.483660, 0.873125,
		0.001165, -0.874790, -0.484500,
		0.998135, -0.028558, 0.053962,
		33.422661, 35.648232, 25.363558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776321, 35.111042, 25.648884>,  <32.723969, 35.668224, 25.325783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776321, 35.111042, 25.648884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.145058, 35.263615, 25.676384>,  <33.366299, 35.355156, 25.692884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.145058, 35.263615, 25.676384>,  <32.776321, 35.111042, 25.648884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145058, 35.263615, 25.676384> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103299, -0.412770, 0.904959,
		0.373555, -0.827124, -0.419908,
		0.921838, 0.381428, 0.068751,
		33.421608, 35.378044, 25.697010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.182732, 34.551586, 25.777405>,  <32.776321, 35.111042, 25.648884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.182732, 34.551586, 25.777405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356113, 34.882359, 25.920683>,  <33.460140, 35.080822, 26.006651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356113, 34.882359, 25.920683>,  <33.182732, 34.551586, 25.777405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356113, 34.882359, 25.920683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209873, -0.479176, 0.852258,
		0.876398, -0.294237, -0.381251,
		0.433452, 0.826931, 0.358196,
		33.486149, 35.130440, 26.028141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831966, 34.267063, 26.099400>,  <33.182732, 34.551586, 25.777405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831966, 34.267063, 26.099400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.749531, 34.622940, 26.262360>,  <33.700069, 34.836468, 26.360136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.749531, 34.622940, 26.262360>,  <33.831966, 34.267063, 26.099400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749531, 34.622940, 26.262360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152195, -0.382130, 0.911490,
		0.966625, 0.249851, -0.056654,
		-0.206088, 0.889692, 0.407402,
		33.687706, 34.889847, 26.384581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333065, 34.433044, 26.542917>,  <33.831966, 34.267063, 26.099400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333065, 34.433044, 26.542917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053684, 34.674221, 26.697124>,  <33.886055, 34.818928, 26.789650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.053684, 34.674221, 26.697124>,  <34.333065, 34.433044, 26.542917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053684, 34.674221, 26.697124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340633, -0.193675, 0.920032,
		0.629393, 0.773918, -0.070110,
		-0.698452, 0.602943, 0.385519,
		33.844151, 34.855103, 26.812780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687210, 34.698109, 27.143967>,  <34.333065, 34.433044, 26.542917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687210, 34.698109, 27.143967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292728, 34.738445, 27.196468>,  <34.056038, 34.762650, 27.227970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.292728, 34.738445, 27.196468>,  <34.687210, 34.698109, 27.143967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292728, 34.738445, 27.196468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124970, -0.066333, 0.989941,
		0.108536, 0.992688, 0.052815,
		-0.986206, 0.100844, 0.131255,
		33.996868, 34.768700, 27.235846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483780, 35.276817, 27.592352>,  <34.687210, 34.698109, 27.143967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483780, 35.276817, 27.592352> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176605, 35.020851, 27.603554>,  <33.992302, 34.867271, 27.610275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.176605, 35.020851, 27.603554>,  <34.483780, 35.276817, 27.592352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176605, 35.020851, 27.603554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113949, -0.093464, 0.989080,
		-0.630307, 0.762743, 0.144692,
		-0.767938, -0.639912, 0.028003,
		33.946224, 34.828876, 27.611956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163532, 35.439926, 28.209642>,  <34.483780, 35.276817, 27.592352>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163532, 35.439926, 28.209642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.022282, 35.070690, 28.148712>,  <33.937531, 34.849148, 28.112154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.022282, 35.070690, 28.148712>,  <34.163532, 35.439926, 28.209642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022282, 35.070690, 28.148712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132364, -0.210467, 0.968599,
		-0.926166, 0.321873, 0.196505,
		-0.353124, -0.923093, -0.152324,
		33.916344, 34.793762, 28.103016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706779, 35.254681, 28.775990>,  <34.163532, 35.439926, 28.209642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706779, 35.254681, 28.775990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828201, 34.908447, 28.616684>,  <33.901054, 34.700706, 28.521101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.828201, 34.908447, 28.616684>,  <33.706779, 35.254681, 28.775990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828201, 34.908447, 28.616684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286695, -0.315641, 0.904531,
		-0.908658, -0.388757, 0.152344,
		0.303557, -0.865586, -0.398265,
		33.919270, 34.648773, 28.497204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.241741, 34.792786, 29.151974>,  <33.706779, 35.254681, 28.775990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.241741, 34.792786, 29.151974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535381, 34.553562, 29.023333>,  <33.711567, 34.410030, 28.946148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.535381, 34.553562, 29.023333>,  <33.241741, 34.792786, 29.151974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535381, 34.553562, 29.023333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239911, -0.214641, 0.946769,
		-0.635250, -0.772179, -0.014088,
		0.734099, -0.598055, -0.321605,
		33.755611, 34.374146, 28.926851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192093, 34.106476, 29.454002>,  <33.241741, 34.792786, 29.151974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192093, 34.106476, 29.454002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574356, 34.084034, 29.338369>,  <33.803715, 34.070568, 29.268990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.574356, 34.084034, 29.338369>,  <33.192093, 34.106476, 29.454002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574356, 34.084034, 29.338369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244444, -0.396272, 0.884995,
		-0.164210, -0.916417, -0.364986,
		0.955658, -0.056107, -0.289084,
		33.861053, 34.067204, 29.251644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349297, 33.431564, 29.638018>,  <33.192093, 34.106476, 29.454002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349297, 33.431564, 29.638018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699944, 33.614384, 29.577816>,  <33.910332, 33.724075, 29.541695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699944, 33.614384, 29.577816>,  <33.349297, 33.431564, 29.638018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699944, 33.614384, 29.577816> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398639, -0.514615, 0.759117,
		0.269502, -0.725450, -0.633317,
		0.876616, 0.457048, -0.150503,
		33.962929, 33.751499, 29.532665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862076, 32.917744, 29.710699>,  <33.349297, 33.431564, 29.638018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862076, 32.917744, 29.710699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.047989, 33.262730, 29.790829>,  <34.159534, 33.469723, 29.838907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.047989, 33.262730, 29.790829>,  <33.862076, 32.917744, 29.710699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047989, 33.262730, 29.790829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472783, -0.433031, 0.767438,
		0.748637, -0.261978, -0.609023,
		0.464778, 0.862468, 0.200324,
		34.187424, 33.521469, 29.850925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605114, 32.800312, 29.744419>,  <33.862076, 32.917744, 29.710699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605114, 32.800312, 29.744419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545086, 33.138206, 29.949903>,  <34.509068, 33.340942, 30.073195>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.545086, 33.138206, 29.949903>,  <34.605114, 32.800312, 29.744419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545086, 33.138206, 29.949903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379853, -0.430451, 0.818794,
		0.912792, 0.318015, -0.256276,
		-0.150074, 0.844736, 0.513711,
		34.500065, 33.391628, 30.104017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.173248, 32.881893, 30.056536>,  <34.605114, 32.800312, 29.744419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.173248, 32.881893, 30.056536> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951057, 33.125725, 30.282757>,  <34.817741, 33.272026, 30.418489>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.951057, 33.125725, 30.282757>,  <35.173248, 32.881893, 30.056536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951057, 33.125725, 30.282757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412063, -0.388959, 0.823963,
		0.722252, 0.690738, -0.035128,
		-0.555479, 0.609583, 0.565554,
		34.784412, 33.308601, 30.452423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.600945, 33.108719, 30.546223>,  <35.173248, 32.881893, 30.056536>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.600945, 33.108719, 30.546223> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235378, 33.171772, 30.695843>,  <35.016041, 33.209606, 30.785614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.235378, 33.171772, 30.695843>,  <35.600945, 33.108719, 30.546223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235378, 33.171772, 30.695843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283756, -0.410820, 0.866435,
		0.290250, 0.897985, 0.330723,
		-0.913913, 0.157637, 0.374049,
		34.961205, 33.219063, 30.808058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747570, 33.467461, 31.248608>,  <35.600945, 33.108719, 30.546223>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747570, 33.467461, 31.248608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382587, 33.305481, 31.225168>,  <35.163597, 33.208294, 31.211105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382587, 33.305481, 31.225168>,  <35.747570, 33.467461, 31.248608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382587, 33.305481, 31.225168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188217, -0.542567, 0.818654,
		-0.363307, 0.735960, 0.571289,
		-0.912459, -0.404949, -0.058598,
		35.108849, 33.183994, 31.207588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757061, 32.865379, 31.723146>,  <35.747570, 33.467461, 31.248608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757061, 32.865379, 31.723146> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064476, 33.007935, 31.935690>,  <36.248924, 33.093468, 32.063217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.064476, 33.007935, 31.935690>,  <35.757061, 32.865379, 31.723146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064476, 33.007935, 31.935690> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034263, 0.852233, -0.522039,
		-0.638890, 0.382999, 0.667182,
		0.768535, 0.356385, 0.531360,
		36.295036, 33.114849, 32.095097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505322, 33.496964, 31.934143>,  <35.757061, 32.865379, 31.723146>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505322, 33.496964, 31.934143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902592, 33.515331, 31.977024>,  <36.140953, 33.526352, 32.002750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.902592, 33.515331, 31.977024>,  <35.505322, 33.496964, 31.934143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902592, 33.515331, 31.977024> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029590, 0.789931, -0.612481,
		-0.112803, 0.611474, 0.783182,
		0.993177, 0.045915, 0.107200,
		36.200546, 33.529106, 32.009186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.621704, 34.237408, 32.016808>,  <35.505322, 33.496964, 31.934143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.621704, 34.237408, 32.016808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959991, 34.061592, 31.895771>,  <36.162964, 33.956104, 31.823151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.959991, 34.061592, 31.895771>,  <35.621704, 34.237408, 32.016808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959991, 34.061592, 31.895771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125029, 0.714479, -0.688394,
		0.518769, 0.544358, 0.659207,
		0.845722, -0.439538, -0.302589,
		36.213707, 33.929729, 31.804995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143436, 34.796646, 31.877226>,  <35.621704, 34.237408, 32.016808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143436, 34.796646, 31.877226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280174, 34.476349, 31.680475>,  <36.362217, 34.284168, 31.562424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.280174, 34.476349, 31.680475>,  <36.143436, 34.796646, 31.877226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280174, 34.476349, 31.680475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042467, 0.509713, -0.859296,
		0.938796, 0.314636, 0.140238,
		0.341847, -0.800748, -0.491878,
		36.382729, 34.236126, 31.532911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845440, 34.941448, 31.633722>,  <36.143436, 34.796646, 31.877226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845440, 34.941448, 31.633722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696087, 34.642040, 31.414522>,  <36.606476, 34.462395, 31.283001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696087, 34.642040, 31.414522>,  <36.845440, 34.941448, 31.633722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696087, 34.642040, 31.414522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042529, 0.576292, -0.816137,
		0.926702, -0.328037, -0.183344,
		-0.373383, -0.748518, -0.548002,
		36.584072, 34.417484, 31.250122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.184841, 35.090000, 30.980434>,  <36.845440, 34.941448, 31.633722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.184841, 35.090000, 30.980434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930496, 34.803257, 30.866034>,  <36.777889, 34.631210, 30.797394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.930496, 34.803257, 30.866034>,  <37.184841, 35.090000, 30.980434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930496, 34.803257, 30.866034> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071436, 0.423636, -0.903011,
		0.768490, -0.553759, -0.320583,
		-0.635862, -0.716857, -0.286002,
		36.739738, 34.588200, 30.780233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525650, 34.824234, 30.254616>,  <37.184841, 35.090000, 30.980434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525650, 34.824234, 30.254616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131931, 34.763176, 30.290077>,  <36.895699, 34.726543, 30.311354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.131931, 34.763176, 30.290077>,  <37.525650, 34.824234, 30.254616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131931, 34.763176, 30.290077> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146796, 0.428913, -0.891339,
		0.098029, -0.890357, -0.444585,
		-0.984297, -0.152641, 0.088655,
		36.836643, 34.717384, 30.316673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405903, 34.524712, 29.588892>,  <37.525650, 34.824234, 30.254616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405903, 34.524712, 29.588892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059727, 34.658974, 29.737671>,  <36.852020, 34.739529, 29.826939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.059727, 34.658974, 29.737671>,  <37.405903, 34.524712, 29.588892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059727, 34.658974, 29.737671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332384, 0.170824, -0.927545,
		-0.374869, -0.926368, -0.036274,
		-0.865445, 0.335651, 0.371946,
		36.800095, 34.759670, 29.849255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835468, 34.220272, 29.232233>,  <37.405903, 34.524712, 29.588892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835468, 34.220272, 29.232233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712921, 34.564152, 29.395720>,  <36.639393, 34.770481, 29.493811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.712921, 34.564152, 29.395720>,  <36.835468, 34.220272, 29.232233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712921, 34.564152, 29.395720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376093, 0.285112, -0.881627,
		-0.874467, -0.423818, 0.235979,
		-0.306369, 0.859703, 0.408716,
		36.621010, 34.822063, 29.518333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065384, 34.313324, 28.900068>,  <36.835468, 34.220272, 29.232233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065384, 34.313324, 28.900068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217373, 34.662807, 29.021568>,  <36.308567, 34.872498, 29.094469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.217373, 34.662807, 29.021568>,  <36.065384, 34.313324, 28.900068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217373, 34.662807, 29.021568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306716, 0.428806, -0.849736,
		-0.872668, 0.229707, 0.430912,
		0.379968, 0.873705, 0.303750,
		36.331364, 34.924919, 29.112694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598022, 34.857323, 28.873905>,  <36.065384, 34.313324, 28.900068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598022, 34.857323, 28.873905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940556, 35.063602, 28.862953>,  <36.146076, 35.187370, 28.856382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.940556, 35.063602, 28.862953>,  <35.598022, 34.857323, 28.873905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940556, 35.063602, 28.862953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363039, 0.563443, -0.742115,
		-0.367279, 0.645439, 0.669713,
		0.856335, 0.515695, -0.027379,
		36.197456, 35.218311, 28.854740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387341, 35.319130, 28.305233>,  <35.598022, 34.857323, 28.873905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387341, 35.319130, 28.305233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.773209, 35.380199, 28.391123>,  <36.004730, 35.416840, 28.442657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.773209, 35.380199, 28.391123>,  <35.387341, 35.319130, 28.305233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773209, 35.380199, 28.391123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075467, 0.620722, -0.780390,
		-0.252429, 0.769022, 0.587268,
		0.964668, 0.152674, 0.214725,
		36.062611, 35.426003, 28.455540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545975, 36.124599, 28.294622>,  <35.387341, 35.319130, 28.305233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545975, 36.124599, 28.294622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876568, 35.908913, 28.229916>,  <36.074924, 35.779499, 28.191092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.876568, 35.908913, 28.229916>,  <35.545975, 36.124599, 28.294622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876568, 35.908913, 28.229916> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246523, 0.604989, -0.757109,
		0.506117, 0.585858, 0.632943,
		0.826482, -0.539221, -0.161767,
		36.124512, 35.747147, 28.181385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056602, 36.655193, 27.922642>,  <35.545975, 36.124599, 28.294622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056602, 36.655193, 27.922642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210449, 36.293724, 27.847336>,  <36.302757, 36.076843, 27.802153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.210449, 36.293724, 27.847336>,  <36.056602, 36.655193, 27.922642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210449, 36.293724, 27.847336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274185, 0.306592, -0.911495,
		0.881414, 0.298958, 0.365695,
		0.384618, -0.903673, -0.188265,
		36.325836, 36.022621, 27.790855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739063, 36.781063, 27.767183>,  <36.056602, 36.655193, 27.922642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739063, 36.781063, 27.767183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644360, 36.434681, 27.590971>,  <36.587540, 36.226852, 27.485243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.644360, 36.434681, 27.590971>,  <36.739063, 36.781063, 27.767183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644360, 36.434681, 27.590971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254968, 0.382152, -0.888229,
		0.937517, -0.322616, 0.130314,
		-0.236757, -0.865955, -0.440531,
		36.573334, 36.174892, 27.458811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221844, 36.809738, 27.314987>,  <36.739063, 36.781063, 27.767183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221844, 36.809738, 27.314987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975727, 36.525745, 27.177969>,  <36.828056, 36.355350, 27.095758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975727, 36.525745, 27.177969>,  <37.221844, 36.809738, 27.314987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975727, 36.525745, 27.177969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126842, 0.339705, -0.931940,
		0.778027, -0.616865, -0.118962,
		-0.615293, -0.709985, -0.342544,
		36.791138, 36.312752, 27.075207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.544594, 36.497181, 26.739815>,  <37.221844, 36.809738, 27.314987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.544594, 36.497181, 26.739815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151196, 36.436104, 26.700998>,  <36.915157, 36.399456, 26.677708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.151196, 36.436104, 26.700998>,  <37.544594, 36.497181, 26.739815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.151196, 36.436104, 26.700998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041588, 0.331210, -0.942640,
		0.176073, -0.931121, -0.319394,
		-0.983498, -0.152691, -0.097041,
		36.856148, 36.390297, 26.671886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431572, 36.307930, 26.062988>,  <37.544594, 36.497181, 26.739815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431572, 36.307930, 26.062988> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051411, 36.394787, 26.152061>,  <36.823315, 36.446899, 26.205505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.051411, 36.394787, 26.152061>,  <37.431572, 36.307930, 26.062988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051411, 36.394787, 26.152061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112152, 0.428550, -0.896530,
		-0.290103, -0.877038, -0.382942,
		-0.950401, 0.217139, 0.222685,
		36.766289, 36.459927, 26.218866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.027393, 36.067959, 25.538334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804981, 36.349102, 25.715796>,  <36.671535, 36.517788, 25.822271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.804981, 36.349102, 25.715796>,  <37.027393, 36.067959, 25.538334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804981, 36.349102, 25.715796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089829, 0.479829, -0.872751,
		-0.826295, -0.525128, -0.203661,
		-0.556029, 0.702855, 0.443652,
		36.638172, 36.559959, 25.848890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299313, 36.070847, 25.108580>,  <37.027393, 36.067959, 25.538334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299313, 36.070847, 25.108580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350830, 36.403194, 25.325123>,  <36.381741, 36.602604, 25.455048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350830, 36.403194, 25.325123>,  <36.299313, 36.070847, 25.108580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350830, 36.403194, 25.325123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347478, 0.549105, -0.760094,
		-0.928801, -0.090215, 0.359430,
		0.128793, 0.830870, 0.541357,
		36.389469, 36.652454, 25.487530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717060, 36.533672, 24.922819>,  <36.299313, 36.070847, 25.108580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717060, 36.533672, 24.922819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005363, 36.750832, 25.095224>,  <36.178345, 36.881126, 25.198668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.005363, 36.750832, 25.095224>,  <35.717060, 36.533672, 24.922819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.005363, 36.750832, 25.095224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092888, 0.691817, -0.716074,
		-0.686938, 0.476078, 0.549059,
		0.720755, 0.542899, 0.431013,
		36.221592, 36.913700, 25.224527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504894, 37.173248, 24.864120>,  <35.717060, 36.533672, 24.922819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504894, 37.173248, 24.864120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888596, 37.230309, 24.961679>,  <36.118816, 37.264545, 25.020216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.888596, 37.230309, 24.961679>,  <35.504894, 37.173248, 24.864120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.888596, 37.230309, 24.961679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030907, 0.805044, -0.592410,
		-0.280858, 0.575808, 0.767830,
		0.959251, 0.142651, 0.243899,
		36.176373, 37.273106, 25.034849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584110, 37.917027, 25.027407>,  <35.504894, 37.173248, 24.864120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584110, 37.917027, 25.027407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919247, 37.761189, 24.874443>,  <36.120327, 37.667686, 24.782665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.919247, 37.761189, 24.874443>,  <35.584110, 37.917027, 25.027407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919247, 37.761189, 24.874443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139790, 0.830251, -0.539576,
		0.527712, 0.398622, 0.750080,
		0.837841, -0.389595, -0.382410,
		36.170601, 37.644310, 24.759720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081135, 38.501015, 25.036926>,  <35.584110, 37.917027, 25.027407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081135, 38.501015, 25.036926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242065, 38.229591, 24.791100>,  <36.338623, 38.066738, 24.643604>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.242065, 38.229591, 24.791100>,  <36.081135, 38.501015, 25.036926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.242065, 38.229591, 24.791100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273006, 0.729677, -0.626928,
		0.873842, 0.084450, 0.478820,
		0.402328, -0.678557, -0.614568,
		36.362762, 38.026024, 24.606730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.758755, 38.776432, 24.769743>,  <36.081135, 38.501015, 25.036926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.758755, 38.776432, 24.769743> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654762, 38.489780, 24.510868>,  <36.592369, 38.317787, 24.355543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654762, 38.489780, 24.510868>,  <36.758755, 38.776432, 24.769743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654762, 38.489780, 24.510868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188163, 0.619786, -0.761880,
		0.947104, -0.319847, -0.026286,
		-0.259977, -0.716634, -0.647185,
		36.576771, 38.274792, 24.316713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308479, 38.863972, 24.248625>,  <36.758755, 38.776432, 24.769743>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308479, 38.863972, 24.248625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007236, 38.680649, 24.059824>,  <36.826492, 38.570656, 23.946543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.007236, 38.680649, 24.059824>,  <37.308479, 38.863972, 24.248625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.007236, 38.680649, 24.059824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237205, 0.480028, -0.844575,
		0.613652, -0.748014, -0.252797,
		-0.753104, -0.458310, -0.472003,
		36.781303, 38.543156, 23.918222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515335, 38.737606, 23.547171>,  <37.308479, 38.863972, 24.248625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515335, 38.737606, 23.547171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128441, 38.651577, 23.493196>,  <36.896305, 38.599960, 23.460812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.128441, 38.651577, 23.493196>,  <37.515335, 38.737606, 23.547171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128441, 38.651577, 23.493196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041876, 0.659316, -0.750699,
		0.250418, -0.720449, -0.646718,
		-0.967232, -0.215071, -0.134935,
		36.838272, 38.587055, 23.452717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416714, 38.688362, 22.867903>,  <37.515335, 38.737606, 23.547171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416714, 38.688362, 22.867903> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043446, 38.769650, 22.986496>,  <36.819485, 38.818420, 23.057652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.043446, 38.769650, 22.986496>,  <37.416714, 38.688362, 22.867903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043446, 38.769650, 22.986496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046556, 0.749560, -0.660297,
		-0.356414, -0.629971, -0.690004,
		-0.933168, 0.203215, 0.296482,
		36.763496, 38.830612, 23.075441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934788, 38.663799, 22.276989>,  <37.416714, 38.688362, 22.867903>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934788, 38.663799, 22.276989> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737186, 38.889320, 22.541742>,  <36.618626, 39.024635, 22.700594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.737186, 38.889320, 22.541742>,  <36.934788, 38.663799, 22.276989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.737186, 38.889320, 22.541742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064928, 0.735208, -0.674725,
		-0.867035, -0.376288, -0.326585,
		-0.493999, 0.563805, 0.661883,
		36.588985, 39.058460, 22.740307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278954, 38.928093, 21.899921>,  <36.934788, 38.663799, 22.276989>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278954, 38.928093, 21.899921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371758, 39.172085, 22.202997>,  <36.427441, 39.318481, 22.384842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.371758, 39.172085, 22.202997>,  <36.278954, 38.928093, 21.899921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371758, 39.172085, 22.202997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019122, 0.781653, -0.623421,
		-0.972526, 0.130149, 0.193012,
		0.232006, 0.609984, 0.757689,
		36.441360, 39.355080, 22.430304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936878, 39.605129, 21.735174>,  <36.278954, 38.928093, 21.899921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936878, 39.605129, 21.735174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214748, 39.687435, 22.010880>,  <36.381470, 39.736820, 22.176302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214748, 39.687435, 22.010880>,  <35.936878, 39.605129, 21.735174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214748, 39.687435, 22.010880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085156, 0.927951, -0.362843,
		-0.714263, 0.310753, 0.627105,
		0.694677, 0.205764, 0.689264,
		36.423153, 39.749165, 22.217659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687344, 40.204277, 22.044987>,  <35.936878, 39.605129, 21.735174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687344, 40.204277, 22.044987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074780, 40.213634, 22.144007>,  <36.307243, 40.219250, 22.203419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.074780, 40.213634, 22.144007>,  <35.687344, 40.204277, 22.044987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074780, 40.213634, 22.144007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070288, 0.929207, -0.362814,
		-0.238509, 0.368818, 0.898380,
		0.968593, 0.023389, 0.247548,
		36.365356, 40.220650, 22.218271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775806, 40.894753, 22.213869>,  <35.687344, 40.204277, 22.044987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775806, 40.894753, 22.213869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141945, 40.738327, 22.175482>,  <36.361629, 40.644470, 22.152449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.141945, 40.738327, 22.175482>,  <35.775806, 40.894753, 22.213869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141945, 40.738327, 22.175482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334023, 0.870519, -0.361421,
		0.224882, 0.298769, 0.927451,
		0.915345, -0.391067, -0.095969,
		36.416550, 40.621006, 22.146690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284939, 41.320854, 22.582436>,  <35.775806, 40.894753, 22.213869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284939, 41.320854, 22.582436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496784, 41.141029, 22.294712>,  <36.623890, 41.033134, 22.122078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.496784, 41.141029, 22.294712>,  <36.284939, 41.320854, 22.582436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496784, 41.141029, 22.294712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279354, 0.893136, -0.352519,
		0.800921, -0.014245, 0.598600,
		0.529610, -0.449562, -0.719311,
		36.655666, 41.006161, 22.078918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.060261, 41.579659, 22.618320>,  <36.284939, 41.320854, 22.582436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.060261, 41.579659, 22.618320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973259, 41.446590, 22.251274>,  <36.921059, 41.366749, 22.031046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.973259, 41.446590, 22.251274>,  <37.060261, 41.579659, 22.618320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.973259, 41.446590, 22.251274> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441257, 0.805056, -0.396456,
		0.870622, -0.491137, -0.028311,
		-0.217506, -0.332671, -0.917617,
		36.908009, 41.346790, 21.975988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756386, 41.773106, 22.245550>,  <37.060261, 41.579659, 22.618320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756386, 41.773106, 22.245550> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470837, 41.689728, 21.978138>,  <37.299507, 41.639702, 21.817690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.470837, 41.689728, 21.978138>,  <37.756386, 41.773106, 22.245550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470837, 41.689728, 21.978138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195412, 0.857450, -0.476018,
		0.672457, -0.470456, -0.571378,
		-0.713874, -0.208447, -0.668531,
		37.256676, 41.627193, 21.777578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013596, 41.928432, 21.531727>,  <37.756386, 41.773106, 22.245550>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013596, 41.928432, 21.531727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.613976, 41.920860, 21.516012>,  <37.374203, 41.916317, 21.506582>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.613976, 41.920860, 21.516012>,  <38.013596, 41.928432, 21.531727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613976, 41.920860, 21.516012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003376, 0.864628, -0.502401,
		0.043479, -0.502055, -0.863742,
		-0.999049, -0.018928, -0.039288,
		37.314262, 41.915180, 21.504227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950031, 42.337437, 20.989676>,  <38.013596, 41.928432, 21.531727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950031, 42.337437, 20.989676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566250, 42.293797, 21.093630>,  <37.335979, 42.267612, 21.156002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.566250, 42.293797, 21.093630>,  <37.950031, 42.337437, 20.989676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566250, 42.293797, 21.093630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213579, 0.883095, -0.417766,
		-0.183926, -0.456334, -0.870592,
		-0.959456, -0.109102, 0.259887,
		37.278412, 42.261066, 21.171597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.590466, 42.389153, 20.370445>,  <37.950031, 42.337437, 20.989676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.590466, 42.389153, 20.370445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339958, 42.454708, 20.675320>,  <37.189655, 42.494041, 20.858244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339958, 42.454708, 20.675320>,  <37.590466, 42.389153, 20.370445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339958, 42.454708, 20.675320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342708, 0.820254, -0.457968,
		-0.700241, -0.548018, -0.457534,
		-0.626269, 0.163888, 0.762186,
		37.152077, 42.503876, 20.903975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.967724, 42.483856, 20.110228>,  <37.590466, 42.389153, 20.370445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.967724, 42.483856, 20.110228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012596, 42.679096, 20.456448>,  <37.039520, 42.796242, 20.664179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012596, 42.679096, 20.456448>,  <36.967724, 42.483856, 20.110228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012596, 42.679096, 20.456448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311609, 0.844389, -0.435782,
		-0.943565, -0.220827, 0.246820,
		0.112180, 0.488101, 0.865548,
		37.046249, 42.825527, 20.716112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371223, 42.830818, 20.254032>,  <36.967724, 42.483856, 20.110228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371223, 42.830818, 20.254032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663048, 43.028378, 20.443262>,  <36.838142, 43.146915, 20.556799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.663048, 43.028378, 20.443262>,  <36.371223, 42.830818, 20.254032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663048, 43.028378, 20.443262> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359636, 0.865413, -0.348889,
		-0.581720, 0.084402, 0.808998,
		0.729564, 0.493900, 0.473074,
		36.881916, 43.176548, 20.585184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143887, 43.452427, 20.329927>,  <36.371223, 42.830818, 20.254032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143887, 43.452427, 20.329927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532093, 43.528782, 20.388786>,  <36.765018, 43.574596, 20.424103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532093, 43.528782, 20.388786>,  <36.143887, 43.452427, 20.329927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532093, 43.528782, 20.388786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146017, 0.951396, -0.271156,
		-0.191758, 0.241676, 0.951221,
		0.970519, 0.190891, 0.147148,
		36.823250, 43.586048, 20.432930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579231, 43.899616, 19.904020>,  <36.143887, 43.452427, 20.329927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579231, 43.899616, 19.904020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789528, 44.111843, 20.169981>,  <35.915707, 44.239182, 20.329557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.789528, 44.111843, 20.169981>,  <35.579231, 43.899616, 19.904020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789528, 44.111843, 20.169981> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051618, -0.800101, 0.597640,
		0.849078, -0.279882, -0.448031,
		0.525739, 0.530570, 0.664902,
		35.947250, 44.271015, 20.369452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118465, 43.500904, 20.136698>,  <35.579231, 43.899616, 19.904020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118465, 43.500904, 20.136698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923855, 43.275276, 19.869829>,  <34.807087, 43.139900, 19.709707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.923855, 43.275276, 19.869829>,  <35.118465, 43.500904, 20.136698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923855, 43.275276, 19.869829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439837, -0.501675, 0.744893,
		-0.754873, 0.655858, -0.004018,
		-0.486529, -0.564067, -0.667172,
		34.777897, 43.106056, 19.669678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574406, 43.131531, 20.555021>,  <35.118465, 43.500904, 20.136698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574406, 43.131531, 20.555021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555557, 42.937695, 20.205633>,  <34.544250, 42.821392, 19.996000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.555557, 42.937695, 20.205633>,  <34.574406, 43.131531, 20.555021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555557, 42.937695, 20.205633> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422885, -0.782536, 0.456953,
		-0.904958, 0.390909, -0.168054,
		-0.047118, -0.484591, -0.873471,
		34.541420, 42.792316, 19.943592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850346, 42.911747, 20.477804>,  <34.574406, 43.131531, 20.555021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850346, 42.911747, 20.477804> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073177, 42.676212, 20.243559>,  <34.206875, 42.534893, 20.103012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.073177, 42.676212, 20.243559>,  <33.850346, 42.911747, 20.477804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.073177, 42.676212, 20.243559> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412242, -0.808223, 0.420514,
		-0.720917, 0.007154, -0.692985,
		0.557078, -0.588833, -0.585611,
		34.240299, 42.499561, 20.067875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394920, 42.246864, 20.107164>,  <33.850346, 42.911747, 20.477804>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394920, 42.246864, 20.107164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786045, 42.167580, 20.134310>,  <34.020718, 42.120010, 20.150597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.786045, 42.167580, 20.134310>,  <33.394920, 42.246864, 20.107164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786045, 42.167580, 20.134310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206003, -0.850658, 0.483677,
		-0.038143, -0.486922, -0.872612,
		0.977808, -0.198210, 0.067861,
		34.079388, 42.108116, 20.154669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446838, 41.559467, 19.839830>,  <33.394920, 42.246864, 20.107164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446838, 41.559467, 19.839830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779827, 41.618805, 20.053368>,  <33.979618, 41.654408, 20.181490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.779827, 41.618805, 20.053368>,  <33.446838, 41.559467, 19.839830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779827, 41.618805, 20.053368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122772, -0.890159, 0.438799,
		0.540297, -0.430828, -0.722818,
		0.832470, 0.148340, 0.533844,
		34.029568, 41.663307, 20.213520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777851, 40.856514, 19.796757>,  <33.446838, 41.559467, 19.839830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777851, 40.856514, 19.796757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966820, 41.042610, 20.096188>,  <34.080200, 41.154266, 20.275846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.966820, 41.042610, 20.096188>,  <33.777851, 40.856514, 19.796757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966820, 41.042610, 20.096188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047387, -0.861512, 0.505521,
		0.880098, -0.203346, -0.429043,
		0.472421, 0.465239, 0.748579,
		34.108547, 41.182182, 20.320761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227863, 40.281796, 20.107716>,  <33.777851, 40.856514, 19.796757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227863, 40.281796, 20.107716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224598, 40.568192, 20.386942>,  <34.222641, 40.740028, 20.554478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.224598, 40.568192, 20.386942>,  <34.227863, 40.281796, 20.107716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224598, 40.568192, 20.386942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068132, -0.696066, 0.714737,
		0.997643, 0.053393, -0.043102,
		-0.008160, 0.715989, 0.698064,
		34.222149, 40.782990, 20.596361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752796, 40.082554, 20.551643>,  <34.227863, 40.281796, 20.107716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752796, 40.082554, 20.551643> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462345, 40.294758, 20.726595>,  <34.288074, 40.422081, 20.831566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.462345, 40.294758, 20.726595>,  <34.752796, 40.082554, 20.551643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462345, 40.294758, 20.726595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011405, -0.626748, 0.779139,
		0.687468, 0.570741, 0.449047,
		-0.726125, 0.530511, 0.437379,
		34.244507, 40.453911, 20.857809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154301, 40.133022, 21.160383>,  <34.752796, 40.082554, 20.551643>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154301, 40.133022, 21.160383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768551, 40.216953, 21.224834>,  <34.537102, 40.267311, 21.263504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.768551, 40.216953, 21.224834>,  <35.154301, 40.133022, 21.160383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768551, 40.216953, 21.224834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093147, -0.300745, 0.949145,
		0.247617, 0.930336, 0.270484,
		-0.964370, 0.209829, 0.161127,
		34.479240, 40.279903, 21.273172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078873, 40.590309, 21.739271>,  <35.154301, 40.133022, 21.160383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078873, 40.590309, 21.739271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766247, 40.346798, 21.684795>,  <34.578671, 40.200691, 21.652109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.766247, 40.346798, 21.684795>,  <35.078873, 40.590309, 21.739271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766247, 40.346798, 21.684795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226849, -0.480722, 0.847022,
		-0.581115, 0.631108, 0.513816,
		-0.781565, -0.608776, -0.136189,
		34.531776, 40.164165, 21.643938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022976, 40.292385, 22.402418>,  <35.078873, 40.590309, 21.739271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022976, 40.292385, 22.402418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732582, 40.092739, 22.213175>,  <34.558346, 39.972950, 22.099628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.732582, 40.092739, 22.213175>,  <35.022976, 40.292385, 22.402418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.732582, 40.092739, 22.213175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066037, -0.735360, 0.674452,
		-0.684536, 0.458397, 0.566818,
		-0.725982, -0.499118, -0.473109,
		34.514786, 39.943005, 22.071241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506359, 40.032299, 22.939690>,  <35.022976, 40.292385, 22.402418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506359, 40.032299, 22.939690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.449497, 39.793407, 22.623940>,  <34.415382, 39.650074, 22.434488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.449497, 39.793407, 22.623940>,  <34.506359, 40.032299, 22.939690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.449497, 39.793407, 22.623940> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132025, -0.778910, 0.613082,
		-0.981001, 0.191368, 0.031875,
		-0.142152, -0.597225, -0.789376,
		34.406853, 39.614239, 22.387127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122047, 39.563545, 23.209045>,  <34.506359, 40.032299, 22.939690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122047, 39.563545, 23.209045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236271, 39.379257, 22.872904>,  <34.304806, 39.268684, 22.671219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.236271, 39.379257, 22.872904>,  <34.122047, 39.563545, 23.209045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236271, 39.379257, 22.872904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135513, -0.887466, 0.440501,
		-0.948731, -0.011912, -0.315860,
		0.285562, -0.460720, -0.840352,
		34.321938, 39.241043, 22.620798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571671, 39.093502, 22.969927>,  <34.122047, 39.563545, 23.209045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571671, 39.093502, 22.969927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897282, 38.969757, 22.773291>,  <34.092648, 38.895512, 22.655310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.897282, 38.969757, 22.773291>,  <33.571671, 39.093502, 22.969927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897282, 38.969757, 22.773291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074731, -0.895104, 0.439549,
		-0.576004, -0.321067, -0.751755,
		0.814024, -0.309362, -0.491590,
		34.141487, 38.876949, 22.625814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324474, 38.478626, 22.625902>,  <33.571671, 39.093502, 22.969927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324474, 38.478626, 22.625902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721989, 38.443394, 22.598703>,  <33.960499, 38.422253, 22.582384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721989, 38.443394, 22.598703>,  <33.324474, 38.478626, 22.625902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721989, 38.443394, 22.598703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081329, -0.992017, 0.096376,
		-0.075943, -0.090247, -0.993020,
		0.993790, -0.088080, -0.067997,
		34.020126, 38.416969, 22.578304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541729, 37.952919, 21.983292>,  <33.324474, 38.478626, 22.625902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541729, 37.952919, 21.983292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841534, 37.961628, 22.247944>,  <34.021416, 37.966854, 22.406734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.841534, 37.961628, 22.247944>,  <33.541729, 37.952919, 21.983292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841534, 37.961628, 22.247944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215370, -0.937068, 0.274807,
		0.625975, -0.348467, -0.697658,
		0.749515, 0.021768, 0.661630,
		34.066387, 37.968159, 22.446432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861412, 37.386406, 21.919975>,  <33.541729, 37.952919, 21.983292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861412, 37.386406, 21.919975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967758, 37.479351, 22.294210>,  <34.031567, 37.535118, 22.518751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.967758, 37.479351, 22.294210>,  <33.861412, 37.386406, 21.919975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967758, 37.479351, 22.294210> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171642, -0.943598, 0.283130,
		0.948607, -0.235860, -0.210986,
		0.265865, 0.232365, 0.935586,
		34.047516, 37.549061, 22.574886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217979, 36.728886, 22.134830>,  <33.861412, 37.386406, 21.919975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217979, 36.728886, 22.134830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140976, 36.927990, 22.473103>,  <34.094772, 37.047451, 22.676065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140976, 36.927990, 22.473103>,  <34.217979, 36.728886, 22.134830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140976, 36.927990, 22.473103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241094, -0.859377, 0.450937,
		0.951216, -0.117077, 0.285448,
		-0.192514, 0.497759, 0.845680,
		34.083221, 37.077316, 22.726807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671249, 36.485722, 22.793333>,  <34.217979, 36.728886, 22.134830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671249, 36.485722, 22.793333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334484, 36.636406, 22.947878>,  <34.132423, 36.726814, 23.040606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.334484, 36.636406, 22.947878>,  <34.671249, 36.485722, 22.793333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.334484, 36.636406, 22.947878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038355, -0.755962, 0.653491,
		0.538250, 0.535363, 0.650902,
		-0.841912, 0.376706, 0.386362,
		34.081909, 36.749416, 23.063787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.336315, 35.530773, 28.461018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940990, 35.470844, 28.449749>,  <36.703796, 35.434887, 28.442987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.940990, 35.470844, 28.449749>,  <37.336315, 35.530773, 28.461018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.940990, 35.470844, 28.449749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030398, -0.374745, 0.926629,
		-0.149388, 0.914942, 0.374919,
		-0.988311, -0.149824, -0.028170,
		36.644497, 35.425896, 28.441298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.214172, 35.944134, 28.978451>,  <37.336315, 35.530773, 28.461018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.214172, 35.944134, 28.978451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.890865, 35.715870, 28.920418>,  <36.696880, 35.578911, 28.885597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.890865, 35.715870, 28.920418>,  <37.214172, 35.944134, 28.978451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890865, 35.715870, 28.920418> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007989, -0.257004, 0.966377,
		-0.588757, 0.779935, 0.212288,
		-0.808270, -0.570658, -0.145082,
		36.648384, 35.544674, 28.876894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775166, 36.033001, 29.593063>,  <37.214172, 35.944134, 28.978451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775166, 36.033001, 29.593063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.626129, 35.695492, 29.438549>,  <36.536709, 35.492985, 29.345840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.626129, 35.695492, 29.438549>,  <36.775166, 36.033001, 29.593063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.626129, 35.695492, 29.438549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080070, -0.385478, 0.919237,
		-0.924534, 0.373431, 0.076065,
		-0.372593, -0.843775, -0.386288,
		36.514351, 35.442360, 29.322662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031151, 35.823032, 29.972063>,  <36.775166, 36.033001, 29.593063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031151, 35.823032, 29.972063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.217930, 35.501228, 29.825243>,  <36.329998, 35.308147, 29.737152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.217930, 35.501228, 29.825243>,  <36.031151, 35.823032, 29.972063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217930, 35.501228, 29.825243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053670, -0.440098, 0.896344,
		-0.882654, -0.398847, -0.248681,
		0.466949, -0.804509, -0.367048,
		36.358013, 35.259876, 29.715128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700947, 35.311718, 30.233448>,  <36.031151, 35.823032, 29.972063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700947, 35.311718, 30.233448> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.044933, 35.141922, 30.120125>,  <36.251324, 35.040043, 30.052132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.044933, 35.141922, 30.120125>,  <35.700947, 35.311718, 30.233448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044933, 35.141922, 30.120125> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012956, -0.536785, 0.843619,
		-0.510180, -0.729158, -0.456120,
		0.859970, -0.424488, -0.283304,
		36.302925, 35.014576, 30.035133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.575871, 34.622562, 30.388643>,  <35.700947, 35.311718, 30.233448>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.575871, 34.622562, 30.388643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.974869, 34.641617, 30.367704>,  <36.214268, 34.653049, 30.355141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.974869, 34.641617, 30.367704>,  <35.575871, 34.622562, 30.388643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.974869, 34.641617, 30.367704> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070760, -0.686972, 0.723230,
		-0.001509, -0.725121, -0.688620,
		0.997492, 0.047636, -0.052346,
		36.274117, 34.655907, 30.352001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799679, 33.822777, 30.477457>,  <35.575871, 34.622562, 30.388643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799679, 33.822777, 30.477457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.126709, 34.038940, 30.556993>,  <36.322926, 34.168640, 30.604715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.126709, 34.038940, 30.556993>,  <35.799679, 33.822777, 30.477457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126709, 34.038940, 30.556993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147847, -0.530738, 0.834541,
		0.556524, -0.652898, -0.513814,
		0.817571, 0.540408, 0.198839,
		36.371979, 34.201061, 30.616646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350964, 33.385078, 30.536133>,  <35.799679, 33.822777, 30.477457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350964, 33.385078, 30.536133> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.422371, 33.709484, 30.758984>,  <36.465218, 33.904125, 30.892694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.422371, 33.709484, 30.758984>,  <36.350964, 33.385078, 30.536133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422371, 33.709484, 30.758984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053072, -0.573334, 0.817601,
		0.982503, -0.116393, -0.145395,
		0.178523, 0.811012, 0.557126,
		36.475929, 33.952789, 30.926121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897415, 33.211971, 30.893368>,  <36.350964, 33.385078, 30.536133>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897415, 33.211971, 30.893368> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.729073, 33.510323, 31.099876>,  <36.628067, 33.689335, 31.223782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.729073, 33.510323, 31.099876>,  <36.897415, 33.211971, 30.893368>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.729073, 33.510323, 31.099876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102064, -0.526580, 0.843976,
		0.901366, 0.407888, 0.145488,
		-0.420859, 0.745883, 0.516272,
		36.602814, 33.734089, 31.254759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367496, 33.420341, 31.489967>,  <36.897415, 33.211971, 30.893368>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367496, 33.420341, 31.489967> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005802, 33.554581, 31.595592>,  <36.788784, 33.635124, 31.658968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005802, 33.554581, 31.595592>,  <37.367496, 33.420341, 31.489967>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005802, 33.554581, 31.595592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144579, -0.341262, 0.928783,
		0.401810, 0.878019, 0.260062,
		-0.904238, 0.335594, 0.264065,
		36.734531, 33.655258, 31.674812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460388, 33.808674, 32.099415>,  <37.367496, 33.420341, 31.489967>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460388, 33.808674, 32.099415> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.083912, 33.677250, 32.067917>,  <36.858025, 33.598396, 32.049019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.083912, 33.677250, 32.067917>,  <37.460388, 33.808674, 32.099415>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083912, 33.677250, 32.067917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065168, -0.405218, 0.911894,
		-0.331522, 0.853138, 0.402801,
		-0.941194, -0.328562, -0.078742,
		36.801552, 33.578682, 32.044292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314106, 33.616863, 32.749886>,  <37.460388, 33.808674, 32.099415>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314106, 33.616863, 32.749886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.004742, 33.475395, 32.539455>,  <36.819122, 33.390514, 32.413197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.004742, 33.475395, 32.539455>,  <37.314106, 33.616863, 32.749886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.004742, 33.475395, 32.539455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112901, -0.739769, 0.663322,
		-0.623773, 0.572413, 0.532213,
		-0.773409, -0.353675, -0.526073,
		36.772720, 33.369293, 32.381634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.987038, 33.227383, 33.364220>,  <37.314106, 33.616863, 32.749886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.987038, 33.227383, 33.364220> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.361454, 33.088612, 33.340637>,  <37.586102, 33.005348, 33.326488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.361454, 33.088612, 33.340637>,  <36.987038, 33.227383, 33.364220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361454, 33.088612, 33.340637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350154, 0.934894, 0.058009,
		0.034990, -0.074942, 0.996574,
		0.936038, -0.346924, -0.058953,
		37.642265, 32.984535, 33.322952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360645, 33.435123, 33.872208>,  <36.987038, 33.227383, 33.364220>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360645, 33.435123, 33.872208> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.637085, 33.401058, 33.585117>,  <37.802948, 33.380619, 33.412865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.637085, 33.401058, 33.585117>,  <37.360645, 33.435123, 33.872208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.637085, 33.401058, 33.585117> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281779, 0.946204, 0.159056,
		0.665566, -0.312163, 0.677920,
		0.691102, -0.085161, -0.717723,
		37.844414, 33.375511, 33.369801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073833, 33.899094, 34.374214>,  <37.360645, 33.435123, 33.872208>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073833, 33.899094, 34.374214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.992832, 34.201710, 34.622936>,  <36.944233, 34.383278, 34.772171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.992832, 34.201710, 34.622936>,  <37.073833, 33.899094, 34.374214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.992832, 34.201710, 34.622936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187640, 0.593220, -0.782867,
		-0.961137, -0.275209, 0.021827,
		-0.202504, 0.756538, 0.621806,
		36.932079, 34.428673, 34.809479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481998, 34.203747, 34.068443>,  <37.073833, 33.899094, 34.374214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481998, 34.203747, 34.068443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.631901, 34.475132, 34.321186>,  <36.721840, 34.637962, 34.472832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.631901, 34.475132, 34.321186>,  <36.481998, 34.203747, 34.068443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.631901, 34.475132, 34.321186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072220, 0.700815, -0.709678,
		-0.924308, 0.220321, 0.311631,
		0.374753, 0.678466, 0.631857,
		36.744328, 34.678673, 34.510742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955719, 34.675339, 34.154823>,  <36.481998, 34.203747, 34.068443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955719, 34.675339, 34.154823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.292866, 34.866959, 34.252872>,  <36.495155, 34.981930, 34.311703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.292866, 34.866959, 34.252872>,  <35.955719, 34.675339, 34.154823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292866, 34.866959, 34.252872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121410, 0.613065, -0.780648,
		-0.524244, 0.628224, 0.574895,
		0.842869, 0.479047, 0.245123,
		36.545727, 35.010674, 34.326408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884480, 35.361767, 34.033936>,  <35.955719, 34.675339, 34.154823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884480, 35.361767, 34.033936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283783, 35.369736, 34.056171>,  <36.523365, 35.374519, 34.069511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.283783, 35.369736, 34.056171>,  <35.884480, 35.361767, 34.033936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283783, 35.369736, 34.056171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028919, 0.655799, -0.754382,
		-0.051486, 0.754673, 0.654078,
		0.998255, 0.019925, 0.055588,
		36.583260, 35.375713, 34.072849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078861, 35.990845, 33.693153>,  <35.884480, 35.361767, 34.033936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078861, 35.990845, 33.693153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.434029, 35.806854, 33.691166>,  <36.647129, 35.696461, 33.689976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.434029, 35.806854, 33.691166>,  <36.078861, 35.990845, 33.693153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434029, 35.806854, 33.691166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188232, 0.373161, -0.908471,
		0.419730, 0.805712, 0.417918,
		0.887917, -0.459978, -0.004966,
		36.700405, 35.668861, 33.689674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.567314, 36.485027, 33.633621>,  <36.078861, 35.990845, 33.693153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.567314, 36.485027, 33.633621> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710438, 36.137402, 33.496979>,  <36.796310, 35.928825, 33.414993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.710438, 36.137402, 33.496979>,  <36.567314, 36.485027, 33.633621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.710438, 36.137402, 33.496979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158489, 0.417039, -0.894963,
		0.920247, 0.266083, 0.286958,
		0.357807, -0.869067, -0.341608,
		36.817780, 35.876682, 33.394497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342670, 36.580383, 33.339199>,  <36.567314, 36.485027, 33.633621>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342670, 36.580383, 33.339199> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.163277, 36.258045, 33.184551>,  <37.055641, 36.064644, 33.091763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.163277, 36.258045, 33.184551>,  <37.342670, 36.580383, 33.339199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.163277, 36.258045, 33.184551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154786, 0.356004, -0.921576,
		0.880285, -0.473157, -0.034929,
		-0.448485, -0.805843, -0.386624,
		37.028732, 36.016293, 33.068565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702969, 36.502850, 32.821728>,  <37.342670, 36.580383, 33.339199>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702969, 36.502850, 32.821728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375160, 36.288692, 32.740005>,  <37.178474, 36.160198, 32.690971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.375160, 36.288692, 32.740005>,  <37.702969, 36.502850, 32.821728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375160, 36.288692, 32.740005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000066, 0.356432, -0.934321,
		0.573050, -0.765709, -0.292068,
		-0.819520, -0.535394, -0.204304,
		37.129303, 36.128075, 32.678715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.862160, 36.315022, 32.154903>,  <37.702969, 36.502850, 32.821728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.862160, 36.315022, 32.154903> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463131, 36.290710, 32.168453>,  <37.223713, 36.276123, 32.176582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.463131, 36.290710, 32.168453>,  <37.862160, 36.315022, 32.154903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.463131, 36.290710, 32.168453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051139, 0.310258, -0.949276,
		0.047178, -0.948708, -0.312614,
		-0.997577, -0.060772, 0.033879,
		37.163857, 36.272480, 32.178616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.663746, 35.893173, 31.564699>,  <37.862160, 36.315022, 32.154903>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.663746, 35.893173, 31.564699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.334141, 36.095753, 31.666296>,  <37.136379, 36.217300, 31.727255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.334141, 36.095753, 31.666296>,  <37.663746, 35.893173, 31.564699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.334141, 36.095753, 31.666296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068293, 0.356244, -0.931894,
		-0.562440, -0.785239, -0.258963,
		-0.824013, 0.506449, 0.253992,
		37.086937, 36.247688, 31.742493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116802, 35.813515, 31.052156>,  <37.663746, 35.893173, 31.564699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116802, 35.813515, 31.052156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005955, 36.151093, 31.235880>,  <36.939445, 36.353638, 31.346113>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.005955, 36.151093, 31.235880>,  <37.116802, 35.813515, 31.052156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005955, 36.151093, 31.235880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157878, 0.431536, -0.888173,
		-0.947776, -0.318646, 0.013653,
		-0.277121, 0.843944, 0.459307,
		36.922817, 36.404274, 31.373672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552380, 36.149254, 30.641939>,  <37.116802, 35.813515, 31.052156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552380, 36.149254, 30.641939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.693237, 36.448341, 30.867119>,  <36.777752, 36.627792, 31.002226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.693237, 36.448341, 30.867119>,  <36.552380, 36.149254, 30.641939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693237, 36.448341, 30.867119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073547, 0.621724, -0.779776,
		-0.933051, 0.233191, 0.273929,
		0.352145, 0.747717, 0.562950,
		36.798882, 36.672657, 31.036003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134296, 36.744781, 30.525749>,  <36.552380, 36.149254, 30.641939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134296, 36.744781, 30.525749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463951, 36.907703, 30.683176>,  <36.661743, 37.005459, 30.777632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.463951, 36.907703, 30.683176>,  <36.134296, 36.744781, 30.525749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463951, 36.907703, 30.683176> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123615, 0.807471, -0.576810,
		-0.552735, 0.426720, 0.715817,
		0.824138, 0.407309, 0.393569,
		36.711193, 37.029896, 30.801247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.976986, 37.502068, 30.483606>,  <36.134296, 36.744781, 30.525749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.976986, 37.502068, 30.483606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371403, 37.502502, 30.550200>,  <36.608055, 37.502766, 30.590155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.371403, 37.502502, 30.550200>,  <35.976986, 37.502068, 30.483606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371403, 37.502502, 30.550200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122637, 0.671534, -0.730755,
		-0.112596, 0.740973, 0.662028,
		0.986044, 0.001091, 0.166482,
		36.667217, 37.502831, 30.600143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473114, 37.722408, 30.948679>,  <35.976986, 37.502068, 30.483606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473114, 37.722408, 30.948679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.085155, 37.818562, 30.933123>,  <34.852379, 37.876255, 30.923788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.085155, 37.818562, 30.933123>,  <35.473114, 37.722408, 30.948679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085155, 37.818562, 30.933123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213270, -0.761455, 0.612129,
		0.117533, 0.601997, 0.789801,
		-0.969898, 0.240386, -0.038892,
		34.794186, 37.890678, 30.921455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227814, 37.744225, 31.631472>,  <35.473114, 37.722408, 30.948679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227814, 37.744225, 31.631472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.882500, 37.718983, 31.431170>,  <34.675312, 37.703838, 31.310989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.882500, 37.718983, 31.431170>,  <35.227814, 37.744225, 31.631472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.882500, 37.718983, 31.431170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366753, -0.603172, 0.708290,
		-0.346739, 0.795110, 0.497566,
		-0.863287, -0.063108, -0.500753,
		34.623512, 37.700050, 31.280943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724731, 37.863503, 32.141499>,  <35.227814, 37.744225, 31.631472>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724731, 37.863503, 32.141499> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.512337, 37.692520, 31.848831>,  <34.384899, 37.589931, 31.673231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.512337, 37.692520, 31.848831>,  <34.724731, 37.863503, 32.141499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.512337, 37.692520, 31.848831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349851, -0.675832, 0.648734,
		-0.771788, 0.600443, 0.209312,
		-0.530987, -0.427457, -0.731665,
		34.353039, 37.564281, 31.629332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.074413, 37.695229, 32.457535>,  <34.724731, 37.863503, 32.141499>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.074413, 37.695229, 32.457535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.127491, 37.475910, 32.127258>,  <34.159336, 37.344318, 31.929092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.127491, 37.475910, 32.127258>,  <34.074413, 37.695229, 32.457535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.127491, 37.475910, 32.127258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249619, -0.824691, 0.507519,
		-0.959210, 0.138764, -0.246294,
		0.132691, -0.548297, -0.825690,
		34.167297, 37.311420, 31.879551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423649, 37.526749, 32.215675>,  <34.074413, 37.695229, 32.457535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423649, 37.526749, 32.215675> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704624, 37.265278, 32.103046>,  <33.873211, 37.108395, 32.035469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.704624, 37.265278, 32.103046>,  <33.423649, 37.526749, 32.215675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704624, 37.265278, 32.103046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513889, -0.739510, 0.434792,
		-0.492442, -0.160715, -0.855378,
		0.702438, -0.653679, -0.281576,
		33.915356, 37.069176, 32.018574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007339, 36.949158, 32.103561>,  <33.423649, 37.526749, 32.215675>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007339, 36.949158, 32.103561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.383881, 36.821125, 32.146271>,  <33.609806, 36.744305, 32.171898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.383881, 36.821125, 32.146271>,  <33.007339, 36.949158, 32.103561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383881, 36.821125, 32.146271> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316230, -0.726518, 0.610058,
		-0.117696, -0.608045, -0.785130,
		0.941353, -0.320083, 0.106774,
		33.666286, 36.725101, 32.178303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941650, 36.277496, 32.059357>,  <33.007339, 36.949158, 32.103561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941650, 36.277496, 32.059357> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.304394, 36.312153, 32.224327>,  <33.522041, 36.332947, 32.323311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.304394, 36.312153, 32.224327>,  <32.941650, 36.277496, 32.059357>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304394, 36.312153, 32.224327> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219753, -0.737831, 0.638212,
		0.359598, -0.669401, -0.650070,
		0.906861, 0.086645, 0.412425,
		33.576454, 36.338146, 32.348053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209473, 35.546673, 32.221813>,  <32.941650, 36.277496, 32.059357>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209473, 35.546673, 32.221813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.372295, 35.818089, 32.466396>,  <33.469990, 35.980938, 32.613148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.372295, 35.818089, 32.466396>,  <33.209473, 35.546673, 32.221813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.372295, 35.818089, 32.466396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025471, -0.677602, 0.734987,
		0.913046, -0.283610, -0.293108,
		0.407060, 0.678543, 0.611458,
		33.494415, 36.021652, 32.649834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.635338, 35.149940, 32.597023>,  <33.209473, 35.546673, 32.221813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.635338, 35.149940, 32.597023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.608421, 35.481819, 32.818676>,  <33.592274, 35.680946, 32.951668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.608421, 35.481819, 32.818676>,  <33.635338, 35.149940, 32.597023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.608421, 35.481819, 32.818676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242008, -0.525237, 0.815817,
		0.967938, 0.189001, -0.165452,
		-0.067289, 0.829701, 0.554137,
		33.588234, 35.730728, 32.984917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277000, 35.212616, 33.039165>,  <33.635338, 35.149940, 32.597023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277000, 35.212616, 33.039165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.988239, 35.431446, 33.208664>,  <33.814983, 35.562744, 33.310364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.988239, 35.431446, 33.208664>,  <34.277000, 35.212616, 33.039165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.988239, 35.431446, 33.208664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056272, -0.656741, 0.752014,
		0.689699, 0.519038, 0.504891,
		-0.721906, 0.547074, 0.423746,
		33.771667, 35.595570, 33.335789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394630, 35.271351, 33.797672>,  <34.277000, 35.212616, 33.039165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394630, 35.271351, 33.797672> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.010056, 35.371822, 33.752865>,  <33.779312, 35.432106, 33.725979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.010056, 35.371822, 33.752865>,  <34.394630, 35.271351, 33.797672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010056, 35.371822, 33.752865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249041, -0.622275, 0.742127,
		0.116699, 0.741406, 0.660832,
		-0.961436, 0.251180, -0.112022,
		33.721626, 35.447178, 33.719257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212948, 35.603775, 34.477135>,  <34.394630, 35.271351, 33.797672>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212948, 35.603775, 34.477135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.889679, 35.452892, 34.296219>,  <33.695717, 35.362362, 34.187668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.889679, 35.452892, 34.296219>,  <34.212948, 35.603775, 34.477135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.889679, 35.452892, 34.296219> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201983, -0.543874, 0.814496,
		-0.553223, 0.749611, 0.363357,
		-0.808175, -0.377206, -0.452292,
		33.647228, 35.339729, 34.160530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.682709, 41.209484, 29.220778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360771, 41.045635, 29.048996>,  <35.167606, 40.947327, 28.945927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360771, 41.045635, 29.048996>,  <35.682709, 41.209484, 29.220778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360771, 41.045635, 29.048996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212544, -0.476680, 0.852996,
		-0.554115, 0.777810, 0.296593,
		-0.804849, -0.409619, -0.429454,
		35.119316, 40.922749, 28.920160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.147888, 41.311741, 29.715429>,  <35.682709, 41.209484, 29.220778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.147888, 41.311741, 29.715429> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039455, 41.021950, 29.461926>,  <34.974396, 40.848076, 29.309824>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039455, 41.021950, 29.461926>,  <35.147888, 41.311741, 29.715429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039455, 41.021950, 29.461926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029994, -0.664449, 0.746732,
		-0.962089, 0.183417, 0.201850,
		-0.271082, -0.724477, -0.633757,
		34.958130, 40.804607, 29.271799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.607391, 41.067284, 30.093201>,  <35.147888, 41.311741, 29.715429>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.607391, 41.067284, 30.093201> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701710, 40.776787, 29.834909>,  <34.758301, 40.602489, 29.679934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701710, 40.776787, 29.834909>,  <34.607391, 41.067284, 30.093201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701710, 40.776787, 29.834909> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122354, -0.681365, 0.721645,
		-0.964070, -0.091153, -0.249521,
		0.235795, -0.726246, -0.645730,
		34.772449, 40.558914, 29.641190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222160, 40.486984, 30.335659>,  <34.607391, 41.067284, 30.093201>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222160, 40.486984, 30.335659> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463680, 40.302490, 30.075603>,  <34.608593, 40.191795, 29.919569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.463680, 40.302490, 30.075603>,  <34.222160, 40.486984, 30.335659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463680, 40.302490, 30.075603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087321, -0.848962, 0.521190,
		-0.792335, -0.257927, -0.552883,
		0.603805, -0.461235, -0.650139,
		34.644821, 40.164120, 29.880562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860474, 39.904095, 30.001596>,  <34.222160, 40.486984, 30.335659>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860474, 39.904095, 30.001596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254864, 39.844662, 29.971220>,  <34.491501, 39.809002, 29.952995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254864, 39.844662, 29.971220>,  <33.860474, 39.904095, 30.001596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254864, 39.844662, 29.971220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107797, -0.914562, 0.389816,
		-0.127370, -0.376165, -0.917757,
		0.985980, -0.148582, -0.075939,
		34.550659, 39.800087, 29.948439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871975, 39.091560, 29.752916>,  <33.860474, 39.904095, 30.001596>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871975, 39.091560, 29.752916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252693, 39.158916, 29.855465>,  <34.481125, 39.199329, 29.916994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.252693, 39.158916, 29.855465>,  <33.871975, 39.091560, 29.752916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252693, 39.158916, 29.855465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017870, -0.803967, 0.594406,
		0.306209, -0.570335, -0.762204,
		0.951797, 0.168391, 0.256374,
		34.538231, 39.209435, 29.932377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.323593, 38.498932, 29.578798>,  <33.871975, 39.091560, 29.752916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.323593, 38.498932, 29.578798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514191, 38.688263, 29.875154>,  <34.628548, 38.801861, 30.052969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514191, 38.688263, 29.875154>,  <34.323593, 38.498932, 29.578798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514191, 38.688263, 29.875154> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063373, -0.859006, 0.508028,
		0.876892, -0.195119, -0.439305,
		0.476492, 0.473326, 0.740891,
		34.657139, 38.830261, 30.097422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853733, 38.045929, 29.729424>,  <34.323593, 38.498932, 29.578798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853733, 38.045929, 29.729424> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826725, 38.294655, 30.041523>,  <34.810520, 38.443890, 30.228783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826725, 38.294655, 30.041523>,  <34.853733, 38.045929, 29.729424>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826725, 38.294655, 30.041523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106782, -0.773039, 0.625306,
		0.991987, 0.125538, -0.014203,
		-0.067520, 0.621812, 0.780250,
		34.806469, 38.481197, 30.275599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491589, 38.115974, 30.305729>,  <34.853733, 38.045929, 29.729424>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491589, 38.115974, 30.305729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144382, 38.193611, 30.488544>,  <34.936058, 38.240192, 30.598234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144382, 38.193611, 30.488544>,  <35.491589, 38.115974, 30.305729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144382, 38.193611, 30.488544> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065721, -0.867438, 0.493185,
		0.492174, 0.458128, 0.740191,
		-0.868012, 0.194087, 0.457039,
		34.883980, 38.251839, 30.625656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260403, 38.218872, 30.631275>,  <35.491589, 38.115974, 30.305729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260403, 38.218872, 30.631275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589252, 38.023846, 30.513708>,  <36.786564, 37.906830, 30.443169>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589252, 38.023846, 30.513708>,  <36.260403, 38.218872, 30.631275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589252, 38.023846, 30.513708> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265314, 0.784905, -0.559941,
		0.503706, 0.382361, 0.774648,
		0.822125, -0.487570, -0.293915,
		36.835892, 37.877575, 30.425533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738159, 38.642712, 30.679005>,  <36.260403, 38.218872, 30.631275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738159, 38.642712, 30.679005> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918087, 38.387131, 30.429396>,  <37.026043, 38.233784, 30.279631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918087, 38.387131, 30.429396>,  <36.738159, 38.642712, 30.679005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.918087, 38.387131, 30.429396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344568, 0.768765, -0.538770,
		0.823974, 0.027332, 0.565968,
		0.449822, -0.638947, -0.624024,
		37.053032, 38.195446, 30.242188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416245, 38.870941, 30.708662>,  <36.738159, 38.642712, 30.679005>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416245, 38.870941, 30.708662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361305, 38.651371, 30.378859>,  <37.328342, 38.519627, 30.180977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.361305, 38.651371, 30.378859>,  <37.416245, 38.870941, 30.708662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361305, 38.651371, 30.378859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114510, 0.818017, -0.563680,
		0.983882, -0.171832, -0.049492,
		-0.137343, -0.548928, -0.824509,
		37.320103, 38.486694, 30.131506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027500, 38.914284, 30.332947>,  <37.416245, 38.870941, 30.708662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027500, 38.914284, 30.332947> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750320, 38.818935, 30.060770>,  <37.584011, 38.761726, 29.897463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750320, 38.818935, 30.060770>,  <38.027500, 38.914284, 30.332947>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.750320, 38.818935, 30.060770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306473, 0.756874, -0.577248,
		0.652608, -0.608541, -0.451421,
		-0.692948, -0.238368, -0.680443,
		37.542435, 38.747425, 29.856636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.389694, 38.960842, 29.739782>,  <38.027500, 38.914284, 30.332947>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.389694, 38.960842, 29.739782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022480, 38.945843, 29.581896>,  <37.802151, 38.936844, 29.487164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022480, 38.945843, 29.581896>,  <38.389694, 38.960842, 29.739782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022480, 38.945843, 29.581896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268564, 0.673551, -0.688623,
		0.291687, -0.738189, -0.608273,
		-0.918037, -0.037503, -0.394717,
		37.747070, 38.934593, 29.463480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.507389, 38.795570, 29.028280>,  <38.389694, 38.960842, 29.739782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.507389, 38.795570, 29.028280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146130, 38.967285, 29.030565>,  <37.929375, 39.070312, 29.031937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146130, 38.967285, 29.030565>,  <38.507389, 38.795570, 29.028280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146130, 38.967285, 29.030565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303297, 0.647390, -0.699212,
		-0.303860, -0.629761, -0.714892,
		-0.903150, 0.429287, 0.005711,
		37.875183, 39.096069, 29.032278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258884, 38.756405, 28.314718>,  <38.507389, 38.795570, 29.028280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258884, 38.756405, 28.314718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030449, 39.031082, 28.494635>,  <37.893387, 39.195889, 28.602585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030449, 39.031082, 28.494635>,  <38.258884, 38.756405, 28.314718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030449, 39.031082, 28.494635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108239, 0.606139, -0.787959,
		-0.813720, -0.401310, -0.420487,
		-0.571090, 0.686692, 0.449790,
		37.859123, 39.237091, 28.629572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719208, 38.909855, 27.859053>,  <38.258884, 38.756405, 28.314718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719208, 38.909855, 27.859053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774212, 39.233299, 28.087872>,  <37.807213, 39.427368, 28.225163>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774212, 39.233299, 28.087872>,  <37.719208, 38.909855, 27.859053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774212, 39.233299, 28.087872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047895, 0.571428, -0.819254,
		-0.989342, 0.140055, 0.039849,
		0.137511, 0.808613, 0.572045,
		37.815464, 39.475883, 28.259485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302605, 39.443409, 27.569107>,  <37.719208, 38.909855, 27.859053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302605, 39.443409, 27.569107> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559704, 39.645535, 27.799425>,  <37.713963, 39.766808, 27.937616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.559704, 39.645535, 27.799425>,  <37.302605, 39.443409, 27.569107>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.559704, 39.645535, 27.799425> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050150, 0.722246, -0.689815,
		-0.764437, 0.472252, 0.438879,
		0.642745, 0.505310, 0.575795,
		37.752529, 39.797127, 27.972164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216312, 40.017872, 27.205589>,  <37.302605, 39.443409, 27.569107>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216312, 40.017872, 27.205589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533272, 40.070274, 27.443895>,  <37.723450, 40.101715, 27.586880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533272, 40.070274, 27.443895>,  <37.216312, 40.017872, 27.205589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533272, 40.070274, 27.443895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335964, 0.721458, -0.605497,
		-0.509145, 0.679953, 0.527670,
		0.792401, 0.131007, 0.595766,
		37.770992, 40.109577, 27.622625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304981, 40.737274, 27.315088>,  <37.216312, 40.017872, 27.205589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304981, 40.737274, 27.315088> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667450, 40.586571, 27.391939>,  <37.884930, 40.496151, 27.438049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667450, 40.586571, 27.391939>,  <37.304981, 40.737274, 27.315088>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.667450, 40.586571, 27.391939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405324, 0.644015, -0.648812,
		0.120710, 0.665808, 0.736294,
		0.906169, -0.376756, 0.192128,
		37.939301, 40.473545, 27.449577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720882, 41.338699, 27.292200>,  <37.304981, 40.737274, 27.315088>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720882, 41.338699, 27.292200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975616, 41.034229, 27.243118>,  <38.128456, 40.851547, 27.213669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975616, 41.034229, 27.243118>,  <37.720882, 41.338699, 27.292200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975616, 41.034229, 27.243118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514576, 0.538131, -0.667553,
		0.574156, 0.361979, 0.734382,
		0.636833, -0.761174, -0.122706,
		38.166668, 40.805878, 27.206306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.343185, 41.642750, 27.146145>,  <37.720882, 41.338699, 27.292200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.343185, 41.642750, 27.146145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386707, 41.268085, 27.012980>,  <38.412819, 41.043285, 26.933081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386707, 41.268085, 27.012980>,  <38.343185, 41.642750, 27.146145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386707, 41.268085, 27.012980> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445631, 0.345323, -0.825933,
		0.888580, -0.058490, 0.454977,
		0.108805, -0.936659, -0.332912,
		38.419350, 40.987087, 26.913105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050434, 41.612789, 26.961952>,  <38.343185, 41.642750, 27.146145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050434, 41.612789, 26.961952> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854832, 41.323475, 26.766922>,  <38.737469, 41.149887, 26.649904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854832, 41.323475, 26.766922>,  <39.050434, 41.612789, 26.961952>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854832, 41.323475, 26.766922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234246, 0.429544, -0.872136,
		0.840237, -0.540695, -0.040624,
		-0.489009, -0.723285, -0.487574,
		38.708130, 41.106491, 26.620649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<30.796091, 38.271091, 22.607927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.951218, 38.473743, 22.915936>,  <31.044294, 38.595333, 23.100740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.951218, 38.473743, 22.915936>,  <30.796091, 38.271091, 22.607927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951218, 38.473743, 22.915936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015671, -0.838902, 0.544056,
		0.921604, -0.198927, -0.333279,
		0.387816, 0.506627, 0.770018,
		31.067562, 38.625732, 23.146940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292934, 37.807613, 22.889675>,  <30.796091, 38.271091, 22.607927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292934, 37.807613, 22.889675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.272583, 38.075363, 23.186150>,  <31.260372, 38.236012, 23.364035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.272583, 38.075363, 23.186150>,  <31.292934, 37.807613, 22.889675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272583, 38.075363, 23.186150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177776, -0.724223, 0.666256,
		0.982755, 0.165663, -0.082150,
		-0.050879, 0.669371, 0.741184,
		31.257320, 38.276173, 23.408504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807415, 37.614632, 23.361952>,  <31.292934, 37.807613, 22.889675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807415, 37.614632, 23.361952> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.569277, 37.837009, 23.593981>,  <31.426394, 37.970436, 23.733198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.569277, 37.837009, 23.593981>,  <31.807415, 37.614632, 23.361952>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.569277, 37.837009, 23.593981> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168136, -0.619772, 0.766559,
		0.785680, 0.553899, 0.275504,
		-0.595346, 0.555948, 0.580073,
		31.390673, 38.003796, 23.768003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127449, 37.742371, 24.090660>,  <31.807415, 37.614632, 23.361952>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127449, 37.742371, 24.090660> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.732510, 37.793343, 24.128395>,  <31.495544, 37.823925, 24.151037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.732510, 37.793343, 24.128395>,  <32.127449, 37.742371, 24.090660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.732510, 37.793343, 24.128395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010700, -0.647217, 0.762230,
		0.158186, 0.751580, 0.640395,
		-0.987351, 0.127427, 0.094339,
		31.436304, 37.831570, 24.156696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957977, 37.943336, 24.840872>,  <32.127449, 37.742371, 24.090660>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957977, 37.943336, 24.840872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.627851, 37.795742, 24.669897>,  <31.429775, 37.707184, 24.567312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.627851, 37.795742, 24.669897>,  <31.957977, 37.943336, 24.840872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.627851, 37.795742, 24.669897> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145154, -0.592895, 0.792089,
		-0.545699, 0.715767, 0.435764,
		-0.825314, -0.368989, -0.427439,
		31.380257, 37.685047, 24.541666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452408, 37.993793, 25.333347>,  <31.957977, 37.943336, 24.840872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452408, 37.993793, 25.333347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.323233, 37.719234, 25.072710>,  <31.245728, 37.554501, 24.916327>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.323233, 37.719234, 25.072710>,  <31.452408, 37.993793, 25.333347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323233, 37.719234, 25.072710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292264, -0.582506, 0.758465,
		-0.900163, 0.435374, -0.012495,
		-0.322937, -0.686394, -0.651594,
		31.226351, 37.513317, 24.877232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963528, 37.757526, 25.698446>,  <31.452408, 37.993793, 25.333347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963528, 37.757526, 25.698446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.013578, 37.481426, 25.413378>,  <31.043610, 37.315765, 25.242336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.013578, 37.481426, 25.413378>,  <30.963528, 37.757526, 25.698446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013578, 37.481426, 25.413378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160538, -0.722935, 0.672007,
		-0.979066, 0.030325, -0.201270,
		0.125127, -0.690251, -0.712669,
		31.051117, 37.274349, 25.199577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504179, 37.209381, 25.893047>,  <30.963528, 37.757526, 25.698446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504179, 37.209381, 25.893047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.764578, 37.042496, 25.639389>,  <30.920816, 36.942364, 25.487194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.764578, 37.042496, 25.639389>,  <30.504179, 37.209381, 25.893047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.764578, 37.042496, 25.639389> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118968, -0.769010, 0.628069,
		-0.749698, -0.484315, -0.450990,
		0.650999, -0.417209, -0.634143,
		30.959877, 36.917332, 25.449146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300257, 36.474617, 25.793549>,  <30.504179, 37.209381, 25.893047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300257, 36.474617, 25.793549> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.689280, 36.474823, 25.700483>,  <30.922693, 36.474945, 25.644644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.689280, 36.474823, 25.700483>,  <30.300257, 36.474617, 25.793549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689280, 36.474823, 25.700483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143241, -0.789325, 0.597032,
		-0.183339, -0.613975, -0.767738,
		0.972558, 0.000512, -0.232661,
		30.981047, 36.474976, 25.630686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.428671, 35.742825, 25.668182>,  <30.300257, 36.474617, 25.793549>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.428671, 35.742825, 25.668182> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.774019, 35.935703, 25.727608>,  <30.981228, 36.051430, 25.763262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.774019, 35.935703, 25.727608>,  <30.428671, 35.742825, 25.668182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.774019, 35.935703, 25.727608> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284551, -0.708462, 0.645843,
		0.416676, -0.515330, -0.748877,
		0.863372, 0.482201, 0.148561,
		31.033031, 36.080364, 25.772177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998089, 35.278278, 25.543171>,  <30.428671, 35.742825, 25.668182>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998089, 35.278278, 25.543171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.119207, 35.563095, 25.796566>,  <31.191879, 35.733986, 25.948603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.119207, 35.563095, 25.796566>,  <30.998089, 35.278278, 25.543171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119207, 35.563095, 25.796566> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176513, -0.695091, 0.696916,
		0.936567, -0.099205, -0.336156,
		0.302796, 0.712044, 0.633488,
		31.210047, 35.776707, 25.986612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690130, 35.074154, 25.849302>,  <30.998089, 35.278278, 25.543171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690130, 35.074154, 25.849302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.583815, 35.332176, 26.135872>,  <31.520025, 35.486988, 26.307814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.583815, 35.332176, 26.135872>,  <31.690130, 35.074154, 25.849302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583815, 35.332176, 26.135872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243424, -0.674166, 0.697313,
		0.932792, 0.359734, 0.022166,
		-0.265791, 0.645052, 0.716424,
		31.504078, 35.525692, 26.350800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198437, 34.969246, 26.352259>,  <31.690130, 35.074154, 25.849302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198437, 34.969246, 26.352259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934376, 35.181656, 26.564753>,  <31.775938, 35.309101, 26.692249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.934376, 35.181656, 26.564753>,  <32.198437, 34.969246, 26.352259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.934376, 35.181656, 26.564753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195377, -0.561508, 0.804075,
		0.725273, 0.634606, 0.266934,
		-0.660157, 0.531021, 0.531234,
		31.736328, 35.340961, 26.724123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461708, 35.230591, 26.977806>,  <32.198437, 34.969246, 26.352259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461708, 35.230591, 26.977806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.066147, 35.201660, 27.029718>,  <31.828810, 35.184303, 27.060865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.066147, 35.201660, 27.029718>,  <32.461708, 35.230591, 26.977806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066147, 35.201660, 27.029718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148485, -0.510943, 0.846693,
		0.005075, 0.856567, 0.516011,
		-0.988902, -0.072323, 0.129780,
		31.769476, 35.179962, 27.068653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937176, 35.671364, 27.283598>,  <32.461708, 35.230591, 26.977806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937176, 35.671364, 27.283598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202564, 35.412724, 27.133020>,  <33.361797, 35.257542, 27.042673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.202564, 35.412724, 27.133020>,  <32.937176, 35.671364, 27.283598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202564, 35.412724, 27.133020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070329, 0.447011, -0.891760,
		0.744885, 0.618136, 0.251106,
		0.663475, -0.646599, -0.376445,
		33.401608, 35.218742, 27.020086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521214, 36.088848, 26.910389>,  <32.937176, 35.671364, 27.283598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521214, 36.088848, 26.910389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.574966, 35.725372, 26.752287>,  <33.607220, 35.507286, 26.657427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.574966, 35.725372, 26.752287>,  <33.521214, 36.088848, 26.910389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574966, 35.725372, 26.752287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009897, 0.400083, -0.916426,
		0.990880, 0.119241, 0.062758,
		0.134384, -0.908689, -0.395254,
		33.615280, 35.452766, 26.633711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.192638, 36.121521, 26.560663>,  <33.521214, 36.088848, 26.910389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.192638, 36.121521, 26.560663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.968182, 35.820713, 26.422338>,  <33.833508, 35.640228, 26.339344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.968182, 35.820713, 26.422338>,  <34.192638, 36.121521, 26.560663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968182, 35.820713, 26.422338> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027303, 0.434381, -0.900315,
		0.827270, -0.495762, -0.264282,
		-0.561141, -0.752019, -0.345814,
		33.799839, 35.595108, 26.318594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.580948, 35.802902, 25.969210>,  <34.192638, 36.121521, 26.560663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.580948, 35.802902, 25.969210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231567, 35.647488, 25.851820>,  <34.021938, 35.554241, 25.781385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.231567, 35.647488, 25.851820>,  <34.580948, 35.802902, 25.969210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231567, 35.647488, 25.851820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299690, 0.046057, -0.952924,
		0.383761, -0.920282, 0.076211,
		-0.873449, -0.388535, -0.293474,
		33.969532, 35.530926, 25.763779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.692043, 35.535484, 25.279594>,  <34.580948, 35.802902, 25.969210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.692043, 35.535484, 25.279594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.295773, 35.583111, 25.306059>,  <34.058010, 35.611687, 25.321938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.295773, 35.583111, 25.306059>,  <34.692043, 35.535484, 25.279594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295773, 35.583111, 25.306059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031089, 0.275241, -0.960873,
		-0.132617, -0.953974, -0.268974,
		-0.990680, 0.119066, 0.066160,
		33.998569, 35.618832, 25.325907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.408474, 35.247814, 24.674110>,  <34.692043, 35.535484, 25.279594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.408474, 35.247814, 24.674110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.107262, 35.489914, 24.777357>,  <33.926533, 35.635174, 24.839306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.107262, 35.489914, 24.777357>,  <34.408474, 35.247814, 24.674110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.107262, 35.489914, 24.777357> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030316, 0.423782, -0.905257,
		-0.657288, -0.673860, -0.337469,
		-0.753029, 0.605245, 0.258118,
		33.881351, 35.671486, 24.854792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.114380, 35.245941, 24.050896>,  <34.408474, 35.247814, 24.674110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.114380, 35.245941, 24.050896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.941345, 35.542465, 24.256159>,  <33.837524, 35.720379, 24.379316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.941345, 35.542465, 24.256159>,  <34.114380, 35.245941, 24.050896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941345, 35.542465, 24.256159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109034, 0.521976, -0.845962,
		-0.894974, -0.421905, -0.144973,
		-0.432588, 0.741308, 0.513157,
		33.811569, 35.764858, 24.410107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432060, 35.462685, 23.772896>,  <34.114380, 35.245941, 24.050896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432060, 35.462685, 23.772896> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551075, 35.783638, 23.979837>,  <33.622486, 35.976208, 24.104002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.551075, 35.783638, 23.979837>,  <33.432060, 35.462685, 23.772896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551075, 35.783638, 23.979837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146285, 0.573814, -0.805815,
		-0.943435, 0.164082, 0.288109,
		0.297541, 0.802380, 0.517354,
		33.640339, 36.024353, 24.135044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978718, 36.000782, 23.468758>,  <33.432060, 35.462685, 23.772896>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978718, 36.000782, 23.468758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.286919, 36.182838, 23.647270>,  <33.471840, 36.292072, 23.754377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.286919, 36.182838, 23.647270>,  <32.978718, 36.000782, 23.468758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.286919, 36.182838, 23.647270> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034051, 0.728508, -0.684191,
		-0.636523, 0.511977, 0.576817,
		0.770505, 0.455144, 0.446279,
		33.518070, 36.319382, 23.781155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.883774, 36.717049, 23.439524>,  <32.978718, 36.000782, 23.468758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.883774, 36.717049, 23.439524> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.278255, 36.704952, 23.504625>,  <33.514946, 36.697697, 23.543686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.278255, 36.704952, 23.504625>,  <32.883774, 36.717049, 23.439524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278255, 36.704952, 23.504625> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112781, 0.842419, -0.526888,
		-0.121175, 0.537974, 0.834207,
		0.986203, -0.030237, 0.162753,
		33.574116, 36.695881, 23.553452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125198, 37.390877, 23.651217>,  <32.883774, 36.717049, 23.439524>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125198, 37.390877, 23.651217> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.418285, 37.180836, 23.478058>,  <33.594139, 37.054813, 23.374163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.418285, 37.180836, 23.478058>,  <33.125198, 37.390877, 23.651217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418285, 37.180836, 23.478058> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395661, 0.846253, -0.356803,
		0.553696, 0.090156, 0.827824,
		0.732717, -0.525098, -0.432896,
		33.638100, 37.023308, 23.348188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.836788, 37.635296, 23.865610>,  <33.125198, 37.390877, 23.651217>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.836788, 37.635296, 23.865610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.895908, 37.471882, 23.505331>,  <33.931381, 37.373833, 23.289164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.895908, 37.471882, 23.505331>,  <33.836788, 37.635296, 23.865610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895908, 37.471882, 23.505331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419473, 0.850623, -0.316989,
		0.895655, -0.330967, 0.297091,
		0.147800, -0.408535, -0.900697,
		33.940247, 37.349323, 23.235123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482544, 37.925747, 23.736460>,  <33.836788, 37.635296, 23.865610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482544, 37.925747, 23.736460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358345, 37.795082, 23.379387>,  <34.283825, 37.716682, 23.165144>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.358345, 37.795082, 23.379387>,  <34.482544, 37.925747, 23.736460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358345, 37.795082, 23.379387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434330, 0.786584, -0.438911,
		0.845545, -0.524000, -0.102355,
		-0.310500, -0.326663, -0.892681,
		34.265194, 37.697083, 23.111582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059807, 38.024796, 23.280870>,  <34.482544, 37.925747, 23.736460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059807, 38.024796, 23.280870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753975, 37.985790, 23.026028>,  <34.570477, 37.962387, 22.873121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.753975, 37.985790, 23.026028>,  <35.059807, 38.024796, 23.280870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753975, 37.985790, 23.026028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226083, 0.885102, -0.406793,
		0.603575, -0.455065, -0.654685,
		-0.764581, -0.097517, -0.637108,
		34.524601, 37.956535, 22.834896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798466, 37.811989, 23.418318>,  <35.059807, 38.024796, 23.280870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798466, 37.811989, 23.418318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.099327, 38.028618, 23.568497>,  <36.279846, 38.158596, 23.658604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.099327, 38.028618, 23.568497>,  <35.798466, 37.811989, 23.418318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099327, 38.028618, 23.568497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092868, -0.651163, 0.753234,
		0.652409, -0.531682, -0.540071,
		0.752155, 0.541572, 0.375449,
		36.324974, 38.191090, 23.681131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228569, 37.265991, 23.508669>,  <35.798466, 37.811989, 23.418318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228569, 37.265991, 23.508669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340439, 37.575737, 23.735697>,  <36.407562, 37.761585, 23.871914>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.340439, 37.575737, 23.735697>,  <36.228569, 37.265991, 23.508669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340439, 37.575737, 23.735697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265561, -0.630491, 0.729355,
		0.922637, -0.053258, -0.381974,
		0.279675, 0.774367, 0.567571,
		36.424343, 37.808048, 23.905968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.863708, 37.161304, 23.782890>,  <36.228569, 37.265991, 23.508669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.863708, 37.161304, 23.782890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706417, 37.423939, 24.040344>,  <36.612041, 37.581520, 24.194817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.706417, 37.423939, 24.040344>,  <36.863708, 37.161304, 23.782890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706417, 37.423939, 24.040344> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200745, -0.621827, 0.756989,
		0.897257, 0.426877, 0.112716,
		-0.393231, 0.656587, 0.643633,
		36.588448, 37.620914, 24.233435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244572, 37.068504, 24.362782>,  <36.863708, 37.161304, 23.782890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244572, 37.068504, 24.362782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928596, 37.275082, 24.495014>,  <36.739010, 37.399029, 24.574354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.928596, 37.275082, 24.495014>,  <37.244572, 37.068504, 24.362782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928596, 37.275082, 24.495014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092496, -0.432593, 0.896832,
		0.606171, 0.739019, 0.293952,
		-0.789937, 0.516444, 0.330581,
		36.691616, 37.430016, 24.594189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407387, 37.416733, 25.012114>,  <37.244572, 37.068504, 24.362782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407387, 37.416733, 25.012114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010307, 37.368607, 25.008873>,  <36.772060, 37.339729, 25.006927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.010307, 37.368607, 25.008873>,  <37.407387, 37.416733, 25.012114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010307, 37.368607, 25.008873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067301, -0.608551, 0.790656,
		-0.100059, 0.784341, 0.612207,
		-0.992703, -0.120314, -0.008104,
		36.712498, 37.332512, 25.006441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207237, 37.673206, 25.721830>,  <37.407387, 37.416733, 25.012114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207237, 37.673206, 25.721830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.899918, 37.467892, 25.568863>,  <36.715527, 37.344704, 25.477083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.899918, 37.467892, 25.568863>,  <37.207237, 37.673206, 25.721830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899918, 37.467892, 25.568863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005879, -0.603082, 0.797657,
		-0.640059, 0.610594, 0.466368,
		-0.768303, -0.513290, -0.382418,
		36.669426, 37.313904, 25.454138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.668682, 37.810181, 26.260332>,  <37.207237, 37.673206, 25.721830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.668682, 37.810181, 26.260332> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558319, 37.508305, 26.022236>,  <36.492104, 37.327179, 25.879377>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.558319, 37.508305, 26.022236>,  <36.668682, 37.810181, 26.260332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.558319, 37.508305, 26.022236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232711, -0.548407, 0.803178,
		-0.932589, 0.360119, -0.024319,
		-0.275903, -0.754695, -0.595243,
		36.475548, 37.281895, 25.843662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935101, 37.541733, 26.336926>,  <36.668682, 37.810181, 26.260332>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935101, 37.541733, 26.336926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150993, 37.233517, 26.201303>,  <36.280529, 37.048588, 26.119930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150993, 37.233517, 26.201303>,  <35.935101, 37.541733, 26.336926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150993, 37.233517, 26.201303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151454, -0.485065, 0.861263,
		-0.828102, -0.413499, -0.378505,
		0.539731, -0.770539, -0.339057,
		36.312912, 37.002354, 26.099586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636051, 36.890713, 26.677294>,  <35.935101, 37.541733, 26.336926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636051, 36.890713, 26.677294> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.992123, 36.772339, 26.538725>,  <36.205765, 36.701313, 26.455584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.992123, 36.772339, 26.538725>,  <35.636051, 36.890713, 26.677294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992123, 36.772339, 26.538725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145034, -0.536730, 0.831195,
		-0.431916, -0.790154, -0.434864,
		0.890176, -0.295936, -0.346421,
		36.259174, 36.683559, 26.434799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549648, 36.142990, 26.615801>,  <35.636051, 36.890713, 26.677294>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549648, 36.142990, 26.615801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942474, 36.217152, 26.629547>,  <36.178169, 36.261646, 26.637794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.942474, 36.217152, 26.629547>,  <35.549648, 36.142990, 26.615801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942474, 36.217152, 26.629547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103123, -0.680689, 0.725278,
		0.157860, -0.708723, -0.687598,
		0.982062, 0.185399, 0.034368,
		36.237095, 36.272770, 26.639858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890087, 35.507309, 26.517067>,  <35.549648, 36.142990, 26.615801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890087, 35.507309, 26.517067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150253, 35.746441, 26.704494>,  <36.306355, 35.889919, 26.816950>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.150253, 35.746441, 26.704494>,  <35.890087, 35.507309, 26.517067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.150253, 35.746441, 26.704494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094797, -0.548169, 0.830978,
		0.753638, -0.584901, -0.299867,
		0.650418, 0.597830, 0.468568,
		36.345379, 35.925789, 26.845064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.174046, 35.022141, 26.913511>,  <35.890087, 35.507309, 26.517067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.174046, 35.022141, 26.913511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288933, 35.368618, 27.077080>,  <36.357864, 35.576504, 27.175220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.288933, 35.368618, 27.077080>,  <36.174046, 35.022141, 26.913511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288933, 35.368618, 27.077080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020521, -0.432373, 0.901461,
		0.957646, -0.250521, -0.141959,
		0.287214, 0.866194, 0.408920,
		36.375095, 35.628475, 27.199755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732723, 34.839085, 27.439425>,  <36.174046, 35.022141, 26.913511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732723, 34.839085, 27.439425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.624287, 35.206581, 27.554262>,  <36.559223, 35.427078, 27.623165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.624287, 35.206581, 27.554262>,  <36.732723, 34.839085, 27.439425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.624287, 35.206581, 27.554262> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014666, -0.302173, 0.953140,
		0.962442, 0.254178, 0.095391,
		-0.271092, 0.918741, 0.287096,
		36.542957, 35.482204, 27.640390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.196697, 35.050079, 27.949642>,  <36.732723, 34.839085, 27.439425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.196697, 35.050079, 27.949642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855637, 35.248920, 28.013988>,  <36.651001, 35.368225, 28.052597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.855637, 35.248920, 28.013988>,  <37.196697, 35.050079, 27.949642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855637, 35.248920, 28.013988> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024404, -0.269660, 0.962646,
		0.521913, 0.824726, 0.217794,
		-0.852650, 0.497103, 0.160866,
		36.599842, 35.398052, 28.062248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.440018, 41.411270, 26.405602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.093937, 41.257618, 26.276688>,  <38.886288, 41.165428, 26.199339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.093937, 41.257618, 26.276688>,  <39.440018, 41.411270, 26.405602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093937, 41.257618, 26.276688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257780, 0.210546, -0.942985,
		0.430081, -0.898953, -0.083146,
		-0.865205, -0.384127, -0.322284,
		38.834373, 41.142380, 26.180002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489693, 41.009960, 25.805204>,  <39.440018, 41.411270, 26.405602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489693, 41.009960, 25.805204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112465, 41.142879, 25.810820>,  <38.886127, 41.222630, 25.814188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.112465, 41.142879, 25.810820>,  <39.489693, 41.009960, 25.805204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112465, 41.142879, 25.810820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119710, 0.378516, -0.917821,
		-0.310302, -0.863889, -0.396746,
		-0.943071, 0.332296, 0.014038,
		38.829544, 41.242569, 25.815031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.263226, 40.763359, 25.191845>,  <39.489693, 41.009960, 25.805204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.263226, 40.763359, 25.191845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.988331, 41.030659, 25.305792>,  <38.823395, 41.191036, 25.374161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.988331, 41.030659, 25.305792>,  <39.263226, 40.763359, 25.191845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.988331, 41.030659, 25.305792> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128687, 0.273950, -0.953095,
		-0.714942, -0.691663, -0.102274,
		-0.687239, 0.668247, 0.284867,
		38.782158, 41.231133, 25.391253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642448, 40.762611, 24.595287>,  <39.263226, 40.763359, 25.191845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.642448, 40.762611, 24.595287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649849, 41.096371, 24.815628>,  <38.654289, 41.296627, 24.947832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649849, 41.096371, 24.815628>,  <38.642448, 40.762611, 24.595287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649849, 41.096371, 24.815628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029300, 0.551163, -0.833883,
		-0.999399, -0.000714, 0.034644,
		0.018499, 0.834397, 0.550853,
		38.655399, 41.346691, 24.980885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055847, 41.125465, 24.457253>,  <38.642448, 40.762611, 24.595287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055847, 41.125465, 24.457253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289898, 41.418919, 24.595476>,  <38.430328, 41.594990, 24.678410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.289898, 41.418919, 24.595476>,  <38.055847, 41.125465, 24.457253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.289898, 41.418919, 24.595476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297325, 0.590530, -0.750248,
		-0.754467, 0.336249, 0.563663,
		0.585130, 0.733629, 0.345560,
		38.465439, 41.639008, 24.699144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.681866, 41.756222, 24.499279>,  <38.055847, 41.125465, 24.457253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.681866, 41.756222, 24.499279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059681, 41.886162, 24.518574>,  <38.286369, 41.964127, 24.530151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.059681, 41.886162, 24.518574>,  <37.681866, 41.756222, 24.499279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059681, 41.886162, 24.518574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208648, 0.707015, -0.675718,
		-0.253609, 0.628176, 0.735580,
		0.944536, 0.324846, 0.048238,
		38.343040, 41.983616, 24.533045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561562, 42.490604, 24.504400>,  <37.681866, 41.756222, 24.499279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561562, 42.490604, 24.504400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.929394, 42.385063, 24.387953>,  <38.150093, 42.321739, 24.318085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.929394, 42.385063, 24.387953>,  <37.561562, 42.490604, 24.504400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929394, 42.385063, 24.387953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010363, 0.724402, -0.689300,
		0.392761, 0.636884, 0.663413,
		0.919582, -0.263855, -0.291117,
		38.205269, 42.305908, 24.300617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861065, 43.045105, 24.481106>,  <37.561562, 42.490604, 24.504400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861065, 43.045105, 24.481106> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.137798, 42.839130, 24.278637>,  <38.303837, 42.715546, 24.157156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.137798, 42.839130, 24.278637>,  <37.861065, 43.045105, 24.481106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.137798, 42.839130, 24.278637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108217, 0.767042, -0.632405,
		0.713903, 0.382742, 0.586389,
		0.691832, -0.514933, -0.506174,
		38.345348, 42.684650, 24.126785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.416340, 43.455639, 24.429224>,  <37.861065, 43.045105, 24.481106>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.416340, 43.455639, 24.429224> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.405453, 43.205238, 24.117485>,  <38.398918, 43.054996, 23.930443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.405453, 43.205238, 24.117485>,  <38.416340, 43.455639, 24.429224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.405453, 43.205238, 24.117485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131221, 0.775126, -0.618030,
		0.990979, 0.085443, -0.103244,
		-0.027221, -0.626003, -0.779346,
		38.397285, 43.017437, 23.883682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857208, 43.684872, 24.004858>,  <38.416340, 43.455639, 24.429224>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857208, 43.684872, 24.004858> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649662, 43.450348, 23.756012>,  <38.525135, 43.309635, 23.606705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.649662, 43.450348, 23.756012>,  <38.857208, 43.684872, 24.004858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649662, 43.450348, 23.756012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198115, 0.790400, -0.579672,
		0.831583, -0.177522, -0.526266,
		-0.518865, -0.586306, -0.622113,
		38.494003, 43.274456, 23.569378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915005, 43.966614, 23.274929>,  <38.857208, 43.684872, 24.004858>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915005, 43.966614, 23.274929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602333, 43.721508, 23.228451>,  <38.414730, 43.574444, 23.200563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.602333, 43.721508, 23.228451>,  <38.915005, 43.966614, 23.274929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602333, 43.721508, 23.228451> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407039, 0.642384, -0.649355,
		0.472542, -0.460291, -0.751556,
		-0.781680, -0.612760, -0.116197,
		38.367828, 43.537682, 23.193592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911209, 43.833778, 22.615747>,  <38.915005, 43.966614, 23.274929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911209, 43.833778, 22.615747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.544926, 43.756157, 22.756496>,  <38.325153, 43.709583, 22.840946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.544926, 43.756157, 22.756496>,  <38.911209, 43.833778, 22.615747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544926, 43.756157, 22.756496> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399356, 0.536560, -0.743383,
		-0.044548, -0.821248, -0.568830,
		-0.915713, -0.194049, 0.351873,
		38.270210, 43.697941, 22.862059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519474, 43.611042, 22.078218>,  <38.911209, 43.833778, 22.615747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519474, 43.611042, 22.078218> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250954, 43.754692, 22.337566>,  <38.089840, 43.840881, 22.493176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.250954, 43.754692, 22.337566>,  <38.519474, 43.611042, 22.078218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250954, 43.754692, 22.337566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346203, 0.621558, -0.702716,
		-0.655360, -0.696203, -0.292924,
		-0.671302, 0.359121, 0.648372,
		38.049564, 43.862427, 22.532078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.757988, 43.536411, 21.930635>,  <38.519474, 43.611042, 22.078218>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.757988, 43.536411, 21.930635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855160, 43.878654, 22.113466>,  <37.913464, 44.084000, 22.223164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855160, 43.878654, 22.113466>,  <37.757988, 43.536411, 21.930635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855160, 43.878654, 22.113466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449517, 0.516838, -0.728569,
		-0.859605, -0.028474, 0.510165,
		0.242928, 0.855610, 0.457076,
		37.928040, 44.135338, 22.250589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050835, 43.447006, 21.810431>,  <37.757988, 43.536411, 21.930635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050835, 43.447006, 21.810431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997902, 43.226952, 21.480621>,  <36.966141, 43.094917, 21.282736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.997902, 43.226952, 21.480621>,  <37.050835, 43.447006, 21.810431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997902, 43.226952, 21.480621> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172549, -0.831921, 0.527384,
		-0.976071, -0.072481, 0.205015,
		-0.132331, -0.550139, -0.824521,
		36.958202, 43.061909, 21.233265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569397, 42.871033, 22.013453>,  <37.050835, 43.447006, 21.810431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569397, 42.871033, 22.013453> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734093, 42.759319, 21.666471>,  <36.832909, 42.692291, 21.458282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.734093, 42.759319, 21.666471>,  <36.569397, 42.871033, 22.013453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734093, 42.759319, 21.666471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060103, -0.958131, 0.279950,
		-0.909318, -0.063130, -0.411285,
		0.411739, -0.279283, -0.867452,
		36.857613, 42.675533, 21.406237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329243, 42.278976, 22.068157>,  <36.569397, 42.871033, 22.013453>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329243, 42.278976, 22.068157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.580032, 42.279190, 21.756542>,  <36.730507, 42.279316, 21.569572>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.580032, 42.279190, 21.756542>,  <36.329243, 42.278976, 22.068157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580032, 42.279190, 21.756542> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015784, -0.999803, 0.012021,
		-0.778879, -0.019833, -0.626861,
		0.626975, 0.000531, -0.779039,
		36.768124, 42.279350, 21.522831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010723, 41.830566, 21.556128>,  <36.329243, 42.278976, 22.068157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010723, 41.830566, 21.556128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.408005, 41.863087, 21.522823>,  <36.646374, 41.882599, 21.502840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.408005, 41.863087, 21.522823>,  <36.010723, 41.830566, 21.556128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408005, 41.863087, 21.522823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083035, -0.996392, 0.017524,
		-0.081537, -0.024318, -0.996373,
		0.993205, 0.081305, -0.083262,
		36.705967, 41.887478, 21.497845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302010, 41.458538, 20.933275>,  <36.010723, 41.830566, 21.556128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302010, 41.458538, 20.933275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581455, 41.494312, 21.217232>,  <36.749123, 41.515778, 21.387606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.581455, 41.494312, 21.217232>,  <36.302010, 41.458538, 20.933275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581455, 41.494312, 21.217232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149767, -0.988457, -0.022853,
		0.699652, 0.122283, -0.703941,
		0.698610, 0.089438, 0.709890,
		36.791039, 41.521145, 21.430199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797714, 40.837894, 20.728313>,  <36.302010, 41.458538, 20.933275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797714, 40.837894, 20.728313> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.852478, 40.983536, 21.096809>,  <36.885334, 41.070919, 21.317907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.852478, 40.983536, 21.096809>,  <36.797714, 40.837894, 20.728313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852478, 40.983536, 21.096809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319653, -0.896486, 0.306815,
		0.937592, 0.252472, -0.239122,
		0.136907, 0.364103, 0.921241,
		36.893551, 41.092766, 21.373182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269314, 40.323174, 21.143053>,  <36.797714, 40.837894, 20.728313>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269314, 40.323174, 21.143053> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.097076, 40.542652, 21.429695>,  <36.993736, 40.674339, 21.601681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.097076, 40.542652, 21.429695>,  <37.269314, 40.323174, 21.143053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097076, 40.542652, 21.429695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039333, -0.804634, 0.592467,
		0.901690, 0.226924, 0.368049,
		-0.430590, 0.548698, 0.716605,
		36.967899, 40.707260, 21.644676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553535, 40.144707, 21.789822>,  <37.269314, 40.323174, 21.143053>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553535, 40.144707, 21.789822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.199768, 40.290466, 21.906454>,  <36.987507, 40.377922, 21.976433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.199768, 40.290466, 21.906454>,  <37.553535, 40.144707, 21.789822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.199768, 40.290466, 21.906454> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130930, -0.793414, 0.594434,
		0.447958, 0.487550, 0.749419,
		-0.884416, 0.364403, 0.291581,
		36.934444, 40.399788, 21.993929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638634, 40.207310, 22.542648>,  <37.553535, 40.144707, 21.789822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638634, 40.207310, 22.542648> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248280, 40.205868, 22.455349>,  <37.014069, 40.205002, 22.402969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.248280, 40.205868, 22.455349>,  <37.638634, 40.207310, 22.542648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248280, 40.205868, 22.455349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155673, -0.689402, 0.707454,
		-0.153010, 0.724370, 0.672217,
		-0.975886, -0.003602, -0.218250,
		36.955513, 40.204788, 22.389874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.291992, 40.155716, 23.164381>,  <37.638634, 40.207310, 22.542648>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.291992, 40.155716, 23.164381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.021473, 40.030788, 22.897524>,  <36.859161, 39.955830, 22.737410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.021473, 40.030788, 22.897524>,  <37.291992, 40.155716, 23.164381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021473, 40.030788, 22.897524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242342, -0.760918, 0.601892,
		-0.695625, 0.568733, 0.438917,
		-0.676296, -0.312323, -0.667142,
		36.818584, 39.937092, 22.697382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690609, 40.133541, 23.508415>,  <37.291992, 40.155716, 23.164381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690609, 40.133541, 23.508415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618576, 39.906651, 23.186962>,  <36.575356, 39.770515, 22.994089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.618576, 39.906651, 23.186962>,  <36.690609, 40.133541, 23.508415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618576, 39.906651, 23.186962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128217, -0.796484, 0.590909,
		-0.975258, 0.209454, 0.070709,
		-0.180087, -0.567223, -0.803633,
		36.564548, 39.736485, 22.945871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.105461, 39.862602, 23.588930>,  <36.690609, 40.133541, 23.508415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.105461, 39.862602, 23.588930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283428, 39.611969, 23.332981>,  <36.390209, 39.461590, 23.179411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.283428, 39.611969, 23.332981>,  <36.105461, 39.862602, 23.588930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.283428, 39.611969, 23.332981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190957, -0.764428, 0.615780,
		-0.874977, -0.151782, -0.459757,
		0.444915, -0.626587, -0.639874,
		36.416904, 39.423992, 23.141020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.660072, 39.304848, 23.504416>,  <36.105461, 39.862602, 23.588930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.660072, 39.304848, 23.504416> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016911, 39.155907, 23.402027>,  <36.231014, 39.066544, 23.340595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.016911, 39.155907, 23.402027>,  <35.660072, 39.304848, 23.504416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016911, 39.155907, 23.402027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249894, -0.878544, 0.407079,
		-0.376458, -0.299187, -0.876793,
		0.892094, -0.372354, -0.255970,
		36.284538, 39.044201, 23.325235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.538776, 38.538296, 23.211359>,  <35.660072, 39.304848, 23.504416>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.538776, 38.538296, 23.211359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925541, 38.565975, 23.309582>,  <36.157600, 38.582584, 23.368515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.925541, 38.565975, 23.309582>,  <35.538776, 38.538296, 23.211359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925541, 38.565975, 23.309582> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067123, -0.859603, 0.506535,
		0.246134, -0.506256, -0.826512,
		0.966909, 0.069197, 0.245559,
		36.215614, 38.586735, 23.383249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284519, 38.186275, 22.591457>,  <35.538776, 38.538296, 23.211359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284519, 38.186275, 22.591457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891212, 38.258839, 22.598167>,  <34.655228, 38.302376, 22.602194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.891212, 38.258839, 22.598167>,  <35.284519, 38.186275, 22.591457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891212, 38.258839, 22.598167> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150392, 0.860226, -0.487230,
		-0.102818, -0.476553, -0.873113,
		-0.983265, 0.181405, 0.016777,
		34.596233, 38.313259, 22.603201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278751, 38.720135, 22.154896>,  <35.284519, 38.186275, 22.591457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278751, 38.720135, 22.154896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894409, 38.717064, 22.265678>,  <34.663803, 38.715221, 22.332148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.894409, 38.717064, 22.265678>,  <35.278751, 38.720135, 22.154896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894409, 38.717064, 22.265678> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126383, 0.901704, -0.413469,
		-0.246556, -0.432285, -0.867375,
		-0.960852, -0.007678, 0.276954,
		34.606152, 38.714760, 22.348764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784210, 38.615944, 21.599878>,  <35.278751, 38.720135, 22.154896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784210, 38.615944, 21.599878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614422, 38.815765, 21.901943>,  <34.512550, 38.935658, 22.083183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614422, 38.815765, 21.901943>,  <34.784210, 38.615944, 21.599878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614422, 38.815765, 21.901943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169638, 0.775382, -0.608281,
		-0.889409, -0.386301, -0.244383,
		-0.424469, 0.499554, 0.755163,
		34.487080, 38.965633, 22.128492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166691, 38.858376, 21.316589>,  <34.784210, 38.615944, 21.599878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166691, 38.858376, 21.316589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254669, 39.087921, 21.632135>,  <34.307457, 39.225647, 21.821463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.254669, 39.087921, 21.632135>,  <34.166691, 38.858376, 21.316589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254669, 39.087921, 21.632135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172607, 0.818801, -0.547514,
		-0.960121, -0.015743, 0.279141,
		0.219941, 0.573861, 0.788866,
		34.320652, 39.260078, 21.868795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575836, 39.196373, 21.551449>,  <34.166691, 38.858376, 21.316589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575836, 39.196373, 21.551449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876984, 39.431072, 21.670723>,  <34.057671, 39.571892, 21.742287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.876984, 39.431072, 21.670723>,  <33.575836, 39.196373, 21.551449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.876984, 39.431072, 21.670723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418781, 0.776559, -0.470721,
		-0.507755, 0.229516, 0.830366,
		0.752866, 0.586753, 0.298185,
		34.102844, 39.607098, 21.760178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255280, 39.860939, 21.800007>,  <33.575836, 39.196373, 21.551449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255280, 39.860939, 21.800007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634281, 39.947594, 21.705948>,  <33.861683, 39.999588, 21.649511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.634281, 39.947594, 21.705948>,  <33.255280, 39.860939, 21.800007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634281, 39.947594, 21.705948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316859, 0.734587, -0.599986,
		0.042758, 0.643001, 0.764671,
		0.947509, 0.216638, -0.235150,
		33.918533, 40.012585, 21.635403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194221, 40.512569, 21.434673>,  <33.255280, 39.860939, 21.800007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194221, 40.512569, 21.434673> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586628, 40.440228, 21.406687>,  <33.822071, 40.396820, 21.389894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.586628, 40.440228, 21.406687>,  <33.194221, 40.512569, 21.434673>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.586628, 40.440228, 21.406687> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098991, 0.777304, -0.621288,
		0.166749, 0.602569, 0.780452,
		0.981018, -0.180857, -0.069965,
		33.880932, 40.385971, 21.385696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.676655, 40.770378, 22.006945>,  <33.194221, 40.512569, 21.434673>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.676655, 40.770378, 22.006945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317013, 40.932323, 21.940378>,  <32.101227, 41.029491, 21.900438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.317013, 40.932323, 21.940378>,  <32.676655, 40.770378, 22.006945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317013, 40.932323, 21.940378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430350, -0.748026, 0.505229,
		0.080068, 0.525870, 0.846788,
		-0.899104, 0.404868, -0.166415,
		32.047283, 41.053783, 21.890453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419212, 40.853992, 22.695072>,  <32.676655, 40.770378, 22.006945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419212, 40.853992, 22.695072> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095371, 40.856533, 22.460295>,  <31.901068, 40.858059, 22.319427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095371, 40.856533, 22.460295>,  <32.419212, 40.853992, 22.695072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095371, 40.856533, 22.460295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439916, -0.668583, 0.599559,
		-0.388612, 0.743610, 0.544081,
		-0.809602, 0.006354, -0.586945,
		31.852491, 40.858440, 22.284210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.782177, 40.877064, 23.173151>,  <32.419212, 40.853992, 22.695072>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.782177, 40.877064, 23.173151> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645618, 40.737343, 22.824110>,  <31.563683, 40.653511, 22.614685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.645618, 40.737343, 22.824110>,  <31.782177, 40.877064, 23.173151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.645618, 40.737343, 22.824110> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448031, -0.755646, 0.477774,
		-0.826266, 0.554064, 0.101477,
		-0.341398, -0.349303, -0.872602,
		31.543200, 40.632553, 22.562330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.044413, 40.815571, 23.232267>,  <31.782177, 40.877064, 23.173151>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.044413, 40.815571, 23.232267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.141834, 40.575542, 22.927479>,  <31.200287, 40.431526, 22.744606>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.141834, 40.575542, 22.927479>,  <31.044413, 40.815571, 23.232267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141834, 40.575542, 22.927479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358241, -0.785731, 0.504272,
		-0.901302, 0.150152, -0.406335,
		0.243553, -0.600068, -0.761972,
		31.214901, 40.395523, 22.698887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.499290, 40.327618, 23.142225>,  <31.044413, 40.815571, 23.232267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.499290, 40.327618, 23.142225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.813427, 40.146824, 22.973017>,  <31.001909, 40.038345, 22.871492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.813427, 40.146824, 22.973017>,  <30.499290, 40.327618, 23.142225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813427, 40.146824, 22.973017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254346, -0.858566, 0.445165,
		-0.564399, -0.242013, -0.789229,
		0.785341, -0.451988, -0.423019,
		31.049028, 40.011227, 22.846111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.256670, 39.623051, 23.100962>,  <30.499290, 40.327618, 23.142225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.256670, 39.623051, 23.100962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638964, 39.554024, 23.005634>,  <30.868340, 39.512608, 22.948439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638964, 39.554024, 23.005634>,  <30.256670, 39.623051, 23.100962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638964, 39.554024, 23.005634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018504, -0.843597, 0.536658,
		-0.293656, -0.508491, -0.809446,
		0.955732, -0.172571, -0.238318,
		30.925684, 39.502251, 22.934139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297091, 38.991833, 22.714100>,  <30.256670, 39.623051, 23.100962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297091, 38.991833, 22.714100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626280, 39.072346, 22.926592>,  <30.823793, 39.120655, 23.054087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.626280, 39.072346, 22.926592>,  <30.297091, 38.991833, 22.714100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.626280, 39.072346, 22.926592> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177071, -0.797648, 0.576545,
		0.539781, -0.568545, -0.620800,
		0.822971, 0.201282, 0.531228,
		30.873171, 39.132729, 23.085960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.017982, 45.080978, 23.610985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.362534, 44.912109, 23.497988>,  <35.569263, 44.810787, 23.430189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.362534, 44.912109, 23.497988>,  <35.017982, 45.080978, 23.610985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362534, 44.912109, 23.497988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112840, -0.701260, 0.703919,
		-0.495275, -0.574463, -0.651687,
		0.861377, -0.422169, -0.282494,
		35.620945, 44.785458, 23.413239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904293, 44.348507, 23.600716>,  <35.017982, 45.080978, 23.610985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904293, 44.348507, 23.600716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.297119, 44.415203, 23.635941>,  <35.532814, 44.455219, 23.657076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.297119, 44.415203, 23.635941>,  <34.904293, 44.348507, 23.600716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297119, 44.415203, 23.635941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067267, -0.746070, 0.662461,
		0.176157, -0.644653, -0.743903,
		0.982061, 0.166737, 0.088062,
		35.591736, 44.465225, 23.662359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255600, 43.649040, 23.533941>,  <34.904293, 44.348507, 23.600716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255600, 43.649040, 23.533941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.459335, 43.914600, 23.752962>,  <35.581577, 44.073936, 23.884375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.459335, 43.914600, 23.752962>,  <35.255600, 43.649040, 23.533941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459335, 43.914600, 23.752962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063119, -0.663375, 0.745620,
		0.858247, -0.345214, -0.379788,
		0.509341, 0.663898, 0.547550,
		35.612137, 44.113770, 23.917227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.795116, 43.252281, 23.869150>,  <35.255600, 43.649040, 23.533941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.795116, 43.252281, 23.869150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.773758, 43.578484, 24.099659>,  <35.760941, 43.774204, 24.237965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.773758, 43.578484, 24.099659>,  <35.795116, 43.252281, 23.869150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773758, 43.578484, 24.099659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143872, -0.564792, 0.812595,
		0.988154, 0.126303, -0.087169,
		-0.053400, 0.815511, 0.576273,
		35.757736, 43.823135, 24.272541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180950, 43.107430, 24.335968>,  <35.795116, 43.252281, 23.869150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180950, 43.107430, 24.335968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.006824, 43.412418, 24.527445>,  <35.902351, 43.595409, 24.642330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.006824, 43.412418, 24.527445>,  <36.180950, 43.107430, 24.335968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006824, 43.412418, 24.527445> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006790, -0.534479, 0.845154,
		0.900254, 0.364655, 0.237842,
		-0.435311, 0.762469, 0.478692,
		35.876232, 43.641159, 24.671053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471581, 43.046124, 25.044865>,  <36.180950, 43.107430, 24.335968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471581, 43.046124, 25.044865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.137527, 43.265564, 25.060797>,  <35.937096, 43.397228, 25.070356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.137527, 43.265564, 25.060797>,  <36.471581, 43.046124, 25.044865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137527, 43.265564, 25.060797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253053, -0.447498, 0.857735,
		0.488381, 0.706244, 0.512547,
		-0.835134, 0.548603, 0.039832,
		35.886986, 43.430145, 25.072746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440430, 43.250389, 25.736206>,  <36.471581, 43.046124, 25.044865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440430, 43.250389, 25.736206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.069767, 43.291683, 25.591623>,  <35.847370, 43.316460, 25.504873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.069767, 43.291683, 25.591623>,  <36.440430, 43.250389, 25.736206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.069767, 43.291683, 25.591623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372992, -0.372066, 0.849967,
		-0.046736, 0.922448, 0.383284,
		-0.926657, 0.103238, -0.361455,
		35.791771, 43.322655, 25.483187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.042553, 43.513344, 26.256018>,  <36.440430, 43.250389, 25.736206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.042553, 43.513344, 26.256018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.752728, 43.364178, 26.024178>,  <35.578831, 43.274677, 25.885073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.752728, 43.364178, 26.024178>,  <36.042553, 43.513344, 26.256018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.752728, 43.364178, 26.024178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489872, -0.312895, 0.813709,
		-0.484798, 0.873517, 0.044033,
		-0.724567, -0.372914, -0.579602,
		35.535358, 43.252304, 25.850296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483829, 43.728992, 26.501768>,  <36.042553, 43.513344, 26.256018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483829, 43.728992, 26.501768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.376331, 43.396503, 26.307100>,  <35.311832, 43.197010, 26.190300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.376331, 43.396503, 26.307100>,  <35.483829, 43.728992, 26.501768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376331, 43.396503, 26.307100> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409681, -0.358634, 0.838775,
		-0.871743, 0.424797, -0.244153,
		-0.268747, -0.831221, -0.486668,
		35.295708, 43.147137, 26.161100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937172, 43.549301, 26.847771>,  <35.483829, 43.728992, 26.501768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937172, 43.549301, 26.847771> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.037926, 43.223080, 26.639374>,  <35.098377, 43.027348, 26.514336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.037926, 43.223080, 26.639374>,  <34.937172, 43.549301, 26.847771>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037926, 43.223080, 26.639374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288920, -0.577170, 0.763806,
		-0.923624, -0.041864, -0.381008,
		0.251882, -0.815550, -0.520993,
		35.113491, 42.978416, 26.483076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367508, 43.114792, 26.776308>,  <34.937172, 43.549301, 26.847771>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367508, 43.114792, 26.776308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.686188, 42.874939, 26.746071>,  <34.877396, 42.731026, 26.727928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.686188, 42.874939, 26.746071>,  <34.367508, 43.114792, 26.776308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686188, 42.874939, 26.746071> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451083, -0.673189, 0.585953,
		-0.402245, -0.432728, -0.806812,
		0.796695, -0.599636, -0.075591,
		34.925198, 42.695049, 26.723394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069473, 42.398041, 26.770227>,  <34.367508, 43.114792, 26.776308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069473, 42.398041, 26.770227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.457394, 42.354618, 26.857599>,  <34.690144, 42.328564, 26.910023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.457394, 42.354618, 26.857599>,  <34.069473, 42.398041, 26.770227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457394, 42.354618, 26.857599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238058, -0.616296, 0.750671,
		0.053128, -0.779997, -0.623524,
		0.969797, -0.108553, 0.218427,
		34.748333, 42.322052, 26.923128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.638390, 41.970070, 26.297718>,  <34.069473, 42.398041, 26.770227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.638390, 41.970070, 26.297718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.240940, 41.936451, 26.267656>,  <33.002472, 41.916279, 26.249620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.240940, 41.936451, 26.267656>,  <33.638390, 41.970070, 26.297718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240940, 41.936451, 26.267656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045642, 0.909341, -0.413542,
		0.103098, -0.407475, -0.907378,
		-0.993624, -0.084050, -0.075153,
		32.942852, 41.911236, 26.245110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.453793, 42.064354, 25.649298>,  <33.638390, 41.970070, 26.297718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.453793, 42.064354, 25.649298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105011, 42.172363, 25.812656>,  <32.895741, 42.237167, 25.910671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.105011, 42.172363, 25.812656>,  <33.453793, 42.064354, 25.649298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.105011, 42.172363, 25.812656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061171, 0.767536, -0.638081,
		-0.485753, -0.581358, -0.652737,
		-0.871953, 0.270021, 0.408395,
		32.843426, 42.253368, 25.935175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113281, 42.317429, 25.104916>,  <33.453793, 42.064354, 25.649298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113281, 42.317429, 25.104916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870949, 42.426678, 25.403812>,  <32.725548, 42.492226, 25.583151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.870949, 42.426678, 25.403812>,  <33.113281, 42.317429, 25.104916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870949, 42.426678, 25.403812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270243, 0.812739, -0.516163,
		-0.748287, -0.514646, -0.418576,
		-0.605834, 0.273121, 0.747242,
		32.689198, 42.508614, 25.627985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559662, 42.622856, 24.771748>,  <33.113281, 42.317429, 25.104916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559662, 42.622856, 24.771748> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.551186, 42.753326, 25.149776>,  <32.546101, 42.831608, 25.376595>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.551186, 42.753326, 25.149776>,  <32.559662, 42.622856, 24.771748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551186, 42.753326, 25.149776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206200, 0.923534, -0.323367,
		-0.978280, -0.201727, 0.047683,
		-0.021195, 0.326176, 0.945072,
		32.544827, 42.851181, 25.433298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.903273, 42.943897, 24.874229>,  <32.559662, 42.622856, 24.771748>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.903273, 42.943897, 24.874229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.161877, 43.103748, 25.134174>,  <32.317039, 43.199661, 25.290142>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.161877, 43.103748, 25.134174>,  <31.903273, 42.943897, 24.874229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161877, 43.103748, 25.134174> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207679, 0.911846, -0.354128,
		-0.734096, 0.093983, 0.672510,
		0.646508, 0.399630, 0.649864,
		32.355827, 43.223637, 25.329134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511723, 43.574974, 25.188496>,  <31.903273, 42.943897, 24.874229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511723, 43.574974, 25.188496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906418, 43.590500, 25.251539>,  <32.143234, 43.599815, 25.289366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.906418, 43.590500, 25.251539>,  <31.511723, 43.574974, 25.188496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906418, 43.590500, 25.251539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006968, 0.980218, -0.197797,
		-0.162171, 0.194075, 0.967489,
		0.986738, 0.038818, 0.157611,
		32.202438, 43.602146, 25.298822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.614445, 44.282124, 25.508768>,  <31.511723, 43.574974, 25.188496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.614445, 44.282124, 25.508768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946985, 44.137783, 25.339703>,  <32.146511, 44.051178, 25.238264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.946985, 44.137783, 25.339703>,  <31.614445, 44.282124, 25.508768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946985, 44.137783, 25.339703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183639, 0.896179, -0.403906,
		0.524529, 0.258171, 0.811306,
		0.831352, -0.360848, -0.422662,
		32.196392, 44.029530, 25.212904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.015087, 44.887791, 25.509663>,  <31.614445, 44.282124, 25.508768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.015087, 44.887791, 25.509663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.193138, 44.623043, 25.268402>,  <32.299969, 44.464195, 25.123646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.193138, 44.623043, 25.268402>,  <32.015087, 44.887791, 25.509663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193138, 44.623043, 25.268402> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006236, 0.671256, -0.741199,
		0.895445, 0.333691, 0.294669,
		0.445129, -0.661865, -0.603154,
		32.326675, 44.424484, 25.087456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.662796, 45.282082, 25.340944>,  <32.015087, 44.887791, 25.509663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.662796, 45.282082, 25.340944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.610886, 45.001518, 25.060604>,  <32.579739, 44.833179, 24.892401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.610886, 45.001518, 25.060604>,  <32.662796, 45.282082, 25.340944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610886, 45.001518, 25.060604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171694, 0.680253, -0.712585,
		0.976565, -0.212806, 0.032149,
		-0.129772, -0.701405, -0.700849,
		32.571953, 44.791096, 24.850349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.197243, 45.411209, 24.745256>,  <32.662796, 45.282082, 25.340944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.197243, 45.411209, 24.745256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.910259, 45.182423, 24.586210>,  <32.738068, 45.045151, 24.490782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.910259, 45.182423, 24.586210>,  <33.197243, 45.411209, 24.745256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910259, 45.182423, 24.586210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075675, 0.631416, -0.771743,
		0.692476, -0.523606, -0.496300,
		-0.717461, -0.571971, -0.397617,
		32.695019, 45.010830, 24.466925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353226, 45.285603, 24.102625>,  <33.197243, 45.411209, 24.745256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353226, 45.285603, 24.102625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.966064, 45.186680, 24.084743>,  <32.733768, 45.127327, 24.074015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.966064, 45.186680, 24.084743>,  <33.353226, 45.285603, 24.102625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.966064, 45.186680, 24.084743> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070217, 0.436913, -0.896759,
		0.241305, -0.864839, -0.440256,
		-0.967905, -0.247306, -0.044703,
		32.675694, 45.112488, 24.071333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271446, 44.977467, 23.402817>,  <33.353226, 45.285603, 24.102625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271446, 44.977467, 23.402817> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900406, 45.065445, 23.523596>,  <32.677780, 45.118233, 23.596064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.900406, 45.065445, 23.523596>,  <33.271446, 44.977467, 23.402817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900406, 45.065445, 23.523596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175953, 0.455759, -0.872539,
		-0.329528, -0.862500, -0.384064,
		-0.927605, 0.219949, 0.301945,
		32.622124, 45.131428, 23.614180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721710, 44.906757, 22.792902>,  <33.271446, 44.977467, 23.402817>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721710, 44.906757, 22.792902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.598587, 45.164444, 23.072969>,  <32.524712, 45.319057, 23.241009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.598587, 45.164444, 23.072969>,  <32.721710, 44.906757, 22.792902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598587, 45.164444, 23.072969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124799, 0.702200, -0.700956,
		-0.943227, -0.303142, -0.135747,
		-0.307811, 0.644220, 0.700166,
		32.506245, 45.357712, 23.283020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593613, 44.366451, 22.348019>,  <32.721710, 44.906757, 22.792902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593613, 44.366451, 22.348019> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.651928, 44.314182, 21.955759>,  <32.686916, 44.282822, 21.720404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.651928, 44.314182, 21.955759>,  <32.593613, 44.366451, 22.348019>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651928, 44.314182, 21.955759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470655, -0.881042, 0.047427,
		-0.870189, 0.454633, -0.189948,
		0.145790, -0.130670, -0.980648,
		32.695663, 44.274982, 21.661564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962940, 44.188248, 22.089006>,  <32.593613, 44.366451, 22.348019>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962940, 44.188248, 22.089006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.236210, 44.076256, 21.819225>,  <32.400173, 44.009060, 21.657356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.236210, 44.076256, 21.819225>,  <31.962940, 44.188248, 22.089006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236210, 44.076256, 21.819225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429458, -0.901026, -0.060980,
		-0.590624, 0.331308, -0.735798,
		0.683176, -0.279978, -0.674450,
		32.441162, 43.992264, 21.616890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604507, 43.801807, 21.637890>,  <31.962940, 44.188248, 22.089006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604507, 43.801807, 21.637890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.970724, 43.659992, 21.561899>,  <32.190453, 43.574905, 21.516304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.970724, 43.659992, 21.561899>,  <31.604507, 43.801807, 21.637890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.970724, 43.659992, 21.561899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329732, -0.932033, 0.150303,
		-0.230352, -0.074967, -0.970215,
		0.915541, -0.354533, -0.189977,
		32.245388, 43.553631, 21.504906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488308, 43.139751, 21.272284>,  <31.604507, 43.801807, 21.637890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488308, 43.139751, 21.272284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.877201, 43.110115, 21.361076>,  <32.110538, 43.092331, 21.414352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.877201, 43.110115, 21.361076>,  <31.488308, 43.139751, 21.272284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877201, 43.110115, 21.361076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083309, -0.995996, 0.032429,
		0.218691, -0.050022, -0.974511,
		0.972231, -0.074094, 0.221982,
		32.168869, 43.087887, 21.427671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.719219, 42.733734, 20.786491>,  <31.488308, 43.139751, 21.272284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.719219, 42.733734, 20.786491> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.988716, 42.698250, 21.079941>,  <32.150414, 42.676960, 21.256010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.988716, 42.698250, 21.079941>,  <31.719219, 42.733734, 20.786491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988716, 42.698250, 21.079941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117334, -0.993016, -0.012326,
		0.729593, -0.077774, -0.679444,
		0.673741, -0.088715, 0.733623,
		32.190838, 42.671635, 21.300028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144646, 42.105362, 20.604414>,  <31.719219, 42.733734, 20.786491>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144646, 42.105362, 20.604414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.176331, 42.171249, 20.997675>,  <32.195339, 42.210781, 21.233631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.176331, 42.171249, 20.997675>,  <32.144646, 42.105362, 20.604414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176331, 42.171249, 20.997675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178218, -0.968024, 0.176544,
		0.980798, -0.189200, -0.047320,
		0.079209, 0.164721, 0.983155,
		32.200092, 42.220665, 21.292622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.472965, 41.520954, 20.788565>,  <32.144646, 42.105362, 20.604414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.472965, 41.520954, 20.788565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.293369, 41.660587, 21.117577>,  <32.185612, 41.744366, 21.314983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.293369, 41.660587, 21.117577>,  <32.472965, 41.520954, 20.788565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293369, 41.660587, 21.117577> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167236, -0.937092, 0.306415,
		0.877749, 0.000020, 0.479121,
		-0.448987, 0.349082, 0.822528,
		32.158672, 41.765312, 21.364336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703922, 41.084766, 21.356148>,  <32.472965, 41.520954, 20.788565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703922, 41.084766, 21.356148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.385822, 41.274689, 21.506950>,  <32.194962, 41.388641, 21.597431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.385822, 41.274689, 21.506950>,  <32.703922, 41.084766, 21.356148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385822, 41.274689, 21.506950> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307153, -0.851653, 0.424669,
		0.522713, 0.221921, 0.823117,
		-0.795254, 0.474803, 0.377006,
		32.147247, 41.417130, 21.620052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433743, 41.191429, 21.492819>,  <32.703922, 41.084766, 21.356148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.433743, 41.191429, 21.492819> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.697372, 40.950138, 21.313160>,  <33.855553, 40.805363, 21.205364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.697372, 40.950138, 21.313160>,  <33.433743, 41.191429, 21.492819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697372, 40.950138, 21.313160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263820, 0.744703, -0.613039,
		0.704283, 0.285546, 0.649960,
		0.659078, -0.603226, -0.449149,
		33.895096, 40.769169, 21.178415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018070, 41.624794, 21.555960>,  <33.433743, 41.191429, 21.492819>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018070, 41.624794, 21.555960> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.060501, 41.369827, 21.250689>,  <34.085960, 41.216846, 21.067526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.060501, 41.369827, 21.250689>,  <34.018070, 41.624794, 21.555960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060501, 41.369827, 21.250689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259647, 0.758638, -0.597538,
		0.959860, -0.134774, 0.245976,
		0.106074, -0.637420, -0.763180,
		34.092323, 41.178600, 21.021734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.728100, 41.759693, 21.277950>,  <34.018070, 41.624794, 21.555960>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.728100, 41.759693, 21.277950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.514435, 41.585995, 20.987818>,  <34.386238, 41.481777, 20.813738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.514435, 41.585995, 20.987818>,  <34.728100, 41.759693, 21.277950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514435, 41.585995, 20.987818> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165703, 0.787566, -0.593534,
		0.828986, -0.437231, -0.348729,
		-0.534158, -0.434246, -0.725331,
		34.354187, 41.455723, 20.770218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185730, 41.680321, 20.757055>,  <34.728100, 41.759693, 21.277950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185730, 41.680321, 20.757055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.834404, 41.656860, 20.567265>,  <34.623608, 41.642784, 20.453390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.834404, 41.656860, 20.567265>,  <35.185730, 41.680321, 20.757055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834404, 41.656860, 20.567265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299193, 0.706648, -0.641197,
		0.372897, -0.705130, -0.603108,
		-0.878312, -0.058655, -0.474477,
		34.570911, 41.639263, 20.424921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332092, 41.686115, 20.076977>,  <35.185730, 41.680321, 20.757055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332092, 41.686115, 20.076977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.956245, 41.822151, 20.061708>,  <34.730736, 41.903774, 20.052547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.956245, 41.822151, 20.061708>,  <35.332092, 41.686115, 20.076977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956245, 41.822151, 20.061708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296271, 0.752530, -0.588152,
		-0.171302, -0.563946, -0.807849,
		-0.939617, 0.340094, -0.038170,
		34.674362, 41.924179, 20.050257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078400, 41.824345, 19.352018>,  <35.332092, 41.686115, 20.076977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078400, 41.824345, 19.352018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.804283, 42.029308, 19.559019>,  <34.639812, 42.152287, 19.683220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.804283, 42.029308, 19.559019>,  <35.078400, 41.824345, 19.352018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804283, 42.029308, 19.559019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198050, 0.814942, -0.544651,
		-0.700819, -0.270755, -0.659958,
		-0.685295, 0.512407, 0.517504,
		34.598694, 42.183029, 19.714270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611015, 42.076748, 18.846430>,  <35.078400, 41.824345, 19.352018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611015, 42.076748, 18.846430> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.573883, 42.287754, 19.184214>,  <34.551605, 42.414356, 19.386883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.573883, 42.287754, 19.184214>,  <34.611015, 42.076748, 18.846430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.573883, 42.287754, 19.184214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011877, 0.848647, -0.528827,
		-0.995611, -0.039059, -0.085042,
		-0.092826, 0.527516, 0.844458,
		34.546036, 42.446011, 19.437551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975624, 42.445522, 18.843903>,  <34.611015, 42.076748, 18.846430>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975624, 42.445522, 18.843903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.244591, 42.621685, 19.081858>,  <34.405972, 42.727383, 19.224630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.244591, 42.621685, 19.081858>,  <33.975624, 42.445522, 18.843903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244591, 42.621685, 19.081858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083391, 0.753523, -0.652111,
		-0.735457, 0.488101, 0.469958,
		0.672421, 0.440410, 0.594886,
		34.446316, 42.753807, 19.260324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752609, 43.079201, 19.038387>,  <33.975624, 42.445522, 18.843903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752609, 43.079201, 19.038387> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.149441, 43.038071, 19.009525>,  <34.387539, 43.013393, 18.992208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.149441, 43.038071, 19.009525>,  <33.752609, 43.079201, 19.038387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149441, 43.038071, 19.009525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031607, 0.760261, -0.648848,
		0.121574, 0.641428, 0.757489,
		0.992079, -0.102825, -0.072154,
		34.447063, 43.007225, 18.987879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.840309, 32.803230, 31.232395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221123, 32.925343, 31.240629>,  <34.449612, 32.998611, 31.245569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.221123, 32.925343, 31.240629>,  <33.840309, 32.803230, 31.232395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.221123, 32.925343, 31.240629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218596, 0.725686, -0.652376,
		-0.214100, 0.616587, 0.757616,
		0.952038, 0.305285, 0.020586,
		34.506733, 33.016930, 31.246805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876663, 33.524994, 31.431353>,  <33.840309, 32.803230, 31.232395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876663, 33.524994, 31.431353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212139, 33.436489, 31.232296>,  <34.413425, 33.383385, 31.112862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.212139, 33.436489, 31.232296>,  <33.876663, 33.524994, 31.431353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212139, 33.436489, 31.232296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304547, 0.566997, -0.765354,
		0.451505, 0.793447, 0.408148,
		0.838686, -0.221261, -0.497643,
		34.463745, 33.370110, 31.083002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029877, 34.160736, 31.057768>,  <33.876663, 33.524994, 31.431353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029877, 34.160736, 31.057768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260204, 33.882298, 30.886238>,  <34.398399, 33.715237, 30.783319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.260204, 33.882298, 30.886238>,  <34.029877, 34.160736, 31.057768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260204, 33.882298, 30.886238> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140639, 0.432355, -0.890669,
		0.805393, 0.573169, 0.151058,
		0.575815, -0.696094, -0.428825,
		34.432949, 33.673470, 30.757591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534401, 34.466103, 30.781403>,  <34.029877, 34.160736, 31.057768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534401, 34.466103, 30.781403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504997, 34.125198, 30.574230>,  <34.487354, 33.920658, 30.449926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.504997, 34.125198, 30.574230>,  <34.534401, 34.466103, 30.781403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.504997, 34.125198, 30.574230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076199, 0.522620, -0.849154,
		0.994379, -0.022957, -0.103360,
		-0.073512, -0.852257, -0.517933,
		34.482944, 33.869522, 30.418850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.842915, 34.630939, 30.152143>,  <34.534401, 34.466103, 30.781403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.842915, 34.630939, 30.152143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653561, 34.294392, 30.047831>,  <34.539948, 34.092464, 29.985243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.653561, 34.294392, 30.047831>,  <34.842915, 34.630939, 30.152143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653561, 34.294392, 30.047831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086803, 0.339173, -0.936711,
		0.876571, -0.420784, -0.233591,
		-0.473381, -0.841370, -0.260784,
		34.511547, 34.041981, 29.969595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090668, 34.461979, 29.485460>,  <34.842915, 34.630939, 30.152143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090668, 34.461979, 29.485460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.773598, 34.218239, 29.493013>,  <34.583355, 34.071995, 29.497545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.773598, 34.218239, 29.493013>,  <35.090668, 34.461979, 29.485460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.773598, 34.218239, 29.493013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205971, 0.238527, -0.949042,
		0.573794, -0.756173, -0.314583,
		-0.792677, -0.609350, 0.018885,
		34.535793, 34.035435, 29.498678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118401, 34.063599, 28.866785>,  <35.090668, 34.461979, 29.485460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118401, 34.063599, 28.866785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734947, 34.039513, 28.978067>,  <34.504875, 34.025063, 29.044836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.734947, 34.039513, 28.978067>,  <35.118401, 34.063599, 28.866785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734947, 34.039513, 28.978067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284012, 0.267485, -0.920755,
		-0.018975, -0.961679, -0.273521,
		-0.958633, -0.060212, 0.278204,
		34.447357, 34.021450, 29.061529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713478, 33.754364, 28.332912>,  <35.118401, 34.063599, 28.866785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713478, 33.754364, 28.332912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406761, 33.922203, 28.527220>,  <34.222733, 34.022907, 28.643805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.406761, 33.922203, 28.527220>,  <34.713478, 33.754364, 28.332912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406761, 33.922203, 28.527220> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415848, 0.251769, -0.873890,
		-0.488986, -0.872094, -0.018564,
		-0.766788, 0.419600, 0.485770,
		34.176723, 34.048084, 28.672951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027348, 33.454571, 28.159952>,  <34.713478, 33.754364, 28.332912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027348, 33.454571, 28.159952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983074, 33.838951, 28.261406>,  <33.956509, 34.069580, 28.322279>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.983074, 33.838951, 28.261406>,  <34.027348, 33.454571, 28.159952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983074, 33.838951, 28.261406> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315070, 0.208115, -0.925969,
		-0.942592, -0.182401, 0.279731,
		-0.110682, 0.960947, 0.253637,
		33.949871, 34.127235, 28.337498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400318, 33.629333, 27.783688>,  <34.027348, 33.454571, 28.159952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400318, 33.629333, 27.783688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575375, 33.974880, 27.883450>,  <33.680408, 34.182209, 27.943306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.575375, 33.974880, 27.883450>,  <33.400318, 33.629333, 27.783688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575375, 33.974880, 27.883450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206364, 0.366477, -0.907253,
		-0.875146, 0.345587, 0.338658,
		0.437645, 0.863866, 0.249404,
		33.706669, 34.234039, 27.958271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.911190, 34.009357, 27.620174>,  <33.400318, 33.629333, 27.783688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.911190, 34.009357, 27.620174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251720, 34.219212, 27.621109>,  <33.456039, 34.345123, 27.621670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.251720, 34.219212, 27.621109>,  <32.911190, 34.009357, 27.620174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251720, 34.219212, 27.621109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192081, 0.315828, -0.929170,
		-0.488217, 0.790574, 0.369644,
		0.851322, 0.524638, 0.002338,
		33.507118, 34.376602, 27.621811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.665401, 34.613182, 27.349848>,  <32.911190, 34.009357, 27.620174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.665401, 34.613182, 27.349848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061573, 34.650097, 27.308794>,  <33.299274, 34.672245, 27.284161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.061573, 34.650097, 27.308794>,  <32.665401, 34.613182, 27.349848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.061573, 34.650097, 27.308794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128752, 0.349776, -0.927944,
		-0.049735, 0.932277, 0.358310,
		0.990429, 0.092285, -0.102636,
		33.358704, 34.677784, 27.278004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.372940, 35.135525, 27.772099>,  <32.665401, 34.613182, 27.349848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.372940, 35.135525, 27.772099> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.013195, 35.034241, 27.629528>,  <31.797348, 34.973473, 27.543985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.013195, 35.034241, 27.629528>,  <32.372940, 35.135525, 27.772099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013195, 35.034241, 27.629528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165921, -0.556575, 0.814060,
		-0.404503, 0.791271, 0.458549,
		-0.899359, -0.253207, -0.356425,
		31.743387, 34.958279, 27.522600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849733, 35.330715, 28.331705>,  <32.372940, 35.135525, 27.772099>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849733, 35.330715, 28.331705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681606, 35.063595, 28.085981>,  <31.580730, 34.903324, 27.938547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.681606, 35.063595, 28.085981>,  <31.849733, 35.330715, 28.331705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681606, 35.063595, 28.085981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303470, -0.534572, 0.788758,
		-0.855125, 0.517953, 0.022033,
		-0.420318, -0.667800, -0.614309,
		31.555511, 34.863255, 27.901690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124582, 35.043854, 28.658558>,  <31.849733, 35.330715, 28.331705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124582, 35.043854, 28.658558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246986, 34.784737, 28.379496>,  <31.320429, 34.629265, 28.212059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.246986, 34.784737, 28.379496>,  <31.124582, 35.043854, 28.658558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246986, 34.784737, 28.379496> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181614, -0.759072, 0.625161,
		-0.934545, -0.064601, -0.349931,
		0.306009, -0.647794, -0.697654,
		31.338789, 34.590397, 28.170198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554518, 34.456535, 28.651831>,  <31.124582, 35.043854, 28.658558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554518, 34.456535, 28.651831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890961, 34.325615, 28.479591>,  <31.092827, 34.247063, 28.376247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.890961, 34.325615, 28.479591>,  <30.554518, 34.456535, 28.651831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.890961, 34.325615, 28.479591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031203, -0.824163, 0.565493,
		-0.539968, -0.462204, -0.703422,
		0.841107, -0.327297, -0.430599,
		31.143293, 34.227425, 28.350412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436775, 33.726452, 28.276917>,  <30.554518, 34.456535, 28.651831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436775, 33.726452, 28.276917> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.817455, 33.797054, 28.377403>,  <31.045864, 33.839417, 28.437695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.817455, 33.797054, 28.377403>,  <30.436775, 33.726452, 28.276917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.817455, 33.797054, 28.377403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004548, -0.810030, 0.586370,
		0.306991, -0.559192, -0.770104,
		0.951701, 0.176508, 0.251216,
		31.102966, 33.850006, 28.452768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723978, 33.187981, 28.385168>,  <30.436775, 33.726452, 28.276917>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723978, 33.187981, 28.385168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013348, 33.406551, 28.553965>,  <31.186970, 33.537693, 28.655243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.013348, 33.406551, 28.553965>,  <30.723978, 33.187981, 28.385168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.013348, 33.406551, 28.553965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117298, -0.699613, 0.704828,
		0.680365, -0.460392, -0.570213,
		0.723426, 0.546425, 0.421989,
		31.230375, 33.570480, 28.680561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367922, 32.743801, 28.330891>,  <30.723978, 33.187981, 28.385168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367922, 32.743801, 28.330891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391762, 33.019230, 28.619978>,  <31.406065, 33.184486, 28.793430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.391762, 33.019230, 28.619978>,  <31.367922, 32.743801, 28.330891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391762, 33.019230, 28.619978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106117, -0.724272, 0.681300,
		0.992566, 0.036089, -0.116234,
		0.059598, 0.688569, 0.722718,
		31.409641, 33.225800, 28.836794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981388, 32.598427, 28.772848>,  <31.367922, 32.743801, 28.330891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981388, 32.598427, 28.772848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800833, 32.857460, 29.018410>,  <31.692499, 33.012882, 29.165747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.800833, 32.857460, 29.018410>,  <31.981388, 32.598427, 28.772848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.800833, 32.857460, 29.018410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299569, -0.538079, 0.787864,
		0.840539, 0.539541, 0.048888,
		-0.451390, 0.647585, 0.613906,
		31.665415, 33.051735, 29.202581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424274, 32.731979, 29.284800>,  <31.981388, 32.598427, 28.772848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424274, 32.731979, 29.284800> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088280, 32.851780, 29.465784>,  <31.886683, 32.923660, 29.574375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.088280, 32.851780, 29.465784>,  <32.424274, 32.731979, 29.284800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088280, 32.851780, 29.465784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276416, -0.481366, 0.831794,
		0.466923, 0.823763, 0.321554,
		-0.839987, 0.299501, 0.452462,
		31.836285, 32.941631, 29.601522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711796, 32.952126, 29.823187>,  <32.424274, 32.731979, 29.284800>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711796, 32.952126, 29.823187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323048, 32.892361, 29.896008>,  <32.089798, 32.856503, 29.939701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.323048, 32.892361, 29.896008>,  <32.711796, 32.952126, 29.823187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323048, 32.892361, 29.896008> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230203, -0.439446, 0.868270,
		-0.049723, 0.885756, 0.461479,
		-0.971871, -0.149407, 0.182053,
		32.031487, 32.847538, 29.950624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572487, 33.268074, 30.475647>,  <32.711796, 32.952126, 29.823187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572487, 33.268074, 30.475647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.288219, 32.987572, 30.453043>,  <32.117657, 32.819271, 30.439482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.288219, 32.987572, 30.453043>,  <32.572487, 33.268074, 30.475647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288219, 32.987572, 30.453043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186051, -0.264796, 0.946186,
		-0.678478, 0.661913, 0.318651,
		-0.710671, -0.701252, -0.056508,
		32.075020, 32.777195, 30.436090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238064, 33.270832, 31.184626>,  <32.572487, 33.268074, 30.475647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238064, 33.270832, 31.184626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.131104, 32.918537, 31.028269>,  <32.066929, 32.707161, 30.934454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.131104, 32.918537, 31.028269>,  <32.238064, 33.270832, 31.184626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131104, 32.918537, 31.028269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183144, -0.444724, 0.876743,
		-0.946021, 0.162850, 0.280221,
		-0.267399, -0.880738, -0.390893,
		32.050884, 32.654316, 30.911001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755930, 32.927273, 31.643114>,  <32.238064, 33.270832, 31.184626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755930, 32.927273, 31.643114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898306, 32.612091, 31.442144>,  <31.983730, 32.422981, 31.321562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.898306, 32.612091, 31.442144>,  <31.755930, 32.927273, 31.643114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898306, 32.612091, 31.442144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132451, -0.489670, 0.861789,
		-0.925076, -0.373289, -0.069926,
		0.355937, -0.787959, -0.502424,
		32.005089, 32.375702, 31.291418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021729, 33.033447, 32.285892>,  <31.755930, 32.927273, 31.643114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021729, 33.033447, 32.285892> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029778, 33.151936, 32.667854>,  <32.034607, 33.223030, 32.897034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.029778, 33.151936, 32.667854>,  <32.021729, 33.033447, 32.285892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029778, 33.151936, 32.667854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804675, 0.562048, -0.191310,
		-0.593374, 0.772239, -0.227057,
		0.020120, 0.296225, 0.954906,
		32.035812, 33.240803, 32.954327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945204, 33.782383, 32.439243>,  <32.021729, 33.033447, 32.285892>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945204, 33.782383, 32.439243> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150631, 33.641968, 32.752426>,  <32.273888, 33.557716, 32.940334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150631, 33.641968, 32.752426>,  <31.945204, 33.782383, 32.439243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150631, 33.641968, 32.752426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778363, 0.574614, -0.252924,
		-0.361110, 0.739317, 0.568341,
		0.513567, -0.351042, 0.782955,
		32.304703, 33.536655, 32.987312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285002, 33.231304, 32.487625>,  <31.945204, 33.782383, 32.439243>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285002, 33.231304, 32.487625> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.171520, 33.501194, 32.760170>,  <31.103432, 33.663128, 32.923698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.171520, 33.501194, 32.760170>,  <31.285002, 33.231304, 32.487625>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.171520, 33.501194, 32.760170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049070, 0.699416, -0.713028,
		-0.957655, -0.235724, -0.165319,
		-0.283705, 0.674723, 0.681367,
		31.086409, 33.703609, 32.964581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671276, 33.583874, 32.319363>,  <31.285002, 33.231304, 32.487625>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671276, 33.583874, 32.319363> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.928041, 33.828415, 32.504490>,  <31.082100, 33.975140, 32.615566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.928041, 33.828415, 32.504490>,  <30.671276, 33.583874, 32.319363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928041, 33.828415, 32.504490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031133, 0.582304, -0.812374,
		-0.766147, 0.535881, 0.354754,
		0.641911, 0.611354, 0.462814,
		31.120615, 34.011822, 32.643333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388594, 34.322262, 32.400776>,  <30.671276, 33.583874, 32.319363>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388594, 34.322262, 32.400776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.787546, 34.349648, 32.391457>,  <31.026918, 34.366077, 32.385864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.787546, 34.349648, 32.391457>,  <30.388594, 34.322262, 32.400776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787546, 34.349648, 32.391457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063548, 0.675941, -0.734211,
		-0.034515, 0.733769, 0.678522,
		0.997382, 0.068460, -0.023299,
		31.086761, 34.370186, 32.384468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602058, 35.130562, 32.381023>,  <30.388594, 34.322262, 32.400776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602058, 35.130562, 32.381023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931942, 34.932232, 32.272202>,  <31.129873, 34.813236, 32.206909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.931942, 34.932232, 32.272202>,  <30.602058, 35.130562, 32.381023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931942, 34.932232, 32.272202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239291, 0.741778, -0.626503,
		0.512439, 0.451583, 0.730397,
		0.824710, -0.495821, -0.272056,
		31.179356, 34.783485, 32.190586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134466, 35.652824, 32.267769>,  <30.602058, 35.130562, 32.381023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134466, 35.652824, 32.267769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279110, 35.333431, 32.075245>,  <31.365896, 35.141796, 31.959730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.279110, 35.333431, 32.075245>,  <31.134466, 35.652824, 32.267769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.279110, 35.333431, 32.075245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357192, 0.595505, -0.719574,
		0.861192, 0.088285, 0.500554,
		0.361610, -0.798485, -0.481310,
		31.387592, 35.093887, 31.930851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830330, 35.765339, 32.234943>,  <31.134466, 35.652824, 32.267769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830330, 35.765339, 32.234943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733246, 35.513058, 31.940105>,  <31.674995, 35.361691, 31.763203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.733246, 35.513058, 31.940105>,  <31.830330, 35.765339, 32.234943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.733246, 35.513058, 31.940105> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396438, 0.628990, -0.668736,
		0.885397, -0.454522, 0.097371,
		-0.242709, -0.630699, -0.737096,
		31.660433, 35.323849, 31.718977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.425217, 35.799084, 31.709251>,  <31.830330, 35.765339, 32.234943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.425217, 35.799084, 31.709251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134201, 35.640282, 31.485437>,  <31.959593, 35.545002, 31.351149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.134201, 35.640282, 31.485437>,  <32.425217, 35.799084, 31.709251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134201, 35.640282, 31.485437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431520, 0.369245, -0.823073,
		0.533371, -0.840264, -0.097323,
		-0.727534, -0.397006, -0.559535,
		31.915941, 35.521179, 31.317577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769550, 35.393444, 31.113075>,  <32.425217, 35.799084, 31.709251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769550, 35.393444, 31.113075> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399220, 35.519974, 31.030342>,  <32.177021, 35.595894, 30.980701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.399220, 35.519974, 31.030342>,  <32.769550, 35.393444, 31.113075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399220, 35.519974, 31.030342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357418, 0.554901, -0.751224,
		-0.122862, -0.769429, -0.626804,
		-0.925828, 0.316328, -0.206832,
		32.121471, 35.614872, 30.968292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671963, 35.498196, 30.338360>,  <32.769550, 35.393444, 31.113075>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671963, 35.498196, 30.338360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378124, 35.720528, 30.494015>,  <32.201820, 35.853928, 30.587408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.378124, 35.720528, 30.494015>,  <32.671963, 35.498196, 30.338360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378124, 35.720528, 30.494015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137966, 0.683903, -0.716410,
		-0.664331, -0.472583, -0.579076,
		-0.734595, 0.555826, 0.389138,
		32.157745, 35.887276, 30.610756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.249817, 35.745426, 29.745701>,  <32.671963, 35.498196, 30.338360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.249817, 35.745426, 29.745701> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177319, 35.999134, 30.046328>,  <32.133820, 36.151360, 30.226704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.177319, 35.999134, 30.046328>,  <32.249817, 35.745426, 29.745701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177319, 35.999134, 30.046328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205285, 0.722986, -0.659659,
		-0.961774, -0.273842, -0.000828,
		-0.181241, 0.634273, 0.751565,
		32.122948, 36.189415, 30.271797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702311, 36.087029, 29.446535>,  <32.249817, 35.745426, 29.745701>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702311, 36.087029, 29.446535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845304, 36.302895, 29.751421>,  <31.931101, 36.432415, 29.934353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.845304, 36.302895, 29.751421>,  <31.702311, 36.087029, 29.446535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.845304, 36.302895, 29.751421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047984, 0.825681, -0.562093,
		-0.932685, 0.164367, 0.321065,
		0.357486, 0.539661, 0.762214,
		31.952551, 36.464794, 29.980085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323975, 36.646404, 29.443190>,  <31.702311, 36.087029, 29.446535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323975, 36.646404, 29.443190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.651220, 36.744938, 29.651037>,  <31.847569, 36.804058, 29.775745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.651220, 36.744938, 29.651037>,  <31.323975, 36.646404, 29.443190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651220, 36.744938, 29.651037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092174, 0.835748, -0.541322,
		-0.567617, 0.490760, 0.661034,
		0.818116, 0.246333, 0.519620,
		31.896656, 36.818836, 29.806923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160536, 37.276814, 29.582096>,  <31.323975, 36.646404, 29.443190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160536, 37.276814, 29.582096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.556139, 37.243984, 29.631294>,  <31.793501, 37.224289, 29.660812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.556139, 37.243984, 29.631294>,  <31.160536, 37.276814, 29.582096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.556139, 37.243984, 29.631294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134569, 0.844287, -0.518720,
		-0.061272, 0.529569, 0.846051,
		0.989008, -0.082069, 0.122995,
		31.852842, 37.219364, 29.668192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446299, 37.896313, 29.954237>,  <31.160536, 37.276814, 29.582096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446299, 37.896313, 29.954237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711683, 37.716911, 29.714682>,  <31.870914, 37.609272, 29.570948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.711683, 37.716911, 29.714682>,  <31.446299, 37.896313, 29.954237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711683, 37.716911, 29.714682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246831, 0.886816, -0.390682,
		0.706325, 0.111378, 0.699071,
		0.663460, -0.448501, -0.598889,
		31.910721, 37.582359, 29.535015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854267, 38.497761, 29.896925>,  <31.446299, 37.896313, 29.954237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854267, 38.497761, 29.896925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982067, 38.237144, 29.621704>,  <32.058746, 38.080776, 29.456572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.982067, 38.237144, 29.621704>,  <31.854267, 38.497761, 29.896925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982067, 38.237144, 29.621704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248201, 0.758303, -0.602804,
		0.914503, 0.021820, 0.403990,
		0.319500, -0.651537, -0.688054,
		32.077915, 38.041683, 29.415287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.500687, 38.834110, 29.648064>,  <31.854267, 38.497761, 29.896925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.500687, 38.834110, 29.648064> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375557, 38.559635, 29.385376>,  <32.300480, 38.394951, 29.227764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.375557, 38.559635, 29.385376>,  <32.500687, 38.834110, 29.648064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375557, 38.559635, 29.385376> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115873, 0.658687, -0.743442,
		0.942716, -0.308664, -0.126544,
		-0.312827, -0.686191, -0.656720,
		32.281708, 38.353779, 29.188360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932438, 38.966412, 29.097219>,  <32.500687, 38.834110, 29.648064>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932438, 38.966412, 29.097219> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661724, 38.715927, 28.942390>,  <32.499294, 38.565636, 28.849493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.661724, 38.715927, 28.942390>,  <32.932438, 38.966412, 29.097219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.661724, 38.715927, 28.942390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138873, 0.407745, -0.902474,
		0.722965, -0.664533, -0.188992,
		-0.676784, -0.626211, -0.387070,
		32.458691, 38.528065, 28.826269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.263336, 38.584118, 28.542339>,  <32.932438, 38.966412, 29.097219>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.263336, 38.584118, 28.542339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867840, 38.591042, 28.482897>,  <32.630543, 38.595196, 28.447231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.867840, 38.591042, 28.482897>,  <33.263336, 38.584118, 28.542339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867840, 38.591042, 28.482897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137635, 0.494618, -0.858143,
		0.058652, -0.868938, -0.491433,
		-0.988745, 0.017307, -0.148607,
		32.571217, 38.596233, 28.438314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.225018, 38.554043, 27.856419>,  <33.263336, 38.584118, 28.542339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.225018, 38.554043, 27.856419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869160, 38.691132, 27.977135>,  <32.655647, 38.773384, 28.049564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.869160, 38.691132, 27.977135>,  <33.225018, 38.554043, 27.856419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.869160, 38.691132, 27.977135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045272, 0.591418, -0.805093,
		-0.454412, -0.729906, -0.510634,
		-0.889641, 0.342726, 0.301791,
		32.602268, 38.793949, 28.067673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755566, 38.710911, 27.238586>,  <33.225018, 38.554043, 27.856419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755566, 38.710911, 27.238586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596931, 38.916969, 27.542519>,  <32.501751, 39.040604, 27.724878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.596931, 38.916969, 27.542519>,  <32.755566, 38.710911, 27.238586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.596931, 38.916969, 27.542519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179658, 0.768143, -0.614557,
		-0.900244, -0.380236, -0.212087,
		-0.396590, 0.515148, 0.759828,
		32.477955, 39.071514, 27.770468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.023323, 38.905174, 27.099030>,  <32.755566, 38.710911, 27.238586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.023323, 38.905174, 27.099030> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185699, 39.156822, 27.364183>,  <32.283127, 39.307812, 27.523275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.185699, 39.156822, 27.364183>,  <32.023323, 38.905174, 27.099030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185699, 39.156822, 27.364183> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152453, 0.761791, -0.629628,
		-0.901094, 0.154532, 0.405153,
		0.405940, 0.629121, 0.662887,
		32.307480, 39.345558, 27.563049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618639, 39.548096, 27.006220>,  <32.023323, 38.905174, 27.099030>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618639, 39.548096, 27.006220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974754, 39.634678, 27.166485>,  <32.188423, 39.686626, 27.262644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.974754, 39.634678, 27.166485>,  <31.618639, 39.548096, 27.006220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974754, 39.634678, 27.166485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033321, 0.846491, -0.531358,
		-0.454176, 0.486413, 0.746409,
		0.890288, 0.216459, 0.400664,
		32.241840, 39.699615, 27.286684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516365, 40.210445, 27.157356>,  <31.618639, 39.548096, 27.006220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516365, 40.210445, 27.157356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.913359, 40.161682, 27.161676>,  <32.151554, 40.132423, 27.164268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.913359, 40.161682, 27.161676>,  <31.516365, 40.210445, 27.157356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.913359, 40.161682, 27.161676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110605, 0.855648, -0.505601,
		0.052399, 0.502995, 0.862700,
		0.992482, -0.121912, 0.010799,
		32.211102, 40.125107, 27.164917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755856, 40.840534, 27.437923>,  <31.516365, 40.210445, 27.157356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755856, 40.840534, 27.437923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065868, 40.680458, 27.242302>,  <32.251877, 40.584412, 27.124929>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.065868, 40.680458, 27.242302>,  <31.755856, 40.840534, 27.437923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065868, 40.680458, 27.242302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243406, 0.903253, -0.353395,
		0.583165, 0.154854, 0.797458,
		0.775030, -0.400194, -0.489053,
		32.298378, 40.560398, 27.095587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382275, 41.248203, 27.613506>,  <31.755856, 40.840534, 27.437923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382275, 41.248203, 27.613506> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451359, 41.087898, 27.253605>,  <32.492809, 40.991714, 27.037664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.451359, 41.087898, 27.253605>,  <32.382275, 41.248203, 27.613506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451359, 41.087898, 27.253605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430462, 0.852342, -0.297012,
		0.885930, -0.336012, 0.319725,
		0.172715, -0.400761, -0.899756,
		32.503174, 40.967670, 26.983679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.074474, 41.432022, 27.442924>,  <32.382275, 41.248203, 27.613506>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.074474, 41.432022, 27.442924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874443, 41.340103, 27.108950>,  <32.754425, 41.284950, 26.908566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.874443, 41.340103, 27.108950>,  <33.074474, 41.432022, 27.442924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874443, 41.340103, 27.108950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329657, 0.841042, -0.428922,
		0.800780, -0.489736, -0.344833,
		-0.500077, -0.229795, -0.834935,
		32.724419, 41.271164, 26.858469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485329, 41.714218, 26.941257>,  <33.074474, 41.432022, 27.442924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485329, 41.714218, 26.941257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159061, 41.654491, 26.717691>,  <32.963303, 41.618656, 26.583551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.159061, 41.654491, 26.717691>,  <33.485329, 41.714218, 26.941257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159061, 41.654491, 26.717691> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155148, 0.874267, -0.459986,
		0.557327, -0.461911, -0.689945,
		-0.815669, -0.149319, -0.558917,
		32.914360, 41.609695, 26.550016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224838, 41.562588, 26.801523>,  <33.485329, 41.714218, 26.941257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224838, 41.562588, 26.801523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554974, 41.715481, 26.967758>,  <34.753056, 41.807217, 27.067499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.554974, 41.715481, 26.967758>,  <34.224838, 41.562588, 26.801523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554974, 41.715481, 26.967758> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134392, -0.581896, 0.802082,
		0.548408, -0.717843, -0.428894,
		0.825341, 0.382228, 0.415588,
		34.802574, 41.830151, 27.092434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652786, 40.990528, 26.982082>,  <34.224838, 41.562588, 26.801523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652786, 40.990528, 26.982082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743965, 41.315632, 27.196547>,  <34.798672, 41.510693, 27.325226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.743965, 41.315632, 27.196547>,  <34.652786, 40.990528, 26.982082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.743965, 41.315632, 27.196547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112626, -0.568970, 0.814609,
		0.967139, -0.125298, -0.221230,
		0.227943, 0.812756, 0.536161,
		34.812347, 41.559460, 27.357395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053528, 40.590439, 27.446920>,  <34.652786, 40.990528, 26.982082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053528, 40.590439, 27.446920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037254, 40.954338, 27.612186>,  <35.027489, 41.172676, 27.711346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037254, 40.954338, 27.612186>,  <35.053528, 40.590439, 27.446920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037254, 40.954338, 27.612186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026993, -0.414359, 0.909713,
		0.998807, 0.025859, 0.041415,
		-0.040685, 0.909746, 0.413167,
		35.025047, 41.227261, 27.736137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696259, 40.731930, 27.923597>,  <35.053528, 40.590439, 27.446920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696259, 40.731930, 27.923597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365204, 40.932045, 28.025362>,  <35.166573, 41.052116, 28.086420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.365204, 40.932045, 28.025362>,  <35.696259, 40.731930, 27.923597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.365204, 40.932045, 28.025362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090305, -0.328681, 0.940114,
		0.553950, 0.801049, 0.226850,
		-0.827638, 0.500290, 0.254412,
		35.116913, 41.082130, 28.101685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.851482, 40.860939, 28.570793>,  <35.696259, 40.731930, 27.923597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.851482, 40.860939, 28.570793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467258, 40.971134, 28.555664>,  <35.236725, 41.037251, 28.546587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.467258, 40.971134, 28.555664>,  <35.851482, 40.860939, 28.570793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467258, 40.971134, 28.555664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130903, -0.327982, 0.935571,
		0.245329, 0.903624, 0.351108,
		-0.960561, 0.275483, -0.037823,
		35.179089, 41.053780, 28.544317>
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
