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
	<24.717749, 34.843449, 34.708752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341942, 34.780708, 34.830544>,  <24.116457, 34.743065, 34.903618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.341942, 34.780708, 34.830544>,  <24.717749, 34.843449, 34.708752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.341942, 34.780708, 34.830544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248148, -0.924460, 0.289475,
		0.236074, 0.347522, 0.907468,
		-0.939517, -0.156849, 0.304478,
		24.060087, 34.733654, 34.921886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.658167, 34.608879, 35.414291>,  <24.717749, 34.843449, 34.708752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.658167, 34.608879, 35.414291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364637, 34.463898, 35.184464>,  <24.188519, 34.376907, 35.046566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.364637, 34.463898, 35.184464>,  <24.658167, 34.608879, 35.414291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.364637, 34.463898, 35.184464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297384, -0.931823, 0.208014,
		-0.610789, -0.018221, 0.791584,
		-0.733826, -0.362457, -0.574565,
		24.144489, 34.355160, 35.012093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.194227, 35.137497, 35.418232>,  <24.658167, 34.608879, 35.414291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.194227, 35.137497, 35.418232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299999, 35.385529, 35.713684>,  <24.363462, 35.534348, 35.890957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.299999, 35.385529, 35.713684>,  <24.194227, 35.137497, 35.418232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.299999, 35.385529, 35.713684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863067, -0.493913, 0.105663,
		0.430338, 0.609547, -0.665779,
		0.264431, 0.620083, 0.738630,
		24.379328, 35.571552, 35.935272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.894863, 35.378193, 35.440269>,  <24.194227, 35.137497, 35.418232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.894863, 35.378193, 35.440269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818226, 35.407791, 35.831741>,  <24.772243, 35.425552, 36.066624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818226, 35.407791, 35.831741>,  <24.894863, 35.378193, 35.440269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818226, 35.407791, 35.831741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835788, -0.510458, 0.202217,
		0.514539, 0.856713, 0.035955,
		-0.191595, 0.073998, 0.978680,
		24.760748, 35.429989, 36.125347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531300, 35.480518, 35.737427>,  <24.894863, 35.378193, 35.440269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531300, 35.480518, 35.737427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303467, 35.346935, 36.037842>,  <25.166767, 35.266785, 36.218090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.303467, 35.346935, 36.037842>,  <25.531300, 35.480518, 35.737427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.303467, 35.346935, 36.037842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775248, -0.521849, 0.355900,
		0.273073, 0.784952, 0.556131,
		-0.569580, -0.333953, 0.751035,
		25.132593, 35.246750, 36.263153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710850, 35.692429, 36.398232>,  <25.531300, 35.480518, 35.737427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710850, 35.692429, 36.398232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.537498, 35.332081, 36.388226>,  <25.433487, 35.115871, 36.382221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.537498, 35.332081, 36.388226>,  <25.710850, 35.692429, 36.398232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.537498, 35.332081, 36.388226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811549, -0.402180, 0.423839,
		-0.391881, 0.163384, 0.905392,
		-0.433379, -0.900865, -0.025012,
		25.407484, 35.061821, 36.380722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.997734, 36.385685, 36.099159>,  <25.710850, 35.692429, 36.398232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.997734, 36.385685, 36.099159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298935, 36.175331, 35.940956>,  <26.479656, 36.049118, 35.846035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.298935, 36.175331, 35.940956>,  <25.997734, 36.385685, 36.099159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298935, 36.175331, 35.940956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551742, 0.832134, -0.055990,
		0.358562, -0.176059, 0.916753,
		0.753004, -0.525887, -0.395510,
		26.524836, 36.017567, 35.822304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.576056, 36.434753, 36.581161>,  <25.997734, 36.385685, 36.099159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.576056, 36.434753, 36.581161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604868, 36.438854, 36.182220>,  <26.622154, 36.441315, 35.942856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604868, 36.438854, 36.182220>,  <26.576056, 36.434753, 36.581161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604868, 36.438854, 36.182220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333591, 0.942113, 0.033780,
		0.939962, -0.335140, 0.064436,
		0.072027, 0.010256, -0.997350,
		26.626476, 36.441933, 35.883015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.267885, 36.558388, 36.499695>,  <26.576056, 36.434753, 36.581161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.267885, 36.558388, 36.499695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089567, 36.650986, 36.153820>,  <26.982576, 36.706543, 35.946297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.089567, 36.650986, 36.153820>,  <27.267885, 36.558388, 36.499695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089567, 36.650986, 36.153820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583116, 0.808002, -0.084314,
		0.679149, -0.541798, -0.495188,
		-0.445794, 0.231491, -0.864685,
		26.955830, 36.720432, 35.894413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785210, 36.827579, 36.069057>,  <27.267885, 36.558388, 36.499695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785210, 36.827579, 36.069057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434341, 36.940929, 35.913998>,  <27.223820, 37.008938, 35.820961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.434341, 36.940929, 35.913998>,  <27.785210, 36.827579, 36.069057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.434341, 36.940929, 35.913998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361350, 0.921204, -0.144257,
		0.316226, -0.266615, -0.910449,
		-0.877170, 0.283373, -0.387650,
		27.171190, 37.025940, 35.797703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.871500, 37.282013, 35.409477>,  <27.785210, 36.827579, 36.069057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.871500, 37.282013, 35.409477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518976, 37.386425, 35.567039>,  <27.307463, 37.449070, 35.661575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518976, 37.386425, 35.567039>,  <27.871500, 37.282013, 35.409477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518976, 37.386425, 35.567039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232688, 0.965240, -0.119025,
		-0.411282, -0.013240, -0.911412,
		-0.881308, 0.261028, 0.393905,
		27.254583, 37.464733, 35.685211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.674034, 37.829933, 34.968876>,  <27.871500, 37.282013, 35.409477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.674034, 37.829933, 34.968876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512798, 37.819527, 35.334793>,  <27.416058, 37.813282, 35.554344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.512798, 37.819527, 35.334793>,  <27.674034, 37.829933, 34.968876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.512798, 37.819527, 35.334793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132065, 0.987479, 0.086281,
		-0.905582, 0.155590, -0.394604,
		-0.403088, -0.026021, 0.914791,
		27.391872, 37.811722, 35.609230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337967, 38.199482, 35.339153>,  <27.674034, 37.829933, 34.968876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337967, 38.199482, 35.339153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200302, 38.574261, 35.363411>,  <28.117702, 38.799129, 35.377968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.200302, 38.574261, 35.363411>,  <28.337967, 38.199482, 35.339153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.200302, 38.574261, 35.363411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525005, 0.245593, -0.814895,
		-0.778410, -0.248616, -0.576427,
		-0.344162, 0.936949, 0.060647,
		28.097054, 38.855347, 35.381603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.121820, 37.736435, 35.908756>,  <28.337967, 38.199482, 35.339153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.121820, 37.736435, 35.908756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063316, 37.704155, 36.303135>,  <28.028214, 37.684788, 36.539764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.063316, 37.704155, 36.303135>,  <28.121820, 37.736435, 35.908756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.063316, 37.704155, 36.303135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484459, 0.874814, -0.000259,
		-0.862501, -0.477690, -0.167047,
		-0.146259, -0.080704, 0.985949,
		28.019438, 37.679943, 36.598919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565655, 38.120625, 36.057808>,  <28.121820, 37.736435, 35.908756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565655, 38.120625, 36.057808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709387, 38.089020, 36.429752>,  <27.795626, 38.070057, 36.652920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.709387, 38.089020, 36.429752>,  <27.565655, 38.120625, 36.057808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.709387, 38.089020, 36.429752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469218, 0.846002, 0.253212,
		-0.806670, -0.527293, 0.266918,
		0.359330, -0.079015, 0.929859,
		27.817186, 38.065315, 36.708710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923250, 37.890514, 36.286259>,  <27.565655, 38.120625, 36.057808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923250, 37.890514, 36.286259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875938, 37.926895, 35.890736>,  <26.847551, 37.948723, 35.653423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.875938, 37.926895, 35.890736>,  <26.923250, 37.890514, 36.286259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.875938, 37.926895, 35.890736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004295, -0.995740, -0.092101,
		-0.992971, -0.015140, 0.117382,
		-0.118276, 0.090949, -0.988807,
		26.840454, 37.954182, 35.594093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.247137, 37.763309, 35.928623>,  <26.923250, 37.890514, 36.286259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.247137, 37.763309, 35.928623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555096, 37.655422, 35.697277>,  <26.739872, 37.590691, 35.558468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.555096, 37.655422, 35.697277>,  <26.247137, 37.763309, 35.928623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.555096, 37.655422, 35.697277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346656, -0.937681, -0.024171,
		-0.535804, 0.219103, -0.815419,
		0.769899, -0.269719, -0.578366,
		26.786066, 37.574505, 35.523766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053825, 37.445229, 35.201412>,  <26.247137, 37.763309, 35.928623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053825, 37.445229, 35.201412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397472, 37.317234, 35.361176>,  <26.603661, 37.240437, 35.457035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.397472, 37.317234, 35.361176>,  <26.053825, 37.445229, 35.201412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.397472, 37.317234, 35.361176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296183, -0.947325, -0.121862,
		0.417366, -0.013605, -0.908637,
		0.859117, -0.319984, 0.399411,
		26.655207, 37.221237, 35.480999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.220499, 36.863590, 34.863338>,  <26.053825, 37.445229, 35.201412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.220499, 36.863590, 34.863338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483683, 36.820770, 35.161503>,  <26.641592, 36.795078, 35.340401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.483683, 36.820770, 35.161503>,  <26.220499, 36.863590, 34.863338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.483683, 36.820770, 35.161503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055845, -0.994055, -0.093469,
		0.750981, 0.019872, -0.660025,
		0.657958, -0.107052, 0.745407,
		26.681070, 36.788654, 35.385124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580288, 36.394348, 34.589706>,  <26.220499, 36.863590, 34.863338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580288, 36.394348, 34.589706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627668, 36.406330, 34.986710>,  <26.656097, 36.413521, 35.224911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627668, 36.406330, 34.986710>,  <26.580288, 36.394348, 34.589706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627668, 36.406330, 34.986710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241053, -0.968777, 0.058010,
		0.963256, -0.246119, -0.107534,
		0.118453, 0.029957, 0.992508,
		26.663204, 36.415318, 35.284462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.037756, 35.883286, 34.718414>,  <26.580288, 36.394348, 34.589706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.037756, 35.883286, 34.718414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827736, 35.962254, 35.049557>,  <26.701725, 36.009636, 35.248241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.827736, 35.962254, 35.049557>,  <27.037756, 35.883286, 34.718414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827736, 35.962254, 35.049557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154531, -0.978669, 0.135380,
		0.836925, -0.056848, 0.544357,
		-0.525049, 0.197422, 0.827858,
		26.670221, 36.021481, 35.297913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.321775, 35.553013, 35.270420>,  <27.037756, 35.883286, 34.718414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.321775, 35.553013, 35.270420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926254, 35.589912, 35.317341>,  <26.688942, 35.612053, 35.345493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.926254, 35.589912, 35.317341>,  <27.321775, 35.553013, 35.270420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.926254, 35.589912, 35.317341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087475, -0.995140, 0.045211,
		0.120903, 0.034444, 0.992067,
		-0.988803, 0.092247, 0.117302,
		26.629614, 35.617588, 35.352531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102524, 34.925495, 35.481976>,  <27.321775, 35.553013, 35.270420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102524, 34.925495, 35.481976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714859, 35.006321, 35.425560>,  <26.482260, 35.054817, 35.391712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.714859, 35.006321, 35.425560>,  <27.102524, 34.925495, 35.481976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714859, 35.006321, 35.425560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214188, -0.973775, 0.076718,
		-0.121835, 0.104560, 0.987028,
		-0.969165, 0.202063, -0.141035,
		26.424110, 35.066940, 35.383251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398928, 34.598415, 34.816734>,  <27.102524, 34.925495, 35.481976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398928, 34.598415, 34.816734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475491, 34.815155, 34.489376>,  <27.521427, 34.945198, 34.292961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475491, 34.815155, 34.489376>,  <27.398928, 34.598415, 34.816734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475491, 34.815155, 34.489376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856676, -0.499171, -0.130135,
		-0.479031, -0.676189, -0.559730,
		0.191405, 0.541845, -0.818393,
		27.532911, 34.977707, 34.243858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.549538, 34.244648, 34.161407>,  <27.398928, 34.598415, 34.816734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.549538, 34.244648, 34.161407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766291, 34.578190, 34.203461>,  <27.896343, 34.778313, 34.228691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.766291, 34.578190, 34.203461>,  <27.549538, 34.244648, 34.161407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766291, 34.578190, 34.203461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834637, -0.519212, -0.183848,
		-0.098715, 0.187373, -0.977316,
		0.541883, 0.833853, 0.105135,
		27.928856, 34.828346, 34.235001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988581, 34.322800, 33.514217>,  <27.549538, 34.244648, 34.161407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988581, 34.322800, 33.514217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138287, 34.531006, 33.821201>,  <28.228109, 34.655930, 34.005390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.138287, 34.531006, 33.821201>,  <27.988581, 34.322800, 33.514217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.138287, 34.531006, 33.821201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896410, -0.414978, -0.155698,
		0.237435, 0.746229, -0.621906,
		0.374264, 0.520514, 0.767458,
		28.250566, 34.687160, 34.051437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669676, 34.353035, 33.328968>,  <27.988581, 34.322800, 33.514217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669676, 34.353035, 33.328968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663864, 34.428219, 33.721794>,  <28.660378, 34.473328, 33.957489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.663864, 34.428219, 33.721794>,  <28.669676, 34.353035, 33.328968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663864, 34.428219, 33.721794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855091, -0.506753, 0.109637,
		0.518274, 0.841352, -0.153358,
		-0.014529, 0.187957, 0.982070,
		28.659506, 34.484608, 34.016415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368935, 34.663666, 33.563393>,  <28.669676, 34.353035, 33.328968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368935, 34.663666, 33.563393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175343, 34.430614, 33.824558>,  <29.059187, 34.290783, 33.981258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.175343, 34.430614, 33.824558>,  <29.368935, 34.663666, 33.563393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175343, 34.430614, 33.824558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828781, -0.544663, 0.128312,
		0.280862, 0.603227, 0.746481,
		-0.483982, -0.582631, 0.652918,
		29.030148, 34.255825, 34.020435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743279, 34.539391, 34.291740>,  <29.368935, 34.663666, 33.563393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743279, 34.539391, 34.291740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487053, 34.237637, 34.234344>,  <29.333319, 34.056583, 34.199909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.487053, 34.237637, 34.234344>,  <29.743279, 34.539391, 34.291740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.487053, 34.237637, 34.234344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725846, -0.655805, 0.207526,
		-0.250653, 0.028784, 0.967649,
		-0.640563, -0.754381, -0.143487,
		29.294884, 34.011322, 34.191299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.913422, 34.210796, 34.714085>,  <29.743279, 34.539391, 34.291740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.913422, 34.210796, 34.714085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761871, 33.954575, 34.446911>,  <29.670942, 33.800842, 34.286606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.761871, 33.954575, 34.446911>,  <29.913422, 34.210796, 34.714085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.761871, 33.954575, 34.446911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736448, -0.645769, 0.201561,
		-0.560445, -0.415535, 0.716402,
		-0.378875, -0.640557, -0.667938,
		29.648209, 33.762409, 34.246529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146780, 33.566151, 34.943604>,  <29.913422, 34.210796, 34.714085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146780, 33.566151, 34.943604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002823, 33.511623, 34.574409>,  <29.916449, 33.478905, 34.352894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002823, 33.511623, 34.574409>,  <30.146780, 33.566151, 34.943604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002823, 33.511623, 34.574409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609918, -0.782990, -0.122176,
		-0.706029, -0.606913, 0.364937,
		-0.359892, -0.136322, -0.922981,
		29.894855, 33.470726, 34.297516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121534, 32.821293, 34.788708>,  <30.146780, 33.566151, 34.943604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121534, 32.821293, 34.788708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165342, 33.023071, 34.446121>,  <30.191628, 33.144138, 34.240570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.165342, 33.023071, 34.446121>,  <30.121534, 32.821293, 34.788708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165342, 33.023071, 34.446121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708883, -0.643648, -0.288449,
		-0.696771, -0.575545, -0.428086,
		0.109522, 0.504446, -0.856469,
		30.198198, 33.174404, 34.189182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898525, 32.413605, 34.152596>,  <30.121534, 32.821293, 34.788708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898525, 32.413605, 34.152596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181318, 32.674736, 34.043789>,  <30.350994, 32.831413, 33.978504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.181318, 32.674736, 34.043789>,  <29.898525, 32.413605, 34.152596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.181318, 32.674736, 34.043789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509979, -0.737068, -0.443455,
		-0.489996, 0.174790, -0.854021,
		0.706984, 0.652824, -0.272021,
		30.393414, 32.870583, 33.962181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.056990, 32.426880, 33.352192>,  <29.898525, 32.413605, 34.152596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.056990, 32.426880, 33.352192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375940, 32.565327, 33.549938>,  <30.567310, 32.648392, 33.668587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.375940, 32.565327, 33.549938>,  <30.056990, 32.426880, 33.352192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.375940, 32.565327, 33.549938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575259, -0.683514, -0.449316,
		0.182391, 0.642662, -0.744123,
		0.797377, 0.346112, 0.494364,
		30.615154, 32.669159, 33.698246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.645906, 32.407391, 32.986256>,  <30.056990, 32.426880, 33.352192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.645906, 32.407391, 32.986256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468586, 32.147030, 33.232769>,  <30.362194, 31.990814, 33.380676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468586, 32.147030, 33.232769>,  <30.645906, 32.407391, 32.986256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468586, 32.147030, 33.232769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689022, -0.687214, -0.230189,
		0.573351, 0.322593, 0.753128,
		-0.443303, -0.650900, 0.616288,
		30.335594, 31.951759, 33.417656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.049953, 32.223625, 33.616753>,  <30.645906, 32.407391, 32.986256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.049953, 32.223625, 33.616753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798037, 31.947435, 33.474422>,  <30.646887, 31.781723, 33.389023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798037, 31.947435, 33.474422>,  <31.049953, 32.223625, 33.616753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798037, 31.947435, 33.474422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767007, -0.480422, -0.425318,
		0.122723, -0.540782, 0.832162,
		-0.629794, -0.690470, -0.355825,
		30.609098, 31.740294, 33.367676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240152, 31.573872, 33.877838>,  <31.049953, 32.223625, 33.616753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240152, 31.573872, 33.877838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093117, 31.572462, 33.505844>,  <31.004894, 31.571615, 33.282650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093117, 31.572462, 33.505844>,  <31.240152, 31.573872, 33.877838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093117, 31.572462, 33.505844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818694, -0.475589, -0.321800,
		-0.441153, -0.879661, 0.177709,
		-0.367591, -0.003526, -0.929981,
		30.982840, 31.571404, 33.226849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011810, 32.099003, 34.365978>,  <31.240152, 31.573872, 33.877838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011810, 32.099003, 34.365978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328108, 32.209736, 34.147587>,  <31.517885, 32.276176, 34.016552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328108, 32.209736, 34.147587>,  <31.011810, 32.099003, 34.365978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328108, 32.209736, 34.147587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529594, 0.756689, -0.383344,
		0.307012, 0.592272, 0.744954,
		0.790742, 0.276832, -0.545977,
		31.565331, 32.292786, 33.983795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.261894, 32.860413, 34.548603>,  <31.011810, 32.099003, 34.365978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.261894, 32.860413, 34.548603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303232, 32.739395, 34.169598>,  <31.328035, 32.666786, 33.942192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.303232, 32.739395, 34.169598>,  <31.261894, 32.860413, 34.548603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.303232, 32.739395, 34.169598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620785, 0.724682, -0.299101,
		0.777139, 0.619114, -0.112925,
		0.103343, -0.302545, -0.947516,
		31.334234, 32.648632, 33.885342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676182, 33.304935, 34.105854>,  <31.261894, 32.860413, 34.548603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676182, 33.304935, 34.105854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350933, 33.102905, 33.990112>,  <31.155783, 32.981686, 33.920670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.350933, 33.102905, 33.990112>,  <31.676182, 33.304935, 34.105854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350933, 33.102905, 33.990112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534820, 0.844474, 0.028852,
		0.229776, 0.178210, -0.956788,
		-0.813124, -0.505080, -0.289350,
		31.106997, 32.951382, 33.903309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.263779, 33.785213, 33.656216>,  <31.676182, 33.304935, 34.105854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.263779, 33.785213, 33.656216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987017, 33.512268, 33.750572>,  <30.820959, 33.348499, 33.807186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987017, 33.512268, 33.750572>,  <31.263779, 33.785213, 33.656216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987017, 33.512268, 33.750572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680468, 0.725528, 0.102823,
		-0.241308, -0.089372, -0.966325,
		-0.691906, -0.682365, 0.235891,
		30.779446, 33.307560, 33.821339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619890, 33.900539, 33.213093>,  <31.263779, 33.785213, 33.656216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619890, 33.900539, 33.213093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488752, 33.679874, 33.519867>,  <30.410070, 33.547478, 33.703930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.488752, 33.679874, 33.519867>,  <30.619890, 33.900539, 33.213093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.488752, 33.679874, 33.519867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883478, 0.466582, -0.042050,
		-0.334642, -0.691357, -0.640344,
		-0.327844, -0.551658, 0.766937,
		30.390400, 33.514378, 33.749947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.888142, 33.774136, 33.000938>,  <30.619890, 33.900539, 33.213093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.888142, 33.774136, 33.000938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983015, 33.758083, 33.389194>,  <30.039940, 33.748451, 33.622147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983015, 33.758083, 33.389194>,  <29.888142, 33.774136, 33.000938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983015, 33.758083, 33.389194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785761, 0.579600, 0.215973,
		-0.571248, -0.813912, 0.105936,
		0.237184, -0.040133, 0.970635,
		30.054171, 33.746044, 33.680386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.316162, 33.457108, 33.386887>,  <29.888142, 33.774136, 33.000938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.316162, 33.457108, 33.386887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522001, 33.708878, 33.619785>,  <29.645504, 33.859940, 33.759525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.522001, 33.708878, 33.619785>,  <29.316162, 33.457108, 33.386887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.522001, 33.708878, 33.619785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852719, 0.446783, 0.270657,
		-0.089781, -0.635775, 0.766635,
		0.514597, 0.629425, 0.582250,
		29.676380, 33.897705, 33.794460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793604, 32.974968, 33.521309>,  <29.316162, 33.457108, 33.386887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793604, 32.974968, 33.521309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052279, 33.183739, 33.743801>,  <29.207483, 33.309002, 33.877296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.052279, 33.183739, 33.743801>,  <28.793604, 32.974968, 33.521309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052279, 33.183739, 33.743801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662810, 0.745398, 0.071166,
		-0.377467, -0.414695, 0.827978,
		0.646685, 0.521929, 0.556227,
		29.246284, 33.340317, 33.910667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524940, 32.977070, 34.168430>,  <28.793604, 32.974968, 33.521309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524940, 32.977070, 34.168430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760111, 33.299793, 34.145081>,  <28.901213, 33.493427, 34.131069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760111, 33.299793, 34.145081>,  <28.524940, 32.977070, 34.168430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760111, 33.299793, 34.145081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799298, 0.590517, 0.111410,
		0.124357, -0.018844, 0.992059,
		0.587927, 0.806805, -0.058373,
		28.936489, 33.541836, 34.127567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322960, 33.398849, 34.702969>,  <28.524940, 32.977070, 34.168430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322960, 33.398849, 34.702969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515137, 33.632427, 34.441223>,  <28.630444, 33.772572, 34.284176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.515137, 33.632427, 34.441223>,  <28.322960, 33.398849, 34.702969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515137, 33.632427, 34.441223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601626, 0.762322, 0.238560,
		0.638138, 0.279066, 0.717567,
		0.480443, 0.583941, -0.654361,
		28.659269, 33.807610, 34.244915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.581699, 33.989140, 35.136806>,  <28.322960, 33.398849, 34.702969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.581699, 33.989140, 35.136806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501081, 34.118992, 34.767159>,  <28.452711, 34.196903, 34.545372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.501081, 34.118992, 34.767159>,  <28.581699, 33.989140, 35.136806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501081, 34.118992, 34.767159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702381, 0.609680, 0.367357,
		0.682672, 0.723121, 0.105139,
		-0.201543, 0.324632, -0.924118,
		28.440619, 34.216381, 34.489922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695177, 34.655430, 35.148575>,  <28.581699, 33.989140, 35.136806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695177, 34.655430, 35.148575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434834, 34.510868, 34.881512>,  <28.278627, 34.424129, 34.721272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434834, 34.510868, 34.881512>,  <28.695177, 34.655430, 35.148575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434834, 34.510868, 34.881512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725683, 0.554567, 0.407234,
		0.223087, 0.749562, -0.623209,
		-0.650858, -0.361403, -0.667661,
		28.239576, 34.402447, 34.681213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.782007, 35.427082, 35.005840>,  <28.695177, 34.655430, 35.148575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.782007, 35.427082, 35.005840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624859, 35.234627, 34.692368>,  <28.530571, 35.119152, 34.504284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.624859, 35.234627, 34.692368>,  <28.782007, 35.427082, 35.005840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.624859, 35.234627, 34.692368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853016, 0.509032, 0.115110,
		0.343536, 0.713718, -0.610401,
		-0.392869, -0.481137, -0.783684,
		28.506998, 35.090286, 34.457264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.575533, 35.940571, 34.434639>,  <28.782007, 35.427082, 35.005840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.575533, 35.940571, 34.434639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368345, 35.604729, 34.369186>,  <28.244032, 35.403225, 34.329914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.368345, 35.604729, 34.369186>,  <28.575533, 35.940571, 34.434639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368345, 35.604729, 34.369186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854149, 0.517997, 0.045912,
		0.046212, 0.163545, -0.985453,
		-0.517970, -0.839602, -0.163630,
		28.212954, 35.352848, 34.320099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272673, 35.830734, 33.738190>,  <28.575533, 35.940571, 34.434639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272673, 35.830734, 33.738190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577337, 36.088181, 33.708172>,  <28.760136, 36.242649, 33.690163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.577337, 36.088181, 33.708172>,  <28.272673, 35.830734, 33.738190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.577337, 36.088181, 33.708172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647809, -0.753740, 0.110542,
		0.014584, -0.132808, -0.991034,
		0.761663, 0.643614, -0.075042,
		28.805836, 36.281265, 33.685658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.694332, 35.392429, 33.502644>,  <28.272673, 35.830734, 33.738190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.694332, 35.392429, 33.502644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949417, 35.662739, 33.650505>,  <29.102468, 35.824924, 33.739223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.949417, 35.662739, 33.650505>,  <28.694332, 35.392429, 33.502644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.949417, 35.662739, 33.650505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669956, -0.723433, 0.166745,
		0.380105, 0.141319, -0.914084,
		0.637714, 0.675777, 0.369657,
		29.140732, 35.865471, 33.761402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377563, 35.420948, 33.093655>,  <28.694332, 35.392429, 33.502644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.377563, 35.420948, 33.093655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398338, 35.518585, 33.480999>,  <29.410803, 35.577168, 33.713406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.398338, 35.518585, 33.480999>,  <29.377563, 35.420948, 33.093655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.398338, 35.518585, 33.480999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833911, -0.544104, 0.092427,
		0.549449, 0.802726, -0.231811,
		0.051936, 0.244094, 0.968360,
		29.413919, 35.591812, 33.771507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078625, 35.414288, 33.276058>,  <29.377563, 35.420948, 33.093655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078625, 35.414288, 33.276058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916157, 35.388889, 33.640694>,  <29.818676, 35.373650, 33.859474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.916157, 35.388889, 33.640694>,  <30.078625, 35.414288, 33.276058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.916157, 35.388889, 33.640694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841075, -0.415971, 0.345776,
		0.357239, 0.907158, 0.222359,
		-0.406168, -0.063496, 0.911590,
		29.794306, 35.369839, 33.914169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382322, 35.900547, 33.856270>,  <30.078625, 35.414288, 33.276058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382322, 35.900547, 33.856270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226179, 35.555515, 33.985004>,  <30.132492, 35.348495, 34.062244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.226179, 35.555515, 33.985004>,  <30.382322, 35.900547, 33.856270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.226179, 35.555515, 33.985004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858797, -0.215177, 0.464938,
		-0.331794, 0.457884, 0.824776,
		-0.390360, -0.862578, 0.321835,
		30.109072, 35.296741, 34.081554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285725, 35.960678, 34.602760>,  <30.382322, 35.900547, 33.856270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.285725, 35.960678, 34.602760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343292, 35.579079, 34.497551>,  <30.377832, 35.350121, 34.434425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.343292, 35.579079, 34.497551>,  <30.285725, 35.960678, 34.602760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.343292, 35.579079, 34.497551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934410, 0.043492, 0.353535,
		-0.325831, -0.296652, 0.897681,
		0.143919, -0.953995, -0.263024,
		30.386467, 35.292881, 34.418644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689760, 35.564388, 35.113281>,  <30.285725, 35.960678, 34.602760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689760, 35.564388, 35.113281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723818, 35.379501, 34.760216>,  <30.744253, 35.268570, 34.548374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.723818, 35.379501, 34.760216>,  <30.689760, 35.564388, 35.113281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.723818, 35.379501, 34.760216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986044, -0.088112, 0.141258,
		-0.143066, -0.882376, 0.448268,
		0.085145, -0.462221, -0.882668,
		30.749361, 35.240833, 34.495415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202562, 35.216526, 35.376842>,  <30.689760, 35.564388, 35.113281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202562, 35.216526, 35.376842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234867, 35.193821, 34.978798>,  <31.254250, 35.180199, 34.739971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234867, 35.193821, 34.978798>,  <31.202562, 35.216526, 35.376842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234867, 35.193821, 34.978798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995241, -0.050026, 0.083625,
		-0.054529, -0.997133, 0.052455,
		0.080761, -0.056765, -0.995116,
		31.259096, 35.176792, 34.680264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671900, 34.558105, 35.230392>,  <31.202562, 35.216526, 35.376842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671900, 34.558105, 35.230392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687286, 34.870075, 34.980515>,  <31.696518, 35.057255, 34.830589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687286, 34.870075, 34.980515>,  <31.671900, 34.558105, 35.230392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687286, 34.870075, 34.980515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993447, -0.097179, -0.060155,
		-0.107623, -0.618288, -0.778548,
		0.038465, 0.779921, -0.624695,
		31.698826, 35.104050, 34.793106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844406, 34.339771, 34.502872>,  <31.671900, 34.558105, 35.230392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844406, 34.339771, 34.502872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975452, 34.693699, 34.635391>,  <32.054081, 34.906055, 34.714901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.975452, 34.693699, 34.635391>,  <31.844406, 34.339771, 34.502872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975452, 34.693699, 34.635391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907391, -0.196958, -0.371279,
		-0.263266, 0.422251, -0.867407,
		0.327615, 0.884823, 0.331294,
		32.073738, 34.959145, 34.734779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057961, 34.606358, 33.917675>,  <31.844406, 34.339771, 34.502872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057961, 34.606358, 33.917675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271507, 34.752705, 34.222599>,  <32.399635, 34.840515, 34.405556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.271507, 34.752705, 34.222599>,  <32.057961, 34.606358, 33.917675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.271507, 34.752705, 34.222599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840882, -0.324489, -0.433157,
		0.088882, 0.872264, -0.480890,
		0.533871, 0.365872, 0.762312,
		32.431667, 34.862465, 34.451294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581249, 34.992867, 33.589180>,  <32.057961, 34.606358, 33.917675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581249, 34.992867, 33.589180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687469, 34.857758, 33.950375>,  <32.751202, 34.776691, 34.167091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687469, 34.857758, 33.950375>,  <32.581249, 34.992867, 33.589180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687469, 34.857758, 33.950375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843235, -0.372677, -0.387384,
		0.467372, 0.864304, 0.185857,
		0.265553, -0.337774, 0.902990,
		32.767136, 34.756424, 34.221272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346760, 35.105946, 33.726166>,  <32.581249, 34.992867, 33.589180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346760, 35.105946, 33.726166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200649, 34.767113, 33.880581>,  <33.112984, 34.563812, 33.973228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.200649, 34.767113, 33.880581>,  <33.346760, 35.105946, 33.726166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.200649, 34.767113, 33.880581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718783, -0.520169, -0.461277,
		0.591544, 0.108984, 0.798873,
		-0.365277, -0.847081, 0.386039,
		33.091064, 34.512989, 33.996391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.660534, 34.660416, 34.272964>,  <33.346760, 35.105946, 33.726166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.660534, 34.660416, 34.272964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441319, 34.463291, 34.002617>,  <33.309792, 34.345016, 33.840408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.441319, 34.463291, 34.002617>,  <33.660534, 34.660416, 34.272964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.441319, 34.463291, 34.002617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824564, -0.182528, -0.535517,
		0.140544, -0.850777, 0.506385,
		-0.548035, -0.492810, -0.675867,
		33.276909, 34.315449, 33.799858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912064, 33.938507, 34.193687>,  <33.660534, 34.660416, 34.272964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912064, 33.938507, 34.193687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743301, 34.078964, 33.859337>,  <33.642044, 34.163239, 33.658726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.743301, 34.078964, 33.859337>,  <33.912064, 33.938507, 34.193687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743301, 34.078964, 33.859337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847428, -0.174987, -0.501245,
		-0.322278, -0.919824, -0.223743,
		-0.421905, 0.351146, -0.835878,
		33.616730, 34.184307, 33.608574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213242, 33.531918, 33.776211>,  <33.912064, 33.938507, 34.193687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213242, 33.531918, 33.776211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076447, 33.844261, 33.567097>,  <33.994370, 34.031666, 33.441628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076447, 33.844261, 33.567097>,  <34.213242, 33.531918, 33.776211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076447, 33.844261, 33.567097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866347, 0.046500, -0.497273,
		-0.363990, -0.622976, -0.692396,
		-0.341985, 0.780858, -0.522788,
		33.973850, 34.078518, 33.410259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.438095, 33.443089, 33.157913>,  <34.213242, 33.531918, 33.776211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.438095, 33.443089, 33.157913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369328, 33.835827, 33.189953>,  <34.328068, 34.071472, 33.209175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.369328, 33.835827, 33.189953>,  <34.438095, 33.443089, 33.157913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369328, 33.835827, 33.189953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787927, 0.185851, -0.587052,
		-0.591283, -0.037811, -0.805577,
		-0.171915, 0.981850, 0.080098,
		34.317753, 34.130383, 33.213982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238625, 33.697556, 32.470963>,  <34.438095, 33.443089, 33.157913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238625, 33.697556, 32.470963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371098, 34.019508, 32.667931>,  <34.450581, 34.212681, 32.786114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371098, 34.019508, 32.667931>,  <34.238625, 33.697556, 32.470963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371098, 34.019508, 32.667931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645400, 0.187465, -0.740483,
		-0.688317, 0.563041, -0.457389,
		0.331178, 0.804886, 0.492422,
		34.470451, 34.260975, 32.815659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131294, 34.336502, 32.114033>,  <34.238625, 33.697556, 32.470963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131294, 34.336502, 32.114033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442158, 34.395012, 32.358860>,  <34.628677, 34.430119, 32.505756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.442158, 34.395012, 32.358860>,  <34.131294, 34.336502, 32.114033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442158, 34.395012, 32.358860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578608, 0.216367, -0.786383,
		-0.247456, 0.965293, 0.083518,
		0.777160, 0.146271, 0.612068,
		34.675304, 34.438892, 32.542480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490749, 34.895794, 31.736874>,  <34.131294, 34.336502, 32.114033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490749, 34.895794, 31.736874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756325, 34.784607, 32.014557>,  <34.915668, 34.717896, 32.181168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756325, 34.784607, 32.014557>,  <34.490749, 34.895794, 31.736874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756325, 34.784607, 32.014557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747791, 0.247229, -0.616188,
		-0.000348, 0.928231, 0.372005,
		0.663934, -0.277967, 0.694208,
		34.955505, 34.701218, 32.222820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.976204, 35.442936, 31.686430>,  <34.490749, 34.895794, 31.736874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.976204, 35.442936, 31.686430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146439, 35.121166, 31.852215>,  <35.248577, 34.928104, 31.951685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.146439, 35.121166, 31.852215>,  <34.976204, 35.442936, 31.686430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.146439, 35.121166, 31.852215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732745, 0.037584, -0.679465,
		0.531002, 0.592863, 0.605434,
		0.425584, -0.804426, 0.414460,
		35.274113, 34.879837, 31.976553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.618904, 35.635677, 31.658220>,  <34.976204, 35.442936, 31.686430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.618904, 35.635677, 31.658220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661663, 35.244987, 31.732605>,  <35.687317, 35.010574, 31.777235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.661663, 35.244987, 31.732605>,  <35.618904, 35.635677, 31.658220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661663, 35.244987, 31.732605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755957, -0.041649, -0.653295,
		0.645835, 0.210411, 0.733910,
		0.106894, -0.976725, 0.185960,
		35.693729, 34.951969, 31.788393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.292805, 35.525711, 31.919216>,  <35.618904, 35.635677, 31.658220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.292805, 35.525711, 31.919216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188698, 35.180103, 31.746828>,  <36.126232, 34.972740, 31.643394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188698, 35.180103, 31.746828>,  <36.292805, 35.525711, 31.919216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188698, 35.180103, 31.746828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836925, 0.020701, -0.546927,
		0.481476, -0.503037, 0.717729,
		-0.260266, -0.864017, -0.430971,
		36.110619, 34.920898, 31.617537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898499, 35.129353, 31.835623>,  <36.292805, 35.525711, 31.919216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898499, 35.129353, 31.835623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645069, 34.967667, 31.571745>,  <36.493011, 34.870655, 31.413418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645069, 34.967667, 31.571745>,  <36.898499, 35.129353, 31.835623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645069, 34.967667, 31.571745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694014, 0.079933, -0.715510,
		0.341953, -0.911163, 0.229889,
		-0.633571, -0.404218, -0.659694,
		36.454998, 34.846401, 31.373837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274555, 34.563240, 31.524618>,  <36.898499, 35.129353, 31.835623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274555, 34.563240, 31.524618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963947, 34.655106, 31.289921>,  <36.777580, 34.710224, 31.149103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963947, 34.655106, 31.289921>,  <37.274555, 34.563240, 31.524618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963947, 34.655106, 31.289921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601031, -0.009540, -0.799168,
		-0.189140, -0.973223, -0.130629,
		-0.776523, 0.229666, -0.586742,
		36.730991, 34.724007, 31.113897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502522, 34.323215, 30.820415>,  <37.274555, 34.563240, 31.524618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502522, 34.323215, 30.820415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210953, 34.588734, 30.753428>,  <37.036011, 34.748043, 30.713234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210953, 34.588734, 30.753428>,  <37.502522, 34.323215, 30.820415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210953, 34.588734, 30.753428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350298, 0.151471, -0.924309,
		-0.588184, -0.732417, -0.342937,
		-0.728925, 0.663794, -0.167471,
		36.992275, 34.787872, 30.703186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.239517, 34.270054, 30.138496>,  <37.502522, 34.323215, 30.820415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.239517, 34.270054, 30.138496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125313, 34.640499, 30.237120>,  <37.056789, 34.862766, 30.296293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.125313, 34.640499, 30.237120>,  <37.239517, 34.270054, 30.138496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125313, 34.640499, 30.237120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296361, 0.329973, -0.896263,
		-0.911403, -0.182821, -0.368675,
		-0.285509, 0.926118, 0.246558,
		37.039661, 34.918335, 30.311087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125061, 34.488365, 29.538383>,  <37.239517, 34.270054, 30.138496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125061, 34.488365, 29.538383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144348, 34.813454, 29.770647>,  <37.155918, 35.008507, 29.910006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.144348, 34.813454, 29.770647>,  <37.125061, 34.488365, 29.538383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144348, 34.813454, 29.770647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431136, 0.507459, -0.746061,
		-0.900998, 0.286315, -0.325924,
		0.048215, 0.812717, 0.580660,
		37.158813, 35.057270, 29.944845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908405, 34.999535, 29.128559>,  <37.125061, 34.488365, 29.538383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908405, 34.999535, 29.128559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088745, 35.209652, 29.417227>,  <37.196949, 35.335724, 29.590427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.088745, 35.209652, 29.417227>,  <36.908405, 34.999535, 29.128559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.088745, 35.209652, 29.417227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494072, 0.526488, -0.691884,
		-0.743391, 0.668489, -0.022167,
		0.450846, 0.525293, 0.721668,
		37.223999, 35.367241, 29.633728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871323, 35.713329, 28.783287>,  <36.908405, 34.999535, 29.128559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871323, 35.713329, 28.783287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136700, 35.756172, 29.079496>,  <37.295925, 35.781876, 29.257223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.136700, 35.756172, 29.079496>,  <36.871323, 35.713329, 28.783287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136700, 35.756172, 29.079496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445833, 0.738240, -0.506196,
		-0.600900, 0.665981, 0.442028,
		0.663440, 0.107103, 0.740525,
		37.335732, 35.788303, 29.301653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.042862, 36.375622, 28.776852>,  <36.871323, 35.713329, 28.783287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.042862, 36.375622, 28.776852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351650, 36.214661, 28.973679>,  <37.536922, 36.118084, 29.091774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351650, 36.214661, 28.973679>,  <37.042862, 36.375622, 28.776852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351650, 36.214661, 28.973679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611487, 0.681553, -0.401957,
		-0.173618, 0.611191, 0.772206,
		0.771972, -0.402407, 0.492065,
		37.583241, 36.093937, 29.121298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470875, 36.935936, 29.073565>,  <37.042862, 36.375622, 28.776852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470875, 36.935936, 29.073565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684864, 36.600830, 29.029850>,  <37.813259, 36.399765, 29.003622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.684864, 36.600830, 29.029850>,  <37.470875, 36.935936, 29.073565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684864, 36.600830, 29.029850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543750, 0.440416, -0.714401,
		0.646633, 0.322766, 0.691150,
		0.534978, -0.837768, -0.109284,
		37.845356, 36.349499, 28.997065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.065235, 37.215458, 28.959940>,  <37.470875, 36.935936, 29.073565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.065235, 37.215458, 28.959940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058205, 36.839336, 28.823982>,  <38.053986, 36.613663, 28.742407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058205, 36.839336, 28.823982>,  <38.065235, 37.215458, 28.959940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058205, 36.839336, 28.823982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587992, 0.265231, -0.764146,
		0.808676, -0.213284, 0.548227,
		-0.017573, -0.940299, -0.339895,
		38.052933, 36.557247, 28.722013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708271, 37.114841, 28.879093>,  <38.065235, 37.215458, 28.959940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708271, 37.114841, 28.879093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534294, 36.854023, 28.630686>,  <38.429909, 36.697533, 28.481642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534294, 36.854023, 28.630686>,  <38.708271, 37.114841, 28.879093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534294, 36.854023, 28.630686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613681, 0.290055, -0.734346,
		0.658957, -0.700502, 0.273993,
		-0.434938, -0.652046, -0.621018,
		38.403812, 36.658409, 28.444380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125523, 37.192001, 28.325005>,  <38.708271, 37.114841, 28.879093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125523, 37.192001, 28.325005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846424, 36.975330, 28.137501>,  <38.678963, 36.845329, 28.024998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846424, 36.975330, 28.137501>,  <39.125523, 37.192001, 28.325005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846424, 36.975330, 28.137501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391484, 0.259671, -0.882786,
		0.599905, -0.799475, 0.030871,
		-0.697749, -0.541674, -0.468760,
		38.637100, 36.812828, 27.996872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462921, 36.661961, 27.784403>,  <39.125523, 37.192001, 28.325005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462921, 36.661961, 27.784403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087467, 36.723473, 27.660913>,  <38.862194, 36.760380, 27.586821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.087467, 36.723473, 27.660913>,  <39.462921, 36.661961, 27.784403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087467, 36.723473, 27.660913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344019, 0.353383, -0.869926,
		-0.024678, -0.922753, -0.384602,
		-0.938639, 0.153778, -0.308724,
		38.805874, 36.769608, 27.568296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574810, 36.626091, 27.117775>,  <39.462921, 36.661961, 27.784403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574810, 36.626091, 27.117775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219120, 36.801315, 27.170521>,  <39.005707, 36.906448, 27.202168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.219120, 36.801315, 27.170521>,  <39.574810, 36.626091, 27.117775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.219120, 36.801315, 27.170521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085668, 0.442590, -0.892622,
		-0.449383, -0.782443, -0.431089,
		-0.889222, 0.438060, 0.131863,
		38.952354, 36.932732, 27.210079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197414, 36.734390, 26.437729>,  <39.574810, 36.626091, 27.117775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197414, 36.734390, 26.437729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017666, 37.003639, 26.672667>,  <38.909817, 37.165188, 26.813629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.017666, 37.003639, 26.672667>,  <39.197414, 36.734390, 26.437729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017666, 37.003639, 26.672667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202912, 0.717189, -0.666683,
		-0.869996, -0.180408, -0.458868,
		-0.449370, 0.673122, 0.587345,
		38.882854, 37.205574, 26.848869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861549, 37.014294, 25.970049>,  <39.197414, 36.734390, 26.437729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861549, 37.014294, 25.970049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866863, 37.265903, 26.280956>,  <38.870052, 37.416870, 26.467501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.866863, 37.265903, 26.280956>,  <38.861549, 37.014294, 25.970049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866863, 37.265903, 26.280956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273107, 0.745499, -0.607984,
		-0.961892, 0.220356, -0.161885,
		0.013288, 0.629027, 0.777270,
		38.870850, 37.454613, 26.514137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445278, 37.486259, 25.721727>,  <38.861549, 37.014294, 25.970049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445278, 37.486259, 25.721727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660419, 37.655163, 26.013594>,  <38.789505, 37.756504, 26.188713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.660419, 37.655163, 26.013594>,  <38.445278, 37.486259, 25.721727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660419, 37.655163, 26.013594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268489, 0.734656, -0.623052,
		-0.799141, 0.531019, 0.281768,
		0.537855, 0.422254, 0.729667,
		38.821777, 37.781837, 26.232494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.377197, 38.185402, 25.631914>,  <38.445278, 37.486259, 25.721727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.377197, 38.185402, 25.631914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703876, 38.190975, 25.862673>,  <38.899883, 38.194317, 26.001129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.703876, 38.190975, 25.862673>,  <38.377197, 38.185402, 25.631914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.703876, 38.190975, 25.862673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366637, 0.759476, -0.537376,
		-0.445627, 0.650386, 0.615154,
		0.816697, 0.013930, 0.576899,
		38.948887, 38.195156, 26.035742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484814, 38.795013, 25.803400>,  <38.377197, 38.185402, 25.631914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484814, 38.795013, 25.803400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845459, 38.641178, 25.882584>,  <39.061848, 38.548878, 25.930094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.845459, 38.641178, 25.882584>,  <38.484814, 38.795013, 25.803400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.845459, 38.641178, 25.882584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430550, 0.754042, -0.496032,
		0.041496, 0.532461, 0.845437,
		0.901612, -0.384586, 0.197961,
		39.115944, 38.525803, 25.941973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920380, 39.433449, 26.023407>,  <38.484814, 38.795013, 25.803400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920380, 39.433449, 26.023407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146919, 39.120430, 25.919975>,  <39.282845, 38.932617, 25.857916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146919, 39.120430, 25.919975>,  <38.920380, 39.433449, 26.023407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146919, 39.120430, 25.919975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507773, 0.578438, -0.638416,
		0.649164, 0.230269, 0.724957,
		0.566350, -0.782551, -0.258577,
		39.316826, 38.885666, 25.842402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606812, 39.699505, 25.991415>,  <38.920380, 39.433449, 26.023407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.606812, 39.699505, 25.991415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604530, 39.375633, 25.756680>,  <39.603161, 39.181309, 25.615837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.604530, 39.375633, 25.756680>,  <39.606812, 39.699505, 25.991415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.604530, 39.375633, 25.756680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629117, 0.453252, -0.631485,
		0.777289, -0.372794, 0.506800,
		-0.005706, -0.809683, -0.586839,
		39.602818, 39.132729, 25.580627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219360, 39.601757, 25.867229>,  <39.606812, 39.699505, 25.991415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219360, 39.601757, 25.867229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029247, 39.432606, 25.558611>,  <39.915180, 39.331116, 25.373440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.029247, 39.432606, 25.558611>,  <40.219360, 39.601757, 25.867229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029247, 39.432606, 25.558611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615618, 0.466671, -0.635007,
		0.628586, -0.776785, 0.038528,
		-0.475284, -0.422875, -0.771545,
		39.886662, 39.305744, 25.327147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.726444, 39.338356, 25.422552>,  <40.219360, 39.601757, 25.867229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.726444, 39.338356, 25.422552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407742, 39.386707, 25.185717>,  <40.216518, 39.415718, 25.043615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.407742, 39.386707, 25.185717>,  <40.726444, 39.338356, 25.422552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407742, 39.386707, 25.185717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594548, 0.332130, -0.732259,
		0.108138, -0.935456, -0.336493,
		-0.796755, 0.120876, -0.592089,
		40.168716, 39.422970, 25.008089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006004, 39.167587, 24.649315>,  <40.726444, 39.338356, 25.422552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006004, 39.167587, 24.649315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659744, 39.367840, 24.647230>,  <40.451988, 39.487991, 24.645979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.659744, 39.367840, 24.647230>,  <41.006004, 39.167587, 24.649315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659744, 39.367840, 24.647230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385346, 0.659590, -0.645329,
		-0.319633, -0.560636, -0.763887,
		-0.865646, 0.500629, -0.005212,
		40.400051, 39.518028, 24.645666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974220, 39.294857, 24.003546>,  <41.006004, 39.167587, 24.649315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974220, 39.294857, 24.003546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738132, 39.566372, 24.178310>,  <40.596481, 39.729279, 24.283169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.738132, 39.566372, 24.178310>,  <40.974220, 39.294857, 24.003546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738132, 39.566372, 24.178310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363197, 0.706661, -0.607222,
		-0.720922, -0.199709, -0.663618,
		-0.590220, 0.678783, 0.436914,
		40.561066, 39.770008, 24.309385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.827499, 39.745277, 23.515215>,  <40.974220, 39.294857, 24.003546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.827499, 39.745277, 23.515215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709217, 39.953285, 23.835749>,  <40.638248, 40.078091, 24.028069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709217, 39.953285, 23.835749>,  <40.827499, 39.745277, 23.515215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709217, 39.953285, 23.835749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332291, 0.842459, -0.424083,
		-0.895623, 0.140873, -0.421917,
		-0.295706, 0.520018, 0.801336,
		40.620506, 40.109291, 24.076149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429794, 40.384995, 23.197569>,  <40.827499, 39.745277, 23.515215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429794, 40.384995, 23.197569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512913, 40.471825, 23.579081>,  <40.562782, 40.523922, 23.807987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512913, 40.471825, 23.579081>,  <40.429794, 40.384995, 23.197569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512913, 40.471825, 23.579081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170867, 0.952018, -0.253901,
		-0.963133, 0.215729, 0.160734,
		0.207796, 0.217077, 0.953781,
		40.575253, 40.536949, 23.865215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271137, 41.155514, 23.250694>,  <40.429794, 40.384995, 23.197569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271137, 41.155514, 23.250694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518883, 41.074955, 23.554226>,  <40.667530, 41.026619, 23.736345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.518883, 41.074955, 23.554226>,  <40.271137, 41.155514, 23.250694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518883, 41.074955, 23.554226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362535, 0.930687, -0.048893,
		-0.696387, 0.305385, 0.649450,
		0.619366, -0.201400, 0.758831,
		40.704693, 41.014534, 23.781876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208286, 41.692551, 23.772755>,  <40.271137, 41.155514, 23.250694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208286, 41.692551, 23.772755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574642, 41.545471, 23.837185>,  <40.794456, 41.457222, 23.875843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.574642, 41.545471, 23.837185>,  <40.208286, 41.692551, 23.772755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.574642, 41.545471, 23.837185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360728, 0.929915, 0.071647,
		-0.176130, -0.007517, 0.984338,
		0.915890, -0.367698, 0.161074,
		40.849407, 41.435162, 23.885508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.461746, 42.156414, 24.288698>,  <40.208286, 41.692551, 23.772755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.461746, 42.156414, 24.288698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788696, 41.986507, 24.133022>,  <40.984867, 41.884563, 24.039616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.788696, 41.986507, 24.133022>,  <40.461746, 42.156414, 24.288698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788696, 41.986507, 24.133022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401495, 0.904481, -0.143933,
		0.413153, -0.038610, 0.909843,
		0.817378, -0.424763, -0.389191,
		41.033909, 41.859077, 24.016266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029461, 42.298847, 24.846258>,  <40.461746, 42.156414, 24.288698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029461, 42.298847, 24.846258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190826, 42.227360, 24.487301>,  <41.287647, 42.184467, 24.271927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.190826, 42.227360, 24.487301>,  <41.029461, 42.298847, 24.846258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190826, 42.227360, 24.487301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518410, 0.852792, 0.063214,
		0.753995, -0.490721, 0.436675,
		0.403414, -0.178714, -0.897396,
		41.311852, 42.173744, 24.218082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.675148, 42.310020, 24.946146>,  <41.029461, 42.298847, 24.846258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.675148, 42.310020, 24.946146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608089, 42.395721, 24.561234>,  <41.567856, 42.447144, 24.330286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.608089, 42.395721, 24.561234>,  <41.675148, 42.310020, 24.946146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.608089, 42.395721, 24.561234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631174, 0.773145, 0.062180,
		0.757307, -0.596944, -0.264848,
		-0.167648, 0.214254, -0.962283,
		41.557796, 42.459999, 24.272549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386242, 42.566639, 24.684982>,  <41.675148, 42.310020, 24.946146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386242, 42.566639, 24.684982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137550, 42.699589, 24.401299>,  <41.988335, 42.779358, 24.231089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.137550, 42.699589, 24.401299>,  <42.386242, 42.566639, 24.684982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.137550, 42.699589, 24.401299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409732, 0.909731, 0.067154,
		0.667512, -0.248836, -0.701790,
		-0.621730, 0.332372, -0.709212,
		41.951031, 42.799301, 24.188536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.842800, 42.977036, 24.249718>,  <42.386242, 42.566639, 24.684982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.842800, 42.977036, 24.249718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464497, 43.069153, 24.158066>,  <42.237514, 43.124424, 24.103075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464497, 43.069153, 24.158066>,  <42.842800, 42.977036, 24.249718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464497, 43.069153, 24.158066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267391, 0.952391, -0.146469,
		0.184492, -0.199792, -0.962313,
		-0.945762, 0.230291, -0.229131,
		42.180767, 43.138241, 24.089327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.824696, 43.108006, 23.491022>,  <42.842800, 42.977036, 24.249718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.824696, 43.108006, 23.491022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523598, 43.284115, 23.686794>,  <42.342941, 43.389778, 23.804258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.523598, 43.284115, 23.686794>,  <42.824696, 43.108006, 23.491022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.523598, 43.284115, 23.686794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380141, 0.897679, -0.222859,
		-0.537471, 0.018298, -0.843084,
		-0.752740, 0.440271, 0.489432,
		42.297775, 43.416195, 23.833624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399124, 43.491165, 22.980667>,  <42.824696, 43.108006, 23.491022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399124, 43.491165, 22.980667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325787, 43.639244, 23.344938>,  <42.281784, 43.728092, 23.563501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.325787, 43.639244, 23.344938>,  <42.399124, 43.491165, 22.980667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.325787, 43.639244, 23.344938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226367, 0.917387, -0.327352,
		-0.956631, 0.146131, -0.251996,
		-0.183342, 0.370199, 0.910680,
		42.270782, 43.750305, 23.618143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.007610, 44.127880, 23.047638>,  <42.399124, 43.491165, 22.980667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.007610, 44.127880, 23.047638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230698, 44.132210, 23.379622>,  <42.364552, 44.134808, 23.578812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.230698, 44.132210, 23.379622>,  <42.007610, 44.127880, 23.047638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.230698, 44.132210, 23.379622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275471, 0.940827, -0.197384,
		-0.782984, 0.338715, 0.521736,
		0.557721, 0.010825, 0.829958,
		42.398014, 44.135456, 23.628609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.852871, 44.776657, 23.507721>,  <42.007610, 44.127880, 23.047638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.852871, 44.776657, 23.507721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222492, 44.624115, 23.497198>,  <42.444263, 44.532589, 23.490885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.222492, 44.624115, 23.497198>,  <41.852871, 44.776657, 23.507721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.222492, 44.624115, 23.497198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329183, 0.828837, -0.452402,
		0.194330, 0.409385, 0.891426,
		0.924053, -0.381358, -0.026305,
		42.499710, 44.509708, 23.489307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.223152, 45.039417, 24.244261>,  <41.852871, 44.776657, 23.507721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.223152, 45.039417, 24.244261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331902, 45.318489, 24.509390>,  <42.397152, 45.485931, 24.668467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331902, 45.318489, 24.509390>,  <42.223152, 45.039417, 24.244261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331902, 45.318489, 24.509390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394800, 0.547272, -0.737988,
		-0.877620, 0.462323, -0.126652,
		0.271875, 0.697675, 0.662822,
		42.413464, 45.527790, 24.708237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394604, 45.662262, 23.848988>,  <42.223152, 45.039417, 24.244261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394604, 45.662262, 23.848988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592293, 45.736084, 24.188795>,  <42.710907, 45.780376, 24.392679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.592293, 45.736084, 24.188795>,  <42.394604, 45.662262, 23.848988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.592293, 45.736084, 24.188795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816477, 0.237017, -0.526487,
		-0.298516, 0.953815, -0.033545,
		0.494221, 0.184554, 0.849521,
		42.740559, 45.791451, 24.443651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.653828, 46.466972, 23.833700>,  <42.394604, 45.662262, 23.848988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.653828, 46.466972, 23.833700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857567, 46.196613, 24.046762>,  <42.979813, 46.034397, 24.174601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.857567, 46.196613, 24.046762>,  <42.653828, 46.466972, 23.833700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857567, 46.196613, 24.046762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795576, 0.133886, -0.590876,
		0.328057, 0.724731, 0.605924,
		0.509351, -0.675899, 0.532656,
		43.010372, 45.993843, 24.206560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974724, 46.058327, 23.337421>,  <42.653828, 46.466972, 23.833700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974724, 46.058327, 23.337421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210220, 46.262104, 23.588453>,  <43.351517, 46.384369, 23.739073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.210220, 46.262104, 23.588453>,  <42.974724, 46.058327, 23.337421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.210220, 46.262104, 23.588453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567399, -0.292518, 0.769734,
		0.575714, -0.809260, 0.116840,
		0.588738, 0.509442, 0.627581,
		43.386841, 46.414936, 23.776728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.371731, 45.593037, 23.878391>,  <42.974724, 46.058327, 23.337421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.371731, 45.593037, 23.878391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272575, 45.956654, 24.012371>,  <43.213081, 46.174824, 24.092760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272575, 45.956654, 24.012371>,  <43.371731, 45.593037, 23.878391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272575, 45.956654, 24.012371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530239, -0.416666, 0.738402,
		0.810802, 0.005436, 0.585296,
		-0.247886, 0.909044, 0.334951,
		43.198208, 46.229366, 24.112856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.440666, 45.780514, 24.591099>,  <43.371731, 45.593037, 23.878391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.440666, 45.780514, 24.591099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145157, 46.026337, 24.480448>,  <42.967850, 46.173832, 24.414057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.145157, 46.026337, 24.480448>,  <43.440666, 45.780514, 24.591099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.145157, 46.026337, 24.480448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571027, -0.352785, 0.741263,
		0.357962, 0.705590, 0.611561,
		-0.738777, 0.614562, -0.276627,
		42.923523, 46.210705, 24.397459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160992, 46.314980, 25.081306>,  <43.440666, 45.780514, 24.591099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160992, 46.314980, 25.081306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867001, 46.196327, 24.837397>,  <42.690605, 46.125137, 24.691050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.867001, 46.196327, 24.837397>,  <43.160992, 46.314980, 25.081306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.867001, 46.196327, 24.837397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542720, -0.281797, 0.791230,
		-0.406533, 0.912471, 0.046128,
		-0.734973, -0.296627, -0.609776,
		42.646507, 46.107338, 24.654465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.704777, 46.558849, 25.446436>,  <43.160992, 46.314980, 25.081306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.704777, 46.558849, 25.446436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590679, 46.247128, 25.223251>,  <42.522221, 46.060093, 25.089340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.590679, 46.247128, 25.223251>,  <42.704777, 46.558849, 25.446436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.590679, 46.247128, 25.223251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613686, -0.298670, 0.730880,
		-0.736224, 0.550893, -0.393053,
		-0.285244, -0.779303, -0.557963,
		42.505108, 46.013336, 25.055862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895924, 46.470612, 25.456453>,  <42.704777, 46.558849, 25.446436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895924, 46.470612, 25.456453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036079, 46.115749, 25.336325>,  <42.120171, 45.902832, 25.264248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.036079, 46.115749, 25.336325>,  <41.895924, 46.470612, 25.456453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.036079, 46.115749, 25.336325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628893, -0.460460, 0.626474,
		-0.694063, -0.030638, -0.719262,
		0.350385, -0.887151, -0.300321,
		42.141193, 45.849606, 25.246229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.308041, 46.108505, 25.407719>,  <41.895924, 46.470612, 25.456453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.308041, 46.108505, 25.407719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590321, 45.825104, 25.409580>,  <41.759689, 45.655064, 25.410698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.590321, 45.825104, 25.409580>,  <41.308041, 46.108505, 25.407719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.590321, 45.825104, 25.409580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516215, -0.509649, 0.688317,
		-0.485295, -0.488149, -0.725395,
		0.705699, -0.708497, 0.004659,
		41.802029, 45.612553, 25.410976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.952282, 45.424500, 25.263622>,  <41.308041, 46.108505, 25.407719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.952282, 45.424500, 25.263622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287907, 45.365845, 25.473181>,  <41.489281, 45.330650, 25.598915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.287907, 45.365845, 25.473181>,  <40.952282, 45.424500, 25.263622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.287907, 45.365845, 25.473181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504780, -0.568998, 0.649183,
		0.202900, -0.809158, -0.551447,
		0.839064, -0.146641, 0.523896,
		41.539627, 45.321854, 25.630350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.962204, 44.664989, 25.327677>,  <40.952282, 45.424500, 25.263622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.962204, 44.664989, 25.327677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229500, 44.775906, 25.603813>,  <41.389877, 44.842457, 25.769495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.229500, 44.775906, 25.603813>,  <40.962204, 44.664989, 25.327677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.229500, 44.775906, 25.603813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293139, -0.754726, 0.586906,
		0.683763, -0.594557, -0.423049,
		0.668235, 0.277292, 0.690341,
		41.429970, 44.859093, 25.810915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.317242, 44.065708, 25.524244>,  <40.962204, 44.664989, 25.327677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.317242, 44.065708, 25.524244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424019, 44.294025, 25.834839>,  <41.488087, 44.431015, 26.021196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.424019, 44.294025, 25.834839>,  <41.317242, 44.065708, 25.524244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424019, 44.294025, 25.834839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227347, -0.745685, 0.626312,
		0.936512, -0.343723, -0.069288,
		0.266945, 0.570796, 0.776487,
		41.504101, 44.465263, 26.067785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898670, 43.682228, 25.936625>,  <41.317242, 44.065708, 25.524244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898670, 43.682228, 25.936625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703506, 43.952679, 26.157457>,  <41.586407, 44.114948, 26.289957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.703506, 43.952679, 26.157457>,  <41.898670, 43.682228, 25.936625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.703506, 43.952679, 26.157457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210522, -0.704953, 0.677289,
		0.847126, 0.214232, 0.486294,
		-0.487912, 0.676125, 0.552084,
		41.557133, 44.155518, 26.323082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.172218, 43.452503, 26.478844>,  <41.898670, 43.682228, 25.936625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.172218, 43.452503, 26.478844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859200, 43.670639, 26.598993>,  <41.671391, 43.801521, 26.671083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.859200, 43.670639, 26.598993>,  <42.172218, 43.452503, 26.478844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.859200, 43.670639, 26.598993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115430, -0.601172, 0.790739,
		0.611801, 0.584116, 0.533393,
		-0.782545, 0.545344, 0.300373,
		41.624435, 43.834244, 26.689106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222218, 43.560688, 27.212601>,  <42.172218, 43.452503, 26.478844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222218, 43.560688, 27.212601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839813, 43.639252, 27.125448>,  <41.610371, 43.686390, 27.073156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.839813, 43.639252, 27.125448>,  <42.222218, 43.560688, 27.212601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.839813, 43.639252, 27.125448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270212, -0.300532, 0.914695,
		0.114177, 0.933329, 0.340383,
		-0.956007, 0.196413, -0.217883,
		41.553013, 43.698177, 27.060083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.911274, 43.866470, 27.867346>,  <42.222218, 43.560688, 27.212601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.911274, 43.866470, 27.867346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601818, 43.720734, 27.659985>,  <41.416145, 43.633293, 27.535568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.601818, 43.720734, 27.659985>,  <41.911274, 43.866470, 27.867346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601818, 43.720734, 27.659985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311642, -0.493560, 0.811959,
		-0.551692, 0.789718, 0.268293,
		-0.773638, -0.364340, -0.518402,
		41.369728, 43.611431, 27.504463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236828, 44.061565, 28.112537>,  <41.911274, 43.866470, 27.867346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236828, 44.061565, 28.112537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183697, 43.711708, 27.926050>,  <41.151817, 43.501793, 27.814157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.183697, 43.711708, 27.926050>,  <41.236828, 44.061565, 28.112537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183697, 43.711708, 27.926050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499292, -0.347293, 0.793785,
		-0.856192, 0.338216, -0.390571,
		-0.132828, -0.874641, -0.466218,
		41.143848, 43.449314, 27.786184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573212, 43.842903, 28.340387>,  <41.236828, 44.061565, 28.112537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573212, 43.842903, 28.340387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769333, 43.516338, 28.218361>,  <40.887005, 43.320396, 28.145145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769333, 43.516338, 28.218361>,  <40.573212, 43.842903, 28.340387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769333, 43.516338, 28.218361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499133, -0.549973, 0.669624,
		-0.714471, -0.176050, -0.677154,
		0.490304, -0.816417, -0.305067,
		40.916424, 43.271412, 28.126841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108139, 43.355499, 28.169867>,  <40.573212, 43.842903, 28.340387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.108139, 43.355499, 28.169867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445408, 43.148800, 28.229252>,  <40.647770, 43.024780, 28.264883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.445408, 43.148800, 28.229252>,  <40.108139, 43.355499, 28.169867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445408, 43.148800, 28.229252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490774, -0.626961, 0.605030,
		-0.219566, -0.583004, -0.782239,
		0.843168, -0.516746, 0.148464,
		40.698357, 42.993774, 28.273790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.862381, 42.802673, 28.373075>,  <40.108139, 43.355499, 28.169867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.862381, 42.802673, 28.373075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241943, 42.745880, 28.485804>,  <40.469681, 42.711803, 28.553440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.241943, 42.745880, 28.485804>,  <39.862381, 42.802673, 28.373075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.241943, 42.745880, 28.485804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296030, -0.709859, 0.639114,
		0.109310, -0.689885, -0.715618,
		0.948903, -0.141983, 0.281821,
		40.526615, 42.703285, 28.570351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052559, 42.073563, 28.314785>,  <39.862381, 42.802673, 28.373075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052559, 42.073563, 28.314785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326145, 42.188301, 28.583086>,  <40.490299, 42.257145, 28.744066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.326145, 42.188301, 28.583086>,  <40.052559, 42.073563, 28.314785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326145, 42.188301, 28.583086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129771, -0.856946, 0.498803,
		0.717878, -0.428208, -0.548898,
		0.683967, 0.286848, 0.670751,
		40.531334, 42.274357, 28.784311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412350, 41.402542, 28.410238>,  <40.052559, 42.073563, 28.314785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412350, 41.402542, 28.410238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526932, 41.635185, 28.714785>,  <40.595680, 41.774769, 28.897512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526932, 41.635185, 28.714785>,  <40.412350, 41.402542, 28.410238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526932, 41.635185, 28.714785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071724, -0.779419, 0.622384,
		0.955404, -0.232895, -0.181556,
		0.286458, 0.581606, 0.761365,
		40.612869, 41.809666, 28.943193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900776, 41.002415, 28.905691>,  <40.412350, 41.402542, 28.410238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900776, 41.002415, 28.905691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728886, 41.298462, 29.112598>,  <40.625751, 41.476089, 29.236744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.728886, 41.298462, 29.112598>,  <40.900776, 41.002415, 28.905691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.728886, 41.298462, 29.112598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220344, -0.641493, 0.734803,
		0.875664, 0.201784, 0.438744,
		-0.429723, 0.740115, 0.517270,
		40.599968, 41.520496, 29.267780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921074, 40.712742, 29.599676>,  <40.900776, 41.002415, 28.905691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921074, 40.712742, 29.599676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669647, 41.023735, 29.607952>,  <40.518791, 41.210331, 29.612919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.669647, 41.023735, 29.607952>,  <40.921074, 40.712742, 29.599676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.669647, 41.023735, 29.607952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552330, -0.464950, 0.691920,
		0.547577, 0.423486, 0.721678,
		-0.628562, 0.777484, 0.020692,
		40.481079, 41.256981, 29.614161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732925, 40.705833, 30.321472>,  <40.921074, 40.712742, 29.599676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732925, 40.705833, 30.321472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447601, 40.927731, 30.150145>,  <40.276409, 41.060867, 30.047348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.447601, 40.927731, 30.150145>,  <40.732925, 40.705833, 30.321472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.447601, 40.927731, 30.150145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693694, -0.471722, 0.544304,
		0.099899, 0.685379, 0.721302,
		-0.713308, 0.554738, -0.428319,
		40.233608, 41.094151, 30.021648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392166, 41.137936, 30.820833>,  <40.732925, 40.705833, 30.321472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392166, 41.137936, 30.820833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145203, 41.075264, 30.512480>,  <39.997025, 41.037663, 30.327467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.145203, 41.075264, 30.512480>,  <40.392166, 41.137936, 30.820833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.145203, 41.075264, 30.512480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706985, -0.319190, 0.631102,
		-0.344938, 0.934649, 0.086301,
		-0.617405, -0.156678, -0.770884,
		39.959980, 41.028259, 30.281214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790974, 41.407154, 31.031687>,  <40.392166, 41.137936, 30.820833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790974, 41.407154, 31.031687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653202, 41.196903, 30.720535>,  <39.570541, 41.070755, 30.533844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653202, 41.196903, 30.720535>,  <39.790974, 41.407154, 31.031687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653202, 41.196903, 30.720535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774277, -0.309529, 0.551984,
		-0.530911, 0.792409, -0.300368,
		-0.344425, -0.525623, -0.777877,
		39.549873, 41.039215, 30.487173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969082, 41.521507, 30.888784>,  <39.790974, 41.407154, 31.031687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969082, 41.521507, 30.888784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051708, 41.169037, 30.718678>,  <39.101284, 40.957554, 30.616613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051708, 41.169037, 30.718678>,  <38.969082, 41.521507, 30.888784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051708, 41.169037, 30.718678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829125, -0.388422, 0.402095,
		-0.519500, 0.269538, -0.810844,
		0.206570, -0.881180, -0.425266,
		39.113678, 40.904682, 30.591097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281651, 41.323082, 30.557510>,  <38.969082, 41.521507, 30.888784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281651, 41.323082, 30.557510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503521, 40.990952, 30.579004>,  <38.636642, 40.791672, 30.591902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.503521, 40.990952, 30.579004>,  <38.281651, 41.323082, 30.557510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503521, 40.990952, 30.579004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819019, -0.533446, 0.211291,
		-0.146775, -0.161209, -0.975945,
		0.554676, -0.830330, 0.053737,
		38.669922, 40.741852, 30.595125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841190, 40.893578, 30.190306>,  <38.281651, 41.323082, 30.557510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841190, 40.893578, 30.190306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093704, 40.675285, 30.410728>,  <38.245213, 40.544312, 30.542982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093704, 40.675285, 30.410728>,  <37.841190, 40.893578, 30.190306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093704, 40.675285, 30.410728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764633, -0.556780, 0.324550,
		0.129699, -0.626237, -0.768769,
		0.631280, -0.545732, 0.551056,
		38.283089, 40.511566, 30.576046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733345, 40.147617, 30.041576>,  <37.841190, 40.893578, 30.190306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733345, 40.147617, 30.041576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916462, 40.175591, 30.396097>,  <38.026333, 40.192375, 30.608810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.916462, 40.175591, 30.396097>,  <37.733345, 40.147617, 30.041576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916462, 40.175591, 30.396097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687794, -0.603825, 0.402909,
		0.563349, -0.794043, -0.228326,
		0.457796, 0.069937, 0.886302,
		38.053802, 40.196571, 30.661987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707520, 39.436588, 30.315201>,  <37.733345, 40.147617, 30.041576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707520, 39.436588, 30.315201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752663, 39.676846, 30.631807>,  <37.779747, 39.820999, 30.821772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752663, 39.676846, 30.631807>,  <37.707520, 39.436588, 30.315201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752663, 39.676846, 30.631807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651227, -0.556938, 0.515484,
		0.750445, -0.573629, 0.328301,
		0.112853, 0.600641, 0.791514,
		37.786518, 39.857037, 30.869261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733990, 39.003258, 30.988947>,  <37.707520, 39.436588, 30.315201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733990, 39.003258, 30.988947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683495, 39.377911, 31.119656>,  <37.653198, 39.602703, 31.198082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.683495, 39.377911, 31.119656>,  <37.733990, 39.003258, 30.988947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.683495, 39.377911, 31.119656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706619, -0.316103, 0.633063,
		0.696242, -0.150985, 0.701748,
		-0.126242, 0.936634, 0.326773,
		37.645622, 39.658901, 31.217688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886322, 38.949085, 31.688816>,  <37.733990, 39.003258, 30.988947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886322, 38.949085, 31.688816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664211, 39.280216, 31.656887>,  <37.530945, 39.478893, 31.637730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664211, 39.280216, 31.656887>,  <37.886322, 38.949085, 31.688816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664211, 39.280216, 31.656887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646279, -0.369098, 0.667900,
		0.523443, 0.422456, 0.739958,
		-0.555276, 0.827827, -0.079823,
		37.497627, 39.528564, 31.632940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779823, 39.133263, 32.347446>,  <37.886322, 38.949085, 31.688816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779823, 39.133263, 32.347446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492958, 39.310211, 32.132050>,  <37.320839, 39.416382, 32.002811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.492958, 39.310211, 32.132050>,  <37.779823, 39.133263, 32.347446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.492958, 39.310211, 32.132050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682814, -0.291445, 0.669944,
		0.139425, 0.848153, 0.511075,
		-0.717165, 0.442376, -0.538496,
		37.277809, 39.442924, 31.970501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343948, 39.419743, 32.819328>,  <37.779823, 39.133263, 32.347446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.343948, 39.419743, 32.819328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107864, 39.405815, 32.496731>,  <36.966213, 39.397461, 32.303173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107864, 39.405815, 32.496731>,  <37.343948, 39.419743, 32.819328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107864, 39.405815, 32.496731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725133, -0.416154, 0.548633,
		-0.354728, 0.908628, 0.220372,
		-0.590212, -0.034816, -0.806497,
		36.930801, 39.395370, 32.254780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736443, 39.714058, 32.979366>,  <37.343948, 39.419743, 32.819328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736443, 39.714058, 32.979366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610062, 39.500675, 32.665524>,  <36.534233, 39.372646, 32.477219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610062, 39.500675, 32.665524>,  <36.736443, 39.714058, 32.979366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610062, 39.500675, 32.665524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832879, -0.240128, 0.498651,
		-0.454412, 0.811028, -0.368434,
		-0.315948, -0.533453, -0.784604,
		36.515278, 39.340641, 32.430141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986366, 39.857555, 32.846272>,  <36.736443, 39.714058, 32.979366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986366, 39.857555, 32.846272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030769, 39.515888, 32.643066>,  <36.057411, 39.310890, 32.521145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.030769, 39.515888, 32.643066>,  <35.986366, 39.857555, 32.846272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030769, 39.515888, 32.643066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711592, -0.425157, 0.559356,
		-0.693768, 0.299403, -0.655015,
		0.111011, -0.854166, -0.508013,
		36.064072, 39.259640, 32.490662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292107, 39.694725, 32.484966>,  <35.986366, 39.857555, 32.846272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292107, 39.694725, 32.484966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493214, 39.349689, 32.507462>,  <35.613880, 39.142670, 32.520958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.493214, 39.349689, 32.507462>,  <35.292107, 39.694725, 32.484966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.493214, 39.349689, 32.507462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769059, -0.416657, 0.484712,
		-0.394672, -0.286954, -0.872864,
		0.502775, -0.862586, 0.056242,
		35.644047, 39.090912, 32.524334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836456, 39.266853, 32.344059>,  <35.292107, 39.694725, 32.484966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836456, 39.266853, 32.344059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109772, 39.015892, 32.493450>,  <35.273762, 38.865314, 32.583084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.109772, 39.015892, 32.493450>,  <34.836456, 39.266853, 32.344059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109772, 39.015892, 32.493450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729637, -0.567558, 0.381454,
		-0.027352, -0.533149, -0.845579,
		0.683287, -0.627400, 0.373481,
		35.314758, 38.827671, 32.605495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608418, 38.604183, 32.183319>,  <34.836456, 39.266853, 32.344059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608418, 38.604183, 32.183319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854015, 38.510983, 32.484974>,  <35.001373, 38.455063, 32.665966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854015, 38.510983, 32.484974>,  <34.608418, 38.604183, 32.183319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854015, 38.510983, 32.484974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741293, -0.498386, 0.449551,
		0.271108, -0.835058, -0.478725,
		0.613992, -0.232999, 0.754139,
		35.038212, 38.441082, 32.711216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.663128, 37.829258, 32.308765>,  <34.608418, 38.604183, 32.183319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.663128, 37.829258, 32.308765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758884, 37.978455, 32.667336>,  <34.816338, 38.067970, 32.882477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.758884, 37.978455, 32.667336>,  <34.663128, 37.829258, 32.308765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.758884, 37.978455, 32.667336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655570, -0.618937, 0.432602,
		0.716184, -0.691228, 0.096352,
		0.239391, 0.372988, 0.896422,
		34.830700, 38.090351, 32.936260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651314, 37.258900, 32.727421>,  <34.663128, 37.829258, 32.308765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651314, 37.258900, 32.727421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661655, 37.556999, 32.993935>,  <34.667862, 37.735859, 33.153843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.661655, 37.556999, 32.993935>,  <34.651314, 37.258900, 32.727421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.661655, 37.556999, 32.993935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426557, -0.594560, 0.681577,
		0.904091, -0.301829, 0.302521,
		0.025853, 0.745250, 0.666284,
		34.669411, 37.780575, 33.193821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955204, 37.010002, 33.339630>,  <34.651314, 37.258900, 32.727421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955204, 37.010002, 33.339630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738010, 37.327621, 33.448921>,  <34.607693, 37.518192, 33.514496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.738010, 37.327621, 33.448921>,  <34.955204, 37.010002, 33.339630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738010, 37.327621, 33.448921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462088, -0.554213, 0.692331,
		0.701173, 0.249668, 0.667849,
		-0.542983, 0.794049, 0.273231,
		34.575115, 37.565838, 33.530891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052094, 37.108257, 34.104282>,  <34.955204, 37.010002, 33.339630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052094, 37.108257, 34.104282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708218, 37.254230, 33.961311>,  <34.501892, 37.341812, 33.875530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708218, 37.254230, 33.961311>,  <35.052094, 37.108257, 34.104282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708218, 37.254230, 33.961311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510042, -0.651594, 0.561500,
		-0.027988, 0.665021, 0.746300,
		-0.859694, 0.364929, -0.357426,
		34.450310, 37.363708, 33.854084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194664, 36.426960, 33.955746>,  <35.052094, 37.108257, 34.104282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194664, 36.426960, 33.955746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371445, 36.095623, 33.818031>,  <35.477512, 35.896820, 33.735401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.371445, 36.095623, 33.818031>,  <35.194664, 36.426960, 33.955746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.371445, 36.095623, 33.818031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630238, 0.013605, 0.776282,
		-0.638343, -0.560059, 0.528065,
		0.441949, -0.828341, -0.344286,
		35.504028, 35.847122, 33.714745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881260, 36.811676, 34.139759>,  <35.194664, 36.426960, 33.955746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881260, 36.811676, 34.139759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097473, 36.702465, 34.458076>,  <36.227200, 36.636940, 34.649067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097473, 36.702465, 34.458076>,  <35.881260, 36.811676, 34.139759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097473, 36.702465, 34.458076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730491, 0.621559, -0.282927,
		-0.417384, 0.734249, 0.535414,
		0.540530, -0.273026, 0.795791,
		36.259632, 36.620556, 34.696815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252499, 37.421032, 34.388912>,  <35.881260, 36.811676, 34.139759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252499, 37.421032, 34.388912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448074, 37.107601, 34.542248>,  <36.565422, 36.919544, 34.634251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.448074, 37.107601, 34.542248>,  <36.252499, 37.421032, 34.388912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.448074, 37.107601, 34.542248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857411, 0.512585, -0.045852,
		-0.160566, 0.351099, 0.922468,
		0.488942, -0.783573, 0.383340,
		36.594757, 36.872528, 34.657249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815998, 37.691689, 34.801720>,  <36.252499, 37.421032, 34.388912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815998, 37.691689, 34.801720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924831, 37.312107, 34.737900>,  <36.990131, 37.084358, 34.699608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924831, 37.312107, 34.737900>,  <36.815998, 37.691689, 34.801720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924831, 37.312107, 34.737900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952060, 0.289564, -0.098665,
		0.139827, -0.125051, 0.982248,
		0.272086, -0.948955, -0.159545,
		37.006458, 37.027420, 34.690037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.431946, 37.656876, 35.172924>,  <36.815998, 37.691689, 34.801720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.431946, 37.656876, 35.172924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415779, 37.366486, 34.898312>,  <37.406078, 37.192249, 34.733543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.415779, 37.366486, 34.898312>,  <37.431946, 37.656876, 35.172924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415779, 37.366486, 34.898312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938843, 0.207562, -0.274759,
		0.341966, -0.655646, 0.673192,
		-0.040415, -0.725980, -0.686528,
		37.403656, 37.148693, 34.692352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018784, 37.284512, 35.254631>,  <37.431946, 37.656876, 35.172924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018784, 37.284512, 35.254631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900124, 37.209320, 34.880108>,  <37.828926, 37.164207, 34.655396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.900124, 37.209320, 34.880108>,  <38.018784, 37.284512, 35.254631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.900124, 37.209320, 34.880108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895692, 0.285325, -0.341065,
		0.331264, -0.939816, 0.083728,
		-0.296649, -0.187977, -0.936303,
		37.811131, 37.152927, 34.599216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640446, 37.089058, 34.931698>,  <38.018784, 37.284512, 35.254631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640446, 37.089058, 34.931698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382881, 37.135544, 34.629208>,  <38.228344, 37.163433, 34.447716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.382881, 37.135544, 34.629208>,  <38.640446, 37.089058, 34.931698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382881, 37.135544, 34.629208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704835, 0.474599, -0.527222,
		0.297633, -0.872496, -0.387511,
		-0.643912, 0.116212, -0.756222,
		38.189709, 37.170406, 34.402340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898487, 36.722927, 34.331696>,  <38.640446, 37.089058, 34.931698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898487, 36.722927, 34.331696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667126, 37.034531, 34.234859>,  <38.528309, 37.221493, 34.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.667126, 37.034531, 34.234859>,  <38.898487, 36.722927, 34.331696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667126, 37.034531, 34.234859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702439, 0.324726, -0.633351,
		-0.414770, -0.536382, -0.735024,
		-0.578399, 0.779004, -0.242089,
		38.493607, 37.268230, 34.162231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.227825, 36.966473, 33.823570>,  <38.898487, 36.722927, 34.331696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.227825, 36.966473, 33.823570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955948, 37.255657, 33.873119>,  <38.792820, 37.429169, 33.902847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.955948, 37.255657, 33.873119>,  <39.227825, 36.966473, 33.823570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955948, 37.255657, 33.873119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569329, 0.626470, -0.532353,
		-0.462473, -0.291313, -0.837410,
		-0.679693, 0.722961, 0.123872,
		38.752041, 37.472546, 33.910282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253025, 37.277473, 33.098194>,  <39.227825, 36.966473, 33.823570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253025, 37.277473, 33.098194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097538, 37.545582, 33.351059>,  <39.004246, 37.706448, 33.502777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.097538, 37.545582, 33.351059>,  <39.253025, 37.277473, 33.098194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.097538, 37.545582, 33.351059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481866, 0.732706, -0.480570,
		-0.785303, 0.117813, -0.607798,
		-0.388720, 0.670270, 0.632166,
		38.980923, 37.746662, 33.540710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077408, 37.843369, 32.692936>,  <39.253025, 37.277473, 33.098194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077408, 37.843369, 32.692936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068611, 37.999897, 33.060932>,  <39.063332, 38.093815, 33.281731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.068611, 37.999897, 33.060932>,  <39.077408, 37.843369, 32.692936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.068611, 37.999897, 33.060932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425246, 0.836480, -0.345639,
		-0.904810, 0.383621, -0.184805,
		-0.021992, 0.391325, 0.919990,
		39.062016, 38.117294, 33.336929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868870, 38.547413, 32.595596>,  <39.077408, 37.843369, 32.692936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868870, 38.547413, 32.595596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036053, 38.538197, 32.958866>,  <39.136360, 38.532669, 33.176826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.036053, 38.538197, 32.958866>,  <38.868870, 38.547413, 32.595596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.036053, 38.538197, 32.958866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323973, 0.937730, -0.125310,
		-0.848737, 0.346599, 0.399393,
		0.417955, -0.023038, 0.908176,
		39.161438, 38.531284, 33.231319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567368, 39.024296, 32.995167>,  <38.868870, 38.547413, 32.595596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567368, 39.024296, 32.995167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932346, 38.952305, 33.142159>,  <39.151333, 38.909111, 33.230354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932346, 38.952305, 33.142159>,  <38.567368, 39.024296, 32.995167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932346, 38.952305, 33.142159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263144, 0.945830, -0.190160,
		-0.313348, 0.270212, 0.910384,
		0.912452, -0.179976, 0.367479,
		39.206081, 38.898312, 33.252403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795326, 39.621544, 33.284790>,  <38.567368, 39.024296, 32.995167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795326, 39.621544, 33.284790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136196, 39.415352, 33.248863>,  <39.340717, 39.291637, 33.227306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136196, 39.415352, 33.248863>,  <38.795326, 39.621544, 33.284790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136196, 39.415352, 33.248863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482245, 0.840352, -0.247483,
		0.203055, 0.167584, 0.964720,
		0.852178, -0.515484, -0.089821,
		39.391850, 39.260708, 33.221916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272751, 40.139492, 33.484615>,  <38.795326, 39.621544, 33.284790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272751, 40.139492, 33.484615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521584, 39.872005, 33.321724>,  <39.670883, 39.711514, 33.223988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.521584, 39.872005, 33.321724>,  <39.272751, 40.139492, 33.484615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.521584, 39.872005, 33.321724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630624, 0.736205, -0.245593,
		0.464036, -0.104029, 0.879687,
		0.622081, -0.668715, -0.407228,
		39.708206, 39.671391, 33.199554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971870, 40.295708, 33.702858>,  <39.272751, 40.139492, 33.484615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971870, 40.295708, 33.702858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013790, 40.082729, 33.366875>,  <40.038944, 39.954945, 33.165287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013790, 40.082729, 33.366875>,  <39.971870, 40.295708, 33.702858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013790, 40.082729, 33.366875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780060, 0.567904, -0.262662,
		0.616866, -0.627687, 0.474854,
		0.104802, -0.532442, -0.839954,
		40.045231, 39.922997, 33.114887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647690, 40.167393, 33.701164>,  <39.971870, 40.295708, 33.702858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647690, 40.167393, 33.701164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539890, 40.141014, 33.316868>,  <40.475212, 40.125187, 33.086288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539890, 40.141014, 33.316868>,  <40.647690, 40.167393, 33.701164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539890, 40.141014, 33.316868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699133, 0.672688, -0.242290,
		0.662256, -0.736982, -0.135184,
		-0.269500, -0.065946, -0.960740,
		40.459042, 40.121231, 33.028645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.242523, 40.188725, 33.215927>,  <40.647690, 40.167393, 33.701164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.242523, 40.188725, 33.215927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950550, 40.258881, 32.951675>,  <40.775364, 40.300972, 32.793125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.950550, 40.258881, 32.951675>,  <41.242523, 40.188725, 33.215927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.950550, 40.258881, 32.951675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616858, 0.585351, -0.526166,
		0.294418, -0.791583, -0.535457,
		-0.729935, 0.175389, -0.660632,
		40.731571, 40.311497, 32.753487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.546921, 40.132458, 32.518982>,  <41.242523, 40.188725, 33.215927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.546921, 40.132458, 32.518982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217735, 40.337967, 32.422016>,  <41.020222, 40.461273, 32.363834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217735, 40.337967, 32.422016>,  <41.546921, 40.132458, 32.518982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217735, 40.337967, 32.422016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513847, 0.491237, -0.703311,
		-0.242257, -0.703367, -0.668272,
		-0.822966, 0.513772, -0.242417,
		40.970844, 40.492100, 32.349293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.507160, 40.141479, 31.788977>,  <41.546921, 40.132458, 32.518982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.507160, 40.141479, 31.788977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316544, 40.461533, 31.934687>,  <41.202171, 40.653564, 32.022114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.316544, 40.461533, 31.934687>,  <41.507160, 40.141479, 31.788977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.316544, 40.461533, 31.934687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547142, 0.594248, -0.589496,
		-0.688143, -0.081613, -0.720971,
		-0.476546, 0.800131, 0.364273,
		41.173580, 40.701572, 32.043968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365776, 40.480083, 31.170103>,  <41.507160, 40.141479, 31.788977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365776, 40.480083, 31.170103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317833, 40.759293, 31.452492>,  <41.289066, 40.926819, 31.621925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.317833, 40.759293, 31.452492>,  <41.365776, 40.480083, 31.170103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317833, 40.759293, 31.452492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453647, 0.671029, -0.586451,
		-0.883084, 0.249970, -0.397086,
		-0.119861, 0.698022, 0.705974,
		41.281876, 40.968700, 31.664284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147137, 40.953480, 30.850702>,  <41.365776, 40.480083, 31.170103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147137, 40.953480, 30.850702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332211, 41.114670, 31.166559>,  <41.443256, 41.211384, 31.356073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.332211, 41.114670, 31.166559>,  <41.147137, 40.953480, 30.850702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.332211, 41.114670, 31.166559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255585, 0.792265, -0.554068,
		-0.848880, 0.458181, 0.263577,
		0.462687, 0.402971, 0.789643,
		41.471016, 41.235561, 31.403452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986866, 41.686722, 30.728653>,  <41.147137, 40.953480, 30.850702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986866, 41.686722, 30.728653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281712, 41.704082, 30.998402>,  <41.458618, 41.714497, 31.160250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281712, 41.704082, 30.998402>,  <40.986866, 41.686722, 30.728653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281712, 41.704082, 30.998402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255957, 0.905653, -0.338053,
		-0.625416, 0.421794, 0.656464,
		0.737117, 0.043397, 0.674371,
		41.502846, 41.717102, 31.200712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893227, 42.308369, 31.057674>,  <40.986866, 41.686722, 30.728653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.893227, 42.308369, 31.057674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271912, 42.180405, 31.072639>,  <41.499123, 42.103626, 31.081619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.271912, 42.180405, 31.072639>,  <40.893227, 42.308369, 31.057674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.271912, 42.180405, 31.072639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309532, 0.871523, -0.380313,
		0.089060, 0.371626, 0.924101,
		0.946709, -0.319910, 0.037412,
		41.555923, 42.084431, 31.083862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.322948, 42.771683, 31.083542>,  <40.893227, 42.308369, 31.057674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.322948, 42.771683, 31.083542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664017, 42.567158, 31.040621>,  <41.868656, 42.444443, 31.014868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.664017, 42.567158, 31.040621>,  <41.322948, 42.771683, 31.083542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664017, 42.567158, 31.040621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398254, 0.769046, -0.499962,
		0.338160, 0.383568, 0.859374,
		0.852668, -0.511316, -0.107303,
		41.919815, 42.413761, 31.008430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.805935, 43.275387, 31.185505>,  <41.322948, 42.771683, 31.083542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.805935, 43.275387, 31.185505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977276, 42.990997, 30.962423>,  <42.080082, 42.820366, 30.828575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977276, 42.990997, 30.962423>,  <41.805935, 43.275387, 31.185505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977276, 42.990997, 30.962423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390033, 0.702216, -0.595623,
		0.815099, 0.037616, 0.578099,
		0.428355, -0.710970, -0.557704,
		42.105782, 42.777706, 30.795113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430885, 43.566956, 31.018038>,  <41.805935, 43.275387, 31.185505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430885, 43.566956, 31.018038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364685, 43.277031, 30.750528>,  <42.324966, 43.103077, 30.590023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.364685, 43.277031, 30.750528>,  <42.430885, 43.566956, 31.018038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.364685, 43.277031, 30.750528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521443, 0.511274, -0.683152,
		0.837083, -0.461787, 0.293334,
		-0.165496, -0.724812, -0.668774,
		42.315037, 43.059586, 30.549896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.134388, 43.299610, 30.746141>,  <42.430885, 43.566956, 31.018038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.134388, 43.299610, 30.746141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832939, 43.237629, 30.490627>,  <42.652069, 43.200439, 30.337318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.832939, 43.237629, 30.490627>,  <43.134388, 43.299610, 30.746141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832939, 43.237629, 30.490627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555256, 0.370016, -0.744834,
		0.351763, -0.916014, -0.192823,
		-0.753626, -0.154939, -0.638781,
		42.606853, 43.191143, 30.298992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.475079, 43.169083, 30.153301>,  <43.134388, 43.299610, 30.746141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.475079, 43.169083, 30.153301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118328, 43.294785, 30.023197>,  <42.904278, 43.370205, 29.945135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.118328, 43.294785, 30.023197>,  <43.475079, 43.169083, 30.153301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118328, 43.294785, 30.023197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448515, 0.522000, -0.725500,
		-0.058208, -0.792942, -0.606511,
		-0.891878, 0.314259, -0.325262,
		42.850765, 43.389061, 29.925619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.463200, 43.018436, 29.503208>,  <43.475079, 43.169083, 30.153301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.463200, 43.018436, 29.503208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212189, 43.325169, 29.557158>,  <43.061584, 43.509209, 29.589527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.212189, 43.325169, 29.557158>,  <43.463200, 43.018436, 29.503208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.212189, 43.325169, 29.557158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382354, 0.454407, -0.804561,
		-0.678247, -0.453312, -0.578351,
		-0.627524, 0.766826, 0.134874,
		43.023930, 43.555218, 29.597620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306324, 43.218899, 28.742498>,  <43.463200, 43.018436, 29.503208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306324, 43.218899, 28.742498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187920, 43.524952, 28.971212>,  <43.116875, 43.708584, 29.108440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187920, 43.524952, 28.971212>,  <43.306324, 43.218899, 28.742498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187920, 43.524952, 28.971212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203821, 0.635425, -0.744776,
		-0.933184, -0.103923, -0.344047,
		-0.296015, 0.765137, 0.571787,
		43.099113, 43.754494, 29.142748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.034222, 43.602589, 28.215918>,  <43.306324, 43.218899, 28.742498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.034222, 43.602589, 28.215918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115997, 43.844051, 28.524151>,  <43.165062, 43.988930, 28.709091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.115997, 43.844051, 28.524151>,  <43.034222, 43.602589, 28.215918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.115997, 43.844051, 28.524151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048346, 0.780023, -0.623881,
		-0.977685, 0.164801, 0.130283,
		0.204439, 0.603660, 0.770584,
		43.177330, 44.025150, 28.755325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860973, 44.297482, 27.999012>,  <43.034222, 43.602589, 28.215918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860973, 44.297482, 27.999012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105225, 44.410023, 28.295111>,  <43.251778, 44.477547, 28.472771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.105225, 44.410023, 28.295111>,  <42.860973, 44.297482, 27.999012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.105225, 44.410023, 28.295111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393055, 0.703812, -0.591739,
		-0.687487, 0.652293, 0.319180,
		0.610630, 0.281358, 0.740249,
		43.288414, 44.494431, 28.517185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803963, 44.944061, 28.059528>,  <42.860973, 44.297482, 27.999012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803963, 44.944061, 28.059528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156567, 44.874203, 28.234999>,  <43.368130, 44.832287, 28.340281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.156567, 44.874203, 28.234999>,  <42.803963, 44.944061, 28.059528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.156567, 44.874203, 28.234999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418189, 0.720145, -0.553633,
		-0.219216, 0.671482, 0.707853,
		0.881511, -0.174651, 0.438674,
		43.421021, 44.821808, 28.366600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038898, 45.591225, 28.277439>,  <42.803963, 44.944061, 28.059528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038898, 45.591225, 28.277439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353359, 45.344975, 28.255651>,  <43.542034, 45.197224, 28.242579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353359, 45.344975, 28.255651>,  <43.038898, 45.591225, 28.277439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353359, 45.344975, 28.255651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478216, 0.661761, -0.577393,
		0.391506, 0.427870, 0.814648,
		0.786151, -0.615630, -0.054469,
		43.589203, 45.160286, 28.239311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638508, 46.026669, 28.348532>,  <43.038898, 45.591225, 28.277439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638508, 46.026669, 28.348532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770351, 45.701481, 28.156513>,  <43.849457, 45.506367, 28.041302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.770351, 45.701481, 28.156513>,  <43.638508, 46.026669, 28.348532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770351, 45.701481, 28.156513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520550, 0.580676, -0.625974,
		0.787647, -0.043563, 0.614584,
		0.329605, -0.812968, -0.480045,
		43.869232, 45.457592, 28.012499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318623, 46.158978, 28.311060>,  <43.638508, 46.026669, 28.348532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318623, 46.158978, 28.311060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243019, 45.877163, 28.037445>,  <44.197659, 45.708076, 27.873276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243019, 45.877163, 28.037445>,  <44.318623, 46.158978, 28.311060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243019, 45.877163, 28.037445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473449, 0.544901, -0.692047,
		0.860304, -0.454658, 0.230572,
		-0.189006, -0.704535, -0.684038,
		44.186317, 45.665802, 27.832233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.960644, 46.211605, 27.828836>,  <44.318623, 46.158978, 28.311060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.960644, 46.211605, 27.828836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675369, 46.022030, 27.622244>,  <44.504204, 45.908283, 27.498289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.675369, 46.022030, 27.622244>,  <44.960644, 46.211605, 27.828836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.675369, 46.022030, 27.622244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312542, 0.444518, -0.839477,
		0.627447, -0.760121, -0.168896,
		-0.713181, -0.473940, -0.516482,
		44.461414, 45.879848, 27.467300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230785, 45.654110, 27.323517>,  <44.960644, 46.211605, 27.828836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230785, 45.654110, 27.323517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875744, 45.789272, 27.198311>,  <44.662720, 45.870369, 27.123186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.875744, 45.789272, 27.198311>,  <45.230785, 45.654110, 27.323517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.875744, 45.789272, 27.198311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429900, 0.363770, -0.826352,
		-0.165362, -0.868039, -0.468149,
		-0.887605, 0.337904, -0.313016,
		44.609463, 45.890644, 27.104406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.573837, 44.843636, 27.358776>,  <45.230785, 45.654110, 27.323517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.573837, 44.843636, 27.358776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800575, 44.532787, 27.249399>,  <45.936619, 44.346279, 27.183773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.800575, 44.532787, 27.249399>,  <45.573837, 44.843636, 27.358776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.800575, 44.532787, 27.249399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643802, -0.624954, 0.441533,
		-0.514013, -0.074239, -0.854564,
		0.566842, -0.777123, -0.273440,
		45.970627, 44.299652, 27.167366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.149975, 44.317539, 27.106956>,  <45.573837, 44.843636, 27.358776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.149975, 44.317539, 27.106956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490211, 44.131737, 27.205534>,  <45.694355, 44.020256, 27.264681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.490211, 44.131737, 27.205534>,  <45.149975, 44.317539, 27.106956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.490211, 44.131737, 27.205534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525797, -0.756516, 0.388872,
		0.005807, -0.460349, -0.887719,
		0.850590, -0.464502, 0.246443,
		45.745388, 43.992386, 27.279467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.091557, 43.619858, 27.028818>,  <45.149975, 44.317539, 27.106956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.091557, 43.619858, 27.028818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410629, 43.605373, 27.269617>,  <45.602074, 43.596684, 27.414097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.410629, 43.605373, 27.269617>,  <45.091557, 43.619858, 27.028818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.410629, 43.605373, 27.269617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425972, -0.740438, 0.519903,
		0.426917, -0.671149, -0.606054,
		0.797678, -0.036206, 0.601996,
		45.649933, 43.594513, 27.450216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.339798, 42.915924, 27.038527>,  <45.091557, 43.619858, 27.028818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.339798, 42.915924, 27.038527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457561, 43.094421, 27.376566>,  <45.528217, 43.201519, 27.579390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.457561, 43.094421, 27.376566>,  <45.339798, 42.915924, 27.038527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.457561, 43.094421, 27.376566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349032, -0.772996, 0.529767,
		0.889664, -0.450932, -0.071819,
		0.294404, 0.446248, 0.845097,
		45.545883, 43.228294, 27.630095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.796143, 42.385265, 27.467232>,  <45.339798, 42.915924, 27.038527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.796143, 42.385265, 27.467232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628933, 42.665497, 27.698557>,  <45.528606, 42.833637, 27.837353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.628933, 42.665497, 27.698557>,  <45.796143, 42.385265, 27.467232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.628933, 42.665497, 27.698557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356215, -0.712028, 0.605084,
		0.835685, 0.046934, 0.547200,
		-0.418021, 0.700580, 0.578312,
		45.503525, 42.875671, 27.872051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.887276, 42.049259, 28.211750>,  <45.796143, 42.385265, 27.467232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.887276, 42.049259, 28.211750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633091, 42.354706, 28.257496>,  <45.480579, 42.537971, 28.284943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.633091, 42.354706, 28.257496>,  <45.887276, 42.049259, 28.211750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.633091, 42.354706, 28.257496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476184, -0.504174, 0.720456,
		0.607809, 0.403367, 0.684005,
		-0.635466, 0.763612, 0.114365,
		45.442451, 42.583790, 28.291805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.946445, 42.215134, 28.880371>,  <45.887276, 42.049259, 28.211750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.946445, 42.215134, 28.880371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591454, 42.328995, 28.735399>,  <45.378460, 42.397312, 28.648417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591454, 42.328995, 28.735399>,  <45.946445, 42.215134, 28.880371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591454, 42.328995, 28.735399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460843, -0.543841, 0.701327,
		0.002534, 0.789435, 0.613829,
		-0.887478, 0.284656, -0.362428,
		45.325211, 42.414391, 28.626671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492069, 42.409637, 29.441093>,  <45.946445, 42.215134, 28.880371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492069, 42.409637, 29.441093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216465, 42.360168, 29.155445>,  <45.051102, 42.330486, 28.984056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216465, 42.360168, 29.155445>,  <45.492069, 42.409637, 29.441093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216465, 42.360168, 29.155445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581510, -0.493749, 0.646574,
		-0.432561, 0.860765, 0.268281,
		-0.689012, -0.123675, -0.714120,
		45.009762, 42.323067, 28.941210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.724602, 42.669434, 29.572294>,  <45.492069, 42.409637, 29.441093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.724602, 42.669434, 29.572294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668453, 42.367020, 29.316574>,  <44.634762, 42.185570, 29.163141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.668453, 42.367020, 29.316574>,  <44.724602, 42.669434, 29.572294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.668453, 42.367020, 29.316574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579236, -0.460958, 0.672312,
		-0.802982, 0.464682, -0.373216,
		-0.140375, -0.756034, -0.639302,
		44.626339, 42.140209, 29.124784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984970, 42.344845, 29.689756>,  <44.724602, 42.669434, 29.572294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984970, 42.344845, 29.689756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180668, 42.060154, 29.488129>,  <44.298084, 41.889339, 29.367151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.180668, 42.060154, 29.488129>,  <43.984970, 42.344845, 29.689756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.180668, 42.060154, 29.488129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604887, -0.693270, 0.391777,
		-0.628294, 0.113232, -0.769691,
		0.489242, -0.711727, -0.504070,
		44.327442, 41.846634, 29.336908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.377640, 41.925190, 29.441334>,  <43.984970, 42.344845, 29.689756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.377640, 41.925190, 29.441334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689255, 41.679688, 29.390097>,  <43.876225, 41.532387, 29.359354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689255, 41.679688, 29.390097>,  <43.377640, 41.925190, 29.441334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689255, 41.679688, 29.390097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524299, -0.749746, 0.403722,
		-0.343822, -0.247356, -0.905870,
		0.779036, -0.613755, -0.128091,
		43.922966, 41.495560, 29.351669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161533, 41.320530, 29.001316>,  <43.377640, 41.925190, 29.441334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161533, 41.320530, 29.001316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493462, 41.187000, 29.180185>,  <43.692619, 41.106884, 29.287506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493462, 41.187000, 29.180185>,  <43.161533, 41.320530, 29.001316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493462, 41.187000, 29.180185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461737, -0.860746, 0.214276,
		0.313372, -0.384287, -0.868402,
		0.829817, -0.333825, 0.447174,
		43.742405, 41.086853, 29.314337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339111, 40.661564, 28.817739>,  <43.161533, 41.320530, 29.001316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339111, 40.661564, 28.817739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555946, 40.664513, 29.153856>,  <43.686047, 40.666283, 29.355526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.555946, 40.664513, 29.153856>,  <43.339111, 40.661564, 28.817739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.555946, 40.664513, 29.153856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207983, -0.967673, 0.142661,
		0.814179, -0.252101, -0.523027,
		0.542084, 0.007371, 0.840292,
		43.718571, 40.666725, 29.405943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736382, 39.993958, 28.912207>,  <43.339111, 40.661564, 28.817739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736382, 39.993958, 28.912207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732449, 40.126965, 29.289425>,  <43.730087, 40.206768, 29.515755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.732449, 40.126965, 29.289425>,  <43.736382, 39.993958, 28.912207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732449, 40.126965, 29.289425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313051, -0.896706, 0.312918,
		0.949686, -0.292144, 0.112913,
		-0.009833, 0.332521, 0.943044,
		43.729500, 40.226723, 29.572338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108257, 39.423405, 29.392721>,  <43.736382, 39.993958, 28.912207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108257, 39.423405, 29.392721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842644, 39.650333, 29.587538>,  <43.683277, 39.786491, 29.704428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.842644, 39.650333, 29.587538>,  <44.108257, 39.423405, 29.392721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.842644, 39.650333, 29.587538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353096, -0.812102, 0.464558,
		0.659080, 0.136509, 0.739580,
		-0.664030, 0.567324, 0.487039,
		43.643436, 39.820530, 29.733650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.082470, 39.134953, 30.004034>,  <44.108257, 39.423405, 29.392721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.082470, 39.134953, 30.004034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730267, 39.322617, 30.031113>,  <43.518944, 39.435215, 30.047359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730267, 39.322617, 30.031113>,  <44.082470, 39.134953, 30.004034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730267, 39.322617, 30.031113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313567, -0.683593, 0.659072,
		0.355491, 0.559093, 0.749027,
		-0.880512, 0.469164, 0.067698,
		43.466114, 39.463367, 30.051422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915066, 39.142845, 30.732254>,  <44.082470, 39.134953, 30.004034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915066, 39.142845, 30.732254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558418, 39.247070, 30.584131>,  <43.344429, 39.309605, 30.495258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.558418, 39.247070, 30.584131>,  <43.915066, 39.142845, 30.732254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.558418, 39.247070, 30.584131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451447, -0.448614, 0.771325,
		0.034855, 0.854899, 0.517622,
		-0.891617, 0.260563, -0.370305,
		43.290932, 39.325241, 30.473040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583282, 39.645103, 31.112326>,  <43.915066, 39.142845, 30.732254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583282, 39.645103, 31.112326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292099, 39.436947, 30.933765>,  <43.117390, 39.312054, 30.826630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.292099, 39.436947, 30.933765>,  <43.583282, 39.645103, 31.112326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.292099, 39.436947, 30.933765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312901, -0.327171, 0.891657,
		-0.610063, 0.788764, 0.075333,
		-0.727954, -0.520395, -0.446399,
		43.073711, 39.280827, 30.799845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.977650, 39.666214, 31.567963>,  <43.583282, 39.645103, 31.112326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.977650, 39.666214, 31.567963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885929, 39.375690, 31.308765>,  <42.830894, 39.201378, 31.153248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.885929, 39.375690, 31.308765>,  <42.977650, 39.666214, 31.567963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.885929, 39.375690, 31.308765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579498, -0.433017, 0.690418,
		-0.782050, 0.533826, -0.321603,
		-0.229303, -0.726310, -0.647992,
		42.817139, 39.157799, 31.114368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251331, 39.585529, 31.650684>,  <42.977650, 39.666214, 31.567963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251331, 39.585529, 31.650684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386925, 39.244209, 31.492208>,  <42.468281, 39.039417, 31.397123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.386925, 39.244209, 31.492208>,  <42.251331, 39.585529, 31.650684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.386925, 39.244209, 31.492208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591122, -0.520794, 0.615913,
		-0.731894, 0.025413, -0.680945,
		0.338980, -0.853304, -0.396188,
		42.488617, 38.988216, 31.373352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.715004, 39.200214, 31.494665>,  <42.251331, 39.585529, 31.650684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.715004, 39.200214, 31.494665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008297, 38.928951, 31.514547>,  <42.184273, 38.766193, 31.526478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008297, 38.928951, 31.514547>,  <41.715004, 39.200214, 31.494665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008297, 38.928951, 31.514547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542034, -0.538782, 0.644913,
		-0.410571, -0.499816, -0.762638,
		0.733233, -0.678158, 0.049709,
		42.228268, 38.725502, 31.529459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407543, 38.598846, 31.671341>,  <41.715004, 39.200214, 31.494665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407543, 38.598846, 31.671341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783047, 38.523125, 31.786512>,  <42.008347, 38.477692, 31.855616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783047, 38.523125, 31.786512>,  <41.407543, 38.598846, 31.671341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783047, 38.523125, 31.786512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340751, -0.634288, 0.693950,
		0.051265, -0.749562, -0.659946,
		0.938754, -0.189302, 0.287931,
		42.064674, 38.466335, 31.872892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458469, 37.790485, 31.906153>,  <41.407543, 38.598846, 31.671341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458469, 37.790485, 31.906153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797390, 37.935417, 32.061485>,  <42.000740, 38.022377, 32.154686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797390, 37.935417, 32.061485>,  <41.458469, 37.790485, 31.906153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797390, 37.935417, 32.061485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167129, -0.512122, 0.842496,
		0.504134, -0.778747, -0.373365,
		0.847300, 0.362331, 0.388330,
		42.051579, 38.044117, 32.177982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.866543, 37.215622, 32.158516>,  <41.458469, 37.790485, 31.906153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.866543, 37.215622, 32.158516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992176, 37.535007, 32.363964>,  <42.067554, 37.726639, 32.487232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.992176, 37.535007, 32.363964>,  <41.866543, 37.215622, 32.158516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992176, 37.535007, 32.363964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262258, -0.446980, 0.855236,
		0.912454, -0.403316, 0.069015,
		0.314082, 0.798464, 0.513622,
		42.086399, 37.774548, 32.518051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321735, 36.958904, 32.682350>,  <41.866543, 37.215622, 32.158516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321735, 36.958904, 32.682350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173454, 37.310696, 32.801743>,  <42.084484, 37.521770, 32.873379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.173454, 37.310696, 32.801743>,  <42.321735, 36.958904, 32.682350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.173454, 37.310696, 32.801743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179070, -0.383032, 0.906212,
		0.911324, 0.282488, 0.299480,
		-0.370705, 0.879481, 0.298482,
		42.062244, 37.574539, 32.891289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364525, 36.884109, 33.287674>,  <42.321735, 36.958904, 32.682350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364525, 36.884109, 33.287674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162807, 37.228256, 33.317230>,  <42.041779, 37.434742, 33.334965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.162807, 37.228256, 33.317230>,  <42.364525, 36.884109, 33.287674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.162807, 37.228256, 33.317230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259632, -0.232673, 0.937259,
		0.823576, 0.453471, 0.340714,
		-0.504295, 0.860365, 0.073889,
		42.011520, 37.486366, 33.339397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.532967, 37.190125, 33.911045>,  <42.364525, 36.884109, 33.287674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.532967, 37.190125, 33.911045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178066, 37.356228, 33.830700>,  <41.965126, 37.455891, 33.782494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.178066, 37.356228, 33.830700>,  <42.532967, 37.190125, 33.911045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178066, 37.356228, 33.830700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287419, -0.157086, 0.944836,
		0.360794, 0.896040, 0.258727,
		-0.887253, 0.415254, -0.200863,
		41.911892, 37.480804, 33.770439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368961, 37.811943, 34.386589>,  <42.532967, 37.190125, 33.911045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368961, 37.811943, 34.386589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038372, 37.637283, 34.244442>,  <41.840019, 37.532490, 34.159153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.038372, 37.637283, 34.244442>,  <42.368961, 37.811943, 34.386589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.038372, 37.637283, 34.244442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160000, -0.423027, 0.891879,
		-0.539767, 0.793970, 0.279756,
		-0.826470, -0.436645, -0.355371,
		41.790432, 37.506290, 34.137829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.794952, 37.772339, 35.018810>,  <42.368961, 37.811943, 34.386589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.794952, 37.772339, 35.018810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667068, 37.521328, 34.734840>,  <41.590340, 37.370720, 34.564457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.667068, 37.521328, 34.734840>,  <41.794952, 37.772339, 35.018810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667068, 37.521328, 34.734840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374223, -0.604708, 0.703055,
		-0.870484, 0.490443, -0.041506,
		-0.319709, -0.627531, -0.709923,
		41.571156, 37.333069, 34.521862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148216, 37.588779, 35.172653>,  <41.794952, 37.772339, 35.018810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148216, 37.588779, 35.172653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259743, 37.269753, 34.958679>,  <41.326660, 37.078339, 34.830296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.259743, 37.269753, 34.958679>,  <41.148216, 37.588779, 35.172653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.259743, 37.269753, 34.958679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340382, -0.602933, 0.721535,
		-0.897999, -0.019094, -0.439584,
		0.278816, -0.797563, -0.534934,
		41.343388, 37.030483, 34.798199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542725, 37.093636, 35.162415>,  <41.148216, 37.588779, 35.172653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542725, 37.093636, 35.162415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858543, 36.874268, 35.052246>,  <41.048035, 36.742649, 34.986145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.858543, 36.874268, 35.052246>,  <40.542725, 37.093636, 35.162415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.858543, 36.874268, 35.052246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243180, -0.691642, 0.680070,
		-0.563452, -0.469971, -0.679448,
		0.789547, -0.548415, -0.275419,
		41.095406, 36.709743, 34.969620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307186, 36.311790, 35.187050>,  <40.542725, 37.093636, 35.162415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307186, 36.311790, 35.187050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704029, 36.329918, 35.233810>,  <40.942135, 36.340794, 35.261868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.704029, 36.329918, 35.233810>,  <40.307186, 36.311790, 35.187050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.704029, 36.329918, 35.233810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034799, -0.796221, 0.604005,
		0.120449, -0.603307, -0.788361,
		0.992109, 0.045318, 0.116899,
		41.001663, 36.343513, 35.268879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.335106, 35.653366, 35.254669>,  <40.307186, 36.311790, 35.187050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.335106, 35.653366, 35.254669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692192, 35.799988, 35.359505>,  <40.906445, 35.887962, 35.422405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.692192, 35.799988, 35.359505>,  <40.335106, 35.653366, 35.254669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.692192, 35.799988, 35.359505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174996, -0.817991, 0.547966,
		0.415249, -0.443314, -0.794381,
		0.892718, 0.366556, 0.262092,
		40.960007, 35.909954, 35.438133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842537, 35.210094, 35.082031>,  <40.335106, 35.653366, 35.254669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842537, 35.210094, 35.082031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966618, 35.437317, 35.386948>,  <41.041065, 35.573650, 35.569897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.966618, 35.437317, 35.386948>,  <40.842537, 35.210094, 35.082031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966618, 35.437317, 35.386948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029719, -0.807248, 0.589464,
		0.950207, -0.160196, -0.267289,
		0.310198, 0.568057, 0.762292,
		41.059677, 35.607735, 35.615635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239120, 34.786591, 35.466759>,  <40.842537, 35.210094, 35.082031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239120, 34.786591, 35.466759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178417, 35.079426, 35.732391>,  <41.141994, 35.255127, 35.891773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.178417, 35.079426, 35.732391>,  <41.239120, 34.786591, 35.466759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.178417, 35.079426, 35.732391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017879, -0.673791, 0.738705,
		0.988256, 0.100231, 0.115342,
		-0.151758, 0.732092, 0.664086,
		41.132889, 35.299053, 35.931618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643444, 34.632332, 35.913425>,  <41.239120, 34.786591, 35.466759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643444, 34.632332, 35.913425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397602, 34.858940, 36.132992>,  <41.250095, 34.994907, 36.264732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397602, 34.858940, 36.132992>,  <41.643444, 34.632332, 35.913425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397602, 34.858940, 36.132992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086324, -0.739981, 0.667065,
		0.784097, 0.362598, 0.503702,
		-0.614606, 0.566525, 0.548916,
		41.213219, 35.028896, 36.297665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.871300, 34.630615, 36.633579>,  <41.643444, 34.632332, 35.913425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.871300, 34.630615, 36.633579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483059, 34.724136, 36.610683>,  <41.250114, 34.780251, 36.596947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.483059, 34.724136, 36.610683>,  <41.871300, 34.630615, 36.633579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.483059, 34.724136, 36.610683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219364, -0.761261, 0.610215,
		0.099096, 0.604829, 0.790166,
		-0.970598, 0.233804, -0.057239,
		41.191879, 34.794277, 36.593513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.538887, 34.463047, 37.289101>,  <41.871300, 34.630615, 36.633579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.538887, 34.463047, 37.289101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230019, 34.460979, 37.034943>,  <41.044697, 34.459740, 36.882450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230019, 34.460979, 37.034943>,  <41.538887, 34.463047, 37.289101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230019, 34.460979, 37.034943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291293, -0.885822, 0.361203,
		-0.564712, 0.463996, 0.682501,
		-0.772171, -0.005168, -0.635393,
		40.998367, 34.459431, 36.844326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935154, 34.093292, 37.620052>,  <41.538887, 34.463047, 37.289101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.935154, 34.093292, 37.620052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836742, 34.105400, 37.232536>,  <40.777695, 34.112667, 37.000027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.836742, 34.105400, 37.232536>,  <40.935154, 34.093292, 37.620052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.836742, 34.105400, 37.232536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270540, -0.961933, 0.038648,
		-0.930740, 0.271605, 0.244854,
		-0.246030, 0.030271, -0.968789,
		40.762932, 34.114483, 36.941898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219696, 33.971897, 37.624336>,  <40.935154, 34.093292, 37.620052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219696, 33.971897, 37.624336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333153, 33.878273, 37.252365>,  <40.401226, 33.822098, 37.029182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.333153, 33.878273, 37.252365>,  <40.219696, 33.971897, 37.624336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.333153, 33.878273, 37.252365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507424, -0.859495, 0.061559,
		-0.813677, 0.454407, -0.362551,
		0.283638, -0.234057, -0.929928,
		40.418243, 33.808056, 36.973385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617977, 33.746716, 37.335049>,  <40.219696, 33.971897, 37.624336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617977, 33.746716, 37.335049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906219, 33.602692, 37.098042>,  <40.079166, 33.516277, 36.955837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.906219, 33.602692, 37.098042>,  <39.617977, 33.746716, 37.335049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.906219, 33.602692, 37.098042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509519, -0.854587, -0.100356,
		-0.470225, 0.374218, -0.799280,
		0.720610, -0.360059, -0.592519,
		40.122402, 33.494675, 36.920284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.308903, 33.343670, 36.739277>,  <39.617977, 33.746716, 37.335049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.308903, 33.343670, 36.739277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683933, 33.204563, 36.738609>,  <39.908951, 33.121098, 36.738209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683933, 33.204563, 36.738609>,  <39.308903, 33.343670, 36.739277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683933, 33.204563, 36.738609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337511, -0.908760, -0.245442,
		0.083843, 0.230684, -0.969410,
		0.937580, -0.347765, -0.001666,
		39.965206, 33.100235, 36.738110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371231, 32.845783, 36.157661>,  <39.308903, 33.343670, 36.739277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371231, 32.845783, 36.157661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667820, 32.764542, 36.413467>,  <39.845772, 32.715797, 36.566952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.667820, 32.764542, 36.413467>,  <39.371231, 32.845783, 36.157661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.667820, 32.764542, 36.413467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195775, -0.977102, -0.083328,
		0.641792, -0.063415, -0.764253,
		0.741469, -0.203101, 0.639511,
		39.890259, 32.703609, 36.605320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545277, 32.269909, 35.979961>,  <39.371231, 32.845783, 36.157661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545277, 32.269909, 35.979961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730431, 32.260319, 36.334400>,  <39.841522, 32.254566, 36.547062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730431, 32.260319, 36.334400>,  <39.545277, 32.269909, 35.979961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730431, 32.260319, 36.334400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007533, -0.999492, -0.030979,
		0.886388, 0.021014, -0.462465,
		0.462881, -0.023976, 0.886096,
		39.869293, 32.253124, 36.600227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.043407, 31.825052, 35.912064>,  <39.545277, 32.269909, 35.979961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.043407, 31.825052, 35.912064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989277, 31.862776, 36.306583>,  <39.956799, 31.885410, 36.543297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989277, 31.862776, 36.306583>,  <40.043407, 31.825052, 35.912064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989277, 31.862776, 36.306583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058360, -0.992973, 0.102952,
		0.989082, 0.071492, 0.128867,
		-0.135322, 0.094307, 0.986303,
		39.948681, 31.891068, 36.602474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.482483, 31.463676, 36.192955>,  <40.043407, 31.825052, 35.912064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.482483, 31.463676, 36.192955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195538, 31.486040, 36.470737>,  <40.023373, 31.499458, 36.637405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.195538, 31.486040, 36.470737>,  <40.482483, 31.463676, 36.192955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195538, 31.486040, 36.470737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024076, -0.998169, 0.055488,
		0.696288, 0.023085, 0.717391,
		-0.717359, 0.055908, 0.694457,
		39.980331, 31.502813, 36.679073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612217, 30.835354, 36.595211>,  <40.482483, 31.463676, 36.192955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612217, 30.835354, 36.595211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248676, 30.959284, 36.706928>,  <40.030552, 31.033642, 36.773956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.248676, 30.959284, 36.706928>,  <40.612217, 30.835354, 36.595211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.248676, 30.959284, 36.706928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278759, -0.949217, 0.145877,
		0.310303, 0.054726, 0.949061,
		-0.908848, 0.309825, 0.279290,
		39.976021, 31.052231, 36.790714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.499767, 30.545849, 37.263805>,  <40.612217, 30.835354, 36.595211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.499767, 30.545849, 37.263805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123413, 30.584745, 37.134022>,  <39.897598, 30.608084, 37.056152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.123413, 30.584745, 37.134022>,  <40.499767, 30.545849, 37.263805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.123413, 30.584745, 37.134022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148033, -0.979631, 0.135680,
		-0.304656, 0.175691, 0.936118,
		-0.940888, 0.097241, -0.324458,
		39.841148, 30.613918, 37.036686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.038345, 30.566687, 37.858440>,  <40.499767, 30.545849, 37.263805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.038345, 30.566687, 37.858440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904034, 30.403181, 37.518990>,  <39.823444, 30.305079, 37.315319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.904034, 30.403181, 37.518990>,  <40.038345, 30.566687, 37.858440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.904034, 30.403181, 37.518990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255170, -0.906719, 0.335782,
		-0.906719, -0.103794, 0.408764,
		-0.335782, -0.408764, -0.848624,
		39.803299, 30.280552, 37.264400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.471561, 30.021696, 38.000027>,  <40.038345, 30.566687, 37.858440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.471561, 30.021696, 38.000027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620548, 29.941954, 37.637474>,  <39.709942, 29.894108, 37.419941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.620548, 29.941954, 37.637474>,  <39.471561, 30.021696, 38.000027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620548, 29.941954, 37.637474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015391, -0.977848, 0.208750,
		-0.927918, -0.063802, -0.367283,
		0.372466, -0.199356, -0.906381,
		39.732288, 29.882147, 37.365559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.629757, 29.422968, 38.172913>,  <39.471561, 30.021696, 38.000027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.629757, 29.422968, 38.172913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647732, 29.432299, 37.773426>,  <39.658516, 29.437897, 37.533733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647732, 29.432299, 37.773426>,  <39.629757, 29.422968, 38.172913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647732, 29.432299, 37.773426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071625, -0.997230, -0.020068,
		-0.996419, -0.070632, -0.046486,
		0.044939, 0.023326, -0.998717,
		39.661213, 29.439297, 37.473812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.082130, 29.022005, 37.965092>,  <39.629757, 29.422968, 38.172913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.082130, 29.022005, 37.965092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396393, 29.018589, 37.717651>,  <39.584949, 29.016539, 37.569187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396393, 29.018589, 37.717651>,  <39.082130, 29.022005, 37.965092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396393, 29.018589, 37.717651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042484, -0.998289, -0.040172,
		-0.617202, 0.057843, -0.784675,
		0.785657, -0.008542, -0.618604,
		39.632092, 29.016026, 37.532070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.030071, 28.503006, 37.435398>,  <39.082130, 29.022005, 37.965092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.030071, 28.503006, 37.435398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420200, 28.590031, 37.420403>,  <39.654278, 28.642246, 37.411404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.420200, 28.590031, 37.420403>,  <39.030071, 28.503006, 37.435398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.420200, 28.590031, 37.420403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216874, -0.975961, -0.021566,
		-0.041279, 0.012904, -0.999065,
		0.975327, 0.217561, -0.037488,
		39.712799, 28.655298, 37.409157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.304531, 28.059404, 36.938297>,  <39.030071, 28.503006, 37.435398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.304531, 28.059404, 36.938297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566544, 28.173750, 37.218071>,  <39.723751, 28.242357, 37.385937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566544, 28.173750, 37.218071>,  <39.304531, 28.059404, 36.938297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566544, 28.173750, 37.218071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246774, -0.955848, 0.159553,
		0.714164, 0.068089, -0.696658,
		0.655036, 0.285864, 0.699435,
		39.763054, 28.259510, 37.427902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864136, 27.584505, 36.882797>,  <39.304531, 28.059404, 36.938297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864136, 27.584505, 36.882797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872246, 27.752550, 37.245697>,  <39.877113, 27.853376, 37.463436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872246, 27.752550, 37.245697>,  <39.864136, 27.584505, 36.882797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872246, 27.752550, 37.245697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110005, -0.902861, 0.415622,
		0.993724, 0.091375, -0.064520,
		0.020275, 0.420111, 0.907246,
		39.878326, 27.878584, 37.517872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453510, 27.270208, 37.256092>,  <39.864136, 27.584505, 36.882797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453510, 27.270208, 37.256092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227997, 27.404284, 37.558033>,  <40.092690, 27.484728, 37.739197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.227997, 27.404284, 37.558033>,  <40.453510, 27.270208, 37.256092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.227997, 27.404284, 37.558033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142712, -0.860666, 0.488761,
		0.813501, 0.383280, 0.437392,
		-0.563781, 0.335186, 0.754851,
		40.058861, 27.504839, 37.784489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748333, 27.025660, 37.847813>,  <40.453510, 27.270208, 37.256092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748333, 27.025660, 37.847813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367233, 27.101460, 37.942772>,  <40.138573, 27.146940, 37.999748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.367233, 27.101460, 37.942772>,  <40.748333, 27.025660, 37.847813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.367233, 27.101460, 37.942772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009820, -0.761922, 0.647595,
		0.303599, 0.619327, 0.724059,
		-0.952749, 0.189499, 0.237400,
		40.081409, 27.158310, 38.013992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658661, 27.025686, 38.637360>,  <40.748333, 27.025660, 37.847813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658661, 27.025686, 38.637360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283127, 26.968719, 38.511948>,  <40.057804, 26.934540, 38.436699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.283127, 26.968719, 38.511948>,  <40.658661, 27.025686, 38.637360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283127, 26.968719, 38.511948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152034, -0.645508, 0.748469,
		-0.308980, 0.750358, 0.584375,
		-0.938838, -0.142417, -0.313529,
		40.001476, 26.925995, 38.417889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218807, 27.320358, 39.212738>,  <40.658661, 27.025686, 38.637360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218807, 27.320358, 39.212738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002426, 27.054722, 39.006302>,  <39.872597, 26.895340, 38.882439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002426, 27.054722, 39.006302>,  <40.218807, 27.320358, 39.212738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002426, 27.054722, 39.006302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123963, -0.543971, 0.829897,
		-0.831870, 0.512909, 0.211938,
		-0.540949, -0.664093, -0.516095,
		39.840141, 26.855494, 38.851475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466736, 27.304369, 39.483688>,  <40.218807, 27.320358, 39.212738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466736, 27.304369, 39.483688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608986, 26.962496, 39.332401>,  <39.694336, 26.757372, 39.241631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608986, 26.962496, 39.332401>,  <39.466736, 27.304369, 39.483688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608986, 26.962496, 39.332401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003268, -0.403532, 0.914960,
		-0.934622, -0.326622, -0.140714,
		0.355629, -0.854681, -0.378217,
		39.715675, 26.706091, 39.218937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184425, 26.881536, 39.923405>,  <39.466736, 27.304369, 39.483688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184425, 26.881536, 39.923405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496109, 26.686375, 39.766033>,  <39.683121, 26.569277, 39.671612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.496109, 26.686375, 39.766033>,  <39.184425, 26.881536, 39.923405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.496109, 26.686375, 39.766033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094108, -0.529516, 0.843063,
		-0.619661, -0.693945, -0.366687,
		0.779207, -0.487906, -0.393427,
		39.729870, 26.540003, 39.648006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.959709, 26.163872, 39.732933>,  <39.184425, 26.881536, 39.923405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.959709, 26.163872, 39.732933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309921, 26.225435, 39.916134>,  <39.520050, 26.262373, 40.026054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309921, 26.225435, 39.916134>,  <38.959709, 26.163872, 39.732933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309921, 26.225435, 39.916134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356479, -0.434094, 0.827336,
		0.326147, -0.887623, -0.325198,
		0.875529, 0.153907, 0.457998,
		39.572578, 26.271606, 40.053532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960175, 25.580099, 39.330421>,  <38.959709, 26.163872, 39.732933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960175, 25.580099, 39.330421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027359, 25.343761, 39.014778>,  <39.067669, 25.201958, 38.825394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027359, 25.343761, 39.014778>,  <38.960175, 25.580099, 39.330421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027359, 25.343761, 39.014778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315426, 0.790606, -0.524831,
		0.933968, -0.160755, 0.319158,
		0.167959, -0.590846, -0.789107,
		39.077747, 25.166508, 38.778046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701717, 25.634483, 39.086700>,  <38.960175, 25.580099, 39.330421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.701717, 25.634483, 39.086700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456234, 25.561686, 38.779392>,  <39.308945, 25.518007, 38.595009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.456234, 25.561686, 38.779392>,  <39.701717, 25.634483, 39.086700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456234, 25.561686, 38.779392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338381, 0.818540, -0.464210,
		0.713342, -0.544859, -0.440764,
		-0.613712, -0.181994, -0.768269,
		39.272121, 25.507088, 38.548912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138390, 25.754686, 38.365128>,  <39.701717, 25.634483, 39.086700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138390, 25.754686, 38.365128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766029, 25.810066, 38.500332>,  <39.542614, 25.843294, 38.581455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766029, 25.810066, 38.500332>,  <40.138390, 25.754686, 38.365128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766029, 25.810066, 38.500332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037449, 0.956681, -0.288721,
		-0.363337, -0.256114, -0.895763,
		-0.930905, 0.138448, 0.338006,
		39.486759, 25.851601, 38.601734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527340, 25.865622, 37.868439>,  <40.138390, 25.754686, 38.365128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527340, 25.865622, 37.868439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544300, 26.039595, 38.228226>,  <39.554478, 26.143978, 38.444096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.544300, 26.039595, 38.228226>,  <39.527340, 25.865622, 37.868439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544300, 26.039595, 38.228226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187602, 0.880794, -0.434750,
		-0.981330, 0.187174, -0.044249,
		0.042400, 0.434934, 0.899463,
		39.557018, 26.170074, 38.498066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948467, 26.164907, 38.055611>,  <39.527340, 25.865622, 37.868439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948467, 26.164907, 38.055611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227688, 26.359863, 38.265442>,  <39.395222, 26.476837, 38.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227688, 26.359863, 38.265442>,  <38.948467, 26.164907, 38.055611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227688, 26.359863, 38.265442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098105, 0.790784, -0.604182,
		-0.709296, 0.370286, 0.599822,
		0.698050, 0.487389, 0.524574,
		39.437103, 26.506081, 38.422813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768116, 26.854675, 38.063175>,  <38.948467, 26.164907, 38.055611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768116, 26.854675, 38.063175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145519, 26.893833, 38.189804>,  <39.371960, 26.917328, 38.265781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.145519, 26.893833, 38.189804>,  <38.768116, 26.854675, 38.063175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.145519, 26.893833, 38.189804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053917, 0.897278, -0.438162,
		-0.326946, 0.430476, 0.841307,
		0.943504, 0.097895, 0.316572,
		39.428570, 26.923203, 38.284775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.934162, 27.406467, 38.548031>,  <38.768116, 26.854675, 38.063175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.934162, 27.406467, 38.548031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274265, 27.335299, 38.349876>,  <39.478329, 27.292597, 38.230984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.274265, 27.335299, 38.349876>,  <38.934162, 27.406467, 38.548031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.274265, 27.335299, 38.349876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062821, 0.968713, -0.240100,
		0.522602, 0.173027, 0.834835,
		0.850259, -0.177922, -0.495382,
		39.529343, 27.281921, 38.201263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378078, 27.950050, 38.709396>,  <38.934162, 27.406467, 38.548031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378078, 27.950050, 38.709396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567032, 27.786966, 38.396824>,  <39.680405, 27.689116, 38.209282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567032, 27.786966, 38.396824>,  <39.378078, 27.950050, 38.709396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567032, 27.786966, 38.396824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343042, 0.901720, -0.263103,
		0.811899, -0.143777, 0.565816,
		0.472380, -0.407712, -0.781427,
		39.708744, 27.664652, 38.162395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018986, 28.309696, 38.702557>,  <39.378078, 27.950050, 38.709396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018986, 28.309696, 38.702557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971619, 28.167904, 38.331543>,  <39.943199, 28.082829, 38.108936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.971619, 28.167904, 38.331543>,  <40.018986, 28.309696, 38.702557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.971619, 28.167904, 38.331543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262966, 0.889560, -0.373539,
		0.957510, -0.288144, -0.012124,
		-0.118418, -0.354480, -0.927535,
		39.936092, 28.061560, 38.053284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.569008, 28.697044, 38.363380>,  <40.018986, 28.309696, 38.702557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.569008, 28.697044, 38.363380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312382, 28.547562, 38.095428>,  <40.158405, 28.457872, 37.934658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.312382, 28.547562, 38.095428>,  <40.569008, 28.697044, 38.363380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312382, 28.547562, 38.095428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012052, 0.868278, -0.495931,
		0.766969, -0.326248, -0.552558,
		-0.641571, -0.373705, -0.669875,
		40.119911, 28.435450, 37.894466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860191, 28.661270, 37.630520>,  <40.569008, 28.697044, 38.363380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.860191, 28.661270, 37.630520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464588, 28.716324, 37.652142>,  <40.227226, 28.749357, 37.665115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.464588, 28.716324, 37.652142>,  <40.860191, 28.661270, 37.630520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.464588, 28.716324, 37.652142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089636, 0.848753, -0.521137,
		-0.117604, -0.510563, -0.851759,
		-0.989007, 0.137636, 0.054052,
		40.167885, 28.757614, 37.668358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.669415, 28.817469, 36.903122>,  <40.860191, 28.661270, 37.630520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.669415, 28.817469, 36.903122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403217, 28.953545, 37.168869>,  <40.243500, 29.035191, 37.328320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.403217, 28.953545, 37.168869>,  <40.669415, 28.817469, 36.903122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.403217, 28.953545, 37.168869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071006, 0.857205, -0.510057,
		-0.743017, -0.386615, -0.546310,
		-0.665495, 0.340189, 0.664370,
		40.203568, 29.055601, 37.368179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.116192, 28.891928, 36.569920>,  <40.669415, 28.817469, 36.903122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.116192, 28.891928, 36.569920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118534, 29.169626, 36.857803>,  <40.119938, 29.336245, 37.030533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118534, 29.169626, 36.857803>,  <40.116192, 28.891928, 36.569920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118534, 29.169626, 36.857803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296738, 0.688514, -0.661737,
		-0.954941, -0.209693, 0.210039,
		0.005853, 0.694246, 0.719714,
		40.120289, 29.377899, 37.073719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039684, 29.460827, 36.174015>,  <40.116192, 28.891928, 36.569920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039684, 29.460827, 36.174015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981873, 29.606081, 36.542198>,  <39.947186, 29.693233, 36.763107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.981873, 29.606081, 36.542198>,  <40.039684, 29.460827, 36.174015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981873, 29.606081, 36.542198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271807, 0.879872, -0.389803,
		-0.951437, -0.306525, -0.028464,
		-0.144530, 0.363137, 0.920458,
		39.938515, 29.715021, 36.818336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500904, 29.837481, 36.066414>,  <40.039684, 29.460827, 36.174015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500904, 29.837481, 36.066414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600586, 29.957561, 36.434711>,  <39.660397, 30.029610, 36.655689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.600586, 29.957561, 36.434711>,  <39.500904, 29.837481, 36.066414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600586, 29.957561, 36.434711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312147, 0.924902, -0.217072,
		-0.916767, -0.233313, 0.324196,
		0.249204, 0.300201, 0.920748,
		39.675346, 30.047623, 36.710938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961266, 30.340914, 36.275669>,  <39.500904, 29.837481, 36.066414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961266, 30.340914, 36.275669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303585, 30.394291, 36.475594>,  <39.508976, 30.426317, 36.595547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303585, 30.394291, 36.475594>,  <38.961266, 30.340914, 36.275669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303585, 30.394291, 36.475594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102282, 0.990732, -0.089378,
		-0.507101, 0.025368, 0.861513,
		0.855796, 0.133441, 0.499807,
		39.560326, 30.434324, 36.625534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569107, 30.735033, 36.732605>,  <38.961266, 30.340914, 36.275669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569107, 30.735033, 36.732605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953709, 30.727787, 36.842285>,  <39.184467, 30.723438, 36.908092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.953709, 30.727787, 36.842285>,  <38.569107, 30.735033, 36.732605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.953709, 30.727787, 36.842285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076621, 0.975928, -0.204193,
		-0.263902, 0.217341, 0.939744,
		0.961501, -0.018117, 0.274203,
		39.242161, 30.722351, 36.924545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.719124, 31.349806, 37.146454>,  <38.569107, 30.735033, 36.732605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.719124, 31.349806, 37.146454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092785, 31.261881, 37.033997>,  <39.316982, 31.209126, 36.966522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092785, 31.261881, 37.033997>,  <38.719124, 31.349806, 37.146454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092785, 31.261881, 37.033997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219102, 0.975097, -0.034368,
		0.281693, -0.029493, 0.959051,
		0.934154, -0.219811, -0.281140,
		39.373032, 31.195938, 36.949654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068977, 31.843653, 37.468109>,  <38.719124, 31.349806, 37.146454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068977, 31.843653, 37.468109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392681, 31.738255, 37.258091>,  <39.586903, 31.675016, 37.132080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.392681, 31.738255, 37.258091>,  <39.068977, 31.843653, 37.468109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.392681, 31.738255, 37.258091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378440, 0.917433, 0.122880,
		0.449313, -0.298139, 0.842159,
		0.809260, -0.263495, -0.525042,
		39.635460, 31.659206, 37.100578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.670918, 32.043365, 37.889297>,  <39.068977, 31.843653, 37.468109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.670918, 32.043365, 37.889297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773361, 31.994831, 37.505695>,  <39.834827, 31.965710, 37.275536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.773361, 31.994831, 37.505695>,  <39.670918, 32.043365, 37.889297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.773361, 31.994831, 37.505695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470022, 0.882546, 0.013862,
		0.844681, -0.454302, 0.283061,
		0.256112, -0.121336, -0.959002,
		39.850193, 31.958429, 37.217995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.261993, 32.461311, 37.743935>,  <39.670918, 32.043365, 37.889297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.261993, 32.461311, 37.743935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177849, 32.372158, 37.363182>,  <40.127361, 32.318665, 37.134731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.177849, 32.372158, 37.363182>,  <40.261993, 32.461311, 37.743935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177849, 32.372158, 37.363182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617437, 0.724613, -0.306117,
		0.757972, -0.652119, -0.014814,
		-0.210359, -0.222882, -0.951879,
		40.114742, 32.305294, 37.077618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.921337, 32.498299, 37.401150>,  <40.261993, 32.461311, 37.743935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.921337, 32.498299, 37.401150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616749, 32.555862, 37.148342>,  <40.433994, 32.590401, 36.996658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.616749, 32.555862, 37.148342>,  <40.921337, 32.498299, 37.401150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.616749, 32.555862, 37.148342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441331, 0.829240, -0.342910,
		0.474747, -0.540046, -0.694957,
		-0.761474, 0.143911, -0.632018,
		40.388306, 32.599037, 36.958736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213512, 32.724064, 36.855591>,  <40.921337, 32.498299, 37.401150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.213512, 32.724064, 36.855591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830181, 32.829067, 36.810524>,  <40.600182, 32.892071, 36.783485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.830181, 32.829067, 36.810524>,  <41.213512, 32.724064, 36.855591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830181, 32.829067, 36.810524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283852, 0.919417, -0.272213,
		0.032131, -0.292851, -0.955618,
		-0.958330, 0.262507, -0.112668,
		40.542683, 32.907818, 36.776722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.094471, 33.011868, 36.177475>,  <41.213512, 32.724064, 36.855591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.094471, 33.011868, 36.177475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802025, 33.152950, 36.411079>,  <40.626556, 33.237598, 36.551243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.802025, 33.152950, 36.411079>,  <41.094471, 33.011868, 36.177475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802025, 33.152950, 36.411079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316377, 0.933672, -0.167816,
		-0.604464, 0.062075, -0.794210,
		-0.731115, 0.352708, 0.584010,
		40.582691, 33.258762, 36.586281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.810886, 32.882206, 36.079903>,  <41.094471, 33.011868, 36.177475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.810886, 32.882206, 36.079903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182476, 32.905243, 35.933643>,  <42.405430, 32.919064, 35.845886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182476, 32.905243, 35.933643>,  <41.810886, 32.882206, 36.079903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182476, 32.905243, 35.933643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351590, 0.171644, 0.920284,
		0.115753, -0.983475, 0.139207,
		0.928970, 0.057582, -0.365648,
		42.461166, 32.922520, 35.823948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193352, 32.361431, 36.312737>,  <41.810886, 32.882206, 36.079903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193352, 32.361431, 36.312737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433739, 32.672661, 36.239590>,  <42.577972, 32.859398, 36.195702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.433739, 32.672661, 36.239590>,  <42.193352, 32.361431, 36.312737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433739, 32.672661, 36.239590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241247, 0.041537, 0.969574,
		0.761996, -0.626798, -0.162746,
		0.600967, 0.778074, -0.182865,
		42.614029, 32.906082, 36.184731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.782330, 32.212727, 36.779781>,  <42.193352, 32.361431, 36.312737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.782330, 32.212727, 36.779781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797920, 32.592964, 36.656582>,  <42.807274, 32.821106, 36.582664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797920, 32.592964, 36.656582>,  <42.782330, 32.212727, 36.779781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797920, 32.592964, 36.656582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410304, 0.265821, 0.872347,
		0.911115, -0.160372, -0.379671,
		0.038976, 0.950589, -0.307995,
		42.809612, 32.878139, 36.564182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.136356, 32.699100, 37.204208>,  <42.782330, 32.212727, 36.779781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.136356, 32.699100, 37.204208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250393, 32.912155, 37.522961>,  <43.318813, 33.039986, 37.714214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.250393, 32.912155, 37.522961>,  <43.136356, 32.699100, 37.204208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.250393, 32.912155, 37.522961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282686, 0.841129, -0.461074,
		-0.915867, -0.093820, 0.390367,
		0.285091, 0.532634, 0.796884,
		43.335918, 33.071945, 37.762028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811398, 32.543816, 37.202248>,  <43.136356, 32.699100, 37.204208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811398, 32.543816, 37.202248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013954, 32.524151, 37.546608>,  <44.135490, 32.512352, 37.753223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.013954, 32.524151, 37.546608>,  <43.811398, 32.543816, 37.202248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.013954, 32.524151, 37.546608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648558, 0.679663, -0.342682,
		-0.568274, 0.731876, 0.376062,
		0.506396, -0.049161, 0.860899,
		44.165874, 32.509403, 37.804878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923641, 33.231899, 37.584606>,  <43.811398, 32.543816, 37.202248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923641, 33.231899, 37.584606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217567, 32.961681, 37.608871>,  <44.393925, 32.799549, 37.623428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.217567, 32.961681, 37.608871>,  <43.923641, 33.231899, 37.584606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.217567, 32.961681, 37.608871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563983, 0.558876, -0.607931,
		0.376786, 0.480929, 0.791669,
		0.734816, -0.675548, 0.060659,
		44.438011, 32.759018, 37.627068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388065, 33.216427, 38.235477>,  <43.923641, 33.231899, 37.584606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388065, 33.216427, 38.235477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455677, 33.380878, 38.593784>,  <44.496243, 33.479549, 38.808769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.455677, 33.380878, 38.593784>,  <44.388065, 33.216427, 38.235477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.455677, 33.380878, 38.593784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481866, 0.758350, -0.438988,
		-0.859788, 0.505841, -0.069931,
		0.169026, 0.411133, 0.895767,
		44.506386, 33.504219, 38.862514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387249, 34.054417, 38.304298>,  <44.388065, 33.216427, 38.235477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387249, 34.054417, 38.304298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651348, 33.952782, 38.587006>,  <44.809807, 33.891800, 38.756630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.651348, 33.952782, 38.587006>,  <44.387249, 34.054417, 38.304298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.651348, 33.952782, 38.587006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608166, 0.733044, -0.304599,
		-0.440693, 0.630940, 0.638517,
		0.660245, -0.254089, 0.706764,
		44.849422, 33.876556, 38.799034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508484, 34.608925, 38.751057>,  <44.387249, 34.054417, 38.304298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508484, 34.608925, 38.751057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831791, 34.376984, 38.710117>,  <45.025776, 34.237820, 38.685555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.831791, 34.376984, 38.710117>,  <44.508484, 34.608925, 38.751057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.831791, 34.376984, 38.710117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430257, 0.700291, -0.569624,
		0.401974, 0.416371, 0.815508,
		0.808267, -0.579852, -0.102352,
		45.074272, 34.203030, 38.679413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037403, 35.108910, 38.833477>,  <44.508484, 34.608925, 38.751057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037403, 35.108910, 38.833477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173523, 34.775047, 38.660252>,  <45.255196, 34.574730, 38.556316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.173523, 34.775047, 38.660252>,  <45.037403, 35.108910, 38.833477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.173523, 34.775047, 38.660252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568456, 0.549473, -0.612321,
		0.749036, -0.037809, 0.661449,
		0.340297, -0.834656, -0.433068,
		45.275612, 34.524651, 38.530331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.678596, 35.291634, 38.562794>,  <45.037403, 35.108910, 38.833477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.678596, 35.291634, 38.562794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630241, 34.984184, 38.311523>,  <45.601231, 34.799713, 38.160763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.630241, 34.984184, 38.311523>,  <45.678596, 35.291634, 38.562794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.630241, 34.984184, 38.311523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744025, 0.348754, -0.569910,
		0.657126, -0.536269, 0.529719,
		-0.120883, -0.768626, -0.628173,
		45.593975, 34.753597, 38.123070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.216763, 34.800308, 38.425888>,  <45.678596, 35.291634, 38.562794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.216763, 34.800308, 38.425888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010651, 34.814156, 38.083359>,  <45.886982, 34.822464, 37.877842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.010651, 34.814156, 38.083359>,  <46.216763, 34.800308, 38.425888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.010651, 34.814156, 38.083359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782315, 0.427006, -0.453485,
		0.349958, -0.903586, -0.247107,
		-0.515279, 0.034615, -0.856323,
		45.856068, 34.824539, 37.826462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.521008, 34.312740, 37.804382>,  <46.216763, 34.800308, 38.425888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.521008, 34.312740, 37.804382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336933, 34.622101, 37.629990>,  <46.226486, 34.807716, 37.525352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.336933, 34.622101, 37.629990>,  <46.521008, 34.312740, 37.804382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.336933, 34.622101, 37.629990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767205, 0.099288, -0.633671,
		-0.446791, -0.626098, -0.639045,
		-0.460190, 0.773397, -0.435985,
		46.198875, 34.854118, 37.499195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.467415, 34.296745, 37.006775>,  <46.521008, 34.312740, 37.804382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.467415, 34.296745, 37.006775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485634, 34.675102, 37.135281>,  <46.496567, 34.902119, 37.212383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.485634, 34.675102, 37.135281>,  <46.467415, 34.296745, 37.006775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.485634, 34.675102, 37.135281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738483, 0.184690, -0.648485,
		-0.672732, 0.266783, -0.690115,
		0.045548, 0.945894, 0.321262,
		46.499298, 34.958870, 37.231659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.477852, 34.760273, 36.431278>,  <46.467415, 34.296745, 37.006775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.477852, 34.760273, 36.431278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.653843, 34.950470, 36.735996>,  <46.759438, 35.064587, 36.918827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.653843, 34.950470, 36.735996>,  <46.477852, 34.760273, 36.431278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.653843, 34.950470, 36.735996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720703, 0.319117, -0.615427,
		-0.535733, 0.819799, -0.202287,
		0.439973, 0.475494, 0.761793,
		46.785835, 35.093117, 36.964535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.709354, 34.850857, 36.218735>,  <46.477852, 34.760273, 36.431278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.709354, 34.850857, 36.218735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846958, 35.223732, 36.263798>,  <45.929520, 35.447456, 36.290836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.846958, 35.223732, 36.263798>,  <45.709354, 34.850857, 36.218735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.846958, 35.223732, 36.263798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716289, -0.182950, -0.673394,
		-0.607117, 0.312348, -0.730649,
		0.344005, 0.932185, 0.112659,
		45.950161, 35.503387, 36.297596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.509007, 35.221531, 35.601837>,  <45.709354, 34.850857, 36.218735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.509007, 35.221531, 35.601837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806847, 35.423458, 35.776527>,  <45.985550, 35.544613, 35.881340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.806847, 35.423458, 35.776527>,  <45.509007, 35.221531, 35.601837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.806847, 35.423458, 35.776527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606002, -0.236920, -0.759362,
		-0.279869, 0.830079, -0.482331,
		0.744604, 0.504815, 0.436723,
		46.030228, 35.574902, 35.907543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.934868, 35.484383, 35.047066>,  <45.509007, 35.221531, 35.601837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.934868, 35.484383, 35.047066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149292, 35.450050, 35.382988>,  <46.277946, 35.429451, 35.584541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.149292, 35.450050, 35.382988>,  <45.934868, 35.484383, 35.047066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.149292, 35.450050, 35.382988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780496, -0.328661, -0.531797,
		0.321655, 0.940540, -0.109192,
		0.536063, -0.085831, 0.839803,
		46.310112, 35.424301, 35.634930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.650455, 35.841270, 35.059521>,  <45.934868, 35.484383, 35.047066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.650455, 35.841270, 35.059521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645615, 35.500980, 35.269707>,  <46.642708, 35.296806, 35.395821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.645615, 35.500980, 35.269707>,  <46.650455, 35.841270, 35.059521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.645615, 35.500980, 35.269707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844246, -0.290293, -0.450532,
		0.535820, 0.438171, 0.721736,
		-0.012105, -0.850727, 0.525469,
		46.641983, 35.245762, 35.427349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.301819, 35.686054, 35.321426>,  <46.650455, 35.841270, 35.059521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.301819, 35.686054, 35.321426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118778, 35.335777, 35.259762>,  <47.008953, 35.125610, 35.222763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.118778, 35.335777, 35.259762>,  <47.301819, 35.686054, 35.321426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.118778, 35.335777, 35.259762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762923, -0.297636, -0.573900,
		0.456675, -0.380233, 0.804283,
		-0.457599, -0.875692, -0.154165,
		46.981499, 35.073071, 35.213512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.812557, 35.105175, 35.463211>,  <47.301819, 35.686054, 35.321426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.812557, 35.105175, 35.463211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558048, 34.942184, 35.201180>,  <47.405342, 34.844391, 35.043961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.558048, 34.942184, 35.201180>,  <47.812557, 35.105175, 35.463211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.558048, 34.942184, 35.201180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761184, -0.469766, -0.447123,
		-0.125543, -0.783125, 0.609060,
		-0.636269, -0.407474, -0.655078,
		47.367168, 34.819942, 35.004658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.430702, 37.003292, 27.941425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.096581, 36.988647, 27.721998>,  <41.896107, 36.979862, 27.590342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.096581, 36.988647, 27.721998>,  <42.430702, 37.003292, 27.941425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.096581, 36.988647, 27.721998> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445587, -0.539396, 0.714496,
		-0.322054, 0.841256, 0.434246,
		-0.835304, -0.036612, -0.548567,
		41.845989, 36.977665, 27.557428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.930779, 37.348072, 28.358820>,  <42.430702, 37.003292, 27.941425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.930779, 37.348072, 28.358820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.759624, 37.093613, 28.101999>,  <41.656933, 36.940937, 27.947906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.759624, 37.093613, 28.101999>,  <41.930779, 37.348072, 28.358820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759624, 37.093613, 28.101999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468077, -0.451721, 0.759508,
		-0.773185, 0.625515, -0.104479,
		-0.427888, -0.636144, -0.642053,
		41.631256, 36.902771, 27.909384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268333, 37.338280, 28.480486>,  <41.930779, 37.348072, 28.358820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268333, 37.338280, 28.480486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286236, 36.998028, 28.270941>,  <41.296978, 36.793877, 28.145214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.286236, 36.998028, 28.270941>,  <41.268333, 37.338280, 28.480486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286236, 36.998028, 28.270941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470833, -0.480455, 0.739919,
		-0.881087, 0.213540, -0.422004,
		0.044751, -0.850626, -0.523864,
		41.299660, 36.742840, 28.113781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.611877, 36.995949, 28.601269>,  <41.268333, 37.338280, 28.480486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.611877, 36.995949, 28.601269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.810207, 36.682678, 28.451181>,  <40.929207, 36.494717, 28.361130>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.810207, 36.682678, 28.451181>,  <40.611877, 36.995949, 28.601269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810207, 36.682678, 28.451181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403265, -0.590301, 0.699229,
		-0.769113, -0.195384, -0.608515,
		0.495826, -0.783179, -0.375217,
		40.958954, 36.447723, 28.338617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094612, 36.521873, 28.507607>,  <40.611877, 36.995949, 28.601269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094612, 36.521873, 28.507607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.421261, 36.292862, 28.536821>,  <40.617249, 36.155453, 28.554350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.421261, 36.292862, 28.536821>,  <40.094612, 36.521873, 28.507607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421261, 36.292862, 28.536821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452288, -0.556169, 0.697217,
		-0.358557, -0.602397, -0.713130,
		0.816622, -0.572533, 0.073039,
		40.666248, 36.121101, 28.558733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897419, 35.843220, 28.482893>,  <40.094612, 36.521873, 28.507607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897419, 35.843220, 28.482893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.255428, 35.804237, 28.656992>,  <40.470234, 35.780846, 28.761452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.255428, 35.804237, 28.656992>,  <39.897419, 35.843220, 28.482893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255428, 35.804237, 28.656992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418378, -0.521672, 0.743517,
		0.154596, -0.847561, -0.507681,
		0.895019, -0.097458, 0.435249,
		40.523933, 35.775002, 28.787567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.964439, 35.253193, 28.510279>,  <39.897419, 35.843220, 28.482893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.964439, 35.253193, 28.510279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.250702, 35.354736, 28.770552>,  <40.422459, 35.415661, 28.926716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.250702, 35.354736, 28.770552>,  <39.964439, 35.253193, 28.510279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250702, 35.354736, 28.770552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347320, -0.678914, 0.646873,
		0.605971, -0.688936, -0.397701,
		0.715658, 0.253857, 0.650684,
		40.465401, 35.430893, 28.965757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249832, 34.642506, 28.751381>,  <39.964439, 35.253193, 28.510279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249832, 34.642506, 28.751381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350548, 34.908569, 29.032568>,  <40.410976, 35.068207, 29.201281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.350548, 34.908569, 29.032568>,  <40.249832, 34.642506, 28.751381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.350548, 34.908569, 29.032568> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384843, -0.597656, 0.703352,
		0.887975, -0.447627, 0.105500,
		0.251787, 0.665160, 0.702969,
		40.426083, 35.108116, 29.243460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.509956, 34.258087, 29.300713>,  <40.249832, 34.642506, 28.751381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.509956, 34.258087, 29.300713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405918, 34.613571, 29.451731>,  <40.343494, 34.826862, 29.542341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.405918, 34.613571, 29.451731>,  <40.509956, 34.258087, 29.300713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405918, 34.613571, 29.451731> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446907, -0.457402, 0.768802,
		0.855934, 0.031237, 0.516141,
		-0.260099, 0.888711, 0.377546,
		40.327888, 34.880184, 29.564995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589252, 34.170677, 30.070875>,  <40.509956, 34.258087, 29.300713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589252, 34.170677, 30.070875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.348732, 34.490101, 30.060038>,  <40.204418, 34.681755, 30.053535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.348732, 34.490101, 30.060038>,  <40.589252, 34.170677, 30.070875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348732, 34.490101, 30.060038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452094, -0.312069, 0.835598,
		0.658822, 0.514696, 0.548674,
		-0.601303, 0.798562, -0.027093,
		40.168343, 34.729668, 30.051910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.706570, 34.577518, 30.553776>,  <40.589252, 34.170677, 30.070875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.706570, 34.577518, 30.553776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325977, 34.667126, 30.469391>,  <40.097622, 34.720890, 30.418760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.325977, 34.667126, 30.469391>,  <40.706570, 34.577518, 30.553776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325977, 34.667126, 30.469391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254924, -0.189860, 0.948139,
		0.172343, 0.955913, 0.237755,
		-0.951479, 0.224014, -0.210964,
		40.040535, 34.734329, 30.406101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477840, 34.876904, 31.128771>,  <40.706570, 34.577518, 30.553776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477840, 34.876904, 31.128771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.114460, 34.857121, 30.962746>,  <39.896431, 34.845249, 30.863131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.114460, 34.857121, 30.962746>,  <40.477840, 34.876904, 31.128771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114460, 34.857121, 30.962746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408524, -0.105182, 0.906667,
		-0.088501, 0.993222, 0.075346,
		-0.908447, -0.049460, -0.415064,
		39.841927, 34.842281, 30.838226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985901, 35.356472, 31.385258>,  <40.477840, 34.876904, 31.128771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985901, 35.356472, 31.385258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776581, 35.044411, 31.248138>,  <39.650990, 34.857174, 31.165867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.776581, 35.044411, 31.248138>,  <39.985901, 35.356472, 31.385258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776581, 35.044411, 31.248138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305507, -0.203771, 0.930131,
		-0.795499, 0.591469, -0.131708,
		-0.523305, -0.780155, -0.342797,
		39.619591, 34.810364, 31.145300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364323, 35.330044, 31.856607>,  <39.985901, 35.356472, 31.385258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364323, 35.330044, 31.856607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359627, 34.979004, 31.664904>,  <39.356808, 34.768379, 31.549881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.359627, 34.979004, 31.664904>,  <39.364323, 35.330044, 31.856607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359627, 34.979004, 31.664904> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306410, -0.453075, 0.837159,
		-0.951827, 0.156679, -0.263584,
		-0.011742, -0.877596, -0.479257,
		39.356106, 34.715725, 31.521126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730972, 35.055714, 31.992374>,  <39.364323, 35.330044, 31.856607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730972, 35.055714, 31.992374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962551, 34.739441, 31.912727>,  <39.101498, 34.549679, 31.864939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.962551, 34.739441, 31.912727>,  <38.730972, 35.055714, 31.992374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962551, 34.739441, 31.912727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417013, -0.496986, 0.760990,
		-0.700658, -0.357536, -0.617451,
		0.578946, -0.790679, -0.199120,
		39.136234, 34.502235, 31.852991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.203541, 34.482971, 31.891256>,  <38.730972, 35.055714, 31.992374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.203541, 34.482971, 31.891256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554283, 34.330982, 32.009060>,  <38.764729, 34.239788, 32.079742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554283, 34.330982, 32.009060>,  <38.203541, 34.482971, 31.891256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554283, 34.330982, 32.009060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456106, -0.463932, 0.759431,
		-0.151932, -0.800242, -0.580112,
		0.876860, -0.379974, 0.294509,
		38.817341, 34.216991, 32.097412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938412, 34.056957, 32.313892>,  <38.203541, 34.482971, 31.891256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938412, 34.056957, 32.313892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330608, 34.017338, 32.381805>,  <38.565926, 33.993565, 32.422554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.330608, 34.017338, 32.381805>,  <37.938412, 34.056957, 32.313892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330608, 34.017338, 32.381805> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195728, -0.571478, 0.796934,
		0.018087, -0.814618, -0.579716,
		0.980491, -0.099053, 0.169780,
		38.624756, 33.987621, 32.432739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066200, 33.351704, 32.233925>,  <37.938412, 34.056957, 32.313892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066200, 33.351704, 32.233925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364902, 33.504955, 32.451389>,  <38.544125, 33.596909, 32.581867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.364902, 33.504955, 32.451389>,  <38.066200, 33.351704, 32.233925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364902, 33.504955, 32.451389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060100, -0.775196, 0.628855,
		0.662377, -0.502276, -0.555857,
		0.746757, 0.383132, 0.543658,
		38.588928, 33.619896, 32.614487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.441319, 32.782967, 32.390800>,  <38.066200, 33.351704, 32.233925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.441319, 32.782967, 32.390800> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562038, 33.051956, 32.661118>,  <38.634472, 33.213348, 32.823307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.562038, 33.051956, 32.661118>,  <38.441319, 32.782967, 32.390800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.562038, 33.051956, 32.661118> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159810, -0.663135, 0.731240,
		0.939881, -0.328689, -0.092669,
		0.301803, 0.672469, 0.675796,
		38.652580, 33.253696, 32.863857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915131, 32.457260, 32.842846>,  <38.441319, 32.782967, 32.390800>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915131, 32.457260, 32.842846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793636, 32.777630, 33.049244>,  <38.720737, 32.969852, 33.173084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.793636, 32.777630, 33.049244>,  <38.915131, 32.457260, 32.842846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793636, 32.777630, 33.049244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168314, -0.578176, 0.798362,
		0.937770, 0.155644, 0.310423,
		-0.303739, 0.800929, 0.515999,
		38.702515, 33.017910, 33.204044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322533, 32.508308, 33.360405>,  <38.915131, 32.457260, 32.842846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322533, 32.508308, 33.360405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987122, 32.682613, 33.491238>,  <38.785877, 32.787197, 33.569736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.987122, 32.682613, 33.491238>,  <39.322533, 32.508308, 33.360405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987122, 32.682613, 33.491238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119800, -0.733067, 0.669523,
		0.531529, 0.522228, 0.666900,
		-0.838526, 0.435765, 0.327084,
		38.735565, 32.813343, 33.589363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312214, 32.340336, 34.057438>,  <39.322533, 32.508308, 33.360405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312214, 32.340336, 34.057438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939896, 32.477123, 34.005775>,  <38.716503, 32.559196, 33.974777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.939896, 32.477123, 34.005775>,  <39.312214, 32.340336, 34.057438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939896, 32.477123, 34.005775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348043, -0.721055, 0.599121,
		0.111752, 0.602609, 0.790173,
		-0.930794, 0.341967, -0.129155,
		38.660656, 32.579712, 33.967030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965458, 32.530773, 34.103767>,  <39.312214, 32.340336, 34.057438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965458, 32.530773, 34.103767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264645, 32.419590, 34.344860>,  <40.444157, 32.352879, 34.489517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.264645, 32.419590, 34.344860>,  <39.965458, 32.530773, 34.103767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264645, 32.419590, 34.344860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640112, 0.542197, -0.544315,
		-0.175502, 0.792945, 0.583470,
		0.747968, -0.277958, 0.602730,
		40.489037, 32.336201, 34.525681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221466, 33.156651, 34.335796>,  <39.965458, 32.530773, 34.103767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221466, 33.156651, 34.335796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.520130, 32.899803, 34.405285>,  <40.699329, 32.745693, 34.446976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.520130, 32.899803, 34.405285>,  <40.221466, 33.156651, 34.335796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.520130, 32.899803, 34.405285> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655194, 0.664778, -0.358875,
		0.114957, 0.381777, 0.917077,
		0.746663, -0.642118, 0.173718,
		40.744129, 32.707169, 34.457401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.672569, 33.536179, 34.712593>,  <40.221466, 33.156651, 34.335796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.672569, 33.536179, 34.712593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.882919, 33.238968, 34.547009>,  <41.009129, 33.060642, 34.447659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.882919, 33.238968, 34.547009>,  <40.672569, 33.536179, 34.712593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.882919, 33.238968, 34.547009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614515, 0.668394, -0.419070,
		0.588068, -0.034003, 0.808096,
		0.525877, -0.743030, -0.413957,
		41.040684, 33.016060, 34.422821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390873, 33.838303, 34.808880>,  <40.672569, 33.536179, 34.712593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390873, 33.838303, 34.808880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.421413, 33.549107, 34.534229>,  <41.439739, 33.375587, 34.369438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.421413, 33.549107, 34.534229>,  <41.390873, 33.838303, 34.808880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421413, 33.549107, 34.534229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661709, 0.551874, -0.507520,
		0.745863, -0.415597, 0.520545,
		0.076351, -0.722990, -0.686627,
		41.444317, 33.332211, 34.328239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.154675, 33.721867, 34.609665>,  <41.390873, 33.838303, 34.808880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.154675, 33.721867, 34.609665> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.931301, 33.590603, 34.304913>,  <41.797276, 33.511845, 34.122063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.931301, 33.590603, 34.304913>,  <42.154675, 33.721867, 34.609665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931301, 33.590603, 34.304913> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679906, 0.345128, -0.647004,
		0.475268, -0.879316, 0.030388,
		-0.558433, -0.328162, -0.761881,
		41.763771, 33.492153, 34.076347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.591328, 33.327034, 34.201309>,  <42.154675, 33.721867, 34.609665>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.591328, 33.327034, 34.201309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.283089, 33.420704, 33.964214>,  <42.098145, 33.476906, 33.821957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.283089, 33.420704, 33.964214>,  <42.591328, 33.327034, 34.201309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283089, 33.420704, 33.964214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636683, 0.324425, -0.699560,
		0.028479, -0.916466, -0.399097,
		-0.770600, 0.234175, -0.592738,
		42.051910, 33.490955, 33.786392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.696377, 33.124142, 33.502384>,  <42.591328, 33.327034, 34.201309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.696377, 33.124142, 33.502384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452347, 33.438629, 33.463047>,  <42.305927, 33.627319, 33.439445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.452347, 33.438629, 33.463047>,  <42.696377, 33.124142, 33.502384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452347, 33.438629, 33.463047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505983, 0.291061, -0.811951,
		-0.609744, -0.545114, -0.575381,
		-0.610077, 0.786215, -0.098346,
		42.269325, 33.674492, 33.433544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654907, 33.199776, 32.754642>,  <42.696377, 33.124142, 33.502384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654907, 33.199776, 32.754642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.487827, 33.544498, 32.869762>,  <42.387581, 33.751331, 32.938835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.487827, 33.544498, 32.869762>,  <42.654907, 33.199776, 32.754642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.487827, 33.544498, 32.869762> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193407, 0.393827, -0.898607,
		-0.887764, -0.319682, -0.331179,
		-0.417695, 0.861803, 0.287796,
		42.362518, 33.803040, 32.956100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330997, 33.346920, 32.156803>,  <42.654907, 33.199776, 32.754642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330997, 33.346920, 32.156803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.359486, 33.691582, 32.357792>,  <42.376579, 33.898380, 32.478386>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.359486, 33.691582, 32.357792>,  <42.330997, 33.346920, 32.156803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.359486, 33.691582, 32.357792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001781, 0.503863, -0.863782,
		-0.997459, 0.060621, 0.037419,
		0.071217, 0.861654, 0.502475,
		42.380852, 33.950077, 32.508533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954014, 33.866104, 31.767855>,  <42.330997, 33.346920, 32.156803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954014, 33.866104, 31.767855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.178272, 34.092010, 32.010082>,  <42.312828, 34.227554, 32.155418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.178272, 34.092010, 32.010082>,  <41.954014, 33.866104, 31.767855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178272, 34.092010, 32.010082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085046, 0.688175, -0.720543,
		-0.823678, 0.455470, 0.337790,
		0.560645, 0.564768, 0.605570,
		42.346466, 34.261440, 32.191753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.894417, 34.463123, 31.536497>,  <41.954014, 33.866104, 31.767855>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.894417, 34.463123, 31.536497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.233231, 34.523003, 31.740505>,  <42.436520, 34.558929, 31.862911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.233231, 34.523003, 31.740505>,  <41.894417, 34.463123, 31.536497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233231, 34.523003, 31.740505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322401, 0.618181, -0.716875,
		-0.422597, 0.771651, 0.475360,
		0.847035, 0.149694, 0.510022,
		42.487343, 34.567909, 31.893513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925423, 35.171234, 31.851641>,  <41.894417, 34.463123, 31.536497>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925423, 35.171234, 31.851641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.304131, 35.044922, 31.826616>,  <42.531353, 34.969135, 31.811602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.304131, 35.044922, 31.826616>,  <41.925423, 35.171234, 31.851641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.304131, 35.044922, 31.826616> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150473, 0.605909, -0.781173,
		0.284588, 0.730175, 0.621171,
		0.946767, -0.315782, -0.062563,
		42.588161, 34.950188, 31.807848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.306511, 35.729176, 31.769508>,  <41.925423, 35.171234, 31.851641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.306511, 35.729176, 31.769508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.538849, 35.436993, 31.625814>,  <42.678249, 35.261681, 31.539598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.538849, 35.436993, 31.625814>,  <42.306511, 35.729176, 31.769508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538849, 35.436993, 31.625814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134151, 0.521175, -0.842841,
		0.802887, 0.441364, 0.400712,
		0.580840, -0.730462, -0.359235,
		42.713100, 35.217854, 31.518044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.831444, 36.064976, 31.605400>,  <42.306511, 35.729176, 31.769508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.831444, 36.064976, 31.605400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.840981, 35.738419, 31.374598>,  <42.846703, 35.542484, 31.236116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.840981, 35.738419, 31.374598>,  <42.831444, 36.064976, 31.605400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840981, 35.738419, 31.374598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056226, 0.577351, -0.814558,
		0.998133, -0.013022, 0.059668,
		0.023842, -0.816392, -0.577005,
		42.848133, 35.493500, 31.201496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447319, 35.976940, 31.287455>,  <42.831444, 36.064976, 31.605400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447319, 35.976940, 31.287455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.236187, 35.735710, 31.048225>,  <43.109509, 35.590973, 30.904688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.236187, 35.735710, 31.048225>,  <43.447319, 35.976940, 31.287455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.236187, 35.735710, 31.048225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350092, 0.487075, -0.800121,
		0.773841, -0.631710, -0.045961,
		-0.527831, -0.603076, -0.598075,
		43.077839, 35.554787, 30.868803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857487, 35.836136, 30.711803>,  <43.447319, 35.976940, 31.287455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857487, 35.836136, 30.711803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.481346, 35.755024, 30.602537>,  <43.255661, 35.706356, 30.536978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.481346, 35.755024, 30.602537>,  <43.857487, 35.836136, 30.711803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481346, 35.755024, 30.602537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182931, 0.375606, -0.908546,
		0.286840, -0.904323, -0.316106,
		-0.940351, -0.202782, -0.273167,
		43.199242, 35.694191, 30.520588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.883209, 35.399891, 30.101326>,  <43.857487, 35.836136, 30.711803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.883209, 35.399891, 30.101326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.508141, 35.538479, 30.090542>,  <43.283100, 35.621632, 30.084070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.508141, 35.538479, 30.090542>,  <43.883209, 35.399891, 30.101326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508141, 35.538479, 30.090542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133400, 0.287216, -0.948531,
		-0.320894, -0.893009, -0.315534,
		-0.937674, 0.346470, -0.026961,
		43.226837, 35.642422, 30.082453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.600662, 35.215069, 29.511772>,  <43.883209, 35.399891, 30.101326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.600662, 35.215069, 29.511772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.405025, 35.550606, 29.607380>,  <43.287643, 35.751930, 29.664745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.405025, 35.550606, 29.607380>,  <43.600662, 35.215069, 29.511772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405025, 35.550606, 29.607380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048972, 0.247190, -0.967729,
		-0.870858, -0.485011, -0.079818,
		-0.489089, 0.838845, 0.239019,
		43.258297, 35.802258, 29.679085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.382721, 35.303493, 28.840372> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.334846, 35.632195, 29.063227>,  <43.306122, 35.829414, 29.196939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.334846, 35.632195, 29.063227>,  <43.382721, 35.303493, 28.840372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334846, 35.632195, 29.063227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192011, 0.569736, -0.799082,
		-0.974067, 0.011334, -0.225977,
		-0.119690, 0.821750, 0.557137,
		43.298939, 35.878719, 29.230368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963268, 35.821690, 28.406946>,  <43.382721, 35.303493, 28.840372>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963268, 35.821690, 28.406946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.108376, 36.059097, 28.694317>,  <43.195442, 36.201542, 28.866739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.108376, 36.059097, 28.694317>,  <42.963268, 35.821690, 28.406946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.108376, 36.059097, 28.694317> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206810, 0.700443, -0.683088,
		-0.908640, 0.396383, 0.131355,
		0.362771, 0.593515, 0.718427,
		43.217205, 36.237152, 28.909845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.656448, 36.479427, 28.365961>,  <42.963268, 35.821690, 28.406946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.656448, 36.479427, 28.365961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.002083, 36.547764, 28.555347>,  <43.209465, 36.588764, 28.668980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.002083, 36.547764, 28.555347>,  <42.656448, 36.479427, 28.365961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.002083, 36.547764, 28.555347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123875, 0.839531, -0.529001,
		-0.487861, 0.515753, 0.704266,
		0.864087, 0.170838, 0.473464,
		43.261311, 36.599014, 28.697386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747589, 37.301922, 28.552502>,  <42.656448, 36.479427, 28.365961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747589, 37.301922, 28.552502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118130, 37.151764, 28.564882>,  <43.340454, 37.061668, 28.572311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118130, 37.151764, 28.564882>,  <42.747589, 37.301922, 28.552502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118130, 37.151764, 28.564882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344278, 0.810487, -0.473903,
		0.152815, 0.449655, 0.880033,
		0.926348, -0.375395, 0.030952,
		43.396034, 37.039146, 28.574167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.179268, 37.835144, 28.874258>,  <42.747589, 37.301922, 28.552502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.179268, 37.835144, 28.874258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.412373, 37.603195, 28.646524>,  <43.552235, 37.464027, 28.509884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.412373, 37.603195, 28.646524>,  <43.179268, 37.835144, 28.874258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412373, 37.603195, 28.646524> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407263, 0.814662, -0.412871,
		0.703227, 0.008736, 0.710912,
		0.582760, -0.579870, -0.569335,
		43.587200, 37.429234, 28.475723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857922, 38.100819, 28.894409>,  <43.179268, 37.835144, 28.874258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857922, 38.100819, 28.894409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.890999, 37.865356, 28.572752>,  <43.910847, 37.724079, 28.379757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.890999, 37.865356, 28.572752>,  <43.857922, 38.100819, 28.894409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.890999, 37.865356, 28.572752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508449, 0.718909, -0.473971,
		0.857112, -0.369671, 0.358752,
		0.082697, -0.588653, -0.804145,
		43.915810, 37.688759, 28.331509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.448536, 38.346416, 28.647434>,  <43.857922, 38.100819, 28.894409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.448536, 38.346416, 28.647434> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.291279, 38.145092, 28.339638>,  <44.196926, 38.024296, 28.154959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.291279, 38.145092, 28.339638>,  <44.448536, 38.346416, 28.647434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.291279, 38.145092, 28.339638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416839, 0.648382, -0.637060,
		0.819564, -0.571209, -0.045106,
		-0.393140, -0.503310, -0.769493,
		44.173336, 37.994099, 28.108789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.017399, 38.349049, 28.168928>,  <44.448536, 38.346416, 28.647434>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.017399, 38.349049, 28.168928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.687622, 38.253822, 27.963552>,  <44.489758, 38.196686, 27.840328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.687622, 38.253822, 27.963552>,  <45.017399, 38.349049, 28.168928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687622, 38.253822, 27.963552> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291549, 0.598918, -0.745853,
		0.485070, -0.764605, -0.424365,
		-0.824443, -0.238067, -0.513437,
		44.440289, 38.182404, 27.809521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.321838, 38.142681, 27.619326>,  <45.017399, 38.349049, 28.168928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.321838, 38.142681, 27.619326> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.947414, 38.242901, 27.520519>,  <44.722759, 38.303032, 27.461235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.947414, 38.242901, 27.520519>,  <45.321838, 38.142681, 27.619326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.947414, 38.242901, 27.520519> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350367, 0.599636, -0.719499,
		-0.032146, -0.760042, -0.649079,
		-0.936061, 0.250545, -0.247018,
		44.666595, 38.318066, 27.446413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.171120, 38.080265, 26.820114>,  <45.321838, 38.142681, 27.619326>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.171120, 38.080265, 26.820114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.905365, 38.336235, 26.974560>,  <44.745911, 38.489815, 27.067226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.905365, 38.336235, 26.974560>,  <45.171120, 38.080265, 26.820114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.905365, 38.336235, 26.974560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236665, 0.670168, -0.703466,
		-0.708925, -0.375997, -0.596701,
		-0.664391, 0.639922, 0.386114,
		44.706047, 38.528214, 27.090393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.952724, 38.530087, 26.245031>,  <45.171120, 38.080265, 26.820114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.952724, 38.530087, 26.245031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.818253, 38.720654, 26.569994>,  <44.737568, 38.834995, 26.764973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.818253, 38.720654, 26.569994>,  <44.952724, 38.530087, 26.245031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.818253, 38.720654, 26.569994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083591, 0.874304, -0.478127,
		-0.938080, -0.092827, -0.333749,
		-0.336182, 0.476420, 0.812408,
		44.717400, 38.863579, 26.813717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344948, 38.999310, 26.015934>,  <44.952724, 38.530087, 26.245031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344948, 38.999310, 26.015934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.524837, 39.120342, 26.352076>,  <44.632771, 39.192963, 26.553761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.524837, 39.120342, 26.352076>,  <44.344948, 38.999310, 26.015934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524837, 39.120342, 26.352076> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074521, 0.924875, -0.372898,
		-0.890053, 0.230326, 0.393390,
		0.449725, 0.302583, 0.840352,
		44.659756, 39.211117, 26.604181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.913998, 39.531315, 26.292065>,  <44.344948, 38.999310, 26.015934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.913998, 39.531315, 26.292065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.255997, 39.598248, 26.488420>,  <44.461197, 39.638409, 26.606234>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.255997, 39.598248, 26.488420>,  <43.913998, 39.531315, 26.292065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.255997, 39.598248, 26.488420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034072, 0.962597, -0.268785,
		-0.517507, 0.213086, 0.828723,
		0.855000, 0.167334, 0.490890,
		44.512497, 39.648449, 26.635687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814472, 40.242786, 26.665373>,  <43.913998, 39.531315, 26.292065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814472, 40.242786, 26.665373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.205345, 40.175941, 26.612923>,  <44.439869, 40.135834, 26.581453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.205345, 40.175941, 26.612923>,  <43.814472, 40.242786, 26.665373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205345, 40.175941, 26.612923> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116337, 0.937526, -0.327890,
		0.177728, 0.305152, 0.935572,
		0.977179, -0.167117, -0.131124,
		44.498497, 40.125805, 26.573586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.087456, 40.857891, 26.741371>,  <43.814472, 40.242786, 26.665373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.087456, 40.857891, 26.741371> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.404060, 40.677605, 26.576269>,  <44.594021, 40.569431, 26.477207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.404060, 40.677605, 26.576269>,  <44.087456, 40.857891, 26.741371>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.404060, 40.677605, 26.576269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337918, 0.885491, -0.318932,
		0.509241, 0.112959, 0.853179,
		0.791508, -0.450718, -0.412757,
		44.641514, 40.542389, 26.452442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.717560, 41.202133, 26.931307>,  <44.087456, 40.857891, 26.741371>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.717560, 41.202133, 26.931307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.897469, 41.007843, 26.631498>,  <45.005413, 40.891270, 26.451614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.897469, 41.007843, 26.631498>,  <44.717560, 41.202133, 26.931307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.897469, 41.007843, 26.631498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386970, 0.862311, -0.326609,
		0.804962, -0.143144, 0.575801,
		0.449767, -0.485726, -0.749520,
		45.032398, 40.862125, 26.406643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490078, 41.354115, 26.878439>,  <44.717560, 41.202133, 26.931307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490078, 41.354115, 26.878439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.366943, 41.245758, 26.513615>,  <45.293060, 41.180744, 26.294720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.366943, 41.245758, 26.513615>,  <45.490078, 41.354115, 26.878439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366943, 41.245758, 26.513615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551932, 0.729987, -0.403100,
		0.774987, -0.627486, -0.075209,
		-0.307841, -0.270887, -0.912060,
		45.274590, 41.164494, 26.239996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.037365, 41.372093, 26.545341>,  <45.490078, 41.354115, 26.878439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.037365, 41.372093, 26.545341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.767086, 41.392315, 26.251163>,  <45.604919, 41.404449, 26.074657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.767086, 41.392315, 26.251163>,  <46.037365, 41.372093, 26.545341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.767086, 41.392315, 26.251163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510022, 0.752396, -0.416867,
		0.532269, -0.656768, -0.534177,
		-0.675698, 0.050557, -0.735443,
		45.564377, 41.407482, 26.030531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.458195, 41.496525, 26.016373>,  <46.037365, 41.372093, 26.545341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.458195, 41.496525, 26.016373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.105236, 41.587204, 25.851460>,  <45.893459, 41.641613, 25.752512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.105236, 41.587204, 25.851460>,  <46.458195, 41.496525, 26.016373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.105236, 41.587204, 25.851460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443808, 0.691988, -0.569374,
		0.156217, -0.685390, -0.711222,
		-0.882400, 0.226700, -0.412282,
		45.840515, 41.655212, 25.727776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545078, 41.444324, 25.334402>,  <46.458195, 41.496525, 26.016373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545078, 41.444324, 25.334402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.226986, 41.683342, 25.375498>,  <46.036133, 41.826752, 25.400154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.226986, 41.683342, 25.375498>,  <46.545078, 41.444324, 25.334402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.226986, 41.683342, 25.375498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466648, 0.711384, -0.525521,
		-0.387107, -0.369967, -0.844555,
		-0.795228, 0.597543, 0.102738,
		45.988419, 41.862606, 25.406319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.497528, 41.830173, 24.725100>,  <46.545078, 41.444324, 25.334402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.497528, 41.830173, 24.725100> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.290462, 42.077858, 24.961271>,  <46.166225, 42.226467, 25.102974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.290462, 42.077858, 24.961271>,  <46.497528, 41.830173, 24.725100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.290462, 42.077858, 24.961271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374172, 0.784438, -0.494623,
		-0.769431, -0.035124, -0.637763,
		-0.517659, 0.619211, 0.590429,
		46.135166, 42.263622, 25.138399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.214760, 42.286419, 24.326649>,  <46.497528, 41.830173, 24.725100>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.214760, 42.286419, 24.326649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.214695, 42.475426, 24.679178>,  <46.214657, 42.588829, 24.890696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.214695, 42.475426, 24.679178>,  <46.214760, 42.286419, 24.326649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.214695, 42.475426, 24.679178> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315022, 0.836474, -0.448412,
		-0.949084, 0.277562, -0.148992,
		-0.000166, 0.472516, 0.881322,
		46.214645, 42.617180, 24.943575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.735123, 42.819550, 24.332760>,  <46.214760, 42.286419, 24.326649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.735123, 42.819550, 24.332760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.043926, 42.880402, 24.579617>,  <46.229206, 42.916912, 24.727732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.043926, 42.880402, 24.579617>,  <45.735123, 42.819550, 24.332760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.043926, 42.880402, 24.579617> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347589, 0.711852, -0.610286,
		-0.532156, 0.685656, 0.496675,
		0.772005, 0.152128, 0.617143,
		46.275528, 42.926041, 24.764759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.518650, 42.597385, 23.609472>,  <45.735123, 42.819550, 24.332760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.518650, 42.597385, 23.609472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.292961, 42.926476, 23.581825>,  <45.157547, 43.123932, 23.565237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.292961, 42.926476, 23.581825>,  <45.518650, 42.597385, 23.609472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292961, 42.926476, 23.581825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825166, -0.564718, 0.013947,
		-0.027557, 0.064902, 0.997511,
		-0.564218, 0.822728, -0.069117,
		45.123695, 43.173294, 23.561090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.062199, 42.498997, 24.159796>,  <45.518650, 42.597385, 23.609472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.062199, 42.498997, 24.159796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.946148, 42.712486, 23.842064>,  <44.876518, 42.840580, 23.651424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.946148, 42.712486, 23.842064>,  <45.062199, 42.498997, 24.159796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.946148, 42.712486, 23.842064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899431, -0.435590, 0.035834,
		-0.326877, 0.724842, 0.606428,
		-0.290128, 0.533727, -0.794330,
		44.859108, 42.872604, 23.603765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510754, 42.715969, 24.417788>,  <45.062199, 42.498997, 24.159796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510754, 42.715969, 24.417788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.497787, 42.708439, 24.018068>,  <44.490009, 42.703918, 23.778236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.497787, 42.708439, 24.018068>,  <44.510754, 42.715969, 24.417788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.497787, 42.708439, 24.018068> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836012, -0.547433, 0.037434,
		-0.547753, 0.836638, 0.002004,
		-0.032416, -0.018830, -0.999297,
		44.488064, 42.702789, 23.718279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.877579, 42.698635, 24.261042>,  <44.510754, 42.715969, 24.417788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.877579, 42.698635, 24.261042> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.057392, 42.532055, 23.944944>,  <44.165279, 42.432106, 23.755285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.057392, 42.532055, 23.944944>,  <43.877579, 42.698635, 24.261042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.057392, 42.532055, 23.944944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755097, -0.649801, -0.087098,
		-0.477230, 0.635865, -0.606570,
		0.449533, -0.416454, -0.790244,
		44.192253, 42.407120, 23.707870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.282028, 42.474056, 23.856091>,  <43.877579, 42.698635, 24.261042>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.282028, 42.474056, 23.856091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.578732, 42.255333, 23.700764>,  <43.756756, 42.124100, 23.607567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.578732, 42.255333, 23.700764>,  <43.282028, 42.474056, 23.856091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.578732, 42.255333, 23.700764> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572867, -0.817658, 0.057091,
		-0.348729, 0.180106, -0.919755,
		0.741763, -0.546807, -0.388318,
		43.801262, 42.091290, 23.584269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.955208, 42.054699, 23.356977>,  <43.282028, 42.474056, 23.856091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.955208, 42.054699, 23.356977> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.305958, 41.877594, 23.431866>,  <43.516407, 41.771332, 23.476799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.305958, 41.877594, 23.431866>,  <42.955208, 42.054699, 23.356977>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.305958, 41.877594, 23.431866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480637, -0.814498, 0.324932,
		0.008622, -0.374909, -0.927021,
		0.876877, -0.442760, 0.187218,
		43.569019, 41.744766, 23.488031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931011, 41.369240, 23.039377>,  <42.955208, 42.054699, 23.356977>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931011, 41.369240, 23.039377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.208141, 41.320690, 23.323704>,  <43.374420, 41.291561, 23.494299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.208141, 41.320690, 23.323704>,  <42.931011, 41.369240, 23.039377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.208141, 41.320690, 23.323704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395360, -0.888308, 0.233666,
		0.603062, -0.442919, -0.663430,
		0.692825, -0.121378, 0.710817,
		43.415989, 41.284275, 23.536949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133110, 40.599731, 22.992826>,  <42.931011, 41.369240, 23.039377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133110, 40.599731, 22.992826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258297, 40.716831, 23.354235>,  <43.333408, 40.787090, 23.571079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.258297, 40.716831, 23.354235>,  <43.133110, 40.599731, 22.992826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.258297, 40.716831, 23.354235> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207215, -0.907346, 0.365766,
		0.926882, -0.301697, -0.223312,
		0.312972, 0.292748, 0.903519,
		43.352188, 40.804657, 23.625290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.447239, 40.028336, 23.285427>,  <43.133110, 40.599731, 22.992826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.447239, 40.028336, 23.285427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.389748, 40.252598, 23.611620>,  <43.355255, 40.387154, 23.807337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.389748, 40.252598, 23.611620>,  <43.447239, 40.028336, 23.285427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389748, 40.252598, 23.611620> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381044, -0.791857, 0.477250,
		0.913317, -0.242142, 0.327443,
		-0.143726, 0.560651, 0.815483,
		43.346630, 40.420792, 23.856264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433746, 39.550037, 23.712673>,  <43.447239, 40.028336, 23.285427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433746, 39.550037, 23.712673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.297600, 39.845867, 23.944944>,  <43.215912, 40.023365, 24.084307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.297600, 39.845867, 23.944944>,  <43.433746, 39.550037, 23.712673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.297600, 39.845867, 23.944944> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338067, -0.672505, 0.658367,
		0.877419, 0.027774, 0.478920,
		-0.340362, 0.739571, 0.580680,
		43.195492, 40.067738, 24.119148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705585, 39.460243, 24.378153>,  <43.433746, 39.550037, 23.712673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705585, 39.460243, 24.378153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.366879, 39.670235, 24.412521>,  <43.163654, 39.796230, 24.433142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.366879, 39.670235, 24.412521>,  <43.705585, 39.460243, 24.378153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.366879, 39.670235, 24.412521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340672, -0.659205, 0.670366,
		0.408566, 0.538374, 0.737039,
		-0.846768, 0.524978, 0.085920,
		43.112846, 39.827728, 24.438297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.634018, 39.685326, 25.050516>,  <43.705585, 39.460243, 24.378153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.634018, 39.685326, 25.050516> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.267162, 39.661274, 24.892914>,  <43.047050, 39.646843, 24.798353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.267162, 39.661274, 24.892914>,  <43.634018, 39.685326, 25.050516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267162, 39.661274, 24.892914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313209, -0.502629, 0.805769,
		-0.246485, 0.862409, 0.442149,
		-0.917140, -0.060125, -0.394005,
		42.992020, 39.643238, 24.774712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.096188, 40.069424, 25.389532>,  <43.634018, 39.685326, 25.050516>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.096188, 40.069424, 25.389532> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910812, 39.759212, 25.218058>,  <42.799587, 39.573086, 25.115173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.910812, 39.759212, 25.218058>,  <43.096188, 40.069424, 25.389532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910812, 39.759212, 25.218058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214670, -0.371108, 0.903436,
		-0.859732, 0.510716, 0.005504,
		-0.463442, -0.775531, -0.428688,
		42.771778, 39.526554, 25.089451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.463844, 39.963898, 25.842773>,  <43.096188, 40.069424, 25.389532>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.463844, 39.963898, 25.842773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.513588, 39.635578, 25.619768>,  <42.543434, 39.438587, 25.485966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.513588, 39.635578, 25.619768>,  <42.463844, 39.963898, 25.842773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513588, 39.635578, 25.619768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297819, -0.566845, 0.768109,
		-0.946487, 0.070515, -0.314944,
		0.124361, -0.820801, -0.557512,
		42.550896, 39.389339, 25.452515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.878551, 39.707058, 25.817610>,  <42.463844, 39.963898, 25.842773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.878551, 39.707058, 25.817610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.131729, 39.406704, 25.742186>,  <42.283638, 39.226494, 25.696932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.131729, 39.406704, 25.742186>,  <41.878551, 39.707058, 25.817610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131729, 39.406704, 25.742186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408917, -0.531056, 0.742136,
		-0.657392, -0.392628, -0.643179,
		0.632947, -0.750881, -0.188559,
		42.321613, 39.181438, 25.685617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.445862, 39.094006, 25.833418>,  <41.878551, 39.707058, 25.817610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.445862, 39.094006, 25.833418> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.819027, 38.955627, 25.873423>,  <42.042927, 38.872601, 25.897425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.819027, 38.955627, 25.873423>,  <41.445862, 39.094006, 25.833418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819027, 38.955627, 25.873423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313857, -0.644935, 0.696816,
		-0.176556, -0.681456, -0.710243,
		0.932910, -0.345942, 0.100013,
		42.098900, 38.851845, 25.903427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391922, 38.397865, 25.757441>,  <41.445862, 39.094006, 25.833418>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391922, 38.397865, 25.757441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.742828, 38.438179, 25.945164>,  <41.953373, 38.462368, 26.057798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.742828, 38.438179, 25.945164>,  <41.391922, 38.397865, 25.757441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.742828, 38.438179, 25.945164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222187, -0.781399, 0.583137,
		0.425492, -0.615839, -0.663098,
		0.877263, 0.100788, 0.469310,
		42.006008, 38.468414, 26.085957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759403, 37.741150, 25.684280>,  <41.391922, 38.397865, 25.757441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759403, 37.741150, 25.684280> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944328, 37.910557, 25.995893>,  <42.055283, 38.012203, 26.182861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.944328, 37.910557, 25.995893>,  <41.759403, 37.741150, 25.684280>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944328, 37.910557, 25.995893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024238, -0.872198, 0.488553,
		0.886385, -0.244747, -0.392964,
		0.462314, 0.423521, 0.779035,
		42.083023, 38.037613, 26.229605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092636, 37.157764, 25.917917>,  <41.759403, 37.741150, 25.684280>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092636, 37.157764, 25.917917> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.062382, 37.428303, 26.210995>,  <42.044231, 37.590626, 26.386841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.062382, 37.428303, 26.210995>,  <42.092636, 37.157764, 25.917917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.062382, 37.428303, 26.210995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159495, -0.733545, 0.660661,
		0.984297, -0.066894, 0.163353,
		-0.075633, 0.676341, 0.732695,
		42.039692, 37.631207, 26.430803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.388275, 36.805176, 26.523952>,  <42.092636, 37.157764, 25.917917>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.388275, 36.805176, 26.523952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187286, 37.109547, 26.688152>,  <42.066692, 37.292171, 26.786673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.187286, 37.109547, 26.688152>,  <42.388275, 36.805176, 26.523952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.187286, 37.109547, 26.688152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292640, -0.596444, 0.747407,
		0.813565, 0.255419, 0.522373,
		-0.502468, 0.760931, 0.410500,
		42.036545, 37.337826, 26.811302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.515232, 36.786385, 27.266121>,  <42.388275, 36.805176, 26.523952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.515232, 36.786385, 27.266121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.168499, 36.979061, 27.214628>,  <41.960461, 37.094666, 27.183733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.168499, 36.979061, 27.214628>,  <42.515232, 36.786385, 27.266121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.168499, 36.979061, 27.214628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431681, -0.595849, 0.677211,
		0.249502, 0.642601, 0.724440,
		-0.866833, 0.481692, -0.128733,
		41.908447, 37.123569, 27.176008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.829220, 34.458298, 31.746109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451447, 34.588982, 31.760527>,  <43.224781, 34.667393, 31.769178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.451447, 34.588982, 31.760527>,  <43.829220, 34.458298, 31.746109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451447, 34.588982, 31.760527> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099882, -0.389735, 0.915494,
		0.313152, 0.861026, 0.400713,
		-0.944436, 0.326713, 0.036045,
		43.168118, 34.686996, 31.771339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655148, 34.658634, 32.389709>,  <43.829220, 34.458298, 31.746109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655148, 34.658634, 32.389709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286720, 34.612709, 32.240875>,  <43.065662, 34.585155, 32.151573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.286720, 34.612709, 32.240875>,  <43.655148, 34.658634, 32.389709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.286720, 34.612709, 32.240875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306075, -0.377255, 0.874069,
		-0.240726, 0.918965, 0.312337,
		-0.921070, -0.114813, -0.372087,
		43.010399, 34.578266, 32.129250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128376, 34.969589, 32.917877>,  <43.655148, 34.658634, 32.389709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128376, 34.969589, 32.917877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.888298, 34.732731, 32.702793>,  <42.744251, 34.590614, 32.573742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.888298, 34.732731, 32.702793>,  <43.128376, 34.969589, 32.917877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888298, 34.732731, 32.702793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443557, -0.313023, 0.839806,
		-0.665603, 0.742550, -0.074777,
		-0.600191, -0.592145, -0.537712,
		42.708241, 34.555088, 32.541481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.502182, 35.037777, 33.265820>,  <43.128376, 34.969589, 32.917877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.502182, 35.037777, 33.265820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483669, 34.686226, 33.075897>,  <42.472561, 34.475296, 32.961945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.483669, 34.686226, 33.075897>,  <42.502182, 35.037777, 33.265820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.483669, 34.686226, 33.075897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617674, -0.348376, 0.705063,
		-0.785071, 0.325907, -0.526733,
		-0.046284, -0.878874, -0.474804,
		42.469784, 34.422565, 32.933456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796265, 34.900112, 33.328251>,  <42.502182, 35.037777, 33.265820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796265, 34.900112, 33.328251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970978, 34.554588, 33.227810>,  <42.075806, 34.347275, 33.167545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.970978, 34.554588, 33.227810>,  <41.796265, 34.900112, 33.328251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.970978, 34.554588, 33.227810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700223, -0.501711, 0.507910,
		-0.564720, -0.046017, -0.823999,
		0.436782, -0.863810, -0.251104,
		42.102013, 34.295444, 33.152477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.304020, 34.452290, 33.046383>,  <41.796265, 34.900112, 33.328251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.304020, 34.452290, 33.046383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600723, 34.218197, 33.177410>,  <41.778748, 34.077744, 33.256027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.600723, 34.218197, 33.177410>,  <41.304020, 34.452290, 33.046383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.600723, 34.218197, 33.177410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643466, -0.483334, 0.593582,
		-0.189056, -0.651073, -0.735093,
		0.741761, -0.585228, 0.327566,
		41.823250, 34.042629, 33.275681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.073849, 33.821320, 33.058102>,  <41.304020, 34.452290, 33.046383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.073849, 33.821320, 33.058102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.390987, 33.721107, 33.280319>,  <41.581272, 33.660980, 33.413651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.390987, 33.721107, 33.280319>,  <41.073849, 33.821320, 33.058102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390987, 33.721107, 33.280319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561575, -0.654408, 0.506343,
		0.236699, -0.713433, -0.659535,
		0.792847, -0.250528, 0.555544,
		41.628841, 33.645950, 33.446983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102470, 33.076862, 33.054581>,  <41.073849, 33.821320, 33.058102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102470, 33.076862, 33.054581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317791, 33.195633, 33.370064>,  <41.446983, 33.266895, 33.559353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.317791, 33.195633, 33.370064>,  <41.102470, 33.076862, 33.054581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317791, 33.195633, 33.370064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434185, -0.704394, 0.561527,
		0.722295, -0.644718, -0.250257,
		0.538306, 0.296930, 0.788707,
		41.479282, 33.284714, 33.606674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.449116, 32.480946, 33.353062>,  <41.102470, 33.076862, 33.054581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.449116, 32.480946, 33.353062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.436771, 32.730255, 33.665619>,  <41.429367, 32.879841, 33.853153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.436771, 32.730255, 33.665619>,  <41.449116, 32.480946, 33.353062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436771, 32.730255, 33.665619> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329725, -0.744350, 0.580711,
		0.943573, -0.239726, 0.228478,
		-0.030856, 0.623278, 0.781392,
		41.427513, 32.917240, 33.900036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.681770, 32.037426, 33.909428>,  <41.449116, 32.480946, 33.353062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.681770, 32.037426, 33.909428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507233, 32.352722, 34.082996>,  <41.402512, 32.541901, 34.187138>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.507233, 32.352722, 34.082996>,  <41.681770, 32.037426, 33.909428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.507233, 32.352722, 34.082996> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564535, -0.615354, 0.550127,
		0.700644, -0.004919, 0.713493,
		-0.436345, 0.788236, 0.433921,
		41.376328, 32.589191, 34.213173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.730431, 31.944784, 34.677795>,  <41.681770, 32.037426, 33.909428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.730431, 31.944784, 34.677795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.406399, 32.166794, 34.602192>,  <41.211979, 32.299999, 34.556831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.406399, 32.166794, 34.602192>,  <41.730431, 31.944784, 34.677795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.406399, 32.166794, 34.602192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554929, -0.621697, 0.552762,
		0.189292, 0.552665, 0.811621,
		-0.810075, 0.555026, -0.189008,
		41.163376, 32.333302, 34.545490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.488132, 32.047333, 35.317692>,  <41.730431, 31.944784, 34.677795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.488132, 32.047333, 35.317692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191322, 32.138672, 35.065578>,  <41.013237, 32.193478, 34.914310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.191322, 32.138672, 35.065578>,  <41.488132, 32.047333, 35.317692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191322, 32.138672, 35.065578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670249, -0.234810, 0.704010,
		0.012765, 0.944839, 0.327287,
		-0.742026, 0.228350, -0.630280,
		40.968716, 32.207176, 34.876495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.012177, 32.438465, 35.729481>,  <41.488132, 32.047333, 35.317692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.012177, 32.438465, 35.729481> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811661, 32.259651, 35.433136>,  <40.691353, 32.152363, 35.255329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.811661, 32.259651, 35.433136>,  <41.012177, 32.438465, 35.729481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.811661, 32.259651, 35.433136> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725158, -0.250083, 0.641564,
		-0.472076, 0.858848, -0.198806,
		-0.501288, -0.447033, -0.740859,
		40.661274, 32.125542, 35.210876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405567, 32.823727, 35.702747>,  <41.012177, 32.438465, 35.729481>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405567, 32.823727, 35.702747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.382595, 32.446617, 35.571369>,  <40.368813, 32.220352, 35.492542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.382595, 32.446617, 35.571369>,  <40.405567, 32.823727, 35.702747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382595, 32.446617, 35.571369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797358, -0.154654, 0.583354,
		-0.600768, 0.295388, -0.742849,
		-0.057431, -0.942777, -0.328441,
		40.365364, 32.163784, 35.472836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.690800, 33.485458, 35.761204>,  <40.405567, 32.823727, 35.702747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.690800, 33.485458, 35.761204> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.591091, 33.590698, 36.134007>,  <40.531265, 33.653843, 36.357689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.591091, 33.590698, 36.134007>,  <40.690800, 33.485458, 35.761204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.591091, 33.590698, 36.134007> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298849, 0.936317, -0.184390,
		-0.921169, 0.232567, -0.312025,
		-0.249272, 0.263103, 0.932009,
		40.516308, 33.669628, 36.413609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469975, 34.152409, 35.673733>,  <40.690800, 33.485458, 35.761204>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469975, 34.152409, 35.673733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523006, 34.149822, 36.070194>,  <40.554825, 34.148270, 36.308071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.523006, 34.149822, 36.070194>,  <40.469975, 34.152409, 35.673733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523006, 34.149822, 36.070194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233987, 0.971919, -0.024955,
		-0.963158, 0.235225, 0.130367,
		0.132576, -0.006468, 0.991152,
		40.562778, 34.147881, 36.367538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947578, 34.556717, 36.042538>,  <40.469975, 34.152409, 35.673733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947578, 34.556717, 36.042538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263504, 34.524685, 36.285774>,  <40.453060, 34.505466, 36.431717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.263504, 34.524685, 36.285774>,  <39.947578, 34.556717, 36.042538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.263504, 34.524685, 36.285774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103093, 0.994668, -0.002907,
		-0.604617, 0.064986, 0.793861,
		0.789817, -0.080084, 0.608092,
		40.500450, 34.500660, 36.468201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956383, 35.135551, 36.596058>,  <39.947578, 34.556717, 36.042538>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956383, 35.135551, 36.596058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343403, 35.034473, 36.595997>,  <40.575615, 34.973827, 36.595959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.343403, 35.034473, 36.595997>,  <39.956383, 35.135551, 36.596058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343403, 35.034473, 36.595997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251088, 0.961480, -0.111851,
		0.028414, 0.108182, 0.993725,
		0.967547, -0.252691, -0.000156,
		40.633667, 34.958668, 36.595951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.331314, 35.841526, 36.850304>,  <39.956383, 35.135551, 36.596058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.331314, 35.841526, 36.850304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583515, 35.588131, 36.670902>,  <40.734837, 35.436092, 36.563263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.583515, 35.588131, 36.670902>,  <40.331314, 35.841526, 36.850304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.583515, 35.588131, 36.670902> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289531, 0.728073, -0.621354,
		0.720165, 0.261911, 0.642468,
		0.630503, -0.633492, -0.448501,
		40.772667, 35.398083, 36.536350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868423, 36.311680, 36.642693>,  <40.331314, 35.841526, 36.850304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868423, 36.311680, 36.642693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.962654, 35.983730, 36.433960>,  <41.019192, 35.786961, 36.308720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.962654, 35.983730, 36.433960>,  <40.868423, 36.311680, 36.642693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962654, 35.983730, 36.433960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292996, 0.571874, -0.766233,
		0.926637, 0.027613, 0.374941,
		0.235577, -0.819877, -0.521829,
		41.033325, 35.737766, 36.277412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.636429, 36.315723, 36.506413>,  <40.868423, 36.311680, 36.642693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.636429, 36.315723, 36.506413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445965, 36.098988, 36.229378>,  <41.331684, 35.968945, 36.063156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445965, 36.098988, 36.229378>,  <41.636429, 36.315723, 36.506413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445965, 36.098988, 36.229378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366227, 0.593857, -0.716388,
		0.799467, -0.594760, -0.084335,
		-0.476162, -0.541843, -0.692587,
		41.303116, 35.936436, 36.021603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049381, 36.291126, 35.981674>,  <41.636429, 36.315723, 36.506413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049381, 36.291126, 35.981674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707436, 36.202969, 35.793785>,  <41.502270, 36.150074, 35.681049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.707436, 36.202969, 35.793785>,  <42.049381, 36.291126, 35.981674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707436, 36.202969, 35.793785> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342562, 0.440214, -0.829978,
		0.389696, -0.870426, -0.300825,
		-0.854861, -0.220388, -0.469725,
		41.450977, 36.136852, 35.652866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.298103, 36.445843, 35.328007>,  <42.049381, 36.291126, 35.981674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.298103, 36.445843, 35.328007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.913208, 36.353127, 35.270908>,  <41.682270, 36.297497, 35.236649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.913208, 36.353127, 35.270908>,  <42.298103, 36.445843, 35.328007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.913208, 36.353127, 35.270908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038954, 0.401724, -0.914932,
		0.269418, -0.885940, -0.377524,
		-0.962236, -0.231793, -0.142743,
		41.624538, 36.283588, 35.228085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096493, 36.050438, 34.605515>,  <42.298103, 36.445843, 35.328007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096493, 36.050438, 34.605515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.770435, 36.257015, 34.710457>,  <41.574802, 36.380962, 34.773422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.770435, 36.257015, 34.710457>,  <42.096493, 36.050438, 34.605515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770435, 36.257015, 34.710457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050724, 0.514815, -0.855799,
		-0.577039, -0.684288, -0.445843,
		-0.815140, 0.516444, 0.262358,
		41.525894, 36.411949, 34.789165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.684048, 36.111912, 33.985630>,  <42.096493, 36.050438, 34.605515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.684048, 36.111912, 33.985630> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601124, 36.401409, 34.248909>,  <41.551369, 36.575108, 34.406876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.601124, 36.401409, 34.248909>,  <41.684048, 36.111912, 33.985630>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.601124, 36.401409, 34.248909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140296, 0.687854, -0.712162,
		-0.968163, -0.055297, -0.244138,
		-0.207311, 0.723740, 0.658196,
		41.538929, 36.618530, 34.446369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136932, 36.520618, 33.611195>,  <41.684048, 36.111912, 33.985630>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136932, 36.520618, 33.611195> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.267845, 36.770947, 33.894386>,  <41.346394, 36.921143, 34.064301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.267845, 36.770947, 33.894386>,  <41.136932, 36.520618, 33.611195>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.267845, 36.770947, 33.894386> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191684, 0.689696, -0.698267,
		-0.925281, 0.364238, 0.105765,
		0.327281, 0.625819, 0.707981,
		41.366028, 36.958691, 34.106781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729401, 37.048275, 33.514286>,  <41.136932, 36.520618, 33.611195>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729401, 37.048275, 33.514286> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048420, 37.171680, 33.721649>,  <41.239830, 37.245724, 33.846066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.048420, 37.171680, 33.721649>,  <40.729401, 37.048275, 33.514286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.048420, 37.171680, 33.721649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211491, 0.661807, -0.719224,
		-0.564973, 0.683251, 0.462572,
		0.797544, 0.308512, 0.518405,
		41.287682, 37.264233, 33.877171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725952, 37.891796, 33.558186>,  <40.729401, 37.048275, 33.514286>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725952, 37.891796, 33.558186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091354, 37.739380, 33.615192>,  <41.310596, 37.647930, 33.649399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091354, 37.739380, 33.615192>,  <40.725952, 37.891796, 33.558186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091354, 37.739380, 33.615192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299926, 0.394100, -0.868752,
		0.274863, 0.836356, 0.474298,
		0.913507, -0.381041, 0.142521,
		41.365406, 37.625069, 33.657948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.297863, 38.503399, 33.756565>,  <40.725952, 37.891796, 33.558186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.297863, 38.503399, 33.756565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967510, 38.646820, 33.582504>,  <39.769299, 38.732872, 33.478065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.967510, 38.646820, 33.582504>,  <40.297863, 38.503399, 33.756565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967510, 38.646820, 33.582504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557146, -0.637556, 0.532080,
		-0.086656, 0.681880, 0.726313,
		-0.825880, 0.358554, -0.435155,
		39.719746, 38.754387, 33.451958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825237, 38.454536, 34.318901>,  <40.297863, 38.503399, 33.756565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825237, 38.454536, 34.318901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602676, 38.495152, 33.989025>,  <39.469139, 38.519520, 33.791100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.602676, 38.495152, 33.989025>,  <39.825237, 38.454536, 34.318901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602676, 38.495152, 33.989025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627443, -0.702011, 0.336892,
		-0.544734, 0.704891, 0.454305,
		-0.556400, 0.101534, -0.824688,
		39.435757, 38.525612, 33.741619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.255177, 38.474838, 34.546761>,  <39.825237, 38.454536, 34.318901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.255177, 38.474838, 34.546761> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212444, 38.375122, 34.161755>,  <39.186806, 38.315292, 33.930752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.212444, 38.375122, 34.161755>,  <39.255177, 38.474838, 34.546761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212444, 38.375122, 34.161755> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666696, -0.700222, 0.255353,
		-0.737634, 0.668986, -0.091399,
		-0.106828, -0.249292, -0.962518,
		39.180397, 38.300335, 33.872997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528099, 38.611557, 34.338963>,  <39.255177, 38.474838, 34.546761>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528099, 38.611557, 34.338963> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680321, 38.334866, 34.093464>,  <38.771656, 38.168850, 33.946167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.680321, 38.334866, 34.093464>,  <38.528099, 38.611557, 34.338963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.680321, 38.334866, 34.093464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832589, -0.545127, 0.098139,
		-0.402455, 0.473649, -0.783381,
		0.380559, -0.691732, -0.613745,
		38.794487, 38.127346, 33.909340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994034, 38.508709, 34.003910>,  <38.528099, 38.611557, 34.338963>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994034, 38.508709, 34.003910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.212883, 38.175816, 33.968029>,  <38.344193, 37.976082, 33.946499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.212883, 38.175816, 33.968029>,  <37.994034, 38.508709, 34.003910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212883, 38.175816, 33.968029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825539, -0.554207, 0.106489,
		-0.138337, 0.015789, -0.990259,
		0.547128, -0.832229, -0.089702,
		38.377022, 37.926147, 33.941120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694283, 38.106079, 33.484482>,  <37.994034, 38.508709, 34.003910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694283, 38.106079, 33.484482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.920952, 37.850868, 33.693020>,  <38.056953, 37.697742, 33.818142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.920952, 37.850868, 33.693020>,  <37.694283, 38.106079, 33.484482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920952, 37.850868, 33.693020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793310, -0.593422, 0.136051,
		0.222577, -0.490688, -0.842428,
		0.566674, -0.638025, 0.521349,
		38.090954, 37.659462, 33.849426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.342175, 37.477180, 33.413990>,  <37.694283, 38.106079, 33.484482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.342175, 37.477180, 33.413990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.594944, 37.377537, 33.707550>,  <37.746605, 37.317749, 33.883686>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.594944, 37.377537, 33.707550>,  <37.342175, 37.477180, 33.413990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.594944, 37.377537, 33.707550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715213, -0.552224, 0.428391,
		0.298560, -0.795608, -0.527134,
		0.631927, -0.249112, 0.733901,
		37.784523, 37.302803, 33.927719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341324, 36.784622, 33.389874>,  <37.342175, 37.477180, 33.413990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341324, 36.784622, 33.389874> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.484619, 36.885681, 33.749393>,  <37.570599, 36.946316, 33.965103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.484619, 36.885681, 33.749393>,  <37.341324, 36.784622, 33.389874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484619, 36.885681, 33.749393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653562, -0.619615, 0.434666,
		0.666723, -0.743134, -0.056853,
		0.358242, 0.252645, 0.898795,
		37.592091, 36.961475, 34.019032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486820, 36.126812, 33.772003>,  <37.341324, 36.784622, 33.389874>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.486820, 36.126812, 33.772003> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.443302, 36.432320, 34.026505>,  <37.417191, 36.615623, 34.179207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.443302, 36.432320, 34.026505>,  <37.486820, 36.126812, 33.772003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443302, 36.432320, 34.026505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690010, -0.518763, 0.504749,
		0.715577, -0.384108, 0.583447,
		-0.108793, 0.763771, 0.636253,
		37.410664, 36.661449, 34.217381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372604, 35.838413, 34.432587>,  <37.486820, 36.126812, 33.772003>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372604, 35.838413, 34.432587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241535, 36.212799, 34.484108>,  <37.162891, 36.437431, 34.515018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.241535, 36.212799, 34.484108>,  <37.372604, 35.838413, 34.432587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241535, 36.212799, 34.484108> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721356, -0.335889, 0.605660,
		0.610142, 0.105549, 0.785230,
		-0.327677, 0.935969, 0.128801,
		37.143230, 36.493591, 34.522747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.323109, 35.921825, 35.175018>,  <37.372604, 35.838413, 34.432587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.323109, 35.921825, 35.175018> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.083611, 36.198330, 35.013195>,  <36.939911, 36.364231, 34.916100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.083611, 36.198330, 35.013195>,  <37.323109, 35.921825, 35.175018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.083611, 36.198330, 35.013195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737874, -0.279599, 0.614302,
		0.311526, 0.666325, 0.677468,
		-0.598744, 0.691257, -0.404562,
		36.903988, 36.405708, 34.891827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111778, 36.316765, 35.682842>,  <37.323109, 35.921825, 35.175018>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111778, 36.316765, 35.682842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.839405, 36.378838, 35.396553>,  <36.675983, 36.416080, 35.224781>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.839405, 36.378838, 35.396553>,  <37.111778, 36.316765, 35.682842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839405, 36.378838, 35.396553> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732348, -0.142313, 0.665893,
		0.001476, 0.977582, 0.210550,
		-0.680929, 0.155179, -0.715720,
		36.635128, 36.425392, 35.181835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.815228, 41.751560, 32.549232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701550, 41.618568, 32.189526>,  <41.633343, 41.538773, 31.973700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.701550, 41.618568, 32.189526>,  <41.815228, 41.751560, 32.549232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.701550, 41.618568, 32.189526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575816, -0.690759, 0.437364,
		-0.766596, 0.642111, 0.004862,
		-0.284195, -0.332482, -0.899271,
		41.616291, 41.518826, 31.919744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.176296, 41.885086, 32.577965>,  <41.815228, 41.751560, 32.549232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.176296, 41.885086, 32.577965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213451, 41.601406, 32.298420>,  <41.235744, 41.431198, 32.130692>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.213451, 41.601406, 32.298420>,  <41.176296, 41.885086, 32.577965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213451, 41.601406, 32.298420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731015, -0.525123, 0.435732,
		-0.676010, 0.470405, -0.567213,
		0.092886, -0.709201, -0.698861,
		41.241318, 41.388645, 32.088760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.513111, 41.711182, 32.491440>,  <41.176296, 41.885086, 32.577965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.513111, 41.711182, 32.491440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719204, 41.402931, 32.341412>,  <40.842857, 41.217983, 32.251396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.719204, 41.402931, 32.341412>,  <40.513111, 41.711182, 32.491440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.719204, 41.402931, 32.341412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621276, -0.637287, 0.455940,
		-0.590384, -0.001894, -0.807120,
		0.515231, -0.770624, -0.375067,
		40.873772, 41.171745, 32.228889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013844, 41.295044, 32.323708>,  <40.513111, 41.711182, 32.491440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013844, 41.295044, 32.323708> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316212, 41.033180, 32.325001>,  <40.497631, 40.876060, 32.325779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316212, 41.033180, 32.325001>,  <40.013844, 41.295044, 32.323708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.316212, 41.033180, 32.325001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648845, -0.748527, 0.136779,
		-0.087122, -0.105493, -0.990596,
		0.755917, -0.654660, 0.003235,
		40.542988, 40.836781, 32.325970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818871, 40.730633, 31.898182>,  <40.013844, 41.295044, 32.323708>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818871, 40.730633, 31.898182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090691, 40.604279, 32.163036>,  <40.253784, 40.528465, 32.321949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090691, 40.604279, 32.163036>,  <39.818871, 40.730633, 31.898182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.090691, 40.604279, 32.163036> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460060, -0.886522, 0.049235,
		0.571447, -0.338081, -0.747763,
		0.679554, -0.315881, 0.662138,
		40.294556, 40.509514, 32.361679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899429, 40.053577, 31.796467>,  <39.818871, 40.730633, 31.898182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899429, 40.053577, 31.796467> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066254, 40.090054, 32.158184>,  <40.166348, 40.111938, 32.375214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066254, 40.090054, 32.158184>,  <39.899429, 40.053577, 31.796467>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.066254, 40.090054, 32.158184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199621, -0.961468, 0.189027,
		0.886685, -0.259352, -0.382787,
		0.417062, 0.091195, 0.904291,
		40.191372, 40.117413, 32.429470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.967533, 39.273190, 31.993946>,  <39.899429, 40.053577, 31.796467>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.967533, 39.273190, 31.993946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014519, 39.487411, 32.328465>,  <40.042709, 39.615944, 32.529175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.014519, 39.487411, 32.328465>,  <39.967533, 39.273190, 31.993946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014519, 39.487411, 32.328465> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393905, -0.747918, 0.534283,
		0.911615, -0.392179, 0.123103,
		0.117464, 0.535551, 0.836294,
		40.049759, 39.648075, 32.579353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376598, 38.897629, 32.436272>,  <39.967533, 39.273190, 31.993946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376598, 38.897629, 32.436272> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136032, 39.130341, 32.655304>,  <39.991692, 39.269966, 32.786724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136032, 39.130341, 32.655304>,  <40.376598, 38.897629, 32.436272>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.136032, 39.130341, 32.655304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319144, -0.803262, 0.502909,
		0.732428, 0.127700, 0.668762,
		-0.601412, 0.581776, 0.547577,
		39.955608, 39.304874, 32.819576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510502, 38.682735, 33.049080>,  <40.376598, 38.897629, 32.436272>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510502, 38.682735, 33.049080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155777, 38.865211, 33.078594>,  <39.942940, 38.974697, 33.096302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.155777, 38.865211, 33.078594>,  <40.510502, 38.682735, 33.049080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.155777, 38.865211, 33.078594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373192, -0.801147, 0.467858,
		0.272550, 0.387367, 0.880718,
		-0.886817, 0.456192, 0.073790,
		39.889732, 39.002068, 33.100731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.160728, 38.432232, 33.370541>,  <40.510502, 38.682735, 33.049080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.160728, 38.432232, 33.370541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433235, 38.139641, 33.359093>,  <41.596737, 37.964085, 33.352226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.433235, 38.139641, 33.359093>,  <41.160728, 38.432232, 33.370541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.433235, 38.139641, 33.359093> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486560, 0.481673, -0.728869,
		0.546936, 0.482629, 0.684054,
		0.681264, -0.731478, -0.028617,
		41.637615, 37.920197, 33.350506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.751106, 38.753147, 33.298870>,  <41.160728, 38.432232, 33.370541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.751106, 38.753147, 33.298870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864887, 38.387207, 33.184231>,  <41.933155, 38.167645, 33.115448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864887, 38.387207, 33.184231>,  <41.751106, 38.753147, 33.298870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864887, 38.387207, 33.184231> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470526, 0.393685, -0.789694,
		0.835280, 0.089779, 0.542445,
		0.284450, -0.914851, -0.286594,
		41.950222, 38.112751, 33.098251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408356, 38.779575, 33.249855>,  <41.751106, 38.753147, 33.298870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408356, 38.779575, 33.249855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338337, 38.457478, 33.023251>,  <42.296326, 38.264217, 32.887287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.338337, 38.457478, 33.023251>,  <42.408356, 38.779575, 33.249855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338337, 38.457478, 33.023251> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578183, 0.381658, -0.721139,
		0.796909, -0.453782, 0.398771,
		-0.175046, -0.805245, -0.566516,
		42.285824, 38.215904, 32.853294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.983829, 38.478001, 32.897141>,  <42.408356, 38.779575, 33.249855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.983829, 38.478001, 32.897141> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695995, 38.344994, 32.653294>,  <42.523296, 38.265190, 32.506985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695995, 38.344994, 32.653294>,  <42.983829, 38.478001, 32.897141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.695995, 38.344994, 32.653294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508142, 0.346191, -0.788634,
		0.473276, -0.877260, -0.080149,
		-0.719584, -0.332515, -0.609617,
		42.480122, 38.245239, 32.470409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.304176, 38.227737, 32.215992>,  <42.983829, 38.478001, 32.897141>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.304176, 38.227737, 32.215992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924751, 38.294342, 32.108280>,  <42.697098, 38.334305, 32.043652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.924751, 38.294342, 32.108280>,  <43.304176, 38.227737, 32.215992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924751, 38.294342, 32.108280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299619, 0.197302, -0.933435,
		-0.102299, -0.966098, -0.237043,
		-0.948558, 0.166512, -0.269278,
		42.640182, 38.344296, 32.027496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231453, 37.926903, 31.570383>,  <43.304176, 38.227737, 32.215992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231453, 37.926903, 31.570383> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914551, 38.170876, 31.577497>,  <42.724411, 38.317261, 31.581766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.914551, 38.170876, 31.577497>,  <43.231453, 37.926903, 31.570383>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.914551, 38.170876, 31.577497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246411, 0.346464, -0.905122,
		-0.558227, -0.712702, -0.424781,
		-0.792253, 0.609934, 0.017788,
		42.676876, 38.353855, 31.582834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017128, 37.946735, 30.883486>,  <43.231453, 37.926903, 31.570383>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017128, 37.946735, 30.883486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807846, 38.251507, 31.036182>,  <42.682278, 38.434368, 31.127800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807846, 38.251507, 31.036182>,  <43.017128, 37.946735, 30.883486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.807846, 38.251507, 31.036182> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142869, 0.520025, -0.842118,
		-0.840146, -0.386061, -0.380936,
		-0.523205, 0.761926, 0.381741,
		42.650887, 38.480083, 31.150705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.589733, 38.171673, 30.313543>,  <43.017128, 37.946735, 30.883486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.589733, 38.171673, 30.313543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645008, 38.478397, 30.564270>,  <42.678173, 38.662434, 30.714706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.645008, 38.478397, 30.564270>,  <42.589733, 38.171673, 30.313543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.645008, 38.478397, 30.564270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256796, 0.583505, -0.770440,
		-0.956536, 0.267429, -0.116282,
		0.138187, 0.766814, 0.626818,
		42.686462, 38.708443, 30.752316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.278423, 38.664268, 29.976955>,  <42.589733, 38.171673, 30.313543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.278423, 38.664268, 29.976955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509918, 38.843979, 30.249195>,  <42.648815, 38.951805, 30.412539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509918, 38.843979, 30.249195>,  <42.278423, 38.664268, 29.976955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.509918, 38.843979, 30.249195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353907, 0.613519, -0.705935,
		-0.734716, 0.649422, 0.196069,
		0.578742, 0.449272, 0.680598,
		42.683540, 38.978760, 30.453375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.114071, 39.426918, 29.912739>,  <42.278423, 38.664268, 29.976955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.114071, 39.426918, 29.912739> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474258, 39.401310, 30.084808>,  <42.690372, 39.385944, 30.188051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.474258, 39.401310, 30.084808>,  <42.114071, 39.426918, 29.912739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.474258, 39.401310, 30.084808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300799, 0.806062, -0.509690,
		-0.314117, 0.588358, 0.745094,
		0.900472, -0.064021, 0.430175,
		42.744400, 39.382103, 30.213861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227375, 40.134808, 30.221535>,  <42.114071, 39.426918, 29.912739>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227375, 40.134808, 30.221535> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562798, 39.929302, 30.149015>,  <42.764053, 39.806000, 30.105505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562798, 39.929302, 30.149015>,  <42.227375, 40.134808, 30.221535>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562798, 39.929302, 30.149015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343359, 0.756734, -0.556289,
		0.422993, 0.404231, 0.810971,
		0.838559, -0.513761, -0.181297,
		42.814365, 39.775173, 30.094625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891354, 40.569103, 30.520210>,  <42.227375, 40.134808, 30.221535>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891354, 40.569103, 30.520210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109455, 40.346016, 30.269884>,  <43.240314, 40.212162, 30.119688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.109455, 40.346016, 30.269884>,  <42.891354, 40.569103, 30.520210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.109455, 40.346016, 30.269884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639330, 0.759533, -0.119859,
		0.542176, -0.334750, 0.770706,
		0.545254, -0.557720, -0.625816,
		43.273033, 40.178699, 30.082140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566349, 40.711491, 30.746223>,  <42.891354, 40.569103, 30.520210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566349, 40.711491, 30.746223> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624477, 40.559223, 30.380936>,  <43.659355, 40.467861, 30.161762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.624477, 40.559223, 30.380936>,  <43.566349, 40.711491, 30.746223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.624477, 40.559223, 30.380936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580135, 0.780478, -0.233016,
		0.801451, -0.495929, 0.334261,
		0.145324, -0.380668, -0.913221,
		43.668076, 40.445023, 30.106970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326523, 40.760773, 30.542913>,  <43.566349, 40.711491, 30.746223>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326523, 40.760773, 30.542913> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135746, 40.733540, 30.192396>,  <44.021282, 40.717197, 29.982086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135746, 40.733540, 30.192396>,  <44.326523, 40.760773, 30.542913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135746, 40.733540, 30.192396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469915, 0.822787, -0.319689,
		0.742771, -0.564256, -0.360426,
		-0.476940, -0.068086, -0.876294,
		43.992664, 40.713112, 29.929508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.671394, 37.982651, 25.016653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.647072, 38.343678, 25.187145>,  <39.632477, 38.560295, 25.289440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.647072, 38.343678, 25.187145>,  <39.671394, 37.982651, 25.016653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647072, 38.343678, 25.187145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254164, -0.426944, 0.867825,
		0.965248, -0.055564, 0.255360,
		-0.060805, 0.902570, 0.426229,
		39.628830, 38.614449, 25.315014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079556, 37.890137, 25.629545>,  <39.671394, 37.982651, 25.016653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079556, 37.890137, 25.629545> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.816704, 38.190590, 25.654770>,  <39.658993, 38.370861, 25.669905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.816704, 38.190590, 25.654770>,  <40.079556, 37.890137, 25.629545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816704, 38.190590, 25.654770> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424202, -0.437669, 0.792779,
		0.623086, 0.494206, 0.606238,
		-0.657128, 0.751137, 0.063062,
		39.619564, 38.415932, 25.673689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267300, 38.239285, 26.283056>,  <40.079556, 37.890137, 25.629545>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267300, 38.239285, 26.283056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.894100, 38.311829, 26.158724>,  <39.670181, 38.355354, 26.084124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.894100, 38.311829, 26.158724>,  <40.267300, 38.239285, 26.283056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894100, 38.311829, 26.158724> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355555, -0.597909, 0.718391,
		-0.055562, 0.780778, 0.622333,
		-0.933003, 0.181358, -0.310830,
		39.614201, 38.366238, 26.065475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949711, 38.322720, 26.860329>,  <40.267300, 38.239285, 26.283056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949711, 38.322720, 26.860329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638424, 38.292412, 26.610968>,  <39.451653, 38.274227, 26.461351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638424, 38.292412, 26.610968>,  <39.949711, 38.322720, 26.860329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638424, 38.292412, 26.610968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463859, -0.599814, 0.651964,
		-0.423326, 0.796543, 0.431641,
		-0.778222, -0.075773, -0.623401,
		39.404957, 38.269680, 26.423946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.463516, 38.328281, 27.310665>,  <39.949711, 38.322720, 26.860329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.463516, 38.328281, 27.310665> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.297386, 38.164009, 26.985987>,  <39.197708, 38.065445, 26.791180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.297386, 38.164009, 26.985987>,  <39.463516, 38.328281, 27.310665>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297386, 38.164009, 26.985987> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497797, -0.644229, 0.580661,
		-0.761384, 0.645221, 0.063127,
		-0.415323, -0.410681, -0.811695,
		39.172791, 38.040806, 26.742477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863010, 38.153103, 27.584860>,  <39.463516, 38.328281, 27.310665>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863010, 38.153103, 27.584860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862019, 37.949005, 27.240850>,  <38.861423, 37.826546, 27.034445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.862019, 37.949005, 27.240850>,  <38.863010, 38.153103, 27.584860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.862019, 37.949005, 27.240850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571023, -0.705301, 0.420099,
		-0.820930, 0.492137, -0.289611,
		-0.002484, -0.510247, -0.860025,
		38.861275, 37.795933, 26.982843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192482, 38.077763, 27.508656>,  <38.863010, 38.153103, 27.584860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192482, 38.077763, 27.508656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.381092, 37.796078, 27.296337>,  <38.494259, 37.627068, 27.168945>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.381092, 37.796078, 27.296337>,  <38.192482, 38.077763, 27.508656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381092, 37.796078, 27.296337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568508, -0.702882, 0.427500,
		-0.674136, 0.100180, -0.731782,
		0.471529, -0.704217, -0.530791,
		38.522549, 37.584812, 27.137098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.731979, 37.620083, 27.319376>,  <38.192482, 38.077763, 27.508656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.731979, 37.620083, 27.319376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070999, 37.410465, 27.285824>,  <38.274410, 37.284695, 27.265694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.070999, 37.410465, 27.285824>,  <37.731979, 37.620083, 27.319376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.070999, 37.410465, 27.285824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462258, -0.806588, 0.368421,
		-0.260724, -0.273482, -0.925868,
		0.847550, -0.524046, -0.083878,
		38.325264, 37.253250, 27.260660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571209, 36.935982, 27.269875>,  <37.731979, 37.620083, 27.319376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571209, 36.935982, 27.269875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.956264, 36.901886, 27.372681>,  <38.187298, 36.881428, 27.434364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.956264, 36.901886, 27.372681>,  <37.571209, 36.935982, 27.269875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956264, 36.901886, 27.372681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219439, -0.801686, 0.556010,
		0.158649, -0.591637, -0.790441,
		0.962641, -0.085243, 0.257015,
		38.245056, 36.876312, 27.449785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.758991, 36.240929, 27.258001>,  <37.571209, 36.935982, 27.269875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.758991, 36.240929, 27.258001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.028702, 36.409546, 27.500538>,  <38.190529, 36.510715, 27.646059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.028702, 36.409546, 27.500538>,  <37.758991, 36.240929, 27.258001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028702, 36.409546, 27.500538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241731, -0.649844, 0.720603,
		0.697792, -0.632459, -0.336277,
		0.674279, 0.421542, 0.606341,
		38.230988, 36.536007, 27.682440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.738995, 35.772228, 27.764214>,  <37.758991, 36.240929, 27.258001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.738995, 35.772228, 27.764214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966835, 36.041805, 27.952408>,  <38.103539, 36.203552, 28.065325>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.966835, 36.041805, 27.952408>,  <37.738995, 35.772228, 27.764214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.966835, 36.041805, 27.952408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137174, -0.486445, 0.862876,
		0.810394, -0.556033, -0.184632,
		0.569601, 0.673943, 0.470485,
		38.137714, 36.243988, 28.093554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198654, 35.366821, 28.233965>,  <37.738995, 35.772228, 27.764214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198654, 35.366821, 28.233965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.143787, 35.730747, 28.390638>,  <38.110867, 35.949104, 28.484642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.143787, 35.730747, 28.390638>,  <38.198654, 35.366821, 28.233965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143787, 35.730747, 28.390638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180902, -0.411782, 0.893146,
		0.973889, 0.051655, 0.221072,
		-0.137169, 0.909817, 0.391685,
		38.102638, 36.003693, 28.508144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599316, 35.287518, 28.870611>,  <38.198654, 35.366821, 28.233965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599316, 35.287518, 28.870611> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353535, 35.600800, 28.908657>,  <38.206066, 35.788769, 28.931484>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.353535, 35.600800, 28.908657>,  <38.599316, 35.287518, 28.870611>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353535, 35.600800, 28.908657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350680, -0.379117, 0.856326,
		0.706736, 0.492814, 0.507601,
		-0.614449, 0.783202, 0.095116,
		38.169201, 35.835758, 28.937191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728550, 35.664211, 29.524090>,  <38.599316, 35.287518, 28.870611>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.728550, 35.664211, 29.524090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352898, 35.767712, 29.433691>,  <38.127506, 35.829811, 29.379452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.352898, 35.767712, 29.433691>,  <38.728550, 35.664211, 29.524090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352898, 35.767712, 29.433691> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340094, -0.607144, 0.718131,
		0.048605, 0.751282, 0.658189,
		-0.939135, 0.258751, -0.225996,
		38.071156, 35.845337, 29.365892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378582, 35.694107, 29.864904>,  <38.728550, 35.664211, 29.524090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378582, 35.694107, 29.864904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633602, 35.390724, 29.918972>,  <39.786613, 35.208694, 29.951412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.633602, 35.390724, 29.918972>,  <39.378582, 35.694107, 29.864904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.633602, 35.390724, 29.918972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657876, 0.444682, -0.607830,
		0.400903, 0.476450, 0.782478,
		0.637554, -0.758455, 0.135171,
		39.824867, 35.163189, 29.959522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.031101, 35.972500, 30.118870>,  <39.378582, 35.694107, 29.864904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.031101, 35.972500, 30.118870> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.157097, 35.629635, 29.955875>,  <40.232697, 35.423916, 29.858078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.157097, 35.629635, 29.955875>,  <40.031101, 35.972500, 30.118870>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.157097, 35.629635, 29.955875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726133, 0.494121, -0.478095,
		0.611155, -0.145293, 0.778061,
		0.314993, -0.857166, -0.407487,
		40.251595, 35.372486, 29.833630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.736698, 35.867310, 30.275537>,  <40.031101, 35.972500, 30.118870>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.736698, 35.867310, 30.275537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.645340, 35.663223, 29.943872>,  <40.590523, 35.540771, 29.744873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.645340, 35.663223, 29.943872>,  <40.736698, 35.867310, 30.275537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645340, 35.663223, 29.943872> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760290, 0.438495, -0.479252,
		0.608107, -0.739864, 0.287763,
		-0.228398, -0.510219, -0.829163,
		40.576820, 35.510159, 29.695124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.223808, 35.958351, 29.883514>,  <40.736698, 35.867310, 30.275537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.223808, 35.958351, 29.883514> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.021477, 35.757858, 29.602686>,  <40.900078, 35.637562, 29.434189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.021477, 35.757858, 29.602686>,  <41.223808, 35.958351, 29.883514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021477, 35.757858, 29.602686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605217, 0.373742, -0.702872,
		0.614698, -0.780436, 0.114308,
		-0.505825, -0.501235, -0.702071,
		40.869728, 35.607487, 29.392065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696388, 35.660698, 29.350243>,  <41.223808, 35.958351, 29.883514>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696388, 35.660698, 29.350243> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.347141, 35.698143, 29.158871>,  <41.137592, 35.720612, 29.044046>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.347141, 35.698143, 29.158871>,  <41.696388, 35.660698, 29.350243>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347141, 35.698143, 29.158871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460836, 0.478636, -0.747354,
		0.159030, -0.873008, -0.461049,
		-0.873121, 0.093616, -0.478431,
		41.085205, 35.726227, 29.015341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807491, 35.556168, 28.653341>,  <41.696388, 35.660698, 29.350243>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807491, 35.556168, 28.653341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.444202, 35.722980, 28.639380>,  <41.226231, 35.823071, 28.631002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.444202, 35.722980, 28.639380>,  <41.807491, 35.556168, 28.653341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.444202, 35.722980, 28.639380> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293525, 0.575343, -0.763429,
		-0.298296, -0.703606, -0.644948,
		-0.908220, 0.417036, -0.034903,
		41.171738, 35.848091, 28.628908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722893, 35.497868, 27.974771>,  <41.807491, 35.556168, 28.653341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722893, 35.497868, 27.974771> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.492111, 35.796322, 28.107679>,  <41.353642, 35.975395, 28.187424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.492111, 35.796322, 28.107679>,  <41.722893, 35.497868, 27.974771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.492111, 35.796322, 28.107679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301340, 0.572555, -0.762480,
		-0.759158, -0.339789, -0.555178,
		-0.576952, 0.746140, 0.332268,
		41.319027, 36.020164, 28.207359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.356148, 35.672741, 27.398216>,  <41.722893, 35.497868, 27.974771>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.356148, 35.672741, 27.398216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317268, 36.002495, 27.621267>,  <41.293941, 36.200348, 27.755098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.317268, 36.002495, 27.621267>,  <41.356148, 35.672741, 27.398216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.317268, 36.002495, 27.621267> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209909, 0.564657, -0.798186,
		-0.972877, 0.039466, -0.227930,
		-0.097201, 0.824382, 0.557626,
		41.288109, 36.249809, 27.788555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789932, 36.263271, 27.109425>,  <41.356148, 35.672741, 27.398216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789932, 36.263271, 27.109425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032490, 36.448822, 27.367756>,  <41.178024, 36.560154, 27.522755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.032490, 36.448822, 27.367756>,  <40.789932, 36.263271, 27.109425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.032490, 36.448822, 27.367756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111414, 0.754622, -0.646632,
		-0.787317, 0.464072, 0.405919,
		0.606398, 0.463879, 0.645831,
		41.214409, 36.587986, 27.561504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682262, 37.009258, 27.019857>,  <40.789932, 36.263271, 27.109425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682262, 37.009258, 27.019857> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.054562, 36.979000, 27.162954>,  <41.277943, 36.960846, 27.248812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.054562, 36.979000, 27.162954>,  <40.682262, 37.009258, 27.019857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.054562, 36.979000, 27.162954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303927, 0.704011, -0.641869,
		-0.203298, 0.706148, 0.678251,
		0.930751, -0.075648, 0.357741,
		41.333786, 36.956306, 27.270277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816242, 37.790871, 27.062159>,  <40.682262, 37.009258, 27.019857>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816242, 37.790871, 27.062159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.158665, 37.594193, 27.125916>,  <41.364117, 37.476185, 27.164169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.158665, 37.594193, 27.125916>,  <40.816242, 37.790871, 27.062159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158665, 37.594193, 27.125916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472313, 0.618845, -0.627655,
		0.209976, 0.612590, 0.762000,
		0.856055, -0.491695, 0.159392,
		41.415482, 37.446686, 27.173733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340034, 38.310944, 27.254610>,  <40.816242, 37.790871, 27.062159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340034, 38.310944, 27.254610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.539371, 37.991608, 27.119368>,  <41.658974, 37.800007, 27.038221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.539371, 37.991608, 27.119368>,  <41.340034, 38.310944, 27.254610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539371, 37.991608, 27.119368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621446, 0.600852, -0.502775,
		0.604537, 0.040436, 0.795550,
		0.498338, -0.798337, -0.338108,
		41.688873, 37.752106, 27.017935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.036358, 38.370396, 27.518929>,  <41.340034, 38.310944, 27.254610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.036358, 38.370396, 27.518929> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.040466, 38.157272, 27.180460>,  <42.042931, 38.029400, 26.977379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.040466, 38.157272, 27.180460>,  <42.036358, 38.370396, 27.518929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.040466, 38.157272, 27.180460> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440337, 0.762163, -0.474563,
		0.897774, -0.367725, 0.242447,
		0.010276, -0.532809, -0.846173,
		42.043549, 37.997429, 26.926607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684887, 38.583939, 27.186110>,  <42.036358, 38.370396, 27.518929>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684887, 38.583939, 27.186110> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.489723, 38.409245, 26.883799>,  <42.372623, 38.304428, 26.702412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.489723, 38.409245, 26.883799>,  <42.684887, 38.583939, 27.186110>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.489723, 38.409245, 26.883799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327014, 0.711322, -0.622160,
		0.809323, -0.550710, -0.204243,
		-0.487912, -0.436738, -0.755779,
		42.343349, 38.278225, 26.657064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.300953, 38.075417, 27.185360>,  <42.684887, 38.583939, 27.186110>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.300953, 38.075417, 27.185360> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.657143, 38.097332, 27.366051>,  <43.870857, 38.110481, 27.474464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.657143, 38.097332, 27.366051>,  <43.300953, 38.075417, 27.185360>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.657143, 38.097332, 27.366051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145477, -0.906345, 0.396705,
		0.431154, -0.418971, -0.799105,
		0.890473, 0.054790, 0.451725,
		43.924286, 38.113770, 27.501568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.606121, 37.389942, 27.089424>,  <43.300953, 38.075417, 27.185360>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.606121, 37.389942, 27.089424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.788872, 37.565891, 27.398687>,  <43.898521, 37.671459, 27.584246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.788872, 37.565891, 27.398687>,  <43.606121, 37.389942, 27.089424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.788872, 37.565891, 27.398687> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093327, -0.840678, 0.533432,
		0.884620, -0.315870, -0.343035,
		0.456877, 0.439871, 0.773160,
		43.925934, 37.697853, 27.630636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008263, 36.905331, 27.339867>,  <43.606121, 37.389942, 27.089424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008263, 36.905331, 27.339867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.998898, 37.150204, 27.656015>,  <43.993279, 37.297127, 27.845705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.998898, 37.150204, 27.656015>,  <44.008263, 36.905331, 27.339867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.998898, 37.150204, 27.656015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095034, -0.788371, 0.607816,
		0.995199, -0.060883, 0.076633,
		-0.023410, 0.612180, 0.790372,
		43.991875, 37.333858, 27.893127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.497490, 36.668888, 27.923101>,  <44.008263, 36.905331, 27.339867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.497490, 36.668888, 27.923101> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.200726, 36.887039, 28.079119>,  <44.022667, 37.017929, 28.172729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.200726, 36.887039, 28.079119>,  <44.497490, 36.668888, 27.923101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200726, 36.887039, 28.079119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123978, -0.683271, 0.719562,
		0.658938, 0.485494, 0.574541,
		-0.741910, 0.545377, 0.390042,
		43.978153, 37.050652, 28.196131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.589798, 36.584671, 28.661081>,  <44.497490, 36.668888, 27.923101>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.589798, 36.584671, 28.661081> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.210415, 36.701340, 28.611507>,  <43.982784, 36.771339, 28.581762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.210415, 36.701340, 28.611507>,  <44.589798, 36.584671, 28.661081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210415, 36.701340, 28.611507> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284382, -0.610736, 0.739005,
		0.139854, 0.736158, 0.662202,
		-0.948456, 0.291671, -0.123936,
		43.925877, 36.788841, 28.574327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.446018, 36.530060, 29.276209>,  <44.589798, 36.584671, 28.661081>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.446018, 36.530060, 29.276209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.090546, 36.555782, 29.094614>,  <43.877262, 36.571217, 28.985657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.090546, 36.555782, 29.094614>,  <44.446018, 36.530060, 29.276209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090546, 36.555782, 29.094614> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423043, -0.496863, 0.757735,
		-0.176843, 0.865443, 0.468759,
		-0.888685, 0.064305, -0.453986,
		43.823940, 36.575073, 28.958418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.885921, 36.754116, 29.896620>,  <44.446018, 36.530060, 29.276209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.885921, 36.754116, 29.896620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.681065, 36.612442, 29.583630>,  <43.558151, 36.527439, 29.395836>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.681065, 36.612442, 29.583630>,  <43.885921, 36.754116, 29.896620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.681065, 36.612442, 29.583630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568790, -0.542770, 0.617963,
		-0.643575, 0.761549, 0.076521,
		-0.512142, -0.354181, -0.782474,
		43.527420, 36.506187, 29.348886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160114, 36.960320, 29.989578>,  <43.885921, 36.754116, 29.896620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160114, 36.960320, 29.989578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.197823, 36.643948, 29.747738>,  <43.220448, 36.454124, 29.602634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.197823, 36.643948, 29.747738>,  <43.160114, 36.960320, 29.989578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.197823, 36.643948, 29.747738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589574, -0.533708, 0.606266,
		-0.802194, 0.299303, -0.516626,
		0.094270, -0.790932, -0.604599,
		43.226105, 36.406670, 29.566359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.458309, 36.737186, 29.966265>,  <43.160114, 36.960320, 29.989578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.458309, 36.737186, 29.966265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.710407, 36.438641, 29.880730>,  <42.861668, 36.259514, 29.829409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.710407, 36.438641, 29.880730>,  <42.458309, 36.737186, 29.966265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710407, 36.438641, 29.880730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419530, -0.559140, 0.715093,
		-0.653288, -0.360971, -0.665518,
		0.630246, -0.746366, -0.213841,
		42.899483, 36.214729, 29.816578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.022881, 36.095638, 30.166946>,  <42.458309, 36.737186, 29.966265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.022881, 36.095638, 30.166946> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.401245, 35.967384, 30.147163>,  <42.628265, 35.890430, 30.135294>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.401245, 35.967384, 30.147163>,  <42.022881, 36.095638, 30.166946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.401245, 35.967384, 30.147163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168870, -0.616774, 0.768813,
		-0.277013, -0.718876, -0.637559,
		0.945910, -0.320636, -0.049458,
		42.685017, 35.871193, 30.132326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974869, 35.376469, 30.128534>,  <42.022881, 36.095638, 30.166946>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974869, 35.376469, 30.128534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.349838, 35.465294, 30.235804>,  <42.574821, 35.518589, 30.300165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.349838, 35.465294, 30.235804>,  <41.974869, 35.376469, 30.128534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349838, 35.465294, 30.235804> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031270, -0.713412, 0.700047,
		0.346771, -0.664630, -0.661828,
		0.937428, 0.222061, 0.268173,
		42.631065, 35.531914, 30.316256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.333992, 34.770355, 30.191341>,  <41.974869, 35.376469, 30.128534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.333992, 34.770355, 30.191341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.568459, 35.014202, 30.404797>,  <42.709141, 35.160511, 30.532869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.568459, 35.014202, 30.404797>,  <42.333992, 34.770355, 30.191341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568459, 35.014202, 30.404797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004769, -0.656053, 0.754700,
		0.810174, -0.444927, -0.381651,
		0.586170, 0.609618, 0.533639,
		42.744308, 35.197086, 30.564888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.763386, 34.360485, 30.543152>,  <42.333992, 34.770355, 30.191341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.763386, 34.360485, 30.543152> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.796558, 34.702862, 30.747307>,  <42.816460, 34.908287, 30.869799>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.796558, 34.702862, 30.747307>,  <42.763386, 34.360485, 30.543152>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.796558, 34.702862, 30.747307> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099806, -0.516709, 0.850324,
		0.991545, -0.019577, -0.128278,
		0.082929, 0.855937, 0.510386,
		42.821438, 34.959644, 30.900423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.430164, 34.309807, 30.968000>,  <42.763386, 34.360485, 30.543152>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.430164, 34.309807, 30.968000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.202858, 34.585693, 31.147497>,  <43.066475, 34.751225, 31.255196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.202858, 34.585693, 31.147497>,  <43.430164, 34.309807, 30.968000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.202858, 34.585693, 31.147497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103427, -0.481156, 0.870512,
		0.816322, 0.541091, 0.202087,
		-0.568262, 0.689717, 0.448741,
		43.032379, 34.792610, 31.282120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.813782, 40.792953, 29.984297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.480064, 40.905865, 29.794868>,  <44.279835, 40.973614, 29.681211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.480064, 40.905865, 29.794868>,  <44.813782, 40.792953, 29.984297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.480064, 40.905865, 29.794868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502758, 0.742042, -0.443405,
		0.226246, -0.608022, -0.761000,
		-0.834294, 0.282280, -0.473573,
		44.229774, 40.990547, 29.652796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.049095, 40.886261, 29.305569>,  <44.813782, 40.792953, 29.984297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.049095, 40.886261, 29.305569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.697132, 41.076309, 29.303581>,  <44.485954, 41.190338, 29.302389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.697132, 41.076309, 29.303581>,  <45.049095, 40.886261, 29.305569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.697132, 41.076309, 29.303581> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438361, 0.807701, -0.394283,
		-0.183321, -0.349110, -0.918976,
		-0.879905, 0.475124, -0.004968,
		44.433159, 41.218845, 29.302092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880646, 40.948795, 28.588036>,  <45.049095, 40.886261, 29.305569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880646, 40.948795, 28.588036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690628, 41.224632, 28.806683>,  <44.576618, 41.390137, 28.937870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.690628, 41.224632, 28.806683>,  <44.880646, 40.948795, 28.588036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690628, 41.224632, 28.806683> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308647, 0.712295, -0.630375,
		-0.824055, -0.130747, -0.551216,
		-0.475048, 0.689595, 0.546616,
		44.548115, 41.431511, 28.970667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471039, 41.328323, 28.171864>,  <44.880646, 40.948795, 28.588036>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471039, 41.328323, 28.171864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.568291, 41.563850, 28.480196>,  <44.626644, 41.705166, 28.665195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.568291, 41.563850, 28.480196>,  <44.471039, 41.328323, 28.171864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.568291, 41.563850, 28.480196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331036, 0.696601, -0.636524,
		-0.911757, 0.409934, -0.025551,
		0.243134, 0.588814, 0.770833,
		44.641232, 41.740494, 28.711447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.213348, 42.018787, 27.958076>,  <44.471039, 41.328323, 28.171864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.213348, 42.018787, 27.958076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.478947, 42.071548, 28.252481>,  <44.638306, 42.103203, 28.429125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.478947, 42.071548, 28.252481>,  <44.213348, 42.018787, 27.958076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478947, 42.071548, 28.252481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353695, 0.811831, -0.464575,
		-0.658796, 0.568799, 0.492398,
		0.663994, 0.131901, 0.736013,
		44.678146, 42.111118, 28.473286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261772, 42.718998, 27.971441>,  <44.213348, 42.018787, 27.958076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261772, 42.718998, 27.971441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.576839, 42.663235, 28.211489>,  <44.765881, 42.629776, 28.355516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.576839, 42.663235, 28.211489>,  <44.261772, 42.718998, 27.971441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576839, 42.663235, 28.211489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458799, 0.782826, -0.420342,
		-0.411189, 0.606424, 0.680568,
		0.787672, -0.139404, 0.600116,
		44.813141, 42.621414, 28.391523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.491264, 43.474316, 28.362368>,  <44.261772, 42.718998, 27.971441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.491264, 43.474316, 28.362368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.801613, 43.222355, 28.348221>,  <44.987820, 43.071178, 28.339733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.801613, 43.222355, 28.348221>,  <44.491264, 43.474316, 28.362368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.801613, 43.222355, 28.348221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574100, 0.728156, -0.374430,
		0.261606, 0.270205, 0.926580,
		0.775868, -0.629904, -0.035365,
		45.034374, 43.033382, 28.337612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153488, 43.777630, 28.725866>,  <44.491264, 43.474316, 28.362368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153488, 43.777630, 28.725866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.266914, 43.496384, 28.465031>,  <45.334969, 43.327637, 28.308529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.266914, 43.496384, 28.465031>,  <45.153488, 43.777630, 28.725866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.266914, 43.496384, 28.465031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486135, 0.691545, -0.534264,
		0.826599, -0.165507, 0.537905,
		0.283561, -0.703117, -0.652089,
		45.351982, 43.285450, 28.269403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902679, 43.812386, 28.703613>,  <45.153488, 43.777630, 28.725866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902679, 43.812386, 28.703613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.771847, 43.640289, 28.367064>,  <45.693348, 43.537033, 28.165134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.771847, 43.640289, 28.367064>,  <45.902679, 43.812386, 28.703613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.771847, 43.640289, 28.367064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594057, 0.598811, -0.537141,
		0.734924, -0.675514, 0.059727,
		-0.327081, -0.430240, -0.841375,
		45.673721, 43.511219, 28.114651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.541103, 43.826393, 28.338821>,  <45.902679, 43.812386, 28.703613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.541103, 43.826393, 28.338821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.254829, 43.750362, 28.069996>,  <46.083065, 43.704742, 27.908701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.254829, 43.750362, 28.069996>,  <46.541103, 43.826393, 28.338821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254829, 43.750362, 28.069996> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575344, 0.385069, -0.721596,
		0.395957, -0.903100, -0.166221,
		-0.715680, -0.190086, -0.672064,
		46.040123, 43.693340, 27.868378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.811630, 43.457573, 27.846094>,  <46.541103, 43.826393, 28.338821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.811630, 43.457573, 27.846094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.491074, 43.610550, 27.662132>,  <46.298740, 43.702335, 27.551754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.491074, 43.610550, 27.662132>,  <46.811630, 43.457573, 27.846094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491074, 43.610550, 27.662132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570430, 0.257315, -0.779999,
		-0.179966, -0.887426, -0.424368,
		-0.801388, 0.382445, -0.459906,
		46.250656, 43.725285, 27.524160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815819, 43.385384, 27.069952>,  <46.811630, 43.457573, 27.846094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815819, 43.385384, 27.069952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.582779, 43.704601, 27.131538>,  <46.442955, 43.896133, 27.168489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.582779, 43.704601, 27.131538>,  <46.815819, 43.385384, 27.069952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582779, 43.704601, 27.131538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593398, 0.547102, -0.590389,
		-0.555390, -0.252598, -0.792298,
		-0.582599, 0.798044, 0.153964,
		46.408001, 43.944016, 27.177727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.568283, 43.716663, 26.412720>,  <46.815819, 43.385384, 27.069952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.568283, 43.716663, 26.412720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.574772, 43.988422, 26.706156>,  <46.578667, 44.151478, 26.882217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.574772, 43.988422, 26.706156>,  <46.568283, 43.716663, 26.412720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574772, 43.988422, 26.706156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627517, 0.564282, -0.536477,
		-0.778434, 0.469044, -0.417180,
		0.016224, 0.679399, 0.733589,
		46.579639, 44.192242, 26.926233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788219, 43.216351, 25.938675>,  <46.568283, 43.716663, 26.412720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788219, 43.216351, 25.938675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.548721, 43.209202, 25.618380>,  <46.405022, 43.204914, 25.426203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.548721, 43.209202, 25.618380>,  <46.788219, 43.216351, 25.938675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.548721, 43.209202, 25.618380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582487, -0.676479, 0.450649,
		-0.549734, 0.736245, 0.394634,
		-0.598749, -0.017868, -0.800737,
		46.369095, 43.203842, 25.378159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.163006, 43.006603, 26.155449>,  <46.788219, 43.216351, 25.938675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.163006, 43.006603, 26.155449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.159420, 42.910233, 25.767248>,  <46.157269, 42.852409, 25.534328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.159420, 42.910233, 25.767248>,  <46.163006, 43.006603, 26.155449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159420, 42.910233, 25.767248> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571740, -0.795016, 0.202641,
		-0.820386, 0.556692, -0.130621,
		-0.008963, -0.240925, -0.970503,
		46.156731, 42.837955, 25.476097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511597, 42.934753, 25.985851>,  <46.163006, 43.006603, 26.155449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511597, 42.934753, 25.985851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.727879, 42.720917, 25.726053>,  <45.857647, 42.592613, 25.570175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.727879, 42.720917, 25.726053>,  <45.511597, 42.934753, 25.985851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.727879, 42.720917, 25.726053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519233, -0.819561, 0.242315,
		-0.661842, 0.206218, -0.720721,
		0.540706, -0.534596, -0.649495,
		45.890091, 42.560539, 25.531204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.002010, 42.731506, 25.604834>,  <45.511597, 42.934753, 25.985851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.002010, 42.731506, 25.604834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.292107, 42.471542, 25.513941>,  <45.466164, 42.315563, 25.459404>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.292107, 42.471542, 25.513941>,  <45.002010, 42.731506, 25.604834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.292107, 42.471542, 25.513941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578307, -0.754139, 0.311185,
		-0.373609, -0.094274, -0.922783,
		0.725243, -0.649913, -0.227234,
		45.509678, 42.276569, 25.445770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698486, 42.162361, 25.348146>,  <45.002010, 42.731506, 25.604834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698486, 42.162361, 25.348146> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.051346, 41.996941, 25.438286>,  <45.263062, 41.897690, 25.492369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.051346, 41.996941, 25.438286>,  <44.698486, 42.162361, 25.348146>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.051346, 41.996941, 25.438286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468917, -0.815805, 0.338494,
		0.043854, -0.404273, -0.913586,
		0.882153, -0.413552, 0.225347,
		45.315990, 41.872875, 25.505890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.739082, 41.456364, 25.041128>,  <44.698486, 42.162361, 25.348146>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.739082, 41.456364, 25.041128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.980446, 41.457489, 25.360100>,  <45.125263, 41.458164, 25.551483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.980446, 41.457489, 25.360100>,  <44.739082, 41.456364, 25.041128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.980446, 41.457489, 25.360100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422438, -0.847023, 0.322641,
		0.676346, -0.531548, -0.509914,
		0.603409, 0.002810, 0.797427,
		45.161469, 41.458332, 25.599327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833576, 40.776394, 25.120428>,  <44.739082, 41.456364, 25.041128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833576, 40.776394, 25.120428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.985081, 40.892189, 25.472050>,  <45.075985, 40.961666, 25.683022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.985081, 40.892189, 25.472050>,  <44.833576, 40.776394, 25.120428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985081, 40.892189, 25.472050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114279, -0.927924, 0.354821,
		0.918410, -0.234851, -0.318384,
		0.378766, 0.289486, 0.879053,
		45.098709, 40.979034, 25.735765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.418003, 40.230598, 25.368071>,  <44.833576, 40.776394, 25.120428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.418003, 40.230598, 25.368071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.294453, 40.423695, 25.695866>,  <45.220322, 40.539551, 25.892542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.294453, 40.423695, 25.695866>,  <45.418003, 40.230598, 25.368071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.294453, 40.423695, 25.695866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058789, -0.869660, 0.490138,
		0.949283, 0.103215, 0.296998,
		-0.308877, 0.482740, 0.819486,
		45.201790, 40.568516, 25.941711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.666145, 39.855534, 25.957005>,  <45.418003, 40.230598, 25.368071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.666145, 39.855534, 25.957005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.371265, 40.084465, 26.100658>,  <45.194336, 40.221825, 26.186852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.371265, 40.084465, 26.100658>,  <45.666145, 39.855534, 25.957005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.371265, 40.084465, 26.100658> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273839, -0.738990, 0.615553,
		0.617695, 0.355441, 0.701509,
		-0.737201, 0.572325, 0.359137,
		45.150105, 40.256161, 26.208399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.800922, 39.867104, 26.664644>,  <45.666145, 39.855534, 25.957005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.800922, 39.867104, 26.664644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.411934, 39.959648, 26.653503>,  <45.178539, 40.015175, 26.646820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.411934, 39.959648, 26.653503>,  <45.800922, 39.867104, 26.664644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.411934, 39.959648, 26.653503> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193740, -0.736311, 0.648314,
		0.129486, 0.635862, 0.760863,
		-0.972470, 0.231357, -0.027850,
		45.120193, 40.029057, 26.645149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.619370, 39.916206, 27.231670>,  <45.800922, 39.867104, 26.664644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.619370, 39.916206, 27.231670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.280533, 39.822735, 27.040747>,  <45.077229, 39.766651, 26.926193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.280533, 39.822735, 27.040747>,  <45.619370, 39.916206, 27.231670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280533, 39.822735, 27.040747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171206, -0.730264, 0.661364,
		-0.503108, 0.641957, 0.578596,
		-0.847095, -0.233679, -0.477309,
		45.026405, 39.752632, 26.897554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119720, 39.692795, 27.745552>,  <45.619370, 39.916206, 27.231670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119720, 39.692795, 27.745552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.964455, 39.542862, 27.408783>,  <44.871296, 39.452904, 27.206722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.964455, 39.542862, 27.408783>,  <45.119720, 39.692795, 27.745552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.964455, 39.542862, 27.408783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316641, -0.803697, 0.503796,
		-0.865488, 0.462141, 0.193278,
		-0.388161, -0.374829, -0.841923,
		44.848007, 39.430412, 27.156206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.438068, 39.439041, 27.939251>,  <45.119720, 39.692795, 27.745552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.438068, 39.439041, 27.939251> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.514061, 39.285675, 27.577721>,  <44.559654, 39.193657, 27.360802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.514061, 39.285675, 27.577721>,  <44.438068, 39.439041, 27.939251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.514061, 39.285675, 27.577721> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516351, -0.822009, 0.240171,
		-0.835039, 0.421066, -0.354137,
		0.189976, -0.383411, -0.903828,
		44.571053, 39.170650, 27.306572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.825363, 39.259228, 27.669725>,  <44.438068, 39.439041, 27.939251>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.825363, 39.259228, 27.669725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.105747, 39.041523, 27.485365>,  <44.273979, 38.910900, 27.374748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.105747, 39.041523, 27.485365>,  <43.825363, 39.259228, 27.669725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.105747, 39.041523, 27.485365> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469073, -0.838625, 0.276911,
		-0.537233, 0.022091, -0.843144,
		0.700964, -0.544262, -0.460900,
		44.316036, 38.878246, 27.347095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455376, 38.774788, 27.294937>,  <43.825363, 39.259228, 27.669725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455376, 38.774788, 27.294937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.828335, 38.642300, 27.352791>,  <44.052113, 38.562805, 27.387503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.828335, 38.642300, 27.352791>,  <43.455376, 38.774788, 27.294937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.828335, 38.642300, 27.352791> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361420, -0.856017, 0.369610,
		0.001386, -0.396898, -0.917861,
		0.932402, -0.331221, 0.144633,
		44.108055, 38.542934, 27.396181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.195740, 38.581047, 26.590757>,  <43.455376, 38.774788, 27.294937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.195740, 38.581047, 26.590757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.831181, 38.512779, 26.440966>,  <42.612446, 38.471821, 26.351091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.831181, 38.512779, 26.440966>,  <43.195740, 38.581047, 26.590757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.831181, 38.512779, 26.440966> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201276, 0.608838, -0.767336,
		0.358955, -0.774719, -0.520540,
		-0.911394, -0.170667, -0.374477,
		42.557762, 38.461578, 26.328623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381756, 38.333851, 25.922129>,  <43.195740, 38.581047, 26.590757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381756, 38.333851, 25.922129> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.996983, 38.443165, 25.921764>,  <42.766117, 38.508755, 25.921545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.996983, 38.443165, 25.921764>,  <43.381756, 38.333851, 25.922129>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.996983, 38.443165, 25.921764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125104, 0.437382, -0.890531,
		-0.242971, -0.856745, -0.454922,
		-0.961933, 0.273285, -0.000911,
		42.708405, 38.525150, 25.921492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019890, 38.157288, 25.309334>,  <43.381756, 38.333851, 25.922129>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019890, 38.157288, 25.309334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.822853, 38.478497, 25.443504>,  <42.704632, 38.671223, 25.524006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.822853, 38.478497, 25.443504>,  <43.019890, 38.157288, 25.309334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.822853, 38.478497, 25.443504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065233, 0.418416, -0.905910,
		-0.867812, -0.424363, -0.258492,
		-0.492592, 0.803022, 0.335424,
		42.675076, 38.719402, 25.544132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.568882, 38.280209, 24.752089>,  <43.019890, 38.157288, 25.309334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.568882, 38.280209, 24.752089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.581318, 38.613541, 24.972851>,  <42.588779, 38.813538, 25.105309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.581318, 38.613541, 24.972851>,  <42.568882, 38.280209, 24.752089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.581318, 38.613541, 24.972851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110179, 0.551665, -0.826756,
		-0.993426, -0.035108, 0.108964,
		0.031086, 0.833327, 0.551907,
		42.590645, 38.863537, 25.138422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.027302, 38.688629, 24.500687>,  <42.568882, 38.280209, 24.752089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.027302, 38.688629, 24.500687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309204, 38.914772, 24.672123>,  <42.478348, 39.050457, 24.774984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.309204, 38.914772, 24.672123>,  <42.027302, 38.688629, 24.500687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309204, 38.914772, 24.672123> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115408, 0.687431, -0.717021,
		-0.699998, 0.455864, 0.549719,
		0.704758, 0.565355, 0.428590,
		42.520630, 39.084377, 24.800699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.759995, 39.490704, 24.469015>,  <42.027302, 38.688629, 24.500687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.759995, 39.490704, 24.469015> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.147655, 39.543518, 24.552258>,  <42.380253, 39.575207, 24.602203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.147655, 39.543518, 24.552258>,  <41.759995, 39.490704, 24.469015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147655, 39.543518, 24.552258> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002944, 0.850525, -0.525926,
		-0.246440, 0.509090, 0.824678,
		0.969153, 0.132037, 0.208105,
		42.438400, 39.583130, 24.614689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.897820, 40.279442, 24.374195>,  <41.759995, 39.490704, 24.469015>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.897820, 40.279442, 24.374195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.269318, 40.131363, 24.381950>,  <42.492218, 40.042515, 24.386604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.269318, 40.131363, 24.381950>,  <41.897820, 40.279442, 24.374195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.269318, 40.131363, 24.381950> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324314, 0.786068, -0.526229,
		0.179569, 0.495023, 0.850122,
		0.928749, -0.370201, 0.019390,
		42.547943, 40.020302, 24.387768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658215, 40.953804, 24.631338>,  <41.897820, 40.279442, 24.374195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658215, 40.953804, 24.631338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.392418, 40.942989, 24.332613>,  <41.232941, 40.936501, 24.153378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.392418, 40.942989, 24.332613>,  <41.658215, 40.953804, 24.631338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.392418, 40.942989, 24.332613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457834, -0.775109, 0.435424,
		-0.590631, 0.631249, 0.502672,
		-0.664487, -0.027034, -0.746811,
		41.193073, 40.934879, 24.108570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062199, 40.769703, 25.028412>,  <41.658215, 40.953804, 24.631338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062199, 40.769703, 25.028412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.894402, 40.694340, 24.673216>,  <40.793724, 40.649120, 24.460098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.894402, 40.694340, 24.673216>,  <41.062199, 40.769703, 25.028412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.894402, 40.694340, 24.673216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548473, -0.726868, 0.413328,
		-0.723327, 0.660427, 0.201580,
		-0.419495, -0.188410, -0.887990,
		40.768555, 40.637817, 24.406818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402096, 40.824673, 25.124239>,  <41.062199, 40.769703, 25.028412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402096, 40.824673, 25.124239> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469261, 40.583889, 24.811970>,  <40.509560, 40.439419, 24.624609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469261, 40.583889, 24.811970>,  <40.402096, 40.824673, 25.124239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469261, 40.583889, 24.811970> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647591, -0.664430, 0.373040,
		-0.743258, 0.442919, -0.501389,
		0.167911, -0.601960, -0.780673,
		40.519634, 40.403301, 24.577768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.727974, 40.597321, 24.885773>,  <40.402096, 40.824673, 25.124239>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.727974, 40.597321, 24.885773> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.985588, 40.344784, 24.712969>,  <40.140156, 40.193260, 24.609287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.985588, 40.344784, 24.712969>,  <39.727974, 40.597321, 24.885773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985588, 40.344784, 24.712969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573815, -0.772148, 0.272989,
		-0.505923, 0.072079, -0.859562,
		0.644033, -0.631341, -0.432008,
		40.178799, 40.155380, 24.583366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.293232, 40.177197, 24.467596>,  <39.727974, 40.597321, 24.885773>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.293232, 40.177197, 24.467596> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632507, 39.980976, 24.547533>,  <39.836071, 39.863243, 24.595495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.632507, 39.980976, 24.547533>,  <39.293232, 40.177197, 24.467596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632507, 39.980976, 24.547533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529604, -0.792429, 0.302614,
		0.009914, -0.362511, -0.931927,
		0.848187, -0.490552, 0.199843,
		39.886963, 39.833809, 24.607487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176167, 39.425808, 24.221506>,  <39.293232, 40.177197, 24.467596>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176167, 39.425808, 24.221506> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.476009, 39.437832, 24.485989>,  <39.655914, 39.445045, 24.644678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.476009, 39.437832, 24.485989>,  <39.176167, 39.425808, 24.221506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.476009, 39.437832, 24.485989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372765, -0.806304, 0.459261,
		0.546939, -0.590737, -0.593201,
		0.749602, 0.030064, 0.661205,
		39.700890, 39.446850, 24.684351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202293, 38.673141, 24.421618>,  <39.176167, 39.425808, 24.221506>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202293, 38.673141, 24.421618> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421055, 38.873493, 24.689949>,  <39.552311, 38.993706, 24.850948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.421055, 38.873493, 24.689949>,  <39.202293, 38.673141, 24.421618>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.421055, 38.873493, 24.689949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086330, -0.763273, 0.640283,
		0.832730, -0.408088, -0.374199,
		0.546907, 0.500878, 0.670831,
		39.585129, 39.023758, 24.891199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.438381, 46.034046, 26.640991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.811779, 45.982391, 26.774801>,  <44.035820, 45.951397, 26.855087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.811779, 45.982391, 26.774801>,  <43.438381, 46.034046, 26.640991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.811779, 45.982391, 26.774801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334900, -0.647407, 0.684621,
		0.128161, -0.751123, -0.647602,
		0.933497, -0.129141, 0.334524,
		44.091827, 45.943649, 26.875158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.555229, 45.320942, 26.785322>,  <43.438381, 46.034046, 26.640991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.555229, 45.320942, 26.785322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.837627, 45.494034, 27.009575>,  <44.007069, 45.597889, 27.144127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.837627, 45.494034, 27.009575>,  <43.555229, 45.320942, 26.785322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837627, 45.494034, 27.009575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031616, -0.771567, 0.635361,
		0.707508, -0.466288, -0.531043,
		0.705997, 0.432734, 0.560632,
		44.049427, 45.623856, 27.177765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.026340, 44.682915, 27.029264>,  <43.555229, 45.320942, 26.785322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.026340, 44.682915, 27.029264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.080212, 44.991184, 27.278399>,  <44.112534, 45.176147, 27.427879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.080212, 44.991184, 27.278399>,  <44.026340, 44.682915, 27.029264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.080212, 44.991184, 27.278399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013250, -0.627103, 0.778824,
		0.990801, -0.113141, -0.074243,
		0.134675, 0.770676, 0.622833,
		44.120613, 45.222385, 27.465248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.310497, 44.319443, 27.527506>,  <44.026340, 44.682915, 27.029264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.310497, 44.319443, 27.527506> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.200005, 44.673912, 27.676311>,  <44.133709, 44.886593, 27.765594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.200005, 44.673912, 27.676311>,  <44.310497, 44.319443, 27.527506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.200005, 44.673912, 27.676311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216694, -0.434537, 0.874197,
		0.936343, 0.160870, 0.312062,
		-0.276235, 0.886170, 0.372016,
		44.117134, 44.939762, 27.787916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619888, 44.419453, 28.150003>,  <44.310497, 44.319443, 27.527506>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619888, 44.419453, 28.150003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.294819, 44.650917, 28.177452>,  <44.099777, 44.789795, 28.193922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.294819, 44.650917, 28.177452>,  <44.619888, 44.419453, 28.150003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294819, 44.650917, 28.177452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260458, -0.466056, 0.845549,
		0.521272, 0.669282, 0.529470,
		-0.812673, 0.578665, 0.068622,
		44.051018, 44.824516, 28.198038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.591064, 44.581120, 28.862795>,  <44.619888, 44.419453, 28.150003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.591064, 44.581120, 28.862795> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.224430, 44.649361, 28.718153>,  <44.004448, 44.690308, 28.631369>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.224430, 44.649361, 28.718153>,  <44.591064, 44.581120, 28.862795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.224430, 44.649361, 28.718153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399825, -0.395470, 0.826888,
		-0.001932, 0.902495, 0.430695,
		-0.916589, 0.170605, -0.361604,
		43.949451, 44.700542, 28.609673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108681, 44.847919, 29.450308>,  <44.591064, 44.581120, 28.862795>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108681, 44.847919, 29.450308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.886646, 44.690918, 29.156965>,  <43.753426, 44.596718, 28.980959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.886646, 44.690918, 29.156965>,  <44.108681, 44.847919, 29.450308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886646, 44.690918, 29.156965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582395, -0.446083, 0.679577,
		-0.593877, 0.804330, 0.019023,
		-0.555090, -0.392507, -0.733357,
		43.720119, 44.573166, 28.936958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455097, 44.853004, 29.738213>,  <44.108681, 44.847919, 29.450308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455097, 44.853004, 29.738213> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.337940, 44.607330, 29.445093>,  <43.267647, 44.459927, 29.269222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.337940, 44.607330, 29.445093>,  <43.455097, 44.853004, 29.738213>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.337940, 44.607330, 29.445093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450111, -0.587607, 0.672397,
		-0.843572, 0.526782, -0.104343,
		-0.292894, -0.614181, -0.732799,
		43.250072, 44.423077, 29.225254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768597, 44.725216, 29.919380>,  <43.455097, 44.853004, 29.738213>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768597, 44.725216, 29.919380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.869812, 44.435249, 29.663113>,  <42.930542, 44.261269, 29.509352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.869812, 44.435249, 29.663113>,  <42.768597, 44.725216, 29.919380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.869812, 44.435249, 29.663113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508182, -0.663102, 0.549588,
		-0.823238, 0.186509, -0.536184,
		0.253042, -0.724921, -0.640671,
		42.945724, 44.217773, 29.470911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.120132, 44.468624, 29.746384>,  <42.768597, 44.725216, 29.919380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.120132, 44.468624, 29.746384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.395172, 44.185856, 29.680090>,  <42.560196, 44.016193, 29.640314>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.395172, 44.185856, 29.680090>,  <42.120132, 44.468624, 29.746384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.395172, 44.185856, 29.680090> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572253, -0.668108, 0.475560,
		-0.446911, -0.232155, -0.863930,
		0.687602, -0.706920, -0.165734,
		42.601452, 43.973782, 29.630369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.729748, 43.818764, 29.534569>,  <42.120132, 44.468624, 29.746384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.729748, 43.818764, 29.534569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.086628, 43.702213, 29.672594>,  <42.300758, 43.632282, 29.755409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.086628, 43.702213, 29.672594>,  <41.729748, 43.818764, 29.534569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086628, 43.702213, 29.672594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430623, -0.779161, 0.455491,
		0.136140, -0.554984, -0.820645,
		0.892205, -0.291378, 0.345064,
		42.354290, 43.614799, 29.776114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.873470, 43.087021, 29.267893>,  <41.729748, 43.818764, 29.534569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.873470, 43.087021, 29.267893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.080341, 43.143745, 29.605513>,  <42.204464, 43.177780, 29.808084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.080341, 43.143745, 29.605513>,  <41.873470, 43.087021, 29.267893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.080341, 43.143745, 29.605513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375943, -0.848307, 0.372883,
		0.768892, -0.510160, -0.385411,
		0.517177, 0.141814, 0.844048,
		42.235497, 43.186291, 29.858727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863609, 42.525200, 28.708359>,  <41.873470, 43.087021, 29.267893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863609, 42.525200, 28.708359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464760, 42.555073, 28.703066>,  <41.225452, 42.572998, 28.699890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.464760, 42.555073, 28.703066>,  <41.863609, 42.525200, 28.708359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.464760, 42.555073, 28.703066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032070, 0.257062, -0.965863,
		-0.068736, -0.963505, -0.258717,
		-0.997119, 0.074687, -0.013230,
		41.165623, 42.577480, 28.699097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.767376, 42.295376, 28.040754>,  <41.863609, 42.525200, 28.708359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.767376, 42.295376, 28.040754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.436756, 42.491879, 28.150646>,  <41.238384, 42.609779, 28.216581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.436756, 42.491879, 28.150646>,  <41.767376, 42.295376, 28.040754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.436756, 42.491879, 28.150646> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019909, 0.513305, -0.857976,
		-0.562509, -0.703691, -0.434053,
		-0.826552, 0.491260, 0.274729,
		41.188789, 42.639256, 28.233065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400173, 42.168789, 27.470400>,  <41.767376, 42.295376, 28.040754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400173, 42.168789, 27.470400> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.262215, 42.486439, 27.670565>,  <41.179440, 42.677029, 27.790663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.262215, 42.486439, 27.670565>,  <41.400173, 42.168789, 27.470400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.262215, 42.486439, 27.670565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107158, 0.496326, -0.861497,
		-0.932505, -0.350748, -0.086082,
		-0.344893, 0.794126, 0.500412,
		41.158749, 42.724678, 27.820688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842033, 42.454525, 27.087971>,  <41.400173, 42.168789, 27.470400>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842033, 42.454525, 27.087971> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.970062, 42.753136, 27.321295>,  <41.046879, 42.932304, 27.461288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.970062, 42.753136, 27.321295>,  <40.842033, 42.454525, 27.087971>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.970062, 42.753136, 27.321295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046414, 0.602602, -0.796691,
		-0.946257, 0.282069, 0.158225,
		0.320068, 0.746530, 0.583308,
		41.066082, 42.977097, 27.496286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443554, 43.032993, 26.819183>,  <40.842033, 42.454525, 27.087971>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443554, 43.032993, 26.819183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.738289, 43.212570, 27.021383>,  <40.915131, 43.320316, 27.142702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.738289, 43.212570, 27.021383>,  <40.443554, 43.032993, 26.819183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.738289, 43.212570, 27.021383> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045730, 0.712889, -0.699784,
		-0.674526, 0.538741, 0.504750,
		0.736833, 0.448940, 0.505499,
		40.959339, 43.347252, 27.173033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341644, 43.763756, 26.724943>,  <40.443554, 43.032993, 26.819183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341644, 43.763756, 26.724943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.721500, 43.752724, 26.849796>,  <40.949413, 43.746105, 26.924707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.721500, 43.752724, 26.849796>,  <40.341644, 43.763756, 26.724943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721500, 43.752724, 26.849796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214798, 0.782549, -0.584361,
		-0.228142, 0.621977, 0.749063,
		0.949639, -0.027580, 0.312131,
		41.006393, 43.744450, 26.943436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.544956, 44.499916, 27.024628>,  <40.341644, 43.763756, 26.724943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.544956, 44.499916, 27.024628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.886204, 44.311127, 26.935698>,  <41.090954, 44.197853, 26.882339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.886204, 44.311127, 26.935698>,  <40.544956, 44.499916, 27.024628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886204, 44.311127, 26.935698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309747, 0.801116, -0.512124,
		0.419817, 0.368038, 0.829640,
		0.853118, -0.471976, -0.222323,
		41.142139, 44.169533, 26.869001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.968044, 45.038559, 27.023323>,  <40.544956, 44.499916, 27.024628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.968044, 45.038559, 27.023323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182133, 44.767887, 26.821075>,  <41.310585, 44.605484, 26.699728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.182133, 44.767887, 26.821075>,  <40.968044, 45.038559, 27.023323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.182133, 44.767887, 26.821075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443426, 0.734532, -0.513650,
		0.718966, 0.050712, 0.693192,
		0.535221, -0.676676, -0.505617,
		41.342697, 44.564884, 26.669390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669693, 45.331211, 26.982740>,  <40.968044, 45.038559, 27.023323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669693, 45.331211, 26.982740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.637196, 45.036793, 26.713924>,  <41.617695, 44.860142, 26.552635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.637196, 45.036793, 26.713924>,  <41.669693, 45.331211, 26.982740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637196, 45.036793, 26.713924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645827, 0.474690, -0.597977,
		0.759149, -0.482605, 0.436790,
		-0.081247, -0.736045, -0.672040,
		41.612823, 44.815979, 26.512312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.399796, 45.235996, 26.679396>,  <41.669693, 45.331211, 26.982740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.399796, 45.235996, 26.679396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117477, 45.101379, 26.430046>,  <41.948086, 45.020611, 26.280437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.117477, 45.101379, 26.430046>,  <42.399796, 45.235996, 26.679396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.117477, 45.101379, 26.430046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480803, 0.418684, -0.770410,
		0.520271, -0.843471, -0.133695,
		-0.705795, -0.336541, -0.623373,
		41.905739, 45.000416, 26.243034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650425, 44.797394, 26.160339>,  <42.399796, 45.235996, 26.679396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650425, 44.797394, 26.160339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.317879, 44.959793, 26.008554>,  <42.118351, 45.057232, 25.917482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.317879, 44.959793, 26.008554>,  <42.650425, 44.797394, 26.160339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317879, 44.959793, 26.008554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535570, 0.403144, -0.742051,
		-0.148292, -0.820147, -0.552602,
		-0.831369, 0.405997, -0.379463,
		42.068466, 45.081593, 25.894716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.760853, 44.758808, 25.500090>,  <42.650425, 44.797394, 26.160339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.760853, 44.758808, 25.500090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.448769, 45.008125, 25.478985>,  <42.261520, 45.157715, 25.466322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.448769, 45.008125, 25.478985>,  <42.760853, 44.758808, 25.500090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448769, 45.008125, 25.478985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432853, 0.477078, -0.764876,
		-0.451571, -0.619598, -0.642013,
		-0.780206, 0.623293, -0.052760,
		42.214706, 45.195114, 25.463158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.546608, 44.681034, 24.794445>,  <42.760853, 44.758808, 25.500090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.546608, 44.681034, 24.794445> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.425449, 45.041779, 24.917667>,  <42.352753, 45.258224, 24.991600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.425449, 45.041779, 24.917667>,  <42.546608, 44.681034, 24.794445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425449, 45.041779, 24.917667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463236, 0.421811, -0.779415,
		-0.832866, -0.093382, -0.545541,
		-0.302899, 0.901862, 0.308054,
		42.334579, 45.312336, 25.010084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.891827, 44.253708, 24.759319>,  <42.546608, 44.681034, 24.794445>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.891827, 44.253708, 24.759319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.977970, 44.114040, 24.394527>,  <42.029655, 44.030239, 24.175652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.977970, 44.114040, 24.394527>,  <41.891827, 44.253708, 24.759319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977970, 44.114040, 24.394527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390692, -0.886701, 0.247228,
		-0.894977, 0.303062, -0.327369,
		0.215353, -0.349163, -0.911980,
		42.042576, 44.009293, 24.120934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244362, 43.960129, 24.359354>,  <41.891827, 44.253708, 24.759319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244362, 43.960129, 24.359354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.577682, 43.804688, 24.202078>,  <41.777676, 43.711422, 24.107712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.577682, 43.804688, 24.202078>,  <41.244362, 43.960129, 24.359354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.577682, 43.804688, 24.202078> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412976, -0.910411, 0.024546,
		-0.367504, 0.141925, -0.919129,
		0.833302, -0.388599, -0.393191,
		41.827675, 43.688107, 24.084120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973736, 43.643204, 23.880915>,  <41.244362, 43.960129, 24.359354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973736, 43.643204, 23.880915> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336185, 43.494549, 23.961744>,  <41.553654, 43.405357, 24.010242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.336185, 43.494549, 23.961744>,  <40.973736, 43.643204, 23.880915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.336185, 43.494549, 23.961744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363701, -0.928369, -0.076495,
		0.216029, -0.004182, -0.976378,
		0.906119, -0.371635, 0.202076,
		41.608021, 43.383057, 24.022367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039101, 43.145035, 23.366308>,  <40.973736, 43.643204, 23.880915>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039101, 43.145035, 23.366308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.334522, 43.037895, 23.613791>,  <41.511776, 42.973610, 23.762280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.334522, 43.037895, 23.613791>,  <41.039101, 43.145035, 23.366308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.334522, 43.037895, 23.613791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221686, -0.963145, -0.152338,
		0.636706, -0.024648, -0.770713,
		0.738553, -0.267851, 0.618704,
		41.556087, 42.957539, 23.799402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522015, 42.599960, 22.974096>,  <41.039101, 43.145035, 23.366308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522015, 42.599960, 22.974096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.559196, 42.554523, 23.369764>,  <41.581505, 42.527260, 23.607164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.559196, 42.554523, 23.369764>,  <41.522015, 42.599960, 22.974096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.559196, 42.554523, 23.369764> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081063, -0.991036, -0.106188,
		0.992365, -0.070314, -0.101330,
		0.092955, -0.113592, 0.989170,
		41.587082, 42.520447, 23.666515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875587, 41.883183, 23.108212>,  <41.522015, 42.599960, 22.974096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875587, 41.883183, 23.108212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.691181, 41.997009, 23.444422>,  <41.580536, 42.065308, 23.646149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.691181, 41.997009, 23.444422>,  <41.875587, 41.883183, 23.108212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.691181, 41.997009, 23.444422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347625, -0.929399, 0.123992,
		0.816469, -0.235026, 0.527391,
		-0.461016, 0.284569, 0.840527,
		41.552876, 42.082378, 23.696579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033680, 41.277012, 23.498150>,  <41.875587, 41.883183, 23.108212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033680, 41.277012, 23.498150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.732857, 41.473652, 23.673758>,  <41.552361, 41.591637, 23.779121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.732857, 41.473652, 23.673758>,  <42.033680, 41.277012, 23.498150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.732857, 41.473652, 23.673758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401901, -0.869975, 0.285690,
		0.522379, 0.038414, 0.851848,
		-0.752061, 0.491597, 0.439018,
		41.507240, 41.621132, 23.805464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.088360, 40.940174, 23.988850>,  <42.033680, 41.277012, 23.498150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.088360, 40.940174, 23.988850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.718853, 41.089958, 23.956760>,  <41.497150, 41.179829, 23.937506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.718853, 41.089958, 23.956760>,  <42.088360, 40.940174, 23.988850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.718853, 41.089958, 23.956760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374985, -0.841917, 0.388024,
		0.077758, 0.388526, 0.918151,
		-0.923764, 0.374465, -0.080225,
		41.441723, 41.202297, 23.932693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462067, 41.005375, 24.686918>,  <42.088360, 40.940174, 23.988850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462067, 41.005375, 24.686918> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.675167, 40.704933, 24.530960>,  <42.803028, 40.524670, 24.437386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.675167, 40.704933, 24.530960>,  <42.462067, 41.005375, 24.686918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675167, 40.704933, 24.530960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563665, 0.658592, -0.498537,
		0.631235, 0.045827, 0.774237,
		0.532752, -0.751104, -0.389895,
		42.834991, 40.479603, 24.413992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.064442, 41.195782, 24.833115>,  <42.462067, 41.005375, 24.686918>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.064442, 41.195782, 24.833115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.140404, 40.966778, 24.514074>,  <43.185982, 40.829376, 24.322649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.140404, 40.966778, 24.514074>,  <43.064442, 41.195782, 24.833115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.140404, 40.966778, 24.514074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627898, 0.695351, -0.349616,
		0.754772, -0.434420, 0.491527,
		0.189903, -0.572509, -0.797603,
		43.197376, 40.795025, 24.274794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769722, 41.168339, 24.832094>,  <43.064442, 41.195782, 24.833115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769722, 41.168339, 24.832094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.653816, 41.059010, 24.465197>,  <43.584274, 40.993412, 24.245058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.653816, 41.059010, 24.465197>,  <43.769722, 41.168339, 24.832094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.653816, 41.059010, 24.465197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612642, 0.683328, -0.397156,
		0.735328, -0.677023, -0.030558,
		-0.289765, -0.273319, -0.917242,
		43.566887, 40.977013, 24.190023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356880, 41.186916, 24.425148>,  <43.769722, 41.168339, 24.832094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356880, 41.186916, 24.425148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.054123, 41.191605, 24.163773>,  <43.872471, 41.194420, 24.006948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.054123, 41.191605, 24.163773>,  <44.356880, 41.186916, 24.425148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054123, 41.191605, 24.163773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449049, 0.735775, -0.506941,
		0.474840, -0.677124, -0.562165,
		-0.756890, 0.011723, -0.653437,
		43.827057, 41.195122, 23.967741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.729214, 41.227913, 23.812742>,  <44.356880, 41.186916, 24.425148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.729214, 41.227913, 23.812742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.373039, 41.364899, 23.692854>,  <44.159332, 41.447090, 23.620920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.373039, 41.364899, 23.692854>,  <44.729214, 41.227913, 23.812742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373039, 41.364899, 23.692854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452993, 0.730293, -0.511340,
		0.043766, -0.591089, -0.805418,
		-0.890439, 0.342469, -0.299721,
		44.105907, 41.467640, 23.602938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.774559, 41.365620, 23.163221>,  <44.729214, 41.227913, 23.812742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.774559, 41.365620, 23.163221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.468945, 41.591293, 23.288408>,  <44.285576, 41.726696, 23.363520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.468945, 41.591293, 23.288408>,  <44.774559, 41.365620, 23.163221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.468945, 41.591293, 23.288408> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481338, 0.821468, -0.305783,
		-0.429611, -0.082985, -0.899193,
		-0.764034, 0.564184, 0.312968,
		44.239735, 41.760548, 23.382299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.656017, 41.916306, 22.642191>,  <44.774559, 41.365620, 23.163221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.656017, 41.916306, 22.642191> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.530613, 42.042011, 23.000622>,  <44.455372, 42.117435, 23.215679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.530613, 42.042011, 23.000622>,  <44.656017, 41.916306, 22.642191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.530613, 42.042011, 23.000622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530271, 0.840748, -0.109338,
		-0.787735, 0.440885, -0.430226,
		-0.313506, 0.314266, 0.896075,
		44.436562, 42.136292, 23.269444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.539978, 42.628532, 22.390938>,  <44.656017, 41.916306, 22.642191>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.539978, 42.628532, 22.390938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.538479, 42.645988, 22.790554>,  <44.537579, 42.656460, 23.030323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.538479, 42.645988, 22.790554>,  <44.539978, 42.628532, 22.390938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538479, 42.645988, 22.790554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435047, 0.899620, -0.037664,
		-0.900400, 0.434488, -0.022350,
		-0.003742, 0.043636, 0.999040,
		44.537357, 42.659081, 23.090265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306129, 43.298077, 22.530546>,  <44.539978, 42.628532, 22.390938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306129, 43.298077, 22.530546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.510838, 43.151756, 22.841488>,  <44.633663, 43.063965, 23.028053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.510838, 43.151756, 22.841488>,  <44.306129, 43.298077, 22.530546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.510838, 43.151756, 22.841488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552151, 0.833253, 0.028596,
		-0.658194, 0.414583, 0.628412,
		0.511771, -0.365800, 0.777355,
		44.664368, 43.042015, 23.074694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.408039, 32.837173, 33.716766> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.792793, 32.799042, 33.819283>,  <38.023647, 32.776161, 33.880795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.792793, 32.799042, 33.819283>,  <37.408039, 32.837173, 33.716766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792793, 32.799042, 33.819283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239205, 0.747473, -0.619730,
		-0.132494, 0.657417, 0.741787,
		0.961887, -0.095329, 0.256293,
		38.081360, 32.770443, 33.896172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653820, 33.473557, 33.923512>,  <37.408039, 32.837173, 33.716766>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653820, 33.473557, 33.923512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994221, 33.291355, 33.818970>,  <38.198463, 33.182034, 33.756245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.994221, 33.291355, 33.818970>,  <37.653820, 33.473557, 33.923512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.994221, 33.291355, 33.818970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283445, 0.817358, -0.501583,
		0.442095, 0.352769, 0.824686,
		0.851006, -0.455500, -0.261359,
		38.249523, 33.154705, 33.740562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.159527, 33.965759, 33.872856>,  <37.653820, 33.473557, 33.923512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.159527, 33.965759, 33.872856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344891, 33.679646, 33.663620>,  <38.456108, 33.507977, 33.538078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.344891, 33.679646, 33.663620>,  <38.159527, 33.965759, 33.872856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344891, 33.679646, 33.663620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345833, 0.689468, -0.636423,
		0.815874, 0.114024, 0.566875,
		0.463409, -0.715285, -0.523086,
		38.483913, 33.465061, 33.506695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.927231, 34.160999, 33.730591>,  <38.159527, 33.965759, 33.872856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.927231, 34.160999, 33.730591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823574, 33.875099, 33.470753>,  <38.761379, 33.703560, 33.314850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.823574, 33.875099, 33.470753>,  <38.927231, 34.160999, 33.730591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.823574, 33.875099, 33.470753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457852, 0.501287, -0.734223,
		0.850420, -0.487689, 0.197344,
		-0.259146, -0.714752, -0.649594,
		38.745831, 33.660675, 33.275875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514671, 34.050236, 33.421150>,  <38.927231, 34.160999, 33.730591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514671, 34.050236, 33.421150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228840, 33.921032, 33.172943>,  <39.057339, 33.843510, 33.024021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228840, 33.921032, 33.172943>,  <39.514671, 34.050236, 33.421150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228840, 33.921032, 33.172943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451289, 0.464904, -0.761710,
		0.534520, -0.824335, -0.186441,
		-0.714581, -0.323011, -0.620515,
		39.014465, 33.824131, 32.986790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.847542, 33.975079, 32.831135>,  <39.514671, 34.050236, 33.421150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.847542, 33.975079, 32.831135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483799, 33.949039, 32.666775>,  <39.265553, 33.933418, 32.568161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.483799, 33.949039, 32.666775>,  <39.847542, 33.975079, 32.831135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.483799, 33.949039, 32.666775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341490, 0.447324, -0.826611,
		0.237610, -0.892000, -0.384548,
		-0.909355, -0.065091, -0.410898,
		39.210991, 33.929512, 32.543507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.897079, 33.539268, 32.254063>,  <39.847542, 33.975079, 32.831135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.897079, 33.539268, 32.254063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580811, 33.778469, 32.201557>,  <39.391048, 33.921989, 32.170055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.580811, 33.778469, 32.201557>,  <39.897079, 33.539268, 32.254063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580811, 33.778469, 32.201557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438606, 0.403686, -0.802909,
		-0.427149, -0.692413, -0.581470,
		-0.790676, 0.597998, -0.131262,
		39.343609, 33.957867, 32.162178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915604, 33.578377, 31.571775>,  <39.897079, 33.539268, 32.254063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915604, 33.578377, 31.571775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664272, 33.868366, 31.684649>,  <39.513474, 34.042358, 31.752373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.664272, 33.868366, 31.684649>,  <39.915604, 33.578377, 31.571775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.664272, 33.868366, 31.684649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089985, 0.428016, -0.899280,
		-0.772730, -0.539647, -0.334169,
		-0.628324, 0.724971, 0.282181,
		39.475777, 34.085857, 31.769302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406384, 33.581890, 30.980457>,  <39.915604, 33.578377, 31.571775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406384, 33.581890, 30.980457> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.359505, 33.940735, 31.150845>,  <39.331379, 34.156044, 31.253077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.359505, 33.940735, 31.150845>,  <39.406384, 33.581890, 30.980457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359505, 33.940735, 31.150845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105284, 0.437731, -0.892920,
		-0.987512, -0.059800, -0.145752,
		-0.117197, 0.897115, 0.425969,
		39.324345, 34.209869, 31.278635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859409, 33.869873, 30.634804>,  <39.406384, 33.581890, 30.980457>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859409, 33.869873, 30.634804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080688, 34.172871, 30.773472>,  <39.213455, 34.354668, 30.856672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080688, 34.172871, 30.773472>,  <38.859409, 33.869873, 30.634804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080688, 34.172871, 30.773472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045685, 0.387933, -0.920555,
		-0.831799, 0.525083, 0.179996,
		0.553194, 0.757493, 0.346671,
		39.246647, 34.400120, 30.877474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700771, 34.555256, 30.246696>,  <38.859409, 33.869873, 30.634804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700771, 34.555256, 30.246696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052357, 34.637642, 30.418747>,  <39.263306, 34.687073, 30.521976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.052357, 34.637642, 30.418747>,  <38.700771, 34.555256, 30.246696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052357, 34.637642, 30.418747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283873, 0.498770, -0.818929,
		-0.383205, 0.841907, 0.379930,
		0.878960, 0.205966, 0.430125,
		39.316044, 34.699432, 30.547785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854950, 35.226631, 30.202873>,  <38.700771, 34.555256, 30.246696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854950, 35.226631, 30.202873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223145, 35.079506, 30.255663>,  <39.444061, 34.991230, 30.287336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223145, 35.079506, 30.255663>,  <38.854950, 35.226631, 30.202873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223145, 35.079506, 30.255663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337891, 0.579501, -0.741626,
		0.196302, 0.727249, 0.657704,
		0.920486, -0.367815, 0.131973,
		39.499290, 34.969162, 30.295256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367664, 35.699215, 30.144815>,  <38.854950, 35.226631, 30.202873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367664, 35.699215, 30.144815> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044579, 35.759007, 29.916693>,  <37.850727, 35.794880, 29.779819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.044579, 35.759007, 29.916693>,  <38.367664, 35.699215, 30.144815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044579, 35.759007, 29.916693> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581620, -0.360363, 0.729285,
		-0.096505, 0.920758, 0.378011,
		-0.807716, 0.149479, -0.570307,
		37.802265, 35.803852, 29.745600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871330, 36.086983, 30.498478>,  <38.367664, 35.699215, 30.144815>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871330, 36.086983, 30.498478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.668888, 35.862095, 30.236864>,  <37.547424, 35.727161, 30.079895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.668888, 35.862095, 30.236864>,  <37.871330, 36.086983, 30.498478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668888, 35.862095, 30.236864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661873, -0.233019, 0.712479,
		-0.552975, 0.793477, -0.254189,
		-0.506105, -0.562224, -0.654035,
		37.517056, 35.693428, 30.040653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161358, 36.168209, 30.695757>,  <37.871330, 36.086983, 30.498478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161358, 36.168209, 30.695757> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.153648, 35.835590, 30.473709>,  <37.149021, 35.636021, 30.340481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.153648, 35.835590, 30.473709>,  <37.161358, 36.168209, 30.695757>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153648, 35.835590, 30.473709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627804, -0.422050, 0.654015,
		-0.778132, 0.361115, -0.513912,
		-0.019279, -0.831547, -0.555120,
		37.147865, 35.586124, 30.307173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499565, 36.035507, 30.631500>,  <37.161358, 36.168209, 30.695757>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499565, 36.035507, 30.631500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668091, 35.688309, 30.526365>,  <36.769207, 35.479992, 30.463284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.668091, 35.688309, 30.526365>,  <36.499565, 36.035507, 30.631500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668091, 35.688309, 30.526365> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684247, -0.494440, 0.536036,
		-0.595235, -0.045990, -0.802235,
		0.421310, -0.867994, -0.262839,
		36.794483, 35.427910, 30.447514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975727, 35.546494, 30.470213>,  <36.499565, 36.035507, 30.631500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975727, 35.546494, 30.470213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.278873, 35.297249, 30.547543>,  <36.460762, 35.147701, 30.593941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.278873, 35.297249, 30.547543>,  <35.975727, 35.546494, 30.470213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278873, 35.297249, 30.547543> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614483, -0.582195, 0.532409,
		-0.219196, -0.522290, -0.824116,
		0.757868, -0.623107, 0.193323,
		36.506233, 35.110317, 30.605539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727230, 34.877464, 30.249186>,  <35.975727, 35.546494, 30.470213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727230, 34.877464, 30.249186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036320, 34.848866, 30.501467>,  <36.221775, 34.831707, 30.652836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.036320, 34.848866, 30.501467>,  <35.727230, 34.877464, 30.249186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036320, 34.848866, 30.501467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581976, -0.476453, 0.659012,
		0.253384, -0.876288, -0.409775,
		0.772723, -0.071496, 0.630704,
		36.268135, 34.827415, 30.690678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590923, 34.247391, 30.582108>,  <35.727230, 34.877464, 30.249186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590923, 34.247391, 30.582108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851780, 34.446701, 30.810644>,  <36.008293, 34.566288, 30.947765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.851780, 34.446701, 30.810644>,  <35.590923, 34.247391, 30.582108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.851780, 34.446701, 30.810644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548196, -0.210604, 0.809400,
		0.523630, -0.841052, 0.135808,
		0.652145, 0.498275, 0.571339,
		36.047424, 34.596184, 30.982046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734287, 33.799366, 31.088974>,  <35.590923, 34.247391, 30.582108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734287, 33.799366, 31.088974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850780, 34.145435, 31.252272>,  <35.920677, 34.353077, 31.350250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.850780, 34.145435, 31.252272>,  <35.734287, 33.799366, 31.088974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850780, 34.145435, 31.252272> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597133, -0.169002, 0.784137,
		0.747405, -0.472146, 0.467401,
		0.291235, 0.865169, 0.408247,
		35.938152, 34.404987, 31.374746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780647, 33.697056, 31.819487>,  <35.734287, 33.799366, 31.088974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780647, 33.697056, 31.819487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759281, 34.096355, 31.829718>,  <35.746460, 34.335934, 31.835855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.759281, 34.096355, 31.829718>,  <35.780647, 33.697056, 31.819487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759281, 34.096355, 31.829718> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520319, -0.049687, 0.852525,
		0.852300, 0.032233, 0.522059,
		-0.053419, 0.998244, 0.025577,
		35.743256, 34.395828, 31.837391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996723, 33.974625, 32.548462>,  <35.780647, 33.697056, 31.819487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996723, 33.974625, 32.548462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749584, 34.233513, 32.369858>,  <35.601299, 34.388847, 32.262695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.749584, 34.233513, 32.369858>,  <35.996723, 33.974625, 32.548462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749584, 34.233513, 32.369858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523706, 0.084856, 0.847662,
		0.586513, 0.757565, 0.286525,
		-0.617846, 0.647220, -0.446511,
		35.564232, 34.427677, 32.235905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790707, 34.297146, 33.112991>,  <35.996723, 33.974625, 32.548462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790707, 34.297146, 33.112991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537018, 34.425087, 32.831436>,  <35.384804, 34.501850, 32.662502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.537018, 34.425087, 32.831436>,  <35.790707, 34.297146, 33.112991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537018, 34.425087, 32.831436> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648951, 0.274651, 0.709527,
		0.420267, 0.906787, 0.033378,
		-0.634223, 0.319851, -0.703887,
		35.346752, 34.521042, 32.620270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.515034, 34.880814, 33.363392>,  <35.790707, 34.297146, 33.112991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.515034, 34.880814, 33.363392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245308, 34.743214, 33.102020>,  <35.083473, 34.660652, 32.945198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.245308, 34.743214, 33.102020>,  <35.515034, 34.880814, 33.363392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245308, 34.743214, 33.102020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719230, 0.105396, 0.686731,
		-0.167366, 0.933036, -0.318485,
		-0.674312, -0.343999, -0.653428,
		35.043015, 34.640015, 32.905991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849422, 35.304348, 33.421379>,  <35.515034, 34.880814, 33.363392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849422, 35.304348, 33.421379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741901, 34.955582, 33.257671>,  <34.677391, 34.746323, 33.159447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.741901, 34.955582, 33.257671>,  <34.849422, 35.304348, 33.421379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.741901, 34.955582, 33.257671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831345, -0.004566, 0.555737,
		-0.486427, 0.489627, -0.723639,
		-0.268800, -0.871920, -0.409271,
		34.661263, 34.694004, 33.134892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095547, 35.455997, 33.283577>,  <34.849422, 35.304348, 33.421379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095547, 35.455997, 33.283577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.174717, 35.064125, 33.270618>,  <34.222221, 34.829002, 33.262844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.174717, 35.064125, 33.270618>,  <34.095547, 35.455997, 33.283577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174717, 35.064125, 33.270618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805158, -0.181341, 0.564656,
		-0.559058, -0.085676, -0.824690,
		0.197928, -0.979681, -0.032398,
		34.234097, 34.770222, 33.260899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768105, 36.111481, 33.558704>,  <34.095547, 35.455997, 33.283577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768105, 36.111481, 33.558704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517899, 36.324203, 33.787060>,  <33.367775, 36.451836, 33.924072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.517899, 36.324203, 33.787060>,  <33.768105, 36.111481, 33.558704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517899, 36.324203, 33.787060> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620412, 0.782722, -0.049357,
		-0.473098, 0.323315, -0.819540,
		-0.625514, 0.531803, 0.570892,
		33.330246, 36.483746, 33.958328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947182, 36.787697, 33.342831>,  <33.768105, 36.111481, 33.558704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947182, 36.787697, 33.342831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745651, 36.874348, 33.677311>,  <33.624733, 36.926338, 33.877998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.745651, 36.874348, 33.677311>,  <33.947182, 36.787697, 33.342831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745651, 36.874348, 33.677311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399696, 0.916641, 0.003356,
		-0.765770, 0.335918, -0.548411,
		-0.503823, 0.216628, 0.836202,
		33.594505, 36.939335, 33.928173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386036, 37.398270, 33.365643>,  <33.947182, 36.787697, 33.342831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386036, 37.398270, 33.365643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612854, 37.332085, 33.688400>,  <33.748943, 37.292374, 33.882053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.612854, 37.332085, 33.688400>,  <33.386036, 37.398270, 33.365643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.612854, 37.332085, 33.688400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505810, 0.843105, -0.182565,
		-0.650090, 0.511659, 0.561773,
		0.567045, -0.165467, 0.806896,
		33.782967, 37.282444, 33.930470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.365311, 38.040165, 33.748665>,  <33.386036, 37.398270, 33.365643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.365311, 38.040165, 33.748665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699707, 37.826050, 33.796982>,  <33.900345, 37.697582, 33.825974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.699707, 37.826050, 33.796982>,  <33.365311, 38.040165, 33.748665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699707, 37.826050, 33.796982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533756, 0.742117, -0.405422,
		0.127372, 0.403404, 0.906114,
		0.835991, -0.535283, 0.120794,
		33.950504, 37.665466, 33.833221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.841202, 38.528496, 33.909840>,  <33.365311, 38.040165, 33.748665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.841202, 38.528496, 33.909840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.074429, 38.230453, 33.780315>,  <34.214363, 38.051628, 33.702602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.074429, 38.230453, 33.780315>,  <33.841202, 38.528496, 33.909840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074429, 38.230453, 33.780315> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537460, 0.652656, -0.534020,
		0.609236, 0.137335, 0.781006,
		0.583068, -0.745103, -0.323809,
		34.249348, 38.006924, 33.683174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496101, 38.792522, 34.037586>,  <33.841202, 38.528496, 33.909840>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496101, 38.792522, 34.037586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529285, 38.510010, 33.756367>,  <34.549198, 38.340504, 33.587635>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.529285, 38.510010, 33.756367>,  <34.496101, 38.792522, 34.037586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529285, 38.510010, 33.756367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599407, 0.598969, -0.530988,
		0.796134, -0.377361, 0.473044,
		0.082964, -0.706283, -0.703052,
		34.554176, 38.298126, 33.545452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191765, 38.561432, 34.052776>,  <34.496101, 38.792522, 34.037586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191765, 38.561432, 34.052776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099991, 38.429386, 33.686523>,  <35.044926, 38.350159, 33.466770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099991, 38.429386, 33.686523>,  <35.191765, 38.561432, 34.052776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099991, 38.429386, 33.686523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803496, 0.466683, -0.369595,
		0.549320, -0.820505, 0.158174,
		-0.229438, -0.330118, -0.915631,
		35.031158, 38.330349, 33.411835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789337, 38.413700, 33.801144>,  <35.191765, 38.561432, 34.052776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789337, 38.413700, 33.801144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564487, 38.432606, 33.470863>,  <35.429577, 38.443947, 33.272694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.564487, 38.432606, 33.470863>,  <35.789337, 38.413700, 33.801144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564487, 38.432606, 33.470863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752448, 0.443607, -0.486862,
		0.343278, -0.894975, -0.284922,
		-0.562123, 0.047260, -0.825702,
		35.395851, 38.446785, 33.223152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135551, 38.033146, 33.246529>,  <35.789337, 38.413700, 33.801144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135551, 38.033146, 33.246529> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889931, 38.294140, 33.068897>,  <35.742558, 38.450737, 32.962318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.889931, 38.294140, 33.068897>,  <36.135551, 38.033146, 33.246529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889931, 38.294140, 33.068897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737753, 0.274568, -0.616711,
		-0.280466, -0.706310, -0.649972,
		-0.614051, 0.652486, -0.444076,
		35.705715, 38.489887, 32.935673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389103, 37.903194, 32.647720>,  <36.135551, 38.033146, 33.246529>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389103, 37.903194, 32.647720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.171829, 38.235466, 32.598846>,  <36.041466, 38.434830, 32.569523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.171829, 38.235466, 32.598846>,  <36.389103, 37.903194, 32.647720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.171829, 38.235466, 32.598846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653870, 0.327222, -0.682188,
		-0.526694, -0.450448, -0.720895,
		-0.543183, 0.830676, -0.122189,
		36.008873, 38.484669, 32.562191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345482, 38.076828, 31.849821>,  <36.389103, 37.903194, 32.647720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345482, 38.076828, 31.849821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260372, 38.423191, 32.030899>,  <36.209309, 38.631008, 32.139545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.260372, 38.423191, 32.030899>,  <36.345482, 38.076828, 31.849821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260372, 38.423191, 32.030899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562827, 0.487337, -0.667629,
		-0.798720, 0.112737, -0.591047,
		-0.212773, 0.865906, 0.452697,
		36.196541, 38.682964, 32.166710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413345, 38.597961, 31.374203>,  <36.345482, 38.076828, 31.849821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413345, 38.597961, 31.374203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416496, 38.831013, 31.699282>,  <36.418388, 38.970844, 31.894329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.416496, 38.831013, 31.699282>,  <36.413345, 38.597961, 31.374203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416496, 38.831013, 31.699282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609946, 0.641225, -0.465613,
		-0.792404, 0.499373, -0.350319,
		0.007882, 0.582629, 0.812700,
		36.418861, 39.005802, 31.943092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.245407, 39.329815, 31.193621>,  <36.413345, 38.597961, 31.374203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.245407, 39.329815, 31.193621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458485, 39.357979, 31.530970>,  <36.586330, 39.374878, 31.733379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.458485, 39.357979, 31.530970>,  <36.245407, 39.329815, 31.193621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458485, 39.357979, 31.530970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548802, 0.729866, -0.407569,
		-0.644244, 0.679955, 0.350158,
		0.532697, 0.070406, 0.843372,
		36.618294, 39.379101, 31.783981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371002, 40.045704, 31.164839>,  <36.245407, 39.329815, 31.193621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.371002, 40.045704, 31.164839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648960, 39.879265, 31.399441>,  <36.815735, 39.779400, 31.540201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.648960, 39.879265, 31.399441>,  <36.371002, 40.045704, 31.164839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.648960, 39.879265, 31.399441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691621, 0.610070, -0.386620,
		-0.196936, 0.674297, 0.711716,
		0.694893, -0.416098, 0.586503,
		36.857430, 39.754436, 31.575392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743195, 40.542072, 31.406513>,  <36.371002, 40.045704, 31.164839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743195, 40.542072, 31.406513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982384, 40.229275, 31.476852>,  <37.125896, 40.041595, 31.519056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.982384, 40.229275, 31.476852>,  <36.743195, 40.542072, 31.406513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982384, 40.229275, 31.476852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793583, 0.546828, -0.266843,
		0.112509, 0.299115, 0.947561,
		0.597969, -0.781991, 0.175849,
		37.161774, 39.994678, 31.529608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419201, 40.894451, 31.551199>,  <36.743195, 40.542072, 31.406513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419201, 40.894451, 31.551199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.512196, 40.513474, 31.472416>,  <37.567993, 40.284885, 31.425146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.512196, 40.513474, 31.472416>,  <37.419201, 40.894451, 31.551199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512196, 40.513474, 31.472416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824537, 0.300416, -0.479467,
		0.515836, -0.050925, 0.855173,
		0.232490, -0.952448, -0.196955,
		37.581944, 40.227737, 31.413330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075939, 40.682178, 31.794519>,  <37.419201, 40.894451, 31.551199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075939, 40.682178, 31.794519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993763, 40.430580, 31.494612>,  <37.944458, 40.279621, 31.314667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.993763, 40.430580, 31.494612>,  <38.075939, 40.682178, 31.794519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.993763, 40.430580, 31.494612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885758, 0.206306, -0.415777,
		0.416204, -0.749533, 0.514756,
		-0.205441, -0.628998, -0.749770,
		37.932129, 40.241882, 31.269680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.668789, 40.195049, 31.808830>,  <38.075939, 40.682178, 31.794519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.668789, 40.195049, 31.808830> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467667, 40.193977, 31.463072>,  <38.346992, 40.193333, 31.255617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467667, 40.193977, 31.463072>,  <38.668789, 40.195049, 31.808830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467667, 40.193977, 31.463072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850602, 0.176425, -0.495329,
		0.153827, -0.984311, -0.086430,
		-0.502806, -0.002677, -0.864395,
		38.316826, 40.193172, 31.203753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155704, 39.903091, 31.355679>,  <38.668789, 40.195049, 31.808830>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155704, 39.903091, 31.355679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885597, 40.097546, 31.133801>,  <38.723534, 40.214218, 31.000673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.885597, 40.097546, 31.133801>,  <39.155704, 39.903091, 31.355679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.885597, 40.097546, 31.133801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711127, 0.229536, -0.664538,
		-0.195734, -0.843199, -0.500703,
		-0.675267, 0.486137, -0.554693,
		38.683018, 40.243385, 30.967392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.384289, 39.697765, 30.673107>,  <39.155704, 39.903091, 31.355679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.384289, 39.697765, 30.673107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.168476, 40.034286, 30.659740>,  <39.038990, 40.236198, 30.651720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.168476, 40.034286, 30.659740>,  <39.384289, 39.697765, 30.673107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168476, 40.034286, 30.659740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633364, 0.379392, -0.674472,
		-0.554756, -0.385064, -0.737544,
		-0.539533, 0.841301, -0.033416,
		39.006615, 40.286678, 30.649715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.329296, 39.828949, 29.960886>,  <39.384289, 39.697765, 30.673107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.329296, 39.828949, 29.960886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244045, 40.179180, 30.134291>,  <39.192894, 40.389320, 30.238333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.244045, 40.179180, 30.134291>,  <39.329296, 39.828949, 29.960886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.244045, 40.179180, 30.134291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706223, 0.444674, -0.550921,
		-0.675147, 0.188738, -0.713130,
		-0.213131, 0.875582, 0.433511,
		39.180107, 40.441856, 30.264343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.291088, 40.275154, 29.467081>,  <39.329296, 39.828949, 29.960886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.291088, 40.275154, 29.467081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.353550, 40.516201, 29.780123>,  <39.391026, 40.660828, 29.967947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.353550, 40.516201, 29.780123>,  <39.291088, 40.275154, 29.467081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353550, 40.516201, 29.780123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559348, 0.599084, -0.572912,
		-0.814092, 0.527210, -0.243523,
		0.156154, 0.602617, 0.782604,
		39.400394, 40.696987, 30.014904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275890, 40.889980, 29.205311>,  <39.291088, 40.275154, 29.467081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275890, 40.889980, 29.205311> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.457726, 40.948956, 29.556677>,  <39.566826, 40.984341, 29.767496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.457726, 40.948956, 29.556677>,  <39.275890, 40.889980, 29.205311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457726, 40.948956, 29.556677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634302, 0.638767, -0.435474,
		-0.625309, 0.755141, 0.196853,
		0.454588, 0.147442, 0.878414,
		39.594101, 40.993187, 29.820202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294853, 41.559914, 29.303455>,  <39.275890, 40.889980, 29.205311>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294853, 41.559914, 29.303455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.593040, 41.435879, 29.539461>,  <39.771954, 41.361458, 29.681065>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.593040, 41.435879, 29.539461>,  <39.294853, 41.559914, 29.303455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593040, 41.435879, 29.539461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625388, 0.631611, -0.458211,
		-0.230574, 0.710571, 0.664774,
		0.745470, -0.310090, 0.590015,
		39.816681, 41.342854, 29.716465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579624, 42.162167, 29.605694>,  <39.294853, 41.559914, 29.303455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579624, 42.162167, 29.605694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855579, 41.872898, 29.618826>,  <40.021152, 41.699337, 29.626705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.855579, 41.872898, 29.618826>,  <39.579624, 42.162167, 29.605694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.855579, 41.872898, 29.618826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688530, 0.641493, -0.338250,
		0.223551, 0.255961, 0.940483,
		0.689892, -0.723167, 0.032830,
		40.062546, 41.655949, 29.628675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163750, 42.433807, 30.054731>,  <39.579624, 42.162167, 29.605694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163750, 42.433807, 30.054731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.283966, 42.154964, 29.794355>,  <40.356094, 41.987659, 29.638130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.283966, 42.154964, 29.794355>,  <40.163750, 42.433807, 30.054731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.283966, 42.154964, 29.794355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652644, 0.647996, -0.392629,
		0.695510, -0.306833, 0.649707,
		0.300536, -0.697105, -0.650940,
		40.374126, 41.945831, 29.599073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.896294, 42.472050, 29.998259>,  <40.163750, 42.433807, 30.054731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.896294, 42.472050, 29.998259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.789288, 42.298206, 29.654270>,  <40.725082, 42.193901, 29.447878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.789288, 42.298206, 29.654270>,  <40.896294, 42.472050, 29.998259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.789288, 42.298206, 29.654270> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515147, 0.689727, -0.508823,
		0.814283, -0.579131, 0.039372,
		-0.267519, -0.434608, -0.859970,
		40.709030, 42.167824, 29.396278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455624, 42.608330, 29.607954>,  <40.896294, 42.472050, 29.998259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455624, 42.608330, 29.607954> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.161110, 42.506485, 29.357178>,  <40.984402, 42.445377, 29.206711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.161110, 42.506485, 29.357178>,  <41.455624, 42.608330, 29.607954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161110, 42.506485, 29.357178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558482, 0.294490, -0.775482,
		0.382079, -0.921112, -0.074630,
		-0.736283, -0.254616, -0.626943,
		40.940224, 42.430099, 29.169094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.040112, 42.272667, 29.580551>,  <41.455624, 42.608330, 29.607954>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.040112, 42.272667, 29.580551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.102058, 42.518005, 29.890345>,  <42.139229, 42.665207, 30.076221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.102058, 42.518005, 29.890345>,  <42.040112, 42.272667, 29.580551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.102058, 42.518005, 29.890345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113551, -0.767696, 0.630674,
		0.981388, -0.185615, -0.049246,
		0.154869, 0.613344, 0.774484,
		42.148518, 42.702007, 30.122690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.528973, 41.793442, 30.076927>,  <42.040112, 42.272667, 29.580551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.528973, 41.793442, 30.076927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.378384, 42.097946, 30.288115>,  <42.288033, 42.280651, 30.414827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.378384, 42.097946, 30.288115>,  <42.528973, 41.793442, 30.076927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378384, 42.097946, 30.288115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085064, -0.595892, 0.798546,
		0.922516, 0.255717, 0.289091,
		-0.376469, 0.761263, 0.527968,
		42.265442, 42.326324, 30.446505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.963833, 41.713619, 30.677170>,  <42.528973, 41.793442, 30.076927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.963833, 41.713619, 30.677170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.637413, 41.921421, 30.778500>,  <42.441559, 42.046101, 30.839298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.637413, 41.921421, 30.778500>,  <42.963833, 41.713619, 30.677170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.637413, 41.921421, 30.778500> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169780, -0.634419, 0.754114,
		0.552480, 0.572387, 0.605920,
		-0.816052, 0.519506, 0.253324,
		42.392597, 42.077274, 30.854496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801895, 41.744350, 31.450977>,  <42.963833, 41.713619, 30.677170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801895, 41.744350, 31.450977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.440132, 41.877186, 31.343822>,  <42.223076, 41.956886, 31.279530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.440132, 41.877186, 31.343822>,  <42.801895, 41.744350, 31.450977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.440132, 41.877186, 31.343822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415436, -0.542266, 0.730316,
		0.097263, 0.771794, 0.628391,
		-0.904408, 0.332088, -0.267888,
		42.168808, 41.976810, 31.263456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.395294, 41.865608, 32.116840>,  <42.801895, 41.744350, 31.450977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.395294, 41.865608, 32.116840> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.126324, 41.804523, 31.827145>,  <41.964939, 41.767872, 31.653328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.126324, 41.804523, 31.827145>,  <42.395294, 41.865608, 32.116840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.126324, 41.804523, 31.827145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549875, -0.551914, 0.626920,
		-0.495454, 0.819798, 0.287151,
		-0.672431, -0.152713, -0.724235,
		41.924595, 41.758709, 31.609875>
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
